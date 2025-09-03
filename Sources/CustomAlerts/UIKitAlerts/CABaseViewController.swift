//
//  BaseViewController.swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//

/**
 A base class to get built-in alert notification support across screens
 
 Any view controller inheriting from `CABaseViewController` will automatically
 register for `errorNotification`, `warningNotification`, and `infoNotification`
 
 This allows alerts to be displayed without extra setup in each controller
 */
#if canImport(UIKit)
import UIKit

open class CABaseViewController: UIViewController {
    /**
     The default implementation in `CABaseViewController` automatically
     registers the view controller for error, warning, and info notifications
     by invoking `registerForNotifications()`
     */
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        registerForNotifications()
    }
    
}
#endif
