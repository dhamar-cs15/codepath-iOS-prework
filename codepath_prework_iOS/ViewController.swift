//
//  ViewController.swift
//  codepath_prework_iOS
//
//  Created by Dhamar Carrillo on 7/17/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var myNameLabel: UILabel!

    @IBOutlet var universityLabel: UILabel!
    
    @IBOutlet var careerLabel: UILabel!
    
    @IBAction func revealUniversity(_ sender: UIButton) {
        
        self.universityLabel.backgroundColor = UIColor(red: 0.5, green: 0, blue: 0, alpha: 0.75)
        self.universityLabel.textColor = .white
        self.universityLabel.text = "Harvard University"
        
    }
    
    @IBAction func revealCareer(_ sender: UIButton) {
        
        self.careerLabel.backgroundColor = UIColor(red: 0, green: 0.5, blue: 0.6, alpha: 0.7)
        self.careerLabel.textColor = .white
        self.careerLabel.text = "Computer Graphics Animator"
        
    }
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func sliderAction(_ sender: UISlider) {
        let redText = CGFloat(redSlider.value) / 255
        let greenText = CGFloat(greenSlider.value) / 255
        let blueText = CGFloat(blueSlider.value) / 255
        
        self.universityLabel.textColor = UIColor(red: redText, green: greenText, blue: blueText, alpha: 0.75)
        self.myNameLabel.textColor = UIColor(red: redText, green: greenText, blue: blueText, alpha: 0.75)
        self.careerLabel.textColor = UIColor(red: redText, green: greenText, blue: blueText, alpha: 0.75)
    }
    
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        
        self.myNameLabel.textColor = .white
        
    }
        
    func changeColor() -> UIColor{
        
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
}
