import SwiftUI

struct ContentView: View {
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
            }
            header: {
                HStack {
                    Text( "景色写真" )
                    
                    Spacer()
                }
            }
        }
        .listStyle( .grouped )
        .navigationTitle( "写真集" )
        .onAppear {
            Task {
                photos = await APIAccessor.requestPhotos()
            }
        }
    }
}

