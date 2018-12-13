import UIKit
import WebKit

final class WebViewController: UIViewController {
    @IBOutlet private weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let request = URLRequest(url: URL(string: "https://tech.recruit-mp.co.jp/")!)
        webView.load(request)
    }
}
