//
//  ArtworkMapView.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import MapKit
import SwiftUI

struct ArtworkMapView: View {

    var artworks: [Artwork]

    var body: some View {

        Map {
            ForEach(artworks) { artwork in
                Marker(
                    artwork.title,
                    coordinate: CLLocationCoordinate2D(
                        latitude: artwork.coordinates.latitude,
                        longitude: artwork.coordinates.longitude
                    )
                )
                .tint(Color.accentColor)
            }
        }
    }
}

#Preview {
    ArtworkMapView(artworks: ArtworkViewModel().artworks)
}
