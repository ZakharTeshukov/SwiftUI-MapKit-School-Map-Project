import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .topLeading) {
                MapView()
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: UIScreen.main.bounds.height)
                
                VStack(alignment: .center, spacing: 0) {
                    TabView {
                        Group {
                            NavigationStack {
                                HomeScreenView()
                                    .navigationTitle("Locations")
                                    .ignoresSafeArea(.all)
                            }
                            .tabItem {
                                Label("Home", systemImage: "homekit")
                                    
                            }
                            NavigationStack {
                                
                                LocationListView()
                                    .navigationTitle("Locations")
                            }
                            .tabItem {
                                Label("Locations", systemImage: "map")
                            }
                            NavigationStack {
                                
                                menuBarView()
                                    .navigationTitle("Locations")
                            }
                            .tabItem {
                                Label("Menu", systemImage: "chart.bar.doc.horizontal")
                            }
                            NavigationStack {
                                
                                SettingsView()
                                    .navigationTitle("Locations")
                            }
                            .tabItem {
                                Label("Settings", systemImage: "gear")
                            }
                        }
                    } //add properties to group bellow
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
