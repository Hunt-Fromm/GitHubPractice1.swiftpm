import SwiftUI

struct ContentView: View {
    
    @State var number3: Int = 0
    @State var number2 = 2

    
    var body: some View {
        TextField("Number 1", value: $number3, formatter: NumberFormatter())
            .frame(width: 20, height: 20, alignment: .center)
    }
}
