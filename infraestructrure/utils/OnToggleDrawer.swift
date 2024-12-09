import SwiftUI

func onToggleDrawer(navigation: UINavigationController?, canGoBack: Bool = false) {
    guard let navigation = navigation else { return }

    if canGoBack {
        navigation.popViewController(animated: true)
    } else {
        // Implementa tu lógica de toggle drawer aquí
        print("Toggle Drawer functionality not implemented yet")
    }
}
