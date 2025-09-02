//
//  EnvironmentValues+appAlert.swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//
    
import Foundation
import SwiftUI

public extension EnvironmentValues {
    
    var appAlert: Binding<AlertNotice?> {
        get { self[CustomAlert.Key.self] }
        set { self[CustomAlert.Key.self] = newValue }
    }
    
}
