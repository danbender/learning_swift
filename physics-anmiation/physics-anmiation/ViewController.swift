import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    
    var welcomeLabel: UILabel!
    var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addLabels()
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        
        helloLabel.text = "coffee time"
    }
    
    func addLabels() {
        welcomeLabel = UILabel() // initialize
        welcomeLabel.text = "Welcome!"
        welcomeLabel.font = UIFont.systemFontOfSize(36)
        welcomeLabel.sizeToFit()
        
        welcomeLabel.center = CGPoint(x:100, y:240)
        view.addSubview(welcomeLabel)
        
        nameLabel = UILabel()
        nameLabel.text = "Dan B."
        nameLabel.font = UIFont.systemFontOfSize(48)
        nameLabel.sizeToFit()
        
        nameLabel.center = CGPoint(x: 200, y: 290)
        view.addSubview(nameLabel)
    }
}

