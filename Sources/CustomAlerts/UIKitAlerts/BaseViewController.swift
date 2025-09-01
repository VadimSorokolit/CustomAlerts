//
//  BaseViewController.swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//

#if canImport(UIKit)
import UIKit

open class BaseViewController: UIViewController {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        registerForNotifications()
    }
    
}
#endif

