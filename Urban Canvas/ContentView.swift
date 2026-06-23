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

    @State private var artworkViewModel: ArtworkViewModel = ArtworkViewModel()

    private var filteredArtworks: [Artwork] {

        guard let isStyleSelected = selectedStyle else {
            return artworkViewModel.artworks
        }

        return artworkViewModel.artworks.filter { $0.type == selectedStyle }
    }

    var body: some View {
        NavigationStack {
            ArtworkListView(artworks: filteredArtworks)
                .toolbar {
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
    }
}

#Preview {
    ContentView()
}
