import SwiftUI

struct ProductListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Catálogo de Comida")
                    .font(.largeTitle)
                    .bold()
                
                // Primer renglón: 2 productos
                HStack(spacing: 15) {
                    ProductItemView(imageName: "fork.knife", title: "Pizza", price: "20$", bgColor: .orange, textColor: .white)
                    ProductItemView(imageName: "cup.and.saucer.fill", title: "Café", price: "15$", bgColor: .brown, textColor: .white)
                }
                
                // Segundo renglón: Banner ZStack (Tamaño doble)
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(LinearGradient(colors: [.red, .pink], startPoint: .leading, endPoint: .trailing))
                        .frame(height: 120)
                    
                    VStack {
                        Text("COMBO ESPECIAL")
                            .font(.headline)
                            .foregroundColor(.white)
                        Text("¡Ahorra un 20% hoy!")
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.9))
                        Text("12$")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal)
                
                // Tercer renglón: Mas productos
                HStack(spacing: 15) {
                    ProductItemView(imageName: "burger", title: "Burger", price: "18$", bgColor: .blue, textColor: .white)
                    ProductItemView(imageName: "icecream.fill", title: "Postre", price: "10$", bgColor: .purple, textColor: .white)
                }
            }
            .padding()
        }
    }
}

// Subview parametrizada
struct ProductItemView: View {
    let imageName: String
    let title: String
    let price: String
    let bgColor: Color
    let textColor: Color
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .font(.system(size: 40))
                .frame(width: 80, height: 80)
                .background(Color.white.opacity(0.3))
                .clipShape(Circle())
            
            Text(title)
                .font(.headline)
            Text(price)
                .font(.subheadline)
                .bold()
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(bgColor)
        .foregroundColor(textColor)
        .cornerRadius(15)
    }
}

#Preview {
    ProductListView()
}
