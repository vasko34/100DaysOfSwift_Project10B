import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var imagePosition: Int?
    var imageCount: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imagePosition = self.imagePosition {
            if let imageCount = self.imageCount {
                title = "Picture \(imagePosition) of \(imageCount)"
                if let navigationBar = navigationController?.navigationBar {
                    navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
                }
            }
        }
        navigationItem.largeTitleDisplayMode = .never // affects the NavBar just for this screen(NavItem)
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
