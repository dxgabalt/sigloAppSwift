import SwiftUI

struct ArticlesScreen: View {
    var body: some View {
        VStack {
            Text("ArticlesScreen")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct ArticlesScreen_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesScreen()
    }
}
