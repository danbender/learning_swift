import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentCountLabel: UILabel!
    var newCountValueWhenPressed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeRight.direction = .Right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeLeft.direction = .Left
        self.view.addGestureRecognizer(swipeLeft)

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

    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Right:
                print("Swiped right")
                newCountValueWhenPressed += 1
                currentCountLabel.text = "\(newCountValueWhenPressed)"
            case UISwipeGestureRecognizerDirection.Left:
                print("Swiped left")
                
                if newCountValueWhenPressed >= 1 {
                    newCountValueWhenPressed -= 1
                    currentCountLabel.text = "\(newCountValueWhenPressed)"
                }
                else
                {
                    newCountValueWhenPressed = 0
                }
            default:
                break
            }
        }
    }

}


