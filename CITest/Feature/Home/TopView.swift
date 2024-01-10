import SwiftUI

struct HomeTopView: View {

    @State var path: [ViewType] = []

    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button(action: {
                    path.append(.stackFrame)
                }, label: {
                    Text(ViewType.stackFrame.rawValue)
                })
            }
            .navigationTitle("SwiftUI")
            .navigationDestination(for: ViewType.self) { next in
                switch next {
                case .stackFrame:
                    StackFrameView()
                }
            }
        }
    }
}

enum ViewType: String, Hashable {
    case stackFrame
}

#Preview {
    HomeTopView()
}
