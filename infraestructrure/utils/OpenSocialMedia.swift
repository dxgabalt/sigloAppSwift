import SwiftUI

func openSocialMedia(url: String) {
    guard let link = URL(string: url), UIApplication.shared.canOpenURL(link) else {
        showAlert(title: "Error", message: "No se pudo abrir el enlace")
        return
    }

    UIApplication.shared.open(link, options: [:], completionHandler: nil)
}

func showAlert(title: String, message: String) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default))
    if let topController = UIApplication.shared.windows.first?.rootViewController {
        topController.present(alert, animated: true)
    }
}
