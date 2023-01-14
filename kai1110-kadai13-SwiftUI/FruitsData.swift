
import Foundation

struct FruitsData: Identifiable {
    let id = UUID()
    let fruitsName: String
    var isCheck: Bool
    
    init(fruitsName: String, isCheck: Bool) {
        self.fruitsName = fruitsName
        self.isCheck = isCheck
    }
}
