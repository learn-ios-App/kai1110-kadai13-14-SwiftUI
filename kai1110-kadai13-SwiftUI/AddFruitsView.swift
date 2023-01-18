
import SwiftUI

struct AddFruitsView: View {
    let addFruit: () -> Void
    @Binding var newFruitName: String
    @Binding var isAddFruitsView: Bool
    var body: some View {
        NavigationStack {
            HStack {
                Text("名前")
                TextField("", text: $newFruitName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 200)
                    .padding()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action:{
                        addFruit()
                        newFruitName = ""
                        isAddFruitsView = false
                    }) {
                        Text("保存")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        isAddFruitsView = false
                    }) {
                        Text("戻る")
                    }
                }
            }
        }
    }
}

struct AddFruitsView_Previews: PreviewProvider {
    @State static var newFruitsName = ""
    @State static var isAddFruitsView = true
    static let addFruit = {}

    static var previews: some View {
        AddFruitsView(addFruit: addFruit, newFruitName: $newFruitsName, isAddFruitsView: $isAddFruitsView)
    }
}
