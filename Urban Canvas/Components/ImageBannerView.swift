//
//  ImageBannerView.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import SwiftUI

struct ImageBannerView: View {
    let illustration: String?

    var body: some View {
        
        GeometryReader { geometry in
            Image(illustration ?? "placeholder")
                .resizable()
                .scaledToFill()
                .frame(width: geometry.size.width, height: 278)
                .clipped()
        }
        .frame(height: 278)
        .padding(.bottom, 24)
        
    }
}

#Preview {
    @Previewable var artworks = ArtworkViewModel().artworks
    
    VStack {
        ImageBannerView(illustration: artworks[0].illustration)
        Spacer()
    }
    .ignoresSafeArea(edges: .top)
}
