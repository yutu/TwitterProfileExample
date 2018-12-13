import UIKit
import Tabman
import Pageboy

final class PagingMenuViewController: TabmanViewController {
    // ページングメニューに対応したビューコントローラ
    private lazy var viewControllers: [UIViewController] = {
        [
            storyboard!.instantiateViewController(withIdentifier: "TableViewController"),
            storyboard!.instantiateViewController(withIdentifier: "TextViewController"),
            storyboard!.instantiateViewController(withIdentifier: "WebViewController")
        ]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self

        // ページングメニューに表示する項目
        bar.items = [
            Item(title: "Table View"),
            Item(title: "Text View"),
            Item(title: "Web View")
        ]
    }
}

extension PagingMenuViewController: PageboyViewControllerDataSource {
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return viewControllers.count
    }

    func viewController(for pageboyViewController: PageboyViewController, at index: PageboyViewController.PageIndex) -> UIViewController? {
        return viewControllers[index]
    }

    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
}
