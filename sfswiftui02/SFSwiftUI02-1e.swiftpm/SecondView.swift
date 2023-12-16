import SwiftUI

struct SecondView: View {
    @State var is_present_shown:Bool = false
    
    var body: some View {
        VStack {
            Text( "Secondページです" )
            .padding()
            
            Image( systemName: "globe" )
            .padding()
            
            Button( "シートを開きます" ) {
                is_present_shown = true
            }
        }
        .sheet( isPresented: $is_present_shown ) {
            ModalView()
            .frame( maxWidth: .infinity, maxHeight: .infinity )
            .background( .purple )
        }
    }
}
