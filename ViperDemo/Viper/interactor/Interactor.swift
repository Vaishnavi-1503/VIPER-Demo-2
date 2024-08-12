//
//  Interactor.swift
//  ViperDemo
//
//  Created by vaishanavi.sasane on 12/08/24.
//

import Foundation

class Interactor: PresenterToInteractorProtocol {
    var presenter: InteractorToPresenterProtocol?
    
    /// Addition of two numbers
    func add(num1: String, num2: String) {
        if let s1 = Int(num1), let s2 = Int(num2) {
            let sum = s1 + s2
            presenter?.sendDataToPresenter(result: String(sum))
        }
    }
    
    /// Multiplication of two numbers
    func multiply(num1: String, num2: String) {
        if let s1 = Int(num1), let s2 = Int(num2) {
            let mul = s1 * s2
            presenter?.sendDataToPresenter(result: String(mul))
        }
    }

}
