//
//  FilmDetayViewController.swift
//  FimlerUygulamasi
//
//  Created by Hakan Küçükaslan on 15.08.2023.
//

import UIKit

class FilmDetayViewController: UIViewController {
    @IBOutlet weak var imageViewFilmResim: UIImageView!
    
    @IBOutlet weak var labelFilmAd: UILabel!
    
    @IBOutlet weak var labelFilmYil: UILabel!
    
    @IBOutlet weak var labelFilmKategori: UILabel!
    
    @IBOutlet weak var labelFilmYonetmen: UILabel!
    
    var film:Filmler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let f = film {
            imageViewFilmResim.image = UIImage(named: f.film_resim!)
            labelFilmAd.text = f.film_ad
            labelFilmYil.text = String(f.film_yil!)
            
            labelFilmKategori.text = f.kategori?.kategori_ad
            labelFilmYonetmen.text = f.yonetmen?.yonetmen_ad
            
            
        }
        
    }
    

}
