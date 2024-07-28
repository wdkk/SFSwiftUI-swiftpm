import SwiftUI

struct ContentView: View {
    var photos:[PhotoData] = [
        PhotoData( type:"景色", imageName:"CC0_01", title:"景色1", message:"森と山です" ),
        PhotoData( type:"景色", imageName:"CC0_04", title:"景色2", message:"きれいな湖です" ),
        PhotoData( type:"景色", imageName:"CC0_06", title:"景色3", message:"フィレンツェです" ),
        PhotoData( type:"景色", imageName:"CC0_07", title:"景色4", message:"ひまわりです" ),
        PhotoData( type:"景色", imageName:"CC0_10", title:"景色5", message:"海に日が沈みます" ),
        PhotoData( type:"食べ物", imageName:"CC0_05", title: "ハンバーガーセット", message: "おいしいです" ),
        PhotoData( type:"食べ物", imageName:"CC0_08", title: "カフェラテ", message: "おちつきます" ),
        PhotoData( type:"食べ物", imageName:"CC0_09", title: "ケーキ", message: "あまいです" ),
        PhotoData( type:"食べ物", imageName:"CC0_12", title: "お酒", message: "酔います" )
    ]
    
    var body: some View {
        List {
            Section( "景色写真" ) {
                ForEach( photos.filter { $0.type == "景色" } ) { photo in
                    NavigationLink( destination:{
                        SceneryDetail( data:photo )
                    },
                    label: {
                        SceneryRow( data:photo )
                    })
                }
            }
            
            Section( "食べ物写真" ) {
                ForEach( photos.filter { $0.type == "食べ物" } ) { photo in
                    NavigationLink( destination:{
                        FoodAndDrinkDetail( data:photo )
                    },
                    label: {
                        FoodAndDrinkRow( data:photo )
                    })
                }
            }
        }
        .listStyle( .grouped )
        .navigationTitle( "写真集" )
    }
}
