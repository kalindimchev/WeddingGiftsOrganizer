#import "GiftsTableTableViewController.h"
#import "AppDelegate.h"
#import "GiftModel.h"
#import "GiftCell.h"
#import "DetailViewController.h"

@interface GiftsTableTableViewController ()

@end

@implementation GiftsTableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"home screen loaded");

    self.title = @"GIFTS TABLEVIEW";
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    self.giftsData = [delegate.data gifts];
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //GiftModel *currentGift = [self.giftsData objectAtIndex:indexPath.row];
    
    //GiftCell *cell = [tableView dequeueReusableCellWithIdentifier:@"giftCell"];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"giftCell"];
    
    if (cell == nil) {
        //cell = [[[NSBundle mainBundle] loadNibNamed:@"GiftCell" owner:self options:nil] objectAtIndex:0];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"giftCell"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ => %f", [[self.giftsData objectAtIndex:indexPath.row] model], [[self.giftsData objectAtIndex:indexPath.row] price]];
    
    //    UIImage *img = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:currentGift.imageUrl]]];
    //
    //    cell.modelLabel = [NSString stringWithFormat:@"%@", [self.giftsData[indexPath.row] model]];
    //    cell.stateLabel = [NSString stringWithFormat:@"%f", [self.giftsData[indexPath.row] price]];
    //    cell.giftImageView.image = img;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"highlighted");
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"Item selected");
    
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
    // Dispose of any resources that can be recreated.
}



@end
