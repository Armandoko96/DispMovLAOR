import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Imagen circular (usando símbolo de sistema como placeholder)
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.blue)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
            
            VStack(spacing: 8) {
                Text("Jorge Moya")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Ing. en Electrónica y Electricidad")
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                Text("Semestre: 5")
                    .font(.subheadline)
                    .padding(.top, 4)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Perfil")
    }
}

#Preview {
    NavigationStack {
        ProfileView()
    }
}
