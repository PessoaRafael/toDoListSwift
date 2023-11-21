
import SwiftUI

struct LoadingView: View {
    private let isLoading: Bool

    init(isLoading: Bool) {
        self.isLoading = isLoading
    }

    var body: some View {
        Group {
            if isLoading {
                Spacer()
                    .background(Color.primary)
                    .opacity(0.3)
                    .edgesIgnoringSafeArea(.all)

                Text("Loading...")
                    .fontWeight(.bold)
                    .foregroundColor(Color.primary)
            }
        }
    }
}

#if DEBUG
struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(isLoading: true)
    }
}
#endif
