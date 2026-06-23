//
//  ArtworkSheetView.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import SwiftUI

struct ArtworkSheetView: View {
    @Environment(\.dismiss) var dismiss

    let artwork: Artwork
    let onOpenDetail: () -> Void

    var body: some View {
        VStack(spacing: 0) {

            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(width: 44, height: 44)
                        .background {
                            Circle()
                                .fill(Color.gray)
                        }
                }
                .buttonStyle(.plain)

                Spacer()

                Text(artwork.title)
                    .font(.headline)
                    .bold()

                Spacer()

                Button {
                    dismiss()
                    onOpenDetail()
                } label: {
                    Image(systemName: "arrow.right")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(width: 44, height: 44)
                        .background {
                            Circle()
                                .fill(Color.accentColor)
                        }
                }
                .buttonStyle(.plain)
            }
            .padding(16)

            Image(artwork.illustration ?? "placeholder")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(height: 180)
                .clipped()
                .allowsHitTesting(false)

            Text(artwork.description)
                .font(.footnote)
                .padding(24)
        }
    }
}

#Preview {
    @Previewable @State var navigateToID: Artwork.ID?
    let artworks = ArtworkViewModel().artworks

    NavigationStack {
        ArtworkSheetView(
            artwork: artworks[6],
            onOpenDetail: {
                navigateToID = artworks[6].id
            }
        )
        .navigationDestination(item: $navigateToID) { artworkID in
            if let artwork = artworks.first(where: { $0.id == artworkID }) {
                ArtworkDetailView(artwork: artwork)
            }
        }
    }
}
