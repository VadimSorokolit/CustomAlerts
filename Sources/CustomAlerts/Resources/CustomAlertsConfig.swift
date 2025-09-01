//
//  GlobalCostants.swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//

import Foundation

@MainActor
public enum CustomAlertsConfig {
    public private(set) static var semiBoldFontName: String?
    public private(set) static var mediumFontName: String?
    public private(set) static var regularFontName: String?
    
    public static func configure(semiBold: String? = nil,
                                 medium: String? = nil,
                                 regular: String? = nil) {
        self.semiBoldFontName = semiBold
        self.mediumFontName = medium
        self.regularFontName = regular
    }
}

