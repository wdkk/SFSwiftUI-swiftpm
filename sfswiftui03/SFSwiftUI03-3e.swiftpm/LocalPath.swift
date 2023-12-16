import Foundation

class LocalPath {
    static let docURLs = FileManager.default.urls( for:.documentDirectory, in:.userDomainMask )
    
    static let docFolderPath = docURLs.first!.path
    
    static func docFile( name:String, ext:String ) -> String { 
        return docFolderPath + "/" + name + "." + ext
    }
}
