import SwiftUI

struct CardView: View {
    let imageName: String
    let title: String
    let author: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .topTrailing) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 240, height: 180)
                    .background(Color.indigo.opacity(0.1))
                    .clipped()
                
                // Badge de "Featured" (toque personal)
                Text("NEW")
                    .font(.caption)
                    .bold()
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.black.opacity(0.5))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(10)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.system(size: 18, weight: .bold))
                
                HStack {
                    Image(systemName: "person.circle")
                        .font(.caption)
                    Text(author)
                        .font(.caption)
                }
                .foregroundColor(.secondary)
                
                Text(description)
                    .font(.caption2)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .padding(.top, 4)
            }
            .padding(16)
        }
        .frame(width: 240)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
        .padding(.vertical, 15)
    }
}
