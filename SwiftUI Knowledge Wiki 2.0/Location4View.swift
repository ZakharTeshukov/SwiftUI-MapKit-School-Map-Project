import SwiftUI

struct Location4View: View {
    let locationName: String

    var body: some View {
        Text("Custom code for \(locationName)")
            .font(.title)
            .navigationBarTitle(locationName)
    }
}

struct Location4View_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Location4View(locationName: "Location 4")
        }
    }
}
