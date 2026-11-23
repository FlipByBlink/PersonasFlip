import SwiftUI
import GroupActivities
import Combine

@MainActor
class 🥽AppModel: ObservableObject {
    @Published var activityState: ActivityState = .init()
    
    @Published var side: Side = .white
    
    @Published var groupSession: GroupSession<PersonasFlipGroupActivity>?
    var messenger: GroupSessionMessenger?
    var subscriptions: Set<AnyCancellable> = []
    var tasks: Set<Task<Void, Never>> = []
    
    let soundFeedback = SoundFeedback()
}
