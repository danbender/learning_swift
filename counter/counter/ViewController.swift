import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentCountLabel: UILabel!
    var newCountValueWhenPressed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButtonPressed(sender: UIButton) {
        newCountValueWhenPressed += 1
        currentCountLabel.text = "\(newCountValueWhenPressed)"
    }
    
    @IBAction func resetButtonPressed(sender: UIButton) {
        currentCountLabel.text = "\(0)"
    }


}

