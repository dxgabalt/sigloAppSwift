import SwiftUI

struct RostrosDrawerScreen: View {
    var body: some View {
        VStack {
            Text("Rostros")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct RostrosDrawerScreen_Previews: PreviewProvider {
    static var previews: some View {
        RostrosDrawerScreen()
    }
}
