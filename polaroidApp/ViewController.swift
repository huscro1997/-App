//
//  ViewController.swift
//  polaroidApp
//
//  Created by 曾曜澤 on 2022/5/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changePicImage: UIImageView!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet var nextPage: UIView!
    @IBOutlet weak var nextpic1: UIView!
    @IBOutlet weak var nextPicImage: UIImageView!
    @IBOutlet weak var shadow: UIView!
    
    var index = Int(0)
    let size = ["3:4", "1:1", "4:5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nextPage.isHidden = true
    }
    @IBAction func pic1(_ sender: Any) {
        changePicImage.image = UIImage(named: "Cat1")
        nextPicImage.image = UIImage(named: "Cat1")
    }
    @IBAction func pic2(_ sender: Any) {
        changePicImage.image = UIImage(named: "Cat2")
        nextPicImage.image = UIImage(named: "Cat2")
    }
    @IBAction func pic3(_ sender: Any) {
        changePicImage.image = UIImage(named: "Cat3")
        nextPicImage.image = UIImage(named: "Cat3")
    }
    @IBAction func pic4(_ sender: Any) {
        changePicImage.image = UIImage(named: "Cat4")
        nextPicImage.image = UIImage(named: "Cat4")
    }
    @IBAction func pic5(_ sender: Any) {
        changePicImage.image = UIImage(named: "Cat5")
        nextPicImage.image = UIImage(named: "Cat5")
    }
    
    @IBAction func sizeChange(_ sender: Any) {
        index = ( 1 + index ) % 3
        sizeLabel.text = size[index]
        //相片比例
        if index == 2 {
            changePicImage.frame = CGRect(x: 30, y: 125, width: 330, height: 413)
            nextpic1.frame = CGRect(x: 20, y: 115, width: 350, height: 500)
            shadow.frame = CGRect(x: 25, y: 123, width: 350, height: 500)
            nextPicImage.frame = CGRect(x: 10, y: 20, width: 330, height: 413)
        } else if index == 1 {
            changePicImage.frame = CGRect(x: 30, y: 125, width: 330, height: 330)
            nextpic1.frame = CGRect(x: 20, y: 115, width: 350, height: 450)
            shadow.frame = CGRect(x: 25, y: 123, width: 350, height: 450)
            nextPicImage.frame = CGRect(x: 10, y: 20, width: 330, height: 330)
        } else {
            changePicImage.frame = CGRect(x: 30, y: 125, width: 330, height: 440)
            nextpic1.frame = CGRect(x: 20, y: 115, width: 350, height: 520)
            shadow.frame = CGRect(x: 25, y: 123, width: 350, height: 520)
            nextPicImage.frame = CGRect(x: 10, y: 20, width: 330, height: 440)
        }
    }
    @IBAction func next(_ sender: Any) {
        nextPage.isHidden = false
        self.nextpic1.frame.origin.y = -635
        UIView.animate(withDuration: 3) {
            self.nextpic1.frame.origin.y = 115
        }
        self.shadow.frame.origin.y = -627
        UIView.animate(withDuration: 3) {
            self.shadow.frame.origin.y = 123
        }
    }
    @IBAction func back(_ sender: Any) {
        nextPage.isHidden = true
    }
    
}
