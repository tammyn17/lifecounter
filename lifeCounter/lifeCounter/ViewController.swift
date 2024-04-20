//
//  ViewController.swift
//  lifeCounter
//
//  Created by Tammy Nguyen on 4/18/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playerOne: UILabel!
    @IBOutlet weak var playerTwo: UILabel!
    @IBOutlet weak var playerOneNumLives: UILabel!
    @IBOutlet weak var playerTwoNumLives: UILabel!
    
    @IBOutlet weak var playerOnePlusOneButton: UIButton!
    @IBOutlet weak var playerOneMinusOneButton: UIButton!
    @IBOutlet weak var playerOnePlusFiveButton: UIButton!
    @IBOutlet weak var playerOneMinusFiveButton: UIButton!
    
    @IBOutlet weak var playerTwoPlusOneButton: UIButton!
    @IBOutlet weak var playerTwoMinusOneButton: UIButton!
    @IBOutlet weak var playerTwoPlusFiveButton: UIButton!
    @IBOutlet weak var playerTwoMinusFiveButton: UIButton!
    
    @IBOutlet weak var status: UILabel!
    
    var playerOneLives = 20
    var playerTwoLives = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLivesDisplay()
    }
    
    func updateLivesDisplay() {
        playerOneNumLives.text = "Lives: \(playerOneLives)"
        playerTwoNumLives.text = "Lives: \(playerTwoLives)"
    }
    
    func checkForLoser() {
        if playerOneLives <= 0 {
            status.text = "Player 1 LOSES!"
        } else if playerTwoLives <= 0 {
            status.text = "Player 2 LOSES!"
        }
    }
    
    @IBAction func playerOnePlusOne(_ sender: UIButton) {
        playerOneLives += 1
        updateLivesDisplay()
    }
    
    @IBAction func playerOneMinusOne(_ sender: UIButton) {
        playerOneLives -= 1
        updateLivesDisplay()
        checkForLoser()
    }
    
    @IBAction func playerOnePlusFive(_ sender: UIButton) {
        playerOneLives += 5
        updateLivesDisplay()
    }
    
    @IBAction func playerOneMinusFive(_ sender: UIButton) {
        playerOneLives -= 5
        updateLivesDisplay()
        checkForLoser()
    }
    
    @IBAction func playerTwoPlusOne(_ sender: UIButton) {
        playerTwoLives += 1
        updateLivesDisplay()
    }
    
    @IBAction func playerTwoMinusOne(_ sender: UIButton) {
        playerTwoLives -= 1
        updateLivesDisplay()
        checkForLoser()
    }
    
    @IBAction func playerTwoPlusFive(_ sender: UIButton) {
        playerTwoLives += 5
        updateLivesDisplay()
    }
    
    @IBAction func playerTwoMinusFive(_ sender: UIButton) {
        playerTwoLives -= 5
        updateLivesDisplay()
        checkForLoser()
    }
}
