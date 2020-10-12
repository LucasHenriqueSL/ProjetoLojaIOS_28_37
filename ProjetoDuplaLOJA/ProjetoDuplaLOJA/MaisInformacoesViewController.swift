//
//  MaisInformacoesViewController.swift
//  ProjetoDuplaLOJA
//
//  Created by COTEMIG on 30/09/20.
//  Copyright © 2020 AndreHuberViniciusMartins. All rights reserved.
//

import UIKit

class MaisInformacoesViewController: UIViewController {

    @IBOutlet weak var descricaoJogo: UILabel!
    @IBOutlet weak var tituloJogo: UILabel!
    @IBOutlet weak var imagemJogo: UIImageView!
    @IBOutlet weak var buttonComprar: UIButton!
    
    var imagem : UIImage?
    var nome : String?
    var desc: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagemJogo.image = imagem
        tituloJogo.text = nome
        descricaoJogo.text = desc

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
