//
//  ViewController.m
//  TestTestTest
//
//  Created by Ethan Neff on 9/15/14.
//  Copyright (c) 2014 ethanneff. All rights reserved.
//

#import "ViewController.h"

@interface ViewController() <UITableViewDelegate>

@property (nonatomic) UITableView *tableView;
@property (nonatomic) UIView *viewSearch;
@property (nonatomic) UITextField *txtSearch;

@end

@implementation ViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    // view
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    // tableview
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 300)];
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    
    // search view
    self.viewSearch = [[UIView alloc]initWithFrame:CGRectMake(0, -50, self.view.frame.size.width, 50)];
    [self.viewSearch setBackgroundColor:[UIColor lightGrayColor]];
    [self.tableView addSubview:self.viewSearch];
    
    // search textfield
    self.txtSearch = [[UITextField alloc] initWithFrame:CGRectMake(20, 10, self.view.frame.size.width-40, 30)];
    [self.txtSearch setBackgroundColor:[UIColor whiteColor]];
    [self.txtSearch setPlaceholder:@"Search..."];
    [self.viewSearch addSubview:self.txtSearch];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    if (decelerate) {
        [self.txtSearch resignFirstResponder];
    }
    
    if(scrollView.contentOffset.y < 0)
    {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.2];
        
        self.tableView.contentInset = UIEdgeInsetsMake(50, 0, 0, 0);
        [self.txtSearch becomeFirstResponder];
        
        [UIView commitAnimations];
    } else {
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.2];
        
        self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
        [self.txtSearch setText:@""];
        
        [UIView commitAnimations];
    }
}
@end

