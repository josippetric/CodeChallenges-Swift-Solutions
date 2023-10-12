//
//  WordPattern.swift
//  
//
//  Created by Josip Petric on 12.10.2023..
//
//	https://leetcode.com/problems/word-pattern

import Foundation

func wordPattern(_ pattern: String, _ s: String) -> Bool {
	let components = s.components(separatedBy: .whitespaces)
	guard components.count == pattern.count else {
		return false
	}
	
	var map = [Character: String]()
	var sMap = [String: Character]()
	
	for index in pattern.indices {
		let p = pattern[index]
		let component = components[index.utf16Offset(in: pattern)]
		
		if let mapped = map[p], mapped != component {
			return false
		}
		if let mapped = sMap[component], mapped != p {
			return false
		}
		
		map[p] = components[index.utf16Offset(in: pattern)]
		sMap[component] = p
	}
	
	return true
}
