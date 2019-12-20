//
//  FAQViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/18/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class FAQViewController: UIViewController {
    let titlesF = ["￼What 3rd-party-applications","What","What","What"]
         
    @IBOutlet weak var bigView: UIView!{
        didSet{
           bigView.layer.cornerRadius = 25
           bigView.clipsToBounds = true
        }
    }
    @IBOutlet weak var faqTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        showMenuAndBack()
         faqTableView.register(UINib(nibName: "FAQTableViewCell", bundle: nil), forCellReuseIdentifier: "FAQTableViewCell")

        // Do any additional setup after loading the view.
    }
    

   

    
    
}



//MARK:- tableview SetUp
extension FAQViewController : UITableViewDataSource , UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FAQTableViewCell", for: indexPath) as! FAQTableViewCell
        cell.questionTf.text = titlesF[indexPath.row]
        cell.delegate = self
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
                
         }
       
      
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionHeader = Bundle.main.loadNibNamed("TitleOfSectionTableViewCell", owner: self, options: nil)?.first as! TitleOfSectionTableViewCell
        sectionHeader.groupName.text = "Group \(section+1)"
        return sectionHeader
    }
}

//MARK:- DropDown Delegate
extension FAQViewController: QuestionDelegate {
    func faqView(question: DesignableUITextField, answeer: UILabel) {
         if answeer.text == "" {
                question.rightImage = #imageLiteral(resourceName: "minus")
                answeer.text = "Tiger Connect integrates with a range of cccv اsystems across a broad spectrum of vev"
                UIView.animate(withDuration: 0.5) {
                    self.view.layoutIfNeeded()
                }
            } else {
                question.rightImage = #imageLiteral(resourceName: "add")
                answeer.text = ""
            }
            
            faqTableView.estimatedRowHeight = 60
            faqTableView.rowHeight = UITableView.automaticDimension
            faqTableView.reloadData()
            
        }
 }
    
    

