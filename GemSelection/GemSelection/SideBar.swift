import UIKit
import MessageUI
import  MapKit
class SideBar: UITableViewController,MFMailComposeViewControllerDelegate {

    var rowIdentifierssection1 = ["loginrow","homerow","rudraksharow","japamalarow","handicraftsrow","stoneidolsrow","ittarrow","yantrarow","kavachrow","saphaticitemsrow","triangulargemsrow","semipreciousgemsrow","birthstonesrow","diamondrow","jwelleryrow","faqrow"]
    var rowIdentifierssection2 = ["callusrow","mailusrow","visitusrow","findusrow"]
    var rowIdentifierssection3 = ["sharerow","rateapprow"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return rowIdentifierssection1.count
        case 1:
            return rowIdentifierssection2.count
        case 2:
            return rowIdentifierssection3.count
        default:
            return 3
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var finalcell = UITableViewCell()
        
        if(indexPath.section == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: rowIdentifierssection1[indexPath.row], for: indexPath)
            finalcell = cell
        }
        if(indexPath.section == 1){
            let cell = tableView.dequeueReusableCell(withIdentifier: rowIdentifierssection2[indexPath.row], for: indexPath)
            finalcell = cell

        }
        if(indexPath.section == 2){
            let cell = tableView.dequeueReusableCell(withIdentifier: rowIdentifierssection3[indexPath.row], for: indexPath)
            finalcell = cell

        }
        return finalcell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "Contact"
        }
        if section == 2 {
            return "Spread The Word!"
        }
        else{
            return ""
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            if indexPath.row == 1 {
               showmail()
            }
            if indexPath.row == 0 {
                print("call")
                showcall()
            }
            if indexPath.row == 3{
                faceBook()
            }
        }
        if indexPath.section == 2{
            if indexPath.row == 0 {
                shareApp()
            }
        }
    }
    func faceBook(){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "pujapopup") as! PujaPopUp
        popOverVC.urlStrin = "https://www.facebook.com/GemSelections.in/?ref=hl"
        self.revealViewController().frontViewController.addChildViewController(popOverVC)
        popOverVC.view.frame = self.revealViewController().frontViewController.view.frame
        self.revealViewController().frontViewController.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        self.revealViewController().revealToggle(animated: true)
    }
    func shareApp(){
       let shareVC = UIActivityViewController(activityItems: ["GemsSelection APP"], applicationActivities: nil)
        shareVC.popoverPresentationController?.sourceView = self.revealViewController().frontViewController.view
        self.revealViewController().frontViewController.present(shareVC, animated: true, completion: nil)
        self.revealViewController().revealToggle(animated: true)
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            if indexPath.row == 0{
                return 196
            }
            else{
                return 44
            }
        }
        else{
            return 44
        }
    }
//mailcomposer nd show mail nd callui:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        switch result {
        case .cancelled:
            print("canclled")
        case .saved:
              print("saved")
        default:
            print("nononononon")
        }
    }
    
    func showmail(){
        
        if MFMailComposeViewController.canSendMail() {
        let mailvc = MFMailComposeViewController()
                    mailvc.setToRecipients(["care@khannagems.com"])
            mailvc.mailComposeDelegate = self
            self.present(mailvc, animated: true, completion: nil)

        }
        else{
            print("mail ni hai>>>>>>>")
        }
    }
    
    func showcall(){
        let url = NSURL(string: "tel://+919213932017")
        UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
    }
}

class faqclass: UITableViewController {
  
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            menuBtn.target = self.revealViewController()
            menuBtn.action = #selector
                (SWRevealViewController.revealToggle(_:))}
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
   }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "faqrow", for: indexPath)
        return cell
    }


}
    

//Visit US Map Kit :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
class VisitUs: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
        
    }
    
    
    @IBAction func loacteBtn(_ sender: Any) {
        let latitude:CLLocationDegrees = 28.620906
        let longitude:CLLocationDegrees = 77.078763
        let regionDistance:CLLocationDistance = 100;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),MKLaunchOptionsMapSpanKey:NSValue(mkCoordinateSpan: regionSpan.span)]
        let placemark = MKPlacemark(coordinate:coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Gem Selections"
        mapItem.openInMaps(launchOptions: options)
        
    }
    @IBAction func directionBtn(_ sender: Any) {
    }
    
    
    // 28.629448, 77.077761
}




