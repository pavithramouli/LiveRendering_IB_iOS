//
//  RustyCustomView.swift
//  IBRenderingTrials
//
//  Created by Pavithramouli on 25/02/16.
//  Copyright © 2016 Pavithramouli. All rights reserved.
//

import UIKit

@IBDesignable class RustyCustomView: UIView {

    let textLabel = UILabel()
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setUpTheView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpTheView()
    }
    
    @IBInspectable var lableTextColor: UIColor = .blackColor() {
        didSet {
            textLabel.textColor = lableTextColor
        }
    }
    
    @IBInspectable var labelBorderWidth: CGFloat = 5 {
        didSet {
            textLabel.layer.borderWidth = labelBorderWidth
        }
    }
    
    @IBInspectable var randomCustomVariable: Bool = false
    
    private func setUpTheView() -> Void {
        self.backgroundColor = .clearColor()
        
        textLabel.text = "Hey, magic!"
        textLabel.textColor = lableTextColor
        textLabel.font = .systemFontOfSize(21)
        textLabel.textAlignment = .Center
        textLabel.numberOfLines = 0

        addSubview(textLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews();
        textLabel.frame = bounds
        self.syncWithIB();
    }
    
   /* override func prepareForInterfaceBuilder() {
        self.syncWithIB();
    }*/
    
    func syncWithIB(){
        self.backgroundColor = UIColor.lightGrayColor();
        if(randomCustomVariable == true){
            textLabel.text = "Wow, this works too";
        }
    }

}
