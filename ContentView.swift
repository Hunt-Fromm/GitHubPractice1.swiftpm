import SwiftUI

struct ContentView: View {
    
    @State var number3: Int
    
    var body: some View {
        
        @State var number2 = 2
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
    }
}
