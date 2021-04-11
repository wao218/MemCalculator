//
//  ViewController.swift
//  MemCalculator
//
//  Created by Wesley Osborne on 4/11/21.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var holder: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
    setupNumberPad()
  }
  
  private func setupNumberPad() {
    let buttonSize: CGFloat = view.frame.size.width / 4
    let zeroButton = UIButton(frame: CGRect(x: 0,
                                            y: holder.frame.size.height - buttonSize,
                                            width: buttonSize * 3,
                                            height: buttonSize))
    zeroButton.backgroundColor = .white
    zeroButton.setTitleColor(.black, for: .normal)
    zeroButton.setTitle("0", for: .normal)
    holder.addSubview(zeroButton)
    
    // Buttons 1, 2, 3
    for x in 0..<3 {
      let button1 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x),
                                              y: holder.frame.size.height - (buttonSize * 2),
                                              width: buttonSize,
                                              height: buttonSize))
      button1.backgroundColor = .white
      button1.setTitleColor(.black, for: .normal)
      button1.setTitle("\(x+1)", for: .normal)
      holder.addSubview(button1)
    }
    
    // Buttons 4, 5, 6
    for x in 0..<3 {
      let button2 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x),
                                              y: holder.frame.size.height - (buttonSize * 3),
                                              width: buttonSize,
                                              height: buttonSize))
      button2.backgroundColor = .white
      button2.setTitleColor(.black, for: .normal)
      button2.setTitle("\(x+4)", for: .normal)
      holder.addSubview(button2)
    }
    
    // Buttons 7, 8, 9
    for x in 0..<3 {
      let button3 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x),
                                              y: holder.frame.size.height - (buttonSize * 4),
                                              width: buttonSize,
                                              height: buttonSize))
      button3.backgroundColor = .white
      button3.setTitleColor(.black, for: .normal)
      button3.setTitle("\(x+7)", for: .normal)
      holder.addSubview(button3)
    }
    
    let clearButton = UIButton(frame: CGRect(x: 0,
                                            y: holder.frame.size.height - (buttonSize * 5),
                                            width: view.frame.size.width,
                                            height: buttonSize))
    clearButton.backgroundColor = .white
    clearButton.setTitleColor(.black, for: .normal)
    clearButton.setTitle("Clear All", for: .normal)
    holder.addSubview(clearButton)
    
  
    // Operation Buttons +, -, /, *
    let operations = ["+", "-", "x", "/"]
    for x in 0..<4 {
      let button4 = UIButton(frame: CGRect(x: buttonSize * 3,
                                              y: holder.frame.size.height - (buttonSize * CGFloat(x+1)),
                                              width: buttonSize,
                                              height: buttonSize))
      button4.backgroundColor = .orange
      button4.setTitleColor(.white, for: .normal)
      button4.setTitle(operations[x], for: .normal)
      holder.addSubview(button4)
    }
  }
}

