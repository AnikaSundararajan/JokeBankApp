//
//  JokeTableViewController.swift
//  Joke Bank
//
//  Created by Anika on 6/17/21.
//  Copyright © 2021 Anika Sundararajan. All rights reserved.
//

import UIKit

class JokeTableViewController: UITableViewController {
    
    var jokes : [Joke] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let joke1 = Joke()
        joke1.title = "Chicken"
        joke1.question = "Q: Why did the chicken cross the road?"
        joke1.answer = "A: To get to the other side"
        
        let joke2 = Joke()
        joke2.title = "Fake Noodle"
        joke2.question = "Q: What do you call a fake noodle? "
        joke2.answer = "A: An im-pasta!"
        
        let joke3 = Joke()
        joke3.title = "Shy Farts"
        joke3.question = "Q: What do you call a guy who never farts in public?"
        joke3.answer = "A: A private tutor"
        
        let joke4 = Joke()
        joke4.title = "Friendly Ocean"
        joke4.question = "Q: How does the ocean say hello?"
        joke4.answer = "A: It waves!"
        
        jokes = [joke1, joke2, joke3, joke4]

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jokes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()

        cell.textLabel?.text = jokes[indexPath.row].title

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedJoke = jokes[indexPath.row]
        performSegue(withIdentifier: "moveToJokeDefinition", sender: selectedJoke)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as? JokeDisplayViewController {
            if let selectedJoke = sender as? Joke {
                jokeVC.joke = selectedJoke 
            }
            
        }
    }
    
}
