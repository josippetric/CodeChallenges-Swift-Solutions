//
//  TwoSum.swift
//  
//
//  Created by Josip Petric on 12.10.2023..
//
// 	https://leetcode.com/problems/two-sum

import Foundation

// The simplest solution with O(n2) time complexity
// and 0(1) space complexity solution.
func twoSumBrute(_ nums: [Int], _ target: Int) -> [Int] {
	for i in 0..<nums.count {
		for j in i..<nums.count where i != j {
			if nums[i] + nums[j] == target {
				return [i, j]
			}
		}
	}
	return [0, 0]
}

// Solution with O(n) time complexity and O(n) space complexity
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
	var map = [Int: Int]()
	for (index, num) in nums.enumerated() {
		let missing = target - num
		if let foundIndex = map[missing] {
			return [foundIndex, index]
		} else {
			map[num] = index
		}
	}
	return [0, 0]
}
