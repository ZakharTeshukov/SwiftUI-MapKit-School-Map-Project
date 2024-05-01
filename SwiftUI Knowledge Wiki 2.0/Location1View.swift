import SwiftUI
import MapKit
import Foundation

struct Location1View: View {
    let locationName: String
    @State private var searchText: String = ""
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 10.723301086958852, longitude: 106.70904158906178), span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001))
    @State private var annotations = [CustomAnnotation]()

    var body: some View {
        
        VStack {
            // Map taking up 2/3 of the screen
            // I know MapMarker is an outdated attribute but I was unable to figure out what the updated version of the sttribute is.
            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: .constant(.follow), annotationItems: annotations) { annotation in
                MapMarker(coordinate: annotation.coordinate, tint: .purple)
            }
            .edgesIgnoringSafeArea(.top)
            .frame(height: UIScreen.main.bounds.height * 1.5 / 3)
        
        ScrollView {
            VStack {
                var mintColor = Color(red: 153/255, green: 242/255, blue: 214/255)
                var orangeColor = Color(red: 232/255, green: 148/255, blue: 2/255)
                
                ScrollView(.horizontal) {
                    HStack {
                        Text("Gate 1")
                            .font(Font.custom("Gupter-Bold", size: 36))
                            .bold()
                            .frame(width: 200, height: 40)
                            .foregroundColor(orangeColor)
                            .frame(width: 175, height: 50)
                            .background(mintColor)
                            .cornerRadius(15.0)
                        Text("Gate 2")
                            .font(Font.custom("Gupter-Bold", size: 36))
                            .bold()
                            .frame(width: 200, height: 40)
                            .foregroundColor(orangeColor)
                            .frame(width: 175, height: 50)
                            .background(mintColor)
                            .cornerRadius(15.0)
                        Text("Gate 3")
                            .font(Font.custom("Gupter-Bold", size: 36))
                            .bold()
                            .frame(width: 200, height: 40)
                            .foregroundColor(orangeColor)
                            .frame(width: 175, height: 50)
                            .background(mintColor)
                            .cornerRadius(15.0)
                    }
                    .padding()
                }
                .scrollIndicators(.hidden)
                
                
                    
                    
                Text("Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum Lorum Ipsum")
                    .font(.system(size: 12))
                    .padding(10)
                    
                // Text field at the bottom
                TextField("Notes about this place:", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 350, height: 20)
                    .padding(6)
                }
            }

            Spacer()
        }
        .navigationBarTitle(locationName)
        .onAppear {
            // Add map marker for "gate 3"
            addMapMarker()
        }
    }
    
    private func addMapMarker() {
        let gate3Annotation = CustomAnnotation(coordinate: CLLocationCoordinate2D(latitude: 10.723301086958852, longitude: 106.70904158906178), title: "Gate 3")
        annotations.append(gate3Annotation)
        region.center = gate3Annotation.coordinate
    }
}

struct UnderMapSection: View {
    @Binding var searchText: String
    
    var body: some View {
        TextField("Enter text", text: $searchText)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
        Text("Gate 3")
            .font(.title)
    }
    
}

struct UnderMapSection_Previews: PreviewProvider {
    static var previews: some View {
        UnderMapSection(searchText: .constant(""))
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





