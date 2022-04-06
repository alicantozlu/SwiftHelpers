import UIKit

public class SwiftHelper{
    
    public init(){}
    
    public static let helper = SwiftHelper()
    
    /// Create custom presenter with completion text printer
    public func screenPresenter(_ selfName: UIViewController,_ targetIdentifier:String,_ presentation: UIModalPresentationStyle,_ transition:UIModalTransitionStyle,_ completionText:String) {
        let VC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: targetIdentifier)
        VC.modalPresentationStyle = presentation
        VC.modalTransitionStyle = transition
        selfName.present(VC, animated: true, completion: {print(completionText)})
    }
}
