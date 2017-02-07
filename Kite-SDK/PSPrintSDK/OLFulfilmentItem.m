//
//  Modified MIT License
//
//  Copyright (c) 2010-2017 Kite Tech Ltd. https://www.kite.ly
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The software MAY ONLY be used with the Kite Tech Ltd platform and MAY NOT be modified
//  to be used with any competitor platforms. This means the software MAY NOT be modified
//  to place orders with any competitors to Kite Tech Ltd, all orders MUST go through the
//  Kite Tech Ltd platform servers.
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "OLFulfilmentItem.h"

static NSString *const kKeyIdentifier = @"co.oceanlabs.pssdk.kKeyIdentifier";
static NSString *const kKeyCost = @"co.oceanlabs.pssdk.kKeyCost";
static NSString *const kKeyRequired = @"co.oceanlabs.pssdk.kKeyRequired";
static NSString *const kKeyDescription = @"co.oceanlabs.pssdk.kKeyDescription";
static NSString *const kKeyName = @"co.oceanlabs.pssdk.kKeyName";


@implementation OLFulfilmentItem

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]){
        self.name = [aDecoder decodeObjectForKey:kKeyName];
        self.itemDescription = [aDecoder decodeObjectForKey:kKeyDescription];
        self.required = [aDecoder decodeBoolForKey:kKeyRequired];
        self.costDict = [aDecoder decodeObjectForKey:kKeyCost];
        self.identifier = [aDecoder decodeObjectForKey:kKeyIdentifier];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.costDict forKey:kKeyCost];
    [aCoder encodeObject:self.identifier forKey:kKeyIdentifier];
    [aCoder encodeBool:self.required forKey:kKeyRequired];
    [aCoder encodeObject:self.description forKey:kKeyDescription];
    [aCoder encodeObject:self.name forKey:kKeyName];
}


@end
