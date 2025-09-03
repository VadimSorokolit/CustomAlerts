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
    
    /**
     Configures the global font settings for all custom alerts

     - Parameters:
        - semiBold: The name of the semi-bold font to use in alert buttons (optional)
        - medium: The name of the medium font to use in alert buttons (optional)
        - regular: The name of the regular font to use in alert messages (optional)
     */
    public static func configure(semiBold: String? = nil,
                                 medium: String? = nil,
                                 regular: String? = nil
    ) {
        self.semiBoldFontName = semiBold
        self.mediumFontName = medium
        self.regularFontName = regular
    }
}
