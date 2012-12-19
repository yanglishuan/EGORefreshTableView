//
//  Model.h
//  TableViewPull
//
//  Created by Xin Fan on 12/19/12.
//
//

#import <Foundation/Foundation.h>

@interface Model : NSObject
@property (nonatomic, retain) NSMutableArray *array;

- (void)loadMore;
- (void)reload;
@end
