//
//  LongestCommonPrefix.swift
//  
//
//  Created by Josip Petric on 06.10.2023..
//
//	https://leetcode.com/problems/longest-common-prefix

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
	guard let firstWord = strs.first, !firstWord.isEmpty else {
		return ""
	}
	var prefix = ""
	for i in 1...firstWord.count {
		prefix = String(firstWord.prefix(i))
		var allHavePrefix = true
		for word in Array(strs.suffix(from: 1)) {
			if !word.hasPrefix(prefix) {
				allHavePrefix = false
				prefix = String(firstWord.prefix(i-1))
			}
		}
		if !allHavePrefix {
			return prefix
		}
	}
	return prefix
}

func longestCommonPrefixBetter(_ strs: [String]) -> String {
	guard !strs.isEmpty else {
		return ""
	}
	var prefix = strs[0]
	if prefix.isEmpty {
		return ""
	}
	for word in strs {
		while !word.hasPrefix(prefix) {
			prefix = String(prefix.dropLast())
		}
	}
	return prefix
}
