import SwiftUI

struct SettingView: View {

    @State private var text = ""

    var body: some View {
        TextEditor(text: $text)
            .padding()
            .onChange(of: text, perform: { value in
                print("onChange triggered")
            })
    }
}

#Preview {
    SettingView()
}
