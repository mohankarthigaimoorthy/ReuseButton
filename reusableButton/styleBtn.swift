//
//  styleBtn.swift
//  reusableButton
//
//  Created by Mohan K on 15/02/23.
//

import UIKit

struct styleBtnViewModel {
    let primaryText: String
    let secondaryText: String
}
final class styleBtn: UIButton {
    private let primaryLbl: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .semibold)
       
    return label
    }()
    
    private let secondaryLbl: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.textColor = .black
        label.font = .systemFont(ofSize: 10, weight: .medium)
    return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(primaryLbl)
        addSubview(secondaryLbl)
        clipsToBounds = true
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
        backgroundColor = .systemCyan
       
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(with viewModel: styleBtnViewModel) {
        primaryLbl.text = viewModel.primaryText
        secondaryLbl.text = viewModel.secondaryText
    }
    override func layoutSubviews() {
    super.layoutSubviews()
        
        primaryLbl.frame = CGRect(x: 0,
                                  y: 0,
                                  width: frame.size.width,
                                  height: frame.size.height / 2)
      secondaryLbl.frame = CGRect(x: 0,
                                  y: frame.size.height / 2,
                                  width: frame.size.width,
                                  height: frame.size.height / 2)
    }
}
