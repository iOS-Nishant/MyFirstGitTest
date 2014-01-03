//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by Nishant Thite on 03/01/14.
//  Copyright (c) 2014 Charlie Fulton. All rights reserved.
//

#import "WowUtilsTests.h"
#import "WoWUtils.h"

@implementation WowUtilsTests

-(void)testCharacterClassNameLookup
{
    STAssertEqualObjects(@"Warrior", [WoWUtils classFromCharacterType:1], @"ClassType should be Warrior");
    STAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]], nil);
}

- (void)testRaceTypeLookup
{
    STAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], nil);
    STAssertFalse([@"NightElf" isEqualToString:[WoWUtils raceFromRaceType:45]], nil);
}

- (void)testQualityLookup
{
    NSLog(@"\n\n\n**%@**\n\n\n", [WoWUtils qualityFromQualityType:1099]);
    
   // STAssertEquals(@"Grey", [WoWUtils qualityFromQualityType:1], nil);
   //  STAssertFalse([@"Grey" isEqualToString:[WoWUtils qualityFromQualityType:1]],nil);
    
    STAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:1099]],nil);
   
}

@end
