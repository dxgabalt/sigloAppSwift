import SwiftUI

struct ArticlesSaved: View {
    let newsData: [News]

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(newsData) { news in
                    ArticleSaved(
                        content: news.content,
                        imageUrl: news.imageUrl,
                        publishedDate: news.publishedDate
                    )
                }
            }
            .padding()
        }
    }
}

struct ArticlesSaved_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesSaved(newsData: newsFakeData)
    }
}
