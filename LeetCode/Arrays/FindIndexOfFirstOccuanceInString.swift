//
//  FindIndexOfFirstOccuanceInString.swift
//  
//
//  Created by Josip Petric on 10.10.2023..
//
//	https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string

import Foundation

// Solution using substring comparison
func strStr(_ haystack: String, _ needle: String) -> Int {
	guard haystack.count >= needle.count else {
		return -1
	}
	for i in 0..<(haystack.count - needle.count + 1) {
		let substring = (haystack as! NSString).substring(with: NSRange(location: i, length: needle.count))
		if substring == needle {
			return i
		}
	}
	return -1
}

// Solution using String range
func strStr2(_ haystack: String, _ needle: String) -> Int {
	guard haystack.count >= needle.count else {
		return -1
	}
	if let range = haystack.range(of: needle) {
		return range.lowerBound.utf16Offset(in: haystack)
	}
	return -1
}
