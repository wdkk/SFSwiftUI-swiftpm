import SwiftUI

struct ContentView: View {
    @State var photos:[PhotoData] = PhotoData.parse( json:Resource.load( name:"photos", ext:"json" )
    )
    
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

