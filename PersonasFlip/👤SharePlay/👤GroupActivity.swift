import GroupActivities
import SwiftUI

struct 👤GroupActivity: GroupActivity {
    var metadata: GroupActivityMetadata {
        var value = GroupActivityMetadata()
        value.title = String(localized: "Play game")
        value.type = .generic
        value.previewImage = UIImage(resource: .whole).cgImage
        return value
    }
}
