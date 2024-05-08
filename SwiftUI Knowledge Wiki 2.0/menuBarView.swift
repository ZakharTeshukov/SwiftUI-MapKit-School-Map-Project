import SwiftUI

struct menuBarView: View {
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Capsule()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing)) // Set the background gradient
                        .frame(width: 200, height: 55)

                    Text("Settings")
                        .cornerRadius(1.0)
                        .font(.system(size: 35))
                        .fontWeight(.bold)
                        .foregroundColor(.white) // Set text color to white for better visibility
                }
                List {
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

struct menuBarView_Previews: PreviewProvider {
    static var previews: some View {
        menuBarView()
    }
}
