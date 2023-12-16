import SwiftUI

struct ContentView: View {
    @State var photos:[PhotoData] = [
        PhotoData( type:"景色", imageName:"CC0_01", title:"景色1", message:"森と山です" ),
        PhotoData( type:"景色", imageName:"CC0_04", title:"景色2", message:"きれいな湖です" ),
        PhotoData( type:"景色", imageName:"CC0_06", title:"景色3", message:"フィレンツェです" ),
        PhotoData( type:"景色", imageName:"CC0_07", title:"景色4", message:"ひまわりです" ),
        PhotoData( type:"景色", imageName:"CC0_10", title:"景色5", message:"海に日が沈みます" )
    ]
    
    var body: some View {
        List {
            Section {
                ForEach( $photos ) { bind_photo in
                    NavigationLink( destination:{
                        SceneryDetail( data:bind_photo )
                    },
                    label: {
                        SceneryRow( data:bind_photo.wrappedValue )
                    })
                }
                .onDelete { index_set in
                    photos.remove( atOffsets:index_set )
                }
            }
            header: {
                HStack {
                    Text( "景色写真" )
                    
                    Spacer()
                    
                    Button {
                        let new_data = PhotoData( type:"景色", imageName:"CC0_06", title:"新規", message:"追加したデータです" )
                        photos.append( new_data )
                    }
                    label: {
                        Image( systemName:"plus" )
                        .font( .title2 )
                        .foregroundColor( .accentColor )
                    }
                }
            }
        }
        .listStyle( .grouped )
        .navigationTitle( "写真集" )
    
    }
}
