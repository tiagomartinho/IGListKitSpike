import IGListKit

class SectionController: IGListSectionController {

    var object: Object!

    override init() {
        super.init()
        inset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
    }
}

extension SectionController: IGListSectionType {

    func numberOfItems() -> Int {
        return 1
    }

    func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext?.dequeueReusableCell(of: Cell.self, for: self, at: index) as! Cell
        cell.label.text = object.value
        return cell
    }

    func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 55)
    }

    func didUpdate(to object: Any) {
        self.object = object as? Object
    }

    func didSelectItem(at index: Int) {
    }
}
