//
//  onelineBtn.swift
//  reusableButton
//
//  Created by Mohan K on 15/02/23.
//

import UIKit
enum InviteButtonType {
    case Add
    case Added
    case Joined
    case Accept
    case None
}
class onelineBtn: UIButton {
    public var isBtnLoading: Bool = false
    private var btnImage: UIImage?
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    func setup(){
        self.layoutIfNeeded()
        self.layer.cornerRadius = 8
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.borderWidth = 1
    }
    
    func setInviteType(buttonType:InviteButtonType? = .Add) {
        UIView.performWithoutAnimation {
            if buttonType == .Add {
                self.layer.borderColor = UIColor.clear.cgColor
                self.setTitleColor(UIColor.white, for: .normal)
                self.backgroundColor = UIColor(named: "#018BF6")
                self.tintColor = UIColor.white
                self.setTitle(" + Add ", for: .normal)
            } else if buttonType == .Added {
                self.layer.borderColor = UIColor(named: "#018BF6")?.cgColor
                self.setTitleColor(UIColor(named: "#018BF6"), for: .normal)
                self.backgroundColor = UIColor(named: "#003A67")
                self.tintColor = UIColor(named: "#018BF6")
                self.setTitle(" ✓ Added ", for: .normal)
            } else if buttonType == .Joined {
                self.layer.borderColor = UIColor.clear.cgColor
                self.setTitleColor(UIColor(named: "#018BF6"), for: .normal)
                self.backgroundColor = UIColor.clear
                self.tintColor = UIColor(named: "#018BF6")
                self.setTitle(" Joined! 🎉 ", for: .normal)
                self.contentHorizontalAlignment = .center
            } else if buttonType == .Accept {
                self.layer.borderColor = UIColor.clear.cgColor
                self.setTitleColor(UIColor.white, for: .normal)
                self.backgroundColor = UIColor(named: "#018BF6")
                self.tintColor = UIColor.white
                self.setTitle(" Accept ", for: .normal)
            }
            self.isUserInteractionEnabled = buttonType == .Joined ? false : true
            self.layoutIfNeeded()
        }
    }
    
}
//
//class InviteActionButton: UIButton {
//
//
//
//    var indicator: UIView & IndicatorProtocol = UIActivityIndicatorView()
//
//
//    }
