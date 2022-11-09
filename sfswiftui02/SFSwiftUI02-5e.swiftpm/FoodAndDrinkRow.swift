import SwiftUI

struct FoodAndDrinkRow : View {
    var data:PhotoData
    
    var body: some View {
        VStack( alignment:.leading ) {
            Image( data.imageName )
            .resizable()
            .scaledToFit()
            .frame( maxHeight:200 )
            
            Text( data.title )
            .font( .system( size:20.0 ) )
            .padding( .bottom, 10 )
            
            Text( data.message )
            .font( .system( size:14.0 ) )
            .foregroundColor( .secondary )
        }
        .padding( .vertical, 10.0 )
    }
}
