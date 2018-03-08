//
//  VNHexKeyboardView.swift
//  VNHexKeyboardDemo
//
//  Created by Varun Naharia on 07/03/18.
//  Copyright © 2018 Varun Naharia. All rights reserved.
//

import UIKit

class VNHexKeyboardView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var view: UIView!
    @IBOutlet weak var btnZero: UIButton!
    @IBOutlet weak var btnOne: UIButton!
    @IBOutlet weak var btnTwo: UIButton!
    @IBOutlet weak var btnThree: UIButton!
    @IBOutlet weak var btnFour: UIButton!
    @IBOutlet weak var btnFive: UIButton!
    @IBOutlet weak var btnSix: UIButton!
    @IBOutlet weak var btnSeven: UIButton!
    @IBOutlet weak var btnEight: UIButton!
    @IBOutlet weak var btnNine: UIButton!
    @IBOutlet weak var btnA: UIButton!
    @IBOutlet weak var btnB: UIButton!
    @IBOutlet weak var btnC: UIButton!
    @IBOutlet weak var btnD: UIButton!
    @IBOutlet weak var btnE: UIButton!
    @IBOutlet weak var btnF: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnReturn: UIButton!
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUpView()
        xibSetup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        self.setUpView()
    }
    
    override public func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.view.isOpaque = false
        view.isOpaque = false
        
        updateView()
    }
    
    func updateView() {
        
    }
    
    func setUpView() {
        setupKey(button: btnA)
        setupKey(button: btnB)
        setupKey(button: btnC)
        setupKey(button: btnD)
        setupKey(button: btnE)
        setupKey(button: btnF)
        setupKey(button: btnZero)
        setupKey(button: btnOne)
        setupKey(button: btnTwo)
        setupKey(button: btnThree)
        setupKey(button: btnFour)
        setupKey(button: btnFive)
        setupKey(button: btnSix)
        setupKey(button: btnSeven)
        setupKey(button: btnEight)
        setupKey(button: btnNine)
        setupKey(button: btnBack)
    }
    
    func xibSetup() {
        view = loadViewFromNib()
        // use bounds not frame or it'll be offset
        view.frame = bounds
//        view.backgroundColor = self.backgroundColor
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
        self.updateView()
    }
    
    func loadViewFromNib() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "VNHexKeyboardView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
    }
    
    @IBAction func zeroAction(_ sender: Any) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"0")
            }
            
        }
    }
    
    @IBAction func oneAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"1")
            }
        }
    }
    
    @IBAction func twoAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"2")
            }
        }
    }
    
    @IBAction func threeAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"3")
            }
            
        }
    }
    
    @IBAction func fourAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"4")
            }
            
        }
    }
    
    @IBAction func fiveAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"5")
            }
            
        }
    }
    
    @IBAction func sixAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"6")
            }
        }
    }
    
    @IBAction func sevenAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"7")
            }
        }
    }
    
    @IBAction func eightAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"8")
            }
        }
    }
    
    @IBAction func nineAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"9")
            }
        }
    }
    
    @IBAction func aAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"A")
            }
        }
    }
    
    @IBAction func bAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"B")
            }
        }
    }
    
    @IBAction func cAction(_ sender: Any) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"C")
            }
        }
    }
    
    @IBAction func dAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"D")
            }
        }
    }
    
    @IBAction func eAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"E")
            }
        }
    }
    
    @IBAction func fAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            if let textRange = activeTextField.selectedTextRange {
                activeTextField.replace(textRange, withText:"F")
                
            }
        }
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            activeTextField.deleteBackward()
        }
    }
    
    @IBAction func returnAction(_ sender: UIButton) {
        if let activeTextField = UIResponder.currentFirst() as? UITextField {
            activeTextField.resignFirstResponder()
        }
    }
    
    func setupKey(button:UIButton) {
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 0.0
        button.layer.masksToBounds = false
        button.layer.cornerRadius = 4.0
    }
    
    
}

public extension UIResponder {
    
    private struct Static {
        static weak var responder: UIResponder?
    }
    
    public static func currentFirst() -> UIResponder? {
        Static.responder = nil
        UIApplication.shared.sendAction(#selector(UIResponder._trap), to: nil, from: nil, for: nil)
        return Static.responder
    }
    
    @objc private func _trap() {
        Static.responder = self
    }
}

