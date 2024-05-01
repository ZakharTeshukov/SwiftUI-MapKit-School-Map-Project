import SwiftUI

struct Location3View: View {
    let locationName: String

    var body: some View {
        Text("Custom code for \(locationName)")
            .font(.title)
            .navigationBarTitle(locationName)
    }
}

struct Location3View_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Location3View(locationName: "Location 3")
        }
    }
}
