import UIKit

class Cell: UICollectionViewCell {

    let label = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(label)
        contentView.backgroundColor = .white
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = UIEdgeInsetsInsetRect(bounds, UIEdgeInsetsMake(0, 0, 0, 0))
    }
}
