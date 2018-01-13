
import UIKit

class handiSideBar: UITableViewController {
    var identify = ["2","3","4","5","6","7","8","9","10","11"]
    override func viewDidLoad() {
        super.viewDidLoad()
  print(handicraftgiftsContent.count,"hcount")
       }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return identify.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identify[indexPath.row], for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 3:
            performSegue(withIdentifier: "clocksegue", sender: self)
        case 4:
            performSegue(withIdentifier: "tilesegue", sender: self)
            print("tiles..")
        case 5:
            performSegue(withIdentifier: "hgiftsegue", sender: self)
        case 6:
            performSegue(withIdentifier: "ostsegue", sender: self)
        case 7:
            performSegue(withIdentifier: "sgsegue", sender: self)
        case 8:
            performSegue(withIdentifier: "bssegue", sender: self)
        case 9:
            performSegue(withIdentifier: "sssegue", sender: self)
        case 10:
            performSegue(withIdentifier: "sttsegue", sender: self)
        default: break
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "clocksegue") {
            let newvc = segue.destination as! UINavigationController
            let topvc = newvc.topViewController as! HandiMultipleView
            topvc.title = "Clocks"
            topvc.imagearray = clockimages
            topvc.contentarray = clockcontent
            topvc.headingarray = clockheadings
            topvc.redrowlabel = "Gold Painted Marbel Clocks"
        }
        if (segue.identifier == "tilesegue") {
            let newvc = segue.destination as! UINavigationController
            let topvc = newvc.topViewController as! HandiMultipleView
            topvc.title = "Tiles"
            topvc.imagearray = tileimages
            topvc.contentarray = tilescontent
            topvc.headingarray = tileshesding
            topvc.redrowlabel = "Gold Painted Plates and Tiles"
        }

        if (segue.identifier == "hgiftsegue") {
            let newvc = segue.destination as! UINavigationController
            let topvc = newvc.topViewController as! HandiMultipleView
            topvc.title = "handicraft gifts"
            topvc.imagearray = handicraftGiftsimages
            topvc.contentarray = handicraftgiftsContent
            topvc.headingarray = handicraftgiftsheading
            topvc.redrowlabel = "Handicrafts Gifts"

        }

        if (segue.identifier == "ostsegue") {
            let newvc = segue.destination as! UINavigationController
            let topvc = newvc.topViewController as! HandiMultipleView
            topvc.title = "other spiritual item"
            topvc.imagearray = otherSpiritualItemsImages
            topvc.contentarray = otspiritualitemscontent
            topvc.headingarray = otspiritualitemsheading
            topvc.redrowlabel = "Other Spiritual Items"

        }

        if (segue.identifier == "sgsegue") {
            let newvc = segue.destination as! UINavigationController
            let topvc = newvc.topViewController as! HandiMultipleView
            topvc.title = "spiritual gifts"
            topvc.imagearray = spiritualGiftsImages
            topvc.contentarray = spiritualgiftscontent
            topvc.headingarray = spiritualgiftsheading
            topvc.redrowlabel = "Spiritual Gifts"

        }

        if (segue.identifier == "bssegue") {
            let newvc = segue.destination as! UINavigationController
            let topvc = newvc.topViewController as! HandiMultipleView
            topvc.title = "black stone"
            topvc.imagearray = blackStoneImages
            topvc.contentarray = blackstonecontent
            topvc.headingarray = blackstoneheading
            topvc.redrowlabel = "Black Stone"

        }

        if (segue.identifier == "sssegue") {
            let newvc = segue.destination as! UINavigationController
            let topvc = newvc.topViewController as! HandiMultipleView
            topvc.title = "Soap Stone"
            topvc.imagearray = soapstoneimages
            topvc.contentarray = soapstonecontent
            topvc.headingarray = soapstoneheading
            topvc.redrowlabel = "Soap Stone"

        }

        if (segue.identifier == "sttsegue") {
            let newvc = segue.destination as! UINavigationController
            let topvc = newvc.topViewController as! HandiMultipleView
            topvc.title = "spiritual table top"
            topvc.imagearray = suitabletabletopImages
            topvc.contentarray = tabletopcontent
            topvc.headingarray = tabletopheading
            topvc.redrowlabel = "Spiritual Table Top"

        }

    }
   
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 146
        }
        else{
            return 44
        }
    }
    
    var clockimages = [#imageLiteral(resourceName: "Marble-Mobile-Holder-MMW-1"),#imageLiteral(resourceName: "Marble-Mobile-Holder-MMW-2"),#imageLiteral(resourceName: "Marble-Decoration-MMW-3"),#imageLiteral(resourceName: "Marble-Decoration-MMW-4"),#imageLiteral(resourceName: "Marble-Decoration-MMW-5")]
    var tileimages = [#imageLiteral(resourceName: "Marble-Tile-GPP01"),#imageLiteral(resourceName: "Marble-Tile-GPP02"),#imageLiteral(resourceName: "Marble-Tile-GPP03"),#imageLiteral(resourceName: "MarbleTile-GPP-4"),#imageLiteral(resourceName: "MarbleTile-GPP-5"),#imageLiteral(resourceName: "Marble-Tile-GPP-6"),#imageLiteral(resourceName: "Marble-Tile-GPP-7"),#imageLiteral(resourceName: "Marble-Tile-GPP-8"),#imageLiteral(resourceName: "Marble-Tile-GPP-9"),#imageLiteral(resourceName: "Marble-Tile-GPP-10"),#imageLiteral(resourceName: "Marble-Tile-GPP-11"),#imageLiteral(resourceName: "Marble-Tile-GPP-12")]
    var handicraftGiftsimages = [#imageLiteral(resourceName: "ASG-01-GANESHA"),#imageLiteral(resourceName: "ASG-02-GANESHA"),#imageLiteral(resourceName: "ASG-03-GANESHA"),#imageLiteral(resourceName: "ASG-04-GANESHA"),#imageLiteral(resourceName: "ASG-05-KRISHANA"),#imageLiteral(resourceName: "ASG-06-HANUMAN"),#imageLiteral(resourceName: "ASG-07-RADHA KRISHNA"),#imageLiteral(resourceName: "ASG-08-Sai-Baba"),#imageLiteral(resourceName: "ASG-09-JesusCrist"),#imageLiteral(resourceName: "ASG-10-Jesus-Crist"),#imageLiteral(resourceName: "ASG-11-Jesus-Crist")]
    var otherSpiritualItemsImages = [#imageLiteral(resourceName: "Undercut-Elephant-Pair-OSI-1"),#imageLiteral(resourceName: "Elephant-Pair-OSI-2"),#imageLiteral(resourceName: "Elephant-Pair-OSI-3"),#imageLiteral(resourceName: "Undercut-Owl-OSI04"),#imageLiteral(resourceName: "Undercut-Frog -OSI05")]
    var spiritualGiftsImages = [#imageLiteral(resourceName: "Marble-Plate-HGI-1"),#imageLiteral(resourceName: "Marble-Plate-2"),#imageLiteral(resourceName: "Marble-Tile-HGI03"),#imageLiteral(resourceName: "Marble-Tile-HGI04"),#imageLiteral(resourceName: "Marble-Tile-HGI05"),#imageLiteral(resourceName: "Marble-Tile-HGI06"),#imageLiteral(resourceName: "Marble-Tile-HGI07"),#imageLiteral(resourceName: "Marble-Tile-HGI08"),#imageLiteral(resourceName: "Marble-Tile-HGI09"),#imageLiteral(resourceName: "Marble-Tile-HGI-10")]
    var blackStoneImages = [#imageLiteral(resourceName: "Paper-Weight-ASG-1"),#imageLiteral(resourceName: "Paper-Holder-ASG-2"),#imageLiteral(resourceName: "Pen-Visiting-Card-Holder-ASG-3"),#imageLiteral(resourceName: "Pen-Holder-ASG-4"),#imageLiteral(resourceName: "Visiting-Card Holder-ASG-5")]
    var soapstoneimages = [#imageLiteral(resourceName: "Pen-Stand-Inlay-TSS-1"),#imageLiteral(resourceName: "Coaster-Inlay-work-TSS-2"),#imageLiteral(resourceName: "Visiting-Card-Holder-TSS-3"),#imageLiteral(resourceName: "Pen-Stand-Visiting-Card-Holder-TSS-4"),#imageLiteral(resourceName: "Paper-Holder-TSS-5"),#imageLiteral(resourceName: "Paper-Weight0-TSS-6")]
    var suitabletabletopImages = [#imageLiteral(resourceName: "Pen-Stand-TTS-1"),#imageLiteral(resourceName: "Coaster-Set-TTS-2"),#imageLiteral(resourceName: "Coaster-Set-TTS-3"),#imageLiteral(resourceName: "Visiting-Card-Holder-TTS-4"),#imageLiteral(resourceName: "Visiting-Card-Holder-TTS05")]

    
   
    
    
    
    var clockheadings = ["Marble mobile holder with beautiful watch in it.\n(Code - MMW01)","Marble mobile holder with beautiful watch in it.\n(Code - MMW02)","Marble decoration item with watch in it.\n(Code - MMW03)","Marble decoration item with watch in it.\n(Code - MW04)","Marble decoration item with watch in it.\n(Code - MMW05)"]
    
    var clockcontent = ["Marble mobile holder with beautiful watch, with beautiful golden colour hand painting useful for decoration as well as very useful item of keeping mobile or can be used in office for visiting card holder.\nRs: 1250/- \nWeight: 600 Grams \nSize:  4.5\"/4\"","Marble mobile holder with beautiful watch, with beautiful blue and golden colour hand painting useful for decoration as well as very useful item of keeping mobile or can be used in office for visiting card holder.\nRs: 1250/-\n Weight: 600 Grams\nSize:  4.5\"/4\"","Marble decoration item with beautiful watch in it , with beautiful golden and red colored  hand painting useful for gifting purpose\nRs: 1250/-\nWeight: 830 Grams\nSize:  7\"/6\"","Marble decoration item with beautiful watch in it , with beautiful golden and red colored  hand painting useful for gifting purpose\nRs: 1250/-\nWeight:  630 Grams\nSize:  3.5\"/3\"","Marble decoration item with beautiful watch in it , with beautiful golden and red colored  hand painting useful for gifting purpose\nRs:  1250/-\nWeight: 360 Grams\nSize: 5.5\"/1.5\""]
    
    
    
    var tileshesding = ["CODE: GPP01","CODE: GPP02","CODE: GPP03","CODE: GPP04","CODE: GPP05","CODE: GPP06","CODE: GPP07","CODE: GPP08","CODE: GPP09","CODE:  GPP10","CODE: GPP11,","CODE: GPP12"]
    
    var tilescontent = ["White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight  :  250 grams\nHeight  :  7 \"\nBreadth  5 \"\nPrice  :  600.00","White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight  :  250 grams\nHeight  :  7 \"\nBreadth  5 \"\nPrice  :  600.00","White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight  :  250 grams\nHeight  :  7 \"\nBreadth  5 \"\nPrice  :  600.00","White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight  :  250 grams\nHeight  :  7 \"\nBreadth  5 \"\nPrice  :  600.00","White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight  :  250 grams\nHeight  :  7 \"\nBreadth  5 \"\nPrice  :  600.00","White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight  :  250 grams\nHeight  :  7 \"\nBreadth  5 \"\nPrice  :  600.00","White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight  :  250 grams\nHeight  :  7 \"\nBreadth  5 \"\nPrice  :  600.00","White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight  :  250 grams\nHeight  :  7 \"\nBreadth  5 \"\nPrice  :  600.00","White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight  :  250 grams\nHeight  :  7 \"\nBreadth  5 \"\nPrice  :  600.00","White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight  :  250 grams\nHeight  :  7 \"\nBreadth  5 \"\nPrice  :  600.00","White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight  :  250 grams\nHeight  :  7 \"\nBreadth  5 \"\nPrice  :  600.00","White marble tile with a beautiful hand painting of musical instrument.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight  :  250 grams\nHeight  :  7 \"\nBreadth  5 \"\nPrice  :  600.00"]
    
    
    var handicraftgiftsheading = ["LORD GANESHA PLATE (6\" DIA) WITH WOODEN STAND. CODE: ASG 01.","FRAMED LORD GANESHA PLATE OF MARBLE (9\" DIA) CODE: ASG 02","FRAMED LORD GANESHA PLATE OF MARBLE (6\" DIA) CODE: ASG 03","FRAMED LORD GANESHA PLATE OF MARBLE WITH JALI (9\" DIA)  CODE: ASG 04.","FRAMED LORD KRISHNA PLATE OF MARBLE WITH JALI (9\" DIA) CODE: ASG05.","FRAMED LORD HANUMANJI TILE OF MARBLE 7\"/4\".CODE: ASG 06.","FRAMED TILE OF LORD KRISHNA & RADHA OF MARBLE 7\"/4\". CODE: ASG 07.","CODE: ASG 08","CODE: ASG 09","CODE: ASG 10","CODE: ASG 11"]
    
    var handicraftgiftsContent = ["A work of artisans of Rajasthan this Marble plate of 9 inch diameter with hand painted image of Lord Genesha.  Colors used are rich and permanent and includes an extensive use of 22 k gold in colors. (Framed in exclusive Italian frame is ready to be hanged from walls or placed on a pedestal)\nRs. 1800.00","A work of artisans of Rajasthan this Marble plate of 6 inch diameter with hand painted image of Lord Genesha.  Colors used are rich and permanent and includes an extensive use of 22 k gold in colours. (Framed in exclusive Italian frame is ready to be hanged from walls or placed on a pedestal)\nRs. 1100.00","A work of artisans of Rajasthan this exclusive marble plate with beautiful Jali work has a picture of Lord Ganesha painted on it.  The colors used are rich and includes the extensive use of 22 k Gold. (Framed in exclusive Italian frame is ready to be hanged from walls or placed on a pedestal)\n Rs. 2100.00","A work of artisans of Rajasthan this exclusive marble plate with beautiful Jali work has a picture of Lord Krishna painted on it.  The colors used are rich and includes the extensive use of 22 k Gold. (Framed in exclusive Italian frame is ready to be hanged from walls or placed on a pedestal)\n Rs.2100.00","A work of artisans of Rajasthan than this Marble Tile of 7''/4'' inch diameter with hand painted image of Lord Hanumanji.  Colors used are rich and permanent and includes an extensive use of 22 k gold in colors. (Framed in exclusive Italian frame is ready to be hanged from walls or placed on a pedestal)\n       Rs. 1100.00","A work of artisans of Rajasthan than this Marble Tile of 7''/4'' inch diameter with hand painted image of Lord Krishna & Radha.  Colors used are rich and permanent and includes an extensive use of 22 k gold in colors. (Framed in exclusive Italian frame is ready to be hanged from walls or placed on a pedestal)\n Rs. 1100.00","White marble plate with a beautiful hand painting of Sai Baba.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight  : 850 gm.\n Size:  9 inch \n Rate:   1200.00","White marble plate with a beautiful hand painting of Jesus Crist.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\n Weight  :  305 gm.\n Size :  6 inch\n Rate:  600.00","White marble tile with a beautiful hand painting of Jesus Crist.  The Colours used are permanent and include 24 k gold. It can be hanged from a wall or else can be placed on a table using a stand.\nWeight : 290 gm\nSize : 7\"/5\"\nRate  450.00","White marble tile with a beautiful hand painting of Jesus Crist.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight:  290 gm\nSize : 7”  /  5”\nRate  450.00","White marble tile with a beautiful hand painting of Jesus Crist.  The Colours used are permanent and include 24 k gold. It can be hanged from a wall or else can be placed on a table using a stand.\nWeight : 290 gm\nSize : 7\"/5\"\nRate  450.00","White marble tile with a beautiful hand painting of Jesus Crist.  The Colours used are permanent and include 24 k gold.  It can be hanged from a wall or else can be placed on a table using a stand.\nWeight:  290 gm\nSize : 7”  /  5”\nRate  450.00"]
    
    var otspiritualitemsheading = ["Undercut Elephant (Code : OSI 01)","Elephant Pair (Soap Stone) (Code : OSI 02)(With Hand Painting)","Elephant Pair (Soap Stone) (Code : OSI 03)(With Inlay Work)","Pair of Owl (Under Cut) (Code : OSI 04)","Pair of Frog (Under Cut)(Code : OSI 05)"]
    
    var otspiritualitemscontent = ["Elephant (Undercut ) Elephant Indra the King of Devas rode to victories on his famous Elephant “ Eravat ”. In South India where the ancient Indian tradition is still seen intact we see a lot of elephants in temples and in all ceremonies. Elephant is seen as a symbol of prosperity and wealth in Hindu system. When you place a pair of elephants in your house or place of work prosperity in all forms ‘ Aishwariya ’ starts coming to your house. When you gift this to someone it implies that you are wishing all round prosperity and happiness. Having many elephants is a sign of Royalty .","Elephant Pair Indra the King of Devas rode to victories on his famous Elephant “ Eravat ”. In South India where the ancient Indian tradition is still seen intact we see a lot of elephants in temples and in all ceremonies. Elephant is seen as a symbol of prosperity and wealth in Hindu system. When you place a pair of elephants in your house or place of work prosperity in all forms ‘ Aishariya ’ starts coming to your house. When you gift this to someone it implies that you are wishing all round prosperity and happiness. Having many elephants is a sign of Royalty .   Material Used : Soap Stone with gold painted.","Elephant Pair Indra the King of Devas rode to victories on his famous Elephant “ Eravat ”. In South India where the ancient Indian tradition is still seen intact we see a lot of elephants in temples and in all ceremonies. Elephant is seen as a symbol of prosperity and wealth in Hindu system. When you place a pair of elephants in your house or place of work prosperity in all forms ‘ Aishariya ’ starts coming to your house. When you gift this to someone it implies that you are wishing all round prosperity and happiness. Having many elephants is a sign of Royalty . Soap Stone with inlay work.","Pair of Owl ( Under Cut ) Pair of Owl Owl is the vehicle “ Wahan ” of Laxiji the Goddess of wealth. Keeping a pair of Owls in the cash box above the place where valuables of the family are kept also brings goodluck and wealth. Under the Tantrik system if a pair of Owls made of stone is kept wrapped in a red cloth along with sindoor, kewara and saffron hidden under the bed of the head of the family then sudden inflow of wealth starts. Length : 5.5 cm Height : 7 cm Breadth : 4 cm Weight : 140 gm Material Used : Soap Stone","Pair of Frog ( Undercut ) Pair of Frog Frogs come out of hibernation when rains are expected , rains bring bumper harvests and all round prosperity. Keeping figures of frogs is considered to be auspicious for the householder “ Griasth ”. All round wealth and recognition comes quickly to people who keep a pair of frogs in there house or work place. A pair of frogs also makes a wise gift as the person who gets this gift gains tremendously. Length : 10 cm Height : 3 cm Breadth : 6.5 cm Weight : 280 gm Material Used : Soap Stone."]
    
    
    var spiritualgiftsheading = ["Code  : (HGI 01)","Code  :  (HGI 02)","Code  : (HGI 03)","Code  :  (HGI 04)","Code  :  (HGI 05)","Code  :   (HGI 06)","Code  : (HGI 07)","Code  : (HGI 08)","Code  :  (HGI 09)","Code  :   (HGI 10)"]
    
    var spiritualgiftscontent = ["White marble plate Rajasthani lady in build.  Beautiful hand painting with original & gold colors.  Used for decoration piece.\nWeight   :  850.00\nSize :  9 inch\nRate :  600.00","White marble plate Queen of Rajasthan in build. Beautiful hand painting with original & gold colors. Used for decoration piece.\nWeight   :  850.00\nSize :  9 inch\nRate :  600.00","White marble tile pair of birds in builds.  Beautiful hand painting.  Original colors are used.  Used as a decoration piece.\nWeight   :  290 gm.\nSize :  7”/5\"\nRate   450.00","White marble tile pair of bird in builds.  Beautiful hands painting original Colours are used.  Used as a decoration piece.\nWeight   :  290 gm.\nSize :  7”/5\"\nRate   450.00","White marble tile pair of bird in builds.  Beautiful hands painting original Colours are used.  Used as a decoration piece.\nWeight   :  290 gm.\nSize :  7”/5\"\nRate   450.00","White marble tile pair of bird in builds.  Beautiful hands painting original Colours are used.  Can be used as a decoration piece or keep in a stand.\nWeight   :  290 gm.\nSize :  7”/5\"\nRate   450.00","White marble tile. Beautiful Rajasthani lady in build.  Beautiful hand painting with original colors.  Can be used as a wall hanging or kept in a stand.\nWeight   :  290 gm.\nSize :  7”/5\"\nRate   450.00","White marble tile colored camel in build. Camel is the symbol of Rajasthan means of transport.  Beautiful hand painting with original colors.  Can be used as a decoration piece or wall hanging.\nWeight :  270 gm\nSize : 6”/4”\n Rate  450.00","White marble tile symbol of prosperity Elephant is in build.  Beautiful hand painting with original colors.  Can be used as a decoration piece or wall hanging.\nWeight :  270 gm\nSize : 6”/4”\n Rate  450.00","White marble tile symbol of power horse is in build.  Beautiful hand painting with original colors.  Can be used as a decoration piece or wall hanging.\nWeight :  270 gm\nSize : 6”/4”\n Rate  450.00"]
    
    
    var blackstoneheading = ["Pair Paper weight with beautiful Inlay work Code : ASG 01","Beautiful Paper holder with Inlay work Code : ASG 02","Beautiful Pen & Visiting Card Holder with Inlay work Code : ASG 03","Beautiful Pen Holder with Inlay work Code : ASG 04","Beautiful Visiting Card Holder with Inlay work Code : ASG 05"]
    
    var blackstonecontent = ["Black stone paper weight  beautiful inlay work is done.  Very useful in the office or home.  Can be kept anywhere.\nWeight:  230 gm.\nSize  :   2 inch\nRate: Rs 150.00/-(Pair)","Black stone paper holder beautiful inlay work is done.  Very useful in the office or home.  Can be kept anywhere.\nWeight:  850 gm.\nSize  :   4”  /  4”\nRate  450.00","Black stone pen & card holder beautiful inlay work is done.  Very useful in the office or home.  Can be kept anywhere.\nWeight:  430 gm.\nSize  :   4”  /  3”\nRate  450.00","Black stone pen holder beautiful inlay work is done.  Very useful in the office or home.  Can be kept anywhere.\nWeight:  400 gm.\nSize  :  4\"/2\"\nRate: Rs 150.00/- ","Black stone Visiting card holder beautiful inlay work is done.  Very useful in the office or home.  Can be kept anywhere.\nWeight:  225 gm.\nSize  :  4\"/2\"\nRate: Rs 150.00/- "]
    
    
    var soapstoneheading = ["Pen Stand with Beautiful Inlay work.Code : TSS 01","Coaster with Beautiful Inlay work.Code : TSS 02","Visiting Card Holder with Beautiful Inlay work.Code : TSS 03","Pen Stand & Visiting Card Holder with Inlay work.Code : TSS 04","Paper Holder with Beautiful Inlay work.        Code : TSS 05","Pair Paper weight with beautiful Inlay work.Code : TSS 06"]
    
    var soapstonecontent = [" Soap stone pen stand beautiful inlay work is done.  Very useful in the office.  Can be kept in the table.\nWeight:  400 gm.\nSize  : 4”/2”\nRate: Rs 150.00/-","Soap stone coaster with stand beautiful inlay work is done.  Very useful in the office.  Can be kept in the table.\nWeight:  600 gm.\nSize  : 4”/5”\nRate: Rs 150.00/-","Soap stone visiting card holder beautiful inlay work is done.  Very useful in the office.  Can be kept in the table.\nWeight:  225 gm.\nSize  : 4”/2”\nRate: Rs 150.00/-","Soap stone pen stand and visiting card holder beautiful inlay work is done.  Very useful in the office.  Can be kept in the table.\nWeight:  380 gm.\nSize  : 4”/3”\nRate: Rs 150.00/-","Soap stone paper holder beautiful inlay work is done.  Very useful in the office.  Can be kept in the table.\nWeight:  850 gm.\nSize  : 4”/3”\nRate: Rs 150.00/-","Soap stone paper weight beautiful inlay work is done.  Very useful in the office.  Can be kept in the table.\nWeight:  230 gm.\nSize  : 2”\nRate: Rs 150.00/-(Pair)"]
    
    var tabletopheading = ["PEN STAND WITH LORD GANESHA PAINTING.(CODE: TTS 01)","COASTER SET WITH SITTING LORD GANESHA.(CODE: TTS 02)","COASTER SET WITH RECLINING LORD GANESHA.(CODE: TTS 03)","VISITING CARD HOLDER WITH LORD GANESHA.(CODE: TTS 04)","VISITING CARD HOLDER WITH LORD GANESHA.(CODE: TTS 05)"]
   
    var tabletopcontent = ["Pen stand made of soap stone with the hand painting of Lord Ganesha on it.\nRs.180.00\n Weight:400 Grams\nSize:4\"/2\"","Set of six coasters with hand painting of an elephant on each piece is an exclusive work of art from the artisans of Rajasthan. A picture of sitting lord Ganesha is on the coaster holder keep it on your work or study desk.\nRs. 201.00\nWeight:610 Grams\nSize:4\"/5\"","Set of six coasters with hand painting of an elephant on each piece is an exclusive work of art from the artisans of Rajasthan. A picture of sitting lord Ganesha is on the coaster holder keep it on your work or study desk.\nRs. 201.00\nWeight:610 Grams\nSize:4\"/5\"","Visiting card holder with hand painting of lord Ganesha on each piece is an exclusive work of art from the artisans of Rajasthan. Can be kept on your work or study desk.\nRs. 150.00\nWeight:225 Grams\nSize:4\"/2\"","Visiting card holder with hand painting of lord Ganesha on each piece is an exclusive work of art from the artisans of Rajasthan. Can be kept on your work or study desk.\nRs. 150.00\nWeight:225 Grams\nSize:4\"/2\""]
    
    
    
    
    
    
    
    
}
