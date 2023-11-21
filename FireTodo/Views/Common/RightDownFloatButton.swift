
import SwiftUI

struct PresentationView<V>: View where V: View & Identifiable {
    private let id: V.ID
    private let bodyContent: V

    var body: some View {
        bodyContent
    }

    init?(_ view: V?) {
        guard let view = view else { return nil }
        self.bodyContent = view
        self.id = view.id
    }
}