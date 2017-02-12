import UIKit
import IGListKit

class ViewController: UIViewController {

    let collectionView = IGListCollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())

    lazy var adapter: IGListAdapter = {
        return IGListAdapter(updater: IGListAdapterUpdater(), viewController: self, workingRangeSize: 0)
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        adapter.collectionView = collectionView
        adapter.dataSource = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
}

extension ViewController: IGListAdapterDataSource {

    func objects(for listAdapter: IGListAdapter) -> [IGListDiffable] {
        let object: IGListDiffable = Object(value: "Foo")
        var items = [IGListDiffable]()
        for _ in 1...10 {
            items.append(object)
        }
        return items
    }

    func listAdapter(_ listAdapter: IGListAdapter, sectionControllerFor object: Any) -> IGListSectionController {
        return SectionController()
    }

    func emptyView(for listAdapter: IGListAdapter) -> UIView? {
        return nil
    }
}
