#import "AveragePriceCalcVisitor.h"

@implementation AveragePriceCalcVisitor {
    double totalPrice;
    double avgPrice;
}

-(instancetype)init {
    if(self = [super init]) {
        totalPrice = avgPrice = 0.0;
    }
    return self;
}

-(double)getAvgPrice {
    return avgPrice;
}

-(void)visitBook:(Book*)book {
    totalPrice += book.price;
}

-(void)visitLibrary:(Library*)library {
    avgPrice = totalPrice / library.bookList.count;
}

@end
