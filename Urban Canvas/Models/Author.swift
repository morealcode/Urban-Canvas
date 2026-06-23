//
//  Author.swift
//  Urban Canvas
//
//  Created by morealcode on 22/06/2026.
//

import Foundation

struct Author: Identifiable {
    let id: UUID = UUID()

    let firstName: String
    let lastName: String?
    let age: String
    let picture: String?
    let origin: String
    let style: ArtworkStyle
    let website: String
}
