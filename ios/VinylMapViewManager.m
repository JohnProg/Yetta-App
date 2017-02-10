//
//  VinylMapViewManager.m
//  pingstersApp
//
//  Created by Youngchan Je on 2/5/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "VinylMapViewManager.h"
#import "VinylMapView.h"


@implementation VinylMapManager {
  VinylMapView *_vinylMap;
}

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(moveMap:(NSString *)latitude: (NSString *)longitude)
{
  if (_vinylMap) {
    dispatch_async(dispatch_get_main_queue(), ^{
      [_vinylMap moveMap:latitude longitude:longitude];
    });
  }
}

RCT_EXPORT_METHOD(animateToLocation:(NSString *)latitude: (NSString *)longitude)
{
  if (_vinylMap) {
    dispatch_async(dispatch_get_main_queue(), ^{
      [_vinylMap animateToLocation:latitude longitude:longitude];
    });
  }
}

RCT_EXPORT_METHOD(moveMarker:(NSString *)latitude: (NSString *)longitude)
{
  if (_vinylMap) {
    dispatch_async(dispatch_get_main_queue(), ^{
      [_vinylMap moveMarker:latitude longitude:longitude];
    });
  }
}

RCT_EXPORT_METHOD(updateMarker:(NSString *)latitude: (NSString *)longitude)
{
  if (_vinylMap) {
    dispatch_async(dispatch_get_main_queue(), ^{
      [_vinylMap updateMarker:latitude longitude:longitude];
    });
  }
}


- (UIView *)view
{
  VinylMapView *map = [VinylMapView new];
  _vinylMap = map;
  return map;
}

@end
