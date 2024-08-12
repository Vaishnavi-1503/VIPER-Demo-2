//
//  Protocol.swift
//  ViperDemo
//
//  Created by vaishanavi.sasane on 12/08/24.
//

import Foundation

protocol InteractorToPresenterProtocol {
    func sendDataToPresenter(result: String)
}

protocol PresenterToViewProtocol {
    func sendDataToView(result: String)
}

// Any Protocoller

protocol ViewToPresenterProtocol {
    /// Since it's a middle layer, it works bidirectionally, so data transmission occurs both to the view and to the interactor.
    var view: PresenterToViewProtocol? { get set }
    var interactor: PresenterToInteractorProtocol? { get set }
    
    func addition(num1: String, num2: String)
    func multiplication(num1: String, num2: String)
}

protocol PresenterToInteractorProtocol {
    /// Data transmission from the interactor to the presenter is unidirectional.
    var presenter: InteractorToPresenterProtocol? { get set}
    
    func add(num1: String, num2: String)
    func multiply(num1: String, num2: String)
}

// We need to handle authorization in the Router for the protocols.

protocol PresenterToRouterProtocol {
    static func createModule(ref: ViewController)
}
