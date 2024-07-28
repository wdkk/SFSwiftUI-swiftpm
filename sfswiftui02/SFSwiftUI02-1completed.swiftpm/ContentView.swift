import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                FirstView()
                .navigationTitle( "Firstビュー" )
                .frame( maxWidth: .infinity, maxHeight: .infinity )
                .background( .mint )
                
                NavigationLink( "次のページへ" ) {
                    SecondView()
                    .navigationTitle( "Secondビュー" )
                    .frame( maxWidth: .infinity, maxHeight: .infinity )
                    .background( .yellow )
                }
            }
        }
    }
}
