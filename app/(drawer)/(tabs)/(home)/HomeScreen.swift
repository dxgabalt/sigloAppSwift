import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack {
            Text("HomeScreen")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
