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
        
    
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "tapped:")
        self.view.addGestureRecognizer(tapGestureRecognizer)
        
        let longPressRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed:")
        self.view.addGestureRecognizer(longPressRecognizer)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButtonPressed(sender: UIButton) {
        
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
    
    

    func tapped(sender: UITapGestureRecognizer) {
        newCountValueWhenPressed += 1
        currentCountLabel.text = "\(newCountValueWhenPressed)"
        print("tapped")
    }
    
//    func longPressed(sender: UILongPressGestureRecognizer) {
//        switch {
//            
//        }
//        
//        print("longpressed")
//    }
    

}


