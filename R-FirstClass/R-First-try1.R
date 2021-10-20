load("/Users/xusheng/Desktop/R学习/diabets.RData")
View(diabets)
Find=c()
A=0
for (i in 1:length(diabets[,1])) {
if(diabets[i,1]=="Female" & diabets[i,2]<6.1 & diabets[i,2]>3.9) {
Find=rbind(Find,diabets[i,])
A=A+1
}
}
write.table(Find,"/Users/xusheng/Desktop/R学习/R-First-Find-try1.txt",sep="\t",quote=F,col.names = T,row.names = F)
write.table(A,"/Users/xusheng/Desktop/R学习/R-First-Result-try1.txt",sep="\t",quote=F,col.names = T,row.names = F)
