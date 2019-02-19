//
//  ViewController.swift
//  SubviewInTableViewExperiment
//
//  Created by Gior Fasolini on 19/02/19.
//  Copyright © 2019 Gior Fasolini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dummyTableView: UITableView!
    
    var dummyArray: [String] = ["Ferlix Yanto Wang", "Ramada Atyusa", "Steven Muliamin", "Michael Fernanlie"]
    var tempIndex: Int?
    var lastClicked: UIImageView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func imageTapped(sender: UITapGestureRecognizer) {
        
        let indexPath = IndexPath(row: (sender.view?.tag)!, section: 0)
        let cell = self.dummyTableView.cellForRow(at: indexPath) as! CellTableViewCell
        
        guard let currentClicked = sender.view as? UIImageView else {return}
        
        
        
        if self.lastClicked == currentClicked {
            for subviews in cell.contentView.subviews  {
                if let tag = subviews as? TagBox {
                    tag.removeFromSuperview()
                }
            }
            self.lastClicked = nil
            return
        }
        
        

        self.lastClicked = currentClicked
        
        
        print("TAG = \(sender.view?.tag)")
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        label.font = UIFont(name: "Helvetica Neue", size: 12)
        label.textColor = UIColor.white
        label.textAlignment = .left
        label.text = self.dummyArray[(sender.view?.tag)!]
        label.isUserInteractionEnabled = false
        
        let subview = TagBox(frame: CGRect(x: self.view.frame.width/2, y: self.view.frame.height/2, width: 100, height: 30), boxName: label)
        subview.backgroundColor = UIColor.black
        
 
        
        cell.contentView.addSubview(subview)
        
//        cell.prepareForReuse()
//        sender.view?.addSubview(subview)
        
    }

    
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.dummyTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellTableViewCell
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped))
        cell.dummyImageView.addGestureRecognizer(tap)
        cell.dummyImageView.tag = indexPath.row
        self.tempIndex = indexPath.row
        
        return cell
    }
    
    
}
