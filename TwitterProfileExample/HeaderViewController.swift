import UIKit
import MXParallaxHeader

final class HeaderViewController: UIViewController {
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.layer.shadowColor = UIColor.black.cgColor
            titleLabel.layer.shadowOffset = CGSize(width: 0, height: 1)
            titleLabel.layer.shadowOpacity = 0.3
            titleLabel.layer.shadowRadius = 3
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        parallaxHeader?.delegate = self
    }
}

extension HeaderViewController: MXParallaxHeaderDelegate {
    func parallaxHeaderDidScroll(_ parallaxHeader: MXParallaxHeader) {
        let alpha = 1 - min(1, parallaxHeader.progress)
        visualEffectView.alpha = alpha
        titleLabel.alpha = alpha
    }
}
