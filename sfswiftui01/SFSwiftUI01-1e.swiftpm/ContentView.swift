import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color( .sRGB, red: 0.2, green: 0.3, blue: 0.2, opacity: 1.0 )
            
            VStack {
                HStack {
                    Image( systemName:"globe" )
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding()
                
                    Spacer()
                    
                    Image( systemName:"info.circle" )
                    .imageScale(.large)
                    .foregroundColor( .blue )
                    .padding()
                }
                
                Spacer()
                
                Text( "こんにちわ" )
                .padding()
            }
        }
    }
}
