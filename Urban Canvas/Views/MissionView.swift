//
//  MissionView.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import SwiftUI

struct MissionView: View {
    @Environment(ArtworkViewModel.self) private var vm

    @State private var isSuccessMissionVisible: Bool = false

    @State private var progress = 0.5

    @State private var selectedArtworkID: UUID?
    @State private var artworkToShow: Artwork?

    @State var navigateToID: Artwork.ID?

    var body: some View {

        ZStack {
            if vm.availableArtworksToDiscover == 0 {

                VStack {
                    Text("Il n'y plus d'oeuvre à découvrir")

                    List(vm.artworksDiscovered) { artwork in
                        Text(artwork.artworkID.uuidString)
                            .foregroundStyle(.mainText)
                    }
                }

            } else if vm.artworksMission.isEmpty {

                VStack(spacing: 20) {
                    Text(
                        "Il y a encore \(vm.availableArtworksToDiscover) oeuvres à découvrir !"
                    )

                    Button("Start mission") {
                        vm.startMission(5)
                    }
                    .buttonStyle(.borderedProminent)
                }

            } else {

                ScrollView {
                    VStack(alignment: .leading, spacing: 32) {

                        ForEach(
                            Array(vm.artworksMission.enumerated()),
                            id: \.offset
                        ) { index, artworkTracking in

                            if let artwork = vm.findArtwork(artworkTracking) {

                                MissionCardView(
                                    cardIndex: index + 1,
                                    artwork: artwork,
                                    discovered: artworkTracking.discovered,
                                    toggleDiscovered: {
                                        vm.toggleDiscovered(
                                            for: artworkTracking
                                        )
                                        checkIfMissionFinished()
                                    },
                                    onOpenDetail: {
                                        navigateToID = artwork.id
                                    }
                                )
                            }
                        }
                    }
                    .padding()
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {

                        ProgressView(
                            value: Double(vm.artworksMissionLeft),
                            total: Double(vm.artworksMission.count),
                            label: {
                                Text(
                                    "\(vm.artworksMissionLeft) \(vm.artworksMissionLeft > 1 ? "oeuvres" : "oeuvre") découvertes sur \(vm.artworksMission.count)"
                                )
                            }
                        ).animation(.easeInOut(duration: 0.4), value: vm.artworksMission.count - vm.artworksMissionLeft)
                    }
                }
            }
        }
        .onChange(of: selectedArtworkID) { _, newID in
            artworkToShow = vm.artworks.first { $0.id == newID }
        }
        .navigationDestination(item: $navigateToID) { artworkID in
            if let artwork = vm.artworks.first(where: { $0.id == artworkID }) {
                ArtworkDetailView(artwork: artwork)
            }
        }
        .sheet(isPresented: $isSuccessMissionVisible) {
            VStack {
                Text("Felicitations")
                Text("Vous avez terminé votre mission !")
                Text("🥳")
                    .font(.title)
            }
        }
    }

    func checkIfMissionFinished() {
        guard vm.isMissionFinished else {
            return
        }

//        print("Mission finished")

        isSuccessMissionVisible = true
        vm.endMission()
    }
}

#Preview {
    @Previewable @State var artworkViewModel: ArtworkViewModel =
        ArtworkViewModel()

    NavigationStack {
        MissionView()
            .environment(artworkViewModel)
    }
}
