//
//  newViewController.swift
//  reusableButton
//
//  Created by Mohan K on 15/02/23.
//

import UIKit

class newViewController: UIViewController {

    var actionButton: ActionButton!
    var OnlineBtn: onelineBtn!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()

        OnlineBtn = onelineBtn(frame: CGRect(x: 0,
                                              y: 0,
                                              width: 200,
                                              height: 50))
        
        view.addSubview(OnlineBtn)
        OnlineBtn.center = view.center
        OnlineBtn.setInviteType(buttonType: .Add)
        OnlineBtn.backgroundColor = .systemTeal
    }
    
    func setupButtons() {
        let google = ActionButtonItem(title: "google", image: UIImage(named: "a1"))
        google.action = { mohan in
            self.view.backgroundColor = UIColor.green
            self.actionButton.toggleMenu()
            self.OnlineBtn.setInviteType(buttonType: .Joined)

        }
        let twitter = ActionButtonItem(title: "twitter", image: UIImage(named: "a2"))
        twitter.action = { item in
            self.view.backgroundColor = UIColor.systemTeal
            self.actionButton.toggleMenu()
            self.OnlineBtn.setInviteType(buttonType: .Added)
        }
        let linkedin = ActionButtonItem(title: "linkedin", image: UIImage(named: "a4"))
        linkedin.action = { item in
            self.view.backgroundColor = UIColor.systemTeal
            self.actionButton.toggleMenu()
            self.OnlineBtn.setInviteType(buttonType: .Accept)
        }
        let facebook = ActionButtonItem(title: "facebook", image: UIImage(named: "a3"))
        facebook.action = { item in
            self.view.backgroundColor = UIColor.systemBlue
            self.actionButton.toggleMenu()
            self.OnlineBtn.setInviteType(buttonType: .Added)
        }
        let instagram = ActionButtonItem(title: "instagram", image: UIImage(named: "a6"))
        instagram.action = { item in
            self.view.backgroundColor = UIColor.systemPink
            self.actionButton.toggleMenu()
            self.OnlineBtn.setInviteType(buttonType: .Accept)
        }
        let pepul = ActionButtonItem(title: "pepul", image: UIImage(named: "a5"))
        pepul.action = { item in
            self.view.backgroundColor = UIColor.red
            self.actionButton.toggleMenu()
            self.OnlineBtn.setInviteType(buttonType: .Joined)
        }
        actionButton = ActionButton(attachedToView: self.view, items: [google,twitter,linkedin,facebook,pepul,instagram])
        actionButton.setTitle("+", forState: UIControl.State())
        actionButton.backgroundColor = .blue
        actionButton.action = { button in button.toggleMenu()}
    }
    
    
}
