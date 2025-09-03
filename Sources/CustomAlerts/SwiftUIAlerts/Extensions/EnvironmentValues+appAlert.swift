//
//  EnvironmentValues+appAlert.swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//
    
import Foundation
import SwiftUI

public extension EnvironmentValues {
    
    /**
     A binding to the global `AlertNotice` used for presenting
     environment-based alerts in SwiftUI.
     
     This property allows you to trigger an alert from any view in the hierarchy
     once it has been injected with `.environmentAlert(_:)`.
     
     Example:
     ```swift
     @Environment(\.appAlert) private var appAlert
     
     var body: some View {
         Button("Show error") {
             appAlert.error(Text("Something went wrong"))
         }
     }
     ```
     */
    var appAlert: Binding<AlertNotice?> {
        get { self[CustomAlert.Key.self] }
        set { self[CustomAlert.Key.self] = newValue }
    }
    
}
