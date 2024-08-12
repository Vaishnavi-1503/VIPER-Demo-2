//
//  Router.swift
//  ViperDemo
//
//  Created by vaishanavi.sasane on 12/08/24.
//

import Foundation

class Router: PresenterToRouterProtocol {
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
        
        // View class variable
        ref.presenterObj = presenter
        
        // Presenter class variables
        ref.presenterObj?.interactor = Interactor()
        ref.presenterObj?.view = ref
        
        // Interactor class variable
        ref.presenterObj?.interactor?.presenter = presenter
    }
}
