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
        
        animateLabels()
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
    
    func animateLabels() {
        welcomeLabel.center = CGPoint(x: 100, y: 40)
        welcomeLabel.alpha = 0
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
           
            self.welcomeLabel.center = CGPoint(x: 100, y: 240)
            self.welcomeLabel.alpha = 1
            
        }, completion: nil)
        
        nameLabel.center = CGPoint(x: 200, y: 90)
        nameLabel.alpha = 0
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
          
            self.nameLabel.center = CGPoint(x: 200, y: 290)
            self.nameLabel.alpha = 1
        
        }, completion: nil)
    }
}

