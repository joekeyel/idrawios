//
//  manholedetails.swift
//  idraw
//
//  Created by Hasanul Isyraf on 05/03/2018.
//  Copyright © 2018 Hasanul Isyraf. All rights reserved.
//

import UIKit
import Firebase

class manholedetails: UIViewController {
    
    var wall1dict = [String : AnyObject]()
    var wallnumbername : String? = nil
    var manholename : String? = nil

    @IBOutlet weak var manholelabel: UILabel!
    
    @IBOutlet weak var walllabel: UILabel!
    @IBOutlet dynamic var H2: UILabel!
    @IBOutlet dynamic var H1: UILabel!
    @IBOutlet dynamic var H3: UILabel!
    @IBOutlet dynamic var H4: UILabel!
    @IBOutlet dynamic var H5: UILabel!
    @IBOutlet dynamic var H6: UILabel!
    @IBOutlet dynamic var H7: UILabel!
    @IBOutlet dynamic var H8: UILabel!
    @IBOutlet dynamic var G1: UILabel!
    @IBOutlet dynamic var G2: UILabel!
    @IBOutlet dynamic var G3: UILabel!
    @IBOutlet dynamic var G4: UILabel!
    @IBOutlet dynamic var G5: UILabel!
    @IBOutlet dynamic var G6: UILabel!
    @IBOutlet dynamic var G7: UILabel!
    @IBOutlet dynamic var G8: UILabel!
    @IBOutlet dynamic var F1: UILabel!
    @IBOutlet dynamic var F2: UILabel!
    @IBOutlet dynamic var F3: UILabel!
    @IBOutlet dynamic var F4: UILabel!
    @IBOutlet dynamic var F5: UILabel!
    @IBOutlet dynamic var F6: UILabel!
    @IBOutlet dynamic var F7: UILabel!
    @IBOutlet dynamic var F8: UILabel!
    @IBOutlet dynamic var E1: UILabel!
    @IBOutlet dynamic var E2: UILabel!
    @IBOutlet dynamic var E3: UILabel!
    @IBOutlet dynamic var E4: UILabel!
    @IBOutlet dynamic var E5: UILabel!
    @IBOutlet dynamic var E6: UILabel!
    @IBOutlet dynamic var E7: UILabel!
    @IBOutlet dynamic var E8: UILabel!
    @IBOutlet dynamic var D1: UILabel!
    @IBOutlet dynamic var D2: UILabel!
    @IBOutlet dynamic var D3: UILabel!
    @IBOutlet dynamic var D4: UILabel!
    @IBOutlet dynamic var D5: UILabel!
    @IBOutlet dynamic var D6: UILabel!
    @IBOutlet dynamic var D7: UILabel!
    @IBOutlet dynamic var D8: UILabel!
    @IBOutlet dynamic var C1: UILabel!
    @IBOutlet dynamic var C2: UILabel!
    @IBOutlet dynamic var C3: UILabel!
    @IBOutlet dynamic var C4: UILabel!
    @IBOutlet dynamic var C5: UILabel!
    @IBOutlet dynamic var C6: UILabel!
    @IBOutlet dynamic var C7: UILabel!
    @IBOutlet dynamic var C8: UILabel!
    @IBOutlet dynamic var B1: UILabel!
    @IBOutlet dynamic var B2: UILabel!
    @IBOutlet dynamic var B3: UILabel!
    @IBOutlet dynamic var B4: UILabel!
    @IBOutlet dynamic var B5: UILabel!
    @IBOutlet dynamic var B6: UILabel!
    @IBOutlet dynamic var B7: UILabel!
    @IBOutlet dynamic var B8: UILabel!
    @IBOutlet dynamic var A1: UILabel!
    @IBOutlet dynamic var A2: UILabel!
    @IBOutlet dynamic var A3: UILabel!
    @IBOutlet dynamic var A4: UILabel!
    @IBOutlet dynamic var A5: UILabel!
    @IBOutlet dynamic var A6: UILabel!
    @IBOutlet dynamic var A7: UILabel!
    @IBOutlet dynamic var A8: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if(wallnumbername != nil){
            
            manholelabel.text = manholename
            walllabel.text = wallnumbername
            
          
            
            
            A1.isUserInteractionEnabled = true
            let TA1 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            A1.addGestureRecognizer(TA1)
            
            A2.isUserInteractionEnabled = true
            let TA2 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            A2.addGestureRecognizer(TA2)
            
            A3.isUserInteractionEnabled = true
            let TA3 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            A3.addGestureRecognizer(TA3)
            
            
            A4.isUserInteractionEnabled = true
            let TA4 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            A4.addGestureRecognizer(TA4)
            
            A5.isUserInteractionEnabled = true
            let TA5 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            A5.addGestureRecognizer(TA5)
            
            A6.isUserInteractionEnabled = true
            let TA6 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            A6.addGestureRecognizer(TA6)
            
            A7.isUserInteractionEnabled = true
            let TA7 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            A7.addGestureRecognizer(TA7)
            
            A8.isUserInteractionEnabled = true
            let TA8 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            A8.addGestureRecognizer(TA8)
            
            
            //b
            B1.isUserInteractionEnabled = true
            let TB1 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            B1.addGestureRecognizer(TB1)
            
            B2.isUserInteractionEnabled = true
            let TB2 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            B2.addGestureRecognizer(TB2)
            
            B3.isUserInteractionEnabled = true
            let TB3 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            B3.addGestureRecognizer(TB3)
            
            
            B4.isUserInteractionEnabled = true
            let TB4 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            B4.addGestureRecognizer(TB4)
            
            B5.isUserInteractionEnabled = true
            let TB5 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            B5.addGestureRecognizer(TB5)
            
            B6.isUserInteractionEnabled = true
            let TB6 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            B6.addGestureRecognizer(TB6)
            
            B7.isUserInteractionEnabled = true
            let TB7 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            B7.addGestureRecognizer(TB7)
            
            B8.isUserInteractionEnabled = true
            let TB8 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            B8.addGestureRecognizer(TB8)
            
            //c
            
            C1.isUserInteractionEnabled = true
            let TC1 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            C1.addGestureRecognizer(TC1)
            
            C2.isUserInteractionEnabled = true
            let TC2 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            C2.addGestureRecognizer(TC2)
            
            C3.isUserInteractionEnabled = true
            let TC3 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            C3.addGestureRecognizer(TC3)
            
            
            C4.isUserInteractionEnabled = true
            let TC4 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            C4.addGestureRecognizer(TC4)
            
            C5.isUserInteractionEnabled = true
            let TC5 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            C5.addGestureRecognizer(TC5)
            
            C6.isUserInteractionEnabled = true
            let TC6 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            C6.addGestureRecognizer(TC6)
            
            C7.isUserInteractionEnabled = true
            let TC7 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            C7.addGestureRecognizer(TC7)
            
            C8.isUserInteractionEnabled = true
            let TC8 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            C8.addGestureRecognizer(TC8)
            
            
            
            //d
            D1.isUserInteractionEnabled = true
            let TD1 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            D1.addGestureRecognizer(TD1)
            
            D2.isUserInteractionEnabled = true
            let TD2 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            D2.addGestureRecognizer(TD2)
            
            D3.isUserInteractionEnabled = true
            let TD3 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            D3.addGestureRecognizer(TD3)
            
            
            D4.isUserInteractionEnabled = true
            let TD4 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            D4.addGestureRecognizer(TD4)
            
            D5.isUserInteractionEnabled = true
            let TD5 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            D5.addGestureRecognizer(TD5)
            
            D6.isUserInteractionEnabled = true
            let TD6 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            D6.addGestureRecognizer(TD6)
            
            D7.isUserInteractionEnabled = true
            let TD7 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            D7.addGestureRecognizer(TD7)
            
            D8.isUserInteractionEnabled = true
            let TD8 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            D8.addGestureRecognizer(TD8)
            
            //e
            
            E1.isUserInteractionEnabled = true
            let TE1 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            E1.addGestureRecognizer(TE1)
            
            E2.isUserInteractionEnabled = true
            let TE2 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            E2.addGestureRecognizer(TE2)
            
            E3.isUserInteractionEnabled = true
            let TE3 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            E3.addGestureRecognizer(TE3)
            
            
            E4.isUserInteractionEnabled = true
            let TE4 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            E4.addGestureRecognizer(TE4)
            
            E5.isUserInteractionEnabled = true
            let TE5 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            E5.addGestureRecognizer(TE5)
            
            E6.isUserInteractionEnabled = true
            let TE6 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            E6.addGestureRecognizer(TE6)
            
            E7.isUserInteractionEnabled = true
            let TE7 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            E7.addGestureRecognizer(TE7)
            
            E8.isUserInteractionEnabled = true
            let TE8 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            E8.addGestureRecognizer(TE8)
            
            
            //f
            
            F1.isUserInteractionEnabled = true
            let TF1 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            F1.addGestureRecognizer(TF1)
            
            F2.isUserInteractionEnabled = true
            let TF2 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            F2.addGestureRecognizer(TF2)
            
            F3.isUserInteractionEnabled = true
            let TF3 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            F3.addGestureRecognizer(TF3)
            
            
            F4.isUserInteractionEnabled = true
            let TF4 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            F4.addGestureRecognizer(TF4)
            
            F5.isUserInteractionEnabled = true
            let TF5 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            F5.addGestureRecognizer(TF5)
            
            F6.isUserInteractionEnabled = true
            let TF6 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            F6.addGestureRecognizer(TF6)
            
            F7.isUserInteractionEnabled = true
            let TF7 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            F7.addGestureRecognizer(TF7)
            
            F8.isUserInteractionEnabled = true
            let TF8 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            F8.addGestureRecognizer(TF8)
            
            
            //g
            
            G1.isUserInteractionEnabled = true
            let TG1 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            G1.addGestureRecognizer(TG1)
            
            G2.isUserInteractionEnabled = true
            let TG2 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            G2.addGestureRecognizer(TG2)
            
            G3.isUserInteractionEnabled = true
            let TG3 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            G3.addGestureRecognizer(TG3)
            
            
            G4.isUserInteractionEnabled = true
            let TG4 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            G4.addGestureRecognizer(TG4)
            
            G5.isUserInteractionEnabled = true
            let TG5 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            G5.addGestureRecognizer(TG5)
            
            G6.isUserInteractionEnabled = true
            let TG6 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            G6.addGestureRecognizer(TG6)
            
            G7.isUserInteractionEnabled = true
            let TG7 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            G7.addGestureRecognizer(TG7)
            
            G8.isUserInteractionEnabled = true
            let TG8 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            G8.addGestureRecognizer(TG8)
            
            
            //h
            
            H1.isUserInteractionEnabled = true
            let TH1 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            H1.addGestureRecognizer(TH1)
            
            H2.isUserInteractionEnabled = true
            let TH2 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            H2.addGestureRecognizer(TH2)
            
            H3.isUserInteractionEnabled = true
            let TH3 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            H3.addGestureRecognizer(TH3)
            
            
            H4.isUserInteractionEnabled = true
            let TH4 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            H4.addGestureRecognizer(TH4)
            
            H5.isUserInteractionEnabled = true
            let TH5 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            H5.addGestureRecognizer(TH5)
            
            H6.isUserInteractionEnabled = true
            let TH6 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            H6.addGestureRecognizer(TH6)
            
            H7.isUserInteractionEnabled = true
            let TH7 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            H7.addGestureRecognizer(TH7)
            
            H8.isUserInteractionEnabled = true
            let TH8 = UITapGestureRecognizer(target: self, action: #selector(manholedetails.tapduct(sender:)))
            H8.addGestureRecognizer(TH8)
            
            loadduct(manhole: manholename!, wallnumber: wallnumbername!)
        }

    }
    
   
    
    
    func tapduct(sender:UITapGestureRecognizer){
        
        
        if let theLabel = (sender.view as? UILabel)?.text {
            print(theLabel)
        }
        
        
        if let color = (sender.view as? UILabel)?.backgroundColor {
          
            
            if(color != UIColor.red && color != UIColor.yellow && color != UIColor.green && color != UIColor.black){
                sender.view?.backgroundColor = UIColor.white
            }
           
            if(color == UIColor.white){
                sender.view?.backgroundColor = UIColor.blue
                
            }
            
        }
        
        
    }

    func loadduct(manhole:String, wallnumber:String){
        
        
        let referencephotomarkerinitial = FIRDatabase.database().reference().child("Nesductidutilization").child(manhole)
        referencephotomarkerinitial.observeSingleEvent(of: .value, with: { (snapshot) in
            
         
            
            for rest2 in snapshot.children.allObjects as! [FIRDataSnapshot] {//Nest Duct level
                
          
                
                for rest3 in rest2.children.allObjects as! [FIRDataSnapshot] {//duct level
                    
                    
                    
                    if(rest3.key.range(of:wallnumber) != nil){
                        
                     
                       
                        
                        let wallduct = rest3.key
                        let duct  = wallduct.replacingOccurrences(of: wallnumber, with: "")
                        print(duct)
                        

                        if let occupancy = rest3.childSnapshot(forPath: "occupancy").value as? String{
                            print("\(occupancy) \n")
                            
                            if(occupancy == "AVAILABLE"){
                            let outletName = duct
                            // Then you can access it via a key path (aka string)
                            if let myProperty = self.value(forKey: outletName) as? UILabel {
                                myProperty.backgroundColor = UIColor.green
                            }
                            }
                            
                            
                            if(occupancy == "FULLY UTILIZED"){
                                let outletName = duct
                                // Then you can access it via a key path (aka string)
                                if let myProperty = self.value(forKey: outletName) as? UILabel {
                                    myProperty.backgroundColor = UIColor.red
                                }
                            }
                            
                            if(occupancy == "PARTIALLY UTILIZED"){
                                let outletName = duct
                                // Then you can access it via a key path (aka string)
                                if let myProperty = self.value(forKey: outletName) as? UILabel {
                                    myProperty.backgroundColor = UIColor.yellow
                                }
                            }
                            
                            
                            if(occupancy == "ABANDON"){
                                let outletName = duct
                                // Then you can access it via a key path (aka string)
                                if let myProperty = self.value(forKey: outletName) as? UILabel {
                                    myProperty.backgroundColor = UIColor.black
                                }
                            }
                        }
                        
                        
                       
                        
                    }
                    
                   
                    
                    
                    
                    
                }
                
                
                
                
            }
            
          
            
           
          
            
        }) { (nil) in
            print("error firebase listner")
        }
        
        
    }

}
