//
//  Dynamic.swift
//  MVVM_simple
//
//  Created by Kirill Khomytsevych on 01.04.2023.
//

import Foundation

// Этот класс связывает statusText c интерфейсом и изменением данных в этот объетом
class Dynamic<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?

    func bind(_ listener: Listener? ) {
        self.listener = listener
    }

    var value: T {
        didSet {
            listener?(value)
        }
    }

    init(_ value: T) {
        self.value = value
    }
}
