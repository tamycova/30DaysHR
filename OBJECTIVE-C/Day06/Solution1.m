#import <Foundation/Foundation.h>

void printSolution(int n) {
    NSString* solution = @"";
    
    int i;
    for (i=1; i<=n; i++) {
        solution = [solution stringByPaddingToLength:n-i withString:@" " startingAtIndex:0];
        solution = [solution stringByPaddingToLength:n withString:@"#" startingAtIndex:0];
        printf("%s\n", solution.UTF8String);
    }
    
}

int main(int argc, const char * argv[]) {
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    
    int n;
    scanf("%d", &n);

    printSolution(n);
    
    [pool drain];
    return 0;
}
