import SwiftUI

struct ContentView: View {
    var photos:[PhotoData] = [
        PhotoData( type:"景色", imageName:"CC0_01", title:"景色1", message:"森と山です" ),
        PhotoData( type:"景色", imageName:"CC0_04", title:"景色2", message:"きれいな湖です" ),
        PhotoData( type:"景色", imageName:"CC0_06", title:"景色3", message:"フィレンツェです" ),
        PhotoData( type:"景色", imageName:"CC0_07", title:"景色4", message:"ひまわりです" ),
        PhotoData( type:"景色", imageName:"CC0_10", title:"景色5", message:"海に日が沈みます" )
    ]
    
    var body: some View {
        List {
            Section( "景色写真" ) {
                ForEach( photos ) { photo in
                    NavigationLink( destination:{
                        SceneryDetail( data:photo )
                    },
                    label: {
                        SceneryRow( data:photo )
                    })
                }
            }
        }
        .listStyle( .grouped )
        .navigationTitle( "写真集" )
    }
}
