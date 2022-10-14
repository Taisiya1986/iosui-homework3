import UIKit

class ProfileViewController: UIViewController {
    
    let profile = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(profile)
        title.self = "Profile"
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profile.frame = view.frame
    }
    
}





