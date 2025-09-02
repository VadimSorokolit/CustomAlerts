# CustomAlerts

**CustomAlerts is a lightweight Swift package that provides a unified alert system for `UIKit` and  `SwiftUI` projects**

**`UIKit` support:**
- Extensions for `UIViewController` to register and show alerts using `UIAlertController`
- Built-in notification handling (`errorNotification`, `infoNotification`, `warningNotification`) to display alerts automatically across controllers
- Simple API: `showErrorAlert`, `showWarningAlert`, `showAlert`
 
**`SwiftUI` support:**
-	Custom alert views with support for multiple categories: `.error`, `.warning`, `.info`, `.complete`
- Easy integration via `.environmentAlert` or `.localAlert`
- Configurable actions (`onConfirm`, `onCancel`) and `custom fonts`
	
