//
//  YantraPopUp.swift
//  GemSelection
//
//  Created by Abhishek on 7/9/17.
//  Copyright © 2017 ITS. All rights reserved.
//

import UIKit

class YantraPopUp: UIViewController {
    var fulltext:String = ""

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        self.showAnimate()
        labelYantra.scrollRangeToVisible(NSMakeRange(0, 0))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var labelYantra: UITextView!

    @IBAction func closeBtn(_ sender: Any) {
        
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });

    }
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
}

//YantraTablepopup::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


class YarntraTablePopup: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBAction func claseBtn(_ sender: Any) {
        close()
        
    }
    
    var rowcount:Int = 0
    var labeltext = [""]
    var whichone:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.showAnimate()

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return rowcount
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "yantrarow", for: indexPath) as! YantraTableCell
        cell.label.text = labeltext[indexPath.row]
        return cell
      }
    
   

    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            close()
        }
        else{
            showdetail(row: indexPath.row, which: whichone)
        }
    }


    func close(){
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });

        
    }
    func showdetail(row:Int ,which:Int){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "yantrapopup") as! YantraPopUp
        popOverVC.view.frame = self.view.frame
        self.addChildViewController(popOverVC)
        if which == 1 {
            popOverVC.labelYantra.text = framedText[row]
        }
        if which == 2 {
            popOverVC.labelYantra.text = locketText[row]
        }
        if  which == 3 {
            popOverVC.labelYantra.text = daantext[row]
        }
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
        
    }

        
    lazy var framedText = ["","Used to enhance the benefic effects and curtail the malefic effects of the Sun. If worshipped regularly, it gives success in all walks of life and bestows prosperity in a person's life. This improves ones level of concentration and thereby improves the status of the person. It gives public recognition and enhancement of status. It is widely used by businessmen, people in services and those in politics. Should be affined facing East on a Sunday morning between 5.30 AM to 6.30 AM.","Used to enhance the benefic effects and curtail the malefic effects of Moon. If worshipped regularly, then it improves the creative powers and gives the person imagination. It helps in weeding out tensions that are not called for. Should be affixed on Monday morning between 5.30 AM and 6.30AM. ","Used to enhance the benefic effects and curtail the malefic effects of Mars. If worshipped regularly, it improves will power and gives the person strength, both physical and emotional. It reduces mental tension and controls the temper. Very helpful for those who work in a competitive environment. Should be affixed on Tuesday morning between 5.30 AM and 6.30AM. ","Used to enhance the benefic effects and curtail the malefic effects of Mercury. If worshipped regularly, it improves the strength of nerves and gives the person control over senses. It gives wealth and all liquid assets to the person. In business it is said to increase the flow of cash. It should be affixed on a Wednesday morning between 5.30am and 6.30am. ","Used to enhance the benefic effects and curtail the malefic effects of Jupiter. If worshipped regularly, it improves the knowledge and status of the person. It gives him influence over his fellow beings and social recognition to the person. Widely worshipped by people in politics and in civil Services. Should be affixed on a Thursday morning between 5.30am and 6.30am.","Shukra i.e., Venus is the planet of beauty and luxury. Where the Shukra is very strong the person is good looking and always lives in a luxurious environment. For better looks and for improved living conditions one should affix Shri Shukra Yantra in one’s puja room or in sitting room. The Yantra should be facing north and one is supposed to stand in front of it daily in the morning and pray for a better life. The Mantra of Shukra i.e., Om! Dram Dreem Droom Sah Shukrai Namah should be chanted 108 times daily in a single sitting to get enhanced results of this Yantra. ","Used to enhance the benefic effects and curtail the malefic effects of Saturn. If worshipped regularly then it gives the person a strong connection with the omnipotent, thus it enhances the spiritual power. The person gets creative in more than one ways. It improves the social status and gives one authority. People varying from Sadhus to executives worship it for its special benefits. ","Shri Rahu Yantra: Used to enhance the benefic effects and curtail the malefic effects of Rahu. If worshipped regularly it enables a person to control his enemies and defeat them if they try to harm him. It enhances the hidden capabilities in a person. It gives a boost in professional life and makes the person highly successful in rising above competition. ","Shri Ketu Yantra, Code: AY 09 Used to enhance the benefic effects and curtail the malefic effects of Rahu. If worshipped regularly one can get the force of luck on his side. It can bring unqualified success in all walks of life. It also gives physical health and attractiveness. Those interested in profits from lotteries, races etc and also those in the glamour business like modeling media, etc should worship it","Shri Baglamukhi Mahayantra, This is a Yantra, which is used to demolish enemies. If affixed at place of work, it gives complete victory over competitors. Widely used for victory in elections and court cases, it should be hung on a wall facing the entrance on Tuesday after praying to God to finish all enemies ","Vastu Dosh Nivaran Shri Sudershan Yantra, The ancient rishis understood that man by nature is very changeable and will not always live and work as per the rules of Vastu. But by not doing so, he shall be punished by the Vastu Dev. Hence they evolved a Vastu Dosh Nivaran Yantra, which if affixed at the entrance of the house and forgiveness is asked for any mistakes in vastu setting, the native lives happily despite Vastu problems ","If Kuber is pleased and controlled than it bestows abundance of wealth to mankind. The king of Lanka, Ravana had controlled Kuber, which is why his country was called the country of Gold (Sone ki Lanka). Kuber Yantra can be placed both in residential and commercial places. It has to face North and requires regular worship for giving due rewards. The statues of Kuber even guard the building of the Reserve Bank of India in New Delhi. ","Navgrah Yantram, While various gems are used to enhance the benefic power of various planets, yantras are used to control the malefic effect of various planets. The work of Navgrah Yantra, like the work of Navrattan rings and pendants, is to remove the malefic effect of various planets and bring a harmony in their working. This is hung at the entrance of the house or in the place of worship. It brings the vibrations of all the nine planets in harmony. ","Shri Shri Yantra: According to ancient Bharamanical tradition, all the positive forces of the universe to reside in Mahatripurasundri, Shri Yantra is the physical manifestation of this supreme power. This Omnipotent Yantra is used in residential, commercial and religious places with great benefit. Even the powerful Tirupati Balaji Mandir has this Shri Yantra which is worshipped daily with full ","Shri. Mahamritunjay Yantra: As per the Hindu tradition Lord Brahma is the creator he is the karka for birth, Lord Vishnu is the karka for the one who keeps as alive by fulfilling all our needs and Lord Shiva gives death he takes you out of this Mritu Loka. The jap of Mahamritunjay mantra and keeping the Mahamritunjay Yantra and doing its puja pacifies the Lord Shiva and the bestows on a person long life. If a person is sick or is on death bed then the use of Mahamritunjay Mantra and the use of Shri Mahamritunjay Yantra gives one health and longnity. The Yantra should be appeared in the sitting rooms or pooja room facing east. ","Lord Vishnu is the palan karka (he takes care of us while me are alive). His wife Devi Laxmi is the one who gives as money which makes the life on this earth Possible Laxmi puja and keeping Mahalaxmi Yantra in your residence and at the work place brings the blessings of Devi Laxmi who then bestows on the individual’s money jewels and all other kind of wealth. The present day professional who hardly gets time for regular pooja and anusthan should at least keep this Yantra in his residence and workplace and see the difference that comes to his level of material wealth. ","A wealthy man is respected in his town, the king is respected in his country and a man of knowledge is respected our entire world. Devi Saraswati bestows knowledge so all nice people pray to Devi Saraswati to attain a sharp intellect and also all kinds of knowledge. One should appear this Yantra in the sitting room or Puja room on a Thursday. The Yantra has to be east facing and a garland of yellow flowers should decorate it daily. ","Shri Kaalsarp Yantra, If all the planets are placed on the either ride of the Rahu – Ketu is a then Kalsarp Yoga is formed. It is said that this is formed in the horoscopes of those people who had troubled the creatures living below the surface of earth (Patal Lok). One who has this Yoga in ones horoscope has a long and tough struggle in his life. One of the remedies is to keep the Kalsarp Yantra in the place of worship and pray to it for forgiveness. ","Durga Bisa Yantra is of Shri Durga Ambe Maa. Durga Bisa Yantra is a powerful Yantra for attaining desires, to remove difficulties and to conquer enemies. Durga Bisa Yantra bestows wealth and property and protects the person from all sorts of dangers. Worship of this Yantra as per Adhayaya 4 sloka 17 of Durga Saptashati removes poverty. It also gives results when used in neck, arm or on body. Durga Bisa Yantra is most famous Yantra is very effective. If used with faith it is the most powerful Yantra","Durga Ambaji Yantra is of Shri Durga Ambe Maa. Durga Ambajiyan Yantra is worshipped particularly during Navratras and on Ashtami tithi . Durga Ambaji Yantra is a powerful Yantra for attaining desires, to remove difficulties and to conquer enemies Durga Ambaji Yantra bestows wealth and property and protects the person from all sorts of dangers. Worship of this Yantra as per Adhayaya 4 sloka 17 of Durga Saptashati removes poverty. It also gives result when used in neck, arm or on body.","Intellectual ability and wealth are bestowed by the grace of Lord Ganesha. He is the personification of a ghristh ( A family man ) who has the knowledge of all the scriptures and commercial system, has wealth and also has the weapons to fight the evil if the need be. He brings success, peace and wealth to one who has faith in him. Shri Ganpati Yantra should be affixed in all rooms except the bedrooms and also in the place of work. Doing so one is able to bring the positive forces of cosmos towards oneself.","Shri Gayatri Yantra, Code: YANTRA FOR SPIRITUAL POWER & PEACE OF MIND. Gayatri Devi is Maha Devi and deity of Shri Gayatri Yantra. The Yantra contains Panchmukhi or Ashat Mukhi. Gayatri Devi seated on a Lotus. For worship this Yantra is kept in a house, business place. By the proper use of this Yantra, one cannot be affected by souls, spirits and is blessed with health, wealth and happiness. In case a house or man is afflicted by souls and spirits, water should be kept in bowl near the Yantra and water be sprinkled in house for a week, all spirits etc., will vanish. The man should take rice milk and water during the days of pooja. Light ghee lamp day and night continuously. near this yantra for best effects. ","Shri Hanuman Yantra, Fearless and Powerful – Capable of taking on full armies single handily but still devoted and disciplined. This is the nature of Hanumanji He has the powers of the wind god (Pawan putra). Regular puja of Hanumanji fasting on Tuesday and placing a Shri Hanuman Yantra both at the place of worship and in one’s sitting room brings fearless nature, all the evil forces remain at bey and the person is victorious in all his pursuits. ","Kali Yantra bestows on the sadhaka fulfillment of all his desires, wealth, and comforts of life and is used for Mohan or Vashikaran purposes. Mahakali Yantra is very powerful and tested Yantra. This Yantra is embossed on copper plate and is Gold plated . One should keep the image of Kali while performing puja on it. According to Swangam Tantra, Kali Tantra and Bhairo Tantra this Yantra is known as swanam Yantra, kali Yantra, Mahakali Yantra or Bhadra Kali Yantra. Goddess Kali in a fierce pose is deity of this Yantra. This Yantra is composed of a Central Point (bindu) within five inverted triangles, three circles, eight petals inside and outsides, whole Yantra enclosed in four doors, is written on silver or copper plates. Special pooja of this Yantra is performed on Eighth day of Chaitra, Asar, Sharavan and Magh Months of Vikrami year. This Yantra bestows fulfillment of desires, wealth, and comforts of life, Lot of power is infused after pooja and Yantra is capable of controlling enemies to not do any ","Markandeya Puran contains many miraculous uses about Nav Durga. Nav Durga Yantra is one of them. Worship of this Yantra with faith gives progress in life and eliminates difficult problems. This Yantra incorporates many mantras of Mother Bhagwati that make it highly effective. In morning, keep the Yantra before you and worship it in a normal manner. Then recite Mother Durga's navarna mantra. The whole atmosphere of the premise will get cleaned. A special worship of this Yantra is carried out on Bhaumavasya before sunrise. Its details are available in Durga Saptashati.","Shri Santan Gopal Yantra, Code: AY26 Yantra for getting a child and a safe progeny. All your Prayers for progeny would be answered through this Yantra. This Yantra also prevents miscarriage during pregnancy. This Yantra gives protection to the children – gives them better health and helps them acquire better education.    "]
    
    lazy var daantext = ["","This Yantra is made of copper in the shape of Hindi four and 40rt Gomedh is affixed into it. You need to take an iron bowl and fill it with mustard oil and then immerse the Yantra into the bowl on a Saturday. Then on next Saturday pour the oil in a peepal tree take a black cloth 1.25 meters and wrap 1.25kg black urad, 1.25 kg black til and place the Rahu Yantra and the iron bowl in it. Then before 12 Noon it should be denoted to holy flowing water with complete devotion. This paanch mahadan is said to reduce the evil effects of Rahu which are caused due to its placement, dasha, antardasha or transit. ","A snake made of white metal and in it 11rt cat’s eye is affixed. On a Saturday evening a mixture of white and black Til, broken urad dal, a white metal bowl and the Ketu Dan Yantra are taken and all the things are wrapped in a multi coloured cloth and are donated to flowing Holy water. This donation paves the way for spiritual growth and for salvation. This brings instant relief to people suffering from the affliction of Ketu and to those suffering due to the malefic effects of Ketu in dasha, antardasha or transit.","This Yantra is made of white metal in the shape of Hindi eight and 44 rt Lajwarat (Lapis Lazuli) is affixed into it. This is then immersed in an iron bowl on Saturday after sun set. On next Saturday morning before 12 noon take out this Yantra from the bowl. Pour the mustered oil near a peepal Tree and tie the Shani Yantra iron bowl, 1.5 kg Black Til in 1.25mt black cloth and donate it with complete donation to running Holy Water This panch mahadan reduces the evil effects of Shani (SATURN) caused due to placement, transit and Dasha of this evil planet. ","Mangal Dan Yantra is made with 5.5 rt of Red Coral affixed in copper. This Mangal Dan Yantra is dipped in a copper bowl containing pure Ghee on Tuesday morning then on next Tuesday before 12 noon the Yantra, copper bowl, sindur made out of crushed stones, channa dal are wrapped in 1.25 metres of orange cloth and immersed in running Holy water. This Dan is said to reduce the evil effects of Mangal and brings good results for people with mangal dosh in their or their spouse’s horoscope. It reduces the malefic results of Mangal in its dasha, antardasha or transit. This is also said to increase the fortunes of people who have faith in Hanumanji. ","Chandra Dan Yantra, code: ADY 05. This is the highest of all Dan’s. If we find someone to be fortunate in this birth it is said that he must have donated pearls in triveni (the point where the Ganga, Yamuna and mythological Saraswati joined) in his last birth. For this pearls are set in silver in the form of a triangle and put in a silver bowl full of rice on a Monday after sunset. Then on next Monday before 12 noon 1.25 kg rice, white til, pearl Yantra and bowl are tied in 1.25mt cloth and donated to flowing water with respect. This Panch Mahadan gives the results of a long penance done to get favours from the Gods. "]
    
    
    lazy var locketText = ["","Yantras can be defined as visual mantras which have been used since the days of Yajur Veda and Brahminical Text to remove the malefic effects of certain evil forces (Rakshisi Shakti) and to Strengthen the positive forces (Davik Shakti) ","Mahalaxmi Yantra is quite rare. It is the quickest method of getting wealth. This Yantra is capable of converting a beggar into a king. Recite Kanakdhara Stotra before Mahalaxmi Yantra. Its worship and installation consecration are difficult. That is why very few people are able to use it. Otherwise this Yantra can do wonders as fas as money is concerned. On the eve of Dipawali, keep this Yantra before you in Leo ascendant worship with lamp and incense and recite Shree Sookt and Kanakdhara 16 times and worship Goddess Laxmi. Laxmi will reside in the home of worshipper for one year. ","Venus is the planet of beauty and luxury. Where the Shukra is very strong the person is good looking and always lives in a luxurious environment. For better looks and for improved living conditions one should affix Shri Shukra Yantra in one’s puja room or in sitting room. The Yantra should be facing north and one is supposed to stand in front of it daily in the morning and pray for a better life. The Mantra of Shukra i.e., Om! Dram Dreem Droom Sah Shukra Namah should be chanted 108 times daily in a single sitting to get enhanced results of this Yantra.        ","Used to enhance the benefic effects and curtail the malefic effects of Saturn. If worshipped regularly then it gives the person a strong connection with the omnipotent, thus it enhances the spiritual power. The person gets creative in more than one ways. It improves the social status and gives one authority. People varying from Sadhus to executives worship it for its special benefits.        ","Used to enhance the benefic effects and curtail the malefic effects of Moon. If worshipped regularly, then it improves the creative powers and gives the person imagination. It helps in weeding out tensions that are not called for. Should be affixed on Monday morning between 5.30 AM and 6.30AM.        ","The ancient rishis understood that man by nature is very changeable and will not always live and work as per the rules of Vastu. But by not doing so, he shall be punished by the Vastu Dev. Hence they evolved a Vastu Dosh Nivaran Yantra, which if affixed at the entrance of the house and forgiveness is asked for any mistakes in vastu setting, the native lives happily despite Vastu problems        ","Used to enhance the benefic effects and curtail the malefic effects of Jupiter. If worshipped regularly, it improves the knowledge and status of the person. It gives him influence over his fellow beings and social recognition to the person. Widely worshipped by people in politics and in civil Services. Should be affixed on a Thursday morning between 5.30am and 6.30am.        ","If there is loss in business, thieves, fire etc are posing problems then this Yantra gives profits and one progress soon Vyapar Vriddhi Yantra is kept in the central point of business premise after proper worship. It must be worshipped daily. If there are persistent losses in business, keep this Yantra before you and recite riddhi-siddhi mantra 11000 times for progress in business, Profits will follow soon.        ","Sarva Manokamna Prapti Yantra This is one of those Yantras which are used by Mantrics and Tantrics alike. It links the sub conscious with the cosmos through Brahama Randra i.e., the spiritual cord ( a thread like energy link above the head which is very thin in ordinary people and thick like rope in case of people who are in Spiritual Practices ) .        ","Used to enhance the benefic effects and curtail the malefic effects of Mars. If worshipped regularly, it improves will power and gives the person strength, both physical and emotional. It reduces mental tension and controls the temper. Very helpful for those who work in a competitive environment. Should be affixed on Tuesday morning between 5.30 AM and 6.30AM.        ","Used to enhance the benefic effects and curtail the malefic effects of Rahu. If worshipped regularly one can get the force of luck on his side. It can bring unqualified success in all walks of life. It also gives physical health and attractiveness. Those interestedin profits from lotteries, races etc and also those in the glamour business like modeling media, etc should worship it.        ","Used to enhance the benefic effects and curtail the malefic effects of Rahu. If worshipped regularly it enables a person to control his enemies and defeat them if they try to harm him. It enhances the hidden capabilities in a person. It gives a boost in professional life and makes the person highly successful in rising above competition.        ","Used to enhance the benefic effects and curtail the malefic effects of the Sun. If worshipped regularly, it gives success in all walks of life and bestows prosperity in a person's life. This improves ones level of concentration and thereby improves the status of the person. It gives public recognition and enhancement of status. It is widely used by businessmen, people in services and those in politics. Should be affined facing East on a Sunday morning between 5.30 AM to 6.30 AM        ","If Kuber is pleased and controlled than it bestows abundance of wealth to mankind. The king of Lanka, Ravana had controlled Kuber, which is why his country was called the country of Gold (Sone ki Lanka). Kuber Yantra can be placed both in residential and commercial places. It has to face North and requires regular worship for giving due rewards. The statues of Kuber even guard the building of the Reserve Bank of India in New Delhi.    "]
    
      }
class YantraTableCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
}
















