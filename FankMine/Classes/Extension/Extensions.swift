//
//  Created by fank on 2019/3/6.
//  Copyright © 2019年 fank. All rights reserved.
//

import UIKit

@IBDesignable public class MakeUIViewGreatAgain: UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowOffset = CGSize(width: 0, height: 0)
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOpacity = 0.4
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var interfaceBuilderBackgroundColor: UIColor?
    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.backgroundColor = self.interfaceBuilderBackgroundColor ?? self.backgroundColor
    }
}
