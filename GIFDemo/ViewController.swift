//
//  ViewController.swift
//  GIFDemo
//
//  Created by MAC on 18/01/23.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClickSDWebDemo(_ sender: Any) {
        navigationController?.pushViewController(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SelectGifVC"), animated: true)
    }
}
