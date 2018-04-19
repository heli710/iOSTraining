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
    @IBOutlet private weak var acBtn: UIButton!
    
    var result = 0.0
    var firstStr = ""
    var secondStr = ""
    var isCalculating = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTargetForNumberBtn()
        addTargetForActionBtn()
    }

    func addTargetForNumberBtn () {
        zeroBtn.addTarget(self, action: #selector(numberBtnDidPressed(_ :)), for: .touchUpInside)
        oneBtn.addTarget(self, action: #selector(numberBtnDidPressed(_ :)), for: .touchUpInside)
        twoBtn.addTarget(self, action: #selector(numberBtnDidPressed(_ :)), for: .touchUpInside)
        threeBtn.addTarget(self, action: #selector(numberBtnDidPressed(_ :)), for: .touchUpInside)
        fourBtn.addTarget(self, action: #selector(numberBtnDidPressed(_ :)), for: .touchUpInside)
        fiveBtn.addTarget(self, action: #selector(numberBtnDidPressed(_ :)), for: .touchUpInside)
        sixBtn.addTarget(self, action: #selector(numberBtnDidPressed(_ :)), for: .touchUpInside)
        sevenBtn.addTarget(self, action:#selector(numberBtnDidPressed(_ :)), for: .touchUpInside)
        eightBtn.addTarget(self, action: #selector(numberBtnDidPressed(_ :)), for: .touchUpInside)
        nineBtn.addTarget(self, action: #selector(numberBtnDidPressed(_ :)), for: .touchUpInside)
        
    }
    
    func addTargetForActionBtn() {
        addBtn.addTarget(self, action: #selector(actionBtnDidPressed(_ :)), for: .touchUpInside)
        subBtn.addTarget(self, action: #selector(actionBtnDidPressed(_ :)), for: .touchUpInside)
        divideBtn.addTarget(self, action: #selector(actionBtnDidPressed(_ :)), for: .touchUpInside)
        pointBtn.addTarget(self, action: #selector(actionBtnDidPressed(_ :)), for: .touchUpInside)
        multiplyBtn.addTarget(self, action: #selector(actionBtnDidPressed(_ :)), for: .touchUpInside)
        acBtn.addTarget(self, action: #selector(actionBtnDidPressed(_:)), for: .touchUpInside)
    }
    
    func reset() {
        result = 0.0
        resultLbl.text = "0"
        firstStr = ""
        secondStr = ""
    }
    
    @objc func numberBtnDidPressed(_ sender: UIButton) {
        
        if isCalculating {
            secondStr += (sender.titleLabel?.text)!
            resultLbl.text = secondStr
        } else {
            
            firstStr += (sender.titleLabel?.text)!
            resultLbl.text = firstStr
        }
    }
    
    @objc func actionBtnDidPressed(_ sender: UIButton) {
        
        var firstValue = 0.0, secondValue = 0.0
        
        if firstStr != "" {
            firstValue = Double(firstStr)!
        } else {
            firstValue = 0.0
        }
        
        if secondStr != "" {
            secondValue = Double(secondStr)!
        } else {
            secondValue = 0.0
        }
        
        
        firstStr = ""
        secondStr = ""
        isCalculating = true
        
        print("first \(firstValue)")
        print("second \(secondValue)")
        
        switch sender {
        case addBtn:
            print("+")
            
            result = firstValue + secondValue
            resultLbl.text = "\(result)"
            
            
        case subBtn:
            print("-")
        case multiplyBtn:
            print("x")
        case divideBtn:
            print("/")
        case acBtn:
            reset()
        default:
            return
        }
    }
}

