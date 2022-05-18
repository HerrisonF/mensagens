//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Herrison Feres on 18/05/22.
//  Copyright © 2022 Eric Brito. All rights reserved.
//

import UIKit

protocol ColorPickerDelegate: class {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var viColor: UIView!
    
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    weak var delegate: ColorPickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func chooseColor(_ sender: Any) {
        dismiss(animated: true)
        delegate?.applyColor(color: viColor.backgroundColor!)
    }
    
    @IBAction func changeColor(_ sender: Any) {
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
}
