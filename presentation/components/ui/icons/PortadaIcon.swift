import SwiftUI

struct PortadaIcon: View {
    var size: CGFloat = 28
    var color: Color = Color(hex: "#653D3D")

    var body: some View {
        Image(systemName: "house.fill") // Ejemplo usando SF Symbols; reemplaza con tu SVG si es necesario
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .foregroundColor(color)
    }
}

struct PortadaIcon_Previews: PreviewProvider {
    static var previews: some View {
        PortadaIcon()
    }
}
