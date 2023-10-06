//
//  RomanToInteger.swift
//  
//
//  Created by Josip Petric on 06.10.2023..
//
//	https://leetcode.com/problems/roman-to-integer

import Foundation

private func parseRomanSignToInt(_ s: Character) -> Int {
	var integer: Int = 0
	switch s {
	case "I": integer = 1
	case "V": integer = 5
	case "X": integer = 10
	case "L": integer = 50
	case "C": integer = 100
	case "D": integer = 500
	case "M": integer = 1000
	default: integer = 0
	}
	return integer
}

func romanToInt(_ s: String) -> Int {
	var total = 0
	var tmpSum = 0
	let characters = Array(s)
	characters.enumerated().forEach { (index, sign) in
		let romanNum = parseRomanSignToInt(sign)
		if index == 0 || romanNum == parseRomanSignToInt(characters[index-1]) {
			tmpSum += romanNum
		} else if romanNum > parseRomanSignToInt(characters[index-1]) {
			tmpSum -= romanNum
			total += abs(tmpSum)
			tmpSum = 0
		} else if romanNum < parseRomanSignToInt(characters[index-1]) {
			total += tmpSum
			tmpSum = 0
			tmpSum += romanNum
		}
		if index == characters.count - 1 {
			total += tmpSum
		}
	}
	return total
}
