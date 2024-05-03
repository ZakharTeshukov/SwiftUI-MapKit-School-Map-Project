import SwiftUI
import Foundation

struct menuBarView: View {
    var body: some View {
        
        ZStack {
            VStack {
                    Text("Text3")
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
