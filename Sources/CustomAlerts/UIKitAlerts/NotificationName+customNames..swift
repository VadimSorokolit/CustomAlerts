//
//  NotificationName+customNames..swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//
    
import Foundation

public extension Notification.Name {
    
    ///  A property that represents the notification posted when an error message should be displayed
    static let errorNotification = Notification.Name("ErrorNotification")
    ///  A property that represents the notification posted when an informational message should be displayed
    static let infoNotification = Notification.Name("InfoNotification")
    /// A property that represents the notification posted when a warning message should be displayed
    static let warningNotification = Notification.Name("WarningNotification")
    
}
