//
//  markerdetail.swift
//  idraw
//
//  Created by Hasanul Isyraf on 08/01/2018.
//  Copyright © 2018 Hasanul Isyraf. All rights reserved.
//

import UIKit
import Firebase
import GooglePlaces
import GoogleMaps


protocol sendDataToViewProtocol {
    func inputData(marker:GMSMarker)
    func reloadmarker()
    func gotomanholesummary(marker:GMSMarker)
}
class markerdetail: UIViewController {
    
    @IBOutlet weak var copy_longitude: UIButton!
    @IBOutlet weak var copy_latitude: UIButton!
    @IBOutlet weak var deletebutton: UIButton!
    @IBOutlet weak var createbylabel: UILabel!
    @IBOutlet weak var tvtittle: UILabel!
    @IBOutlet weak var imageviewmarker: UIImageView!
    @IBOutlet weak var displaycopied: UILabel!
    var delegate:sendDataToViewProtocol? = nil
    var marker1 = GMSMarker()

    override func viewDidLoad() {
        super.viewDidLoad()

       
        //get userdata from the marker
        createbylabel.text = marker1.userData as? String
        
        let storage = FIRStorage.storage()
        let storageRef = storage.reference()
        let createdby: String = marker1.userData as! String
        // Create a reference to the file you want to download
        let islandRef = storageRef.child("remote_camera/"+createdby+"/"+marker1.title!+".jpg")
        
       
        
        imageviewmarker?.autoresizingMask = UIViewAutoresizing(rawValue: UIViewAutoresizing.RawValue(UInt8(UIViewAutoresizing.flexibleBottomMargin.rawValue) | UInt8(UIViewAutoresizing.flexibleHeight.rawValue) | UInt8(UIViewAutoresizing.flexibleRightMargin.rawValue) | UInt8(UIViewAutoresizing.flexibleLeftMargin.rawValue) | UInt8(UIViewAutoresizing.flexibleTopMargin.rawValue) | UInt8(UIViewAutoresizing.flexibleWidth.rawValue)))
        imageviewmarker?.contentMode = UIViewContentMode.scaleAspectFit
        
        //using firebase UI to view image directly from firebase referrence ui
        imageviewmarker?.sd_setImage(with: islandRef)
        
        
        // set gesture recognizer for image view
        imageviewmarker.isUserInteractionEnabled = true
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
       
        imageviewmarker.addGestureRecognizer(tapGestureRecognizer)
        
        
        tvtittle.text = marker1.title
        
      
    }
    
    func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        
         if(delegate != nil){
       // let tappedImage = tapGestureRecognizer.view as! UIImageView
        print("tapped")
      
            delegate?.inputData(marker: marker1)
            self.dismiss(animated: true, completion: nil)
           

        
        }
    }

    @IBAction func deletemarker(_ sender: Any) {
        
        
        
        let currentuser:String = (FIRAuth.auth()?.currentUser?.email)!
        let creatdby: String = marker1.userData as! String
        
        if(creatdby == currentuser || (marker1.title?.contains("Cabinet_"))! || (marker1.title?.contains("Manhole_"))! || (marker1.title?.contains("DP_"))!){
            var ref: FIRDatabaseReference!
            
            ref = FIRDatabase.database().reference()
            
            
            ref.child("photomarkeridraw").child((FIRAuth.auth()?.currentUser?.uid)!).child(marker1.title!).removeValue()
            
        }
        
        if(creatdby == currentuser && !(marker1.title?.contains("Cabinet_"))! && !(marker1.title?.contains("Manhole_"))! && !(marker1.title?.contains("DP_"))!){
            var ref: FIRDatabaseReference!
            
            ref = FIRDatabase.database().reference()
            
            
            ref.child("sketch").child((FIRAuth.auth()?.currentUser?.uid)!).child(marker1.title!).removeValue()
            
        }
        if(delegate != nil){
            // let tappedImage = tapGestureRecognizer.view as! UIImageView
           
            
            delegate?.reloadmarker()
            self.dismiss(animated: true, completion: nil)
            
            
            
        }
        
    }
    
    @IBAction func copylatitude(_ sender: Any) {
        
        let latitudestr:Double = marker1.position.latitude
        let b:String = String(format:"%f", latitudestr)
        UIPasteboard.general.string = b
        displaycopied.text = "\(b) copied"
        
    }
    
    @IBAction func copylongitude(_ sender: Any) {
        
        
          let longitudestr:Double = marker1.position.longitude
        
        let b:String = String(format:"%f", longitudestr)
        UIPasteboard.general.string = b
        
        displaycopied.text = "\(b) copied"
        
     
    }
   
    @IBAction func gotowall(_ sender: Any) {
        
        
        if(delegate != nil){
            // let tappedImage = tapGestureRecognizer.view as! UIImageView
            print("tapped")
            
            delegate?.gotomanholesummary(marker: marker1)
            self.dismiss(animated: true, completion: nil)
            
        }
    }
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


