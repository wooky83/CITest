import SwiftUI

struct SettingView: View {

//    @State private var text = ""
    @SceneStorage("myText") private var editorText = ""

    var body: some View {
        TextEditor(text: $editorText)
            .padding()
            .onChange(of: editorText, perform: { value in
                print("onChange triggered")
            })
    }
}

#Preview {
    SettingView()
}
