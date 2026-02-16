import SwiftUI

struct CardView: View {
    let imageName: String
    let title: String
    let author: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 150)
                .clipped()
            
            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.headline)
                Text("Autor: \(author)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text(description)
                    .font(.caption2)
                    .lineLimit(2)
            }
            .padding()
        }
        .frame(width: 200)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
        .shadow(radius: 5)
        .padding(.vertical, 10)
    }
}
