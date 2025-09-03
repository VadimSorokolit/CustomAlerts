//
//  View+alertTypes.swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//
    
import Foundation
import SwiftUI

public extension View {
    /**
     Presents a local alert that is bound only to the current view.
     
     Use this when you want an alert to be shown **inside a specific screen** without
     affecting other parts of the app
     
     - Parameter alert: A binding to an optional `AlertNotice` that describes the alert
     - Returns: A modified view that displays the alert when the binding is non-nil
     */
    func localAlert(_ alert: Binding<AlertNotice?>) -> some View {
        modifier(CustomAlert.AlertOverlayModifier(type: alert))
    }
    /**
     Presents a global environment-based alert that can be triggered
     from any child view in the hierarchy
     
     Use this when you want **one shared alert system** across app
     
     - Parameter alert: A binding to an optional `AlertNotice` stored in the environment
     - Returns: A modified view that displays the alert when the binding is non-nil
     */
    func environmentAlert(_ alert: Binding<AlertNotice?>) -> some View {
        self.environment(\.appAlert, alert)
            .modifier(CustomAlert.AlertOverlayModifier(type: alert))
    }
    
}
