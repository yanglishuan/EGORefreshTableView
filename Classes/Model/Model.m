//
//  Model.m
//  TableViewPull
//
//  Created by Xin Fan on 12/19/12.
//
//

#import "Model.h"

@implementation Model
@synthesize array = _array;

- (NSMutableArray *)array
{
    if (!_array) {
        _array = [[NSMutableArray alloc] init];
        for (int i = 0; i < 10; ++i) {
            [_array addObject:[NSNumber numberWithInt:i]];
        }
    }
    return _array;
}

- (void)reload
{
    [_array removeAllObjects];
    for (int i = 0; i < 10; ++i) {
        [_array addObject:[NSNumber numberWithInt:i]];
    }
}

- (void)loadMore
{
    NSInteger last = [[self.array lastObject] intValue];
    for (int i = 1; i < 11; ++i) {
        [_array addObject:[NSNumber numberWithInt:last + i]];
    }
}

@end
