import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text( "あいうえお" )
                .font( .title )
                
                Spacer()
                
                Image( systemName:"gearshape" )
                .foregroundColor( .blue )
                .font( .title2 )
            }
            
            Divider()
            .background( .gray )
            .padding( .vertical, 20.0 )
            
            ScrollView {
                Image( "CC0_01" )
                .resizable()
                .scaledToFit()
            
                Image( "CC0_02" )
                .resizable()
                .scaledToFit()
                
                Image( "CC0_03" )
                .resizable()
                .scaledToFit()
                
                Image( "CC0_04" )
                .resizable()
                .scaledToFit()
            }
        }
        .padding( .horizontal, 20.0 )
    }
}
