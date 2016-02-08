#import "WeddingsViewController.h"
#import "AppDelegate.h"
#import "WeddingCell.h"
#import "GiftsViewController.h"
#import "CreateWeddingListViewController.h"
#import <Firebase/Firebase.h>



@implementation WeddingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"WEDDINGS";
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    self.weddingsData = [delegate.data weddings];
    
    [self.weddingsTableView setAllowsSelection:YES];
    
    self.weddingsTableView.dataSource = self;
    self.weddingsTableView.delegate = self;
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    self.weddingsData = [delegate.data weddings];
    [self.weddingsTableView reloadData];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    WeddingCell *cell = [tableView dequeueReusableCellWithIdentifier:@"weddingCell"];
    
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"WeddingCell" owner:self options:nil] objectAtIndex:0];
    }
    
    WeddingListModel *currentWedding = [self.weddingsData objectAtIndex:indexPath.row];
    
//    cell.nameLabel.text = currentWedding.name;
    cell.nameLabel.text = currentWedding.name;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *storyBoardId = @"giftsTableViewScene";
    
    WeddingListModel *wedding = [self.weddingsData objectAtIndex:indexPath.row];
    
    GiftsViewController *giftsVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    giftsVC.wedding = wedding;
    
    [self.navigationController pushViewController:giftsVC animated:YES];
}

-(NSInteger *)tableView: (UITableView*)taleView numberOfRowsInSection:(NSInteger)section {
    
    return self.weddingsData.count;
}

- (IBAction)tapCreateButton:(id)sender {

    NSString *storyBoardId = @"createWeddingScene";
    
    CreateWeddingListViewController *createWeddingListVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];

    
    [self.navigationController pushViewController:createWeddingListVC animated:YES];

}
@end
