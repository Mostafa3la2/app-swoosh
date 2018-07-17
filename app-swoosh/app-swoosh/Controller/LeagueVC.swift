//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Mostafa Alaa on 7/14/18.
//  Copyright © 2018 Mostafa Alaa. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var nextButton: BorderButton!
    
    var player : Player!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        player = Player()
    }

    @IBAction func onNextTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    

    
    @IBAction func onSelectionTapped(_ sender: BorderButton) {
        print("here")
        nextButton.isEnabled = true
        player.desiredLeague=(sender.titleLabel?.text)!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC=segue.destination as? SkillVC{
            skillVC.player=player
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

}
