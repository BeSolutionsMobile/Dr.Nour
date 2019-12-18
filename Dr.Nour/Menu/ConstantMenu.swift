//
//  Constant.swift
//  TestSideText
//
//  Created by Mustafa on 12/11/19.
//  Copyright © 2019 Mostafa. All rights reserved.
//

import Foundation
import SideMenu


struct ConstantMenu {
        var menu1ItemTxet = ["Personal info", "My reservations" , " My referral" , "  BooKings referred me" ,"My Balance" ]
        var menu2ItemTxet = ["About de Nour", "FAQ" , "Reviews" , "  Gallery" ,"Contact us"
    ,  "LogOut"]
    var controller1 = ["PersonalInfoViewController", "MyReservationsViewController" ,  "MyReferralsViewController"  , "BookingsReferredViewController" ,"My Balance" ]
           var controller2 = ["About de Nour", "FAQ" , "Reviews" , "  Gallery" ,"Contact us"
       ,  "LogOut"]
    
    
}

class SharedMenu {
   
    
    
    static func settings(view: UIView) -> SideMenuSettings {
        let presentationStyle = SideMenuPresentationStyle.menuSlideIn
        presentationStyle.backgroundColor = .white
        var settings = SideMenuSettings()
        settings.presentationStyle = presentationStyle
        settings.menuWidth = view.frame.width-view.frame.width*(1/6)
        return settings
    }
}
