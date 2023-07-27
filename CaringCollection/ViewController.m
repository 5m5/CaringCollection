//
//  ViewController.m
//  CaringCollection
//
//  Created by Mikhail Andreev on 26.07.2023.
//

#import "ViewController.h"
#import "FlowLayout.h"

@interface ViewController ()

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.navigationController.navigationBar.prefersLargeTitles = YES;

	FlowLayout *layout = [[FlowLayout alloc] init];
	layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
	layout.minimumLineSpacing = 10.0;
	layout.minimumInteritemSpacing = 10.0;

	self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
	[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
	[self.collectionView setDelegate:self];
	[self.collectionView setDataSource:self];

	// Устанавливаем цвет фона для collectionView
	self.collectionView.backgroundColor = [UIColor whiteColor];
	[self.view addSubview:self.collectionView];
	[self setTitle:@"Collection"];
	[self.view setBackgroundColor:UIColor.systemBackgroundColor];
}

#pragma mark - UICollectionViewDataSource

- (UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
	UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
	[cell setBackgroundColor:[UIColor systemGray5Color]];
	[cell.layer setCornerRadius:16];
	//[cell setFrame:CGRectMake(self.view.layoutMargins.left, 0, collectionView.frame.size.width * 0.3, collectionView.frame.size.width * 0.5)];
	return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
	return 10;
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView
				  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
	return CGSizeMake(collectionView.frame.size.width * 0.65, collectionView.frame.size.height * 0.5);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView
						layout:(UICollectionViewLayout *)collectionViewLayout
		insetForSectionAtIndex:(NSInteger)section
{
	return UIEdgeInsetsMake(0, self.view.layoutMargins.left, 0, 0);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView
				   layout:(UICollectionViewLayout *)collectionViewLayout
minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
	return self.view.layoutMargins.left;
}


@end
