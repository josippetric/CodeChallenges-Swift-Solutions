//
//  IsSubsequence.swift
//  
//
//  Created by Josip Petric on 10.10.2023..
//
//	https://leetcode.com/problems/is-subsequence

import Foundation

func isSubsequence(_ s: String, _ t: String) -> Bool {
	let tCharacters = Array(t)
	var j = 0
	for character in s {
		var characterFound = false
		while j < t.count {
			if character == tCharacters[j] {
				characterFound = true
				j += 1
				break
			}
			j += 1
		}
		if characterFound == false {
			return false
		}
	}
	return true
}

func isSubsequenceStack(_ s: String, _ t: String) -> Bool {
	guard !s.isEmpty else {
		return true
	}
	var stack = Array(s)
	for character in t {
		if character == stack.first {
			_ = stack.removeFirst()
			if stack.isEmpty {
				return true
			}
		}
	}
	return false
}
