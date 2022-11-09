import Foundation

class Resource {
    static func load( name:String, ext:String ) -> Data {
        do {
            guard let url = Bundle.main.url( forResource:name, withExtension:ext )
            else {
                print( "ファイルがありません:\(name).\(ext)" )
                return Data()
            }
            let data = try Data( contentsOf:url )
            return data
        }
        catch {
            print( "ファイルが読み込めませんでした." )
            return Data()
        }
    }
}
