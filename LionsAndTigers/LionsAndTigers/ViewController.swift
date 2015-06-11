//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Dan Bender on 25/05/15.
//  Copyright (c) 2015 Dan Bender. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var randomFactLabel: UILabel!
    
    var myTigers:[Tiger] = []
    var lions:[Lion] = []
    
    var currentIndex = 0
    var currentAnimal = (species: "Tiger", index: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        Tiger
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.age = myTiger.ageInTigerYearsFromAge(myTiger.age)
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        myTiger.chuff()
        myTiger.chuffANumberOftimes(5, isLoud: false)
        
        println("My tiger's name is \(myTiger.name), its breed is \(myTiger.breed) and it is \(myTiger.age) years old. Its image is \(myTiger.image).")
        
        self.myTigers.append(myTiger)
        self.myImageView.image = myTiger.image
        self.nameLabel.text = myTiger.name
        self.ageLabel.text = String(myTiger.age)
        self.breedLabel.text = myTiger.breed
        self.randomFactLabel.text = myTiger.randomFact()
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.age = secondTiger.ageInTigerYearsFromAge(secondTiger.age)
        secondTiger.image = UIImage(named:"IndochineseTiger.jpg")
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.age = thirdTiger.ageInTigerYearsFromAge(thirdTiger.age)
        thirdTiger.image = UIImage(named:"MalayanTiger.jpg")

        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 5
        fourthTiger.age = fourthTiger.ageInTigerYearsFromAge(fourthTiger.age)
        fourthTiger.image = UIImage(named:"SiberianTiger.jpg")
        
        self.myTigers += [secondTiger, thirdTiger, fourthTiger]
        
//        Lion
        var lion = Lion()
        lion.age = 4
        lion.isAlphaMale = false
        lion.image = UIImage(named:"Lion.jpg")
        lion.name = "Mufasa"
        lion.subspecies = "West African"
        
        var lioness = Lion()
        lioness.age = 3
        lioness.isAlphaMale = false
        lioness.image = UIImage(named: "Lioness.jpeg")
        lioness.name = "Sarabi"
        lioness.subspecies = "Barbary"
        
        lion.roar()
        lioness.roar()
        
        lion.changeToAlphaMale()
        println(lion.isAlphaMale)
        
        self.lions += [lion, lioness]
        
        var lionCub = LionCub()
        lionCub.age = 1
        lionCub.name = "Simba"
        lionCub.image = UIImage(named: "LionCub1.jpg")
        lionCub.subspecies = "Masai"
        
        lionCub.roar()
        lionCub.rubLionCubsBelly()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        updateAnimal()
        updateView()
    }
    
    func updateAnimal (){
        switch currentAnimal {
        case ("Tiger", _) :
            let randomIndex = Int(arc4random_uniform(UInt32(lions.count)))
            currentAnimal = ("Lion", randomIndex)
        default :
            let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
            currentAnimal = ("Tiger", randomIndex)
        }
    }
    
    func updateView () {
        UIView.transitionWithView(self.view, duration: 0.5, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            if self.currentAnimal.species == "Tiger" {
                let tiger = self.myTigers[self.currentAnimal.index]
                self.myImageView.image = tiger.image
                self.breedLabel.text = tiger.breed
                self.ageLabel.text = "\(tiger.age)"
                self.nameLabel.text = tiger.name
                self.randomFactLabel.text = tiger.randomFact()
            }
            else if self.currentAnimal.species == "Lion" {
                let lion = self.lions[self.currentAnimal.index]
                self.myImageView.image = lion.image
                self.breedLabel.text = lion.subspecies
                self.ageLabel.text = "\(lion.age)"
                self.nameLabel.text = lion.name
                self.randomFactLabel.text = lion.randomFact()
            }
            self.randomFactLabel.hidden = false
        }, completion: {
            (finished: Bool) -> () in
                //               default code when nothing further should happen after completion.
        })

    }
}

