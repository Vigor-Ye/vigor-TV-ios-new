
import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://tv.vigorwei.dpdns.org")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
