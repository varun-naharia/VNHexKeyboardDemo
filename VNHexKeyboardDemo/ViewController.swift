//
//  ViewController.swift
//  VNHexKeyboardDemo
//
//  Created by Varun Naharia on 07/03/18.
//  Copyright © 2018 Varun Naharia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet var keyboard: VNHexKeyboardView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtInput.inputView = keyboard
        self.addDoneButtonOnKeyboard()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Add these delegates in class  , UIPickerViewDelegate, UIPickerViewDataSource
    @IBOutlet var picker: UIPickerView!
    
    
    func addDoneButtonOnKeyboard()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 50))
        doneToolbar.barStyle = UIBarStyle.blackTranslucent
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.done, target: self, action: #selector(self.doneButtonAction))
        var items:[UIBarButtonItem] = []
        items.append(done)
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        self.txtInput.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction()
    {
        self.txtInput.resignFirstResponder()
    }

}




