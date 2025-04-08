import SwiftUI

struct ContentView: View {
    
    @State var number1: Int = 0
    @State var number2 = 2
    @State var answer = 0

    
    var body: some View {
        TextField("Number 1", value: $number1, formatter: NumberFormatter())
            .frame(width: 100, height: 30, alignment: .center)
            .textFieldStyle(.roundedBorder)
            .foregroundColor(Color(.systemPink))
        
        TextField("number2", value: $number2, formatter: NumberFormatter())
            .frame(width: 100, height: 30)
            .textFieldStyle(.roundedBorder)
            .foregroundColor(Color(.systemPink))
            
        
        
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
