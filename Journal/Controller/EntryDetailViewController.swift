//
//  EntryViewController.swift
//  Journal
//
//  Created by Levi Linchenko on 22/08/2018.
//  Copyright © 2018 Levi Linchenko. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    
    ///Landing pad
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let entry = entry else {return}
        //set the UI elements to object properties
        titleTextField.text = entry.title
        bodyTextView.text = entry.bodyText
        
        
        
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        
        
        guard let titleText = titleTextField.text,
            let bodyText = bodyTextView.text else {return}
        if let entry = entry {
            EntryController.shared.update(existingEntry: entry, newTitle: titleText, bodyText: bodyText)
            
        }
        else {
            EntryController.shared.addEntryWith(title: titleText, bodyText: bodyText)
        }
        navigationController?.popViewController(animated: true)
    }
    @IBAction func clearButtonTapped(_ sender: Any) {
    }
    

}
