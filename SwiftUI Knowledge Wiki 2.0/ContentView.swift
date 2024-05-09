// Apache 2.0 Licence
// This program features an interactive map of Saigon South International School with a navigation menu consisting of four main sections which are the homescreen, the locations list, the menu and the settings page.
// All these sections of the code are integral to the program as the functionality was implemented due to high volumes of user requests throughout multiple surveys.
// Thank you to SF Symbols for providing royalty & atribbution free icons for the purpose of creating this application.


import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        
        // Main navigation stack (Navigation menu on the bottom)
        NavigationStack {
            // Stack to hold map and tab views
            ZStack(alignment: .topLeading) {
                // MapView as background
                MapView()
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: UIScreen.main.bounds.height)
                
                // VStack that encoumpasses all tab views / items / page links
                VStack(alignment: .center, spacing: 0) {
                    // TabView to display multiple tabs
                    TabView {
                        // Group to organize related tab views
                        
                        // If you want to change where the pages link to and their names, just modify the green section with green brackets and the .navigationTitle. For instance, you could change "hHomeScreenView" to Location1View and change the name form "Home" to "Location 1". Doing so should result in no bugsunless you inacurrately reference the page by putting it in a different folder or mispelling the page name.
                        Group {
                            // Home tab
                            NavigationStack {
                                HomeScreenView() //HomeSceenView is a page defined in the system files of the project.
                                    .navigationTitle("Locations")
                                    .ignoresSafeArea(.all)
                            }
                            // This tabItem adds the Homepage with an Apple Homekit icon onto the navigation bar and sets it as the defult page.
                            .tabItem {
                                Label("Home", systemImage: "homekit")
                            }
                            
                            // This tabItem adds the LocationListView with an Apple Maps icon onto the navigation bar and sets it as the seccond page of the navigation bar.
                            NavigationStack {
                                LocationListView()
                                    .navigationTitle("Locations")
                            }
                            .tabItem {
                                Label("Locations", systemImage: "map")
                            }
                            
                            // This tabItem adds the LocationListView with an Apple Maps icon onto the navigation bar and sets it as the seccond page of the navigation bar.
                            NavigationStack {
                                menuBarView()
                                    .navigationTitle("Locations")
                            }
                            // This tabItem adds the menuBarView page with an SF Symbols menu icon onto the navigation bar and sets it as the third page of the navigation bar.
                            .tabItem {
                                Label("Menu", systemImage: "chart.bar.doc.horizontal")
                            }
                            
                            // This tabItem adds the LocationListView with an Apple Maps icon onto the navigation bar and sets it as the seccond page of the navigation bar.
                            NavigationStack {
                                SettingsView()
                                    .navigationTitle("Settings")
                            }
                            // This tabItem adds the LocationListView with an Apple Maps icon onto the navigation bar and sets it as the seccond page of the navigation bar.
                            .tabItem {
                                Label("Settings", systemImage: "gear")
                            }
                        }
                    } // End of TabView
                } // End of VStack
            } // End of ZStack
        } // NavigationStack Ends
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
