//
//  ArtworkMapView.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import MapKit
import SwiftUI

struct ArtworkMapView: View {

    @State private var selectedArtworkID: UUID?
    @State private var artworkToShow: Artwork?
    @State var navigateToID: Artwork.ID?

    var artworks: [Artwork]

    var body: some View {

        Map(selection: $selectedArtworkID) {
            ForEach(artworks) { artwork in
                Marker(
                    artwork.title,
                    coordinate: CLLocationCoordinate2D(
                        latitude: artwork.coordinates.latitude,
                        longitude: artwork.coordinates.longitude
                    )
                )
                .tint(Color.accentColor)
                .tag(artwork.id)
            }
        }
        .onChange(of: selectedArtworkID) { _, newID in
            artworkToShow = artworks.first { $0.id == newID }
        }
        
        .navigationDestination(item: $navigateToID) { artworkID in
            if let artwork = artworks.first(where: { $0.id == artworkID }) {
                ArtworkDetailView(artwork: artwork)
            }
        }
        .sheet(item: $artworkToShow, onDismiss: didDismiss) { artwork in
            
            ArtworkSheetView(
                artwork: artwork,
                onOpenDetail: {
                    navigateToID = artwork.id
                    
                }
            )
            .presentationDetents([.medium])
        }
    }

    func didDismiss() {
        withAnimation {
            selectedArtworkID = nil
            artworkToShow = nil
        }
    }
}

#Preview {
    NavigationStack{
        ArtworkMapView(artworks: ArtworkViewModel().artworks)
    }
}
