//
//  Notificator.m
//  Corre por tu vida
//
//  Created by vstricker on 06/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "Notificator.h"

@implementation Notificator

- (void)configureSoundNotifications
{
#warning incomplete: take a look to comments:
    self.musicPlayerController = [MPMusicPlayerController iPodMusicPlayer];
    //TODO: configure the query to get only the 3 sounds
    MPMediaQuery *query = [MPMediaQuery songsQuery];
    //items in queue most be sorted by name so to mock this is important to give names:
    //lowSpeed = 0
    //HIghSpeed = 1
    //okSpeed = 2
    [self.musicPlayerController setQueueWithQuery:query];
}

- (void)playLowSpeedSound
{
    [self.musicPlayerController skipToBeginning];
    [self.musicPlayerController play];
}

- (void)playHighSpeedSound
{
    [self.musicPlayerController skipToBeginning];
    [self.musicPlayerController skipToNextItem];
    [self.musicPlayerController play];
}

- (void)playOkSpeedSound
{
    [self.musicPlayerController skipToBeginning];
    [self.musicPlayerController skipToNextItem];
    [self.musicPlayerController play];
}

@end
