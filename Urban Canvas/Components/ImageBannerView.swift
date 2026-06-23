//
//  ImageBannerView.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import SwiftUI

struct ImageBannerView: View {
    let illustration: String?
    let height: Int

    var body: some View {
        
        GeometryReader { geometry in
            Image(illustration ?? "placeholder")
                .resizable()
                .scaledToFill()
                .frame(width: geometry.size.width, height: CGFloat(height))
                .clipped()
                .allowsHitTesting(false)
        }
        .frame(height: CGFloat(height))
        .padding(.bottom, 24)
        
    }
}

#Preview {
    @Previewable var artworks = ArtworkViewModel().artworks
    
    VStack {
        ImageBannerView(illustration: artworks[0].illustration, height: 300)
        Spacer()
    }
    .ignoresSafeArea(edges: .top)
}
