import SwiftUI

#Preview {
    ContentView()
}


struct ContentView: View {
    //Variavel que o swift "vigia". Se ela mudar, a tela muda!
    @State var manobras = 0
    @State var valorDoAluguel: Double = 1200.00
    @State var diasDeAtraso: Int = 5
    @State var estaPago: Bool = false
    @State var taxaMulta: Double = 50.0
    
    func calcularTotal() -> Double {
        if estaPago {
            return valorDoAluguel
        } else {
            return valorDoAluguel + taxaMulta
        }
    }
        var body: some View { //Alinha tudo em cima do outro
            
            VStack(spacing: 20) {
                Text("Treino de Hoje")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                // A logica da decisão fica dentro do body
                if estaPago == true {
                    Text("O pagamento foi confirmado!")
                        .foregroundColor(.green)
                } else {
                    Text("Valor Final: R$ \(calcularTotal(), specifier: "%.2F")")
                        .foregroundColor(.red)
                    
                    Button("Mudar Status") {
                        estaPago.toggle()// este comando inverte true e false
                    }
                    .buttonStyle(.bordered)
                }
            }
            
            
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
