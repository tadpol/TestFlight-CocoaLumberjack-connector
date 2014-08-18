//
//  TADTestFlightLogger.m
//
//  Created by Michael Conrad Tadpol Tilstra.
//  Copyright (c) 2014 Michael Conrad Tadpol Tilstra. All rights reserved.
//

#import "TADTestFlightLogger.h"
#import <TestFlight.h>

@implementation TADTestFlightLogger {
    NSDateFormatter *_dateFmt;
}
- (NSDateFormatter*)dateFmt {
    if (_dateFmt == nil) {
        _dateFmt = [NSDateFormatter new];
        [_dateFmt setFormatterBehavior:NSDateFormatterBehavior10_4];
        [_dateFmt setDateFormat:@"yyyy/MM/dd HH:mm:ss:SSS"];
    }
    return _dateFmt;
}
- (void)logMessage:(DDLogMessage *)logMessage {
    if (formatter) {
        // formatting is supported but not encouraged!
        TFLogPreFormatted([formatter formatLogMessage:logMessage]);
    } else {
        NSString *msg = [NSString stringWithFormat:@"%@ [%@] %@-%u <%@> (%@:%u) %@",
                         [[self dateFmt] stringFromDate:(logMessage->timestamp)],
                         [logMessage threadID],
                         [logMessage->tag description],
                         logMessage->logFlag,
                         [logMessage methodName],
                         [logMessage fileName],
                         logMessage->lineNumber,
                         logMessage->logMsg];
        TFLogPreFormatted(msg);
    }
}
@end

/* vim: set ai cin et sw=4 ts=4 ft=objc : */
