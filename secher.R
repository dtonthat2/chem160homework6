search<-read.table("secher.txt",header=T)
model1<-lm(bwt~bpd, data=search)
sum.model1<-summary(model1)
R2<-sum.model1$r.squared
f<-sum.model1$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output)
intercept<-model1$coefficients[1]
slope<-model1$coefficients[2]
output<-sprintf("slope=%f  intercept=%f",slope, intercept)
cat(output)
png("bwt_bpd.png")
plot(bwt~bpd, data=search)
abline(model1)
dev.off()


model2<-lm(bwt~ad, data=search)
sum.model2<-summary(model2)
R21<-sum.model2$r.squared
f1<-sum.model2$fstatistic
p.value1<-pf(f1[1],f1[2],f1[3],lower.tail=F)
output1<-sprintf("R2 = %f and p-value=%f", R21, p.value1)
cat(output1)
intercept1<-model2$coefficients[1]
slope1<-model2$coefficients[2]
output1<-sprintf("slope=%f  intercept=%f",slope1, intercept1)
cat(output1)
png("bwt_ad.png")
plot(bwt~ad, data=search)
abline(model2)
dev.off()

model3<-lm(bwt~bpd+ad, data=search)
sum.model3<-summary(model3)
R23<-sum.model3$r.squared
f3<-sum.model3$fstatistic
p.value3<-pf(f3[1],f3[2],f3[3],lower.tail=F)
output3<-sprintf("R2 = %f and p-value=%f", R23, p.value3)
cat(output3)

