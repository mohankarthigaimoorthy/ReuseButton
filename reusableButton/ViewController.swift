//
//  ViewController.swift
//  reusableButton
//
//  Created by Mohan K on 15/02/23.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let singleBtn = styleBtn(frame: CGRect(x: 0,
                                               y: 0,
                                               width: 250,
                                               height: 50))
        view.addSubview(singleBtn)
        singleBtn.center = view.center
        singleBtn.configure(with: styleBtnViewModel(primaryText: "start your progress", secondaryText: "7 days upto free trial"))
        singleBtn.addTarget(self, action: #selector(ViewController.tapAction), for: .touchUpInside)
    }
    
    @objc func tapAction(sender: UIButton!)
    {
        let login = newViewController()
        self.navigationController?.pushViewController(login, animated: true)
    }
}
