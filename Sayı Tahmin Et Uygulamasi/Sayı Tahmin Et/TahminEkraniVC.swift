//
//  TahminEkraniVC.swift
//  Sayı Tahmin Et
//
//  Created by Hakan Küçükaslan on 1.08.2023.
//

import UIKit

class TahminEkraniVC: UIViewController {

    @IBOutlet weak var textfieldGirdi: UITextField!
    @IBOutlet weak var labelYardim: UILabel!
    @IBOutlet weak var labelKalanHak: UILabel!
    
    var rastgeleSayi:Int?
    var kalanHak = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rastgeleSayi = Int.random(in: 0...100)
        
        print("Rastgele Sayı : \(rastgeleSayi!)")
        
    }
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if let gelenVeri = sender as? Bool {
                let gidilecekVC = segue.destination as! SonucEkraniVC
                
                gidilecekVC.sonuc = gelenVeri
            
        }

    }
    
    @IBAction func tahminet(_ sender: Any) {
        labelYardim.isHidden = false
        kalanHak-=1
        
        if let veri = textfieldGirdi.text {
            
            if let tahmin = Int(veri) {
                
                if kalanHak != 0 {
                    
                    if tahmin == rastgeleSayi! {
                        let sonuc = true
                        performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
                    }
                    
                    if tahmin > rastgeleSayi! {
                        labelYardim.text = "Azalt"
                        labelKalanHak.text = "Kalan Hak :\(kalanHak)"
                    }
                    if tahmin < rastgeleSayi! {
                        labelYardim.text = "Arttır"
                        labelKalanHak.text = "Kalan Hak :\(kalanHak)"
                    }
                    
                }else{
                    let sonuc = false
                    performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
                }
                textfieldGirdi.text = ""
            }
        }
    }
    
}
