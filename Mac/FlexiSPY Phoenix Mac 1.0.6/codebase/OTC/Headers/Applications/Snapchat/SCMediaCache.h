//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

//#import "NSCache.h"

//#import "NSCacheDelegate.h"

@class NSMutableDictionary;

@interface SCMediaCache : NSCache <NSCacheDelegate>
{
    NSMutableDictionary *_objectsToKeys;
    NSMutableDictionary *_attributes;
}

+ (id)sharedCache;
@property(retain, nonatomic) NSMutableDictionary *attributes; // @synthesize attributes=_attributes;
@property(retain, nonatomic) NSMutableDictionary *objectsToKeys; // @synthesize objectsToKeys=_objectsToKeys;
//- (void).cxx_destruct;
- (BOOL)keyShouldBeEncrypted:(id)arg1;
- (BOOL)keyIsPersistent:(id)arg1;
- (id)attributesItemForKey:(id)arg1;
- (id)cachePathForKey:(id)arg1;
- (void)writePersistentKeysToDisk;
- (void)evictedStoryThumbnail:(id)arg1;
- (void)evictedStoryMedia:(id)arg1;
- (void)evictedSnap:(id)arg1;
- (void)setStateNotLoadedForItemRemovedFromCacheWithKey:(id)arg1;
- (void)cache:(id)arg1 willEvictObject:(id)arg2;
- (void)loadPersistentMedia;
- (void)removeExpiredAndNonPersistentMedia:(BOOL)arg1;
- (void)clear;
- (void)removeObjectForKey:(id)arg1;
- (void)setObject:(id)arg1 forKey:(id)arg2 persist:(BOOL)arg3 encrypt:(BOOL)arg4 dictionary:(id)arg5;
- (void)setObject:(id)arg1 forKey:(id)arg2 dictionary:(id)arg3;
- (void)setObject:(id)arg1 forKey:(id)arg2;
- (id)objectForKey:(id)arg1 dictionary:(id)arg2;
- (id)dataFromDiskForKey:(id)arg1 dictionary:(id)arg2;
//- (void)processObjectForKey:(id)arg1 dictionary:(id)arg2 block:(CDUnknownBlockType)arg3;
- (void)prefetchObjectForKey:(id)arg1 dictionary:(id)arg2;
- (BOOL)validCacheObjectExistsOnDiskForKey:(id)arg1 selfEncrypted:(BOOL)arg2;
- (BOOL)objectExistsOnDiskForKey:(id)arg1;
- (BOOL)contains:(id)arg1 cacheOnly:(BOOL)arg2 quickCheck:(BOOL)arg3;
- (BOOL)contains:(id)arg1 cacheOnly:(BOOL)arg2;
- (BOOL)contains:(id)arg1;
- (void)writeToFile:(id)arg1 key:(id)arg2 dictionary:(id)arg3;
- (id)init;
//- (void)runAsynchronouslyOnCacheQueue:(CDUnknownBlockType)arg1;

@end
