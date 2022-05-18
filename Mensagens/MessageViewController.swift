//
//  ViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        message = Message()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MessageColorViewController
        vc.message = message
    }
    
}

/// Para que não ficasse tão misturado com a classe acima, foi feito uma extension para controlar o textField
extension MessageViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        message.text = textField.text!
        lbMessage.text = textField.text!
        ///Esse comando faz o textfield atual abrir mão do foco,
        ///entao o teclado some
        textField.resignFirstResponder()
        return true
    }
}

extension MessageViewController: ColorPickerDelegate {
    func applyColor(color: UIColor){
        lbMessage.textColor = color
        message.textColor = color
    }
}
