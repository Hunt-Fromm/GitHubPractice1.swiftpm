import SwiftUI

struct ContentView: View {
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
