import SwiftUI

struct SceneryRow : View {
    var imageName: String
    var title: String
    
    var body: some View {
        HStack {
            Image( imageName )
            .resizable()
            .scaledToFit()
            .frame( maxHeight:80 )
            
            Text( title )
        }
    }
}
