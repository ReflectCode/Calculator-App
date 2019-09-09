
import UIKit


public class MainActivity : UIViewController {

    
        @IBOutlet weak var outlet_one: UIButton!
        @IBOutlet weak var outlet_two: UIButton!
        @IBOutlet weak var outlet_three: UIButton!
        @IBOutlet weak var outlet_four: UIButton!
        @IBOutlet weak var outlet_five: UIButton!
        @IBOutlet weak var outlet_six: UIButton!
        @IBOutlet weak var outlet_seven: UIButton!
        @IBOutlet weak var outlet_eight: UIButton!
        @IBOutlet weak var outlet_nine: UIButton!
        @IBOutlet weak var outlet_zero: UIButton!
        @IBOutlet weak var outlet_add: UIButton!
        @IBOutlet weak var outlet_sub: UIButton!
        @IBOutlet weak var outlet_mul: UIButton!
        @IBOutlet weak var outlet_div: UIButton!
        @IBOutlet weak var outlet_cancel: UIButton!
        @IBOutlet weak var outlet_equal: UIButton!
        @IBOutlet weak var outlet_display: UILabel!
        @IBOutlet weak var outlet_equation: UILabel!
        @IBOutlet weak var outlet_RC_ID_1000: UIView!
        @IBOutlet weak var outlet_RC_ID_1003: UIView!
        @IBOutlet weak var outlet_RC_ID_1008: UIView!
        @IBOutlet weak var outlet_RC_ID_1013: UIView!
        @IBOutlet weak var outlet_RC_ID_1018: UIView!


    @IBAction func onClick(_ btnPressed: UIView?){
        switch (btnPressed){

        case outlet_zero:
            updateDisp(zero!.title( for: UIControl.State.normal )!)
            break

        case outlet_one:
            updateDisp(one!.title( for: UIControl.State.normal )!)
            break

        case outlet_two:
            updateDisp(two!.title( for: UIControl.State.normal )!)
            break

        case outlet_three:
            updateDisp(three!.title( for: UIControl.State.normal )!)
            break

        case outlet_four:
            updateDisp(four!.title( for: UIControl.State.normal )!)
            break

        case outlet_five:
            updateDisp(five!.title( for: UIControl.State.normal )!)
            break

        case outlet_six:
            updateDisp(six!.title( for: UIControl.State.normal )!)
            break

        case outlet_seven:
            updateDisp(seven!.title( for: UIControl.State.normal )!)
            break

        case outlet_eight:
            updateDisp(eight!.title( for: UIControl.State.normal )!)
            break

        case outlet_nine:
            updateDisp(nine!.title( for: UIControl.State.normal )!)
            break

        case outlet_cancel:
            op1 = 0
            op2 = 0
            continueCalculationl = false
            clearDisplay = true
            disp!.text = "0"
            // RC Note (Java Code) : disp.setHint ( "Perform Operation :)" ) ;    // ToDo - UILabel do not support placeholder property
            equation!.text = ""
            break

        case outlet_add:
            if op1 == 0 {
                op1 = Int(disp!.text!) ?? 0
                disp!.text = "0"
                optr = "+"
            }
            else {
                if continueCalculationl! == false {
                    disp!.text = "0"
                    optr = "+"
                    continueCalculationl = true
                }
                else {
                    operation()
                    optr = "+"
                    clearDisplay = true
                }
            }
            break

        case outlet_sub:
            if op1 == 0 {
                op1 = Int(disp!.text!) ?? 0
                disp!.text = "0"
                optr = "-"
            }
            else {
                if continueCalculationl! == false {
                    disp!.text = "0"
                    optr = "-"
                    continueCalculationl = true
                }
                else {
                    operation()
                    optr = "-"
                    clearDisplay = true
                }
            }
            break


        case outlet_mul:
            if op1 == 0 {
                op1 = Int(disp!.text!) ?? 0
                disp!.text = "0"
                optr = "*"
            }
            else {
                if continueCalculationl! == false {
                    disp!.text = "0"
                    optr = "*"
                    continueCalculationl = true
                }
                else {
                    operation()
                    optr = "*"
                    clearDisplay = true
                }
            }
            break

        case outlet_div:
            if op1 == 0 {
                op1 = Int(disp!.text!) ?? 0
                disp!.text = "0"
                optr = "/"
            }
            else {
                if continueCalculationl! == false {
                    disp!.text = "0"
                    optr = "/"
                    continueCalculationl = true
                }
                else {
                    operation()
                    optr = "/"
                    clearDisplay = true
                }
            }
            break

        case outlet_equal:
            if op1 != 0 {
                continueCalculationl = false
                clearDisplay = true
                operation()
                optr = ""
            }
            break

        default :
            print("Error : Error - Default case not provided")
        }
    }

    
    // MARK: - Main code start
    
    var one : UIButton? = UIButton()
    var two : UIButton? = UIButton()
    var three : UIButton? = UIButton()
    var four : UIButton? = UIButton()
    var five : UIButton? = UIButton()
    var six : UIButton? = UIButton()
    var seven : UIButton? = UIButton()
    var eight : UIButton? = UIButton()
    var nine : UIButton? = UIButton()
    var zero : UIButton? = UIButton()
    var add : UIButton? = UIButton()
    var sub : UIButton? = UIButton()
    var mul : UIButton? = UIButton()
    var div : UIButton? = UIButton()
    var cancel : UIButton? = UIButton()
    var equal : UIButton? = UIButton()
    var disp : UILabel? = UILabel()
    var equation : UILabel? = UILabel()
    var op1 : Int = 0
    var op2 : Int = 0
    var continueCalculationl : Bool? = false
    var clearDisplay : Bool? = false
    var optr : String? = ""

    //  Note - source android method is onCreate()
    override public func viewDidLoad(){
        super.viewDidLoad()

        continueCalculationl = false
        clearDisplay = false
        optr = ""
        op1 = 0
        op2 = 0

        one = outlet_one
        two = outlet_two
        three = outlet_three
        four = outlet_four
        five = outlet_five
        six = outlet_six
        seven = outlet_seven
        eight = outlet_eight
        nine = outlet_nine
        zero = outlet_zero
        add = outlet_add
        sub = outlet_sub
        mul = outlet_mul
        div = outlet_div
        cancel = outlet_cancel
        equal = outlet_equal
        disp = outlet_display
        equation = outlet_equation

    }


    open func operation() -> Void {
        if !( optr  ==  "" ) {
            op2 = Int(disp!.text!) ?? 0
            equation!.text = (equation!.text! + op1.description + " " + optr! + " " + op2.description + " | ")

            if optr  ==  "+" {
                op1 = op1 + op2
                disp!.text = op1.description
            }
            else if optr  ==  "-" {
                op1 = op1 - op2
                disp!.text = op1.description
            }
            else if optr  ==  "*" {
                op1 = op1 * op2
                disp!.text = op1.description
            }
            else if optr  ==  "/" {
                op1 = op1 / op2
                disp!.text = op1.description
            }
            op2 = 0
            continueCalculationl = true
        }
    }

    open func updateDisp(_ str: String?) -> Void {
        //Editable strToUpdate = (Editable)disp.getText();
        //Editable strToUpdate;

        var strToUpdate : String? = ""

        strToUpdate = disp!.text!

        if strToUpdate  ==  "0" {
            strToUpdate = ""
        }

        if clearDisplay! == true {
            clearDisplay = false
            strToUpdate = ""
        }

        strToUpdate = strToUpdate! + str!
        disp!.text = strToUpdate!
    }

}
