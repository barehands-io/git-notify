import SwiftUI

@main struct GitNotifyApp: App {
    var body: some Scene {
        MenuBarExtra("Git Notify", image: "MenuBarIcon") {
            ContentView()

            Divider()

            Button("Quit Git Notify") {
                NSApplication.shared.terminate(nil)
            }
        }
    }
}
