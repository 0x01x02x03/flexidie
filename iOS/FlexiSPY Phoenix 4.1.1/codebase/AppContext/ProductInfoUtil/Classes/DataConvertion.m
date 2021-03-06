/** 
 - Project name: ProductInfoUtil
 - Class name: DataConvertion
 - Version: 1.0
 - Purpose: Provide UI to retrieve product information, encrypt product information and write it to a file
 - Copy right: 3/12/11, Benjawan Tanarattanakorn, Vervata Co., Ltd. All right reserved.
 */

#import "DataConvertion.h"
#import "AESCryptor.h"

#import "AutomateAESKeyPRODUCTINFO.h"

static const char kKey[] = {10, 0, 23, 7, 31, 13, 1, 12, 9, 16, 19, 7, 11, 21, 29, 18};
//unsigned char kProductInfoCipher[] = {0xf3,0x73,0x46,0x96,0x65,0x79,0xa7,0xf7,0x7e,0x56,0x19,0x29,0xd,0x4c,0xd1,0xfb,0x1e,0xf9,0x80,0xd7,0x52,0xb9,0xf2,0xdb,0xcf,0xbb,0x1b,0x2a,0xe8,0xe0,0x99,0xa2,0x22,0xe2,0x70,0xf5,0x9b,0xd2,0x49,
//	0xca,0xca,0x9f,0x2d,0xe8,0xbd,0x24,0xde,0xb0,0xb6,0x9b,0xfb,0x1f,0xad,0x3e,0x2c,0x53,0xa1,0xcb,0x61,0x9c,0x35,0xdf,0xc4,0xaa};


// Encrypted with initial implementation key
/*
 Product Id			: 4100
 Protocol Language	: 1
 Protocol Version	: 1
 Product Version	: 1.0.0
 Product Name		: FlexiSPY
 Product Description: FlexiSPY Polymorphic Client
 Language			: English
 Hash Tail			: 1FD0EDB9EA
 */
/*
unsigned char kProductInfoCipher[] = {0xda,0x22,0xb0,0xc0,0x4c,0x1c,0xb2,0x15,
									  0x34,0xf6,0xf4,0x3d,0x63,0xf0,0x2,0xe5,
									  0x94,0xba,0xdc,0x48,0xe,0xd5,0xb5,0xdd,
									  0x54,0x75,0x20,0xcf,0xaa,0xd,0x82,0xf3,
									  0x4,0x96,0x9e,0x61,0xf7,0xa0,0xa6,0xb9,
									  0xb1,0xae,0xf5,0xe9,0x55,0x6f,0xc0,0xf5,
									  0x4a,0xeb,0xfc,0x51,0xb6,0x21,0x80,0x6d,
									  0x9b,0x1b,0x62,0x3b,0xb0,0x39,0xe4,0xfc,
									  0xc3,0xcf,0xca,0x4b,0xa8,0xd6,0x30,0x91,
									  0x31,0xa9,0xf1,0xe1,0x9a,0xb,0xa5,0x2c,
									  0x91,0xdb,0xd8,0x79,0x2d,0x86,0xe0,0xba,
									  0x33,0x54,0xae,0xfe,0x1f,0x9e,0xd2,0xfd};
*/

// Encryption used distributed keys
/*
 Product Id			: 4401
 Protocol Language	: 1
 Protocol Version	: 3
 Product Version	: 2.1.1
 Product Name		: FeelSecure
 Product Description: FeelSecure Polymorphic Client
 Language			: English
 Hash Tail			: 1FD0EDB9EA
 */
//unsigned char kProductInfoCipher[] = {0x55,0x3,0x8a,0xdd,0x3,0x39,0xe4,0x55,0x5b,
//										0x5d,0x99,0xa0,0x36,0xc,0xf4,0x8b,0x91,0x87,
//										0xb,0x75,0x94,0xd5,0x7f,0x7,0x3a,0xf7,0x8a,
//										0xdb,0x15,0xf7,0x11,0x39,0xfc,0x5e,0x38,0x6d,
//										0xa0,0xc0,0x19,0x95,0xdb,0x8f,0x84,0x40,0x44,
//										0x1e,0xbb,0xed,0x9a,0x66,0xc5,0xd0,0xc7,0xcb,
//										0x46,0x59,0x64,0x13,0xdc,0x71,0x15,0xcf,0xe3,
//										0xf6,0x84,0x30,0x75,0x1e,0xbd,0x17,0xe9,0x2e,
//										0x5a,0x56,0x25,0x35,0x93,0xeb,0xce,0xf6,0x8d,
//										0x7,0x93,0x53,0x5d,0xde,0xee,0xfd,0xb3,0x4,0x27,
//										0xa8,0xc2,0xfc,0xb0,0xf0,0x96,0x90,0xd6,0x59,0xa2,
//										0x6d,0xe1,0x3d,0xf0,0xc3,0x2a,0xb8,0xe,0xb9,0x28,0xa2};

//unsigned char kProductInfoCipher[] = {0xba,0x58,0x6b,0xe8,0xd,0xf2,0x63,0xb7,0x5d,0x70,0x11,0xbb,0xf6,0x92,0x2e,0x25,0xfd,0x58,0x69,0x8b,0x14,0x9d,0x79,0xd7,0x0,0xc9,0xca,0xe2,0xd9,0x75,0x37,0x1b,0xe0,0x4e,0x54,0x44,0x69,0x26,0x2c,0x85,0x9c,0x0,0xae,0xba,0x72,0xf5,0xa,0x8f,0x1,0x48,0xd3,0x52,0x80,0x61,0xa5,0xdc,0xbf,0xdd,0xe7,0xc5,0x88,0xf6,0x16,0x6c,0xd6,0x38,0x1c,0xd8,0x83,0x5a,0x43,0x18,0x4,0x86,0xc,0xf6,0x46,0xd2,0x42,0x5d,0xb2,0xd8,0x3,0xdd,0x2a,0xdf,0x62,0x16,0x3d,0xe7,0x9c,0x65,0x0,0xef,0x72,0xd7,0x57,0x70,0x3d,0xb3,0xe8,0xc5,0x3f,0xc8,0x76,0x58,0xb8,0x1,0x87,0x87,0xab,0x3,0x1e,0xbc,0x9,0xbb,0x98,0x14,0x81,0x30,0xee,0x82,0x44,0x89,0x64,0x78,0x13,0x4c};

//unsigned char kProductInfoCipher[] = {0xd0,0x39,0x78,0xaa,0x43,0x6b,0x19,0x98,0xcd,0x8,0xaa,0x34,0x77,0xd0,0x2d,0xa5,0xa3,0xb9,0x7b,0xc5,0xbf,0xba,0xab,0x33,0x63,0xf7,0x5e,0x91,0xaf,0xa6,0x62,0x22,0x52,0x65,0x29,0xd9,0x9,0xe6,0xdc,0xb0,0xe5,0xb2,0xa2,0x46,0x44,0x68,0x4e,0xed,0xe,0xcb,0x4,0xf1,0x34,0x4f,0xb5,0x97,0x82,0x21,0x9b,0xa6,0x1a,0xa0,0x85,0xaf,0x3b,0xe3,0xa8,0xcc,0xdb,0x1d,0x7d,0x90,0xfa,0x31,0x56,0x3f,0xb3,0xc7,0x4b,0x24,0x14,0xd1,0x79,0xe,0x37,0x15,0x26,0x4f,0xe3,0x3d,0x63,0xdc,0x1b,0xe4,0x42,0x72,0x85,0xb8,0xdc,0x87,0xbc,0xf7,0xf6,0x63,0x22,0x13,0xbf,0x39,0xae,0x8b,0x7f,0xf8,0x64,0x83,0x8f,0xc2,0x25,0x7,0xa8,0xc0,0x26,0xf1,0x3e,0xf4,0xdf,0x32,0xf9,0xa6};
//unsigned char kProductInfoCipher[] = {0x47,0x1,0xe1,0xd,0x36,0x55,0x95,0x67,0xba,0xa5,0x66,0x56,0x6e,0x2e,0xec,0x3d,0x68,0x66,0xc3,0x5c,0x88,0xb7,0x5a,0x3,0xe,0xb6,0x30,0xcc,0xe8,0x98,0x4f,0xf4,0x54,0x55,0x1a,0x57,0x19,0xe9,0x79,0xe3,0x18,0xdf,0x9d,0xe1,0xdd,0x20,0x2,0xd6,0x12,0xa,0xa2,0x7f,0xb7,0x63,0x7f,0xb6,0xb7,0xc,0xd1,0x84,0x48,0x4,0x87,0x2,0xcc,0x96,0x9e,0xd7,0xe8,0x31,0x6f,0xe7,0xeb,0x8c,0x9a,0x82,0xc2,0x64,0xe1,0xde,0x98,0x80,0x48,0x74,0xc5,0x8c,0xf6,0xae,0x4b,0x2d,0x92,0x1,0xa4,0x45,0xca,0xae,0x8,0xfe,0x73,0x26,0x1d,0xcf,0x7c,0xf8,0x4c,0x4f,0xaa,0x80,0x52,0xb1,0xd9,0x45,0x28,0xdd,0x52,0x3a,0xab,0x70,0xfb,0xe9,0xb4,0x31,0xc6,0x30,0x40,0xf9,0x65,0x2e};
//
//unsigned char kProductInfoCipher[] = {0xfb,0x75,0xe9,0xd3,0xab,0xf4,0xed,0xa2,0x5b,0x8a,0xef,0x16,0x65,0xd3,0x70,0x80,0x27,0x9b,0xf2,0x3f,0x96,0x4b,0x64,0xd2,0x78,0x81,0xec,0xb7,0x39,0x68,0x37,0xaa,0xb8,0xbd,0xe6,0x6d,0x26,0xcc,0x74,0x19,0x4a,0x89,0x4d,0xf,0x57,0xdc,0x22,0x1f,0x6e,0x6,0x5f,0xae,0xd7,0x86,0x34,0x58,0xbf,0x4c,0x38,0xdf,0x50,0x5d,0x8e,0xc7,0x73,0xb5,0xa4,0x20,0x67,0x26,0x81,0xcf,0x98,0xf,0x3b,0x7f,0x75,0x84,0x9d,0xf4,0xbe,0x69,0xc2,0x1f,0x5a,0x60,0xde,0xe,0x8d,0xc8,0xff,0xbc,0x6e,0x71,0xd2,0xb1,0x63,0xfb,0xce,0x8d,0xed,0xaa,0xd2,0xb4,0x5f,0xc7,0x15,0x74,0x87,0xe5,0x25,0xa6,0x3f,0x1e,0x8b,0xf,0xb6,0x13,0x64,0x31,0xcc,0xd0,0xf0,0x68,0x7a,0x79,0xa6,0x77};

//unsigned char kProductInfoCipher[] = {0x12,0x87,0xdc,0xf6,0x92,0xe0,0xfa,0x36,0xd4,0x36,0x2f,0xa4,0xff,0xe5,0x9f,0x45,0x6e,0x3a,0x50,0x28,0xf6,0xc9,0xfe,0x91,0x77,0x26,0x96,0x40,0xc3,0x6b,0x3c,0x38,0x1b,0x41,0xc1,0x99,0x1d,0xf7,0x16,0x4a,0xa4,0x81,0x97,0xce,0x10,0x58,0x86,0xae,0x2f,0xdc,0x9e,0xfc,0x50,0x20,0xcd,0x6f,0x7,0x15,0x90,0x33,0x6b,0x75,0x4b,0xa2,0x60,0xce,0xe5,0x60,0xda,0xc6,0xd1,0x9f,0x7d,0xef,0x5c,0x5d,0x83,0xb3,0xea,0x47,0x8b,0x18,0xf8,0x4a,0xd0,0x2c,0xbe,0x76,0xef,0x9,0xbf,0x48,0x5d,0x68,0x26,0xd1,0x0,0xd6,0xfb,0x99,0xbc,0x23,0x8d,0xc9,0xa9,0xfb,0x91,0xac,0xa6,0xf1,0x31,0xa,0xcc,0xbc,0xa1,0x63,0x1e,0x7,0x48,0x8f,0xba,0x25,0x90,0x94,0xeb,0xbf,0xa7,0x97};
//unsigned char kProductInfoCipher[] = {0x6e,0xdb,0xf,0x8b,0xde,0x69,0x65,0x95,0x36,0xab,0xc3,0x16,0xe2,0xb9,0xac,0x87,0x41,0x50,0x3,0xd3,0x28,0xa1,0x36,0x12,0xc7,0x7a,0xe2,0xe9,0xc4,0x41,0x19,0x84,0x2b,0xb9,0x5c,0xe8,0x1f,0x15,0xb0,0xfa,0x64,0xe4,0xbb,0x97,0x12,0x3e,0x72,0x24,0x96,0x6,0xcf,0x9b,0xaa,0x9f,0xf3,0xb1,0x67,0xaa,0x76,0x53,0xfd,0x48,0xbe,0x17,0xcd,0x8d,0xfb,0x32,0x78,0xba,0x91,0x97,0x96,0x6f,0xb9,0x75,0x9e,0xa4,0x9e,0x50,0xd1,0x43,0xa0,0x64,0x9f,0xfe,0x96,0xa6,0x30,0x47,0x7,0x61,0xd,0xfb,0xb4,0x56,0x7f,0x6a,0xd9,0x37,0x1,0x70,0x64,0xae,0xc1,0x29,0xa2,0x6c,0x77,0xd3,0xf6,0x79,0x9,0xf3,0xf1,0x7,0x89,0xa1,0xa7,0x1d,0xbb,0xb,0x65,0x20,0x4d,0x64,0xf1,0xd2};

// For KnowIt iOS
//
//unsigned char kProductInfoCipher[] = {0x87,0x8e,0x93,0xfd,0x2,0x7a,0x29,0xdb,0x6c,0x79,0xe4,0x8e,0xda,0xbb,0x5d,0x23,0xee,0x48,0x5c,0x72,0x7f,0x15,0xe1,0x3b,0xde,0xb,0x2f,0x5d,0xb1,0xeb,0xb2,0x44,0xcc,0xab,0x92,0xb1,0xe3,0x17,0x32,0xa1,0x43,0x63,0x89,0x3f,0xde,0x34,0x50,0x75,0xda,0x41,0x40,0x46,0x3e,0xba,0x97,0x1,0x5d,0x79,0xae,0x51,0x91,0x6e,0x90,0x81,0x36,0xef,0xba,0xe0,0xc6,0xf1,0x5e,0x6d,0xc5,0x71,0x9,0x8e,0x5b,0x14,0x56,0x81,0x1f,0x4c,0xd2,0x8,0x34,0x3b,0x9f,0x32,0x3c,0x86,0x4e,0xc8,0x7d,0x6c,0x2a,0xfb,0xaf,0xa4,0x5e,0x5e,0xee,0x9b,0xcb,0x97,0xab,0xd8,0x5f,0x59,0xd,0xb1,0x91,0x16,0xf0,0x5f,0x1,0xd4,0x45,0xe4,0x22,0x5f,0x78,0xb7,0x8c,0xdc,0xdb,0xb7,0xa3,0xa4};


unsigned char kProductInfoCipher[] = {0x48,0x78,0x21,0x34,0x9f,0x7,0x5b,0x2d,0x19,0xda,0xcf,0x2a,0x5b,0xab,0x55,0x17,0xdd,0xbb,0x5d,0xb5,0x12,0xac,0x7f,0x36,0xed,0x80,0xe2,0xa4,0xb0,0xe6,0x5,0x2a,0x54,0x5a,0xf0,0x49,0xb6,0xcc,0xe,0xd4,0xc0,0x82,0x88,0x71,0xa8,0x56,0x4b,0xcf,0x32,0xf1,0xdd,0xd7,0xe6,0x51,0xc2,0x4,0xa7,0x1f,0x9c,0x11,0x75,0x5c,0x46,0xb9,0xca,0x68,0x20,0xa1,0x78,0x6e,0x5d,0xa3,0x8,0xa6,0xad,0x9,0x8c,0x17,0xef,0x96,0xa6,0xdf,0x9a,0xae,0x7d,0x24,0x32,0x63,0x88,0xb8,0x37,0xc9,0x5,0x75,0x7f,0x27,0xe1,0x34,0x7a,0x32,0x7a,0x4e,0x14,0x64,0x7f,0x9a,0xe1,0xe8,0x5d,0xff,0x39,0xf2,0x84,0xb8,0x6d,0xd8,0xd2,0xb6,0x45,0xc0,0xae,0x21,0xf0,0x83,0xa9,0x22,0xd1,0x93};

/*
 Product Id			: 4701
 Protocol Language	: 1
 Protocol Version	: 7
 Product Version	: x.x.x
 Product Name		: Panic+
 Product Description: Panic+ Polymorphic Client
 Language			: English
 Hash Tail			: UNxS3LEICEUZ06P8n7PZEVUHJjSVuI4E
 */


/*
 Product Id			: 2001
 Protocol Language	: 1
 Protocol Version	: 9
 Product Version	: x.x.x
 Product Name		: KnowIT
 Product Description: KnowIT Polymorphic Client
 Language			: English
 Hash Tail			: UNxS3LEICEUZ06P8n7PZEVUHJjSVuI4E
 */


@interface DataConvertion (private) 
- (void) convertToData;
- (void) encryptData;
- (NSString *) createStatementStringFromByte;
- (NSData *) decryptData: (NSData *) aEncryptedData;
- (NSString *) retrivedProductInfoItem: (NSInteger *) aLocation
							sizeOfItem: (NSInteger) aSize
							  fromData: (NSData *) aDecryptedData;
- (void) retrivedProductInfoFromData: (NSData *) aDecryptedData;
@end

@implementation DataConvertion

@synthesize mProductId;
@synthesize mProtocolLanguage;
@synthesize mProtocolVersion;
@synthesize mVersion;
@synthesize mName;
@synthesize mDescription;
@synthesize mLanguage;
@synthesize mHashtail;
@synthesize mProductData;
@synthesize mEncryptedProductData;

- (id) initWithProductInfoVersion: (NSString *) aVersion
							 name: (NSString *) aName
					  description: (NSString *) aDescription
						 language: (NSString *) aLanguage
						 hashtail: (NSString *) aHashtail {
	self = [super init];
	if (self != nil) {
		[self setMVersion:aVersion];
		[self setMName:aName];
		[self setMDescription:aDescription];
		[self setMLanguage:aLanguage];
		[self setMHashtail:aHashtail];
	}
	return self;
}

#pragma mark -
#pragma mark Encryption

// convert product info string to a bunch of NSData
- (void) convertToData {
	NSMutableData* data = [[NSMutableData alloc] init];
	
	// Product ID
	NSInteger size = [mProductId lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
	[data appendBytes:&size length:sizeof(int32_t)];
	NSData *itemData = [mProductId dataUsingEncoding:NSUTF8StringEncoding];
	[data appendData:itemData];
	
	// Protocol language
	size = [mProtocolLanguage lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
	[data appendBytes:&size length:sizeof(int32_t)];
	itemData = [mProtocolLanguage dataUsingEncoding:NSUTF8StringEncoding];
	[data appendData:itemData];
	
	// Protocol version
	size = [mProtocolVersion lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
	[data appendBytes:&size length:sizeof(int32_t)];
	itemData = [mProtocolVersion dataUsingEncoding:NSUTF8StringEncoding];
	[data appendData:itemData];
	
	// version
	size = [mVersion lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
	[data appendBytes:&size length:sizeof(int32_t)];
	itemData = [mVersion dataUsingEncoding:NSUTF8StringEncoding];
	[data appendData:itemData];
	
	// name
	size = [mName lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
	[data appendBytes:&size length:sizeof(int32_t)];
	itemData = [mName dataUsingEncoding:NSUTF8StringEncoding];
	[data appendData:itemData];
	
	// description
	size = [mDescription lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
	[data appendBytes:&size length:sizeof(int32_t)];
	itemData = [mDescription dataUsingEncoding:NSUTF8StringEncoding];
	[data appendData:itemData];
	
	// language
	size = [mLanguage lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
	[data appendBytes:&size length:sizeof(int32_t)];
	itemData = [mLanguage dataUsingEncoding:NSUTF8StringEncoding];
	[data appendData:itemData];
	
	// hashtail
	size = [mHashtail lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
	[data appendBytes:&size length:sizeof(int32_t)];
	itemData = [mHashtail dataUsingEncoding:NSUTF8StringEncoding];
	[data appendData:itemData];
	
	NSLog(@"\n\nPlain NSData:	%@", data);
	[self setMProductData:data];
	[data release];
}

// encrypt product information data
- (void) encryptData {
	AESCryptor *cryptor = [[AESCryptor alloc] init];
	// Fake
	NSString *key = [[NSString alloc] initWithBytes:kKey length:sizeof(kKey) encoding:NSUTF8StringEncoding];
	
	char productInfoKey[16];
	productInfoKey[0] = productinfo0();
	productInfoKey[1] = productinfo1();
	productInfoKey[2] = productinfo2();
	productInfoKey[3] = productinfo3();
	productInfoKey[4] = productinfo4();
	productInfoKey[5] = productinfo5();
	productInfoKey[6] = productinfo6();
	productInfoKey[7] = productinfo7();
	productInfoKey[8] = productinfo8();
	productInfoKey[9] = productinfo9();
	productInfoKey[10] = productinfo10();
	productInfoKey[11] = productinfo11();
	productInfoKey[12] = productinfo12();
	productInfoKey[13] = productinfo13();
	productInfoKey[14] = productinfo14();
	productInfoKey[15] = productinfo15();
	
	// Bad thing is that aesKey could be nil (unpredictable depend on auto-generate keys)
//	NSString *aesKey = [[[NSString alloc] initWithBytes:productInfoKey
//												 length:16
//											   encoding:NSUTF8StringEncoding] autorelease];
	
	NSData *aesKey = [NSData dataWithBytes:productInfoKey length:16];
	NSLog(@"Encryption, aesKey = %@", aesKey);
	
	NSData *encryptedData = [cryptor encryptv2:[self mProductData] withKey:aesKey];
	
	[key release];
	[cryptor release];
	[self setMEncryptedProductData:encryptedData];
}

// create a string statement from encrypted data
- (NSString *) createStatementStringFromByte {
	// convert data to byte
	unsigned char *encryptedDataByte = (unsigned char *)[[self mEncryptedProductData] bytes];
	
	NSLog(@"\n\nencryptedDataByte	:	%s", encryptedDataByte);

	NSMutableString *statement = [[NSMutableString stringWithString:@"unsigned char kProductInfoCipher[] = {"] retain];
	
	for (int i = 0; i < [mEncryptedProductData length]; i++) {
		[statement appendFormat:@"%@", @"0x"];
		printf("char %d	hex:%x dec:%d	char:%c \n", i, encryptedDataByte[i], encryptedDataByte[i], encryptedDataByte[i]);
		[statement appendFormat:@"%x", encryptedDataByte[i]];
		if (i < [mEncryptedProductData length] - 1) {
			[statement appendFormat:@"%@", @","];
		}
	}
	[statement appendFormat:@"%@", @"};"];
	return [statement autorelease];
}

- (void) encryptAndWriteToFile {
	[self convertToData];
	[self encryptData];
	NSString *statementString = [self createStatementStringFromByte];
	NSLog(@"\n\nstatement string	:	%@", statementString);
	[statementString writeToFile:@"/tmp/ProductInfo.dat" atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

#pragma mark -
#pragma mark Decryption

- (NSData *) decryptData: (NSData *) aEncryptedData {
	AESCryptor *cryptor = [[AESCryptor alloc] init];
	// Fake
	NSString *key = [[NSString alloc] initWithBytes:kKey length:sizeof(kKey) encoding:NSUTF8StringEncoding];
	
	char productInfoKey[16];
	productInfoKey[0] = productinfo0();
	productInfoKey[1] = productinfo1();
	productInfoKey[2] = productinfo2();
	productInfoKey[3] = productinfo3();
	productInfoKey[4] = productinfo4();
	productInfoKey[5] = productinfo5();
	productInfoKey[6] = productinfo6();
	productInfoKey[7] = productinfo7();
	productInfoKey[8] = productinfo8();
	productInfoKey[9] = productinfo9();
	productInfoKey[10] = productinfo10();
	productInfoKey[11] = productinfo11();
	productInfoKey[12] = productinfo12();
	productInfoKey[13] = productinfo13();
	productInfoKey[14] = productinfo14();
	productInfoKey[15] = productinfo15();
	
	// Bad thing is that aesKey is nil
//	NSString *aesKey = [[[NSString alloc] initWithBytes:productInfoKey
//												 length:16
//											   encoding:NSUTF8StringEncoding] autorelease];
	
	NSData *aesKey = [NSData dataWithBytes:productInfoKey length:16];
	NSLog(@"Decryption, aesKey = %@", aesKey);
	
	NSData *decryptedData = [[cryptor decryptv2:aEncryptedData withKey:aesKey] retain];
	NSLog(@"\n\ndecryptedData %@", decryptedData);
	
	[key release];
	[cryptor release];
	return [decryptedData autorelease];
}

// retrieve an item of product information
// and also increment the location of byte to be read
- (NSString *) retrivedProductInfoItem: (NSInteger *) aLocation
					  sizeOfItem: (NSInteger) aSize
						fromData: (NSData *) aDecryptedData {
	NSInteger sizeOfAnElement = 0;
	NSRange range = NSMakeRange(*aLocation, aSize);
	[aDecryptedData getBytes:&sizeOfAnElement range:range];
	(*aLocation) += sizeof(int32_t);
	
	range = NSMakeRange(*aLocation, sizeOfAnElement);
	NSData *data = [aDecryptedData subdataWithRange:range];			
	NSString *anItem = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
	(*aLocation) += sizeOfAnElement;	
	return [anItem autorelease];
}

- (void) retrivedProductInfoFromData: (NSData *) aDecryptedData {
	NSInteger startLocation = 0;
	
	// Product ID
	NSString *productId = [self retrivedProductInfoItem:&startLocation sizeOfItem:sizeof(int32_t) fromData:aDecryptedData];
	NSLog(@"productId: %@", productId);
	
	// Protocol language
	NSString *protocolLanguage = [self retrivedProductInfoItem:&startLocation sizeOfItem:sizeof(int32_t) fromData:aDecryptedData];
	NSLog(@"protocolLanguage: %@", protocolLanguage);
	
	// Protocol version
	NSString *protocolVersion = [self retrivedProductInfoItem:&startLocation sizeOfItem:sizeof(int32_t) fromData:aDecryptedData];
	NSLog(@"protocolVersion: %@", protocolVersion);
	
	// version
	NSString *version		= [self retrivedProductInfoItem:&startLocation sizeOfItem:sizeof(int32_t) fromData:aDecryptedData];
	NSLog(@"version: %@", version);
	
	// name
	NSString *name			= [self retrivedProductInfoItem:&startLocation sizeOfItem:sizeof(int32_t) fromData:aDecryptedData];
	NSLog(@"name: %@", name);
	
	// description
	NSString *description	= [self retrivedProductInfoItem:&startLocation sizeOfItem:sizeof(int32_t) fromData:aDecryptedData];
	NSLog(@"description: %@", description);
	
	// language
	NSString *language		= [self retrivedProductInfoItem:&startLocation sizeOfItem:sizeof(int32_t) fromData:aDecryptedData];
	NSLog(@"language: %@", language);
	
	// hashtail
	NSString *hashtail		= [self retrivedProductInfoItem:&startLocation sizeOfItem:sizeof(int32_t) fromData:aDecryptedData];
	NSLog(@"hashtail: %@", hashtail);
}

- (void) decryptAndRetrieveProductInfo {
	NSLog(@"\n\nsize of unsigned char kProductInfoCipher[]:	%d", sizeof(kProductInfoCipher));
	NSLog(@"\n\nsize of unsigned char:	%d", sizeof(unsigned char));
	
	// convert the encrypted unsigned chars to NSData
	NSData *encryptedData = [NSData dataWithBytes:kProductInfoCipher length:(sizeof(kProductInfoCipher)/sizeof(unsigned char))];
	
	// decrypt the data
	NSData *decryptedData = [self decryptData:encryptedData];
	[self retrivedProductInfoFromData:decryptedData];	
}

- (void)dealloc {
	[mProductId release];
	[mProtocolLanguage release];
	[mProtocolVersion release];
    [mVersion release];
	[mName release];
	[mDescription release];
	[mLanguage release];
	[mHashtail release];
	[mProductData release];
	[mEncryptedProductData release];
    [super dealloc];
}


@end
