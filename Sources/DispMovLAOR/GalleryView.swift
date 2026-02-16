import SwiftUI

struct GalleryView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Galería Horizontal")
                .font(.largeTitle)
                .bold()
                .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    CardView(imageName: "mountain.2.fill", title: "Montañas", author: "Naturaleza", description: "Una vista hermosa de las montañas nevadas.")
                    CardView(imageName: "sunset.fill", title: "Atardecer", author: "Cielo", description: "Colores vibrantes al final del día.")
                    CardView(imageName: "beach.umbrella.fill", title: "Playa", author: "Verano", description: "Relajación total bajo el sol costero.")
                    CardView(imageName: "leaf.fill", title: "Bosque", author: "Bio", description: "El aire puro de la naturaleza virgen.")
                }
                .padding(.horizontal)
            }
            
            Spacer()
        }
        .padding(.top)
    }
}

#Preview {
    GalleryView()
}
