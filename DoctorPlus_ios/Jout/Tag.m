//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/Tag.java
//
//  Created by liaomin on 15-5-4.
//

#line 1 "/Users/liaomin/Documents/workspace/Android/DocPlusLogic/src/com/fq/halcyon/entity/Tag.java"

#include "Contacts.h"
#include "JSONObject.h"
#include "Tag.h"
#include "java/util/ArrayList.h"


#line 8
@implementation ComFqHalcyonEntityTag


#line 20
- (int)getId {
  
#line 21
  return tag_id_;
}


#line 24
- (void)setIdWithInt:(int)id_ {
  
#line 25
  self->tag_id_ = id_;
}


#line 28
- (int)getCount {
  
#line 29
  return count_;
}


#line 32
- (void)setCountWithInt:(int)count {
  
#line 33
  self->count_ = count;
}


#line 36
- (NSString *)getTitle {
  
#line 37
  return self->title_;
}


#line 40
- (NSString *)getName {
  
#line 41
  return [self getTitle];
}


#line 44
- (void)setTitleWithNSString:(NSString *)title {
  
#line 45
  self->title_ = title;
}


#line 49
- (void)test {
}


#line 53
- (void)setContactsWithJavaUtilArrayList:(JavaUtilArrayList *)user {
  
#line 54
  mUser_ = user;
}


#line 57
- (JavaUtilArrayList *)getContacts {
  
#line 58
  if (mUser_ == nil) mUser_ = [[JavaUtilArrayList alloc] init];
  return mUser_;
}


#line 62
- (void)addContactsWithComFqHalcyonEntityContacts:(ComFqHalcyonEntityContacts *)user {
  
#line 63
  if (user == nil) return;
  if (mUser_ == nil) mUser_ = [[JavaUtilArrayList alloc] init];
  if (![((JavaUtilArrayList *) nil_chk(mUser_)) containsWithId:user]) [mUser_ addWithId:user];
}


#line 68
- (void)removeContactsWithComFqHalcyonEntityContacts:(ComFqHalcyonEntityContacts *)user {
  
#line 69
  if (mUser_ == nil || user == nil) return;
  if ([((JavaUtilArrayList *) nil_chk(mUser_)) containsWithId:user]) [mUser_ removeWithId:user];
}


#line 74
- (void)setAtttributeByjsonWithFQJSONObject:(FQJSONObject *)json {
  [super setAtttributeByjsonWithFQJSONObject:json];
  self->tag_id_ = [((FQJSONObject *) nil_chk(json)) optIntWithNSString:@"tag_id"];
  self->count_ = [json optIntWithNSString:@"count"];
  self->title_ = [json optStringWithNSString:@"title"];
}

- (id)init {
  return [super init];
}

- (void)copyAllFieldsTo:(ComFqHalcyonEntityTag *)other {
  [super copyAllFieldsTo:other];
  other->count_ = count_;
  other->mUser_ = mUser_;
  other->tag_id_ = tag_id_;
  other->title_ = title_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getId", NULL, "I", 0x1, NULL },
    { "setIdWithInt:", "setId", "V", 0x1, NULL },
    { "getCount", NULL, "I", 0x1, NULL },
    { "setCountWithInt:", "setCount", "V", 0x1, NULL },
    { "getTitle", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "setTitleWithNSString:", "setTitle", "V", 0x1, NULL },
    { "test", NULL, "V", 0x1, NULL },
    { "setContactsWithJavaUtilArrayList:", "setContacts", "V", 0x1, NULL },
    { "getContacts", NULL, "Ljava.util.ArrayList;", 0x1, NULL },
    { "addContactsWithComFqHalcyonEntityContacts:", "addContacts", "V", 0x1, NULL },
    { "removeContactsWithComFqHalcyonEntityContacts:", "removeContacts", "V", 0x1, NULL },
    { "setAtttributeByjsonWithFQJSONObject:", "setAtttributeByjson", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_Tag_", "serialVersionUID", 0x1a, "J", NULL, .constantValue.asLong = ComFqHalcyonEntityTag_serialVersionUID },
    { "tag_id_", NULL, 0x2, "I", NULL,  },
    { "count_", NULL, 0x2, "I", NULL,  },
    { "title_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "mUser_", NULL, 0x2, "Ljava.util.ArrayList;", NULL,  },
  };
  static J2ObjcClassInfo _ComFqHalcyonEntityTag = { "Tag", "com.fq.halcyon.entity", NULL, 0x1, 14, methods, 5, fields, 0, NULL};
  return &_ComFqHalcyonEntityTag;
}

@end
