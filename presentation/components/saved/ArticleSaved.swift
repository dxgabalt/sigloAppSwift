import SwiftUI

struct ArticleSaved: View {
    let content: String
    let imageUrl: String
    let publishedDate: Date

    private let maxTextLength = 70 // Cambia este valor según el límite deseado

    var truncatedContent: String {
        if content.count > maxTextLength {
            let index = content.index(content.startIndex, offsetBy: maxTextLength)
            return content[..<index] + "..."
        }
        return content
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(publishedDate, style: .date)
                .font(.footnote)
                .foregroundColor(Color.gray)

            HStack(alignment: .center, spacing: 16) {
                Text(truncatedContent)
                    .font(.body)
                    .foregroundColor(Color.black)
                    .lineLimit(2)

                AsyncImage(url: URL(string: imageUrl)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                } placeholder: {
                    ProgressView()
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, 8)
        }
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 2)
    }
}

struct ArticleSaved_Previews: PreviewProvider {
    static var previews: some View {
        ArticleSaved(
            content: "NASA's Perseverance rover has started its second science campaign on Mars.",
            imageUrl: "https://picsum.photos/200",
            publishedDate: Date()
        )
    }
}
