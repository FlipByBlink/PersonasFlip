import SwiftUI
import RealityKit

struct ContentView: View {
    @EnvironmentObject var model: 🥽AppModel
    var body: some View {
        RealityView { content, attachments in
            content.add(attachments.entity(for: "guide")!)
            content.add(attachments.entity(for: "game")!)
        } attachments: {
            Attachment(id: "guide") { GuideView() }
            Attachment(id: "game") { GameView() }
        }
        .task { self.model.configureGroupSessions() }
        .task { 👤Registration.execute() }
        .volumeBaseplateVisibility(.hidden)
        .frame(width: Size.window,
               height: Size.window)
        .frame(depth: Size.window)
    }
}
