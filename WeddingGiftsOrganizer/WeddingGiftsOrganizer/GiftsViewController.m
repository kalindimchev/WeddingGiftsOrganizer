#import "GiftsViewController.h"
#import "AppDelegate.h"
#import "GiftModel.h"
#import "GiftCell.h"
#import "DetailViewController.h"
#import <Firebase/Firebase.h>


@interface GiftsViewController ()

@property (strong, nonatomic) NSArray *tempData;

@end

@implementation GiftsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    self.title = @"GIFTS";
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    self.giftsData = [delegate.data gifts];

    [self.giftsTableView setAllowsSelection:YES];
        
    self.giftsTableView.dataSource = self;
    self.giftsTableView.delegate = self;
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    self.giftsData = [delegate.data gifts];
    [self.giftsTableView reloadData];

}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    GiftCell *cell = [tableView dequeueReusableCellWithIdentifier:@"giftCell"];
    
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"GiftCell" owner:self options:nil] objectAtIndex:0];
    }

    GiftModel *currentGift = [self.giftsData objectAtIndex:indexPath.row];
    
    UIImage *img = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:currentGift.imageUrl]]];

    cell.modelLabel.text = currentGift.model;

    if (currentGift.remainingPrice > 0) {
        cell.stateLabel.text = [NSString stringWithFormat:@"Remaining: %.0flv", currentGift.remainingPrice];
        cell.stateLabel.textColor = [UIColor redColor];
    }
    else {
        cell.stateLabel.text = [NSString stringWithFormat:@"Full Paid!", currentGift.remainingPrice];
        //cell.stateLabel.textColor = [UIColor colorWithRed:50 green:135 blue:50 alpha:1];
        cell.stateLabel.textColor = [UIColor blueColor];

    }
    
    cell.giftImageView.image = img;

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *storyBoardId = @"detailGiftScene";
    
    GiftModel *gift = [self.giftsData objectAtIndex:indexPath.row];
    
    DetailViewController *datailGiftVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    datailGiftVC.gift = gift;
    
    [self.navigationController pushViewController:datailGiftVC animated:YES];
}

-(NSInteger *)tableView: (UITableView*)taleView numberOfRowsInSection:(NSInteger)section {
    
    return self.giftsData.count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)tapAddBtn:(id)sender {
    NSString *storyBoardId = @"addGiftScene";
    
    DetailViewController *addGiftVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    
    [self.navigationController pushViewController:addGiftVC animated:YES];
}
@end
