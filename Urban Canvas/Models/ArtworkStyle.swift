//
//  ArtworkStyle.swift
//  Urban Canvas
//
//  Created by apprenant130 on 22/06/2026.
//

import Foundation

enum ArtworkStyle: CaseIterable {
    case invaders
    case mosaiques
    case mural
    case stencil
    case calligraphie

    var value: String {
        switch self {
        case .invaders:
            return "Invaders"
        case .mosaiques:
            return "Mosaïques"
        case .mural:
            return "Mural"
        case .stencil:
            return "Stencil"
        case .calligraphie:
            return "Calligraphie"
        }
    }
}
