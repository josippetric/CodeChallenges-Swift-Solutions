//
//  BestTimeToBuyAndSellStockII.swift
//  
//
//  Created by Josip Petric on 03.10.2023..
//
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/564/

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
	if prices.isEmpty { return 0}
	
	var minPrice = prices[0]
	var maxProfit = 0
	
	for price in prices {
		if price < minPrice {
			minPrice = price
		}
		
		let currentProfit = price - minPrice
		
		if currentProfit > maxProfit {
			maxProfit = currentProfit
		}
	}
	return maxProfit}
