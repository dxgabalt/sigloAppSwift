import SwiftUI

struct TabsLayout: View {
    @State private var selectedTab = 0 // Control del tab seleccionado

    var body: some View {
        TabView(selection: $selectedTab) {
            // Home Tab
            HomeStack()
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                        Text("Portada")
                    }
                }
                .tag(0)

            // Articles Tab
            ArticlesScreen()
                .tabItem {
                    VStack {
                        Image(systemName: "newspaper")
                        Text("Impreso")
                    }
                }
                .tag(1)

            // Saved Tab
            SavedScreen()
                .tabItem {
                    VStack {
                        Image(systemName: "bookmark.fill")
                        Text("Guardado")
                    }
                }
                .tag(2)

            // Profile Tab
            ProfileScreen()
                .tabItem {
                    VStack {
                        Image(systemName: "person.crop.circle")
                        Text("Perfil")
                    }
                }
                .tag(3)
        }
        .accentColor(Color("TabActiveTint")) // Color personalizado para el tab seleccionado
    }
}

// Vista previa para pruebas
struct TabsLayout_Previews: PreviewProvider {
    static var previews: some View {
        TabsLayout()
    }
}
