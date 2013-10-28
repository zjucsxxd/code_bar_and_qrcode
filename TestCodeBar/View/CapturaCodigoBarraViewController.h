//
//  CapturaCodigoBarraViewController.h
//  Catalogo
//
//  Created by Rogerio Silva on 23/08/12.
//  Copyright (c) 2012 Intermidia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"
#import "ZBarCameraSimulator.h"

@class CapturaCodigoBarraViewController;

@protocol CapturaCodigoBarraViewControllerDelegate <NSObject>

@required

-(void)capturaCodigoBarraViewController:(CapturaCodigoBarraViewController *)capturaCodigoBarraViewController exibeItens:(NSString *)idItem;

@end

@interface CapturaCodigoBarraViewController : UIViewController < ZBarReaderViewDelegate, ZBarReaderDelegate >
{
    IBOutlet ZBarReaderView * readerView;
    ZBarCameraSimulator * cameraSim;
}

@property (nonatomic, assign) id <CapturaCodigoBarraViewControllerDelegate> delegate;

-(IBAction)fechar;
@end
