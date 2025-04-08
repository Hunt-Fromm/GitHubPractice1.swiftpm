import SwiftUI

struct ContentView: View {
    
    @State var number1: Int = 0
    @State var number2 = 2

    
    var body: some View {
        TextField("number2", value: $number2, formatter: NumberFormatter())
            .frame(width: 100, height: 20)
            .textFieldStyle(.roundedBorder)
            
    }
}
