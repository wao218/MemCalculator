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
    label.layer.borderWidth = 1
    label.layer.borderColor = UIColor.black.cgColor
    return label
  }()
  
  private var zeroButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("0", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 0
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    return button
  }()
  
  private var oneButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("1", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 1
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    return button
  }()
  
  private var twoButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("2", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 2
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    return button
  }()
  
  private var threeButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("3", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 3
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    return button
  }()
  
  private var fourButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("4", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 4
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    return button
  }()
  
  private var fiveButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("5", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 5
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    return button
  }()
  
  private var sixButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("6", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 6
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    return button
  }()
  
  private var sevenButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("7", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 7
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    return button
  }()
  
  private var eightButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("8", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 8
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    return button
  }()
  
  private var nineButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("9", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 9
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    return button
  }()
  
  private var clearButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "operationColor"), for: .normal)
    button.setTitle("Clear All", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    return button
  }()
  
  private var equalButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = UIColor(named: "backgroundColor")
    button.setTitleColor(UIColor(named: "accents"), for: .normal)
    button.setTitle("=", for: .normal)
    button.titleLabel?.font = .systemFont(ofSize: 30)
    button.layer.cornerRadius = 16
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.05
    button.layer.shadowOffset = CGSize(width: 0.0, height: 3)
    button.layer.shadowRadius = 5
    button.tag = 1
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
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
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
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
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
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
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
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
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    return button
  }()
  
  // MARK: - Lifecyle
  override func viewDidLoad() {
    super.viewDidLoad()
    addTargets()
    let buttonSize: CGFloat = view.frame.size.width / 4
    print(buttonSize)
    print(view.frame.size.width)
    print(view.frame.size.height)
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
      resultLabel.topAnchor.constraint(equalTo: holder.layoutMarginsGuide.topAnchor, constant: 145),
      resultLabel.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor),
      resultLabel.trailingAnchor.constraint(equalTo: holder.layoutMarginsGuide.trailingAnchor),
      resultLabel.heightAnchor.constraint(equalTo: holder.heightAnchor, multiplier: 0.15),
      
      // Clear Button
      clearButton.topAnchor.constraint(equalTo: resultLabel.bottomAnchor),
      clearButton.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor),
      clearButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.75),
      clearButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Seven Button
      sevenButton.topAnchor.constraint(equalTo: clearButton.bottomAnchor),
      sevenButton.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor),
      sevenButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      sevenButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Four Button
      fourButton.topAnchor.constraint(equalTo: sevenButton.bottomAnchor),
      fourButton.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor),
      fourButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      fourButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // One Button
      oneButton.topAnchor.constraint(equalTo: fourButton.bottomAnchor),
      oneButton.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor),
      oneButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor),
      oneButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      oneButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Zero Button
      zeroButton.topAnchor.constraint(equalTo: oneButton.bottomAnchor),
      zeroButton.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor),
      zeroButton.bottomAnchor.constraint(equalTo: holder.layoutMarginsGuide.bottomAnchor),
      zeroButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.75),
      zeroButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Eight Button
      eightButton.topAnchor.constraint(equalTo: clearButton.bottomAnchor),
      eightButton.leadingAnchor.constraint(equalTo: sevenButton.trailingAnchor),
      eightButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      eightButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Five Button
      fiveButton.topAnchor.constraint(equalTo: eightButton.bottomAnchor),
      fiveButton.leadingAnchor.constraint(equalTo: fourButton.trailingAnchor),
      fiveButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      fiveButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Two Button
      twoButton.topAnchor.constraint(equalTo: fiveButton.bottomAnchor),
      twoButton.leadingAnchor.constraint(equalTo: oneButton.trailingAnchor),
      twoButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor),
      twoButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      twoButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Nine Button
      nineButton.topAnchor.constraint(equalTo: clearButton.bottomAnchor),
      nineButton.leadingAnchor.constraint(equalTo: eightButton.trailingAnchor),
      nineButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      nineButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Six Button
      sixButton.topAnchor.constraint(equalTo: nineButton.bottomAnchor),
      sixButton.leadingAnchor.constraint(equalTo: fiveButton.trailingAnchor),
      sixButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      sixButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Three Button
      threeButton.topAnchor.constraint(equalTo: sixButton.bottomAnchor),
      threeButton.leadingAnchor.constraint(equalTo: twoButton.trailingAnchor),
      threeButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor),
      threeButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      threeButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Divide Button
      divideButton.topAnchor.constraint(equalTo: resultLabel.bottomAnchor),
      divideButton.leadingAnchor.constraint(equalTo: clearButton.trailingAnchor),
      divideButton.trailingAnchor.constraint(equalTo: holder.layoutMarginsGuide.trailingAnchor),
      divideButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Mulitply Button
      multiplyButton.topAnchor.constraint(equalTo: divideButton.bottomAnchor),
      multiplyButton.leadingAnchor.constraint(equalTo: nineButton.trailingAnchor),
      multiplyButton.trailingAnchor.constraint(equalTo: holder.layoutMarginsGuide.trailingAnchor),
      multiplyButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Subtract Button
      subtractButton.topAnchor.constraint(equalTo: multiplyButton.bottomAnchor),
      subtractButton.leadingAnchor.constraint(equalTo: sixButton.trailingAnchor),
      subtractButton.trailingAnchor.constraint(equalTo: holder.layoutMarginsGuide.trailingAnchor),
      subtractButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Add Button
      addButton.topAnchor.constraint(equalTo: subtractButton.bottomAnchor),
      addButton.leadingAnchor.constraint(equalTo: threeButton.trailingAnchor),
      addButton.trailingAnchor.constraint(equalTo: holder.layoutMarginsGuide.trailingAnchor),
      addButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
      
      // Equal Button
      equalButton.topAnchor.constraint(equalTo: addButton.bottomAnchor),
      equalButton.leadingAnchor.constraint(equalTo: zeroButton.trailingAnchor),
      equalButton.bottomAnchor.constraint(equalTo: holder.layoutMarginsGuide.bottomAnchor),
      equalButton.trailingAnchor.constraint(equalTo: holder.layoutMarginsGuide.trailingAnchor),
      equalButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25)
      

      
    ])
  }
  
  
  @objc func clearResult() {
    resultLabel.text = "0"
    currentOperation = nil
    firstNumber = 0
  }
  
  @objc func numberPressed(_ sender: UIButton) {
    let tag = sender.tag
    
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

