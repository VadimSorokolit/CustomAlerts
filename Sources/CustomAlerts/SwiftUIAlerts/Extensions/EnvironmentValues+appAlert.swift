//
//  EnvironmentValues+appAlert.swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//
    
import Foundation
import SwiftUI

public extension EnvironmentValues {
    
    var appAlert: Binding<Alert.Notice?> {
        get { self[Alert.Key.self] }
        set { self[Alert.Key.self] = newValue }
    }
    
}
