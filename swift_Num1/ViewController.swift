//
//  ViewController.swift
//  swift_Num1
//
//  Created by Zeus on 2017/6/23.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit

/**
     1.访问当前对象的属性，可以不用self（建议不用）原因：区分闭包(类似于block)中需要使用self.
 
     2.枚举类型都用" . " 获取，类似.touchUpInside
 
     3.监听方法用#selector ，可以不带“：”
 
     4.标记 Mark ; TODO
 */



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //MARK: 提示  (类似于progma mark)
        
        // 1. 创建一个视图
        let v = UIView(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
        
        // 设置背景颜色
        v.backgroundColor = UIColor.red    // TODO: 应该修改颜色
        v.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 0, alpha: 1)  // = 后面打color会跳出选择   // FIXME: 应该更新颜色
        
        // 添加到当前视图
        view.addSubview(v)
        
        // 2.创建一个按钮
        let btn = UIButton(type: .contactAdd)
        
        v.addSubview(btn)
        
        btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        
        //MARK ----- 自定义button的写法
        let button = UIButton()
        
        button.setTitle("自定义BUTTON", for: .normal)
        // raw:原始的，使用一个值调用枚举的构造函数，创建一个枚举值
        button.setTitleColor(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), for: UIControlState(rawValue: 0))
        button.sizeToFit()
        button.center = view.center
        view.addSubview(button)
        
    }
    
    func clickMe(btn : UIButton) ->(){
        print("哈哈哈哈")
        // 跟踪函数名称 加 #
        print(#function)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

