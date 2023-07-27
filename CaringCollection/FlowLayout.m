//
//  FlowLayout.m
//  CaringCollection
//
//  Created by Mikhail Andreev on 27.07.2023.
//

#import "FlowLayout.h"

@implementation FlowLayout

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset
								 withScrollingVelocity:(CGPoint)velocity
{
	__auto_type itemWidth = self.collectionView.frame.size.width * 0.65 + self.minimumInteritemSpacing;
	__auto_type numberOfItems = round(proposedContentOffset.x / itemWidth);
	__auto_type targetX = numberOfItems * itemWidth - self.sectionInset.left;

	return CGPointMake(targetX, proposedContentOffset.y);
}

@end
