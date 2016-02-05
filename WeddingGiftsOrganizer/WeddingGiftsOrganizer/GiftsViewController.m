#import "GiftsViewController.h"
#import "GiftModel.h"

@interface GiftsViewController ()

@property (strong, nonatomic) NSArray *tempData;
@property (strong, nonatomic) NSArray *giftsData;

@end

@implementation GiftsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"GIFTS";
    
    self.tempData = [NSArray arrayWithObjects:@"safasdf", @"asdasf", @"afdasdf", nil];
    self.giftsData = [NSArray arrayWithObjects:
                      [GiftModel giftWithModel:@"Телевизор LG 43UF7787" giftDescription:@"43(109 СМ) 4K ULTRA HD ТЕЛЕВИЗОР" webSiteUrl:@"http://www.technomarket.bg/televizor/lg-43uf7787-09142365" phoneNumber:@"029209580" address:@"бул. Ал.Стамболийски 101, етаж -2" imageUrl:@"http://cdn.technomarket.bg/uploads/library/product/09142365/560b98009ae99.jpeg" andPrice:1300],
                      
                      [GiftModel giftWithModel:@"Кафемашина Philips Saeco HD8425/19" giftDescription:@"Мощност, W: 950" webSiteUrl:@"https://zora.bg/philips-saeco/hd842519/22966" phoneNumber:@"070018222" address:@"София, ул. Околовръстен път 106A /между Драгалевци и Симеоново/" imageUrl:@"https://zora.bg/image/t8/product_image_8556.jpg" andPrice:300],
                      
                      [GiftModel giftWithModel:@"Сет за уиски Retro Lux" giftDescription:@"Красив и забележителен уиски сет, състоящ се от бутилка и две чаши, изработени в шикозен ретро стил и декорирани с метални орнаменти. Сервизът е подходящ, както за оригинален подарък на близки и приятели с изтънчен вкус, така и за ежедневна употреба и уникална декорация в дома или офиса" webSiteUrl:@"http://www.supermall.bg/set-za-uiski-retro-lux" phoneNumber:@"0988888144" address:@"Варна 9000, бул. Сливница, № 169" imageUrl:@"http://www.supermall.bg/uploads/com_article/gallery/thumbs/500x500_6b1041cb4b62b8c4bcdaefcf4ebdad570c18a326.jpg" andPrice:200],
                      
                      [GiftModel giftWithModel:@"ЗЛАТНА ЕСЕН" giftDescription:@"Широчина: 33 см Височина: 41 см Категория: акрил/маслени бои Рамка:  не" webSiteUrl:@"http://dea-art.com/item2996_page17.html" phoneNumber:@"" address:@"гр. София, обл. София - град" imageUrl:@"http://dea-art.com/show_img.php?u=115&i=2996&s=big" andPrice:850],
                      
                      [GiftModel giftWithModel:@"Петместна палатка Nevada M" giftDescription:@"• Серия: Privilege; Вид на палатката: тунелна;; Външната част на палатката е изработена от Outtex® 3000 (75D полиестер) с воден стълб от 3000 мм; Вътрешната част на палатката е изработена от 100% дишащ полиестер; Подът на палатката е пришит към основната материя и е изработен от двуслойно полиуретаново покритие с воден стълб 10 000 мм; Лепените шевове осигуряват максимална защита от навлизане на вода в палатката; Вентилационни панели; Две спални и едно основно помещение; При нужда двете спални помещения могат да бъдат съединявани като образуват едно с размери 320 x 215 см; Три входа с мрежесто покривало против насекоми; Панорамни прозорци с покривала; Възможност за закачане на фенер; Канал за електрически кабел; Здрави и водонепромукаеми ципове; Рейки: изработени от Duratec фибростъкло с диаметър 8.5 / 11.0 / 12.7 мм; Система за допълнителна стабилизация OWS 9, осигуряваща стабилност и устойчивост на палатката дори и при силна буря със скорост на ветровете до 80 km/h.; Гарантирано бързо сглобяване и събиране, благодарение на система OEP; Регулиращи се покривала на прозорците; Височина: до 200 см; Размери на палатката: 485 х 360 х 200 см (Д х Ш х В); Размери в сгънато състояние: 32 х 76 см; Тегло: 18.7 кг." webSiteUrl:@"http://sportdepot.bg/bg/product/outwell_petmestna_palatka_nevada_m-4280900001-MD1zcG9ydCZzcG9ydElkPTI0JmRpdmlzaW9uSWQ9OTgmY2F0ZWdvcnlJZD03MQ.html?state=b3JkZXJCeT1wcmljZURlc2Mmb3JkZXJEaXI9REVTQw" phoneNumber:@"070190009" address:@"ж.к.Младост IV; ул. “Васил Радославов” 6 София 1766, сграда Sport Depot" imageUrl:@"http://sportdepot.bg/files/products/OUT-110405_01.jpg" andPrice:750],
                      
                      [GiftModel giftWithModel:@"Разходка на яхта за двама" giftDescription:@"Панорамна разходка из Варненския залив на яхта Света Анна (модел Bavaria 33 Cruiser); Продължителност – 1 час; Бутилка шампанско и вода; Гориво" webSiteUrl:@"https://wishio.bg/prezhivyavania/razhodka-na-yahta-za-dvama/" phoneNumber:@"0882662533" address:@"Бизнес сграда Астра бул. България 98 София, България" imageUrl:@"https://wishio.bg/wp-content/uploads/2015/06/Razhodka-s-yahta-vuv-Varna.jpg" andPrice:145],
                      
                      [GiftModel giftWithModel:@"Цифров фотоапарат PANASONIC DMC-G7KEG-K" giftDescription:@"РЕЗОЛЮЦИЯ: 16.0 MPx РАЗМЕР НА ЕКРАНА В INCH: 3.0  РАЗМЕР НА МАТРИЦАТА: MOS 17.3X13mm" webSiteUrl:@"http://www.technopolis.bg/bg/Cameras---hybrid/Camera-PANASONIC-DMC-G7KEG-K/p/394978" phoneNumber:@"070012340" address:@"София 1766, Младост 4, Околовръстен път 265 (срещу “Камбаните”)" imageUrl:@"http://www.technopolis.bg/medias/sys_master/h09/h34/9298961891358.jpg" andPrice:1530],
                      nil];
    
    self.giftsTableView.dataSource = self;
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"phoneCell"];
    //PhoneCell *cell = [tableView dequeueReusableCellWithIdentifier:@"phoneCell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
        reuseIdentifier:@"phoneCell"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [self.giftsData[indexPath.row] model]];
    

    return cell;
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
