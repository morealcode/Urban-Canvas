//
//  ArtworkDetailView.swift
//  Urban Canvas
//
//  Created by morealcode on 22/06/2026.
//

import SwiftUI

struct ArtworkDetailView: View {

    let artwork: Artwork

    var body: some View {

        VStack(alignment: .leading, spacing: 0) {

            ImageBannerView(illustration: artwork.illustration, height: 278)

            Text(artwork.title)
                .font(.title2)
                .bold()
                .foregroundStyle(.accent)
                .padding(.bottom, 12)
                .padding(.horizontal, 24)

            Text(artwork.description.markdownAttributed)
                .font(.footnote)
                .padding(.bottom, 12)
                .padding(.horizontal, 24)

            VStack(alignment: .leading) {
                Text(
                    """
                    \(Text("Type :").bold()) \(Text(artwork.type.rawValue))
                    """
                )

                Text(
                    """
                    \(Text("Condition :").bold()) \(Text(artwork.condition.rawValue))
                    """
                )

                Text(
                    """
                    \(Text("Date :").bold()) \(Text(artwork.formattedDate))
                    """
                )

                Text(
                    """
                    \(Text("Auteur :").bold()) \(Text(artwork.author.firstName)) \(Text(artwork.author.lastName ?? ""))
                    """
                )

                Text(
                    """
                    \(Text("Localisation :").bold()) \(Text(artwork.address)), \(Text(artwork.postalCode)) \(Text(artwork.city))
                    """
                )

                Text(
                    """
                    (Latitude: \(Text(String(artwork.coordinates.latitude))), Longitude : \(Text(String(artwork.coordinates.longitude))))
                    """
                )
            }
            .font(.footnote)
            .padding(.bottom, 24)
            .padding(.horizontal, 24)

            ArtworkMiniMapView(
                illustration: artwork.illustration,
                latitude: artwork.coordinates.latitude,
                longitude: artwork.coordinates.longitude
            )

            Spacer()
        }
        .ignoresSafeArea(edges: .top)
        .background(Color.backgroundGray)
    }
}

#Preview {
    @Previewable var artworks = ArtworkViewModel().artworks
    ArtworkDetailView(artwork: artworks[0])
}

#Preview {
    @Previewable var artworks = ArtworkViewModel().artworks
    ArtworkDetailView(artwork: artworks[6])
}
