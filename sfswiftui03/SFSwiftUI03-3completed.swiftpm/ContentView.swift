import SwiftUI

struct ContentView: View {
    let user_json_path = LocalPath.docFile( name:"user_photos", ext:"json" )
    @State var photos:[PhotoData] = []
    
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
        .onAppear {
            // データを消したい時だけ使う
            //PhotoData.clear( path:user_json_path )
            photos = PhotoData.load( path:user_json_path )
        }
        .onChange( of:photos ) { photos in
            PhotoData.save( path:user_json_path, data:photos )
        }
    }
}

