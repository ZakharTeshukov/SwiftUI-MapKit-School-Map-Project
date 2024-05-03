import Foundation
import SwiftUI


struct LocationListView: View {
    var body: some View {
        List {
            Section(header: Text("Gates")) {
                NavigationLink(destination: Location1View(locationName: "Location 1")) {
                    Text("Gate 1")
                }

                NavigationLink(destination: Location1View(locationName: "Location 2")) {
                    Text("Gate 2")
                }
                
                NavigationLink(destination: Location1View(locationName: "Location 3")) {
                    Text("Gate 3")
                }
            }
            
            Section(header: Text("Entrances")) {
                NavigationLink(destination: Location1View(locationName: "Location 4")) {
                    Text("Entrance 1")
                }
                NavigationLink(destination: Location1View(locationName: "Location 5")) {
                    Text("Entrance 2")
                }
                NavigationLink(destination: Location1View(locationName: "Location 6")) {
                    Text("Entrance 3")
                }
            }
            
            Section(header: Text("Buildings")) {
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("Building A")
                }
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("Building B")
                }
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("Building C")
                }
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("HS SDC Building")
                }
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("MS SDC Building")
                }
            }
            
            Section(header: Text("Sports Facilities")) {
                NavigationLink(destination: Location1View(locationName: "Location 7")) {
                    Text("HS Field")
                }
                NavigationLink(destination: Location1View(locationName: "Location 8")) {
                    Text("MS Field")
                }
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("School Shop")
                }
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("Swimming Pool")
                }
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("MS Playground")
                }
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("Monkey City")
                }
            }
            
            Section(header: Text("Carfeterias")) {
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("MS Cafeteria")
                }
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("ES Cafeteria")
                }
                NavigationLink(destination: Location1View(locationName: "Location 9")) {
                    Text("HS Cafeteria")
                }
            }
            Section(header: Text("Other")) {
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("The Dark Garden Alley")
                }
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("The Sunken City of Atlantis")
                }
                NavigationLink(destination: Location1View(locationName: "Location 10")) {
                    Text("Volondemort's Hideout")
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
