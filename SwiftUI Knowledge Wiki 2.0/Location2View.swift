import SwiftUI

struct Location2View: View {
    let locationName: String

    var body: some View {
        Text("Custom code for \(locationName)")
            .font(.title)
            .navigationBarTitle(locationName)
    }
}
