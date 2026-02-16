import SwiftUI

struct ButtonStylesView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Estilos de Botones")
                .font(.largeTitle)
                .bold()
            
            // Botón 1: Solid color con bordes (doble padding + overlay)
            Button("Botón 1") {
                print("Click en Botón 1")
            }
            .foregroundColor(.blue)
            .padding()
            .padding(.horizontal)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 2)
            )
            
            // Botón 2: Label con icono borrar
            Button(role: .destructive) {
                print("Elemento borrado")
            } label: {
                Label("Borrar", systemImage: "trash.fill")
            }
            .buttonStyle(.borderedProminent)
            
            // Botón 3: Gradiente usando ButtonStyle personalizado
            Button("Botón Gradiente 1") {
                print("Click en Gradiente 1")
            }
            .buttonStyle(GradientButtonStyle(colors: [.orange, .red]))
            
            // Botón 4: Gradiente usando ButtonStyle personalizado
            Button("Botón Gradiente 2") {
                print("Click en Gradiente 2")
            }
            .buttonStyle(GradientButtonStyle(colors: [.purple, .blue]))
            
            Spacer()
        }
        .padding()
    }
}

// Estilo de botón reutilizable con gradiente
struct GradientButtonStyle: ButtonStyle {
    let colors: [Color]
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing)
            )
            .cornerRadius(12)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

#Preview {
    ButtonStylesView()
}
