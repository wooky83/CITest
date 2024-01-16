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
                Button(action: {
                    path.append(.structuredConcurrency)
                }, label: {
                    Text(ViewType.structuredConcurrency.rawValue)
                })
            }
            .navigationTitle("SwiftUI")
            .navigationDestination(for: ViewType.self) { next in
                switch next {
                case .stackFrame:
                    StackFrameView()
                case .obsStateEnvironment:
                    ObsStateEnvironmentView()
                case .structuredConcurrency:
                    STructuredConcurrencyView()
                }
            }
        }
    }
}

enum ViewType: String, Hashable {
    case stackFrame
    case obsStateEnvironment
    case structuredConcurrency
}

#Preview {
    HomeTopView()
}
