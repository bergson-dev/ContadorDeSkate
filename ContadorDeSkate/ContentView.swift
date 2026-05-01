import SwiftUI

#Preview {
    ContentView()
}


struct ContentView: View {
    //Variavel que o swift "vigia". Se ela mudar, a tela muda!
    @State var manobras = 0
    
    var body: some View { //Alinha tudo em cima do outro
            
            VStack(spacing: 20) {
                Text("Treino de Hoje")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                
                Text("\(manobras)") //Mostra o valor da variável
                    .font(.largeTitle)
                    .foregroundColor(manobras >= 5 ? .pink : .primary)
                
                Button("Acertei uma Manobra! 🛹") {
                    manobras = manobras + 1 // Ação do botão

                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
                
                Button("Zerar Contador") {
                    manobras = 0  // Isso volta o valor para zero
                    
                }
                .buttonStyle(.bordered)
                .tint(.red)
                .padding(.top, 10)
            }
        }
    }
