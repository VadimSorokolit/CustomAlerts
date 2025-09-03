# CustomAlerts

**Custom alerts for `UIKit` and `SwiftUI`**

---
### ✅ Requirements 
- iOS 16.0+ / macOS 12.0+
---
### 📦 Installation
- Add package to project by SPM
- Import library
```swift
import CustomAlerts
```
---
### 🧩 Supported APIs
**UIKit**

Available methods:
- `notify(name: Notification.Name, errorMessage: String?)` <br />
- `showErrorAlert(message: String, in: UIViewController, okCompletion: ((UIAlertAction) -> Void)?)` <br />
- `showWarningAlert(message: String, in: UIViewController, okCompletion: ((UIAlertAction) -> Void)?)` <br />
- `showAlert(title: String, message: String, in: UIViewController, okCompletion: ((UIAlertAction) -> Void)?)` <br /> 

Properties:
- `Notification.Name.errorNotification` <br />
- `Notification.Name.infoNotification` <br />
- `Notification.Name.warningNotification` <br />

Base class:
- `BaseViewController` <br />

**SwiftUI**

Available methods:
- `func localAlert(_ alert: Binding<AlertNotice?>) -> some View`
- `func environmentAlert(_ alert: Binding<AlertNotice?>) -> some View`
- `func info(_ message: Text, onConfirm: @escaping () -> Void = {}, onCancel: (() -> Void)? = nil)`
- `func error(_ message: Text, onConfirm: @escaping () -> Void = {},onCancel: (() -> Void)? = nil)`
- `func warning(_ message: Text, onConfirm: @escaping () -> Void = {}, onCancel: (() -> Void)? = nil)`
- `func complete(_ message: Text, onConfirm: @escaping () -> Void = {}, onCancel: (() -> Void)? = nil)`
- `static func configure(semiBold: String? = nil, medium: String? = nil, regular: String? = nil)`
---
### 🛠️ Usage

#### <img src="https://developer.apple.com/swift/images/swift-og.png" alt="Swift logo" width="12" /> **UIKit Examples:**
```swift
import UIKit
import CustomAlerts

class MyViewController: BaseViewController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .system)
        button.setTitle("Show alert", for: .normal)
        button.addTarget(self, action: #selector(self.showErrorMessage), for: .touchUpInside)
        button.frame = CGRect(x: 0.0, y: 0.0, width: 150.0, height: 50.0)
        button.center = self.view.center

		self.view.addSubview(button)
    }
    
    // MARK: - Events
    
    @objc private func showErrorMessage() {
        // Simple usage
        self.showErrorAlert(message: "Something went wrong", in: self)
        
        // Or trigger globally via Notification
        // self.notify(name: .errorNotification, errorMessage: "Network error")
    }
    
}

```
#### <img src="https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png" alt="SwiftUI logo" width="12" /> **SwiftUI Examples:**
---


	
