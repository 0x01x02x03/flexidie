/*
 *     Generated by class-dump 3.3.4 (64 bit).
 *
 *     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2011 by Steve Nygard.
 */

#import "NSObject.h"

#import "TUAudioPlayerDelegateProtocol-Protocol.h"

@class CNFConferenceController, TUAudioPlayer;

@interface MPConferenceManager : NSObject <TUAudioPlayerDelegateProtocol>
{
    CNFConferenceController *_conferenceController;
    id <SBUIUserAgent> _sbUserAgent;
    TUAudioPlayer *_player;
}

+ (id)sharedInstance;
- (BOOL)isPlaying;
- (void)stopAudioPlayer;
- (void)audioPlayerDidStopPlaying:(id)arg1;
- (void)playSound:(int)arg1 numOfLoops:(int)arg2 pauseDuration:(float)arg3;
- (void)_faceTimeStateChanged:(id)arg1;
- (void)_faceTimeCapabilityChanged:(id)arg1;
- (void)_handleInvitation:(id)arg1;
- (void)endFaceTime;
- (BOOL)activeFaceTimeCallExists;
- (BOOL)faceTimeInvitationExists;
@property(readonly) CNFConferenceController *conferenceController;
- (void)dealloc;
- (id)init;

@end
