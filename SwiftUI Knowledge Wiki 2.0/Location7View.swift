import SwiftUI
import MapKit

// Represents a UIViewRepresentable struct for displaying the Map with the annotations
struct MapView7: UIViewRepresentable {
    
    // Creates and returns an MKMapView
    func makeUIView(context: Context) -> MKMapView {
        let mapView7 = MKMapView()
         
        // Configures the map type to satellite flyover
        mapView7.mapType = .satelliteFlyover
         
        // Defines the initial location of the map
        let initialLocation = CLLocation(latitude: 10.72213356667264, longitude: 106.70885760090535)
         
        // Defines the region radius for the map
        let regionRadius: CLLocationDistance = 10
         
        // Defines the coordinate region for the map
        let coordinateRegion = MKCoordinateRegion(
            center: initialLocation.coordinate,
            latitudinalMeters: regionRadius * 35.0,
            longitudinalMeters: regionRadius * 35.0)
         
        // Sets the region of the map
        mapView7.setRegion(coordinateRegion, animated: true)
         
        // Gate 7 Annotation
        let gate7Annotation = MKPointAnnotation()
        gate7Annotation.coordinate = CLLocationCoordinate2D(latitude: 10.723169432253277, longitude: 106.70920684211967)
        // Names the MapKit Annotation
        gate7Annotation.title = "Gate 7"
         
        // Adds the Gate 7 annotation to the map
        mapView7.addAnnotation(gate7Annotation)
         
        // Returns the mapView Map to make it displayable for the user to see.
        return mapView7
    }
    
    // Updates the view
    func updateUIView(_ uiView: MKMapView, context: Context) {
        // No update needed for now
    }
}

// Represents a SwiftUI view for displaying location details
struct Location7View: View {
    let locationName: String
    
    // State variables
    @State private var searchText: String = ""
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 10.723301086958852, longitude: 106.70904158906178), span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001))
    @State private var annotations = [CustomAnnotation7]()
    
    var body: some View {
        VStack(spacing: 16) {
            
            // Creates a visual view of the map
            MapView7()
                .edgesIgnoringSafeArea(.all)
                .frame(height: UIScreen.main.bounds.height * 4 / 8)
            
            ScrollView {
                // Description section with header and text
                VStack(alignment: .leading) {
                    Text("Gate 7:")
                        .font(.title)
                        .padding()
                    Text("Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum.")
                        .font(.system(size: 12))
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 0))
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

// Preview provider for Location7View
struct Location7View_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Location7View(locationName: "")
        }
    }
}

// CustomAnnotation class conforming to Identifiable
class CustomAnnotation7: NSObject, MKAnnotation, Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    // Initializes the CustomAnnotation with coordinate and title
    init(coordinate: CLLocationCoordinate2D, title: String? = nil) {
        self.coordinate = coordinate
        self.title = title
    }
}
