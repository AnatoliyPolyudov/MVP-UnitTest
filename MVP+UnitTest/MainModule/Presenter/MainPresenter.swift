//
//  MainPresenter.swift
//  MVP+UnitTest
//
//  Created by Анатолий on 17.07.2021.
//

import Foundation

// MARK: - Output protocol
protocol MainViewProtocol: class {
    func setGreeting(greeting: String)
}

// MARK: - Input protocol
protocol MainViewPresenterProtocol: class {
    init(view: MainViewProtocol, person: Person)
    func showGreeting()
}

class MainPresenter: MainViewPresenterProtocol {
    let view: MainViewProtocol
    let person: Person
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = person.firstName + " " + person.lastName
        view.setGreeting(greeting: greeting)
    }
}
