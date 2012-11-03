//
//  ETViewController.h
//  ETMultiSelect
//
//  Created by Erik Tjernlund on 2012-11-03.
//  Copyright (c) 2012 Erik Tjernlund. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ETViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>

@property (weak,nonatomic) IBOutlet UICollectionView *collectionView;

@end
