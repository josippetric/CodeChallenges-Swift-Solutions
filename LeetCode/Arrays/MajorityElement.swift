//
//  MajorityElement.swift
//  
//
//  Created by Josip Petric on 05.10.2023..
//
//	https://leetcode.com/problems/majority-element

import Foundation

func majority(_ nums: [Int]) -> Int {
	var countMap = [Int: Int]()
	nums.forEach { element in
		countMap[element, default: 0] += 1
	}
	var majorityElement = nums.first!
	countMap.keys.forEach { element in
		if let count = countMap[element], count > (nums.count / 2) {
			majorityElement = element
		}
	}
	return majorityElement
}
