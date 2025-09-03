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

#### <img src="https://developer.apple.com/swift/images/swift-og.png" alt="Swift logo" width="12" /> UIKit Examples:
#### <img src="https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png" alt="SwiftUI logo" width="12" /> **SwiftUI Examples:**
---


	
