//
//  View+alertTypes.swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//
    
import Foundation
import SwiftUI

extension View {
    
    func localAlert(_ alert: Binding<Alert.Notice?>) -> some View {
        modifier(Alert.AlertOverlayModifier(type: alert))
    }
    
    func environmentAlert(_ alert: Binding<Alert.Notice?>) -> some View {
        self.environment(\.appAlert, alert)
            .modifier(Alert.AlertOverlayModifier(type: alert))
    }
    
}
