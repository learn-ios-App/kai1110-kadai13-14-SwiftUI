
import SwiftUI

struct ContentView: View {
    private let fruits: [FruitsData] = [
        FruitsData(fruitsName: "リンゴ", isCheck: true),
        FruitsData(fruitsName: "ミカン", isCheck: false),
        FruitsData(fruitsName: "パイナップル", isCheck: true),
        FruitsData(fruitsName: "バナナ", isCheck: false)
    ]
    var body: some View {
        VStack {
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
