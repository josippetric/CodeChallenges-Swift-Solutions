//
//  LengthOfLastWord.swift
//  
//
//  Created by Josip Petric on 06.10.2023..
//
//	https://leetcode.com/problems/length-of-last-word

import Foundation

// The simplest solution but not very effecient
func lengthOfLastWordSimple(_ s: String) -> Int {
	let words = s.components(separatedBy: .whitespacesAndNewlines).filter({ !$0.isEmpty })
	return words.last?.count ?? 0
}

func lengthOfLastWordBetter(_ s: String) -> Int {
	var length = 0
	var wasWhitespace = false
	s.forEach { character in
		if character.isWhitespace {
			wasWhitespace = true
		} else {
			length = wasWhitespace ? 1 : length + 1
			wasWhitespace = false
		}
	}
	return length
}

// The most effecient of the three
func lengthOfLastWordReverse(_ s: String) -> Int {
	var length = 0
	for element in s.reversed() {
		if !element.isWhitespace {
			length += 1
		} else if length > 0 {
			return length
		}
	}
	return length
}
