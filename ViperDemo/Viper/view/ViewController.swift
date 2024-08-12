//
//  ViewController.swift
//  ViperDemo
//
//  Created by vaishanavi.sasane on 12/08/24.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet weak var txtFieldNumber2: UITextField!
    @IBOutlet weak var txtFieldNumber1: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    //MARK: Variables
    var presenterObj: ViewToPresenterProtocol?

    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.text = "0"
        Router.createModule(ref: self)
    }
    
    // MARK: - Actions
    @IBAction func btnAdd(_ sender: Any) {
        if let number1 = txtFieldNumber1.text, let number2 = txtFieldNumber2.text {
            presenterObj?.addition(num1: number1, num2: number2)
        }
    }
    
    @IBAction func btnMultiply(_ sender: Any) {
        if let number1 = txtFieldNumber1.text, let number2 = txtFieldNumber2.text {
            presenterObj?.multiplication(num1: number1, num2: number2)
        }
    }
}

/// Protocol - Presenter To View
extension ViewController: PresenterToViewProtocol {
    func sendDataToView(result: String) {
        labelResult.text = result
    }
}

