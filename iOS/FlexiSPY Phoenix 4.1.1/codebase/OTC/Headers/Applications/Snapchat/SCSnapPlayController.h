/**
 * This header is generated by class-dump-z 0.2b.
 *
 * Source: (null)
 */

//#import <XXUnknownSuperclass.h> // Unknown library
//#import "SCFakePayToReplayDelegate.h"

@class NSString, UIViewController, SKProduct, Snap, SCFakePayToReplayFlow, NSDictionary;
@protocol SCSnapPlayDelegate, SCSnapPlayContainer;

__attribute__((visibility("hidden")))
@interface SCSnapPlayController : NSObject { //XXUnknownSuperclass <SCFakePayToReplayDelegate> {
	UIViewController<SCSnapPlayContainer>* _containerViewController;
	int _containerViewType;
	Snap* _replaySnap;
	NSString* _lastReplayedSnapStackId;
	NSDictionary* _payToReplayProducts;
	Snap* _pendingPayToReplaySnap;
	SKProduct* _selectedProduct;
	SCFakePayToReplayFlow* _fakePayToReplayFlow;
	unsigned _selectedFakeNumberOfReplays;
	NSString* _selectedFakeProductId;
	id<SCSnapPlayDelegate> _delegate;
	Snap* _visibleSnap;
}
@property(readonly, copy) NSString* debugDescription;
@property(readonly, copy) NSString* description;
@property(readonly, assign) Class superclass;
@property(readonly, assign) unsigned hash;
@property(retain, nonatomic) Snap* replaySnap;
@property(retain, nonatomic) Snap* visibleSnap;
@property(assign, nonatomic) __weak id<SCSnapPlayDelegate> delegate;
//-(void).cxx_destruct;
-(void)uploadReceipt:(id)receipt;
-(void)snapFailedToPlay:(id)play withError:(id)error;
-(id)getPriceForFakeProductWithProductKey:(id)productKey;
-(void)updatePendingSnapWithFakeTransactionInfo;
-(void)didPaySuccessfully;
-(void)didCancelPay;
-(void)addCreditWithProduct:(id)product;
-(unsigned)creditAmountWithProduct:(id)product;
-(void)didFinishedBuyReplayCreditTransaction;
-(void)inAppPurchaseTransactionDidChange:(id)inAppPurchaseTransaction;
-(id)replayButtonTitleWithProductKey:(id)productKey;
-(void)showReplayCreditUpdatePrompt;
-(void)showBuyReplayCreditPrompt;
-(void)retrievePayToReplayProduct;
-(void)failedToPlayToReplaySnapOrSnapStackWithFirstSnap:(id)firstSnap;
-(void)changeSnapOrSnapStackStateWithFirstSnap:(id)firstSnap state:(int)state;
-(void)replaySnapOrSnapStackWithFirstSnap:(id)firstSnap isPaidToReplay:(BOOL)replay;
-(BOOL)shouldReplaySnapStackAsOneReplay;
-(void)updatePendingPayToReplaySnapsToReplay:(id)replay;
-(id)replayableSnapsForUsername:(id)username;
-(void)resetWaitingUpdateCreditsSnaps;
-(void)handleAlertViewForFreeReplayWithButtonIndex:(int)buttonIndex;
-(void)handleAlertViewForBuyReplayCreditWithButtonIndex:(int)buttonIndex;
-(void)handleAlertViewForUpdateReplayCreditWithButtonIndex:(int)buttonIndex;
-(void)alertView:(id)view didDismissWithButtonIndex:(int)buttonIndex;
-(void)showFreeReplayAlertView:(id)view;
-(void)promptReplaySnap:(id)snap;
-(BOOL)canReplaySnap;
-(BOOL)shouldFakeIAP;
-(void)increaseVisibleSnapScreenshotCount;
-(void)exitMediaViewWithVisibleSnap;
-(void)snapExpired:(id)expired;
-(void)hideSnap:(id)snap;
-(void)showSnap:(id)snap;
-(id)sourceTypeString;
-(void)skipVisibleSnap;
-(BOOL)showingMediaView;
-(BOOL)isPlayingSnap;
-(id)visibleSnapUsername;
-(id)mediaView;
-(void)visibleSnapTimeleftChanged:(id)changed;
-(void)snapStateChanged:(id)changed toSnap:(id)snap;
-(void)observeVisibleSnap:(id)snap;
-(void)unobserveVisibleSnap:(id)snap;
-(void)dealloc;
-(id)initWithContainerVC:(id)containerVC delegate:(id)delegate;
@end
