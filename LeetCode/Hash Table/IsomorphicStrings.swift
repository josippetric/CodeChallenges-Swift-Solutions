//
//  IsomorphicStrings.swift
//  
//
//  Created by Josip Petric on 11.10.2023..
//
//	https://leetcode.com/problems/isomorphic-strings

import Foundation

func isIsomorphic(_ s: String, _ t: String) -> Bool {
	var sMap = [Character: Character](), tMap = sMap
	
	for index in s.indices {
		let sChar = s[index]
		let tChar = t[index]
		
		if let mapped = sMap[sChar], mapped != tChar {
			return false
		}
		if let mapped = tMap[tChar], mapped != sChar {
			return false
		}
		
		sMap[sChar] = tChar
		tMap[tChar] = sChar
	}

	return true
}
