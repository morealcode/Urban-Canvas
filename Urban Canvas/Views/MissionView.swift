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

                VStack(spacing: 20) {

                    Text(
                        "\(vm.artworksMissionLeft)/\(vm.artworksMission.count) oeuvres découvertes"
                    )

                    // TODO: Add progress bar or any graph

                    ForEach(vm.artworksMission) { artwork in

                        /* TODO: Add numbered cards
                         titre
                         image
                         type
                         auteur
                         localisation texte
                         bouton détail > vue détail
                         bouton discovered (true/false)
                        */

                        Button("Toggle discover for \(artwork.id)") {
                            vm.toggleDiscovered(for: artwork)
                            checkIfMissionFinished()
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(artwork.discovered ? .green : .gray)

                    }
                }
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

        print("Mission finished")

        isSuccessMissionVisible = true
        vm.endMission()
    }
}

#Preview {
    @Previewable @State var artworkViewModel: ArtworkViewModel =
        ArtworkViewModel()

    MissionView()
        .environment(artworkViewModel)
}
