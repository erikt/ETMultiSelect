//
//  ETViewController.m
//  ETMultiSelect
//
//  Created by Erik Tjernlund on 2012-11-03.
//  Copyright (c) 2012 Erik Tjernlund. All rights reserved.
//

#import "ETViewController.h"
#import "ETCellView.h"

@implementation ETViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Register our custom collection view cell
    [self.collectionView registerClass:ETCellView.class forCellWithReuseIdentifier:@"cvCell"];
    
    // Make it possible to select multiple cells
    self.collectionView.allowsMultipleSelection = YES;
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

#pragma mark - UICollectionViewDelegate
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ETCellView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cvCell" forIndexPath:indexPath];
    return cell;
}

@end
