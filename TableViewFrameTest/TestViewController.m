//
//  TextViewController.m
//  TableViewFrameTest
//
//  Created by ilja on 31.10.13.
//  Copyright (c) 2013 iwascoding GmbH. All rights reserved.
//

#import "TestViewController.h"
#import "TestTableViewController.h"

@interface TestViewController ()

@property (strong) IBOutlet TestTableViewController *testTableViewController;
@property (assign) BOOL		isCollapsed;

@end

@implementation TestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	
	self.view.autoresizesSubviews = NO;
	
	[self.view addSubview:self.testTableViewController.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)animateTableViewSize:(id)sender
{
	[UIView animateWithDuration:0.3 animations:^{
		self.testTableViewController.view.frame = self.isCollapsed ? CGRectMake(0, 0, 300, 400) :  CGRectMake(0, 0, 150, 400);
		
	}];
	self.isCollapsed = !self.isCollapsed;
}

@end
