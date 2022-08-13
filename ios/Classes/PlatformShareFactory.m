
#import "PlatformShareFactory.h"
#import "constants/PlatformConst.h"
#import "FacebookShare.h"
#import "TwitterShare.h"
#import "WhatsAppShare.h"
#import "LineShare.h"
#import "SystemShare.h"




@implementation PlatformShareFactory

+(void)registerPlatform:(NSDictionary<NSNumber*, NSDictionary*>*)platformInfos {
    [platformInfos enumerateKeysAndObjectsUsingBlock:^(NSNumber * _Nonnull key, NSDictionary * _Nonnull platformInfo, BOOL * _Nonnull stop) {
        int platform = [key intValue];
      
    }];
}

+(NSObject<PlatformShare>*)getPlatformShare:(int)platform {
    switch (platform) {
       
        
        case FACEBOOK: {
            return [[FacebookShare alloc] init];
        }
        case TWITTER: {
            return [[TwitterShare alloc] init];
        }
        case WHATS_APP: {
            return [[WhatsAppShare alloc] init];
        }
        case LINE: {
            return [[LineShare alloc] init];
        }
        case NATIVE: {
            return [SystemShare alloc];
        }
        default:
            return nil;
    }
}

@end
