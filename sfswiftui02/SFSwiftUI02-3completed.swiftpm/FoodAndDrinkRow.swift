import SwiftUI

struct FoodAndDrinkRow : View {
    var imageName: String
    var title: String
    var message: String
    
    var body: some View {
        VStack( alignment:.leading ) {
            Image( imageName )
            .resizable()
            .scaledToFit()
            .frame( maxHeight:200 )
            
            Text( title )
            .font( .system( size:20.0 ) )
            .padding( .bottom, 10 )
            
            Text( message )
            .font( .system( size:14.0 ) )
            .foregroundStyle( .secondary )
        }
        .padding( .vertical, 10.0 )
    }
}
