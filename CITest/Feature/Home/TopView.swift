import SwiftUI

struct HomeTopView: View {

    @State var path: [ViewType] = []
    @State var title = "SwiftUI"
    @AppStorage("myText") var editorText = "SampleText"

    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                TextEditor(text: $editorText)
                    .frame(width: 300, height: 100)
                    .font(.largeTitle)
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

                Button(action: {
                    path.append(.testActor)
                }, label: {
                    Text(ViewType.testActor.rawValue)
                })
                Button(action: {
                    path.append(.obsTutorial)
                }, label: {
                    Text(ViewType.obsTutorial.rawValue)
                })
            }
            .navigationTitle(title)
            .navigationDestination(for: ViewType.self) { next in
                switch next {
                case .stackFrame:
                    StackFrameView()
                case .obsStateEnvironment:
                    ObsStateEnvironmentView()
                case .structuredConcurrency:
                    StructuredConcurrencyView()
                case .testActor:
                    TestActorView()
                case .obsTutorial:
                    ObservableTutorialView()
                }
            }
        }
        .onAppear(perform: {
            print("onAppear triggered")
        })
        .onDisappear(perform: {
            print("onDisappeared triggered")
        })
        .task(priority: .background) {
            print("task Start")
            title = await changeTitle()
        }
    }

    func changeTitle() async -> String {
        sleep(5)
        return "Async task complete"
    }
}

enum ViewType: String, Hashable {
    case stackFrame
    case obsStateEnvironment
    case structuredConcurrency
    case testActor
    case obsTutorial
}

#Preview {
    HomeTopView()
}
