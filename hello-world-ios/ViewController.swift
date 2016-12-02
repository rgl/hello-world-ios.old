import UIKit

class ViewController: UIViewController {
    @IBAction func helloWorld(_ sender: Any) {
        let alert = UIAlertController(
            title: "Hello?",
            message: "Hello World!",
            preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(
            UIAlertAction(
                title: "Dismiss",
                style: UIAlertActionStyle.default,
                handler: nil))
        present(
            alert,
            animated: true,
            completion: nil)
    }
}
