//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/http/async/uploadloop/LoopCellHandle.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/http/async/uploadloop/LoopCellHandle.java"

#include "FQHttpParams.h"
#include "FQLoopQueue.h"
#include "FQRemoteDebugTool.h"
#include "FileSystem.h"
#include "HttpHelper.h"
#include "HttpRequestPotocol.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "JSONArray.h"
#include "JSONObject.h"
#include "LoopCell.h"
#include "LoopCellHandle.h"
#include "LoopUpLoadCell.h"
#include "ParamsWrapper.h"
#include "Photo.h"
#include "Platform.h"
#include "RecordUploadNotify.h"
#include "RemoveRecordItemLogic.h"
#include "UriConstants.h"
#include "java/io/File.h"
#include "java/lang/Integer.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/Set.h"
#include "onHandlerCompleteListener.h"


#line 21
@implementation ComFqHttpAsyncUploadloopLoopCellHandle


#line 56
- (void)setProcessListemerWithComFqHttpAsyncParamsWrapper_FQProcessInterface:(id<ComFqHttpAsyncParamsWrapper_FQProcessInterface>)process {
  
#line 57
  self->processListener_ = process;
}


#line 67
- (void)resume {
  
#line 68
  if (mIsPause_) {
    mIsPause_ = NO;
    isHanlding_ = NO;
  }
}


#line 74
- (void)cancle {
  
#line 75
  [self remove];
  if (mCurrentRequestHandle_ != nil) {
    [mCurrentRequestHandle_ cancel];
  }
  if (mIsFinished_ && mRecordItemId_ != 0) {
    ComFqHalcyonLogic2RemoveRecordItemLogic *logic = [[ComFqHalcyonLogic2RemoveRecordItemLogic alloc] initWithComFqHalcyonLogic2RemoveRecordItemLogic_RemoveItemCallBack:nil];
    [logic removeRecordItemWithInt:mRecordItemId_];
  }
}


#line 85
- (void)remove {
  
#line 86
  [((ComFqHttpAsyncUploadloopFQLoopQueue *) nil_chk(mQueue_)) removeWithId:self];
  [((ComFqHttpAsyncUploadloopLoopCell *) nil_chk(cell_)) deletFile];
}


#line 91
- (id)initWithComFqHttpAsyncUploadloopLoopCell:(ComFqHttpAsyncUploadloopLoopCell *)cell {
  if (self = [super init]) {
    mProcess_ =
#line 25
    0;
    mIsPause_ =
#line 60
    NO;
    mIsFinished_ =
#line 62
    NO;
    
#line 92
    self->cell_ = cell;
    
#line 93
    parent_ = nil;
    
#line 94
    subHandles_ = [[JavaUtilArrayList alloc] init];
    
#line 95
    isHanlding_ = NO;
  }
  return self;
}


#line 102
- (void)setQueueWithComFqHttpAsyncUploadloopFQLoopQueue:(ComFqHttpAsyncUploadloopFQLoopQueue *)mQueue {
  
#line 103
  self->mQueue_ = mQueue;
  if ([((JavaUtilHashMap *) nil_chk(((ComFqHttpAsyncUploadloopLoopCell *) nil_chk(cell_))->records_)) size] > 0) {
    id<JavaUtilIterator> iter = [((id<JavaUtilSet>) nil_chk([cell_->records_ keySet])) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter)) hasNext]) {
      int key = [((JavaLangInteger *) nil_chk([iter next])) intValue];
      JavaUtilArrayList *value = [cell_->records_ getWithId:[JavaLangInteger valueOfWithInt:key]];
      for (int i = 0; i < [((JavaUtilArrayList *) nil_chk(value)) size]; i++) {
        JavaUtilArrayList *array = [value getWithInt:i];
        for (int j = 0; j < [((JavaUtilArrayList *) nil_chk(array)) size]; j++) {
          if ([((ComFqHalcyonEntityPhoto *) nil_chk([array getWithInt:j])) getImageId] == 0) {
            ComFqHttpAsyncUploadloopLoopCell *tmpCell = [[ComFqHttpAsyncUploadloopLoopCell alloc] initWithNSString:cell_->url_ withComFqHttpAsyncFQHttpParams:cell_->params_];
            ComFqHttpAsyncUploadloopLoopCellHandle *handle = [[ComFqHttpAsyncUploadloopLoopCellHandle alloc] initWithComFqHttpAsyncUploadloopLoopCell:tmpCell];
            NSString *filePath = [((ComFqHalcyonEntityPhoto *) nil_chk([array getWithInt:j])) getLocalPath];
            NSString *fileName = [filePath substring:0 endIndex:[((NSString *) nil_chk(filePath)) lastIndexOf:'/']];
            handle->path_ = [[JavaIoFile alloc] initWithNSString:filePath];
            handle->pathPhoto_ = [array getWithInt:j];
            [handle setOnCompleteListenerWithComFqHttpAsyncUploadlooponHandlerCompleteListener:self];
            handle->parent_ = self;
            [((JavaUtilArrayList *) nil_chk(subHandles_)) addWithId:handle];
          }
        }
      }
    }
  }
  [cell_ save];
}


#line 133
- (void)onHandle {
  
#line 134
  if ([((JavaUtilArrayList *) nil_chk(subHandles_)) size] != 0) {
    for (int i = 0; i < [subHandles_ size]; i++) {
      ComFqHttpAsyncUploadloopLoopCellHandle *handle = [subHandles_ getWithInt:i];
      if (!((ComFqHttpAsyncUploadloopLoopCellHandle *) nil_chk(handle))->isHanlding_) {
        handle->isHanlding_ = YES;
        [handle onHandle];
        return;
      }
    }
  }
  else {
    
#line 144
    if (path_ != nil) {
      long long int currnetFileSize = [path_ length];
      if (parent_ != nil) {
        ((ComFqHttpAsyncUploadloopLoopCell *) nil_chk(parent_->cell_))->nextExceptLength_ = currnetFileSize + parent_->cell_->uploadedLength_;
        parent_->cell_->lastLoadedLength_ = parent_->cell_->uploadedLength_;
      }
      JavaIoFile *filePath = path_;
      mCurrentRequestHandle_ = [ComFqLibHttpHelper upLoadImageWithNSString:[NSString stringWithFormat:@"%@/pub/upload_images.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()] withNSString:[path_ getAbsolutePath] withFQHttpResponseHandle:[[ComFqHttpAsyncUploadloopLoopCellHandle_$1 alloc] initWithComFqHttpAsyncUploadloopLoopCellHandle:self withJavaIoFile:filePath] withComFqHttpAsyncParamsWrapper_FQProcessInterface:
#line 225
      [[ComFqHttpAsyncUploadloopLoopCellHandle_$2 alloc] initWithComFqHttpAsyncUploadloopLoopCellHandle:self withLong:currnetFileSize]];
    }
    else {
      
#line 243
      if ([cell_ isKindOfClass:[ComFqHttpAsyncUploadloopLoopUpLoadCell class]]) {
        [((ComFqHttpAsyncUploadloopLoopUpLoadCell *) nil_chk(((ComFqHttpAsyncUploadloopLoopUpLoadCell *) check_class_cast(cell_, [ComFqHttpAsyncUploadloopLoopUpLoadCell class])))) resetParams];
      }
      mCurrentRequestHandle_ = [ComFqLibHttpHelper sendPostRequestWithNSString:((ComFqHttpAsyncUploadloopLoopCell *) nil_chk(cell_))->url_ withComFqHttpAsyncFQHttpParams:cell_->params_ withFQHttpResponseHandle:[[ComFqHttpAsyncUploadloopLoopCellHandle_$3 alloc] initWithComFqHttpAsyncUploadloopLoopCellHandle:self]];
    }
  }
}


#line 285
- (id<ComFqHttpAsyncUploadlooponHandlerCompleteListener>)getCompleteListener {
  
#line 286
  return completeListener_;
}


#line 289
- (void)setOnCompleteListenerWithComFqHttpAsyncUploadlooponHandlerCompleteListener:(id<ComFqHttpAsyncUploadlooponHandlerCompleteListener>)completeListener {
  
#line 290
  self->completeListener_ = completeListener;
}


#line 294
- (void)onHandlerCompleteWithComFqHttpAsyncUploadloopLoopCellHandle:(ComFqHttpAsyncUploadloopLoopCellHandle *)cellHanle
                                                            withInt:(int)type
                                                             withId:(id)results {
  [((JavaUtilArrayList *) nil_chk(subHandles_)) removeWithId:cellHanle];
  id<JavaUtilIterator> iter = [((id<JavaUtilSet>) nil_chk([((JavaUtilHashMap *) nil_chk(((ComFqHttpAsyncUploadloopLoopCell *) nil_chk(cell_))->records_)) keySet])) iterator];
  while ([((id<JavaUtilIterator>) nil_chk(iter)) hasNext]) {
    int key = [((JavaLangInteger *) nil_chk([iter next])) intValue];
    JavaUtilArrayList *value = [cell_->records_ getWithId:[JavaLangInteger valueOfWithInt:key]];
    for (int i = 0; i < [((JavaUtilArrayList *) nil_chk(value)) size]; i++) {
      JavaUtilArrayList *array = [value getWithInt:i];
      for (int j = 0; j < [((JavaUtilArrayList *) nil_chk(array)) size]; j++) {
        ComFqHalcyonEntityPhoto *p = [array getWithInt:j];
        if ([((NSString *) nil_chk([((ComFqHalcyonEntityPhoto *) nil_chk(p)) getLocalPath])) isEqual:[((ComFqHalcyonEntityPhoto *) nil_chk(((ComFqHttpAsyncUploadloopLoopCellHandle *) nil_chk(cellHanle))->photo_)) getLocalPath]]) {
          [array removeWithId:p];
          [array addWithId:cellHanle->photo_];
        }
      }
    }
  }
  
#line 312
  [cell_ save];
  isHanlding_ = NO;
}


#line 316
- (double)getProcess {
  
#line 317
  return mProcess_;
}

- (void)copyAllFieldsTo:(ComFqHttpAsyncUploadloopLoopCellHandle *)other {
  [super copyAllFieldsTo:other];
  other->cell_ = cell_;
  other->completeListener_ = completeListener_;
  other->isHanlding_ = isHanlding_;
  other->mCurrentRequestHandle_ = mCurrentRequestHandle_;
  other->mIsFinished_ = mIsFinished_;
  other->mIsPause_ = mIsPause_;
  other->mProcess_ = mProcess_;
  other->mQueue_ = mQueue_;
  other->mRecordItemId_ = mRecordItemId_;
  other->parent_ = parent_;
  other->path_ = path_;
  other->pathPhoto_ = pathPhoto_;
  other->photo_ = photo_;
  other->processListener_ = processListener_;
  other->subHandles_ = subHandles_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "setProcessListemerWithComFqHttpAsyncParamsWrapper_FQProcessInterface:", "setProcessListemer", "V", 0x1, NULL },
    { "resume", NULL, "V", 0x1, NULL },
    { "cancle", NULL, "V", 0x1, NULL },
    { "remove", NULL, "V", 0x1, NULL },
    { "initWithComFqHttpAsyncUploadloopLoopCell:", "LoopCellHandle", NULL, 0x1, NULL },
    { "setQueueWithComFqHttpAsyncUploadloopFQLoopQueue:", "setQueue", "V", 0x1, NULL },
    { "onHandle", NULL, "V", 0x1, NULL },
    { "getCompleteListener", NULL, "Lcom.fq.http.async.uploadloop.onHandlerCompleteListener;", 0x1, NULL },
    { "setOnCompleteListenerWithComFqHttpAsyncUploadlooponHandlerCompleteListener:", "setOnCompleteListener", "V", 0x1, NULL },
    { "onHandlerCompleteWithComFqHttpAsyncUploadloopLoopCellHandle:withInt:withId:", "onHandlerComplete", "V", 0x1, NULL },
    { "getProcess", NULL, "D", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "mQueue_", NULL, 0x4, "Lcom.fq.http.async.uploadloop.FQLoopQueue;", NULL,  },
    { "mProcess_", NULL, 0x4, "F", NULL,  },
    { "isHanlding_", NULL, 0x1, "Z", NULL,  },
    { "completeListener_", NULL, 0x4, "Lcom.fq.http.async.uploadloop.onHandlerCompleteListener;", NULL,  },
    { "processListener_", NULL, 0x4, "Lcom.fq.http.async.ParamsWrapper$FQProcessInterface;", NULL,  },
    { "mCurrentRequestHandle_", NULL, 0x2, "Lcom.fq.http.potocol.HttpRequestPotocol;", NULL,  },
    { "cell_", NULL, 0x1, "Lcom.fq.http.async.uploadloop.LoopCell;", NULL,  },
    { "path_", NULL, 0x2, "Ljava.io.File;", NULL,  },
    { "pathPhoto_", NULL, 0x2, "Lcom.fq.halcyon.entity.Photo;", NULL,  },
    { "photo_", NULL, 0x2, "Lcom.fq.halcyon.entity.Photo;", NULL,  },
    { "subHandles_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
    { "parent_", NULL, 0x2, "Lcom.fq.http.async.uploadloop.LoopCellHandle;", NULL,  },
    { "mIsPause_", NULL, 0x1, "Z", NULL,  },
    { "mIsFinished_", NULL, 0x2, "Z", NULL,  },
    { "mRecordItemId_", NULL, 0x2, "I", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHttpAsyncUploadloopLoopCellHandle = { "LoopCellHandle", "com.fq.http.async.uploadloop", NULL, 0x1, 11, methods, 15, fields, 0, NULL};
  return &_ComFqHttpAsyncUploadloopLoopCellHandle;
}

@end

@implementation ComFqHttpAsyncUploadloopLoopCellHandle_$1


#line 154
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 155
  if (this$0_->parent_ != nil && [this$0_->parent_->cell_ isKindOfClass:[ComFqHttpAsyncUploadloopLoopUpLoadCell class]]) {
  }
  
#line 158
  if (this$0_->parent_ != nil) {
    ((ComFqHttpAsyncUploadloopLoopCell *) nil_chk(this$0_->parent_->cell_))->uploadedLength_ = this$0_->parent_->cell_->lastLoadedLength_;
  }
  if (this$0_->parent_ != nil) {
    
#line 163
    this$0_->parent_->isHanlding_ = NO;
  }
  this$0_->isHanlding_ = NO;
  [ComFqLibToolsFQRemoteDebugTool logWithNSString:[NSString stringWithFormat:@"\u4e0a\u4f20%@\u5931\u8d25\uff0ccode: %d", [((JavaIoFile *) nil_chk(val$filePath_)) getAbsolutePath], code] withJavaLangThrowable:e];
}


#line 170
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  
#line 171
  if (responseCode == 0 && type == 1) {
    
#line 173
    this$0_->photo_ = [[ComFqHalcyonEntityPhoto alloc] init];
    [this$0_->photo_ setAtttributeByjsonWithFQJSONObject:(FQJSONObject *) check_class_cast(results, [FQJSONObject class])];
    [this$0_->photo_ setLocalPathWithNSString:[((JavaIoFile *) nil_chk(this$0_->path_)) getAbsolutePath]];
    NSString *filePath = [this$0_->path_ getAbsolutePath];
    NSString *parentPath = [filePath substring:0 endIndex:[((NSString *) nil_chk(filePath)) lastIndexOf:'/'] + 1];
    
#line 190
    if ([((NSString *) nil_chk(parentPath)) contains:ComFqHalcyonExtendFilesystemFileSystem_get_RECORD_FOLDER_()]) {
      JavaIoFile *imageCachePath = [[JavaIoFile alloc] initWithNSString:[((ComFqHalcyonExtendFilesystemFileSystem *) nil_chk([ComFqHalcyonExtendFilesystemFileSystem getInstance])) getRecordImgPath]];
      if (![imageCachePath exists]) [imageCachePath mkdirs];
      JavaIoFile *oldFile = [[JavaIoFile alloc] initWithNSString:filePath];
      if ([oldFile exists]) {
        NSString *newPath = [NSString stringWithFormat:@"%@%d%@", [((ComFqHalcyonExtendFilesystemFileSystem *) nil_chk([ComFqHalcyonExtendFilesystemFileSystem getInstance])) getRecordImgPath], [this$0_->photo_ getImageId], ComFqHalcyonExtendFilesystemFileSystem_get_RED_IMG_FT_()];
        JavaIoFile *newName = [[JavaIoFile alloc] initWithNSString:newPath];
        [oldFile renameToWithJavaIoFile:newName];
        
#line 200
        [((ComFqLibRecordRecordUploadNotify *) nil_chk([ComFqLibRecordRecordUploadNotify getInstance])) changePhotoPathWithNSString:filePath withNSString:newPath withInt:[this$0_->photo_ getImageId]];
        
#line 202
        if ([ComFqLibPlatformPlatform getInstance] != nil) [((ComFqLibPlatformPlatform *) nil_chk([ComFqLibPlatformPlatform getInstance])) scanFileWithNSString:filePath withNSString:newPath];
      }
    }
    
#line 212
    [((ComFqHalcyonEntityPhoto *) nil_chk(this$0_->pathPhoto_)) setImageIdWithInt:[this$0_->photo_ getImageId]];
    [this$0_->pathPhoto_ setImagePathWithNSString:[this$0_->photo_ getImagePath]];
    if (this$0_->parent_ != nil && [this$0_->parent_->cell_ isKindOfClass:[ComFqHttpAsyncUploadloopLoopUpLoadCell class]]) {
      [((ComFqHttpAsyncUploadloopLoopUpLoadCell *) nil_chk(((ComFqHttpAsyncUploadloopLoopUpLoadCell *) check_class_cast(this$0_->parent_->cell_, [ComFqHttpAsyncUploadloopLoopUpLoadCell class])))) onUpLoadSuccessWithComFqHalcyonEntityPhoto:this$0_->pathPhoto_];
    }
    if (this$0_->completeListener_ != nil) {
      [this$0_->completeListener_ onHandlerCompleteWithComFqHttpAsyncUploadloopLoopCellHandle:this$0_ withInt:type withId:results];
    }
  }
  else {
    
#line 221
    [ComFqLibToolsFQRemoteDebugTool logWithNSString:[NSString formatWithNSString:@"public void handle(int responseCode, String msg, int type, Object results) error response => responseCode = %d, type = %d" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ [JavaLangInteger valueOfWithInt:responseCode], [JavaLangInteger valueOfWithInt:type] } count:2 type:[IOSClass classWithClass:[NSObject class]]]]];
  }
  this$0_->isHanlding_ = NO;
}

- (id)initWithComFqHttpAsyncUploadloopLoopCellHandle:(ComFqHttpAsyncUploadloopLoopCellHandle *)outer$
                                      withJavaIoFile:(JavaIoFile *)capture$0 {
  this$0_ = outer$;
  val$filePath_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHttpAsyncUploadloopLoopCellHandle:withJavaIoFile:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.http.async.uploadloop.LoopCellHandle;", NULL,  },
    { "val$filePath_", NULL, 0x1012, "Ljava.io.File;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHttpAsyncUploadloopLoopCellHandle_$1 = { "$1", "com.fq.http.async.uploadloop", "LoopCellHandle", 0x8000, 3, methods, 2, fields, 0, NULL};
  return &_ComFqHttpAsyncUploadloopLoopCellHandle_$1;
}

@end

@implementation ComFqHttpAsyncUploadloopLoopCellHandle_$2


#line 227
- (void)setProcessWithFloat:(float)process {
  
#line 228
  if (this$0_->parent_ != nil) {
    long long int tmp = ((ComFqHttpAsyncUploadloopLoopCell *) nil_chk(this$0_->parent_->cell_))->uploadedLength_;
    this$0_->parent_->cell_->uploadedLength_ += J2ObjCFpToLong((val$currnetFileSize_ * process));
    this$0_->parent_->mProcess_ = this$0_->parent_->cell_->uploadedLength_ / (float) this$0_->parent_->cell_->allFileLength_;
    if (this$0_->parent_->processListener_ != nil) {
      [this$0_->parent_->processListener_ setProcessWithFloat:this$0_->parent_->mProcess_];
    }
    this$0_->parent_->cell_->uploadedLength_ = tmp;
    if (process == 1) {
      this$0_->parent_->cell_->uploadedLength_ = this$0_->parent_->cell_->nextExceptLength_;
    }
  }
}

- (id)initWithComFqHttpAsyncUploadloopLoopCellHandle:(ComFqHttpAsyncUploadloopLoopCellHandle *)outer$
                                            withLong:(long long int)capture$0 {
  this$0_ = outer$;
  val$currnetFileSize_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "setProcessWithFloat:", "setProcess", "V", 0x1, NULL },
    { "initWithComFqHttpAsyncUploadloopLoopCellHandle:withLong:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.http.async.uploadloop.LoopCellHandle;", NULL,  },
    { "val$currnetFileSize_", NULL, 0x1012, "J", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHttpAsyncUploadloopLoopCellHandle_$2 = { "$2", "com.fq.http.async.uploadloop", "LoopCellHandle", 0x8000, 2, methods, 2, fields, 0, NULL};
  return &_ComFqHttpAsyncUploadloopLoopCellHandle_$2;
}

@end

@implementation ComFqHttpAsyncUploadloopLoopCellHandle_$3


#line 249
- (void)onErrorWithInt:(int)code
 withJavaLangThrowable:(JavaLangThrowable *)e {
  
#line 250
  this$0_->isHanlding_ = NO;
  if (this$0_->parent_ != nil) this$0_->parent_->isHanlding_ = NO;
}


#line 255
- (void)handleWithInt:(int)responseCode
         withNSString:(NSString *)msg
              withInt:(int)type
               withId:(id)results {
  
#line 256
  this$0_->mIsFinished_ = YES;
  if (responseCode == 0 && type == 1) {
  }
  
#line 260
  if (responseCode == 0 && [((NSString *) nil_chk(((ComFqHttpAsyncUploadloopLoopCell *) nil_chk(this$0_->cell_))->url_)) isEqual:[NSString stringWithFormat:@"%@/record/item/create.do", ComFqLibToolsUriConstants_Conn_get_URL_PUB_()]]) {
    FQJSONObject *json = (FQJSONObject *) check_class_cast(results, [FQJSONObject class]);
    FQJSONArray *array = [((FQJSONObject *) nil_chk(json)) optJSONArrayWithNSString:@"records"];
    FQJSONObject *record = [((FQJSONArray *) nil_chk(array)) optJSONObjectWithInt:0];
    if (record != nil) {
      FQJSONArray *ids = [record optJSONArrayWithNSString:@"record_ids"];
      if (ids != nil) {
        FQJSONObject *item = [ids optJSONObjectWithInt:0];
        this$0_->mRecordItemId_ = [((FQJSONObject *) nil_chk(item)) optIntWithNSString:@"recordId" withInt:0];
      }
    }
  }
  
#line 273
  [((ComFqHttpAsyncUploadloopFQLoopQueue *) nil_chk(this$0_->mQueue_)) removeWithId:this$0_];
  [((ComFqHttpAsyncUploadloopLoopCell *) nil_chk(this$0_->cell_)) deletFile];
  if (this$0_->completeListener_ != nil) {
    [this$0_->completeListener_ onHandlerCompleteWithComFqHttpAsyncUploadloopLoopCellHandle:this$0_ withInt:type withId:results];
  }
  this$0_->isHanlding_ = NO;
}

- (id)initWithComFqHttpAsyncUploadloopLoopCellHandle:(ComFqHttpAsyncUploadloopLoopCellHandle *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onErrorWithInt:withJavaLangThrowable:", "onError", "V", 0x1, NULL },
    { "handleWithInt:withNSString:withInt:withId:", "handle", "V", 0x1, NULL },
    { "initWithComFqHttpAsyncUploadloopLoopCellHandle:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.fq.http.async.uploadloop.LoopCellHandle;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHttpAsyncUploadloopLoopCellHandle_$3 = { "$3", "com.fq.http.async.uploadloop", "LoopCellHandle", 0x8000, 3, methods, 1, fields, 0, NULL};
  return &_ComFqHttpAsyncUploadloopLoopCellHandle_$3;
}

@end