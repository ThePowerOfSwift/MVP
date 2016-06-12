//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/record/RecordTool.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/record/RecordTool.java"

#include "HalcyonUploadLooper.h"
#include "IOSPrimitiveArray.h"
#include "JSONArray.h"
#include "JSONException.h"
#include "JSONObject.h"
#include "LoopCell.h"
#include "LoopCellHandle.h"
#include "LoopUpLoadCell.h"
#include "OneCopy.h"
#include "OneType.h"
#include "RecordConstants.h"
#include "RecordItemSamp.h"
#include "RecordTool.h"
#include "RecordType.h"
#include "RecordUploadNotify.h"
#include "TimeFormatUtils.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"

BOOL ComFqLibRecordRecordTool_initialized = NO;


#line 23
@implementation ComFqLibRecordRecordTool

JavaUtilHashMap * ComFqLibRecordRecordTool_mRecordMoudles_;


#line 35
+ (void)addMoudleWithInt:(int)type
        withFQJSONObject:(FQJSONObject *)moudle {
  
#line 36
  if (![((JavaUtilHashMap *) nil_chk(ComFqLibRecordRecordTool_mRecordMoudles_)) containsKeyWithId:[JavaLangInteger valueOfWithInt:type]]) {
    (void) [ComFqLibRecordRecordTool_mRecordMoudles_ putWithId:[JavaLangInteger valueOfWithInt:type] withId:moudle];
  }
}


#line 47
+ (FQJSONObject *)getMouldJsonWithFQJSONArray:(FQJSONArray *)moudle
                             withFQJSONObject:(FQJSONObject *)data {
  
#line 48
  FQJSONObject *obj = [[FQJSONObject alloc] init];
  for (int i = 0; i < [((FQJSONArray *) nil_chk(moudle)) length]; i++) {
    NSString *key = [moudle optStringWithInt:i];
    NSString *value = [((FQJSONObject *) nil_chk(data)) optStringWithNSString:key];
    if (![@"" isEqual:value]) {
      @try {
        (void) [obj putWithNSString:key withId:value];
      }
      @catch (
#line 55
      FQJSONException *e) {
        [((FQJSONException *) nil_chk(e)) printStackTrace];
      }
    }
  }
  return obj;
}

+ (FQJSONObject *)getMoudleByTypeWithInt:(int)type {
  
#line 70
  return [((JavaUtilHashMap *) nil_chk(ComFqLibRecordRecordTool_mRecordMoudles_)) getWithId:[JavaLangInteger valueOfWithInt:type]];
}


#line 81
+ (JavaUtilArrayList *)getAllRecRecordWithJavaUtilArrayList:(JavaUtilArrayList *)mRecordTypes {
  
#line 82
  JavaUtilArrayList *itemList = [[JavaUtilArrayList alloc] init];
  for (int i = 0; i < [((JavaUtilArrayList *) nil_chk(mRecordTypes)) size]; i++) {
    ComFqHalcyonEntityRecordType *recordType = [mRecordTypes getWithInt:i];
    for (int j = 0; j < [((JavaUtilArrayList *) nil_chk([((ComFqHalcyonEntityRecordType *) nil_chk(recordType)) getItemList])) size]; j++) {
      ComFqHalcyonEntityRecordItemSamp *itemSamp = [((JavaUtilArrayList *) nil_chk([recordType getItemList])) getWithInt:j];
      if ([((ComFqHalcyonEntityRecordItemSamp *) nil_chk(itemSamp)) getRecStatus] == ComFqHalcyonEntityRecordItemSamp_REC_SUCC) {
        [itemList addWithId:itemSamp];
      }
    }
  }
  return itemList;
}


#line 100
+ (BOOL)isTypeCatchWithComFqHalcyonEntityRecordType:(ComFqHalcyonEntityRecordType *)type {
  
#line 101
  if (([((ComFqHalcyonEntityRecordType *) nil_chk(type)) getRecordType] == ComFqLibRecordRecordConstants_TYPE_ADMISSION && [((JavaUtilArrayList *) nil_chk([type getItemList])) size] > 0) ||
#line 102
  ([type getRecordType] == ComFqLibRecordRecordConstants_TYPE_DISCHARGE && [((JavaUtilArrayList *) nil_chk([type getItemList])) size] > 0)) {
    return NO;
  }
  return YES;
}


#line 113
+ (void)updateDataFromSnapWithJavaUtilArrayList:(JavaUtilArrayList *)types
                          withJavaUtilArrayList:(JavaUtilArrayList *)tps {
  
#line 114
  for (int i = 0; i < [((JavaUtilArrayList *) nil_chk(tps)) size]; i++) {
    ComFqHalcyonUimodelsOneType *onetp = [tps getWithInt:i];
    for (int j = 0; j < [((JavaUtilArrayList *) nil_chk(types)) size]; j++) {
      ComFqHalcyonEntityRecordType *type = [types getWithInt:j];
      if ([((ComFqHalcyonEntityRecordType *) nil_chk(type)) getRecordType] == [((ComFqHalcyonUimodelsOneType *) nil_chk(onetp)) getType]) {
        
#line 121
        if ([((ComFqHalcyonEntityRecordItemSamp *) nil_chk([type getItemWithInt:0])) getRecStatus] == ComFqHalcyonEntityRecordItemSamp_REC_NONE_DATA) {
          (void) [((JavaUtilArrayList *) nil_chk([type getItemList])) removeWithInt:0];
        }
        
#line 126
        ComFqHalcyonUimodelsOneCopy *copy_ = [onetp getCopyByIdWithInt:0];
        ComFqHalcyonEntityRecordItemSamp *item = [[ComFqHalcyonEntityRecordItemSamp alloc] init];
        [item setRecStatusWithInt:ComFqHalcyonEntityRecordItemSamp_REC_UPLOAD];
        [item setReocrdTypeWithInt:[type getRecordType]];
        [item setPhotosWithJavaUtilArrayList:[((ComFqHalcyonUimodelsOneCopy *) nil_chk(copy_)) getPhotos]];
        [item setImageCountWithInt:[((JavaUtilArrayList *) nil_chk([copy_ getPhotos])) size]];
        [item setUploadTimeWithNSString:[ComFqLibToolsTimeFormatUtils getTimeByFormatWithLong:
#line 133
        [JavaLangSystem currentTimeMillis] withNSString:
#line 135
        @"yyyyMMdd HH:mm"]];
        [((JavaUtilArrayList *) nil_chk([type getItemList])) addWithInt:0 withId:item];
        [((ComFqLibRecordRecordUploadNotify *) nil_chk([ComFqLibRecordRecordUploadNotify getInstance])) addItemsWithJavaUtilList:[copy_ getPhotos]];
      }
    }
  }
}


#line 149
+ (void)addAndFormatTypesWithInt:(int)recordType
           withJavaUtilArrayList:(JavaUtilArrayList *)recordTypes {
  
#line 150
  IOSIntArray *types = [ComFqLibRecordRecordConstants getTypesByRecordTypeWithInt:recordType];
  for (int i = 0; i < (int) [((IOSIntArray *) nil_chk(types)) count]; i++) {
    int id_ = IOSIntArray_Get(types, i);
    BOOL isExits = NO;
    for (int j = 0; j < [((JavaUtilArrayList *) nil_chk(recordTypes)) size]; j++) {
      ComFqHalcyonEntityRecordType *type = [recordTypes getWithInt:j];
      if ([((ComFqHalcyonEntityRecordType *) nil_chk(type)) getRecordType] == id_) {
        [recordTypes removeWithId:type];
        [recordTypes addWithInt:i withId:type];
        isExits = YES;
        break;
      }
    }
    if (!isExits) {
      ComFqHalcyonEntityRecordType *type = [[ComFqHalcyonEntityRecordType alloc] init];
      [type setRecordTypeWithInt:id_];
      [recordTypes addWithInt:i withId:type];
    }
  }
}


#line 176
+ (void)addUploadReocrdWithInt:(int)recordId
         withJavaUtilArrayList:(JavaUtilArrayList *)recordTypes {
  
#line 177
  JavaUtilArrayList *handles = [((ComFqHalcyonHalcyonUploadLooper *) nil_chk([ComFqHalcyonHalcyonUploadLooper getInstance])) getUploadArray];
  JavaUtilArrayList *uploadRecordTypes = [[JavaUtilArrayList alloc] init];
  
#line 180
  for (int i = 0; i < [((JavaUtilArrayList *) nil_chk(handles)) size]; i++) {
    if ([handles getWithInt:i] != nil && ((ComFqHttpAsyncUploadloopLoopCellHandle *) nil_chk([handles getWithInt:i]))->cell_ != nil && [((ComFqHttpAsyncUploadloopLoopCellHandle *) nil_chk([handles getWithInt:i]))->cell_ isKindOfClass:[ComFqHttpAsyncUploadloopLoopUpLoadCell class]]) {
      ComFqHttpAsyncUploadloopLoopUpLoadCell *cell = (ComFqHttpAsyncUploadloopLoopUpLoadCell *) check_class_cast(((ComFqHttpAsyncUploadloopLoopCellHandle *) nil_chk([handles getWithInt:i]))->cell_, [ComFqHttpAsyncUploadloopLoopUpLoadCell class]);
      if (recordId == [cell getRecordId]) {
        JavaUtilArrayList *types = [cell todRecordTypes];
        [uploadRecordTypes addAllWithJavaUtilCollection:types];
        
#line 187
        for (ComFqHalcyonEntityRecordType * __strong type in nil_chk(types)) {
          for (ComFqHalcyonEntityRecordItemSamp * __strong item in nil_chk([((ComFqHalcyonEntityRecordType *) nil_chk(type)) getItemList])) {
            [((ComFqLibRecordRecordUploadNotify *) nil_chk([ComFqLibRecordRecordUploadNotify getInstance])) addItemsWithJavaUtilList:[((ComFqHalcyonEntityRecordItemSamp *) nil_chk(item)) getPhotos]];
          }
        }
      }
    }
  }
  
#line 196
  for (int j = 0; j < [uploadRecordTypes size]; j++) {
    for (int i = 0; i < [((JavaUtilArrayList *) nil_chk(recordTypes)) size]; i++) {
      if ([((ComFqHalcyonEntityRecordType *) nil_chk([uploadRecordTypes getWithInt:j])) getRecordType] == [((ComFqHalcyonEntityRecordType *) nil_chk([recordTypes getWithInt:i])) getRecordType]) {
        [((ComFqHalcyonEntityRecordType *) nil_chk([recordTypes getWithInt:i])) addItemsWithInt:0 withJavaUtilArrayList:[((ComFqHalcyonEntityRecordType *) nil_chk([uploadRecordTypes getWithInt:j])) getItemList]];
        break;
      }
    }
  }
}

+ (void)checkNewTypesWithComFqHalcyonEntityRecordType:(ComFqHalcyonEntityRecordType *)type {
  
#line 213
  if ([((JavaUtilArrayList *) nil_chk([((ComFqHalcyonEntityRecordType *) nil_chk(type)) getItemList])) size] == 0) {
    ComFqHalcyonEntityRecordItemSamp *item = [[ComFqHalcyonEntityRecordItemSamp alloc] init];
    [item setReocrdTypeWithInt:[type getRecordType]];
    [item setRecStatusWithInt:ComFqHalcyonEntityRecordItemSamp_REC_NONE_DATA];
    [((JavaUtilArrayList *) nil_chk([type getItemList])) addWithId:item];
  }
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [ComFqLibRecordRecordTool class]) {
    ComFqLibRecordRecordTool_mRecordMoudles_ =
#line 28
    [[JavaUtilHashMap alloc] init];
    ComFqLibRecordRecordTool_initialized = YES;
  }
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "addMoudleWithInt:withFQJSONObject:", "addMoudle", "V", 0x9, NULL },
    { "getMouldJsonWithFQJSONArray:withFQJSONObject:", "getMouldJson", "Lcom.fq.lib.json.JSONObject;", 0x9, NULL },
    { "getMoudleByTypeWithInt:", "getMoudleByType", "Lcom.fq.lib.json.JSONObject;", 0x9, NULL },
    { "getAllRecRecordWithJavaUtilArrayList:", "getAllRecRecord", "Ljava.util.ArrayList;", 0x9, NULL },
    { "isTypeCatchWithComFqHalcyonEntityRecordType:", "isTypeCatch", "Z", 0x9, NULL },
    { "updateDataFromSnapWithJavaUtilArrayList:withJavaUtilArrayList:", "updateDataFromSnap", "V", 0x9, NULL },
    { "addAndFormatTypesWithInt:withJavaUtilArrayList:", "addAndFormatTypes", "V", 0x9, NULL },
    { "addUploadReocrdWithInt:withJavaUtilArrayList:", "addUploadReocrd", "V", 0x9, NULL },
    { "checkNewTypesWithComFqHalcyonEntityRecordType:", "checkNewTypes", "V", 0x9, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mRecordMoudles_", NULL, 0x19, "Ljava.util.HashMap;", &ComFqLibRecordRecordTool_mRecordMoudles_,  },
  };
  static J2ObjcClassInfo _ComFqLibRecordRecordTool = { "RecordTool", "com.fq.lib.record", NULL, 0x1, 10, methods, 1, fields, 0, NULL};
  return &_ComFqLibRecordRecordTool;
}

@end