//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/tools/TimeFormatUtils.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqLibToolsTimeFormatUtils_H_
#define _ComFqLibToolsTimeFormatUtils_H_

@class IOSObjectArray;
@class JavaUtilCalendar;
@class JavaUtilDate;

#import "JreEmulation.h"

@interface ComFqLibToolsTimeFormatUtils : NSObject {
}

+ (NSString *)getUseDayWithLong:(long long int)startTime
                       withLong:(long long int)endTime;

+ (NSString *)getTimeByFormatWithLong:(long long int)time
                         withNSString:(NSString *)format;

+ (NSString *)getTimeByFormatWithLong:(long long int)time;

+ (JavaUtilDate *)getDate4StrWithNSString:(NSString *)dateStr
                             withNSString:(NSString *)format;

+ (JavaUtilCalendar *)getCalendar4StrWithNSString:(NSString *)dateStr
                                     withNSString:(NSString *)format;

+ (NSString *)getUSWeekWithLong:(long long int)date;

+ (NSString *)getCNDateWithLong:(long long int)date;

+ (NSString *)getCNDate2WithLong:(long long int)date;

+ (NSString *)getUSDateWithLong:(long long int)date;

+ (NSString *)getStrDateWithLong:(long long int)date;

+ (long long int)getTimeMillisByDateWithNSString:(NSString *)time;

+ (long long int)getTimeMillisByDateWithSecondsWithNSString:(NSString *)time;

+ (long long int)getTimeMillisByDateWithSecondsWithNSString:(NSString *)time
                                               withNSString:(NSString *)foamat;

+ (NSString *)getTimeByStrWithNSString:(NSString *)time
                          withNSString:(NSString *)format;

+ (NSString *)getdayOfWeekWithInt:(int)day;

+ (int)dataCompareWithLong:(long long int)timeMillis;

- (id)init;

@end

FOUNDATION_EXPORT BOOL ComFqLibToolsTimeFormatUtils_initialized;
J2OBJC_STATIC_INIT(ComFqLibToolsTimeFormatUtils)

FOUNDATION_EXPORT IOSObjectArray *ComFqLibToolsTimeFormatUtils_WEEK_US_;
J2OBJC_STATIC_FIELD_GETTER(ComFqLibToolsTimeFormatUtils, WEEK_US_, IOSObjectArray *)
J2OBJC_STATIC_FIELD_SETTER(ComFqLibToolsTimeFormatUtils, WEEK_US_, IOSObjectArray *)

FOUNDATION_EXPORT IOSObjectArray *ComFqLibToolsTimeFormatUtils_WEEK_CN_;
J2OBJC_STATIC_FIELD_GETTER(ComFqLibToolsTimeFormatUtils, WEEK_CN_, IOSObjectArray *)
J2OBJC_STATIC_FIELD_SETTER(ComFqLibToolsTimeFormatUtils, WEEK_CN_, IOSObjectArray *)

FOUNDATION_EXPORT IOSObjectArray *ComFqLibToolsTimeFormatUtils_MONTH_US_;
J2OBJC_STATIC_FIELD_GETTER(ComFqLibToolsTimeFormatUtils, MONTH_US_, IOSObjectArray *)
J2OBJC_STATIC_FIELD_SETTER(ComFqLibToolsTimeFormatUtils, MONTH_US_, IOSObjectArray *)

FOUNDATION_EXPORT IOSObjectArray *ComFqLibToolsTimeFormatUtils_WEEKS_;
J2OBJC_STATIC_FIELD_GETTER(ComFqLibToolsTimeFormatUtils, WEEKS_, IOSObjectArray *)

#endif // _ComFqLibToolsTimeFormatUtils_H_
