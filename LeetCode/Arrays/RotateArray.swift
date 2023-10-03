//
//  RotateArray.swift
//  
//
//  Created by Josip Petric on 03.10.2023..
//
// https://leetcode.com/problems/rotate-array

import Foundation

func rotate(_ nums: inout [Int], _ k: Int) {
	var rotated = nums
	for i in 0..<nums.count {
		rotated[(i+k)%nums.count] = nums[i]
	}
	for i in 0..<rotated.count {
		nums[i] = rotated[i]
	}
}
