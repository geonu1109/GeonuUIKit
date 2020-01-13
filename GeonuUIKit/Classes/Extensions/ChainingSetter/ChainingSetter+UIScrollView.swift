//
//  ChainingSetter+UIScrollView.swift
//  GeonuUIKit
//
//  Created by Geonu Jeon on 2020/01/10.
//

import UIKit

extension ChainingSetter where Component: UIScrollView {
    @discardableResult
    public func setContentOffset(_ contentOffset: CGPoint) -> Self {
        self.component.contentOffset = contentOffset
        return self
    }
    
    @discardableResult
    public func setContentSize(_ contentSize: CGSize) -> Self {
        self.component.contentSize = contentSize
        return self
    }
    
    @discardableResult
    public func setContentInset(_ contentInset: UIEdgeInsets) -> Self {
        self.component.contentInset = contentInset
        return self
    }
    
    @discardableResult
    public func setContentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior) -> Self {
        self.component.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior
        return self
    }
    
    @discardableResult
    @available(iOS 13.0, *)
    public func setAutomaticallyAdjustsScrollIndicatorInsets(_ automaticallyAdjustsScrollIndicatorInsets: Bool) -> Self {
        self.component.automaticallyAdjustsScrollIndicatorInsets = automaticallyAdjustsScrollIndicatorInsets
        return self
    }
    
    @discardableResult
    public func setDelegate(_ delegate: UIScrollViewDelegate) -> Self {
        self.component.delegate = delegate
        return self
    }
    
    @discardableResult
    public func setBounces(_ bounces: Bool) -> Self {
        self.component.bounces = bounces
        return self
    }
    
    @discardableResult
    public func setAlwaysBounceVertical(_ alwaysBounceVertical: Bool) -> Self {
        self.component.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    @discardableResult
    public func setAlwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> Self {
        self.component.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    
    @discardableResult
    public func setScrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets) -> Self {
        self.component.scrollIndicatorInsets = scrollIndicatorInsets
        return self
    }
    
    @discardableResult
    public func setIsPagingEnabled(_ isPagingEnabled: Bool) -> Self {
        self.component.isPagingEnabled = isPagingEnabled
        return self
    }
    
    @discardableResult
    public func setIsScrollEnabled(_ isScrollEnabled: Bool) -> Self {
        self.component.isScrollEnabled = isScrollEnabled
        return self
    }
    
    @discardableResult
    public func setShowsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> Self {
        self.component.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    public func setShowsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> Self {
        self.component.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    @discardableResult
    public func setBouncesZoom(_ bouncesZoom: Bool) -> Self {
        self.component.bouncesZoom = bouncesZoom
        return self
    }
    
    @discardableResult
    public func setZoomScale(_ scale: CGFloat, animated: Bool) -> Self {
        self.component.setZoomScale(scale, animated: animated)
        return self
    }
    
    @discardableResult
    public func setMaximumZoomScale(_ maximumZoomScale: CGFloat) -> Self {
        self.component.maximumZoomScale = maximumZoomScale
        return self
    }
    
    @discardableResult
    public func setMinimumZoomScale(_ minimumZoomScale: CGFloat) -> Self {
        self.component.minimumZoomScale = minimumZoomScale
        return self
    }
}
