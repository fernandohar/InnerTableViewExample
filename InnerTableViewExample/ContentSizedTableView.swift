//
//  ContentSizedTableView.swift
//  InnerTableViewExample
//
//  Created by Fernando on 5/2/2021.
//  Copyright © 2021 Fernando. All rights reserved.
//

import UIKit

class ContentSizedTableView : UITableView{
    override var contentSize:CGSize {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }

    override var intrinsicContentSize: CGSize {
        layoutIfNeeded()
        return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
    }
}
