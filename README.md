# CustomAlerts

### Custom alerts for `UIKit` and `SwiftUI`

### 👀 Alert Previews
**UIKit** 

<img width="258" height="127" alt="Screenshot 2025-09-03 at 18 09 55" src="https://github.com/user-attachments/assets/68964881-2101-465f-9280-9884cbc452cf" />
<br />
<br />

**SwiftUI**

<img width="283" height="158" alt="Screenshot 2025-09-03 at 18 59 16" src="https://github.com/user-attachments/assets/438d6371-c9e8-40d0-a11f-e2bc0b726115" />
<img width="283" height="158" alt="Screenshot 2025-09-03 at 18 52 54" src="https://github.com/user-attachments/assets/6303384b-73ed-41f6-81e7-b128abeb423a" />
 <br />
<img width="283" height="158" alt="Screenshot 2025-09-03 at 18 55 04" src="https://github.com/user-attachments/assets/cef3eeb4-9d12-4b95-8782-ea9cf4bb23e0" />
<img width="283" height="158" alt="Screenshot 2025-09-03 at 18 54 29" src="https://github.com/user-attachments/assets/5aba5c25-5b1e-4958-969a-5a2c3281fb7a" />

---

### ✅ Requirements

- iOS 16.0+ / macOS 12.0+
---

### 📦 Installation
- Add package to project by **SPM**
- Import library
```swift
import CustomAlerts
```
---
### 🧩 Supported APIs
**UIKit**

Available methods:
- `func notify(name: Notification.Name, errorMessage: String?)` <br />
- `func showErrorAlert(message: String, in: UIViewController, okCompletion: ((UIAlertAction) -> Void)?)` <br />
- `func showWarningAlert(message: String, in: UIViewController, okCompletion: ((UIAlertAction) -> Void)?)` <br />
- `func showAlert(title: String, message: String, in: UIViewController, okCompletion: ((UIAlertAction) -> Void)?)` <br /> 

Properties:
- `Notification.Name.errorNotification` <br />
- `Notification.Name.infoNotification` <br />
- `Notification.Name.warningNotification` <br />

Base class:
- `CABaseViewController` <br />

**SwiftUI**

Available methods:
- `func localAlert(_ alert: Binding<AlertNotice?>) -> some View`
- `func environmentAlert(_ alert: Binding<AlertNotice?>) -> some View`
- `func info(_ message: Text, onConfirm: @escaping () -> Void = {}, onCancel: (() -> Void)? = nil)`
- `func error(_ message: Text, onConfirm: @escaping () -> Void = {},onCancel: (() -> Void)? = nil)`
- `func warning(_ message: Text, onConfirm: @escaping () -> Void = {}, onCancel: (() -> Void)? = nil)`
- `func complete(_ message: Text, onConfirm: @escaping () -> Void = {}, onCancel: (() -> Void)? = nil)`
- `func configure(semiBold: String? = nil, medium: String? = nil, regular: String? = nil)`
---
### 🛠️ Usage

#### <img src="https://developer.apple.com/swift/images/swift-og.png" alt="Swift logo" width="12" /> **UIKit Examples:**
```swift
import UIKit
import CustomAlerts

class MyViewController: CABaseViewController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .system)
        button.setTitle("Show alert", for: .normal)
        button.addTarget(self, action: #selector(self.showAlert), for: .touchUpInside)
        button.frame = CGRect(x: 0.0, y: 0.0, width: 150.0, height: 50.0)
        button.center = self.view.center
        
        self.view.addSubview(button)
    }
    
    // MARK: - Events
    
    @objc private func showAlert() {
        // Simple usage
        self.showErrorAlert(message: "Something went wrong", in: self)
        
        // Confirmation handler
        self.showErrorAlert(message: "Error", in: self) { action in
            // Make something
        }
        
        // Trigger globally via notification
        self.notify(name: .errorNotification, errorMessage: "Network error")
    }
    
}

```
#### <img src="https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png" alt="SwiftUI logo" width="12" /> **SwiftUI Examples:**
 **Alerts use `Text` to allow flexible styling, such as applying custom fonts, colors or formatting**
- Supports `custom fonts configuration` 
```swift
@main
struct MyApp: App {
    init() {
        CustomAlertsConfig.configure(
            semiBold: "YourSemiBoldFontName",
            medium: "YourMediumFontName",
            regular: "YourRegularFontName"
        )
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```
**Local alert**
```swift
import SwiftUI
import CustomAlerts

struct ContentView: View {
    @State private var alert: AlertNotice?
    
    var body: some View {
        Button("Show alert") {
			// Error
            $alert.error(Text("Something went wrong"))

			// Info
            $alert.info(
                Text("Info..."),
                onConfirm: {
                    <#code#>
                }, onCancel: {
                    <#code#>
                }
            )

			// Complete
            $alert.complete(
                Text("Complete..."),
                onConfirm: {
					<#code#>
                }
            )

			// Warning
            $alert.warning(
                Text("Warning..."),
                onCancel: {
                    <#code#>
                }
            )
        }
        .localAlert($alert)
    }
}
```
**Environment alert**

```swift
import SwiftUI
import CustomAlerts

@main
struct DemoApp: App {
    @State private var appAlert: AlertNotice?

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentAlert($appAlert) 
        }
    }
}

import SwiftUI
import CustomAlerts

struct ContentView: View {
    @Environment(\.appAlert) private var appAlert
    
    var body: some View {
        Button("Show error") {
            appAlert.error(Text("Something went wrong"))
        }
    }
}
```

	
