
import Foundation

struct FruitsData: Identifiable {
    let id = UUID()
    let name: String
    var isCheck: Bool
    
    init(fruitsName: String, isCheck: Bool) {
        self.name = fruitsName
        self.isCheck = isCheck
    }
}
