//
//  ViewController.swift
//  ProjetoDuplaLOJA
//
//  Created by COTEMIG on 23/09/20.
//  Copyright © 2020 AndreHuberViniciusMartins. All rights reserved.
//

import UIKit

struct jogos {
   let imagem: String
let nome: String
   let preco: String
    
}

class ViewController: UIViewController {
    
 
    
    @IBOutlet weak var tableView: UITableView!
    
    let listaJogos: [jogos] = [
        jogos(imagem: "gtav", nome: "GTA V", preco: "R$ 50,00"),
         jogos(imagem: "gta6", nome: "GTA 6", preco: "R$ 500,00"),
          jogos(imagem: "valorant", nome: "Valorant", preco: "R$ 0,00"),
           jogos(imagem: "watchdogs2", nome: "Watch Dogs 2", preco: "R$ 50,00"),
           
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
          tableView.dataSource = self
       tableView.delegate = self
     
        
        // Do any additional setup after loading the view.
    }
    override func  viewDidAppear(_ animated: Bool) {
        
        let UserLoggedIn = UserDefaults.standard.bool(forKey: "UserLoggedIn")
        
        if(!UserLoggedIn)
        {
            self.performSegue(withIdentifier: "loginView", sender: self);
        }
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let viewController = segue.destination as!  MaisInformacoesViewController
        
        let jogo = sender as! jogos
        viewController.nome = jogo.nome
        viewController.imagem = UIImage(named: jogo.imagem)
        viewController.desc = jogo.preco
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaJogos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let celula = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! JogosCell
        //let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! JogosCell
       
       celula.NomeGame.text = listaJogos[indexPath.row].nome
        
       celula.PrecoGame.text = listaJogos[indexPath.row].preco
        
        celula.ImagemGame.image = UIImage(named: listaJogos[indexPath.row].imagem)


         return celula
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let jogo = listaJogos[indexPath.row]
        performSegue(withIdentifier: "Segue", sender: jogo)
    }
}
    
/** extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaJogos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! JogosCell
        cell.nomeJogo.text = listaJogos[indexPath.row].nome
        cell.precoJogo.double = listaJogos[indexPath.row].preco
        cell.imagemJogo.image = UIImage(named: listaJogos[indexPath.row].imagem)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let jogo = listaJogos[indexPath.row]
        performSegue(withIdentifier: "Segue", sender: jogo)
    }
    
    func Logoutbutton(_ sender: Any) {
        
        UserDefaults.standard.set(false, forKey: "UserLoggedIn");
        UserDefaults.standard.synchronize();
        
        self.performSegue(withIdentifier: "loginView", sender: self);
        
    }
    

**/

    
    




