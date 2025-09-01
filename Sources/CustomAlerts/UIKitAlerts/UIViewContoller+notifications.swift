//
//  UIViewContoller+notifications.swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//

#if canImport(UIKit)
import UIKit

public extension UIViewController {
    
    private struct Constants {
        static let warningTitle = "Warning"
        static let infoTitle = "Info"
        static let errorTitle = "Error"
        static let okActionTitle = "OK"
        static let userInfoKey = "error"
    }
    
    func registerForNotifications() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.handleError(_:)),
            name: .errorNotification, object: nil
        )
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.handleError(_:)),
            name: .infoNotification, object: nil)
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.handleError(_:)),
            name: .warningNotification, object: nil)
    }
    
    public func notify(name: Notification.Name, errorMessage: String? = nil) {
        var userInfo: [String: String]? = nil
        
        if let error = errorMessage {
            userInfo = [Constants.userInfoKey : error]
        }
        NotificationCenter.default.post(name: name, object: nil, userInfo: userInfo)
    }
    
    public func showAlert(
        title: String,
        message: String,
        in viewController: UIViewController,
        okCompletion: ((UIAlertAction) -> (Void))?
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: Constants.okActionTitle, style: UIAlertAction.Style.default, handler: okCompletion)
        alert.addAction(okAction)
        viewController.present(alert, animated: true, completion: nil)
    }
    
    public func showErrorAlert(
        message: String,
        in viewController: UIViewController
    ) {
        self.showAlert(title: Constants.errorTitle, message: message, in: viewController, okCompletion: nil)
    }
    
    public func showWarningAlert(
        message: String,
        in viewController: UIViewController
    ) {
        self.showAlert(title: Constants.warningTitle, message: message, in: viewController, okCompletion: nil)
    }
    
    @objc
    private func handleError(_ notification: Notification) {
        DispatchQueue.main.async {
            if let userInfo = notification.userInfo,
               let message = userInfo[Constants.userInfoKey] as? String {
                switch notification.name {
                    case .errorNotification:
                        self.showErrorAlert(message: message)
                        
                    case .warningNotification:
                        self.showWarningAlert(message: message)
                        
                    case .infoNotification:
                        self.showAlert(title: Constants.infoTitle, message: message, in: self, okCompletion: nil)
                        
                    default:
                        break
                }
            }
        }
    }
    
}
#endif


