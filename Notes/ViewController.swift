//
//  ViewController.swift
//  Notes
//
//  Created by Seif Yasser on 9/13/18.
//  Copyright © 2018 Seif Yasser. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var notesTv: UITableView!
    
    var NotesList = [MyNotes]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadNotes()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NotesList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath) as! TableViewCell
        
        cell.setCell(note: NotesList[indexPath.row])
        return cell
    }
    
    func loadNotes () {
        let fetchRequest : NSFetchRequest<MyNotes> = MyNotes.fetchRequest()
        
        NotesList = try! note.fetch(fetchRequest)
        notesTv.reloadData()
    }

}

