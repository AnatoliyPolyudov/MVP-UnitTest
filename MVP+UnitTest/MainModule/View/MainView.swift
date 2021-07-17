//
//  ViewController.swift
//  MVP+UnitTest
//
//  Created by Анатолий on 17.07.2021.
//

import UIKit

class MainView: UIViewController {
    @IBOutlet weak var greetingLabel: UILabel!
    var presenter: MainViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func didTapButton(_ sender: UIButton) {
        presenter.showGreeting()
    }
}

extension MainView: MainViewProtocol {
    func setGreeting(greeting: String) {
        greetingLabel.text = greeting
    }
}
