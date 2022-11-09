import SwiftUI

struct SceneryDetail : View {
    var data:PhotoData

    var body: some View {
        VStack( alignment:.leading ) {
            Image( data.imageName )
            .resizable()
            .scaledToFit()
            .padding( .bottom, 20 )
            
            Text( data.title )
            .font( .title2 )
            .padding( .bottom, 20 )
            
            Text( data.message )
            .padding( .bottom, 20 )
            
            Spacer()
        }
        .padding()
        .navigationTitle( data.title )
    }
}
