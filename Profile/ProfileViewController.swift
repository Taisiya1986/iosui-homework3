import UIKit

class ProfileViewController: UIViewController {
    
    let profile = ProfileHeaderView()
    
    func setupProfileView() {
        profile.setupMainView()
        profile.mainView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profile.mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profile.mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            profile.mainView.widthAnchor.constraint(equalTo: view.widthAnchor),
            profile.mainView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
    }
    
    func showStatus() {
        profile.buttonStatus.addTarget(ProfileViewController?.self, action: #selector(buttonStatusAction), for: .touchUpInside)
    }
    
    @objc func buttonStatusAction() {
        profile.mainView.addSubview(profile.labelStatus)
        profile.setupLabelStatus()
        print(profile.labelStatus.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(profile.mainView)
        setupProfileView()
        title.self = "Profile"
        showStatus()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profile.frame = view.frame
    }
    
}





