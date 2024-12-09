import Foundation

struct News: Identifiable {
    let id: Int
    let title: String
    let content: String
    let imageUrl: String
    let publishedDate: Date
}
