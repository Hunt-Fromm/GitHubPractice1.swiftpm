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
        
        Button() {
            answer = number1 + number2
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 30)
                .foregroundStyle(Color(UIColor(red: 0, green: 0.8, blue: 0.3, alpha: 1)))
                .overlay(
                    Text("Add")
                        .foregroundStyle(.white)
                )
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
        
        Button() {
            answer = number1*number2
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 30)
                .foregroundStyle(.blue)
                .overlay(
                    Text("Multiply")
                        .foregroundStyle(.white)
                )
        }
        
        Spacer()
            .frame(height: 50)
        
        Text("Answer: \(answer)")
            .fontWeight(.bold)
    }
}
