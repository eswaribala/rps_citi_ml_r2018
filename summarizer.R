library(algorithmia)
#summarizer
input <- "A purely peer-to-peer version of electronic cash would allow online payments to be sent directly from one party to another without going through a financial institution. Digital signatures provide part of the solution, but the main benefits are lost if a trusted third party is still required to prevent double-spending. We propose a solution to the double-spending problem using a peer-to-peer network. The network timestamps transactions by hashing them into an ongoing chain of hash-based proof-of-work, forming a record that cannot be changed without redoing the proof-of-work. The longest chain not only serves as proof of the sequence of events witnessed, but proof that it came from the largest pool of CPU power. As long as a majority of CPU power is controlled by nodes that are not cooperating to attack the network, they'll generate the longest chain and outpace attackers. The network itself requires minimal structure. Messages are broadcast on a best effort basis, and nodes can leave and rejoin the network at will, accepting the longest proof-of-work chain as proof of what happened while they were gone."
client <- getAlgorithmiaClient("simbkmpSACnKPXl5AAr6vewxsd21")
algo <- client$algo("nlp/Summarizer/0.1.7")
result <- algo$pipe(input)$result
print(result)

#auto text extraction
input <- "A purely peer-to-peer version of electronic cash would allow online payments to be sent directly from one party to another without going through a financial institution. Digital signatures provide part of the solution, but the main benefits are lost if a trusted third party is still required to prevent double-spending. We propose a solution to the double-spending problem using a peer-to-peer network. The network timestamps transactions by hashing them into an ongoing chain of hash-based proof-of-work, forming a record that cannot be changed without redoing the proof-of-work. The longest chain not only serves as proof of the sequence of events witnessed, but proof that it came from the largest pool of CPU power. As long as a majority of CPU power is controlled by nodes that are not cooperating to attack the network, they'll generate the longest chain and outpace attackers. The network itself requires minimal structure. Messages are broadcast on a best effort basis, and nodes can leave and rejoin the network at will, accepting the longest proof-of-work chain as proof of what happened while they were gone."
client <- getAlgorithmiaClient("simbkmpSACnKPXl5AAr6vewxsd21")
algo <- client$algo("nlp/AutoTag/1.0.1")
result <- algo$pipe(input)$result
print(result)
#sentiment analysis
#a given sentence may be 45% happy, 23% sad, 89% excited, and 55% hopeful. 
input <- list("document"="I will kill you!")
client <- getAlgorithmiaClient("simbkmpSACnKPXl5AAr6vewxsd21")
algo <- client$algo("nlp/SentimentAnalysis/1.0.4")
result <- algo$pipe(input)$result
print(result)
#named entity recognition
input <- list("document"="I went to Stanford University, My friend went to the University of Washington. we both worked for IBM.")
client <- getAlgorithmiaClient("simbkmpSACnKPXl5AAr6vewxsd21")
algo <- client$algo("StanfordNLP/NamedEntityRecognition/0.2.0")
result <- algo$pipe(input)$result
print(result)
#chat bot parser
input <- list("src"="Klick hier", "format"="tree", "language"="german")
client <- getAlgorithmiaClient("simbkmpSACnKPXl5AAr6vewxsd21")
algo <- client$algo("deeplearning/Parsey/1.1.0")
result <- algo$pipe(input)$result
print(result)
