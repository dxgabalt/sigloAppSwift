import SwiftUI

struct MexEeuu: View {
    var body: some View {
        VStack {
            Text("Mexico y estados unidos")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct MexEeuu_Previews: PreviewProvider {
    static var previews: some View {
        MexEeuu()
    }
}
