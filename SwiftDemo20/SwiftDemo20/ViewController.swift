//
//  ViewController.swift
//  SwiftDemo20
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let scrollView = UIScrollView(frame: view.bounds)
        view.addSubview(scrollView)
        // 设置是否翻页
        scrollView.isPagingEnabled = true
        // 可以滚动的区域
        scrollView.contentSize = CGSize.init(width: view.bounds.size.width*9, height: view.bounds.size.height)
        // 显⽰示⽔水平滚动条
        scrollView.showsHorizontalScrollIndicator = true
        // 显⽰示垂直滚动条
        scrollView.showsVerticalScrollIndicator = true
        // 滚动条样式
        scrollView.indicatorStyle = UIScrollViewIndicatorStyle.white
        // 设置回弹效果
        scrollView.bounces = true
        // 设置scrollView可以滚动
        scrollView.isScrollEnabled = true
        // 当scrollsToTop=true时，点击设备状态栏会自动滚动到顶部
        scrollView.scrollsToTop = true
        // 缩放的最小比例
        scrollView.minimumZoomScale = 0.5
        // 放大的最大比例
        scrollView.maximumZoomScale = 2.0
        // 缩放回弹
        scrollView.bouncesZoom = true
        
        for i in 1..<10 {
            let imageView = UIImageView(frame: CGRect(x: view.frame.size.width*CGFloat(i-1), y: 0, width: view.frame.size.width, height: view.frame.size.height))
            imageView.image = UIImage(named: "美女0\(i).jpg")
            scrollView.addSubview(imageView)
        }
        
        scrollView.delegate = self

        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scrollView滚动时调用，只要offset的值发生变化就调用")
    }
    
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        print("当将要开始缩放时，执行该方法。一次有效缩放就只执行一次。")
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        print("当scrollView缩放时，调用该方法。在缩放过程中，会多次调用")
    }
    
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        print("当缩放结束后，并且缩放大小回到minimumZoomScale与maximumZoomScale之间后（我们也许会超出缩放范围），调用该方法。")
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        print("返回将要缩放的UIView对象。要执行多次")
        return scrollView.subviews.first
    }
    
    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        print("指示当用户点击状态栏后，滚动视图是否能够滚动到顶部。")// 需要设置滚动视图的属性：scrollView.scrollsToTop=true
        return true
    }
    
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        print("当滚动视图滚动到最顶端后，执行该方法")
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("当开始滚动视图时，执行该方法。一次有效滑动只执行一次。")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("滑动视图，当手指离开屏幕那一霎那，调用该方法。一次有效滑动只执行一次。")
    }
    
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        print("滑动减速时调用该方法。")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("滚动视图减速完成，滚动将停止时，调用该方法。一次有效滑动只执行一次。")
    }
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        print("当滚动视图动画完成后，调用该方法，如果没有动画，那么该方法将不被调用")
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print("滑动scrollView，并且手指离开时执行。一次有效滑动只执行一次。") //当pagingEnabled属性为true时，不调用该方法
    }

}

