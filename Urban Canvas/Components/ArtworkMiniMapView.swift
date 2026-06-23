//
//  ArtworkMapView.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import MapKit
import SwiftUI

struct ArtworkMiniMapView: View {

    let illustration: String?
    let latitude: Double
    let longitude: Double

    var body: some View {
        Map {
            Annotation(
                "",
                coordinate: CLLocationCoordinate2D(
                    latitude: latitude,
                    longitude: longitude
                )
            ) {
                Image(illustration ?? "placeholder")
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
    }
}

#Preview {
    @Previewable var artworks = ArtworkViewModel().artworks

    ArtworkMiniMapView(
        illustration: artworks[0].illustration,
        latitude: artworks[0].coordinates.latitude,
        longitude: artworks[0].coordinates.longitude
    )
}
