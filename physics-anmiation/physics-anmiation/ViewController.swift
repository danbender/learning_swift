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
        
        helloLabel.text = "Physics!"
        
//        animateLabels()
        animateLabelsWithPhysics()
    }
    
    func addLabels() {
        welcomeLabel = UILabel() // initialize
        welcomeLabel.alpha = 0
        welcomeLabel.text = "Welcome!"
        welcomeLabel.font = UIFont.systemFontOfSize(36)
        welcomeLabel.sizeToFit()

        welcomeLabel.center = CGPoint(x:100, y:240)
        view.addSubview(welcomeLabel)
        
        nameLabel = UILabel()
        nameLabel.alpha = 0
        nameLabel.text = "Dan B."
        nameLabel.font = UIFont.systemFontOfSize(48)
        nameLabel.sizeToFit()

        nameLabel.center = CGPoint(x: 200, y: 290)
        view.addSubview(nameLabel)
    }
    
    func animateLabels() {
        welcomeLabel.center = CGPoint(x: 100, y: 40)
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.welcomeLabel.center = CGPoint(x: 100, y: 240)
            self.welcomeLabel.alpha = 1
        }, completion: nil)
        
        
        nameLabel.center = CGPoint(x: 200, y: 90)
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.nameLabel.center = CGPoint(x: 200, y: 290)
            self.nameLabel.alpha = 1
        }, completion: nil)
    }
    
    func animateLabelsWithPhysics() {
        welcomeLabel.center = CGPoint(x: 100, y: 40)
        
        UIView.animateWithDuration(0.2, delay: 0.3, usingSpringWithDamping: 0.9, initialSpringVelocity: 50.8, options: [], animations: { () -> Void in
            self.welcomeLabel.center = CGPoint(x: 100, y: 240)
            self.welcomeLabel.alpha = 1
        }, completion: nil)
     
        
        nameLabel.center = CGPoint(x: 200, y: 90)
        
        UIView.animateWithDuration(1.0, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: [], animations: { () -> Void in
            self.nameLabel.center = CGPoint(x: 200, y: 290)
            self.nameLabel.alpha = 1
        }, completion: nil)
        
    }
    

    
}

