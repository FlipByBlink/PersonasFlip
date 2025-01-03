import SwiftUI

@main
struct PersonasFlipApp: App {
    @StateObject private var model = 🥽AppModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(self.model)
        }
        .windowStyle(.volumetric)
        .volumeWorldAlignment(.gravityAligned)
        .defaultSize(width: Size.window,
                     height: Size.window,
                     depth: Size.window)
    }
}
