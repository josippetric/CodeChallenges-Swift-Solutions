//
//  Happy Number.swift
//  
//
//  Created by Josip Petric on 12.10.2023..
//
//	https://leetcode.com/problems/happy-number

import Foundation

func isHappy(_ n: Int) -> Bool {
	var digits = n.digits
	var result = 0
	var prevSums = Set<Int>()

	while !prevSums.contains(result) {
		prevSums.insert(result)
		result = digits.reduce(0, { sum, current in
			return sum + current*current
		})
		if result == 1 {
			return true
		}
		digits = result.digits
	}
	return false
}

extension Int {
	var digits: [Int] {
		String(self).compactMap { $0.wholeNumberValue }
	}
}
