//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/logic2/SearchFriendsLogic.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _ComFqHalcyonLogic2SearchFriendsLogic_H_
#define _ComFqHalcyonLogic2SearchFriendsLogic_H_

@class ComFqHalcyonLogic2SearchFriendsLogic_SearchFriendsLogicHandle;
@class JavaLangThrowable;
@protocol ComFqHalcyonLogic2SearchFriendsLogic_SearchFriendsLogicInterface;
@protocol JavaUtilList;

#import "JreEmulation.h"
#include "FQHttpResponseInterface.h"
#include "HalcyonHttpResponseHandle.h"

@interface ComFqHalcyonLogic2SearchFriendsLogic : NSObject {
 @public
  id<JavaUtilList> mUserList_;
  __weak id<ComFqHalcyonLogic2SearchFriendsLogic_SearchFriendsLogicInterface> mInterface_;
  ComFqHalcyonLogic2SearchFriendsLogic_SearchFriendsLogicHandle *mHandle_;
}

- (id)initWithComFqHalcyonLogic2SearchFriendsLogic_SearchFriendsLogicInterface:(id<ComFqHalcyonLogic2SearchFriendsLogic_SearchFriendsLogicInterface>)mIn
                                                                       withInt:(int)userId
                                                                  withNSString:(NSString *)keyWords
                                                                       withInt:(int)page
                                                                       withInt:(int)pagesize
                                                                   withBoolean:(BOOL)isNewFriend;

- (void)copyAllFieldsTo:(ComFqHalcyonLogic2SearchFriendsLogic *)other;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2SearchFriendsLogic_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2SearchFriendsLogic, mUserList_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2SearchFriendsLogic, mHandle_, ComFqHalcyonLogic2SearchFriendsLogic_SearchFriendsLogicHandle *)

@protocol ComFqHalcyonLogic2SearchFriendsLogic_SearchFriendsLogicInterface < ComFqHttpPotocolFQHttpResponseInterface, NSObject, JavaObject >
- (void)onDataReturnWithJavaUtilList:(id<JavaUtilList>)mUserList;

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2SearchFriendsLogic_SearchFriendsLogicInterface_init() {}

@interface ComFqHalcyonLogic2SearchFriendsLogic_SearchFriendsLogicHandle : HalcyonHttpResponseHandle {
 @public
  ComFqHalcyonLogic2SearchFriendsLogic *this$0_;
}

- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e;

- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results;

- (id)initWithComFqHalcyonLogic2SearchFriendsLogic:(ComFqHalcyonLogic2SearchFriendsLogic *)outer$;

@end

__attribute__((always_inline)) inline void ComFqHalcyonLogic2SearchFriendsLogic_SearchFriendsLogicHandle_init() {}

J2OBJC_FIELD_SETTER(ComFqHalcyonLogic2SearchFriendsLogic_SearchFriendsLogicHandle, this$0_, ComFqHalcyonLogic2SearchFriendsLogic *)

#endif // _ComFqHalcyonLogic2SearchFriendsLogic_H_
