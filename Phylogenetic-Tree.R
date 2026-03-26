Author: Clark, Date: 03/26/26, Purpose: To generate a phylogenetic tree structure

#Load package ape
library (ape)

#Generate some dummy data for tree structure
text.string<- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark);" 

#Generate some dummy data for tree structure
> vert.tree<-read.tree(text=text.string)

#Plot the tree structure
> plot(vert.tree,no.margin=TRUE,edge.width=2)
