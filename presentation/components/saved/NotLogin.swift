import SwiftUI

struct NotLogin: View {
    var onLogin: () -> Void = {
        print("Iniciar sesión")
    }

    var body: some View {
        VStack(spacing: 20) {
            Text("Inicia Sesión para acceder a tus artículos guardados.")
                .font(.headline)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)

            HStack {
                Text("Toca el ícono")
                Image(systemName: "bookmark")
                    .font(.system(size: 24))
                    .foregroundColor(.black)
                Text("en algún artículo para que aparezca aquí.")
            }
            .font(.subheadline)
            .multilineTextAlignment(.center)
            .foregroundColor(.black)

            CustomButton(
                onPress: onLogin,
                text: "Iniciar Sesión"
            )
        }
        .padding()
    }
}

struct NotLogin_Previews: PreviewProvider {
    static var previews: some View {
        NotLogin()
    }
}
