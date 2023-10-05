//
//  RemoveElement.swift
//  
//
//  Created by Josip Petric on 05.10.2023..
//
// 	https://leetcode.com/problems/remove-element

import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
	var index = 0
	for _ in 0..<nums.count {
		if nums[index] == val {
			nums.append(nums.remove(at: index))
		} else {
			index += 1
		}
	}
	return index
}
