//
//  ViewController.swift
//  kadai2
//
//  Created by 坂本龍哉 on 2020/11/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var number1TextField: UITextField!
    @IBOutlet private var number2TextField: UITextField!
    @IBOutlet private var calculateSegmentedControl: UISegmentedControl!
    @IBOutlet private var calculateButton: UIButton!
    @IBOutlet private var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateButton(_ sender: Any) {
    let number1 = Double(number1TextField.text!) ?? 0
    let number2 = Double(number2TextField.text!) ?? 0
    var kekka :Double = 0

        switch calculateSegmentedControl.selectedSegmentIndex{
    case 0:
        kekka = number1 + number2
    case 1:
        kekka = number1 - number2
    case 2:
        kekka = number1 * number2
    case 3:
        guard number2 != 0 else{
            answerLabel.text = "割る数には０以外の数字を入れてください"
            return
        }
        kekka = number1 / number2

      default:
        print("該当なし")
    }
        answerLabel.text = String(kekka)
    }
}

