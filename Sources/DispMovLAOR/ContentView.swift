import SwiftUI

// MARK: - Menú Principal
struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ProfileView()) {
                    Label("Ejercicio 1: Perfil", systemImage: "person.circle")
                }
                
                NavigationLink(destination: ProductListView()) {
                    Label("Ejercicio 2: Catálogo Gaming", systemImage: "cpu")
                }
                
                NavigationLink(destination: GalleryView()) {
                    Label("Ejercicio 3: Galería Viajes", systemImage: "airplane")
                }
                
                NavigationLink(destination: ButtonStylesView()) {
                    Label("Ejercicio 4: Estilos Botones", systemImage: "cursorarrow.click")
                }
            }
            .navigationTitle("Ejercicios Parte 1")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Ejercicio 1: Perfil
struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.05).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 25) {
                Image(systemName: "person.crop.square.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 140, height: 140)
                    .foregroundColor(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
                
                VStack(spacing: 10) {
                    Text("Jorge Moya")
                        .font(.system(size: 32, weight: .bold, design: .rounded))
                    
                    Text("Ingeniería en Electrónica y Electricidad")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    HStack {
                        Image(systemName: "graduationcap.fill")
                        Text("5to Semestre")
                    }
                    .font(.footnote)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                    .background(Color.blue.opacity(0.1))
                    .clipShape(Capsule())
                }
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Habilidades")
                        .font(.caption)
                        .bold()
                        .foregroundColor(.secondary)
                    HStack {
                        TagView(text: "SwiftUI", color: .blue)
                        TagView(text: "iOS", color: .blue)
                        TagView(text: "Git", color: .orange)
                    }
                }
                .padding(.bottom, 40)
            }
            .padding()
        }
        .navigationTitle("Mi Perfil")
    }
}

struct TagView: View {
    let text: String
    let color: Color
    var body: some View {
        Text(text)
            .font(.system(size: 10, weight: .bold))
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(color.opacity(0.2))
            .foregroundColor(color)
            .clipShape(Capsule())
    }
}

// MARK: - Ejercicio 2: Catálogo
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
                
                HStack(spacing: 15) {
                    TechProductView(icon: "keyboard.fill", name: "Mech Keyboard", price: "$120", color: .purple)
                    TechProductView(icon: "mouse.fill", name: "Pro Mouse", price: "$75", color: .blue)
                }
                .padding(.horizontal)
                
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

// MARK: - Ejercicio 3: Galería
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
                    .background(Color.blue.opacity(0.1))
                    .clipped()
                
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

// MARK: - Ejercicio 4: Botónes
struct ButtonStylesView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                VStack(spacing: 10) {
                    Text("Interactive UI")
                        .font(.title)
                        .bold()
                    Text("Experimentando con ButtonStyles")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Button(action: { print("Acción 1") }) {
                    Text("BOTÓN OUTLINE")
                        .font(.system(size: 14, weight: .bold))
                        .padding(.vertical, 12)
                        .padding(.horizontal, 24)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.primary, lineWidth: 2)
                        )
                }
                .buttonStyle(PlainButtonStyle())
                
                Button(action: { print("Borrando...") }) {
                    Label("ELIMINAR REGISTRO", systemImage: "trash.slash.fill")
                        .font(.system(size: 14, weight: .bold))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red.opacity(0.1))
                        .foregroundColor(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                .padding(.horizontal)
                
                VStack(spacing: 15) {
                    Button("SUSCRIBIRSE AHORA") {
                        print("Suscrito")
                    }
                    .buttonStyle(ModernGradientButtonStyle(colors: [.blue, .purple]))
                    
                    Button("EXPLORAR MÁS") {
                        print("Explorando")
                    }
                    .buttonStyle(ModernGradientButtonStyle(colors: [.green, .blue]))
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ModernGradientButtonStyle: ButtonStyle {
    let colors: [Color]
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline)
            .foregroundColor(.white)
            .padding(.vertical, 18)
            .frame(maxWidth: .infinity)
            .background(
                LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

// MARK: - Previews compatibles
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { ProfileView() }
    }
}
