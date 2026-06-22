//
//  Artwork.swift
//  Urban Canvas
//
//  Created by Alexis Morel on 22/06/2026.
//

import Foundation

struct Artwork: Identifiable {
    let id: UUID = UUID()

    // Basic informations
    let title: String
    let description: String
    let illustration: String
    let date: Date

    let author: Author

    // Enums
    let type: ArtworkStyle
    let condition: ArtworkCondition

    // Address relative
    let address: String
    let postalCode: String
    let city: String
    let coordinates: (latitude: Double, longitude: Double)
}
