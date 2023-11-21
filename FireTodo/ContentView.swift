

import Combine
import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var store: AppStore

    var body: some View {
        Group {
            if store.state.authState.loadingState == .initial {
                Spacer()
            } else {
                if let user = self.store.state.authState.user {
                    TasksView()
                        .environmentObject(UserViewModel(user: user))
                } else {
                    SignUpView()
                }
            }
        }
        .onAppear { self.store.dispatch(AuthAction.subscribe()) }
        .onDisappear { self.store.dispatch(AuthAction.unsubscribe()) }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AppMain().store)
    }
}
#endif
