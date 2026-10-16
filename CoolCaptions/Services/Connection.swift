import Foundation

@Observable class Connection {
    enum Status: String {
        case healthy
        case degraded
        case disconnected
    }

    // MARK: -

    let analytics: Analytics

    init(analytics: Analytics) {
        self.analytics = analytics
    }

    // MARK: -

    var status: Status = .healthy {
        didSet { statusChanged() }
    }

    // MARK: -

    func statusChanged() {
        switch status {
            case .healthy: analytics.track(.connectionStatusBecameHealthy)
            case .degraded: analytics.track(.connectionStatusBecameDegraded)
            case .disconnected: analytics.track(.connectionStatusBecameDisconnected)
        }
    }
}
