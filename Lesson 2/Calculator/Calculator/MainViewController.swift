//
//  ViewController.swift
//  Calculator
//
//  Created by nguyen.thi.phuong.thaod on 4/19/18.
//  Copyright © 2018 framgiaDN. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet private weak var zeroBtn: UIButton!
    @IBOutlet private weak var oneBtn: UIButton!
    @IBOutlet private weak var twoBtn: UIButton!
    @IBOutlet private weak var threeBtn: UIButton!
    @IBOutlet private weak var fourBtn: UIButton!
    @IBOutlet private weak var fiveBtn: UIButton!
    @IBOutlet private weak var sixBtn: UIButton!
    @IBOutlet private weak var sevenBtn: UIButton!
    @IBOutlet private weak var eightBtn: UIButton!
    @IBOutlet private weak var nineBtn: UIButton!
    @IBOutlet private weak var addBtn: UIButton!
    @IBOutlet private weak var subBtn: UIButton!
    @IBOutlet private weak var multiplyBtn: UIButton!
    @IBOutlet private weak var divideBtn: UIButton!
    @IBOutlet private weak var pointBtn: UIButton!
    @IBOutlet private weak var equalBtn: UIButton!
    @IBOutlet private weak var resultLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func addTargetForButton () {
        zeroBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        oneBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        twoBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        threeBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        fourBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        fiveBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        sixBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        sevenBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        eightBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        nineBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        addBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        subBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        divideBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        pointBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        multiplyBtn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
    }
    
    func buttonDidPressed() {
        
    }
}

