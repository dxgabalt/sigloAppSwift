import SwiftUI

struct HomeStack: View {
    @Environment(\.presentationMode) var presentationMode // Para manejar el botón "Atrás"

    var body: some View {
        NavigationView {
            HomeScreen()
                .navigationBarTitleDisplayMode(.inline) // Título centrado
                .toolbar {
                    // Botón izquierdo: Ícono de barra o "Atrás"
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            if presentationMode.wrappedValue.isPresented {
                                presentationMode.wrappedValue.dismiss()
                            } else {
                                toggleDrawer()
                            }
                        }) {
                            Image(systemName: presentationMode.wrappedValue.isPresented ? "chevron.left" : "line.horizontal.3")
                                .font(.system(size: 24, weight: .bold))
                        }
                    }

                    // Botón central: Imagen del encabezado
                    ToolbarItem(placement: .principal) {
                        Image("img-prof") // Asegúrate de agregar img-prof.png en el proyecto
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 60)
                    }

                    // Botón derecho: Buscar
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("Buscando nada.")
                        }) {
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 24, weight: .bold))
                        }
                    }
                }
        }
    }

    private func toggleDrawer() {
        print("Toggle Drawer")
        // Aquí implementa la funcionalidad de abrir/cerrar el Drawer
    }
}

struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
