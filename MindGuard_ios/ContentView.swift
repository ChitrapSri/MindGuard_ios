import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Background Image
                Image("BG") // Use the name of the image in your assets
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all) // Makes the background cover the entire screen
                    
                
                VStack {
                    // Menu Buttons
                    MenuButton(title: "COMMUNITY")
                    NavigationLink(destination: BackgroundImageScreen()){
                        MenuButton(title: "ABOUT US")}
                    MenuButton(title: "ARTICLES")
                    
                    NavigationLink(destination: DASS21QuestionnaireView()) {
                        MenuButton(title: "DASS-21")
                    }
                    
                    MenuButton(title: "Doctors Nearby")
                    MenuButton(title: "Emergency Contacts")
                }
                .padding(.horizontal, 20)
                .padding(.top, 50)
            }
        }
    }
}

// Helper View for Menu Button
struct MenuButton: View {
    var title: String

    var body: some View {
        Text(title)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.brown.opacity(0.8)) // Adjust opacity to see background
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.vertical, 5)
    }
}

#Preview {
    HomeView()
}
