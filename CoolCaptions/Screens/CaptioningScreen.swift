import Foundation

@Observable class CaptioningScreen {
    let analytics: Analytics
    let captioner: Captioner

    init(analytics: Analytics, captioner: Captioner) {
        self.analytics = analytics
        self.captioner = captioner
    }

    // MARK: -

    var captions: [Caption] {
        captioner.captions
    }

    var toggleButtonTitle: String {
        captioner.isRunning ? "Stop" : "Start"
    }

    // MARK: -

    func viewAppeared() {
        analytics.track(.captioningScreenAppeared)
    }

    func viewDisappeared() {
        analytics.track(.captioningScreenDisappeared)
    }

    func toggleButtonWasPressed() {
        analytics.track(.captioningToggleButtonWasPressed)
        captioner.isRunning ? captioner.stop() : captioner.start()
    }
}
