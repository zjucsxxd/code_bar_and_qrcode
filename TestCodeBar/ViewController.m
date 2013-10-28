//
//  ViewController.m
//  TestCodeBar
//
//  Created by Márcio Habigzang Brufatto on 23/10/13.
//  Copyright (c) 2013 Márcio Habigzang Brufatto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(IBAction)searchIdItem:(id)sender
{
    capturaViewController = [[CapturaCodigoBarraViewController alloc] init];
    [capturaViewController.view setFrame:CGRectMake(0, 100, 320, 200)];
    [capturaViewController setDelegate:self];
    
    [self.view addSubview:capturaViewController.view];
}

- (void)capturaCodigoBarraViewController:(CapturaCodigoBarraViewController *)capturaCodigoBarraViewController exibeItens:(NSString *)idItem
{
    [capturaCodigoBarraViewController.view removeFromSuperview];
    [self realizaPesquisa:idItem];
}

- (void) realizaPesquisa:(NSString *)textoPesquisa
{
    self.txtCodeBar.text = textoPesquisa;
    NSLog(@"Ocorreu uma pesquisa pelo idItem == %@", textoPesquisa);
}
@end
