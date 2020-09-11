import IGListKit
import UIKit

class ViewController: UIViewController, ListAdapterDataSource {

    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    
    @IBOutlet var collectionView: UICollectionView!

    let demos: [NSString] = [
        "Tail Loading",
        "Search Autocomplete",
        "Mixed Data",
        "Nested Adapter",
        "Empty View",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Demos"
        adapter.collectionView = collectionView
        adapter.dataSource = self
    }

    // MARK: ListAdapterDataSource

    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return demos
    }

    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return DemoSectionController()
    }

    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}

