import SwiftUI

struct SceneryDetail : View {
    var data:PhotoData

    var body: some View {
        VStack {
            Image( data.imageName )
            .resizable()
            .scaledToFit()
            .padding( .bottom, 20 )
            
            Text( data.message )
            
            Spacer()
        }
        .padding()
        .navigationTitle( data.title )
    }
}
