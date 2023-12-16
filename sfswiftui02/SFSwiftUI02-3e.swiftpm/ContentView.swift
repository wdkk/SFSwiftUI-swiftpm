import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section( "景色画像" ) {
                SceneryRow( imageName:"CC0_01", title:"景色1" )
                SceneryRow( imageName:"CC0_04", title:"景色2" )
                SceneryRow( imageName:"CC0_06", title:"景色3" )
                SceneryRow( imageName:"CC0_07", title:"景色4" )
                SceneryRow( imageName:"CC0_10", title:"景色5" )
            }
            
            Section( "食べ物画像" ) {
                FoodAndDrinkRow( 
                    imageName:"CC0_05", title: "ハンバーガーセット", message: "おいしいです"
                )
                FoodAndDrinkRow( 
                    imageName:"CC0_08", title: "カフェラテ", message: "おちつきます"
                )
                FoodAndDrinkRow( 
                    imageName:"CC0_09", title: "ケーキ", message: "あまいです"
                )
                FoodAndDrinkRow( 
                    imageName:"CC0_12", title: "お酒", message: "酔います"
                )
            }
        }
        .listStyle( .grouped )
    }
}
