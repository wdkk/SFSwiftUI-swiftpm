import SwiftUI

struct ContentView : View {
    var body: some View {
        List {
            Section( "テキストセクション" ) {
                Text( "あいうえお" )
                Text( "かきくけこ" )
                Text( "さしすせそ" )
            }
            
            Section( "画像セクション" ) {
                Image( "CC0_01" )
                .resizable()
                .scaledToFit()
            }
        }        
        .listStyle( .sidebar )
    }
}
