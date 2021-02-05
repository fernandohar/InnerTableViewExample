//
//  OuterTableViewCell.swift
//  InnerTableViewExample
//
//  Created by Fernando on 3/11/2020.
//  Copyright © 2020 Fernando. All rights reserved.
//

import UIKit

class OuterTableViewCell: UITableViewCell {

    @IBOutlet weak var outerLabel: UILabel!
    @IBOutlet weak var innerTable: InnerTable!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTableViewDataSourceDelegate <D: UITableViewDelegate & UITableViewDataSource>(_ dataSourceDelegate: D, forRow row: Int){
        innerTable.delegate = dataSourceDelegate
        innerTable.dataSource = dataSourceDelegate
        
        innerTable.reloadData()
    }
    
    public override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
        
        let outerLabelHeight =  outerLabel.sizeThatFits(CGSize(width: self.frame.width, height: 999)).height
        
        innerTable.frame = CGRect(x: 0, y: 0, width: innerTable.frame.width, height: 1024)
        innerTable.invalidateIntrinsicContentSize()
        innerTable.layoutIfNeeded()
        
//
//        orderNumIxTable.contentInset = UIEdgeInsets(top: -20, left: 0, bottom: 0, right: 0)
//        orderNumIxTable.frame = CGRect(x: 0, y: 0, width: orderNumIxTable.frame.width, height: 1024)
//        orderNumIxTable.invalidateIntrinsicContentSize()
//        orderNumIxTable.layoutIfNeeded()
//        let cNameHeight = self.patientChiNameLabel.sizeThatFits(CGSize(width: 130, height: 999)).height
//        let eNameHeight = self.patientEngNameLabel.sizeThatFits(CGSize(width: 130, height: 999)).height
//        let hkidHeight = self.patientHKIDLabel.sizeThatFits(CGSize(width:130, height: 999)).height
//        let nameColumnHeight = 11 + cNameHeight + 8 + eNameHeight + 8 + hkidHeight + 11
//
//        let orderNumIxTableHeight = orderNumIxTable.contentSize.height - 20
        //print("\(patientChiNameLabel.text ?? "" ), \(patientHKIDLabel.text ?? "") \(nameColumnHeight), \(orderNumIxTableHeight)")
        return CGSize(width: targetSize.width, height: outerLabelHeight + innerTable.contentSize.height + 100)
    }
}

class InnerTable: ContentSizedTableView{
    public var orderIndex  = -1
    
//    override public var intrinsicContentSize: CGSize{
//        self.layoutIfNeeded()
//        return self.contentSize
//    }
//    override public var contentSize: CGSize{
//        didSet{
//            self.invalidateIntrinsicContentSize()
//            self.frame.size = self.contentSize
//        }
//    }
//    override public func reloadData() {
//        super.reloadData()
//        self.invalidateIntrinsicContentSize()
//    }
}
