//
//  QRButton.h
//  QiuRongShop
//
//  Created by 赵 on 2017/6/27.
//  Copyright © 2017年 袁书辉. All rights reserved.
//

typedef NS_ENUM(NSUInteger, QRButtonType) {
    QRButtonDefaultType,
    QRButtonNavType,
    
};

#import <UIKit/UIKit.h>


@interface QRButton : UIButton
//文字图片间的距离
@property (nonatomic,assign) IBInspectable CGFloat distance;

@property (nonatomic,assign) IBInspectable NSInteger typeOfBtn;

@property (nonatomic,assign) BOOL isTextCenter;
-(CGFloat)widthGet;
@end
