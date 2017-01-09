//
//  NKDownloadProgress.h
//  Narongsak kongpan
//
//  Created by Narongsak kongpan on 3/31/2557 BE.
//  Copyright (c) 2557 Narongsak kongpan All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    kNKDownloadStart,
    kNKDownloadProgress,
    kNKDownloadFinish,
    kNKDownloadFail,
    kNKCreateTemporaryFail,
    kNKDownloadCancel
} kNKDownloadState;

@interface NKDownloadProgress : NSObject
{
    
}

@property (nonatomic) NSInteger tagID;
@property (nonatomic) NSUInteger downloadedBytes;
@property (nonatomic) NSUInteger contentLengthBytes;
@property (nonatomic) float percentFromDownload;
@property (nonatomic) kNKDownloadState status;
//@property (nonatomic, retain) NSDictionary *info;

+(instancetype)currentTagID:(NSInteger)tagID downloadedBytes:(NSUInteger)byteCount ContentLength:(NSUInteger)fromByte;

@end
