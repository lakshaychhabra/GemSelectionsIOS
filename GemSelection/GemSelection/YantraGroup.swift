//
//  YantraGroup.swift
//  GemSelection
class yantraView: UIViewController{
   public var btnTitle = ""
    
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    var framedpicks = ["SELECT","SHRI. SURYA YANTRA","SHRI. CHANDRA YANTRA","SHRI. MANGAL YANTRA","SHRI. BUDH YANTRA","SHRI. GURU YANTRA","SHRI. SHANI YANTRA","SHRI. RAHU YANTRA","SHRI. KETU YANTRA","SHRI. BAGALA MUKHI YANTRA","SHRI. VASTU DOSH YANTRA","SHRI. KUBER YANTRA","SHRI. NAVGRAH YANTRA","SHRI. SHRI YANTRA","SHRI. MAHAMRITUNJAY YANTRA","SHRI. MAHALAXMI YANTRA","SHRI. SARASWATI YANTRA","SHRI. KALSARP YANTRA","SHRI. DURGA BEESA YANTRA","SHRI. DURGA AMBAJI YANTRA","SHRI. GANPATI YANTRA","SHRI. GAYATRI YANTRA","SHRI. HANUMAN YANTRA","SHRI. MAHAKALI YANTRA","SHRI. NAV YANTRA","SHRI SANTAN GOPAL YANTRA"]
    var locketpicks = ["SELECT","BUDH YANTRA","LAXMI YANTRA","SHUKRA YANTRA","SHANI YANTRA","CHANDRA YANTRA","VASTUDOSH NIVARAN YANTRA","GURU YANTRA","VYAPAR VRIDDHI YANTRA","SARV MANOKAMNA PRAPTI YANTRA","MANGAL YANTRA ","KETU YANTRA","RAHU YANTRA","SURYA YANTRA","YAKSHA KUBER YANTRA"]
    var daanpicks = ["SELECT","RAHU DAN YANTRA","KETU DAN YANTRA","SHANI DAN YANTRA","MANGAL DAN YANTRA","CHANDRA DAN YANTRA"]

    @IBOutlet weak var butn1: UIButton!
    @IBOutlet weak var butn2: UIButton!
    @IBOutlet weak var butn3: UIButton!
    @IBAction func btn1(_ sender: Any) {
        showOptions1()
    }
    @IBAction func btn2(_ sender: Any) {
        showOptions2()
    }
    @IBAction func btn3(_ sender: Any) {
        showOptions3()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            menuBtn.target = self.revealViewController()
            menuBtn.action = #selector
                (SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

    }
    @IBAction func BuyBtn(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "buynow") as! Buynow
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        
    }
    func showOptions1(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "yantratablepopup") as! YarntraTablePopup
        popOverVC.rowcount = framedpicks.count
        popOverVC.labeltext = framedpicks
        popOverVC.whichone = 1
        popOverVC.view.frame = self.view.frame
        self.addChildViewController(popOverVC)
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        
    }

    func showOptions2(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "yantratablepopup") as! YarntraTablePopup
        popOverVC.rowcount = locketpicks.count
        popOverVC.labeltext = locketpicks
        popOverVC.whichone = 2
        popOverVC.view.frame = self.view.frame
        self.addChildViewController(popOverVC)
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        
    }

    func showOptions3(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "yantratablepopup") as! YarntraTablePopup
        popOverVC.rowcount = daanpicks.count
        popOverVC.labeltext = daanpicks
        popOverVC.whichone = 3
        popOverVC.view.frame = self.view.frame
        self.addChildViewController(popOverVC)
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        
    }
}

    
    
    
    
