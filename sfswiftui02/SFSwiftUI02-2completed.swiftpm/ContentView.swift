import SwiftUI

struct ContentView : View {
    @State var section1Expanded:Bool = false
    @State var section2Expanded:Bool = false
    
    var body: some View {
        List {
            Section( "テキストセクション", isExpanded:$section1Expanded ) {
                Text( "あいうえお" )
                Text( "かきくけこ" )
                Text( "さしすせそ" )
            }
            
            Section( "画像セクション",  isExpanded:$section2Expanded ) {
                Image( "CC0_01" )
                .resizable()
                .scaledToFit()
            }
        }        
        .listStyle( .sidebar )
    }
}
