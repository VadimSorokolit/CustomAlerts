# CustomAlerts

**CustomAlerts is a lightweight Swift package that provides a unified alert system for `UIKit` and  `SwiftUI` projects**

---
**`UIKit` support:**
- Extensions for `UIViewController` to register and show alerts using `UIAlertController`
- Built-in notification handling (`errorNotification`, `infoNotification`, `warningNotification`) to display alerts automatically across controllers
- Simple API: `showErrorAlert`, `showWarningAlert`, `showAlert`
 
**`SwiftUI` support:**
-	Custom alert views with support for multiple categories: `.error`, `.warning`, `.info`, `.complete`
- Easy integration via `.environmentAlert` or `.localAlert`
- Configurable actions (`onConfirm`, `onCancel`) and `custom fonts`

---
### ✅ Requirements 
- iOS 15.0+ / macOS 12.0+
---
### 📦 Installation
You should add it in Xcode:  
- Go to File > Add Packages…
- Enter the repository URL: `https://github.com/VadimSorokolit/CustomAlerts`
- Select CustomAlerts and add it to your target
---
### 🛠️ Usage
You need to import and use the library only in the parts of your project where you need alerts or notifications

#### <img src="https://developer.apple.com/swift/images/swift-og.png" alt="Swift logo" width="12" /> UIKit Examples:
#### <img src="https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png" alt="SwiftUI logo" width="12" /> **SwiftUI Examples:**
---


	
