import SwiftUI





struct HomeScreenView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(alignment: .leading) {
                HStack(spacing: 20) {
                    CardView(imageName: "IMG_1311", backgroundColor: Color.yellow)
                    CardView(imageName: "IMG_1311", backgroundColor: Color.yellow)
                    CardView(imageName: "IMG_1311", backgroundColor: Color.yellow)
                    CardView(imageName: "IMG_1311", backgroundColor: Color.yellow)
                    CardView(imageName: "IMG_1311", backgroundColor: Color.yellow)
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
        .frame(height: UIScreen.main.bounds.height * 4 / 8)
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
