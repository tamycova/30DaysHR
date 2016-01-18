def computeDifference(self):
        
        self.maximumDifference=0
        for i in range(len(self.__elements)):
            for j in range(i+1,len(self.__elements)):
                if abs(a[i]-a[j])>self.maximumDifference:
                    self.maximumDifference=abs(a[i]-a[j])
        
        
