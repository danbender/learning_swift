import UIKit

class TaskDetailViewController: UIViewController {
    
    var detailTaskModel: TaskModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        println(self.detailTaskModel.task)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
