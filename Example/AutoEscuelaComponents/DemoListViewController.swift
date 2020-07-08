//
//  ViewController.swift
//  AutoEscuelaComponents
//
//  Created by Apostol123 on 06/11/2020.
//  Copyright (c) 2020 Apostol123. All rights reserved.
//

import UIKit

class DemoListViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    let demoViewControllers = [ActionButtonViewController()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        configureNaviationController()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configureNaviationController() {
        self.title = "Demo List View Controller"
    }
}

extension  DemoListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        demoViewControllers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"customCell" , for: indexPath)
        
        cell.textLabel?.text = demoViewControllers[indexPath.row].demoTitle
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(demoViewControllers[indexPath.row], animated: true)
    }
    
}

