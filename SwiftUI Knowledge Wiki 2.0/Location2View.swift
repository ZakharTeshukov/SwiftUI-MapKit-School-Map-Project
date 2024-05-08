import SwiftUI
import MapKit

// Represents a UIViewRepresentable struct for displaying the Map with the annotations
struct LocationMapView: UIViewRepresentable {
    
    // Creates and returns an MKMapView
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        
        // Configures the map type to satellite flyover
        mapView.mapType = .satelliteFlyover
        
        // Defines the initial location of the map
        let initialLocation = CLLocation(latitude: 10.7236842480441, longitude: 106.70869914054259)
        
        // Defines the region radius for the map
        let regionRadius: CLLocationDistance = 10
        
        // Defines the coordinate region for the map
        let coordinateRegion = MKCoordinateRegion(
            center: initialLocation.coordinate,
            latitudinalMeters: regionRadius * 35.0,
            longitudinalMeters: regionRadius * 35.0)
        
        // Sets the region of the map
        mapView.setRegion(coordinateRegion, animated: true)
        
        // Gate 2 Annotation
        let gate2Annotation = MKPointAnnotation()
        gate2Annotation.coordinate = CLLocationCoordinate2D(latitude: 10.7236842480441, longitude: 106.70869914054259)
        gate2Annotation.title = "Gate 2"
        
        // Adds the Gate 2 annotation to the map
        mapView.addAnnotation(gate2Annotation)
        
        // Returns the mapView Map
        return mapView
    }
    
    // Updates the view
    func updateUIView(_ uiView: MKMapView, context: Context) {
        // No update needed for now
    }
}

// Represents a SwiftUI view for displaying location details
struct Location2View: View {
    let locationName: String
    
    // State variables
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(spacing: 16) {
            
            // LocationMapView
            LocationMapView()
                .edgesIgnoringSafeArea(.all)
                .frame(height: UIScreen.main.bounds.height * 4 / 8)
            
            ScrollView {
                // Description section
                VStack(alignment: .leading) {
                    Text("Gate 2:")
                        .font(.title)
                        .padding()
                    Text("Description of Gate 2.")
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

// Preview provider for Location2View
struct Location2View_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Location2View(locationName: "")
        }
    }
}

// CustomAnnotation class conforming to Identifiable
class CustomAnnotation2: NSObject, MKAnnotation, Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String? = nil) {
        self.coordinate = coordinate
        self.title = title
    }
}
