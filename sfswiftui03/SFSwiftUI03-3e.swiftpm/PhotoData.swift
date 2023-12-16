import Foundation

struct PhotoData : Identifiable, Codable, Equatable {
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
    
    static func load( path:String ) -> [PhotoData] {
        if FileManager.default.fileExists( atPath:path ) == false {
            print( "ファイルがみつかりませんでした, Resourceからファイルを読み込みます" )
            let resource_json = Resource.load( name:"photos", ext:"json" )
            return PhotoData.parse( json:resource_json )
        }
    
        do {
            let url = URL( fileURLWithPath: path )
            let user_json = try Data( contentsOf:url )
            return PhotoData.parse( json:user_json )
        }
        catch {
            print( "ファイルの読み込みに失敗しました" )
            print( error.localizedDescription )
            return []
        }
    }
    
    static func save( path:String, data:[PhotoData] ) {
        do {
            let user_json = try JSONEncoder().encode( data )
            let url = URL( fileURLWithPath:path )
            try user_json.write( to:url, options:[.atomic] )
        }
        catch {
            print( "ファイルの保存に失敗しました" )
            print( error.localizedDescription )
        }
    }
    
    static func clear( path:String ) {
        do {
            try FileManager.default.removeItem( atPath:path )
        }
        catch {
            print( "ファイルの削除に失敗しました" )
            print( error.localizedDescription )
        }
    }
}
