//
//  ViewController.swift
//  時差計算アプリ＊
//
//  Created by Mitsuri McClay on 11/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var anataLabel: UILabel!
    
    @IBOutlet weak var zone1: UILabel!
    
    @IBOutlet weak var zone2: UILabel!
    
    @IBOutlet weak var zone3: UILabel!
    
    @IBOutlet weak var zone4: UILabel!
    
    @IBOutlet weak var zone5: UILabel!
    
    @IBOutlet weak var zone6: UILabel!
    
    @IBOutlet weak var zone7: UILabel!
    
    @IBOutlet weak var zone8: UILabel!
    
    @IBOutlet weak var zone9: UILabel!
    
    @IBOutlet weak var zone10: UILabel!
    
    @IBOutlet weak var zone11: UILabel!
    
    @IBOutlet weak var zone12: UILabel!
    
    @IBOutlet weak var zone13: UILabel!
    
    @IBOutlet weak var zone14: UILabel!
    
    @IBOutlet weak var zone15: UILabel!
    
    @IBOutlet weak var zone16: UILabel!
    
    @IBOutlet weak var zone17: UILabel!
    
    @IBOutlet weak var zone18: UILabel!
    
    @IBOutlet weak var zone19: UILabel!
    
    @IBOutlet weak var zone20: UILabel!
    
    @IBOutlet weak var zone21: UILabel!
    
    @IBOutlet weak var zone22: UILabel!
    
    @IBOutlet weak var zone23: UILabel!
    
    @IBOutlet weak var zone24: UILabel!
    
    @IBOutlet weak var zone25: UILabel!
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var timeZoneLink: UIButton!
    
    @IBOutlet weak var zone3Info: UILabel!
    
    @IBOutlet weak var zone1Info: UILabel!
    
    @IBOutlet weak var zone2Info: UILabel!
    
    @IBOutlet weak var zone4Info: UILabel!
    
    @IBOutlet weak var zone5Info: UILabel!
    
    @IBOutlet weak var zone6Info: UILabel!
    
    @IBOutlet weak var zone7Info: UILabel!
    
    @IBOutlet weak var zone8Info: UILabel!
    
    @IBOutlet weak var zone9Info: UILabel!
    
    @IBOutlet weak var zone10Info: UILabel!
    
    @IBOutlet weak var zone11Info: UILabel!
    
    @IBOutlet weak var zone12Info: UILabel!
    
    @IBOutlet weak var zone13Info: UILabel!
    
    @IBOutlet weak var zone14Info: UILabel!
    
    @IBOutlet weak var zone15Info: UILabel!

    @IBOutlet weak var zone16Info: UILabel!
    
    @IBOutlet weak var zone17Info: UILabel!
    
    @IBOutlet weak var zone18Info: UILabel!
    
    @IBOutlet weak var zone19Info: UILabel!
    
    @IBOutlet weak var zone20Info: UILabel!
    
    @IBOutlet weak var zone21Info: UILabel!
    
    @IBOutlet weak var zone22Info: UILabel!
    
    @IBOutlet weak var zone23Info: UILabel!
    
    @IBOutlet weak var zone24Info: UILabel!
    
    @IBOutlet weak var zone25Info: UILabel!
    
    
    
    
    
    var zones:[UILabel] = []
    var zonesA:[UILabel] = []
    var zoneszones: [[UILabel]] = []
    var infos:[UILabel] = []
    var infos2:[UILabel] = []
    let spacing = 0.09
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let newSpacing = Double(spacing)
        
        infos = [zone3Info, zone1Info, zone2Info, zone4Info, zone5Info, zone6Info, zone7Info, zone8Info, zone9Info, zone10Info, zone11Info, zone12Info]
        
        infos2 = [zone13Info, zone14Info, zone15Info, zone16Info, zone17Info, zone18Info, zone19Info, zone20Info, zone21Info, zone22Info, zone23Info,zone24Info, zone25Info
    ]
        
        zones = [zone3, zone1, zone2, zone4, zone5, zone6, zone7, zone8, zone9, zone10, zone11,zone12]
        
        zonesA = [zone13, zone14, zone15, zone16, zone17, zone18, zone19, zone20, zone21, zone22, zone23,zone24, zone25]
        
        zoneszones = [zones, zonesA]
        
        setupTop()
        setUpAnata()
        setUpDatePicker()
        setUpZones()
        setUpZones2()
        setUpInfos()
        setUpInfos2()
        setUpUtc()
        
    }
    
    func setUpZones2(){
        
        var firstRun:Bool = true

        
        var bottomOfD:UIView = datePicker
        
        for a in zonesA {
            view.addSubview(a)
            
            a.translatesAutoresizingMaskIntoConstraints = false
            
            a.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: view.frame.width * -(spacing)).isActive = true
            
            if firstRun == true {
                
                a.topAnchor.constraint(equalTo: bottomOfD.bottomAnchor, constant: view.frame.height * 0.08).isActive = true
            }else{
                
                a.topAnchor.constraint(equalTo: bottomOfD.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
            }
            
            bottomOfD = a
            firstRun = false
        }
        
        
        
    }
    
    
    func setUpInfos(){
        
        var c = 0
        
      
        
        
        for i in infos {
            
            let zone = zones[c]
            
            i.translatesAutoresizingMaskIntoConstraints = false
            
            i.bottomAnchor.constraint(equalTo: zone.topAnchor).isActive = true
            
            i.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: view.frame.width * spacing).isActive = true
            
            
            
            
            c+=1
        }
        
        
    }
    
    func setUpInfos2(){
        
        var c = 0
        
        for o in infos2 {
            
            let zone2 = zonesA[c]
            
            o.translatesAutoresizingMaskIntoConstraints = false
            
            o.bottomAnchor.constraint(equalTo: zone2.topAnchor).isActive = true
            
            o.leadingAnchor.constraint(equalTo: zone2.leadingAnchor).isActive = true
            
            
            c+=1
        }
    }
    
    
    

    
    
    
    func setUpZones() {
        
        var bottomOfD:UIView = datePicker
        
        var firstRun:Bool = true
        
        for z in zones {
            
            z.translatesAutoresizingMaskIntoConstraints = false
            
       
            
            
            z.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: view.frame.width * spacing).isActive = true
            
          // z.topAnchor.constraint(equalTo: bottomOfD.bottomAnchor).isActive = true
                
           if firstRun == true {
                z.topAnchor.constraint(equalTo: bottomOfD.bottomAnchor, constant: view.frame.height * 0.08).isActive = true
            }else{
               z.topAnchor.constraint(equalTo: bottomOfD.bottomAnchor, constant: view.frame.height * 0.025).isActive = true
                
           }
        
            bottomOfD = z
            
            firstRun = false
            
        }
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        datePicked(datePicker)
        datePicker.preferredDatePickerStyle = .compact

    }
    
    @IBAction func URLTZ(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://www.724685.com/word/wd140611.htm")!
                                  as URL, options:[:],completionHandler: nil)
    }
    
   
    @IBAction func datePicked(_ sender: Any) {
        
      

        
    
        var c = 0
        
        let  worldTimes = [
            "America/Los_Angeles", "America/Boise", "America/Chicago", "America/New_York", "America/Anchorage", "Pacific/Honolulu", "America/Manaus","America/Sao_Paulo", "Atlantic/South_Georgia", "Atlantic/Azores", "Europe/London", "Europe/Berlin","Africa/Cairo","Europe/Istanbul", "Asia/Dubai","Indian/Maldives", "Asia/Dhaka","Asia/Bangkok","Asia/Hong_Kong", "Asia/Tokyo", "Pacific/Guam","Pacific/Bougainville","Pacific/Fiji", "Pacific/Tongatapu", "Pacific/Kiritimati"
        ]
        for zoneArray in zoneszones {
            for setUpDatef in zoneArray {
                
              let worldTime = worldTimes[c]
                
                
                let dateFormatZones = DateFormatter()
                
                dateFormatZones.dateFormat = "yyyy/MM/dd H:mm"
                dateFormatZones.timeZone = TimeZone.init(identifier: worldTime)
                
                setUpDatef.text  = dateFormatZones.string(from: datePicker.date)
                
                c += 1
              
            }
        }
        
                                                                
                                                
        }
   
    
    func setupTop (){
        
        
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        
        topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.frame.height * 0.01 ).isActive = true
        
    }
    
    func setUpAnata (){
        
        anataLabel.translatesAutoresizingMaskIntoConstraints = false
        
        anataLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        anataLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.frame.height * 0.07 ).isActive = true
        
        
        
    }
    
    func setUpDatePicker(){
        
        
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        
        datePicker.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: view.frame.width * 0.02).isActive = true
        
        datePicker.topAnchor.constraint(equalTo: self.topLabel.bottomAnchor, constant: view.frame.height * 0.06).isActive = true
        
        datePicker.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.55).isActive = true
    }
    
    func setUpUtc() {
        
        timeZoneLink.translatesAutoresizingMaskIntoConstraints = false
        
        timeZoneLink.titleLabel?.numberOfLines = 1
        timeZoneLink.titleLabel?.lineBreakMode = .byClipping
        
        timeZoneLink.titleLabel?.adjustsFontSizeToFitWidth = true
        
        timeZoneLink.leadingAnchor.constraint(equalTo: datePicker.trailingAnchor, constant: view.frame.width * 0.06).isActive = true
        
        timeZoneLink.bottomAnchor.constraint(equalTo: datePicker.bottomAnchor).isActive = true
        
//        timeZoneLink.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.40).isActive = true
        
       
       
    }

    
}
        
