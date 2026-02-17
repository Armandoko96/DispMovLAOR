import SwiftUI

struct GalleryView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack(alignment: .leading, spacing: 5) {
                Text("Explora el Mundo")
                    .font(.title)
                    .bold()
                Text("Mis destinos favoritos para 2025")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    CardView(imageName: "map.fill", title: "Tokio", author: "Aventura Urbana", description: "Luces de neón y cultura milenaria en cada esquina.")
                    CardView(imageName: "sun.max.fill", title: "Bali", author: "Relax Tropical", description: "Playas de arena blanca y templos sagrados.")
                    CardView(imageName: "snow", title: "Suiza", author: "Alpes", description: "Paisajes de invierno y los mejores chocolates.")
                    CardView(imageName: "leaf.fill", title: "Amazonas", author: "Eco-Aventura", description: "La selva más grande del mundo te espera.")
                }
                .padding(.horizontal)
            }
            
            Spacer()
        }
        .padding(.top)
        .background(Color.gray.opacity(0.1))
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
