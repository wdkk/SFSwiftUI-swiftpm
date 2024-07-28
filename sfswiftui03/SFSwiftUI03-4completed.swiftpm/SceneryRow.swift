import SwiftUI

struct SceneryRow : View {
    var data:PhotoData
    
    var body: some View {
        HStack {
            Image( data.imageName )
            .resizable()
            .scaledToFit()
            .frame( maxHeight:80 )
            
            Text( data.title )
        }
    }
}
