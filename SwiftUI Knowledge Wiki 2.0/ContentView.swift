import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .topLeading) {
                MapView()
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: UIScreen.main.bounds.height)
                
                VStack(alignment: .center, spacing: 0) {
                    TabView {
                        Group {
                            NavigationStack {
                                menuBarView()
                                    .navigationTitle("Locations")
                                    .ignoresSafeArea(.all)
                            }
                            .tabItem {
                                Label("Locations", systemImage: "map")
                            }
                            NavigationStack {
                                
                                menuBarView()
                                    .navigationTitle("Locations")
                            }
                            .tabItem {
                                Label("Locations", systemImage: "map")
                            }
                            NavigationStack {
                                
                                menuBarView()
                                    .navigationTitle("Locations")
                            }
                            .tabItem {
                                Label("Locations", systemImage: "map")
                            }
                            NavigationStack {
                                
                                menuBarView()
                                    .navigationTitle("Locations")
                            }
                            .tabItem {
                                Label("Locations", systemImage: "map")
                            }
                        }
                    } //add properties to group bellow
                }
            }
        }
    }
}

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.mapType = .satelliteFlyover
        let initialLocation = CLLocation(latitude: 10.72213356667264, longitude: 106.70885760090535)
        let regionRadius: CLLocationDistance = 10
        let coordinateRegion = MKCoordinateRegion(
            center: initialLocation.coordinate,
            latitudinalMeters: regionRadius * 35.0,
            longitudinalMeters: regionRadius * 35.0)
        mapView.setRegion(coordinateRegion, animated: true)
        
        //Gate 3 Annotation
        let gate3Annotation = MKPointAnnotation()
        gate3Annotation.coordinate = CLLocationCoordinate2D(latitude: 10.723169432253277, longitude: 106.70920684211967)
        gate3Annotation.title = "Gate 3"
        mapView.addAnnotation(gate3Annotation)
        
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
