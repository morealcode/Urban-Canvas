//
//  ArtworkTracking.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import Foundation

struct ArtworkTracking: Identifiable {
    var id: UUID { artworkID }

    let artworkID: UUID

    var discovered: Bool = false
}
