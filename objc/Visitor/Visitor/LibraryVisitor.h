#import <Foundation/Foundation.h>

@class Book;
@class Library;
@protocol Visitable;

@protocol LibraryVisitor <NSObject>

-(void)visitBook:(Book*)book;
-(void)visitLibrary:(Library*)library;

@end
