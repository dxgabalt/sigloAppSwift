import SwiftUI

struct CulturaDrawerScreen: View {
    var body: some View {
        VStack {
            Text("Cultura")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct CulturaDrawerScreen_Previews: PreviewProvider {
    static var previews: some View {
        CulturaDrawerScreen()
    }
}
