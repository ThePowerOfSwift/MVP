//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/lib/json/JSONTokener.java
//
//  Created by liaomin on 15-5-4.
//

#ifndef _FQJSONTokener_H_
#define _FQJSONTokener_H_

@class FQJSONArray;
@class FQJSONException;
@class FQJSONObject;

#import "JreEmulation.h"

@interface FQJSONTokener : NSObject {
 @public
  NSString *in_;
  int pos_;
}

- (id)initWithNSString:(NSString *)inArg;

- (id)nextValue;

- (int)nextCleanInternal;

- (void)skipToEndOfLine;

- (NSString *)nextStringWithChar:(unichar)quote;

- (unichar)readEscapeCharacter;

- (id)readLiteral;

- (NSString *)nextToInternalWithNSString:(NSString *)excluded;

- (FQJSONObject *)readObject;

- (FQJSONArray *)readArray;

- (FQJSONException *)syntaxErrorWithNSString:(NSString *)message;

- (NSString *)description;

- (BOOL)more;

- (unichar)next;

- (unichar)nextWithChar:(unichar)c;

- (unichar)nextClean;

- (NSString *)nextWithInt:(int)length;

- (NSString *)nextToWithNSString:(NSString *)excluded;

- (NSString *)nextToWithChar:(unichar)excluded;

- (void)skipPastWithNSString:(NSString *)thru;

- (unichar)skipToWithChar:(unichar)to;

- (void)back;

+ (int)dehexcharWithChar:(unichar)hex;

- (void)copyAllFieldsTo:(FQJSONTokener *)other;

@end

__attribute__((always_inline)) inline void FQJSONTokener_init() {}

J2OBJC_FIELD_SETTER(FQJSONTokener, in_, NSString *)

typedef FQJSONTokener ComFqLibJsonJSONTokener;

#endif // _FQJSONTokener_H_
