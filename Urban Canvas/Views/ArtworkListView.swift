//
//  ArtworkListView.swift
//  Urban Canvas
//
//  Created by morealcode on 22/06/2026.
//

import SwiftUI

struct ArtworkListView: View {

    let artworks: [Artwork]

    var body: some View {

        VStack {
            
            List(artworks) { artwork in

                NavigationLink {
                    ArtworkDetailView(artwork: artwork)
                } label: {
                    HStack {
                        Image(artwork.illustration ?? "placeholder")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(artwork.title)

                            HStack {
                                Image(systemName: "mappin.circle.fill")
                                Text(artwork.city)
                            }
                            .font(.subheadline)
                            .foregroundStyle(.secondText)
                        }
                    }
                }
            }
        }
        .navigationTitle("Liste des Street arts")
    }
}

#Preview {
    @Previewable var artworks = ArtworkViewModel().artworks
    NavigationStack {
        ArtworkListView(artworks: artworks)
    }
}
