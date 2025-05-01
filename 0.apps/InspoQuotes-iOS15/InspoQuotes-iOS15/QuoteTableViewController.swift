//
//  ViewController.swift
//  InspoQuotes-iOS15
//
//  Created by PatrycjaOosthuizen on 30/04/2025.
//

import UIKit

class QuoteTableViewController: UITableViewController {
    
       var premiumQuotesUnlocked = false
       
       // Array of free quotes to display in the table view.
        var quotesToShow = [
            "Our greatest glory is not in never falling, but in rising every time we fall. — Confucius",
            "All our dreams can come true, if we have the courage to pursue them. – Walt Disney",
            "It does not matter how slowly you go as long as you do not stop. – Confucius",
            "Everything you’ve ever wanted is on the other side of fear. — George Addair",
            "Success is not final, failure is not fatal: it is the courage to continue that counts. – Winston Churchill",
            "Hardships often prepare ordinary people for an extraordinary destiny. – C.S. Lewis"
        ]
    
        // Array of premium quotes which could be unlocked with in-app purchases.
        let premiumQuotes = [
            "Believe in yourself. You are braver than you think, more talented than you know, and capable of more than you imagine. ― Roy T. Bennett",
            "I learned that courage was not the absence of fear, but the triumph over it. The brave man is not he who does not feel afraid, but he who conquers that fear. – Nelson Mandela",
            "There is only one thing that makes a dream impossible to achieve: the fear of failure. ― Paulo Coelho",
            "It’s not whether you get knocked down. It’s whether you get up. – Vince Lombardi",
            "Your true success in life begins only when you make the commitment to become excellent at what you do. — Brian Tracy",
            "Believe in yourself, take on your challenges, dig deep within yourself to conquer fears. Never let anyone bring you down. You got to keep going. – Chantal Sutherland"
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    // Returns the number of rows in the section, based on the number of quotes to show.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return premiumQuotesUnlocked ? quotesToShow.count : quotesToShow.count + 1
    }
    
    // Configures and returns each cell for the table view.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Reuse a cell with the identifier "QuoteCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuoteCell", for: indexPath)
        
        if indexPath.row < quotesToShow.count {
            cell.textLabel?.text = quotesToShow[indexPath.row]
            cell.textLabel?.numberOfLines = 0
            cell.textLabel?.textColor = .label
            cell.accessoryType = .none
        } else {
            cell.textLabel?.text = "Get More Quotes"
            cell.textLabel?.textColor = .systemMint
            cell.accessoryType = .disclosureIndicator
        }
        
        return cell
    }
    
    // MARK: - Table view delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == quotesToShow.count && !premiumQuotesUnlocked {
            buyPremiumQuotes()
            showPremiumQuotes()
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK: In-App Purchase Methods
    
    func buyPremiumQuotes() {
        print("Buying premium quotes...")
    }
    
    func showPremiumQuotes() {
        
        quotesToShow.append(contentsOf: premiumQuotes)
        premiumQuotesUnlocked = true    
        tableView.reloadData()
    }

    // Action method for when the "Restore" button is pressed.
    @IBAction func restorePressed(_ sender: UIBarButtonItem) {
    }
}

