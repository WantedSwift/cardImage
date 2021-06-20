# cardImage
A model of customizing an image just add to project and use like this
for sample =>

 @IBOutlet weak var viewImage: CardImageView!
 
  override func viewDidLoad() {
        super.viewDidLoad()
        
        viewImage.set_image(image1: UIImage(named: "demo")!)
        // Do any additional setup after loading the view.
    }
