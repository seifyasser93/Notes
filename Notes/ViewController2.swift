//
//  ViewController2.swift
//  Notes
//
//  Created by Seif Yasser on 9/13/18.
//  Copyright © 2018 Seif Yasser. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tvDetails: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buSave(_ sender: Any) {
        let newNote = MyNotes(context: note)
        newNote.title = tfTitle.text
        newNote.datails = tvDetails.text
        newNote.dateAndtime = NSDate()
        
        appDelegate.saveContext()
        
        tfTitle.text = ""
        tvDetails.text = ""
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
