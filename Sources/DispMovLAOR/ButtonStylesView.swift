import SwiftUI

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
                
                // Botón 1: Diseño "Outline" Refinado (Padding doble + stroke)
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
                
                // Botón 2: Label con estilo Premium
                Button(action: { print("Borrando...") }) {
                    Label("ELIMINAR REGISTRO", systemImage: "trash.slash.fill")
                        .font(.system(size: 14, weight: .black))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red.opacity(0.1))
                        .foregroundColor(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                .padding(.horizontal)
                
                // Botones 3 y 4: Gradientes Neo-Brutalist
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

// Estilo de botón moderno y propio
struct ModernGradientButtonStyle: ButtonStyle {
    let colors: [Color]
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline)
            .foregroundColor(.white)
            .padding(.vertical, 18)
            .frame(maxWidth: .infinity)
            .background(
                LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

struct ButtonStylesView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesView()
    }
}
