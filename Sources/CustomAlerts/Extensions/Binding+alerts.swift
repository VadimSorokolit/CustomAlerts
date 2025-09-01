//
//  Binding+alerts.swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//
    

import Foundation
import SwiftUI

extension Binding where Value == Alert.Notice? {
    
    func info(
        _ message: Text,
        onConfirm: @escaping () -> Void = {},
        onCancel: (() -> Void)? = nil) {
            wrappedValue = .init(
                type: .info,
                message: message,
                onConfirm: onConfirm,
                onCancel: onCancel)
        }
    
    func error(
        _ message: Text,
        onConfirm: @escaping () -> Void = {},
        onCancel: (() -> Void)? = nil) {
            wrappedValue = .init(
                type: .error,
                message: message,
                onConfirm: onConfirm,
                onCancel: onCancel)
        }
    
    func warning(
        _ message: Text,
        onConfirm: @escaping () -> Void = {},
        onCancel: (() -> Void)? = nil) {
            wrappedValue = .init(
                type: .warning,
                message: message,
                onConfirm: onConfirm,
                onCancel: onCancel)
        }
    
    func complete(
        _ message: Text,
        onConfirm: @escaping () -> Void = {},
        onCancel: (() -> Void)? = nil) {
            wrappedValue = .init(
                type: .complete,
                message: message,
                onConfirm: onConfirm,
                onCancel: onCancel)
        }
    
}
