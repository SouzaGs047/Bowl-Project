import SwiftUI

struct FavoritesView: View {
    @StateObject var recipeModel = RecipeModel()
    @State private var users = ["Glenn", "Malcolm", "Nicola", "Terri"]
    
    var body: some View {
        
            
                List($users, id: \.self, editActions: .delete) { $user in
                    Text(user)
                        .deleteDisabled(users.count < 2)
                    
                }
                
            
            
        
    }
}


#Preview {
    FavoritesView()
}
