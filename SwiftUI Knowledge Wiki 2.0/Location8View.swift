import SwiftUI

struct Location8View: View {
    let locationName: String

    var body: some View {
        Text("Custom code for \(locationName)")
            .font(.title)
            .navigationBarTitle(locationName)
    }
}

struct Location8View_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Location2View(locationName: "Location 8")
        }
    }
}
