import Foundation

struct PhotoData : Identifiable, Codable {
    var id:String = UUID().uuidString
    var type:String
    var imageName:String
    var title:String
    var message:String
    
    static func parse( json:Data ) -> [PhotoData] {
        do {
            let photos = try JSONDecoder().decode( [PhotoData].self, from:json )
            return photos
        }
        catch {
            print( "JSONをPhotoData配列に変換できませんでした." )
            print( error.localizedDescription )
            return []
        }
    }
}

