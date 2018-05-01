//
//  ViewController.m
//  XuanTingDemo
//
//  Created by Mac on 2018/5/1.
//  Copyright © 2018年 袁书辉. All rights reserved.
//

#import "HomeNavView.h"

#import <MJRefresh.h>
#import "ViewController.h"

#define ST_PULLTOREFRESH_HEADER_HEIGHT 100

#define TOPOFSET 100

@interface ViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate>
{
    BOOL _contentOffsetKVODisabled;
    CGFloat _agoOffset;
}

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topOffset;

@end

static void * SwipeTableViewItemContentSizeContext     = &SwipeTableViewItemContentSizeContext;

const NSString * cellId = @"CollCell" ;
@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
//        [self.collectionView.mj_header endRefreshing];
    }];
//    self.collectionView.contentOffset = CGPointMake(0, -100);
   
    
   
    
//    self.hoverView.contentView = self.collectionView;
    
    HomeNavView * navView = [HomeNavView initWithNib];
    navView.bounds = CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width,44+44+44+38);
    
    CGFloat maxH = [HomeNavView statsHeight] + 44+44+38;
    CGFloat minH = [HomeNavView statsHeight] + 44+38;
    
    [self.hoverView setHeaderView:navView contentView:self.collectionView headerViewMax_h:maxH headerViewMin_h:minH];
    

    
   

}

//-(void)scrollViewDidScroll:(UIScrollView *)scrollView
//{
//}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;
{
    return 100;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
