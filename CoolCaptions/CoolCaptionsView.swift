import SwiftUI

struct CoolCaptionsView: View {
    @Bindable var model: CoolCaptions
    @Environment(\.scenePhase) var scenePhase

    // MARK: -

    var body: some View {
        NavigationStack {
            CaptioningScreenView(model: model.captioningScreen)
                .toolbar { debugButton }
        }
        .onChange(of: scenePhase) { model.scenePhaseChanged(to: $1) }
        .sheet(isPresented: $model.isDebugScreenVisible) { debugScreen }
    }

    var debugButton: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button("Debug", systemImage: "ladybug") {
                model.debugButtonWasPressed()
            }
        }
    }

    var debugScreen: some View {
        NavigationStack { DebugScreenView(model: model.debugScreen) }
            .presentationDetents([.medium])
    }
}
