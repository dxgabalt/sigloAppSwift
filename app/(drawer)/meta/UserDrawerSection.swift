import SwiftUI

struct UserDrawerSection: View {
    var body: some View {
        VStack {
            Text("Hola")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct UserDrawerSection_Previews: PreviewProvider {
    static var previews: some View {
        UserDrawerSection()
    }
}
