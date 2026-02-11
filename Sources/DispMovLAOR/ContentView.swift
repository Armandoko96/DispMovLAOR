import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "iphone.gen3")
                .imageScale(.large)
                .foregroundStyle(.blue)
                .font(.system(size: 50))
                .padding()
            
            Text("DispMovLAOR")
                .font(.largeTitle)
                .fontWeight(.bold)
                
            Text("¡Bienvenido a tu App iOS!")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
