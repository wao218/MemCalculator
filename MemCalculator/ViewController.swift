//
//  ViewController.swift
//  MemCalculator
//
//  Created by Wesley Osborne on 4/11/21.
//

import UIKit

class ViewController: UIViewController {
  
  var firstNumber = 0
  var resultNumber = 0
  var currentOperation: Operation?
  
  enum Operation {
    case add, subtract, multiply, divide
  }
  
  // MARK: - UI Elements
  @IBOutlet var holder: UIView!
  
  private var resultLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textColor = UIColor(named: "operationColor")
    label.textAlignment = .right
    label.font = .systemFont(ofSize: 100)
    label.translatesAutoresizingMaskIntoConstraints = false
//    label.layer.borderWidth = 1
//    label.layer.borderColor = UIColor.black.cgColor
    return label
  }()
  
  private var zeroButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("0", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
//    button.layer.cornerRadius = buttonSize / 6
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 0
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var oneButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("1", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
//    button.layer.cornerRadius = buttonSize / 6
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 1
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var twoButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("2", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
//    button.layer.cornerRadius = buttonSize / 6
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 2
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var threeButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("3", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
//    button.layer.cornerRadius = buttonSize / 6
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 3
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var fourButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("4", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
//    button.layer.cornerRadius = buttonSize / 6
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 4
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var fiveButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("5", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
//    button.layer.cornerRadius = buttonSize / 6
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 5
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var sixButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("6", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
//    button.layer.cornerRadius = buttonSize / 6
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 6
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var sevenButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("7", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
//    button.layer.cornerRadius = buttonSize / 6
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 7
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var eightButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("8", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
//    button.layer.cornerRadius = buttonSize / 6
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 8
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var nineButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("9", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
//    button.layer.cornerRadius = buttonSize / 6
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 9
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var clearButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("Clear All", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var equalButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "accents"), for: .normal)
    button.setTitle("=", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
//    button4.layer.cornerRadius = buttonSize / 6
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 1
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var addButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "accents"), for: .normal)
    button.setTitle("+", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.tag = 2
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var subtractButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "accents"), for: .normal)
    button.setTitle("-", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.tag = 3
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var multiplyButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "accents"), for: .normal)
    button.setTitle("*", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.tag = 4
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private var divideButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "accents"), for: .normal)
    button.setTitle("/", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.tag = 5
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  // MARK: - Lifecyle
  override func viewDidLoad() {
    super.viewDidLoad()
    addTargets()
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    layoutSubViews()
    setupContraints()
//    setupCalculator()
  }
  
  // MARK: - Helper Methods
  
  private func layoutSubViews() {
    let subViews = [resultLabel, clearButton, zeroButton, oneButton, twoButton, threeButton, fourButton, fiveButton, sixButton, sevenButton, eightButton, nineButton, equalButton, addButton, subtractButton, multiplyButton, divideButton]
    for view in subViews {
      holder.addSubview(view)
    }
  }
  
  private func addTargets() {
    // Number Targets
    let numButtons = [zeroButton, oneButton, twoButton, threeButton, fourButton, fiveButton, sixButton, sevenButton, eightButton, nineButton]
    for numButton in numButtons {
      numButton.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
    }
    
    // Operation Targets
    let operations = [equalButton, addButton, subtractButton, multiplyButton, divideButton]
    
    for operation in operations {
      operation.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
    }
    
    // Clear Target
    clearButton.addTarget(self, action: #selector(clearResult), for: .touchUpInside)
  }
  
  private func setupContraints() {
    NSLayoutConstraint.activate([
    
      // result label
      resultLabel.topAnchor.constraint(equalTo: holder.topAnchor, constant: 110),
      resultLabel.leadingAnchor.constraint(equalTo: holder.leadingAnchor),
      resultLabel.trailingAnchor.constraint(equalTo: holder.trailingAnchor, constant: -10)
      
    ])
  }
  
//  private func setupCalculator() {
//    let buttonSize: CGFloat = view.frame.size.width / 4
//    let zeroButton = UIButton(frame: CGRect(x: holder.frame.origin.x + 10,
//                                            y: holder.frame.size.height - buttonSize,
//                                            width: (buttonSize * 3) - 20,
//                                            height: buttonSize - 20))
//
//
//    // Buttons 1, 2, 3
//    for x in 0..<3 {
//      let button1 = UIButton(frame: CGRect(x: (buttonSize * CGFloat(x)) + 10 ,
//                                              y: holder.frame.size.height - (buttonSize * 2),
//                                              width: buttonSize - 20,
//                                              height: buttonSize - 20))
//
//
//      button1.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
//    }
//
//    // Buttons 4, 5, 6
//    for x in 0..<3 {
//      let button2 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x) + 10,
//                                              y: holder.frame.size.height - (buttonSize * 3),
//                                              width: buttonSize - 20,
//                                              height: buttonSize - 20))
//
//    }
//
//    // Buttons 7, 8, 9
//    for x in 0..<3 {
//      let button3 = UIButton(frame: CGRect(x: buttonSize * CGFloat(x) + 10,
//                                              y: holder.frame.size.height - (buttonSize * 4),
//                                              width: buttonSize - 20,
//                                              height: buttonSize - 20))
//    }
//
//    let clearButton = UIButton(frame: CGRect(x: holder.frame.origin.x + 10,
//                                            y: holder.frame.size.height - (buttonSize * 5),
//                                            width: view.frame.size.width - buttonSize - 20,
//                                            height: buttonSize - 20))
//
//
//
//    // Operation Buttons +, -, /, *
//    for x in 0..<5 {
//      let button4 = UIButton(frame: CGRect(x: buttonSize * 3,
//                                              y: holder.frame.size.height - (buttonSize * CGFloat(x+1)),
//                                              width: buttonSize - 20,
//                                              height: buttonSize - 20))
//
//    }
//
//    resultLabel.frame = CGRect(x: 20,
//                               y: clearButton.frame.origin.y - 110.0,
//                               width: view.frame.size.width - 40,
//                               height: 100)
//
//
//
//  }
  
  @objc func clearResult() {
    resultLabel.text = "0"
    currentOperation = nil
    firstNumber = 0
  }
  
  @objc func numberPressed(_ sender: UIButton) {
    let tag = sender.tag - 1
    
    if resultLabel.text == "0" {
      resultLabel.text = "\(tag)"
    } else {
      guard let text = resultLabel.text else {
        return
      }
      resultLabel.text = "\(text)\(tag)"
    }
  }
  
  @objc func operationPressed(_ sender: UIButton) {
    let tag = sender.tag
    
    if let text = resultLabel.text, let value = Int(text), firstNumber == 0 {
      firstNumber = value
      resultLabel.text = "0"
    }
    
    switch tag {
    case 1:
      if let operation = currentOperation {
        var secondNumber = 0
        if let text = resultLabel.text, let value = Int(text) {
          secondNumber = value
        }
        switch operation {
        case .add:
          let result = firstNumber + secondNumber
          resultLabel.text = "\(result)"
          break
        case .subtract:
          let result = firstNumber - secondNumber
          resultLabel.text = "\(result)"
          break
        case .multiply:
          let result = firstNumber * secondNumber
          resultLabel.text = "\(result)"
          break
        case .divide:
          let result = firstNumber / secondNumber
          resultLabel.text = "\(result)"
          break
        }
      }
    case 2:
      currentOperation = .add
    case 3:
      currentOperation = .subtract
    case 4:
      currentOperation = .multiply
    case 5:
      currentOperation = .divide
    default:
      break
    }
  }
  
  
}

