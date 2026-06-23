//
//  ContentView.swift
//  Urban Canvas
//
//  Created by morealcode on 22/06/2026.
//

import SwiftUI

struct ContentView: View {

    @State private var isShowingFilter: Bool = false
    @State private var selectedStyle: ArtworkStyle? = nil

    @State private var selectedView: String = "list"

    @State private var artworkViewModel: ArtworkViewModel = ArtworkViewModel()

    private var filteredArtworks: [Artwork] {

        guard selectedStyle != nil else {
            return artworkViewModel.artworks
        }

        return artworkViewModel.artworks.filter { $0.type == selectedStyle }
    }

    var body: some View {

        TabView {

            Tab {
                NavigationStack {

                    ZStack {
                        Color.backgroundGray
                            .ignoresSafeArea()

                        VStack {
                            if selectedView == "list" {
                                ArtworkListView(artworks: filteredArtworks)
                                    .padding(.top, 20)
                            } else if selectedView == "map" {
                                ArtworkMapView(artworks: filteredArtworks)
                            }
                        }
                    }
                    .toolbar {

                        ToolbarItem(placement: .topBarLeading) {
                            Picker("Choose a view", selection: $selectedView) {
                                Text("Liste").tag("list")
                                Text("Map").tag("map")
                            }
                            .pickerStyle(.segmented)
                            .frame(width: 300)
                        }

                        ToolbarItem(placement: .topBarTrailing) {
                            Button(
                                "Filtre",
                                systemImage: "line.3.horizontal.decrease.circle"
                            ) {
                                isShowingFilter = true
                            }
                            .popover(isPresented: $isShowingFilter) {
                                ArtworkFilterView(
                                    isShowing: $isShowingFilter,
                                    selectedStyle: $selectedStyle
                                )
                                .presentationCompactAdaptation(.none)
                            }
                        }
                    }
                }
            } label: {
                Label {
                    Text("Oeuvres")
                } icon: {
                    Image(systemName: "photo.artframe.circle")
                        .environment(\.symbolVariants, .none)
                }
            }

            Tab {
                AuthorListView(authors: artworkViewModel.authors)
            } label: {
                Label {
                    Text("Auteurs")
                } icon: {
                    Image(systemName: "person.circle")
                        .environment(\.symbolVariants, .none)
                }
            }

            Tab {
                MissionView()
            } label: {
                Label {
                    Text("Mission")
                } icon: {
                    Image(systemName: "figure.run.circle")
                        .environment(\.symbolVariants, .none)
                }
            }
        }

    }
}

#Preview {
    ContentView()
}
