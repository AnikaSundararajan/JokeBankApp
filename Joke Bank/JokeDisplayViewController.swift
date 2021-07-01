//
//  JokeDisplayViewController.swift
//  Joke Bank
//
//  Created by Anika on 6/17/21.
//  Copyright © 2021 Anika Sundararajan. All rights reserved.
//

import UIKit

class JokeDisplayViewController: UIViewController {
    
    var joke = Joke()

    @IBOutlet weak var JokeDisplay: UILabel!
    @IBOutlet weak var AnswerDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = joke.title
        JokeDisplay.text = joke.question
        AnswerDisplay.text = joke.answer
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
