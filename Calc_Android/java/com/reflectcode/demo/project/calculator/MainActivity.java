package com.reflectcode.demo.project.calculator;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.app.Activity;
import android.text.Editable;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;


public class MainActivity extends AppCompatActivity implements View.OnClickListener  {

    Button one, two, three, four, five, six, seven, eight, nine, zero, add, sub, mul, div, cancel, equal;
    TextView disp, equation;
    int op1, op2;
    Boolean continueCalculationl, clearDisplay;
    String optr;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        continueCalculationl = false; clearDisplay = false;
        optr = "";
        op1=0; op2=0;

        one = (Button) findViewById(R.id.one);
        two = (Button) findViewById(R.id.two);
        three = (Button) findViewById(R.id.three);
        four = (Button) findViewById(R.id.four);
        five = (Button) findViewById(R.id.five);
        six = (Button) findViewById(R.id.six);
        seven = (Button) findViewById(R.id.seven);
        eight = (Button) findViewById(R.id.eight);
        nine = (Button) findViewById(R.id.nine);
        zero = (Button) findViewById(R.id.zero);
        add = (Button) findViewById(R.id.add);
        sub = (Button) findViewById(R.id.sub);
        mul = (Button) findViewById(R.id.mul);
        div = (Button) findViewById(R.id.div);
        cancel = (Button) findViewById(R.id.cancel);
        equal = (Button) findViewById(R.id.equal);
        disp = (TextView) findViewById(R.id.display);
        equation = (TextView) findViewById(R.id.equation);

        try{
            one.setOnClickListener(this);
            two.setOnClickListener(this);
            three.setOnClickListener(this);
            four.setOnClickListener(this);
            five.setOnClickListener(this);
            six.setOnClickListener(this);
            seven.setOnClickListener(this);
            eight.setOnClickListener(this);
            nine.setOnClickListener(this);
            zero.setOnClickListener(this);
            cancel.setOnClickListener(this);
            add.setOnClickListener(this);
            sub.setOnClickListener(this);
            mul.setOnClickListener(this);
            div.setOnClickListener(this);
            equal.setOnClickListener(this);
        } catch(Exception e){

        }
    }


    public void operation(){
        if(!optr.equals("")) {
            op2 = Integer.parseInt(disp.getText().toString());
            equation.setText(equation.getText() + Integer.toString(op1) + " " + optr + " " + Integer.toString(op2) + " | ");

            if (optr.equals("+")) {
                op1 = op1 + op2;
                disp.setText(Integer.toString(op1));
            } else if (optr.equals("-")) {
                op1 = op1 - op2;
                disp.setText(Integer.toString(op1));
            } else if (optr.equals("*")) {
                op1 = op1 * op2;
                disp.setText(Integer.toString(op1));
            } else if (optr.equals("/")) {
                op1 = op1 / op2;
                disp.setText(Integer.toString(op1));
            }
            op2 = 0;
            continueCalculationl = true;
        }
    }
    public void updateDisp(CharSequence str) {
        //Editable strToUpdate = (Editable)disp.getText();
        //Editable strToUpdate;
        String strToUpdate;

        strToUpdate = (String) disp.getText();

        if (strToUpdate.toString().equals("0")) {
            strToUpdate= "";
        }

        if (clearDisplay == true) {
            clearDisplay = false;
            strToUpdate = "" ;
        }

        strToUpdate = strToUpdate + str;
        disp.setText(strToUpdate);
    }


    @Override public void onClick(View btnPressed) {
        switch(btnPressed.getId()){
            case R.id.zero:
                updateDisp(zero.getText());
                break;

            case R.id.one:
                updateDisp(one.getText());
                break;

            case R.id.two:
                updateDisp(two.getText());
                break;

            case R.id.three:
                updateDisp(three.getText());
                break;

            case R.id.four:
                updateDisp(four.getText());
                break;

            case R.id.five:
                updateDisp(five.getText());
                break;

            case R.id.six:
                updateDisp(six.getText());
                break;

            case R.id.seven:
                updateDisp(seven.getText());
                break;

            case R.id.eight:
                updateDisp(eight.getText());
                break;

            case R.id.nine:
                updateDisp(nine.getText());
                break;

            case R.id.cancel:
                op1 = 0;
                op2 = 0;
                continueCalculationl = false;
                clearDisplay = true;
                disp.setText("0");
                disp.setHint("Perform Operation :)");
                equation.setText("");
                break;

            case R.id.add:
                if(op1 == 0){
                    op1 = Integer.parseInt(disp.getText().toString());
                    disp.setText("0");
                    optr = "+";
                } else {
                    if (continueCalculationl == false){
                        disp.setText("0");
                        optr = "+";
                        continueCalculationl = true;
                    }
                    else {
                        operation();
                        optr = "+";
                        clearDisplay = true;
                    }
                }
                break;

            case R.id.sub:
                if(op1 == 0){
                    op1 = Integer.parseInt(disp.getText().toString());
                    disp.setText("0");
                    optr = "-";
                }  else{
                    if (continueCalculationl == false){
                        disp.setText("0");
                        optr = "-";
                        continueCalculationl = true;
                    }
                    else {
                        operation();
                        optr = "-";
                        clearDisplay = true;
                    }
                }
                break;

            case R.id.mul:
                if(op1 == 0){
                    op1 = Integer.parseInt(disp.getText().toString());
                    disp.setText("0");
                    optr = "*";
                }  else {
                    if (continueCalculationl == false){
                        disp.setText("0");
                        optr = "*";
                        continueCalculationl = true;
                    }
                    else {
                        operation();
                        optr = "*";
                        clearDisplay = true;
                    }
                }
                break;

            case R.id.div:
                if(op1 == 0){
                    op1 = Integer.parseInt(disp.getText().toString());
                    disp.setText("0");
                    optr = "/";
                }  else {
                    if (continueCalculationl == false) {
                        disp.setText("0");
                        optr = "/";
                        continueCalculationl = true;
                    }
                    else {
                        operation();
                        optr = "/";
                        clearDisplay = true;
                    }
                }
                break;

            case R.id.equal:
                if(op1 != 0) {
                    continueCalculationl = false;
                    clearDisplay = true;
                    operation();
                    optr = "";
                }
                break;
            default:
                Log.e("Error", "Error - Default case not provided");
        }
    }
}
