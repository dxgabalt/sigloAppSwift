import SwiftUI

struct CustomDrawer: View {
    var onSocialMediaTap: (String) -> Void

    var body: some View {
        VStack {
            // Header con imagen de fondo
            ZStack {
                Image("profile-photo")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()

                Image("img-prof-white")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 60)
            }

            // Botones de redes sociales
            HStack(spacing: 16) {
                Button(action: {
                    onSocialMediaTap("https://www.facebook.com/elsiglo.mx")
                }) {
                    Image(systemName: "facebook")
                        .font(.system(size: 24))
                }

                Button(action: {
                    onSocialMediaTap("https://x.com/torreon")
                }) {
                    Image(systemName: "twitter")
                        .font(.system(size: 24))
                }

                Button(action: {
                    onSocialMediaTap("https://www.youtube.com/@ElSiglomx/videos")
                }) {
                    Image(systemName: "play.rectangle")
                        .font(.system(size: 24))
                }

                Button(action: {
                    onSocialMediaTap("https://www.instagram.com/elsiglodetorreon/")
                }) {
                    Image(systemName: "camera")
                        .font(.system(size: 24))
                }
            }
            .padding(.vertical, 12)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
            .padding(.horizontal)

            // Opciones de navegación
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    NavigationLink(destination: Text("Sección 1")) {
                        Text("Sección 1")
                            .font(.headline)
                            .padding()
                    }

                    NavigationLink(destination: Text("Sección 2")) {
                        Text("Sección 2")
                            .font(.headline)
                            .padding()
                    }
                }
                .padding(.horizontal)
            }

            // Botones en la parte inferior
            VStack(spacing: 8) {
                Button(action: {
                    print("Anúnciate")
                }) {
                    Text("Anúnciate")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .cornerRadius(8)
                }

                Button(action: {
                    print("Suscríbete")
                }) {
                    Text("Suscríbete")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .cornerRadius(8)
                }
            }
            .padding()
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}

struct CustomDrawer_Previews: PreviewProvider {
    static var previews: some View {
        CustomDrawer { url in
            print("Opening social media: \(url)")
        }
    }
}
