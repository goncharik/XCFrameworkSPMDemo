import IGListKit
import UIKit

final class DemoSectionController: ListSectionController {

    private var object: NSString?

    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 55)
    }

    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell: LabelCell = collectionContext?.dequeueReusableCell(of: LabelCell.self, for: self, at: index) as? LabelCell else {
            fatalError()
        }
        cell.text = object as String?
        return cell
    }

    override func didUpdate(to object: Any) {
        self.object = object as? NSString
    }

}
