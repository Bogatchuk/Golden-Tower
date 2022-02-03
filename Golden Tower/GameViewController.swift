import UIKit
import WebKit

class GameViewController: UIViewController, UIWebViewDelegate{

    //var webView:WKWebView!
    
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let urlStr = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "tower_game-master") {
            webView.loadFileURL(urlStr, allowingReadAccessTo: urlStr.deletingLastPathComponent())
        }
      //  self.view = webView
        // Do any additional setup after loading the view.
    }


}

extension ViewController: WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
    }
}
