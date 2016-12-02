import UIKit
import Alamofire

class ViewController: UIViewController {
    @IBAction func helloWorld(_ sender: Any) {
        Alamofire.request("https://httpbin.org/ip")
            .validate()
            .responseJSON { response in
                let response = response.result.value as! Dictionary<String, Any>
                let ip = response["origin"]! as! String
                let alert = UIAlertController(
                    title: "Hello?",
                    message: "Hello World!\nyour ip is \(ip)",
                    preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(
                    UIAlertAction(
                        title: "Dismiss",
                        style: UIAlertActionStyle.default))
                self.present(
                    alert,
                    animated: true)
        }
    }
}
