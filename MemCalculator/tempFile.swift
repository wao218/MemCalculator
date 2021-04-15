//
//  tempFile.swift
//  MemCalculator
//
//  Created by Wesley Osborne on 4/14/21.
//

import UIKit


// result label
//resultLabel.topAnchor.constraint(equalTo: holder.layoutMarginsGuide.topAnchor, constant: 145),
//resultLabel.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor),
//resultLabel.trailingAnchor.constraint(equalTo: holder.layoutMarginsGuide.trailingAnchor),
//resultLabel.heightAnchor.constraint(equalTo: holder.heightAnchor, multiplier: 0.15),
//
//// Clear Button
//clearButton.topAnchor.constraint(equalTo: resultLabel.bottomAnchor),
//clearButton.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor),
//clearButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.75),
//clearButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Seven Button
//sevenButton.topAnchor.constraint(equalTo: clearButton.bottomAnchor),
//sevenButton.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor),
//sevenButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//sevenButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Four Button
//fourButton.topAnchor.constraint(equalTo: sevenButton.bottomAnchor),
//fourButton.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor),
//fourButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//fourButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// One Button
//oneButton.topAnchor.constraint(equalTo: fourButton.bottomAnchor),
//oneButton.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor),
//oneButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor),
//oneButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//oneButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Zero Button
//zeroButton.topAnchor.constraint(equalTo: oneButton.bottomAnchor),
//zeroButton.leadingAnchor.constraint(equalTo: holder.layoutMarginsGuide.leadingAnchor),
//zeroButton.bottomAnchor.constraint(equalTo: holder.layoutMarginsGuide.bottomAnchor),
//zeroButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.75),
//zeroButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Eight Button
//eightButton.topAnchor.constraint(equalTo: clearButton.bottomAnchor),
//eightButton.leadingAnchor.constraint(equalTo: sevenButton.trailingAnchor),
//eightButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//eightButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Five Button
//fiveButton.topAnchor.constraint(equalTo: eightButton.bottomAnchor),
//fiveButton.leadingAnchor.constraint(equalTo: fourButton.trailingAnchor),
//fiveButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//fiveButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Two Button
//twoButton.topAnchor.constraint(equalTo: fiveButton.bottomAnchor),
//twoButton.leadingAnchor.constraint(equalTo: oneButton.trailingAnchor),
//twoButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor),
//twoButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//twoButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Nine Button
//nineButton.topAnchor.constraint(equalTo: clearButton.bottomAnchor),
//nineButton.leadingAnchor.constraint(equalTo: eightButton.trailingAnchor),
//nineButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//nineButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Six Button
//sixButton.topAnchor.constraint(equalTo: nineButton.bottomAnchor),
//sixButton.leadingAnchor.constraint(equalTo: fiveButton.trailingAnchor),
//sixButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//sixButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Three Button
//threeButton.topAnchor.constraint(equalTo: sixButton.bottomAnchor),
//threeButton.leadingAnchor.constraint(equalTo: twoButton.trailingAnchor),
//threeButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor),
//threeButton.widthAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//threeButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Divide Button
//divideButton.topAnchor.constraint(equalTo: resultLabel.bottomAnchor),
//divideButton.leadingAnchor.constraint(equalTo: clearButton.trailingAnchor),
//divideButton.trailingAnchor.constraint(equalTo: holder.layoutMarginsGuide.trailingAnchor),
//divideButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Mulitply Button
//multiplyButton.topAnchor.constraint(equalTo: divideButton.bottomAnchor),
//multiplyButton.leadingAnchor.constraint(equalTo: nineButton.trailingAnchor),
//multiplyButton.trailingAnchor.constraint(equalTo: holder.layoutMarginsGuide.trailingAnchor),
//multiplyButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Subtract Button
//subtractButton.topAnchor.constraint(equalTo: multiplyButton.bottomAnchor),
//subtractButton.leadingAnchor.constraint(equalTo: sixButton.trailingAnchor),
//subtractButton.trailingAnchor.constraint(equalTo: holder.layoutMarginsGuide.trailingAnchor),
//subtractButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Add Button
//addButton.topAnchor.constraint(equalTo: subtractButton.bottomAnchor),
//addButton.leadingAnchor.constraint(equalTo: threeButton.trailingAnchor),
//addButton.trailingAnchor.constraint(equalTo: holder.layoutMarginsGuide.trailingAnchor),
//addButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25),
//
//// Equal Button
//equalButton.topAnchor.constraint(equalTo: addButton.bottomAnchor),
//equalButton.leadingAnchor.constraint(equalTo: zeroButton.trailingAnchor),
//equalButton.bottomAnchor.constraint(equalTo: holder.layoutMarginsGuide.bottomAnchor),
//equalButton.trailingAnchor.constraint(equalTo: holder.layoutMarginsGuide.trailingAnchor),
//equalButton.heightAnchor.constraint(equalTo: holder.widthAnchor, multiplier: 0.25)
