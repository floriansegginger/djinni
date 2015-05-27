// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from derivings.djinni

#import "DBRecordWithDerivings.h"


@implementation DBRecordWithDerivings

- (id)initWithKey1:(int32_t)key1
              key2:(nonnull NSString *)key2
{
    if (self = [super init]) {
        _key1 = key1;
        _key2 = [key2 copy];
    }
    return self;
}

- (BOOL)isEqual:(id)other
{
    if (![other isKindOfClass:[DBRecordWithDerivings class]]) {
        return NO;
    }
    DBRecordWithDerivings *typedOther = (DBRecordWithDerivings *)other;
    return self.key1 == typedOther.key1 &&
            [self.key2 isEqualToString:typedOther.key2];
}
- (NSComparisonResult)compare:(DBRecordWithDerivings *)other
{
    NSComparisonResult tempResult;
    if (self.key1 < other.key1) {
        tempResult = NSOrderedAscending;
    } else if (self.key1 > other.key1) {
        tempResult = NSOrderedDescending;
    } else {
        tempResult = NSOrderedSame;
    }
    if (tempResult != NSOrderedSame) {
        return tempResult;
    }
    tempResult = [self.key2 compare:other.key2];
    if (tempResult != NSOrderedSame) {
        return tempResult;
    }
    return NSOrderedSame;
}

@end
