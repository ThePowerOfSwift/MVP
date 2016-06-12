//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DoctorPlus_ios/Java_implement/com/loopj/android/http/RequestParams.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DoctorPlus_ios/Java_implement/com/loopj/android/http/RequestParams.java"

#include "IOSClass.h"
#include "RequestParams.h"
#include "java/io/File.h"
#include "java/io/FileNotFoundException.h"
#include "java/io/InputStream.h"
#include "java/lang/StringBuilder.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/concurrent/ConcurrentHashMap.h"


#line 29
@implementation ComLoopjAndroidHttpRequestParams

NSString * ComLoopjAndroidHttpRequestParams_APPLICATION_OCTET_STREAM_ = 
#line 32
@"application/octet-stream";
NSString * ComLoopjAndroidHttpRequestParams_APPLICATION_JSON_ = 
#line 35
@"application/json";
NSString * ComLoopjAndroidHttpRequestParams_LOG_TAG_ = @"RequestParams";


#line 52
- (void)putWithNSString:(NSString *)key
           withNSString:(NSString *)value {
  
#line 53
  if (key != nil && value != nil) {
    (void) [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(urlParams_)) putWithId:key withId:value];
  }
}


#line 65
- (void)putWithNSString:(NSString *)key
         withJavaIoFile:(JavaIoFile *)file {
  
#line 66
  [self putWithNSString:key withJavaIoFile:file withNSString:nil];
}


#line 77
- (void)putWithNSString:(NSString *)key
         withJavaIoFile:(JavaIoFile *)file
           withNSString:(NSString *)contentType {
  
#line 78
  if (file == nil || ![file exists]) {
    @throw [[JavaIoFileNotFoundException alloc] init];
  }
  if (key != nil) {
    (void) [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(fileParams_)) putWithId:key withId:[[ComLoopjAndroidHttpRequestParams_FileWrapper alloc] initWithJavaIoFile:file withNSString:contentType]];
  }
}


#line 92
- (void)putWithNSString:(NSString *)key
  withJavaIoInputStream:(JavaIoInputStream *)stream {
  
#line 93
  [self putWithNSString:key withJavaIoInputStream:stream withNSString:nil];
}


#line 103
- (void)putWithNSString:(NSString *)key
  withJavaIoInputStream:(JavaIoInputStream *)stream
           withNSString:(NSString *)name {
  
#line 104
  [self putWithNSString:key withJavaIoInputStream:stream withNSString:name withNSString:nil];
}


#line 115
- (void)putWithNSString:(NSString *)key
  withJavaIoInputStream:(JavaIoInputStream *)stream
           withNSString:(NSString *)name
           withNSString:(NSString *)contentType {
  
#line 116
  [self putWithNSString:key withJavaIoInputStream:stream withNSString:name withNSString:contentType withBoolean:autoCloseInputStreams_];
}


#line 128
- (void)putWithNSString:(NSString *)key
  withJavaIoInputStream:(JavaIoInputStream *)stream
           withNSString:(NSString *)name
           withNSString:(NSString *)contentType
            withBoolean:(BOOL)autoClose {
  
#line 129
  if (key != nil && stream != nil) {
    (void) [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(streamParams_)) putWithId:key withId:[ComLoopjAndroidHttpRequestParams_StreamWrapper newInstanceWithJavaIoInputStream:stream withNSString:name withNSString:contentType withBoolean:autoClose]];
  }
}

- (void)putWithNSString:(NSString *)key
                 withId:(id)value {
  
#line 141
  if (key != nil && value != nil) {
    (void) [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(urlParamsWithObjects_)) putWithId:key withId:value];
  }
}


#line 152
- (void)putWithNSString:(NSString *)key
                withInt:(int)value {
  
#line 153
  if (key != nil) {
    (void) [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(urlParams_)) putWithId:key withId:[NSString valueOfInt:value]];
  }
}


#line 164
- (void)putWithNSString:(NSString *)key
               withLong:(long long int)value {
  
#line 165
  if (key != nil) {
    (void) [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(urlParams_)) putWithId:key withId:[NSString valueOfLong:value]];
  }
}


#line 176
- (void)addWithNSString:(NSString *)key
           withNSString:(NSString *)value {
  
#line 177
  if (key != nil && value != nil) {
    id params = [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(urlParamsWithObjects_)) getWithId:key];
    if (params == nil) {
      
#line 181
      params = [[JavaUtilHashSet alloc] init];
      [self putWithNSString:key withId:params];
    }
    if ([params conformsToProtocol: @protocol(JavaUtilList)]) {
      [((id<JavaUtilList>) nil_chk(((id<JavaUtilList>) check_protocol_cast(params, @protocol(JavaUtilList))))) addWithId:value];
    }
    else
#line 186
    if ([params conformsToProtocol: @protocol(JavaUtilSet)]) {
      [((id<JavaUtilSet>) nil_chk(((id<JavaUtilSet>) check_protocol_cast(params, @protocol(JavaUtilSet))))) addWithId:value];
    }
  }
}


#line 197
- (void)removeWithNSString:(NSString *)key {
  
#line 198
  (void) [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(urlParams_)) removeWithId:key];
  (void) [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(streamParams_)) removeWithId:key];
  (void) [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(fileParams_)) removeWithId:key];
  (void) [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(urlParamsWithObjects_)) removeWithId:key];
}


#line 210
- (BOOL)hasWithNSString:(NSString *)key {
  
#line 211
  return [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(urlParams_)) getWithId:key] != nil ||
#line 212
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(streamParams_)) getWithId:key] != nil ||
#line 213
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(fileParams_)) getWithId:key] != nil ||
#line 214
  [((JavaUtilConcurrentConcurrentHashMap *) nil_chk(urlParamsWithObjects_)) getWithId:key] != nil;
}

- (NSString *)description {
  
#line 219
  JavaLangStringBuilder *result = [[JavaLangStringBuilder alloc] init];
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(urlParams_)) entrySet])) {
    if ([result sequenceLength] > 0)
#line 222
    (void) [result appendWithNSString:@"&"];
    
#line 224
    (void) [result appendWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey]];
    (void) [result appendWithNSString:@"="];
    (void) [result appendWithNSString:[entry_ getValue]];
  }
  
#line 229
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(streamParams_)) entrySet])) {
    if ([result sequenceLength] > 0)
#line 231
    (void) [result appendWithNSString:@"&"];
    
#line 233
    (void) [result appendWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey]];
    (void) [result appendWithNSString:@"="];
    (void) [result appendWithNSString:@"STREAM"];
  }
  
#line 238
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((JavaUtilConcurrentConcurrentHashMap *) nil_chk(fileParams_)) entrySet])) {
    if ([result sequenceLength] > 0)
#line 240
    (void) [result appendWithNSString:@"&"];
    
#line 242
    (void) [result appendWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey]];
    (void) [result appendWithNSString:@"="];
    (void) [result appendWithNSString:@"FILE"];
  }
  
#line 247
  return [result description];
}


#line 250
- (void)setHttpEntityIsRepeatableWithBoolean:(BOOL)isRepeatable {
  
#line 251
  self->isRepeatable_ = isRepeatable;
}


#line 254
- (void)setUseJsonStreamerWithBoolean:(BOOL)useJsonStreamer {
  
#line 255
  self->useJsonStreamer_ = useJsonStreamer;
}


#line 264
- (void)setAutoCloseInputStreamsWithBoolean:(BOOL)flag {
  
#line 265
  autoCloseInputStreams_ = flag;
}

- (id)init {
  if (self = [super init]) {
    urlParams_ =
#line 41
    [[JavaUtilConcurrentConcurrentHashMap alloc] init];
    streamParams_ =
#line 42
    [[JavaUtilConcurrentConcurrentHashMap alloc] init];
    fileParams_ =
#line 43
    [[JavaUtilConcurrentConcurrentHashMap alloc] init];
    urlParamsWithObjects_ =
#line 44
    [[JavaUtilConcurrentConcurrentHashMap alloc] init];
  }
  return self;
}

- (void)copyAllFieldsTo:(ComLoopjAndroidHttpRequestParams *)other {
  [super copyAllFieldsTo:other];
  other->autoCloseInputStreams_ = autoCloseInputStreams_;
  other->fileParams_ = fileParams_;
  other->isRepeatable_ = isRepeatable_;
  other->streamParams_ = streamParams_;
  other->urlParams_ = urlParams_;
  other->urlParamsWithObjects_ = urlParamsWithObjects_;
  other->useJsonStreamer_ = useJsonStreamer_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "putWithNSString:withNSString:", "put", "V", 0x1, NULL },
    { "putWithNSString:withJavaIoFile:", "put", "V", 0x1, "Ljava.io.FileNotFoundException;" },
    { "putWithNSString:withJavaIoFile:withNSString:", "put", "V", 0x1, "Ljava.io.FileNotFoundException;" },
    { "putWithNSString:withJavaIoInputStream:", "put", "V", 0x1, NULL },
    { "putWithNSString:withJavaIoInputStream:withNSString:", "put", "V", 0x1, NULL },
    { "putWithNSString:withJavaIoInputStream:withNSString:withNSString:", "put", "V", 0x1, NULL },
    { "putWithNSString:withJavaIoInputStream:withNSString:withNSString:withBoolean:", "put", "V", 0x1, NULL },
    { "putWithNSString:withId:", "put", "V", 0x1, NULL },
    { "putWithNSString:withInt:", "put", "V", 0x1, NULL },
    { "putWithNSString:withLong:", "put", "V", 0x1, NULL },
    { "addWithNSString:withNSString:", "add", "V", 0x1, NULL },
    { "removeWithNSString:", "remove", "V", 0x1, NULL },
    { "hasWithNSString:", "has", "Z", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "setHttpEntityIsRepeatableWithBoolean:", "setHttpEntityIsRepeatable", "V", 0x1, NULL },
    { "setUseJsonStreamerWithBoolean:", "setUseJsonStreamer", "V", 0x1, NULL },
    { "setAutoCloseInputStreamsWithBoolean:", "setAutoCloseInputStreams", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "APPLICATION_OCTET_STREAM_", NULL, 0x19, "Ljava.lang.String;", &ComLoopjAndroidHttpRequestParams_APPLICATION_OCTET_STREAM_,  },
    { "APPLICATION_JSON_", NULL, 0x19, "Ljava.lang.String;", &ComLoopjAndroidHttpRequestParams_APPLICATION_JSON_,  },
    { "LOG_TAG_", NULL, 0x1c, "Ljava.lang.String;", &ComLoopjAndroidHttpRequestParams_LOG_TAG_,  },
    { "isRepeatable_", NULL, 0x4, "Z", NULL,  },
    { "useJsonStreamer_", NULL, 0x4, "Z", NULL,  },
    { "autoCloseInputStreams_", NULL, 0x4, "Z", NULL,  },
    { "urlParams_", NULL, 0x11, "Ljava.util.concurrent.ConcurrentHashMap;", NULL,  },
    { "streamParams_", NULL, 0x11, "Ljava.util.concurrent.ConcurrentHashMap;", NULL,  },
    { "fileParams_", NULL, 0x11, "Ljava.util.concurrent.ConcurrentHashMap;", NULL,  },
    { "urlParamsWithObjects_", NULL, 0x11, "Ljava.util.concurrent.ConcurrentHashMap;", NULL,  },
  };
  static J2ObjcClassInfo _ComLoopjAndroidHttpRequestParams = { "RequestParams", "com.loopj.android.http", NULL, 0x1, 18, methods, 10, fields, 0, NULL};
  return &_ComLoopjAndroidHttpRequestParams;
}

@end


#line 270
@implementation ComLoopjAndroidHttpRequestParams_FileWrapper


#line 274
- (id)initWithJavaIoFile:(JavaIoFile *)file
            withNSString:(NSString *)contentType {
  if (self = [super init]) {
    
#line 275
    self->file_ = file;
    
#line 276
    self->contentType_ = contentType;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComLoopjAndroidHttpRequestParams_FileWrapper *)other {
  [super copyAllFieldsTo:other];
  other->contentType_ = contentType_;
  other->file_ = file_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoFile:withNSString:", "FileWrapper", NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "file_", NULL, 0x11, "Ljava.io.File;", NULL,  },
    { "contentType_", NULL, 0x11, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _ComLoopjAndroidHttpRequestParams_FileWrapper = { "FileWrapper", "com.loopj.android.http", "RequestParams", 0x9, 1, methods, 2, fields, 0, NULL};
  return &_ComLoopjAndroidHttpRequestParams_FileWrapper;
}

@end


#line 280
@implementation ComLoopjAndroidHttpRequestParams_StreamWrapper


#line 286
- (id)initWithJavaIoInputStream:(JavaIoInputStream *)inputStream
                   withNSString:(NSString *)name
                   withNSString:(NSString *)contentType
                    withBoolean:(BOOL)autoClose {
  if (self = [super init]) {
    
#line 287
    self->inputStream_ = inputStream;
    
#line 288
    self->name_ = name;
    
#line 289
    self->contentType_ = contentType;
    
#line 290
    self->autoClose_ = autoClose;
  }
  return self;
}


#line 293
+ (ComLoopjAndroidHttpRequestParams_StreamWrapper *)newInstanceWithJavaIoInputStream:(JavaIoInputStream *)inputStream
                                                                        withNSString:(NSString *)name
                                                                        withNSString:(NSString *)contentType
                                                                         withBoolean:(BOOL)autoClose {
  
#line 294
  return [[ComLoopjAndroidHttpRequestParams_StreamWrapper alloc] initWithJavaIoInputStream:
#line 295
  inputStream withNSString:
#line 296
  name withNSString:
#line 297
  contentType == nil ? ComLoopjAndroidHttpRequestParams_get_APPLICATION_OCTET_STREAM_() : contentType withBoolean:
#line 298
  autoClose];
}

- (void)copyAllFieldsTo:(ComLoopjAndroidHttpRequestParams_StreamWrapper *)other {
  [super copyAllFieldsTo:other];
  other->autoClose_ = autoClose_;
  other->contentType_ = contentType_;
  other->inputStream_ = inputStream_;
  other->name_ = name_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithJavaIoInputStream:withNSString:withNSString:withBoolean:", "StreamWrapper", NULL, 0x1, NULL },
    { "newInstanceWithJavaIoInputStream:withNSString:withNSString:withBoolean:", "newInstance", "Lcom.loopj.android.http.RequestParams$StreamWrapper;", 0x8, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "inputStream_", NULL, 0x11, "Ljava.io.InputStream;", NULL,  },
    { "name_", NULL, 0x11, "Ljava.lang.String;", NULL,  },
    { "contentType_", NULL, 0x11, "Ljava.lang.String;", NULL,  },
    { "autoClose_", NULL, 0x11, "Z", NULL,  },
  };
  static J2ObjcClassInfo _ComLoopjAndroidHttpRequestParams_StreamWrapper = { "StreamWrapper", "com.loopj.android.http", "RequestParams", 0x9, 2, methods, 4, fields, 0, NULL};
  return &_ComLoopjAndroidHttpRequestParams_StreamWrapper;
}

@end
