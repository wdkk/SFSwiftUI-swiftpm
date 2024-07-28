import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
                .preferredColorScheme( .light )
            }
        }
    }
}
