import SwiftUI

public struct MainView: View {

    public var body: some View {
        TabView {
            HomeTopView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            HomeTopView()
                .tabItem {
                    Label("Architecture", systemImage: "tent.2.fill")
                }
            HomeTopView()
                .tabItem {
                    Label("Concurrency", systemImage: "arrow.clockwise.icloud.fill")
                }
            HomeTopView()
                .tabItem {
                    Label("Setting", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

#Preview {
    MainView()
}
