import SwiftUI

struct WidthFillPlaceHolderView: View {
    var body: some View {
        Color.clear.frame(maxWidth: .infinity, maxHeight: 0)
    }
}