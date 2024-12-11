import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    
                    // Sección Principal (Noticia Destacada)
                    ZStack(alignment: .bottomLeading) {
                        Image("featured-news") // Imagen destacada
                            .resizable()
                            .scaledToFill()
                            .frame(height: 250)
                            .clipped()
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("GRUPO DE REACCIÓN TORREÓN")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Text("Municipio de Torreón da de baja al Grupo de Reacción; Gobierno del Estado lo rescata")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .lineLimit(3)
                            
                            Text("El Siglo de Torreón · 09:28 hrs")
                                .font(.footnote)
                                .foregroundColor(.white.opacity(0.8))
                        }
                        .padding()
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.black.opacity(0.8), Color.clear]),
                                startPoint: .bottom,
                                endPoint: .top
                            )
                        )
                    }
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
                    // Título de Sección
                    Text("Últimas Noticias")
                        .font(.headline)
                        .padding(.horizontal)
                    
                    // Sección de Noticias Secundarias
                    VStack(spacing: 16) {
                        NewsRow(
                            title: "Club Santos Laguna: Los Guerreros se preparan contra San Luis",
                            author: "Humberto Vázquez",
                            time: "08:31 hrs",
                            category: "Deportes",
                            image: "news-image-1"
                        )
                        
                        NewsRow(
                            title: "Clima Torreón: Expectativas para la semana",
                            author: "El Siglo de Torreón",
                            time: "07:15 hrs",
                            category: "Clima",
                            image: "news-image-2"
                        )
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
                .padding(.vertical)
            }
            .navigationTitle("El Siglo de Torreón")
            .toolbar {
                // Botón de Menú
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("Menu button pressed")
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                }
                // Botón de Búsqueda
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Search button pressed")
                    }) {
                        Image(systemName: "magnifyingglass")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

// Componente Reutilizable para Noticias Secundarias
struct NewsRow: View {
    var title: String
    var author: String
    var time: String
    var category: String
    var image: String

    var body: some View {
        HStack(spacing: 16) {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(8)
                .clipped()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(category.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                
                Text(title)
                    .font(.body)
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .foregroundColor(.black)
                
                HStack {
                    Text(author)
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text(time)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
