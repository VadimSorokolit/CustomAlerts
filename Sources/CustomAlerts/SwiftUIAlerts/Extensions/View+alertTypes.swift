//
//  View+alertTypes.swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//
    
import Foundation
import SwiftUI

public extension View {
    
    func localAlert(_ alert: Binding<AlertNotice?>) -> some View {
        modifier(CustomAlert.AlertOverlayModifier(type: alert))
    }
    
    func environmentAlert(_ alert: Binding<AlertNotice?>) -> some View {
        self.environment(\.appAlert, alert)
            .modifier(CustomAlert.AlertOverlayModifier(type: alert))
    }
    
}
