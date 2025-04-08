import SwiftUI

struct ContentView: View {
    
    @State var number1: Int = 0
    @State var number2 = 2
    @State var answer = 0

    
    var body: some View {
        TextField("Number 1", value: $number1, formatter: NumberFormatter())
            .frame(width: 20, height: 20, alignment: .center)
        TextField("number2", value: $number2, formatter: NumberFormatter())
            .frame(width: 50, height: 20)
            .padding(3)
            .background(
                RoundedRectangle(cornerRadius: 2)
                    .stroke(lineWidth: 1.0)
            )
        
        
        Spacer()
            .frame(height: 50)
        
        Button("Add") {
            answer = number1 + number2
        }
        
        // Subtraction Button
        Button() {
            answer = number1 - number2
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 30)
                .overlay(
                    Text("Subtract")
                        .foregroundStyle(.white)
                )
        }
        
        Button("Multiply") {
            answer = number1*number2
        }
        
        Spacer()
            .frame(height: 50)
        
        Text("Answer: \(answer)")
            .fontWeight(.bold)
    }
}
