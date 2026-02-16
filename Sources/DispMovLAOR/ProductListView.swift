import SwiftUI

struct ProductListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                VStack(alignment: .leading) {
                    Text("Tech & Gaming")
                        .font(.system(size: 34, weight: .heavy, design: .monospaced))
                    Text("Mejora tu workstation")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                // Primer renglón: 2 productos tech
                HStack(spacing: 15) {
                    TechProductView(icon: "keyboard.fill", name: "Mech Keyboard", price: "$120", color: .purple)
                    TechProductView(icon: "mouse.fill", name: "Pro Mouse", price: "$75", color: .cyan)
                }
                .padding(.horizontal)
                
                // Segundo renglón: Banner ZStack "Pro"
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.black)
                    
                    // Efecto de brillo de borde (propio)
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(LinearGradient(colors: [.purple, .blue, .cyan], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                    
                    VStack(spacing: 10) {
                        Text("BUNDLE GAMER")
                            .font(.caption)
                            .bold()
                            .tracking(4)
                            .foregroundColor(.cyan)
                        
                        Text("All-in-One Pack")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                        
                        Text("$199.99")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                    }
                }
                .frame(height: 160)
                .padding(.horizontal)
                
                // Tercer renglón: Mas tech
                HStack(spacing: 15) {
                    TechProductView(icon: "headphones", name: "Studio Pro", price: "$250", color: .orange)
                    TechProductView(icon: "display", name: "4K Monitor", price: "$499", color: .blue)
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
        .background(Color(.systemGroupedBackground))
    }
}

// Subview personalizada
struct TechProductView: View {
    let icon: String
    let name: String
    let price: String
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 30))
                .foregroundColor(.white)
                .frame(width: 60, height: 60)
                .background(color.gradient)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(.system(size: 14, weight: .bold))
                Text(price)
                    .font(.system(size: 16, weight: .black))
                    .foregroundColor(color)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color(.secondarySystemGroupedBackground))
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    ProductListView()
}
