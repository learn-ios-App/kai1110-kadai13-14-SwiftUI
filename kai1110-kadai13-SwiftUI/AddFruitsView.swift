
import SwiftUI

struct AddFruitsView: View {
    let save: (String) -> Void
    let cancel: () -> Void

    @State var newFruitName = ""

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
                        save(newFruitName)
                    }) {
                        Text("保存")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        cancel()
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
        AddFruitsView(
            save: { _ in },
            cancel: {}
        )
    }
}
