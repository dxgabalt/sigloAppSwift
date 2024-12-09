import SwiftUI

struct SavedScreen: View {
    @State private var isAuth = true // Estado para verificar autenticación

    var body: some View {
        if isAuth {
            VStack(alignment: .leading, spacing: 20) {
                Text("Mis artículos guardados")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(.leading, 20)

                ScrollView(showsIndicators: false) {
                    ArticlesSaved() // Implementa este componente como un subvista
                }
                .padding(.horizontal, 20)
            }
        } else {
            NotLogin() // Implementa este componente como un subvista
        }
    }
}

struct ArticlesSaved: View {
    var body: some View {
        VStack {
            // Simula una lista de artículos guardados
            ForEach(1...5, id: \.self) { item in
                HStack {
                    Text("Artículo guardado \(item)")
                        .font(.body)
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .shadow(radius: 1)
                .padding(.vertical, 5)
            }
        }
    }
}

struct NotLogin: View {
    var body: some View {
        VStack {
            Text("No estás autenticado")
                .font(.title)
                .fontWeight(.medium)
                .padding()
            Spacer()
        }
    }
}

struct SavedScreen_Previews: PreviewProvider {
    static var previews: some View {
        SavedScreen()
    }
}
