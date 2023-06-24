import SwiftUI

struct ContentView: View {
    @AppStorage("count") var count = 10
    @AppStorage("remaining") var cookiesRemaining = 40
    @AppStorage("message") private var message = ""
    
    var body: some View {
        VStack {
            Text("\(count) Cookies eaten!")
            Text("\(cookiesRemaining - count) Cookies remaining")
            Button {
                count += 1
                if count >= 5 {
                    message = "You are eating too much"
                }
                if count >= 10 {
                    message = "hey stop eating"
                }
                if count >= 15 {
                    message = "Oh noooooo"
                }
                
            }label: {
                Text("eat a cookie")
                    .padding()
                    .font(.system(size: 40))
                    .background(.red)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
            //.buttonStyle(.borderedProminent)
            
            .shadow(color: .black.opacity(0.9), radius: 10, x: 0.0, y: 0.0)
            
           Text(message)
        }
    }
}
