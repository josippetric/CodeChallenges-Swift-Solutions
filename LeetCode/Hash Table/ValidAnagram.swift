//
//  ValidAnagram.swift
//  
//
//  Created by Josip Petric on 12.10.2023..
//
//	https://leetcode.com/problems/valid-anagram

import Foundation

// Solution using dictionary to count occurances
// Faster and more memory effecient than using arrays sorting
func isAnagram(_ s: String, _ t: String) -> Bool {
	guard s.count == t.count else {
		return false
	}
	var map = [Character: Int]()
	
	for index in s.indices {
		let sChar = s[index]
		let tChar = t[index]
		
		map[sChar, default: 0] += 1
		map[tChar, default: 0] -= 1
		
		if map[sChar] == 0 {
			map.removeValue(forKey: sChar)
		}
		if map[tChar] == 0 {
			map.removeValue(forKey: tChar)
		}
	}
	
	return map.isEmpty
}

// Solution using arrays sorting
// Bad runtime and bad memory.
func isAnagramWithSort(_ s: String, _ t: String) -> Bool {
	return s.sorted() == t.sorted()
}
