import SwiftUI

struct CaptioningScreenView: View {
    let model: CaptioningScreen

    // MARK: -

    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(model.captions) { caption in
                    Divider()
                    Text(caption.body).padding()
                }
            }
        }
        .defaultScrollAnchor(.bottom)
        .defaultScrollAnchor(.bottom, for: .sizeChanges)
        .navigationTitle("Cool Captions")
        .navigationBarTitleDisplayMode(.inline)
        .safeAreaInset(edge: .bottom) {
            Button(model.toggleButtonTitle) {
                model.toggleButtonWasPressed()
            }.buttonStyle(.glass)
        }
        .onAppear { model.viewAppeared() }
        .onDisappear { model.viewDisappeared() }
    }
}
