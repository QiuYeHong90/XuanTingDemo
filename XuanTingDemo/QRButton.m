
//
//  QRButton.m
//  QiuRongShop
//
//  Created by 赵 on 2017/6/27.
//  Copyright © 2017年 袁书辉. All rights reserved.
//

#import "QRButton.h"

@interface QRButton ()
{
    NSInteger _d;
}
@end

@implementation QRButton

-(CGFloat)widthGet
{
    NSString * word = self.titleLabel.text;
    CGFloat w_word = [word widthForFont:self.titleLabel.font];
    CGFloat w = w_word+self.imageView.width+self.distance;
   return  w;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    }

- (instancetype)initWithCoder:(NSCoder *)coder
{
    
    if (self = [super initWithCoder:coder])
    {
        if (self.typeOfBtn==1) {
            self.x = 10;
            self.width = 70;
        }else{
            
        }
    }
    return self;
}

-(void)setTitle:(NSString *)title forState:(UIControlState)state
{
    [super setTitle:title forState:state];

}

-(void)awakeFromNib{
    [super awakeFromNib];
    
}
-(void)initUI{
    
        if (self.typeOfBtn==1) {
//            self.x = 10;
            self.width = 70;
            _d = 5;
           
            
        }else{
        
        }
        if (self.isTextCenter) {
        self.titleLabel.centerX = self.width/2;
        }else{
        CGFloat t_w  = self.titleLabel.width;
        CGFloat img_w = self.imageView.width;
        CGFloat d = _d ;
        CGFloat t_x = (self.width - (t_w+img_w+d))/2;
        CGFloat img_x = t_x+t_w+d;
        
        self.titleLabel.x = t_x;
        self.imageView.x = img_x;
        }
    
    
    

}
-(void)setDistance:(CGFloat)distance{
    _distance = distance;
    _d = distance;
    
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self initUI];
}

@end
