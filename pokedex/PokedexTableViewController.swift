//
//  PokedexTableViewController.swift
//  pokedex
//
//  Created by Daniel Ra on 7/15/16.
//  Copyright © 2016 Daniel Ra. All rights reserved.
//

import UIKit
import CoreData

class PokedexTableViewController: UITableViewController, PokemonDetailsViewsControllerDelegate {
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    @IBOutlet weak var button: UIButton!
    var pokemons = [PokemonFound]()
    var index: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchAllPokemon()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = pokemons[indexPath.row].name
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //        index = indexPath.row+1
        //        print(indexPath)
        print(indexPath.row+1)
        index = indexPath.row+1
        
        performSegueWithIdentifier("toPokeViewSegue", sender: index)
    }
    
    @IBAction func detailsButtonPressed(sender: UIButton) {
        print(sender)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toaddsegue" {
            let controller = segue.destinationViewController as! AddTableViewController
            controller.delegate = self
        } else if segue.identifier == "tomapsegue"{
            
            //            let destination = segue.destinationViewController as! DetailsViewController
            //            print("index from prepare segue \(sender)")
            //
            //        destination.index = sender as! Int
            //      destination.delegate = self
        }
    }
    func passIndex(count: Int) {
        
        
    }
    func pokemonDetailsViewsController(controller: AddTableViewController, didFinishAddingPokemon new_pokemon: String){
        dismissViewControllerAnimated(true, completion: nil)
        let pokemon = NSEntityDescription.insertNewObjectForEntityForName("PokemonFound", inManagedObjectContext: managedObjectContext) as! PokemonFound
//        pokemon.name = new_pokemon
    }
    func fetchAllPokemon(){
        let userRequest = NSFetchRequest(entityName: "PokemonFound")
        do {
            let results = try managedObjectContext.executeFetchRequest(userRequest)
            pokemons = results as! [PokemonFound]
        } catch {
            print("\(error)")
        }
    }
    func savePokemon(){
        if managedObjectContext.hasChanges {
            do {
                try managedObjectContext.save()
                print("Success")
            } catch {
                print("\(error)")
            }
        }
        fetchAllPokemon()
        tableView.reloadData()
    }
}

