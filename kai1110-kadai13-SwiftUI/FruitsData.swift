
import Foundation

struct FruitsData: Identifiable {
    let id = UUID()
    let name: String    
    var isCheck: Bool
    
    init(name: String, isCheck: Bool) {
        self.name = name
        self.isCheck = isCheck
    }
}
