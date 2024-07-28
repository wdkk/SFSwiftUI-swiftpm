import Foundation

class APIAccessor {
    static func requestPhotos() async -> [PhotoData] {
        let api_photos = "https://archive.wdkk.co.jp/sf-swiftui/api/photos/"
        guard let url = URL( string:api_photos ) else { 
            print( "URLが正しくありません" )
            return []
        }
        
        let request = URLRequest( url:url )
        
        do {
            let result = try await URLSession.shared.data(for: request )
            guard let json = try? JSONDecoder().decode( [PhotoData].self, from:result.0 ) else {
                print( "JSONを正しく変換できませんでした" )
                return []
            }
            
            return json
        }
        catch {
            print( "データの取得に失敗しました" )
            return []
        }
    }
}
