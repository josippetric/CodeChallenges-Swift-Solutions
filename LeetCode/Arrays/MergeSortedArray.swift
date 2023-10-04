//
//  MergeSortedArray.swift
//  
//
//  Created by Josip Petric on 04.10.2023..
// 	https://leetcode.com/problems/merge-sorted-array/

import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
	nums1.removeLast(n)
	nums1.append(contentsOf: nums2)
	nums1.sort()
}
