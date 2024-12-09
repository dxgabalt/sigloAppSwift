import SwiftUI

struct Index: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: TabsView()) {
                VStack {
                    Text("Redirigiendo a la sección principal...")
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                        .padding()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct Index_Previews: PreviewProvider {
    static var previews: some View {
        Index()
    }
}
