/* Bowl, a project by:
 Amanda Caroline
 Giulia Cacciaguerra
 Gustavo Souza
 José Elias */

import SwiftUI

struct SplashScreenView: View {
    @Environment(\.modelContext) private var modelContext
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if (isActive) {
            ContentView()
        } else {
            
            ZStack {
                Image("splashImage")
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    Image("bowlLogo")
                        .resizable()
                        .frame(width: 221.18, height: 122.72)
                        .scaledToFit()
                }
                .padding(.bottom, 87.14)
                
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.smooth(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1
                    }
                }
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
    }
}



#Preview {
    SplashScreenView()
}
