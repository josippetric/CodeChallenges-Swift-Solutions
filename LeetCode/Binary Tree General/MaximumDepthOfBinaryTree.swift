//
//  MaximumDepthOfBinaryTree.swift
//  
//
//  Created by Josip Petric on 20.10.2023..
//
// https://leetcode.com/problems/maximum-depth-of-binary-tree

import UIKit

// Definition for a binary tree node.
public class TreeNode {
	public var val: Int
	public var left: TreeNode?
	public var right: TreeNode?
	public init() { self.val = 0; self.left = nil; self.right = nil; }
	public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
	public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
		self.val = val
		self.left = left
		self.right = right
	 }
 }

// Depth-first search using recursion
func maxDepthRecursion(_ root: TreeNode?) -> Int {
	if root == nil {
		return 0
	}
	return 1 + max(maxDepthRecursion(root?.left), maxDepthRecursion(root?.right))
}

// Breadth-first search
// Uses Queues
func maxDepthBFS(_ root: TreeNode?) -> Int {
	guard let root = root else {
		return 0
	}
	var level = 0
	
	var queue = [root]
	while !queue.isEmpty {
		let count = queue.count
		for _ in 0..<count {
			let node = queue.remove(at: 0)
			if let left = node.left {
				queue.append(left)
			}
			if let right = node.right {
				queue.append(right)
			}
		}
		level += 1
	}
	return level
}

// Iterative depth-first search - without recursions
// Uses stacks
func maxDepthDFS(_ root: TreeNode?) -> Int {
	var stack = [(node: root, level: 1)]
	var maxLevel = 0
	while !stack.isEmpty {
		let (node, level) = stack.removeFirst()
		
		if let node = node {
			maxLevel = max(maxLevel, level)
			stack.append((node: node.left, level: level + 1))
			stack.append((node: node.right, level: level + 1))
		}
	}
	return maxLevel
}

let root = TreeNode(
	3,
	TreeNode(9, nil, nil),
	TreeNode(20,
		 TreeNode(15, nil, nil),
		 TreeNode(7, nil, nil)))

print(maxDepthDFS(root))

