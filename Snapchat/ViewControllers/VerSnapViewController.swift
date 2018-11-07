

import UIKit
import SDWebImage
import FirebaseDatabase
import FirebaseAuth
import FirebaseStorage
class VerSnapViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    

    @IBOutlet weak var label: UILabel!
    
    var snap = Snap()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text? = snap.descrip
        imageView.sd_setImage(with: URL(string: snap.imagenURL), completed: nil)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        FIRDatabase.database().reference().child("usuarios").child((FIRAuth.auth()?.currentUser?.uid)!).child("snap").child(snap.id).removeValue()
        
            FIRStorage.storage().reference().child("imagenes").child("\(snap.imagenID).jpg").delete(completion: {(error) in
                print ("Se eliminó correctamente la imagen")
            })
    }

    
    

   

}
