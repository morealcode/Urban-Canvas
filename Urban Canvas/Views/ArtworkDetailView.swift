//
//  ArtworkDetailView.swift
//  Urban Canvas
//
//  Created by morealcode on 22/06/2026.
//

import MapKit
import SwiftUI

struct ArtworkDetailView: View {

    let artwork: Artwork

    var body: some View {

        VStack(alignment: .leading, spacing: 0) {

            Image(artwork.illustration ?? "placeholder")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(height: 278)
                .padding(.bottom, 24)

            Text(artwork.title)
                .font(.title2)
                .bold()
                .foregroundStyle(.accent)
                .padding(.bottom, 12)
                .padding(.horizontal, 24)

            Text(artwork.description)
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

            Map {
                Annotation(
                    "",
                    coordinate: CLLocationCoordinate2D(
                        latitude: artwork.coordinates.latitude,
                        longitude: artwork.coordinates.longitude
                    )
                ) {
                    Image(artwork.illustration ?? "placeholder")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 54, height: 54)
                        .clipShape(Circle())
                }
            }
            .frame(height: 160)
            .clipShape(
                RoundedRectangle(cornerRadius: 26)
            )
            .padding(.horizontal, 24)

            Spacer()
        }
        .ignoresSafeArea(edges: .top)
        .background(.backgroundGray)
    }
}

#Preview {
    @Previewable var artworks = ArtworkViewModel().artworks
    ArtworkDetailView(artwork: artworks[0])
}
