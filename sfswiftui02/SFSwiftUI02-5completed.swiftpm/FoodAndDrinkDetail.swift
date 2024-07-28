import SwiftUI

struct FoodAndDrinkDetail : View {
    var data:PhotoData

    var body: some View {
        VStack( alignment:.leading ) {
            ZStack( alignment: .bottomTrailing ) {
                Image( data.imageName )
                .resizable()
                .scaledToFit()

                VStack {
                    Text( data.title )
                    .font( .system(size: 24.0) )
                    .foregroundColor( .white )
                    .padding()
                }
            }
            
            VStack( alignment:.leading ) {
                Text( "食べ物の紹介" )
                .font( .title2 )
                .padding( .bottom )
                
                Text( data.message )
                .font( .system(size: 14.0 ) )
            }
            .padding()
                        
            Spacer()
        }
        .navigationTitle( data.title )
    }
}
