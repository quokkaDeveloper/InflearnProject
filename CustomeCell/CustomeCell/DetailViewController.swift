//
//  DetailViewController.swift
//  CustomeCell
//
//  Created by 이규민 on 2020/02/11.
//  Copyright © 2020 quokka. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var detaildata = [String:String]()
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.layer.cornerRadius = imgView.frame.width/2
            imgView.layer.masksToBounds = true
        
        nameLabel.text = detaildata["name"]
        amountLabel.text = detaildata["amount"]
        valueLabel.text = detaildata["value"]
        
        imgView.image = UIImage(named: detaildata["image"]!)
        print(detaildata)
            
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
