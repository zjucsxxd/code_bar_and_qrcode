//
//  CapturaCodigoBarraViewController.m
//  Catalogo
//
//  Created by Rogerio Silva on 23/08/12.
//  Copyright (c) 2012 Intermidia. All rights reserved.
//

#import "CapturaCodigoBarraViewController.h"

@implementation CapturaCodigoBarraViewController

@synthesize delegate;

- (id)init
{
    self = [super initWithNibName:@"CapturaCodigoBarraViewController" bundle:nil];
    
    if (self)
    {
        [ZBarReaderView class];
    }
    
    return self;
}

- (void) cleanup
{
    cameraSim = nil;
    readerView.readerDelegate = nil;
    readerView = nil;
}

- (void) dealloc
{
    [self cleanup];
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    readerView.readerDelegate = self;
    
    if(TARGET_IPHONE_SIMULATOR) {
        cameraSim = [[ZBarCameraSimulator alloc] initWithViewController: self];
        cameraSim.readerView = readerView;
    }
}

- (void) viewDidUnload
{
    [self cleanup];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    [readerView willRotateToInterfaceOrientation:interfaceOrientation duration:20];
	return YES;
}

- (void) viewDidAppear: (BOOL) animated
{
    [readerView start];
}

- (void) viewWillDisappear: (BOOL) animated
{
    [readerView stop];
}

- (void)readerView:(ZBarReaderView*)view didReadSymbols:(ZBarSymbolSet*)syms fromImage:(UIImage*)img
{
    NSString * codigoBarraAPesquisar; 
    
    for(ZBarSymbol *sym in syms) 
    {
        codigoBarraAPesquisar = sym.data;
        break;
    }
    
    [delegate capturaCodigoBarraViewController:self exibeItens:codigoBarraAPesquisar];
}

-(IBAction)fechar
{
    [self.view removeFromSuperview];
}
@end