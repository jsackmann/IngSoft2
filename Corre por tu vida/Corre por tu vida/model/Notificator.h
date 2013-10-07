//
//  Notificator.h
//  Corre por tu vida
//
//  Created by vstricker on 06/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface Notificator : NSObject

@property (strong, nonatomic) MPMusicPlayerController *musicPlayerController;

- (void)configureSoundNotifications;
- (void)playLowSpeedSound;
- (void)playHighSpeedSound;
- (void)playOkSpeedSound;

@end
