//
//  HomeViewController.swift
//  Corona-Hangman
//
//  Created by Arjun Dureja on 2020-05-23.
//  Copyright © 2020 Arjun Dureja. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
        titleLabel.font = UIFont(name: "ChalkboardSE-Bold", size: 50)
        titleLabel.widthAnchor.constraint(equalToConstant: 475).isActive = true

        titleLabel.numberOfLines = 0
        titleLabel.textColor = .black
        
        imageView.image = UIImage(named: "image8")
        
        playBtn.layer.cornerRadius = 10
        playBtn.titleLabel?.font = UIFont(name: "ChalkboardSE-Bold", size: 17)
    }
    
    @IBAction func playClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "game")
        navigationController?.pushViewController(vc!, animated: true)
    }
}
