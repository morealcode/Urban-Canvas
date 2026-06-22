//
//  ContentView.swift
//  Urban Canvas
//
//  Created by morealcode on 22/06/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var artworkViewModel: ArtworkViewModel = ArtworkViewModel()

    var body: some View {
        NavigationStack {
            ArtworkListView(artworks: artworkViewModel.artworks)
        }
    }
}

#Preview {
    ContentView()
}
