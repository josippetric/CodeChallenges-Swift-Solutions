//
//  RansomNote.swift
//  
//
//  Created by Josip Petric on 10.10.2023..
//
// https://leetcode.com/problems/ransom-note

import Foundation

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
	guard !magazine.isEmpty else {
		return false
	}
	guard !ransomNote.isEmpty else {
		return true
	}

	var ransomMap = [Character: Int]()
	for character in ransomNote {
		let found = ransomMap[character, default: 0]
		ransomMap[character] = found + 1
	}
	for character in magazine {
		if let found = ransomMap[character] {
			if found - 1 == 0 {
				ransomMap.removeValue(forKey: character)
			} else {
				ransomMap[character] = found - 1
			}
		}
		
	}
	return ransomMap.isEmpty
}

// time: O(n), space: O(n)
func canConstructIndexRemoval(_ ransomNote: String, _ magazine: String) -> Bool {
	var magazineCopy = magazine
	for character in ransomNote {
		if let index = magazineCopy.firstIndex(of: character) {
			magazineCopy.remove(at: index)
		} else {
			return false
		}
	}
	return true
}
