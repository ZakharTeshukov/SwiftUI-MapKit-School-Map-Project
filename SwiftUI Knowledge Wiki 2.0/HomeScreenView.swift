import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(alignment: .leading) {
                HStack {
                    ZStack(alignment: .center) {
                        Capsule()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .frame(width: 360, height: 55)
                        
                        //This displays the text "SSIS Mapkit Map" on top of the Blue & Red gradient capsule above.
                        Text("SSIS MapKit Map")
                            .cornerRadius(1.0)
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .foregroundColor(.cyan)
                        //---------------------------
                    }
                }
                
                HStack(spacing: 20) {
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

struct CardView: View {
    let imageName: String
    let backgroundColor: Color
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .frame(height: UIScreen.main.bounds.height * 4 / 5)
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
