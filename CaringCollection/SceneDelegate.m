//
//  SceneDelegate.m
//  CaringCollection
//
//  Created by Mikhail Andreev on 26.07.2023.
//

#import "SceneDelegate.h"
#import "ViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
	UIWindowScene *windowScene = (UIWindowScene *)scene;
	UIWindow *window = [[UIWindow alloc] initWithWindowScene:windowScene];
	ViewController *viewController = [[ViewController alloc] init];
	UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
	[window setRootViewController:navigationController];
	self.window = window;
	[window makeKeyAndVisible];
}


@end
