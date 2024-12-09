import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Encabezado
                VStack(spacing: 10) {
                    Image("react-logo") // Asegúrate de agregar "react-logo.png" a tu proyecto en Assets.xcassets
                        .resizable()
                        .scaledToFill()
                        .frame(width: 128, height: 128)
                        .clipShape(Circle())
                    Text("Brian Rico")
                        .font(.title)
                        .fontWeight(.medium)
                    Text("Software Engineer")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.top, 20)

                // Sección: Acceso
                VStack(alignment: .leading, spacing: 0) {
                    Text("Acceso")
                        .font(.headline)
                        .padding(.bottom, 5)

                    CustomButton(title: "Editar perfil", icon: "chevron.right")
                    Divider()
                    CustomButton(title: "Guardados en favoritos", icon: "chevron.right")
                }
                .padding()

                // Sección: Opciones
                VStack(alignment: .leading, spacing: 0) {
                    Text("Opciones")
                        .font(.headline)
                        .padding(.bottom, 5)

                    CustomButton(title: "Notificaciones", icon: "chevron.right")
                    Divider()
                    CustomButton(title: "Ajustes", icon: "chevron.right")
                    Divider()
                    CustomButton(title: "Acerca de", icon: "chevron.right")
                }
                .padding()
            }
            .frame(maxWidth: .infinity)
        }
        .background(Color(.systemGray6)) // Color de fondo
    }
}

// Botón reutilizable
struct CustomButton: View {
    var title: String
    var icon: String

    var body: some View {
        HStack {
            Text(title)
                .font(.body)
                .foregroundColor(.black)
            Spacer()
            Image(systemName: icon)
                .foregroundColor(.black)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
