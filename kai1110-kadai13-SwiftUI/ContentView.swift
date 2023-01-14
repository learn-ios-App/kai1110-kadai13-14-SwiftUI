
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
                        if fruit.isCheck {
                            Image(systemName: "checkmark.circle")
                        }
                        else {
                            Image(systemName: "circle")
                        }
                        Text(fruit.fruitsName)
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
