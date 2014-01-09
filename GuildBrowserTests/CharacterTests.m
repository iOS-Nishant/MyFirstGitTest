//
//  CharacterTests.m
//  GuildBrowser
//
//  Created by Nishant Thite on 03/01/14.
//  Copyright (c) 2014 Charlie Fulton. All rights reserved.
//

#import "CharacterTests.h"
#import "WoWUtils.h"

@implementation CharacterTests{
    NSDictionary *_characterDetailJson;
}

-(void)setUp
{
    NSURL *dataServiceURL = [[NSBundle bundleForClass:self.class] URLForResource:@"character" withExtension:@"json"];
    NSData *sampleData = [NSData dataWithContentsOfURL:dataServiceURL];
    
    NSError *error;
    id json = [NSJSONSerialization JSONObjectWithData:sampleData options:kNilOptions error:&error];
    STAssertNotNil(json, @"Invalid test data");
    _characterDetailJson = json;
}

-(void)tearDown
{
    _characterDetailJson = nil;
    [super tearDown];
}

- (void)testCreateCharacterFromDetailJson
{
    // 2
  
    STAssertNotNil(_characterDetailJson, @"Could not create character from detail json");
    
    // 3
   // id *testGuy2 = [[Character alloc] initWithCharacterDetailData:nil];
  //  STAssertNotNil(testGuy2, @"Could not create character from nil data");
}

@end
