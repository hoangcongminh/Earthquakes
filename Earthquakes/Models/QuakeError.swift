//
//  QuakeError.swift
//  Earthquakes-iOS
//
//  Created by hoangcongminh on 13/09/2023.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation

enum QuakeError: Error {
    case missingData
    case networkError
    case unexpectedError(error: Error)
}

extension QuakeError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case.missingData:
            return NSLocalizedString(
                "Found and will discard a quake missing a valid code, magnitude, place, or time.",
                comment: ""
            )
        case .networkError:
            return NSLocalizedString("Network error", comment: "")
        case let .unexpectedError(error):
            return NSLocalizedString("Unexpected Error \(error.localizedDescription)", comment: "")
        }
    }
}
