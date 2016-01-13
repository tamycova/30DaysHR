#import <Foundation/Foundation.h>


NSArray* getAllInput() {
    
    NSArray* buffer = nil;
    if (buffer.count == 0) {
        // Try read some more data
        NSFileHandle* input = [NSFileHandle fileHandleWithStandardInput];
        NSData* data = input.availableData;
        NSString* inputString = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
        // If there's no more data return nil
        if (inputString == nil || inputString.length == 0) {
            return nil;
        }
        // otherwise add lines to buffer
        buffer = [inputString componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    }
    return buffer;
}

int main(int argc, const char * argv[]) {
    NSArray* input = getAllInput();
    int inputIndex = 0;
    int n = ((NSString*)input[inputIndex++]).intValue;
    int i;
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    for (i=0; i<n; i++) {
        NSString* name = input[inputIndex++];
        NSString* tel = input[inputIndex++];
        
        [dict setValue:tel forKey:name];
    }
    
    while (inputIndex < input.count) {
        NSString* buf = input[inputIndex++];
        NSString* tel = [dict objectForKey:buf];
        if (tel != nil) {
            printf("%s=%s\n", buf.UTF8String, tel.UTF8String);
        } else {
            printf("Not found\n");
        }
    }
    return 0;
}

