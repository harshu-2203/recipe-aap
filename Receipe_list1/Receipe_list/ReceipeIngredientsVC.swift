//
//  ReceipeIngredientsVC.swift
//  Receipe_list
//
//  Created by MacBook Pro on 28/06/21.
//

import UIKit

class ReceipeIngredientsVC: UIViewController {

    var food_item:String = ""
    var food_no:Int32 = 0
    private var step1 = ["Take a pav. Cut from middle. Spread mayonnaise on both side.Add veggies. Sprinkle salt, chaat masala and pepper powder.",
                         "Arrange rava puris on a plate. Stuff each puri with potato mash.Put a spoonful of curd in each puri along with tomato and onion.",
        "Combine Seedlip and cordial in a champagne flute and top with chilled sparkling water..",
        "Add the blood orange peels, pomegranate arils, sugar and bitters into a shaker and muddle gently."]
    private var step2 = ["Add grated cheese on it.Cover the pav.By using same steps make other pav.Now take grill sandwich Maker.",
                         "Pour some khajur imli chutney for tangy taste.",
                         "Mix 300g organic marmalade with 150 mL hot water, Fine strain and store in the fridge.",
                         "Add the vodka and fill with ice, and shake until well-chilled.Double-strain into a rocks glass over fresh ice."]
    private var step3 = ["Grease butter on pav as well as on machine surface.Grill it.After that place lays wafer chips inside.",
                         "BTop it off with sev, chaat masala, some more curd and chopped coriander.",
                         "Sparkling water, to top",
                         "Garnish with an orange twist."]
    
    private let MyImageView: UIImageView = {
        
        let myImageView = UIImageView()
        myImageView.contentMode = .scaleToFill
        myImageView.clipsToBounds = true
        myImageView.layer.cornerRadius = 15
        return myImageView
        
    }()
    
    private let Step1:UILabel = {
        
        let myLabel = UILabel()
        myLabel.text = "Step 1"
        myLabel.textAlignment = .center
        myLabel.backgroundColor = .clear
        myLabel.textColor = .black
        
        myLabel.font = .boldSystemFont(ofSize: 20)
        return myLabel
    }()
    
    private let Step2:UILabel = {
        
        let myLabel = UILabel()
        myLabel.text = "Step 2"
        myLabel.textAlignment = .center
        myLabel.backgroundColor = .clear
        myLabel.textColor = .black
        
        myLabel.font = .boldSystemFont(ofSize: 20)
        return myLabel
    }()
    
    private let Step3:UILabel = {
        
        let myLabel = UILabel()
        myLabel.text = "Step 3"
        myLabel.textColor = .black
        myLabel.backgroundColor = .clear
        myLabel.textAlignment = .center
        myLabel.font = .boldSystemFont(ofSize: 20)
        return myLabel
    }()
    
    private let myTextView1 : UITextView = {
        
        let textView = UITextView()
        textView.text = ""
        
        textView.font = .boldSystemFont(ofSize: 15)
        textView.backgroundColor = .clear
        
        return textView
    }()
    private let myTextView2 : UITextView = {
        
        let textView = UITextView()
        textView.text = ""
        //textView.textAlignment =
        textView.font = .boldSystemFont(ofSize: 15)
        textView.backgroundColor = .clear
        
        return textView
    }()
    private let myTextView3 : UITextView = {
        
        let textView = UITextView()
        textView.text = ""
        textView.font = .boldSystemFont(ofSize: 15)
        //textView.textAlignment =
        textView.backgroundColor = .clear
        
        return textView
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        title = food_item
        setupUI(title: food_item , stp1: food_no)
        view.addSubview(MyImageView)
        view.addSubview(Step1)
        view.addSubview(myTextView1)
        view.addSubview(Step2)
        view.addSubview(myTextView2)
        view.addSubview(Step3)
        view.addSubview(myTextView3)
        

        // Do any additional setup after loading the view.
    }
    func setupUI(title name:String, stp1:Int32){
        MyImageView.image = UIImage(named:name)
        myTextView1.text = step1[Int(stp1)]
        myTextView2.text = step2[Int(stp1)]
        myTextView3.text = step3[Int(stp1)]
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        MyImageView.frame = CGRect(x: 10, y: view.safeAreaInsets.top + 5, width: view.width - 20, height: 200)
        Step1.frame = CGRect(x: 10, y: MyImageView.bottom + 5, width: view.width - 20, height: 30)
        myTextView1.frame = CGRect(x: 10, y: Step1.bottom + 5, width: view.width - 20, height: 80)
        Step2.frame = CGRect(x: 10, y: myTextView1.bottom + 5, width: view.width - 20, height: 30)
        myTextView2.frame = CGRect(x: 10, y: Step2.bottom + 5, width: view.width - 20, height: 80)
        Step3.frame = CGRect(x: 10, y: myTextView2.bottom + 5, width: view.width - 20, height: 30)
        myTextView3.frame = CGRect(x: 10, y: Step3.bottom + 5, width: view.width - 20, height: 80)
    }

}
