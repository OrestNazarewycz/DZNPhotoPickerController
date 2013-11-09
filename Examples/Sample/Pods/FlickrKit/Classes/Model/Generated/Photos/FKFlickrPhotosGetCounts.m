//
//  FKFlickrPhotosGetCounts.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosGetCounts.h" 

@implementation FKFlickrPhotosGetCounts

- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 0;
}

- (NSString *) name {
    return @"flickr.photos.getCounts";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.dates) {
		[args setValue:self.dates forKey:@"dates"];
	}
	if(self.taken_dates) {
		[args setValue:self.taken_dates forKey:@"taken_dates"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosGetCountsError_NoDatesSpecified:
			return @"No dates specified";
		case FKFlickrPhotosGetCountsError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosGetCountsError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosGetCountsError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosGetCountsError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosGetCountsError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosGetCountsError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosGetCountsError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosGetCountsError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosGetCountsError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosGetCountsError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosGetCountsError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end