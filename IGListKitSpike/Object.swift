import Foundation
import IGListKit

class Object: NSObject {

    let value: String

    init(value: String) {
        self.value = value
    }
}

extension Object: IGListDiffable {

    func diffIdentifier() -> NSObjectProtocol {
        return self
    }

    func isEqual(toDiffableObject object: IGListDiffable?) -> Bool {
        if let object = object as? Object {
            return value == object.value
        }
        return false
    }
}
