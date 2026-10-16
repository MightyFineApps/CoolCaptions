import SwiftUI

@main struct CoolCaptionsApp: App {
    let model = CoolCaptions()

    var body: some Scene {
        WindowGroup { CoolCaptionsView(model: model) }
    }
}
