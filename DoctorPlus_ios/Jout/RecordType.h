//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/RecordType.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonEntityRecordType_H_
#define _ComFqHalcyonEntityRecordType_H_

@class ComFqHalcyonEntityRecordItemSamp;
@class FQJSONObject;
@class JavaUtilArrayList;

#import "JreEmulation.h"
#include "HalcyonEntity.h"

#define ComFqHalcyonEntityRecordType_serialVersionUID 1LL

@interface ComFqHalcyonEntityRecordType : ComFqHalcyonEntityHalcyonEntity {
 @public
  int recordType_;
  JavaUtilArrayList *mItemList_;
}

- (int)getRecordType;

- (void)setRecordTypeWithInt:(int)recordType;

- (JavaUtilArrayList *)getItemList;

- (void)setItemListWithJavaUtilArrayList:(JavaUtilArrayList *)mItemList;

- (ComFqHalcyonEntityRecordItemSamp *)getItemWithInt:(int)position;

- (void)addItemWithComFqHalcyonEntityRecordItemSamp:(ComFqHalcyonEntityRecordItemSamp *)item;

- (void)addItemsWithJavaUtilArrayList:(JavaUtilArrayList *)items;

- (void)addItemsWithInt:(int)index
  withJavaUtilArrayList:(JavaUtilArrayList *)items;

- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json;

- (id)init;

- (void)copyAllFieldsTo:(ComFqHalcyonEntityRecordType *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonEntityRecordType_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonEntityRecordType, mItemList_, JavaUtilArrayList *)

J2OBJC_STATIC_FIELD_GETTER(ComFqHalcyonEntityRecordType, serialVersionUID, long long int)

#endif // _ComFqHalcyonEntityRecordType_H_