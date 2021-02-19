//
//  PassData.swift
//  CaseTool
//
//  Created by 김기현 on 2021/02/19.
//

import Foundation

@objc protocol PassDataDelegate {
    @objc func passData(withStr str: String)
}
