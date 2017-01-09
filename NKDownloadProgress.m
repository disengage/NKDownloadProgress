//
//  NKDownloadProgress.m
//  Narongsak kongpan
//
//  Created by Narongsak kongpan on 3/31/2557 BE.
//  Copyright (c) 2557 Narongsak kongpan All rights reserved.
//

#import "NKDownloadProgress.h"

@implementation NKDownloadProgress

@synthesize downloadedBytes = _downloadedBytes;
@synthesize contentLengthBytes = _contentLengthBytes;
@synthesize percentFromDownload = _percentFromDownload;
@synthesize tagID = _tagID;
//@synthesize info = _info;

-(id)initWithTagID:(NSInteger)tagID loadBytes:(NSUInteger)downloaded Length:(NSUInteger)contentLength{
    self = [super init];
    if (self) {
        // Custom initialization
        self.tagID = tagID;
        self.downloadedBytes = downloaded;
        self.contentLengthBytes = contentLength;
        if (contentLength == 0) {
            self.percentFromDownload = 0;
        }else{
            self.percentFromDownload = (float)(downloaded / contentLength);
        }
    }
    return self;
}

+(instancetype)currentTagID:(NSInteger)tagID downloadedBytes:(NSUInteger)byteCount ContentLength:(NSUInteger)fromByte{
    return [[NKDownloadProgress alloc] initWithTagID:tagID loadBytes:byteCount Length:fromByte];
}

@end
