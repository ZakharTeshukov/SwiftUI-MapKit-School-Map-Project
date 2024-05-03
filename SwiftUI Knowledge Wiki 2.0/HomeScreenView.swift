import Foundation
import SwiftUI


struct HomeScreenView: View {
    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .center) {
                VStack(alignment: .center, spacing: 0) {
                    TabView {
                        Group {
                            NavigationStack {
                                menuBarView()
                            }
                            .tabItem {
                                Label("Home", systemImage: "homekit")
                            }
                            
                            NavigationStack {
                                menuBarView()
                                    .navigationTitle("Locations")
                            }
                            .tabItem {
                                Label("Locations", systemImage: "list.clipboard")
                            }
                            
                            NavigationStack {
                                menuBarView()
                                    .navigationTitle("Locations")
                            }
                            .tabItem {
                                Label("Menu", systemImage: "chart.bar.doc.horizontal")
                            }

                            NavigationStack {
                                menuBarView()
                                    .navigationTitle("Locations")
                            }
                            .tabItem {
                                Label("Settings", systemImage: "gear")
                            }
                            
                        }
                    } //add properties to group bellow
                    .symbolRenderingMode(.multicolor)
                    
                }
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}


