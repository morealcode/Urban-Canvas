//
//  ArtworkCondition.swift
//  Urban Canvas
//
//  Created by apprenant130 on 22/06/2026.
//

import Foundation

enum ArtworkCondition: CaseIterable {
    case bad
    case good
    case perfect

    var value: String {
        switch self {
        case .bad:
            return "Mauvaise"
        case .good:
            return "Bonne"
        case .perfect:
            return "Excellent"
        }
    }
}
