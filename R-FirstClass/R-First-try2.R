load("/Users/xusheng/Desktop/R学习/diabets.RData")
View(diabets)
a = 0
for (i in 1:nrow(diabets)) {
  x <- diabets[i,];
  class(x)
  if(x[1,1] == "Female" & x[1,2] < 6.1 & x[1,2] > 3.9){
    a = a + 1
  }
}
write.table(a,"/Users/xusheng/Desktop/R学习/R-First-Find-try2.txt",sep="\t",quote=F,col.names = T,row.names = F)