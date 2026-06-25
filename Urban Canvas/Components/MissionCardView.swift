//
//  MissionCardView.swift
//  Urban Canvas
//
//  Created by morealcode on 25/06/2026.
//

import SwiftUI

struct MissionCardView: View {

    let cardIndex: Int
    let artwork: Artwork
    var discovered: Bool
    let toggleDiscovered: () -> Void
    let onOpenDetail: () -> Void

    var body: some View {
        VStack {

            ZStack(alignment: .topLeading){
                ImageBannerView(
                    illustration: artwork.illustration ?? "placeholder",
                    height: 300
                )
                .clipShape(RoundedRectangle(cornerRadius: 26))
                .padding(6)
                
//                Circle()
//                    .stroke(.black.opacity(0.8), lineWidth: 2)
//                    .fill(.black.opacity(0.6))
//                    .frame(width: 40, height: 40)
//                    .padding()
//                    .overlay(
//                        Text(String(cardIndex))
//                            .bold()
//                            .foregroundStyle(.white)
//                    )
            }

            VStack(alignment: .leading) {

                HStack(spacing: 12) {
                    Text("\(cardIndex). \(artwork.title)")
                        .font(.title2)
                        .bold()
                    
                    Button(
                        "Toggle discovered",
                        systemImage: discovered
                            ? "checkmark.seal.fill" : "checkmark.seal"
                    ) {
                        toggleDiscovered()
                    }
                    .scaleEffect(1.5)
                    .labelStyle(.iconOnly)
                    .tint(discovered ? .green : .mainText)
                }
                .padding(.bottom, 6)

                Text(
                    "Oeuvre de [\(artwork.author.fullName)](\(artwork.author.website)) à \(artwork.address), \(artwork.postalCode) \(artwork.city)"
                        .markdownAttributed
                )
                .foregroundStyle(Color.secondText)

                HStack {
                    Label(artwork.type.rawValue, systemImage: "paintbrush")

                    Spacer()

                    Button {
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
                .font(.callout)
                .padding(.vertical, 8)
            }
            .padding(.vertical)
            .padding(.horizontal, 32)
        }
        .frame(minHeight: 300)
        .background {
            RoundedRectangle(cornerRadius: 26)
                .fill(.white)
        }
        .clipShape(RoundedRectangle(cornerRadius: 26))
        .shadow(color: .black.opacity(0.25), radius: 16, x: 0, y: 8)
    }
}

#Preview {
    @Previewable @State var artworkViewModel: ArtworkViewModel =
        ArtworkViewModel()
    @Previewable @State var discovered: Bool = false

    NavigationStack {
        ZStack {
            Color.backgroundGray
                .ignoresSafeArea()

            VStack {
                MissionCardView(
                    cardIndex: 2,
                    artwork: artworkViewModel.artworks[0],
                    discovered: false,
                    toggleDiscovered: {},
                    onOpenDetail: {}
                )
            }
            .padding(20)
        }
    }
}
