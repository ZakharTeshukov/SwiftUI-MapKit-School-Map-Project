import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(alignment: .leading) {
                HStack {
                    ZStack(alignment: .center) {
                        // This creates a Capsule that is overlayed by by the text "SSIS MapKit Map".
                        Capsule()
                        // This creates a fill color consisting of a blue & red gradient that is overlayed by the text bellow.
                        // The startpoint of the gradient is .leading and the endpoint is .trailing because it provides a most aesthetic solution.
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
                        // The frame for the capsule was chosen based on the text size and character length, in this case we included some space between the begining of the capsule & begining of text and ending of the capsule & ending of text.
                        // An issue might arise if you modify the location of this code as it is vital to keep it in the same ZStack as the text, thus the whole ZStack could be moved but individual elements can not as it will result in an error in regards to the intended functionality of the code.
                            .frame(width: 360, height: 55)
                        
                        // This displays the text "SSIS Mapkit Map" on top of the Blue & Red gradient capsule above.
                        Text("SSIS MapKit Map")
                        // It sets a cornerRadius of 1.0 due to the fact that it provides an optimal view of the capsule, improving the aesthetict of the code as a whole.
                            .cornerRadius(1.0)
                        // The font that was chose is the defult system font due to it's vast applicability and we utilised a standard H2 font size as we wanted to add more structure to our application and standardize all visual elements.
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .foregroundColor(.cyan)
                        //---------------------------
                    }
                }
                
                // This HStack has the spacing of 20
                HStack(spacing: 20) {
                    // The cardview was utilised to create a gallery of images with an initial background color of yellow, which was later replaced by an image.
                    // Make sure not to remove the background color or issues within the code will arise.
                    CardView(imageName: "SchoolSports", backgroundColor: Color.yellow)
                    CardView(imageName: "SSISGate1", backgroundColor: Color.yellow)
                    CardView(imageName: "MovieNightImage1", backgroundColor: Color.yellow)
                    CardView(imageName: "SchoolSports", backgroundColor: Color.yellow)
                    CardView(imageName: "SSISGate1", backgroundColor: Color.yellow)
                    CardView(imageName: "MovieNightImage1", backgroundColor: Color.yellow)
                }
            }
            .padding()
        }
    }
}

// This is where the card view is defined and most of it's attributes are defined.
struct CardView: View {
    // The image name is defined as a string as to allow image import from the Assets page.
    let imageName: String
    let backgroundColor: Color
    
    // This defines the rariable of the card.
    var body: some View {
        // This creates a verticaly alligned stack to show all of the information on the card.
        VStack {
            // This states what image should be used.
            Image(imageName)
                // This makes the image resizable.
                .resizable()
                // This makes the cardsize fit the image size.
                .aspectRatio(contentMode: .fit)
        }
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .frame(height: UIScreen.main.bounds.height * 4 / 5)
        .edgesIgnoringSafeArea(.all)
    }
}



// If you create a new struct outside of HomeScreenView you must duplicate this preview elemt and modify it with the name of the struct.
// A bug will arise if anything is changed.
struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}





