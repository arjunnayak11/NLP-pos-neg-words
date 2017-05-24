# NLP-pos-neg-words
Note: this Was a part of my Masters course work

#Create a Keyword Sentiment Analyzer

#Tokenize your documents using the Stanford CoreNLP or Apache OpenNLP package (See NLP.R on Moodle)

#Create a function called "sentiment(doc)" that takes a documents as it's input and returns a sentiment score by summing the number of positive and negative words in a document.  The final score=number_of_positive_words - number_of_negative_words.


#Useful functions for this lab:
  
#tokenizedwords %in% positivewordlist     :  This line will check the individual words membership in the positivewordlist variable.  It returns a boolean vector.
#which(booleanvector)                     :  This function returns the vector locations with TRUE values in a boolean vector
#length(vectorlocations)                  :  This function returns the number of elements in a vector

#Come up with some documents of your own to test

