
import SwiftUI

struct ContentView: View {
    @State var fruits: [FruitsData] = [
        FruitsData(name: "リンゴ", isCheck: true),
        FruitsData(name: "ミカン", isCheck: false),
        FruitsData(name: "パイナップル", isCheck: true),
        FruitsData(name: "バナナ", isCheck: false)
    ]
    @State var isAddFruitsView = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits) { fruit in
                    HStack {
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
            AddFruitsView(
                save: { name in
                    fruits.append(
                        FruitsData(name: name, isCheck: false)
                    )
                    isAddFruitsView = false
                },
                cancel: {
                    isAddFruitsView = false
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
