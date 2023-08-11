# Content-based filtering
Scenario 2 implements a basic version of content-based filtering using the TF-IDF approach.

## TF-IDF
The term frequency vector simply counts the number of times each term $t$ appears in a document $d$. In other words, it simply measures the frequency of the term $t$.

The inverse document frequency vector measures the relative importance of each term $t$ across the documents. It is calculated as: 
$$
IDF = log_2(\frac{N}{n_{t}})
$$
where $N$ is the number of documents in the corpus and $n_t$ is the number of documents containing the term $t$. IDF measures the weight of a term $t$ in the document.

## Cosine similarity
The cosine of two vectors is given by:
$$ \cos \theta = \frac{\bf a \cdot \bf b}{\|\bf a \| \|\bf b \|}$$
This measures the angle between the two documents in a normalized space. The closer the vectors are, the smaller will be the angle between them.
![[Pasted image 20230810113645.png]]



## Scenario 5

In this scenario, we have added the functionality of sentiment analysis using the TextBlob library. We are storing the customer's feedback into a dataframe and then performing the sentiment analysis to classify the feedbakc based on the sentiment and storing the result in the same dataframe for further analysis.