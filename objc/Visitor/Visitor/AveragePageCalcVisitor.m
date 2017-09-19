#import "AveragePageCalcVisitor.h"

@implementation AveragePageCalcVisitor {
    int totalPage;
    double avgPage;
}

-(instancetype)init {
    if(self = ([super init])) {
        totalPage = 0;
        avgPage = 0.0;
    }
    return self;
}

-(double)getAvgPage {
    return avgPage;
}

-(void)visitBook:(Book*)book {
    totalPage += book.noPages;
}

-(void)visitLibrary:(Library*)library {
    avgPage = (double)totalPage / library.bookList.count;
}

@end
