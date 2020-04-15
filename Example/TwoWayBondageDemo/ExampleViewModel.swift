//
//  ExampleViewModel.swift
//  TwoWayBondageDemo
//
//  Created by Vesela Ilchevska on 14.04.20.
//  Copyright © 2020 Vesela Ilchevska. All rights reserved.
//

import Foundation
import TwoWayBondage

struct ExampleViewModel {
    let name: Observable<String> = Observable<String>()
    let isBroccoliLover: Observable<Bool> = Observable<Bool>()
    let isIceCreamLover: Observable<Bool> = Observable<Bool>(true)
}
