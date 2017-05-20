#Create a Keyword Sentiment Analyzer

library(coreNLP)

options( java.parameters = "-Xmx6g" )

initCoreNLP("C:\\Users\\Arjun\\Downloads\\IS688 Web Mining\\Arjun Web mining\\Stanford core NLP\\stanford-corenlp-full-2015-12-09",mem = "6g",annotators = "tokenize,ssplit,pos,lemma,ner")

#Create a function called "sentiment(doc)" that takes a documents as it's input and returns a sentiment score

sentiment<-function(doc){
  
  #Tokenizing the document
  
  doc<-tolower(doc)
  
  tmp<-annotateString(doc,format="xml")
  
  source("C:\\Users\\Arjun\\Downloads\\IS688 Web Mining\\Arjun Web mining\\CorrectedParseXML.R")
  
  res<-parseAnnoXML(tmp)
  
  res<-getToken(as.data.frame(res$token))
  
  #res<-getToken(res[res$POS != "NN"])
  
  #Words to match tokens to
  
  n<-0 #Sentiment score
  
  posword<-read.delim("C:\\Users\\Arjun\\Downloads\\IS688 Web Mining\\Arjun Web mining\\positive-words.txt",header = F)
  
  negword<-read.delim("C:\\Users\\Arjun\\Downloads\\IS688 Web Mining\\Arjun Web mining\\negative-words.txt",header = F)
  
 
  for(i in 1:length(res))
    
  {
    
    if(res[i] %in% posword$V1) #Checking with positive words
      
    {
    
      n=n+1
      
    }
    
    else{#Comparing with negative list, if not in positive
      
      if(res[i] %in% negword$V1)
        
      {
        
        n=n-1
        
      }
      
    }
    
  }
return(n)
}
doc<-"wrong incorrect bad sad good "
sentiment(doc)

