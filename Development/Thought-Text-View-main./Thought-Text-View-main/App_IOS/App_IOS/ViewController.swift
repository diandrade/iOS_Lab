//
//  ViewController.swift
//  App_IOS
//
//  Created by iOSLab on 30/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var thoughtLabel: UILabel!
    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var tableView: UITableView!
    
    var thoughts: [String] = []
    
    private func setup(){
        thoughtLabel.isHidden = true
        
        inputTextView.layer.borderColor = UIColor.gray.cgColor
        inputTextView.layer.borderWidth = 1
        inputTextView.layer.cornerRadius = 10
        inputTextView.delegate = self
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }

    @IBAction func think(_ sender: Any) {
        thoughtLabel.isHidden = false
        thoughts.append(inputTextView.text)
        tableView.reloadData()
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        thoughts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ThoughtCell else {
            return UITableViewCell()
        }
        cell.setup(text: thoughts[indexPath.row])
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
}

