
import SwiftUI

struct ContentView: View {
    @State var fruits: [FruitsData] = [
        FruitsData(name: "リンゴ", isCheck: true),
        FruitsData(name: "ミカン", isCheck: false),
        FruitsData(name: "パイナップル", isCheck: true),
        FruitsData(name: "バナナ", isCheck: false)
    ]
    @State var isAddFruitsView = false
    @State var newFruitName = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits) { fruit in
                    HStack {
//                        if fruit.isCheck {
//                            Image(systemName: "checkmark.circle")
//                        }
//                        else {
//                            Image(systemName: "circle")
//                        }
                        Image(
                            systemName: fruit.isCheck
                                ? "checkmark.circle"
                                : "circle"
                        )
                        Text(fruit.name)
                    }
                }
            }
            .listStyle(InsetListStyle())
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isAddFruitsView = true
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .sheet(isPresented: $isAddFruitsView) {
            AddFruitsView(addFruit: addFruit, newFruitName: $newFruitName, isAddFruitsView: $isAddFruitsView)
        }
    }
    func addFruit() {
        let newFruit = FruitsData(name: newFruitName, isCheck: false)
        self.fruits.append(newFruit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
