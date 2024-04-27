import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                MapView()
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: UIScreen.main.bounds.height / 2)
                List {
                    ForEach(1..<2) { index in
                        NavigationLink(destination: DetailView(itemName: "Location \(index)")) {
                            Text("Location \(index)")
                        }
                    }
                }
            }
        }
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.mapType = .hybridFlyover
        let initialLocation = CLLocation(latitude: 37.7749, longitude: -122.4194)
        let regionRadius: CLLocationDistance = 10000
        let coordinateRegion = MKCoordinateRegion(
            center: initialLocation.coordinate,
            latitudinalMeters: regionRadius * 2.0,
            longitudinalMeters: regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
struct DetailView: View {
    var itemName: String
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

