//
//  Builder+UIScrollView.swift
//  GeonuUIKit
//
//  Created by 전건우 on 2020/01/09.
//

import UIKit

extension Builder where Product: UIScrollView {
    public func contentOffset(_ contentOffset: CGPoint) -> Self {
        self.product.contentOffset = contentOffset
        return self
    }
    
    public func contentSize(_ contentSize: CGSize) -> Self {
        self.product.contentSize = contentSize
        return self
    }
    
    public func contentInset(_ contentInset: UIEdgeInsets) -> Self {
        self.product.contentInset = contentInset
        return self
    }
    
    public func contentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior) -> Self {
        self.product.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior
        return self
    }
    
    @available(iOS 13.0, *)
    public func automaticallyAdjustsScrollIndicatorInsets(_ automaticallyAdjustsScrollIndicatorInsets: Bool) -> Self {
        self.product.automaticallyAdjustsScrollIndicatorInsets = automaticallyAdjustsScrollIndicatorInsets
        return self
    }
    
    public func delegate(_ delegate: UIScrollViewDelegate) -> Self {
        self.product.delegate = delegate
        return self
    }
    
    public func bounces(_ bounces: Bool) -> Self {
        self.product.bounces = bounces
        return self
    }
    
    public func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> Self {
        self.product.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    public func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> Self {
        self.product.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    
    public func scrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets) -> Self {
        self.product.scrollIndicatorInsets = scrollIndicatorInsets
        return self
    }
    
    public func isPagingEnabled(_ isPagingEnabled: Bool) -> Self {
        self.product.isPagingEnabled = isPagingEnabled
        return self
    }
    
    public func isScrollEnabled(_ isScrollEnabled: Bool) -> Self {
        self.product.isScrollEnabled = isScrollEnabled
        return self
    }
    
    public func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> Self {
        self.product.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    public func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> Self {
        self.product.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    public func bouncesZoom(_ bouncesZoom: Bool) -> Self {
        self.product.bouncesZoom = bouncesZoom
        return self
    }
    
    public func setZoomScale(_ scale: CGFloat, animated: Bool) -> Self {
        self.product.setZoomScale(scale, animated: animated)
        return self
    }
    
    public func maximumZoomScale(_ maximumZoomScale: CGFloat) -> Self {
        self.product.maximumZoomScale = maximumZoomScale
        return self
    }
    
    public func minimumZoomScale(_ minimumZoomScale: CGFloat) -> Self {
        self.product.minimumZoomScale = minimumZoomScale
        return self
    }
}
