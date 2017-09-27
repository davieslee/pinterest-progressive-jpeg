
import UIKit
import PINRemoteImage
import PINCache

class SecondViewController: UIViewController {

  @IBOutlet var imageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    refresh(UIButton())
  }

  @IBAction func refresh(_ sender: UIButton) {
    imageView.image = nil
    PINRemoteImageManager.shared().cache.removeAllObjects()
    PINRemoteImageManager.shared().setProgressiveRendersShouldBlur(true, completion: nil)
    imageView.pin_updateWithProgress = true
    imageView.pin_setImage(from: Image.progressive2.url)
  }
}

