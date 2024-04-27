import SwiftUI

struct Location1View: View {
    let locationName: String

    var body: some View {
        Text("Custom code for \(locationName)")
            .font(.title)
            .navigationBarTitle(locationName)
    }
}

struct Location1View_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Location1View(locationName: "Location 1")         .multilineTextAlignment(.center)
        }
    }
}

