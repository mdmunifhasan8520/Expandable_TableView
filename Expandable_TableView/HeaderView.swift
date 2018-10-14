//
//  HeaderView.swift
//  Expandable_TableView
//
//  Created by MacBook Pro on 10/12/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit

protocol HeaderDelegate {
    func calHeader(idx: Int)
}

class HeaderView: UIView {
    
    var secIndex: Int?
    var delegate: HeaderDelegate?

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(btn)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    lazy var btn: UIButton = {
        let btn = UIButton(frame: CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: self.frame.width, height: self.frame.height))
        btn.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        btn.titleLabel?.textColor = UIColor.white
        //btn.layer.cornerRadius = 10
        //btn.clipsToBounds = true
        btn.layer.cornerRadius = 20
        btn.addTarget(self, action: #selector(onClickHeaderView), for: .touchUpInside)
        return btn
        
    }()
    
    @objc func onClickHeaderView() {
        if let idx = secIndex {
            delegate?.calHeader(idx: idx)
        }
    }

    
}
