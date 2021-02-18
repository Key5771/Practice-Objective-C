//
//  XYZPerson+XYZPersonNameDisplayAdditions.h
//  WorkingWithObjects
//
//  Created by 김기현 on 2021/02/18.
//

#import <Foundation/Foundation.h>

#import "XYZPerson.h"
#import "XYZShoutingPerson.h"

NS_ASSUME_NONNULL_BEGIN

@interface XYZPerson (XYZPersonNameDisplayAdditions)

- (NSString *) lastNameFirstNameString;

@end

NS_ASSUME_NONNULL_END
