//
//  addViewController.swift
//  pokedex
//
//  Created by Daniel Ra on 7/20/16.
//  Copyright © 2016 Yung Kim. All rights reserved.
//

import UIKit

class AddTableViewController: UITableViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    weak var delegate: PokemonDetailsViewsControllerDelegate?
    
//    @IBOutlet weak var pokemonTextField: UITextField!
    var pokemons = ["pickachu", "charmander", "squirtle", "bulbasaur"]
//    var index: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let cancel = UIBarButtonItem(barButtonSystemItem: .Cancel, target: self, action: #selector (AddTableViewController.back))
        navigationItem.setLeftBarButtonItem(cancel, animated: false)
        
        navigationItem.hidesBackButton = true
//        print("index \(index)")
//        getPokemonData()
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the count of people
        return pokemons.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Create a generic cell
        //        let cell = UITableViewCell()
        
        let cell = tableView.dequeueReusableCellWithIdentifier("PokemonCell") as! PokemonCell
        //        cell.indexNumberLabel.text = "\(indexPath.row+1)"
        //        cell.indexNumberLabel.tag = indexPath.row+1
        
                cell.nameLabel?.text = pokemons[indexPath.row]
        
        //        print(pokemons[indexPath.row].name)
        // return the cell so that it can be rendered
        return cell
    }
    func back() {
        print("going back...")
        navigationController?.popViewControllerAnimated(true)
    }
//    func done() {
    
//        let pokemon = pokemonTextField.text!
//        delegate?.pokemonDetailsViewsController(self, didFinishAddingPokemon: pokemon)
//        back()
//    }
//    func getPokemonData() {
//        let url = NSURL(string: "https://pokeapi.co/api/v2/pokemon/?limit=151")
//        // Create an NSURLSession to handle the request tasks
//        let session = NSURLSession.sharedSession()
//        // Create a "data task" which will request some data from a URL and then run a completion handler after it is done
//        let task = session.dataTaskWithURL(url!, completionHandler: {
//            data, response, error in
//            // We get data, response, and error back. Data contains the JSON data, Response contains the headers and other information about theresponse, and Error contains an error if one occured
//                // A "Do-Try-Catch" block involves a try statement with some catch block for catching any errors thrown by the try statement.
//            do {
//                // Try converting the JSON object to "Foundation Types" (NSDictionary, NSArray, NSString, etc.)
//                let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers)
//                //                print(jsonResult)
//                print(jsonResult["results"])
//                let arr = jsonResult["results"] as! NSArray
//                for element in arr {
//                    let dictionary = element as! NSDictionary
//                    let pokemon = Pokemon(dictionary: dictionary)
//                    //                    print(pokemon)
//                    //                    print(pokemon.name)
//                    
////                    self.pokemons.append(pokemon)
//                }
//                self.tableView.reloadData()
//            } catch {
//                print("Something went wrong")
//            }
//        })
//        task.resume()
//    }
}