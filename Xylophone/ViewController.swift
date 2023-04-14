//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

//as partes rosa são conceitos rápidos de programação.
//as partes roxas vêm da documentação da interface de programação de apps (API) da apple.
//segurar option e clicar nas partes do código para obter informação. A short version; the quick documentation.

//Scope descreve quando uma função pode ser acessada ou usada.

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {

        playSound(soundName: sender.currentTitle!)
                
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        //Bundle é uma representação do código e dos recursos armazenados no disco.
        //Main Bundle serve pra localizar o recurso de arquivo de som.
        //Definiu-se URL como o local do <"C">
        //Depois colocou esse arquivo dentro do <player>.
                
    }
}

