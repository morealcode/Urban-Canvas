//
//  Author.swift
//  Urban Canvas
//
//  Created by apprenant130 on 22/06/2026.
//

import Foundation

struct Author: Identifiable {
    let id: UUID = UUID()

    let firstName: String
    let lastName: String
    let age: Int
    let picture: String
    let origin: String
    let style: ArtworkStyle
    let website: String
}
