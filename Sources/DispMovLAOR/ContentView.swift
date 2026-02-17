import SwiftUI

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
