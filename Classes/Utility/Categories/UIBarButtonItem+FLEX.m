//
//  UIBarButtonItem+FLEX.m
//  FLEX
//
//  Created by Tanner on 2/4/20.
//  Copyright © 2020 Flipboard. All rights reserved.
//

#import "UIBarButtonItem+FLEX.h"

@implementation UIBarButtonItem (FLEX)

+ (UIBarButtonItem *)flex_flexibleSpace {
    return [self systemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
}

+ (UIBarButtonItem *)flex_fixedSpace {
    return [self systemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
}

+ (instancetype)systemItem:(UIBarButtonSystemItem)item target:(id)target action:(SEL)action {
    return [[self alloc] initWithBarButtonSystemItem:item target:target action:action];
}

+ (instancetype)itemWithCustomView:(UIView *)customView {
    return [[self alloc] initWithCustomView:customView];
}

+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action {
    return [[self alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:target action:action];
}

+ (instancetype)doneStyleitemWithTitle:(NSString *)title target:(id)target action:(SEL)action {
    return [[self alloc] initWithTitle:title style:UIBarButtonItemStyleDone target:target action:action];
}

+ (instancetype)itemWithImage:(UIImage *)image
                        style:(UIBarButtonItemStyle)style
                       target:(id)target
                       action:(SEL)action {
    return [[self alloc] initWithImage:image style:style target:target action:action];
}

+ (instancetype)disabledSystemItem:(UIBarButtonSystemItem)system {
    UIBarButtonItem *item = [self systemItem:system target:nil action:nil];
    item.enabled = NO;
    return item;
}

+ (instancetype)disabledItemWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style {
    UIBarButtonItem *item = [self itemWithTitle:title target:nil action:nil];
    item.enabled = NO;
    return item;
}

+ (instancetype)disabledItemWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style {
    UIBarButtonItem *item = [self itemWithImage:image style:style target:nil action:nil];
    item.enabled = NO;
    return item;
}

@end
