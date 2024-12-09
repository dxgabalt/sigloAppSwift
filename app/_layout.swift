import SwiftUI

struct MainLayout: View {
    var body: some View {
        TabView {
            Text("Cultura")
                .tabItem {
                    Label("Cultura", systemImage: "book.fill")
                }
            
            Text("Economía")
                .tabItem {
                    Label("Economía", systemImage: "dollarsign.circle")
                }
            
            Text("El Mundo")
                .tabItem {
                    Label("El Mundo", systemImage: "globe")
                }
        }
    }
}

struct MainLayout_Previews: PreviewProvider {
    static var previews: some View {
        MainLayout()
    }
}
