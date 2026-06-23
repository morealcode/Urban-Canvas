//
//  ArtworkTracking.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import Foundation

struct ArtworkTracking: Identifiable {
    let id: UUID = UUID()
    
    let artworkID: UUID
    var discovered: Bool = false
}
