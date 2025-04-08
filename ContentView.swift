import SwiftUI

struct ContentView: View {
    
    @State var number3: Int = 0
    @State var number2 = 2

    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
    }
}
