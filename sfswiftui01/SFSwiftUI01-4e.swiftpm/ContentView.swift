import SwiftUI

struct ContentView: View {
    @State var message:String = ""
    @State var input_text:String = "あいうえお"
    @State var tap_text:String = "タップ前"
    
    var body: some View {
        VStack {
            Text( message )
            .frame( width: .infinity, height: 50 )
            
            Button { 
                print( "押しました" )
                message = "押しました"
            } 
            label: {
                Label( "アイコンを含むボタン", systemImage: "plus" )
                .foregroundColor( .white )
                .padding( .vertical, 10 )
                .padding( .horizontal, 20 )
                .background( .blue )
                .cornerRadius( 8 )
            }
            
            Link( 
                "外部リンク",
                destination: URL( string:"https://wdkk.co.jp/" )!
            )
            .padding( 20 )
            
            TextField( "プレイスホルダー", text: $input_text )
            .padding( 10 )
            .border( .gray, width: 1.0 )
            .padding( 20 )
            
            Text( input_text )
            .padding( 20 )
            .frame( width: .infinity, height: 50 )
            
            Text( tap_text )
            .padding( 20 )
            .frame( width: .infinity, height: 50 )
            .onTapGesture {
                tap_text = "タップしました"
            }
        }
    }
}
