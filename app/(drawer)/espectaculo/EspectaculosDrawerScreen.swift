import SwiftUI

struct EspectaculosDrawerScreen: View {
    var body: some View {
        VStack {
            Text("Espectaculo")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct EspectaculosDrawerScreen_Previews: PreviewProvider {
    static var previews: some View {
        EspectaculosDrawerScreen()
    }
}
