import SwiftUI

struct EconomiaDrawerScreen: View {
    var body: some View {
        VStack {
            Text("Economia")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct EconomiaDrawerScreen_Previews: PreviewProvider {
    static var previews: some View {
        EconomiaDrawerScreen()
    }
}
