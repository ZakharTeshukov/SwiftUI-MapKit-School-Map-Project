import SwiftUI
import Foundation

struct menuBarView: View {
    var body: some View {
        
        ZStack {
            VStack {
                
                Text("Menu")
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    
                
                List{
                    Section(header: Text("System Menu")) {
                        NavigationLink(destination: Location1View(locationName: "Location 1")) {
                            Text("Homepage")
                        }

                        NavigationLink(destination: Location1View(locationName: "Location 2")) {
                            Text("Location List")
                        }
                        
                        NavigationLink(destination: Location1View(locationName: "Location 3")) {
                            Text("Settings")
                        }
                    }
                }
            }
        }
    }
}
        
//The section that creates a visual representation of the code. If something is not portrayed make sure that struct is in the ContentView.
struct menuBarView_Previews: PreviewProvider {
    static var previews: some View {
        menuBarView()
    }
}
