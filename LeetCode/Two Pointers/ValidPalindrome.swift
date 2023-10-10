//
//  ValidPalindrome.swift
//  
//
//  Created by Josip Petric on 10.10.2023..
//
//	https://leetcode.com/problems/valid-palindrome

import Foundation

func isPalindrome(_ s: String) -> Bool {
	let characters = Array(s.lowercased().filter({ $0.isAlphanumeric }))
	var left = 0
	var right = characters.count - 1

	while left < right  {
		let charLeft = characters[left]
		let charRight = characters[right]
		if charLeft == charRight {
			left += 1
			right -= 1
			continue
		} else {
			return false
		}
	}
	return true
}

// Solution using the string.reversed method. Checks if
// the string is equal to its reversed presentation

func isPalindromeReversed(_ s: String) -> Bool {
	let filtered = s.lowercased().filter({ $0.isAlphanumeric })
	return filtered == String(filtered.reversed())
}

extension Character {
	var isAlphanumeric: Bool {
		return isLetter || isNumber
	}
}
