import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            // Fondo con gradiente sutil
            LinearGradient(colors: [Color.indigo.opacity(0.1), Color.teal.opacity(0.1)], 
                           startPoint: .topLeading, 
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 25) {
                // Imagen circular con estilo propio
                Image(systemName: "person.crop.square.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 140, height: 140)
                    .foregroundStyle(.indigo.gradient)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .shadow(color: .indigo.opacity(0.3), radius: 10, x: 0, y: 5)
                
                VStack(spacing: 10) {
                    Text("Jorge Moya")
                        .font(.system(size: 32, weight: .black, design: .rounded))
                        .foregroundStyle(.primary)
                    
                    Text("Ingeniería en Electrónica y Electricidad")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    HStack {
                        Image(systemName: "academicons.graduationcap.fill")
                        Text("5to Semestre")
                    }
                    .font(.footnote)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                    .background(.indigo.opacity(0.1))
                    .clipShape(Capsule())
                }
                
                Spacer()
                
                // Un pequeño detalle extra de diseño "propio"
                VStack(alignment: .leading, spacing: 5) {
                    Text("Habilidades")
                        .font(.caption)
                        .bold()
                        .foregroundColor(.secondary)
                    HStack {
                        TagView(text: "SwiftUI", color: .blue)
                        TagView(text: "iOS", color: .indigo)
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ProfileView()
        }
    }
}
