//
// Created by Dani Postigo on 5/19/14.
//

#import "UIView+DPKit.h"
#import "UICollectionView+DPKit.h"


@implementation UICollectionView (DPKit)


- (void)deselectItems:(BOOL)animated {
    [self deselectItemsAtIndexPaths:[self indexPathsForSelectedItems] animated:animated];
}

- (void)deselectItemsAtIndexPaths:(NSArray *)indexPaths animated:(BOOL)animated {
    for (NSIndexPath *indexPath in indexPaths) {
        [self deselectItemAtIndexPath:indexPath animated:animated];
    }
}


- (void)selectItemsAtIndexPaths:(NSArray *)indexPaths {
    [self selectItemsAtIndexPaths:indexPaths animated:NO scrollPosition:UICollectionViewScrollPositionNone];
}

- (void)selectItemsAtIndexPaths:(NSArray *)indexPaths animated:(BOOL)animated {
    [self selectItemsAtIndexPaths:indexPaths animated:animated scrollPosition:UICollectionViewScrollPositionNone];
}

- (void)selectItemsAtIndexPaths:(NSArray *)indexPaths animated:(BOOL)animated scrollPosition:(UICollectionViewScrollPosition)scrollPosition {
    for (NSIndexPath *indexPath in indexPaths) {
        [self selectItemAtIndexPath:indexPath animated:animated scrollPosition:scrollPosition];
    }
}

- (NSArray *)cellsForItemsAtIndexPaths:(NSArray *)indexPaths {
    NSMutableArray *ret = [[NSMutableArray alloc] init];
    NSArray *paths = [NSArray arrayWithArray:indexPaths];
    for (NSIndexPath *indexPath in paths) {
        NSLog(@"indexPath = %@", indexPath);
        if (indexPath) {
            UICollectionViewCell *cell = [self cellForItemAtIndexPath:indexPath];
            if (cell != nil) {
                [ret addObject:cell];
            }
        }

    }

    return ret;
}

- (NSIndexPath *)selectedIndexPath {
    NSArray *indexPaths = [self indexPathsForSelectedItems];
    return [indexPaths count] == 1 ? indexPaths[0] : nil;
}

- (void)reloadDataSelectingIndexPath:(NSIndexPath *)indexPath {
    if (indexPath) {
        [self performBatchUpdates:^{
            [self reloadItemsAtIndexPaths:[self indexPathsForVisibleItems]];
        }              completion:^(BOOL finished) {


            [self selectItemAtIndexPath:indexPath animated:YES scrollPosition:UICollectionViewScrollPositionNone];
            if (self.delegate && [self.delegate respondsToSelector:@selector(collectionView:didSelectItemAtIndexPath:)]) {
                [[self delegate] collectionView:self didSelectItemAtIndexPath:indexPath];
            }
        }];
    } else {
        [self reloadData];

    }
}


- (void)reloadDataSelectingIndexPaths:(NSArray *)indexPaths {
    if (indexPaths && [indexPaths count] > 0) {
        [self performBatchUpdates:^{

            [self reloadItemsAtIndexPaths:[self indexPathsForVisibleItems]];

        }              completion:^(BOOL finished) {

            for (int j = 0; j < [indexPaths count]; j++) {
                NSIndexPath *indexPath = indexPaths[j];
                if (j == 0) {

                    [self selectItemAtIndexPath:indexPath animated:YES scrollPosition:UICollectionViewScrollPositionNone];
                }
            }

        }];
    } else {
        [self reloadData];
    }
}


- (UICollectionViewFlowLayout *)flowLayoutCopy {
    UICollectionViewFlowLayout *currentLayout = (UICollectionViewFlowLayout *) self.collectionViewLayout;
    UICollectionViewFlowLayout *ret = [[UICollectionViewFlowLayout alloc] init];
    ret.itemSize = currentLayout.itemSize;
    ret.sectionInset = currentLayout.sectionInset;
    ret.minimumInteritemSpacing = currentLayout.minimumInteritemSpacing;
    ret.minimumLineSpacing = currentLayout.minimumLineSpacing;
    ret.scrollDirection = currentLayout.scrollDirection;
    ret.footerReferenceSize = currentLayout.footerReferenceSize;
    ret.headerReferenceSize = currentLayout.headerReferenceSize;
    return ret;
}

- (void)setFlowLayoutSize:(CGSize)size {
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *) self.collectionViewLayout;
    flowLayout.itemSize = CGSizeMake(size.width - flowLayout.sectionInset.left - flowLayout.sectionInset.right, size.height - flowLayout.sectionInset.top - flowLayout.sectionInset.bottom);
    self.collectionViewLayout = flowLayout;
}

- (CGSize)flowLayoutSize {
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *) self.collectionViewLayout;
    return flowLayout.itemSize;
}


- (void)setFlowLayoutHeight:(CGFloat)aHeight {
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *) self.collectionViewLayout;
    flowLayout.itemSize = CGSizeMake(flowLayout.itemSize.width, aHeight - flowLayout.sectionInset.top - flowLayout.sectionInset.bottom);
    self.collectionViewLayout = flowLayout;
}

- (CGFloat)flowLayoutHeight {
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *) self.collectionViewLayout;
    return flowLayout.itemSize.height;
}


- (void)setFlowLayoutWidth:(CGFloat)width {
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *) self.collectionViewLayout;
    flowLayout.itemSize = CGSizeMake(width - flowLayout.sectionInset.left - flowLayout.sectionInset.right, flowLayout.itemSize.height);
    self.collectionViewLayout = flowLayout;
}

- (CGFloat)flowLayoutWidth {
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *) self.collectionViewLayout;
    return flowLayout.itemSize.width;
}
@end