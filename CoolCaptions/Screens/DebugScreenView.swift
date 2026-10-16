import SwiftUI

struct DebugScreenView: View {
    @Bindable var model: DebugScreen

    // MARK: -

    var body: some View {
        Form {
            Picker("Connection", selection: $model.connectionStatus) {
                Text(Connection.Status.healthy.rawValue.capitalized)
                    .tag(Connection.Status.healthy)

                Text(Connection.Status.degraded.rawValue.capitalized)
                    .tag(Connection.Status.degraded)

                Text(Connection.Status.disconnected.rawValue.capitalized)
                    .tag(Connection.Status.disconnected)
            }
        }
        .navigationTitle("Debug")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear { model.viewAppeared() }
        .onDisappear { model.viewDisappeared() }
    }
}
