//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/uilogic/BrowseRecord.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonUilogicBrowseRecord_H_
#define _ComFqHalcyonUilogicBrowseRecord_H_

@class FQJSONObject;
@class IOSObjectArray;
@class JavaUtilHashMap;

#import "JreEmulation.h"

@interface ComFqHalcyonUilogicBrowseRecord : NSObject {
 @public
  IOSObjectArray *ruyuanHead_;
  IOSObjectArray *huayanHead_;
  IOSObjectArray *yingxiangHead_;
  IOSObjectArray *shoushuHead_;
  IOSObjectArray *chuyuanHead_;
  JavaUtilHashMap *headMap_;
  JavaUtilHashMap *infoMap_;
}

- (id)initWithFQJSONObject:(FQJSONObject *)obj
                   withInt:(int)type;

- (JavaUtilHashMap *)getHeadMap;

- (JavaUtilHashMap *)getInfoMap;

- (void)getHeadInfoWithFQJSONObject:(FQJSONObject *)obj
                            withInt:(int)type;

- (void)copyAllFieldsTo:(ComFqHalcyonUilogicBrowseRecord *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonUilogicBrowseRecord_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonUilogicBrowseRecord, ruyuanHead_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ComFqHalcyonUilogicBrowseRecord, huayanHead_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ComFqHalcyonUilogicBrowseRecord, yingxiangHead_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ComFqHalcyonUilogicBrowseRecord, shoushuHead_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ComFqHalcyonUilogicBrowseRecord, chuyuanHead_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ComFqHalcyonUilogicBrowseRecord, headMap_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ComFqHalcyonUilogicBrowseRecord, infoMap_, JavaUtilHashMap *)

#endif // _ComFqHalcyonUilogicBrowseRecord_H_