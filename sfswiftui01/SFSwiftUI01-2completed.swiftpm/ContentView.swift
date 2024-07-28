import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text( "こんにちわ" )
            .font( .system(size: 24 ) )
            .foregroundStyle( .mint )
            .frame( minWidth: 100, minHeight: 100 )
            .padding()
            .background( .indigo )
            .clipShape( RoundedRectangle(cornerRadius: 8 ) )
            .padding( .bottom, 50 )
            
            Text( "こんばんわ" )
            .frame( maxWidth:.infinity, minHeight:60 )
            .padding()
            .background( .purple )
            .clipShape( RoundedRectangle(cornerRadius: 30 ) )
        }
    }
}
