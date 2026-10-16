import Foundation

@Observable class DebugScreen {
    let analytics: Analytics
    let connection: Connection

    init(analytics: Analytics, connection: Connection) {
        self.analytics = analytics
        self.connection = connection
    }

    // MARK: -

    var connectionStatus: Connection.Status {
        get { connection.status }
        set { connection.status = newValue }
    }

    // MARK: -

    func viewAppeared() {
        analytics.track(.debugScreenAppeared)
    }

    func viewDisappeared() {
        analytics.track(.debugScreenDisappeared)
    }
}
