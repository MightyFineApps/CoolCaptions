import Foundation

@Observable class Captioner {
    let analytics: Analytics
    let connection: Connection

    init(analytics: Analytics, connection: Connection) {
        self.analytics = analytics
        self.connection = connection
    }

    // MARK: -

    var captions: [Caption] = []
    let conversation: Conversation = .mock

    var task: Task<Void, Never>?
    var isRunning: Bool { task != nil }

    // MARK: -

    func start() {
        guard task == nil else { return }
        analytics.track(.captioningStarted)
        task = Task { try? await run() }
    }

    func stop() {
        guard let task else { return }
        analytics.track(.captioningStopped)
        task.cancel()
        self.task = nil
    }

    // MARK: -

    /// Play the canned conversation as if real audio were being captioned,
    /// giving somewhat-realistic behavior depending on the connection status.
    ///
    private func run() async throws {
        for index in 0... {
            try Task.checkCancellation()
            try await Task.sleep(for: .seconds(.random(in: 1...6)))

            let line = conversation.line(at: index)
            let caption = Caption(id: UUID(), date: Date(), body: line)

            switch connection.status {
                case .healthy:
                    captions.append(caption)
                    analytics.track(.captionWasReceived)

                case .degraded:
                    try await Task.sleep(for: .seconds(5))
                    captions.append(caption)
                    analytics.track(.captionWasReceived)

                case .disconnected:
                    analytics.track(.captionWasMissed)
            }
        }
    }
}
