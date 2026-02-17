import SwiftUI

struct ProductListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                VStack(alignment: .leading) {
                    Text("Tech & Gaming")
                        .font(.title)
                        .bold()
                    Text("Mejora tu workstation")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                // Primer renglón: 2 productos tech
                HStack(spacing: 15) {
                    TechProductView(icon: "keyboard.fill", name: "Mech Keyboard", price: "$120", color: .purple)
                    TechProductView(icon: "mouse.fill", name: "Pro Mouse", price: "$75", color: .blue)
                }
                .padding(.horizontal)
                
                // Segundo renglón: Banner ZStack "Pro"
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.black)
                    
                    VStack(spacing: 10) {
                        Text("BUNDLE GAMER")
                            .font(.caption)
                            .bold()
                            .foregroundColor(.blue)
                        
                        Text("All-in-One Pack")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                        
                        Text("$199.99")
                            .font(.largeTitle)
                            .bold()
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
        .background(Color.gray.opacity(0.1))
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
                .background(color)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(.system(size: 14, weight: .bold))
                Text(price)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(color)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}
