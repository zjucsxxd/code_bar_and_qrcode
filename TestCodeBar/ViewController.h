//
//  ViewController.h
//  TestCodeBar
//
//  Created by Márcio Habigzang Brufatto on 23/10/13.
//  Copyright (c) 2013 Márcio Habigzang Brufatto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CapturaCodigoBarraViewController.h"

@interface ViewController : UIViewController<CapturaCodigoBarraViewControllerDelegate>
{
    CapturaCodigoBarraViewController * capturaViewController;
}
@property(nonatomic, retain) IBOutlet UITextField * txtCodeBar;
-(IBAction)searchIdItem:(id)sender;
@end
