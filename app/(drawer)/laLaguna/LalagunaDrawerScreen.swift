import SwiftUI

struct LalagunaDrawerScreen: View {
    var body: some View {
        VStack {
            Text("Hola ajustes")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct LalagunaDrawerScreen_Previews: PreviewProvider {
    static var previews: some View {
        LalagunaDrawerScreen()
    }
}
