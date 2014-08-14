//
// Created by Dani Postigo on 5/19/14.
//

#import <Foundation/Foundation.h>

@interface UICollectionView (DPKit)

@property(nonatomic) CGFloat flowLayoutWidth;
@property(nonatomic) CGFloat flowLayoutHeight;
@property(nonatomic) CGSize flowLayoutSize;
- (void)deselectItems:(BOOL)animated;
- (void) deselectItemsAtIndexPaths: (NSArray *) indexPaths animated: (BOOL) animated;
- (void)selectItemsAtIndexPaths:(NSArray *)indexPaths;
- (void)selectItemsAtIndexPaths:(NSArray *)indexPaths animated:(BOOL)animated;
- (void)selectItemsAtIndexPaths:(NSArray *)indexPaths animated:(BOOL)animated scrollPosition:(UICollectionViewScrollPosition)scrollPosition;
- (NSArray *) cellsForItemsAtIndexPaths: (NSArray *) indexPaths;
- (NSIndexPath *) selectedIndexPath;
- (void) reloadDataSelectingIndexPath: (NSIndexPath *) indexPath;
- (void) reloadDataSelectingIndexPaths: (NSArray *) indexPaths;
- (UICollectionViewFlowLayout *) flowLayoutCopy;
@end