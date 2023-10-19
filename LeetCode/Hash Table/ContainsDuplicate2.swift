//
//  ContainsDuplicate2.swift
//  
//
//  Created by Josip Petric on 19.10.2023..
//
// https://leetcode.com/problems/contains-duplicate-ii

import Foundation

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
	var map = [Int: Int]()
	
	for i in 0..<nums.count {
		let num = nums[i]
		
		if let previousIndex = map[num] {
			if abs(previousIndex - i) <= k {
				return true
			}
		}
		map[num] = i
	}
	return false
}
