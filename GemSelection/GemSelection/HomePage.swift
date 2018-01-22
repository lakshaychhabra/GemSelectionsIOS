
import UIKit

class webViewRow: UITableViewCell {
    @IBOutlet weak var webView: UIWebView!
}

class gemRow: UITableViewCell{
    
    @IBOutlet weak var labelHindi1: UILabel!
    @IBOutlet weak var labelHindi2: UILabel!
    @IBOutlet weak var labelEnglish1: UILabel!
    @IBOutlet weak var labelEnglish2: UILabel!
    
    @IBOutlet weak var gemImageview1: UIImageView!
    @IBOutlet weak var gemImageView2: UIImageView!
    
}
class HomePage: UITableViewController {
    @IBAction func buybtn(_ sender: Any) {
        buywindow()
    }

    var gemimages = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg","11.jpg","12.jpg","13.jpg","14.jpg"]
    var gemnameshindi = ["BAINGANI PUKHRAJ","PANNA STONE","PUKHRAJ STONE","MANIK","NEELAM","GOMED","GULABI PUKHRAJ","PITAMBARI NEELAM","LEHSUNIA","MOTI","MOONGA","HEERA","SAFED PUKHRAJ","HARA PUKHRAJ"]
    var gemnamesenglish = ["(Purple Sapphire)","(Emerald)","(Yellow Sapphire)","(Ruby)","(Blue Saphire)","(Hessonite)","(Pink Sapphire)","(Yellow Blue Sapphire)","(Cats's Eye)","(Pearl)","(Coral)","(Diamond)","(White Sapphire)","(Green Sapphire)"]

    @IBOutlet weak var menuBtn: UIBarButtonItem!
    @IBOutlet weak var rightMenuBtn: UIBarButtonItem!
    
override func viewDidLoad() {
        super.viewDidLoad()
    if self.revealViewController() != nil {
        rightMenuBtn.target = self.revealViewController()
        menuBtn.target = self.revealViewController()
        rightMenuBtn.action = #selector
            (SWRevealViewController.rightRevealToggle(_:))
        menuBtn.action = #selector
            (SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
}
    self.revealViewController().rearViewRevealWidth = 285.0
    
    }

override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if(section == 0){
        return 1}
    else{
        return 7
    }
    }

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var finalcell = UITableViewCell()
        if(indexPath.section == 0){
                let cell = tableView.dequeueReusableCell(withIdentifier: "webviewrow", for: indexPath) as! webViewRow
            let height = cell.webView.frame.size.height; let width = cell.frame.size.width-10
                cell.webView.loadHTMLString("<iframe width=\"\(width)\" height=\"\(height)\" src=\"https://www.youtube.com/embed/exSOLLQKZEM\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
            cell.webView.scrollView.isScrollEnabled = false
            cell.webView.scrollView.bounces = false
               finalcell = cell
        }
    else{
        let cell = tableView.dequeueReusableCell(withIdentifier: "gemrow", for: indexPath) as! gemRow
            cell.gemImageview1.image = UIImage (named: gemimages[indexPath.row+indexPath.row])
            cell.gemImageView2.image = UIImage (named: gemimages[indexPath.row+1+indexPath.row])
            cell.labelEnglish1.text = gemnamesenglish[indexPath.row+indexPath.row]
            cell.labelEnglish2.text = gemnamesenglish[indexPath.row+1+indexPath.row]
            cell.labelHindi1.text = gemnameshindi[indexPath.row+indexPath.row]
            cell.labelHindi2.text = gemnameshindi[indexPath.row+1+indexPath.row]
            finalcell = cell
    }
    return finalcell
  
        }
    
override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 243
    }
    
    func buywindow(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "buynow") as! Buynow
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0.0
        }
        else{
            return 20
        }
    }
    
}
