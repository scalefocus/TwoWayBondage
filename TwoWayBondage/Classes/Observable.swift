//
//  Observable.swift
//  TwoWayBondage
//
//

import Foundation

public class Observable<ObservedType> {
    public typealias Observer = (ObservedType) -> Void
    
    private var observers: [Observer]
    
    public var value: ObservedType? {
        didSet {
            if let value = value {
                notifyObservers(value)
            }
        }
    }
    
    public init(_ value: ObservedType? = nil) {
        self.value = value
        observers = []
    }
    
    public func bind(observer: @escaping Observer) {
        self.observers.append(observer)
    }
    
    public func bind<T: AnyObject>(_ object: T, observer: @escaping (T, ObservedType) -> Void) {
        observers.append({ [weak object] value in
            guard let object = object else { return }
            observer(object, value)
        })
    }
    
    public func bindAndFire(observer: @escaping Observer) {
        bind(observer: observer)
        if let value = value {
            notifyObservers(value)
        }
    }
    
    public func bindAndFire<T: AnyObject>(_ object: T, observer: @escaping (T, ObservedType) -> Void) {
        bind(object, observer: observer)
        if let value = value {
            notifyObservers(value)
        }
    }
    
    private func notifyObservers(_ value: ObservedType) {
        self.observers.forEach { (observer) in
            observer(value)
        }
    }
}
