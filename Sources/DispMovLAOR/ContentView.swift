import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: ProfileView()) {
                    Label("Ejercicio 1: Perfil", systemImage: "person.circle")
                }
                
                NavigationLink(destination: ProductListView()) {
                    Label("Ejercicio 2: Catálogo Comida", systemImage: "cart")
                }
                
                NavigationLink(destination: GalleryView()) {
                    Label("Ejercicio 3: Galería Scroll", systemImage: "photo.on.rectangle")
                }
                
                NavigationLink(destination: ButtonStylesView()) {
                    Label("Ejercicio 4: Estilos Botones", systemImage: "hand.tap")
                }
            }
            .navigationTitle("Ejercicios Parte 1")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
