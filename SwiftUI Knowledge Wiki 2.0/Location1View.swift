import SwiftUI
import MapKit

struct Location1View: View {
  let locationName: String
  @State private var searchText: String = ""
  @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 10.723301086958852, longitude: 106.70904158906178), span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001))
  @State private var annotations = [CustomAnnotation]()

  var body: some View {
      VStack(spacing: 16) { // Added spacing between elements
          
          // Map ignoring safe areas
          Map(coordinateRegion: $region, annotationItems: annotations) { annotation in
              MapPin(coordinate: annotation.coordinate, tint: .blue)
          }
          .edgesIgnoringSafeArea(.all)
          .frame(height: UIScreen.main.bounds.height * 4 / 8)
          
          ScrollView {
              // Description section with header and text
              VStack(alignment: .leading) { // Align description elements to the left
                  Text("Description")
                      .font(.title)
                      .padding()
                  Text("Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum.")
                      .font(.system(size: 12))
                      .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
              }
              
              // Text field
              TextField("Notes about this place:", text: $searchText)
                  .textFieldStyle(RoundedBorderTextFieldStyle())
                  .frame(width: 350, height: 20)
                  .padding(6)
          }
      }
  }
}

struct Location1View_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      Location1View(locationName: "")
    }
  }
}

// CustomAnnotation class conforming to Identifiable
class CustomAnnotation: NSObject, MKAnnotation, Identifiable {
  let id = UUID()
  var coordinate: CLLocationCoordinate2D
  var title: String?

  init(coordinate: CLLocationCoordinate2D, title: String? = nil) {
    self.coordinate = coordinate
    self.title = title
  }
}
