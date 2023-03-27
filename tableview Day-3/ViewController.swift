//
//  ViewController.swift
//  tableview Day-3
//
//  Created by R94 on 27/03/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    

    var image = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10")]
    
    var name = ["Black","Pink","Yellow","cat T shirt","Purple","Sky","Grey","BTS T shirt","Red","Yellow Style"]
    var number = ["1","2","3","4","5","6","7","8","9","10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return number.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.l1.text = number[indexPath.row]
        cell.l2.text =  name[indexPath.row]
        cell .img.image = image[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func naviget(number:String,name:String,image:UIImage)
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController1")  as! ViewController1
        navigation.number = number
        navigation.name = name
        navigation.image = image
        navigationController?.pushViewController(navigation, animated: true)
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        naviget(number: number[indexPath.row], name: name[indexPath.row], image: image[indexPath.row]!)
    }
}

