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
                Button(action: {
                    path.append(.obsStateEnvironment)
                }, label: {
                    Text(ViewType.obsStateEnvironment.rawValue)
                })
            }
            .navigationTitle("SwiftUI")
            .navigationDestination(for: ViewType.self) { next in
                switch next {
                case .stackFrame:
                    StackFrameView()
                case .obsStateEnvironment:
                    ObsStateEnvironmentView()
                }
            }
        }
    }
}

enum ViewType: String, Hashable {
    case stackFrame
    case obsStateEnvironment
}

#Preview {
    HomeTopView()
}
