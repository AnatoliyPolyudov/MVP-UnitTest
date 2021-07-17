//
//  ModuleBilder.swift
//  MVP+UnitTest
//
//  Created by Анатолий on 17.07.2021.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModuleBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let model = Person(firstName: "David", lastName: "Blain")
        let view = MainView()
        let presenter = MainPresenter(view: view, person: model)
        view.presenter = presenter
        return view
    }
}
