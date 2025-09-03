//
//  Binding+alerts.swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//
    
import Foundation
import SwiftUI

public extension Binding where Value == AlertNotice? {
    
    /**
     Shows an **info** alert with optional confirm and cancel actions.
     
     - Parameters:
     - message: The `Text` displayed inside the alert
     - onConfirm: Closure executed when user taps **OK**
     - onCancel: Closure executed when user taps **Cancel** (if provided)
     */
    func info(
        _ message: Text,
        onConfirm: @escaping () -> Void = {},
        onCancel: (() -> Void)? = nil
    ) {
        wrappedValue = .init(
            type: .info,
            message: message,
            onConfirm: onConfirm,
            onCancel: onCancel)
    }
    
    /**
     Shows an **error** alert with optional confirm and cancel actions
     
     - Parameters:
     - message: The `Text` displayed inside the alert.
     - onConfirm: Closure executed when user taps **OK**
     - onCancel: Closure executed when user taps **Cancel** (if provided)
     */
    func error(
        _ message: Text,
        onConfirm: @escaping () -> Void = {},
        onCancel: (() -> Void)? = nil
    ) {
        wrappedValue = .init(
            type: .error,
            message: message,
            onConfirm: onConfirm,
            onCancel: onCancel)
    }
    
    /**
     Shows a **warning** alert with optional confirm and cancel actions.
     
     - Parameters:
     - message: The `Text` displayed inside the alert.
     - onConfirm: Closure executed when user taps **OK**.
     - onCancel: Closure executed when user taps **Cancel** (if provided).
     */
    func warning(
        _ message: Text,
        onConfirm: @escaping () -> Void = {},
        onCancel: (() -> Void)? = nil
    ) {
        wrappedValue = .init(
            type: .warning,
            message: message,
            onConfirm: onConfirm,
            onCancel: onCancel)
    }
    
    /**
     Shows a **complete** (success) alert with optional confirm and cancel actions.
     
     - Parameters:
     - message: The `Text` displayed inside the alert.
     - onConfirm: Closure executed when user taps **OK**.
     - onCancel: Closure executed when user taps **Cancel** (if provided).
     */
    func complete(
        _ message: Text,
        onConfirm: @escaping () -> Void = {},
        onCancel: (() -> Void)? = nil
    ) {
        wrappedValue = .init(
            type: .complete,
            message: message,
            onConfirm: onConfirm,
            onCancel: onCancel)
    }
    
}
