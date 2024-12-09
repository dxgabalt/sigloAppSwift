import SwiftUI

struct LayoutDrawer: View {
    @State private var selectedScreen: String? = nil

    var body: some View {
        NavigationView {
            List {
                // Sección principal
                NavigationLink(
                    destination: TabsView(),
                    tag: "Tabs",
                    selection: $selectedScreen
                ) {
                    Label("Seccion Principal", systemImage: "person.circle")
                }

                // La laguna
                NavigationLink(
                    destination: LalagunaDrawerScreen(),
                    tag: "LaLaguna",
                    selection: $selectedScreen
                ) {
                    Label("La laguna", systemImage: "leaf")
                }

                // Meta
                NavigationLink(
                    destination: UserDrawerSection(),
                    tag: "Meta",
                    selection: $selectedScreen
                ) {
                    Label("Meta", systemImage: "flag.checkered")
                }

                // Rostros
                NavigationLink(
                    destination: RostrosDrawerScreen(),
                    tag: "Rostros",
                    selection: $selectedScreen
                ) {
                    Label("Rostros", systemImage: "person")
                }

                // Economia
                NavigationLink(
                    destination: EconomiaDrawerScreen(),
                    tag: "Economia",
                    selection: $selectedScreen
                ) {
                    Label("Economia", systemImage: "dollarsign.circle")
                }

                // México y EEUU
                NavigationLink(
                    destination: MexEeuu(),
                    tag: "MexEEUU",
                    selection: $selectedScreen
                ) {
                    Label("Mexico y EEUU", systemImage: "flag")
                }

                // El mundo
                NavigationLink(
                    destination: ElMundoDrawerScreen(),
                    tag: "ElMundo",
                    selection: $selectedScreen
                ) {
                    Label("El mundo", systemImage: "globe")
                }

                // Espectáculo
                NavigationLink(
                    destination: EspectaculosDrawerScreen(),
                    tag: "Espectaculo",
                    selection: $selectedScreen
                ) {
                    Label("Espectaculo", systemImage: "hands.sparkles")
                }

                // Cultura
                NavigationLink(
                    destination: CulturaDrawerScreen(),
                    tag: "Cultura",
                    selection: $selectedScreen
                ) {
                    Label("Cultura", systemImage: "building.columns")
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Menú")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LayoutDrawer_Previews: PreviewProvider {
    static var previews: some View {
        LayoutDrawer()
    }
}
