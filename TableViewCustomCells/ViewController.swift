//
//  ViewController.swift
//  TableViewCustomCells
//
//  Created by Sitaram Gupta on 8/16/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    let myData = ["First", "Second", "Third", "Four", "Five"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        
        cell.myLable?.text = myData[indexPath.row]
     
        cell.myImageView?.backgroundColor = .red
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = myData[indexPath.row]
        print("you selected "+name)
    }
}

@IBDesignable public class PaddingLable: UILabel{
    @IBInspectable var topInset: CGFloat = 0
    @IBInspectable var bottomInset: CGFloat = 0
    @IBInspectable var leftInset: CGFloat = 0
    @IBInspectable var rightInset: CGFloat = 0
    
    public override func drawText(in rect: CGRect) {
        let inserts = UIEdgeInsets.init(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: inserts))
    }
    
    public override var intrinsicContentSize: CGSize{
        let size = super.intrinsicContentSize
        
        return CGSize(width: size.width+leftInset+rightInset, height: size.height+topInset+bottomInset)
    }
}

