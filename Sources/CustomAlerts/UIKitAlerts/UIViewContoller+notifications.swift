//
//  UIViewContoller+notifications.swift
//  CustomAlerts
//
//  Created by Vadim Sorokolit on 01.09.2025.
//

#if canImport(UIKit)
import UIKit

protocol AlertPresentingProtocol: AnyObject {
    /**
     Registers the view controller instance
     to listen for alert-related notifications
     (`errorNotification`, `warningNotification`, `infoNotification`).
     */
    func registerForNotifications()
    func notify(name: Notification.Name, errorMessage: String?)
    /**
     Presents an error alert with the given message
     
     - Parameters:
     - message: The error message to display
     - okCompletion: An optional closure executed when taps the OK button
     */
    func showErrorAlert(message: String, in: UIViewController, okCompletion: ((UIAlertAction) -> Void)?)
    /**
     Presents a warning alert with the given message
     
     - Parameters:
     - message: The warning message to display
     - okCompletion: An optional closure executed when taps the OK button
     */
    func showWarningAlert(message: String, in: UIViewController, okCompletion: ((UIAlertAction) -> Void)?)
    /**
     Presents alert with the provided parameters
     
     - Parameters:
     - title: The title string displayed at the top of the alert
     - message: The body text describing the alert
     - okCompletion: An optional closure executed when taps the OK button
     */
    func showAlert(title: String, message: String, in: UIViewController, okCompletion: ((UIAlertAction) -> Void)?)
}

// MARK: - AlertPresentingProtocol

public extension UIViewController: AlertPresentingProtocol {
    
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
        in viewController: UIViewController,
        okCompletion: ((UIAlertAction) -> (Void))? = nil
    ) {
        self.showAlert(title: Constants.errorTitle, message: message, in: viewController, okCompletion: okCompletion)
    }
    
    public func showWarningAlert(
        message: String,
        in viewController: UIViewController,
        okCompletion: ((UIAlertAction) -> (Void))? = nil
    ) {
        self.showAlert(title: Constants.warningTitle, message: message, in: viewController, okCompletion: okCompletion)
    }
    
    @objc
    private func handleError(_ notification: Notification) {
        DispatchQueue.main.async {
            if let userInfo = notification.userInfo,
               let message = userInfo[Constants.userInfoKey] as? String {
                switch notification.name {
                    case .errorNotification:
                        self.showErrorAlert(message: message, in: self, okCompletion: nil)
                        
                    case .warningNotification:
                        self.showWarningAlert(message: message, in: self, okCompletion: nil)
                        
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
