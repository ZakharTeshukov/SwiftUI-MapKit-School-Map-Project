import SwiftUI
import MapKit

// Represents a UIViewRepresentable struct for displaying the Map with the annotations
struct MapView: UIViewRepresentable {
    
    // Creates and returns an MKMapView
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        
        // Configures the map type to satellite flyover (Survey shows that this is the most desired mapp type as most state that it is easiest to navigate and is most visualy apealing.)
        mapView.mapType = .satelliteFlyover
        
        // Defines the initial location of the map (location user first sees when loading the application page)
        let initialLocation = CLLocation(latitude: 10.72213356667264, longitude: 106.70885760090535)
        
        // Defines the region radius for the map (states how far fram the center of the map the user is able to see)
        let regionRadius: CLLocationDistance = 10
        
        // Defines the coordinate region for the map
        let coordinateRegion = MKCoordinateRegion(
            center: initialLocation.coordinate,
            latitudinalMeters: regionRadius * 35.0,
            longitudinalMeters: regionRadius * 35.0)
        
        // Sets the region of the map
        mapView.setRegion(coordinateRegion, animated: true)
        
        // Gate 3 Annotation (Puts a Map Pin onto the map to help the user find the desired location.)
        let gate3Annotation = MKPointAnnotation()
        gate3Annotation.coordinate = CLLocationCoordinate2D(latitude: 10.723169432253277, longitude: 106.70920684211967)
        // Names the MapKit Annotation
        gate3Annotation.title = "Gate 3"
        
        // Adds the Gate 3 annotation to the map
        mapView.addAnnotation(gate3Annotation)
        
        // Returns the mapView Map to make it displayable for the user to see.
        return mapView
    }
    
    // Updates the view
    func updateUIView(_ uiView: MKMapView, context: Context) {
        // No update needed for now
    }
}

// Represents a SwiftUI view for displaying location details
struct Location1View: View {
    let locationName: String
    
    // State variables
    @State private var searchText: String = "" //Defines the searchText attribute as a String
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 10.723301086958852, longitude: 106.70904158906178), span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001))
    @State private var annotations = [CustomAnnotation]()
    
    var body: some View {
        VStack(spacing: 16) { // Added spacing between elements
            
            // Creates a visual view of the map to make it viewable within the application.
            MapView()
                .edgesIgnoringSafeArea(.all)
                .frame(height: UIScreen.main.bounds.height * 4 / 8)
            
            ScrollView {
                // Description section with header and text
                VStack(alignment: .leading) { // Align description elements to the left
                    Text("Gate 3:") // Provides the title "Description" for the description section to improve visual apeal of the application.
                        .font(.title)
                        .padding()
                    // Provides a description of this location with permanent notes with factual information as to improve user satisfaction rates and make sure that users understand what the location is like.
                    Text("Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum.")
                        // sets the text font size to 12
                        .font(.system(size: 12))
                        // Creates padding / spacing between the elements of the application
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

// Preview provider for Location1View
// Shold be no issues in the future. If there are any, consult the Apple Developer Documentation.

// Potential Error: If the struct is renamed at a higher level of the applucation this struct might break so it will have to be renamed to make the application functional once again.
struct Location1View_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Location1View(locationName: "")
        }
    }
}

// CustomAnnotation class conforming to Identifiable
class CustomAnnotation: NSObject, MKAnnotation, Identifiable {
    let id = UUID() // Unique identifier for the MapKit Gate 3 Annotation.
    var coordinate: CLLocationCoordinate2D // Coordinate of the annotation
    var title: String? // Title of the annotation
    
    // Initializes the CustomAnnotation with coordinate and title
    init(coordinate: CLLocationCoordinate2D, title: String? = nil) {
        self.coordinate = coordinate
        self.title = title
    }
}

