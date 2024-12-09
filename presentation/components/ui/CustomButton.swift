import SwiftUI

struct CustomButton: View {
    var onPress: () -> Void
    var text: String

    var body: some View {
        Button(action: onPress) {
            Text(text)
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.black)
                .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(onPress: {
            print("Button pressed")
        }, text: "Iniciar Sesión")
    }
}