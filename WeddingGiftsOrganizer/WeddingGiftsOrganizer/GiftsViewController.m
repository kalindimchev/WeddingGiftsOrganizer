#import "GiftsViewController.h"
#import "AppDelegate.h"
#import "GiftModel.h"
#import "GiftCell.h"
#import "DetailViewController.h"

@interface GiftsViewController ()

@property (strong, nonatomic) NSArray *tempData;

@end

@implementation GiftsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"home screen loaded");
    
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
    
    //GiftCell *cell = [tableView dequeueReusableCellWithIdentifier:@"giftCell"];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"giftCell"];
    
    if (cell == nil) {
        //cell = [[[NSBundle mainBundle] loadNibNamed:@"GiftCell" owner:self options:nil] objectAtIndex:0];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"giftCell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%@ => %.0f lv / %.0f lv", [[[self.giftsData objectAtIndex:indexPath.row]  model] substringWithRange:NSMakeRange(0, 10)], [[self.giftsData objectAtIndex:indexPath.row] price], [[self.giftsData objectAtIndex:indexPath.row] remainingPrice]];
    
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

- (IBAction)tapAddBtn:(id)sender {
}
@end
