import Foundation

struct PhotoData : Identifiable {
    var id = UUID()
    var type:String
    var imageName:String
    var title:String
    var message:String
}
