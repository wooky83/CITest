import SwiftUI

struct HomeTopView: View {
    var body: some View {
        NavigationStack {
            Text("Root")
                .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    HomeTopView()
}
