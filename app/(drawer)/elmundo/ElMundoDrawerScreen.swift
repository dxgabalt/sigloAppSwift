import SwiftUI

struct ElMundoDrawerScreen: View {
    var body: some View {
        VStack {
            Text("EL mundo")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct ElMundoDrawerScreen_Previews: PreviewProvider {
    static var previews: some View {
        ElMundoDrawerScreen()
    }
}
