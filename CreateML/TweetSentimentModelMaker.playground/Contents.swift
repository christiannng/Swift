import Cocoa
import CreateML

let data = try MLDataTable(contentsOf: URL(fileURLWithPath: "/Users/Christiannng/Swift in General/Swift/SwiftJourney/Swift/CoreML & CoreML2/Twittermenti/twitter-sanders-apple3.csv"))

let (trainingData, testingData) = data.randomSplit(by: 0.8, seed: 5)

let sentimentClassifier = try MLTextClassifier(trainingData: trainingData, textColumn: "text", labelColumn: "class")

let evaluationMetrics = sentimentClassifier.evaluation(on: testingData, textColumn: "text", labelColumn: "class")

let evaluationAccuracy = (1.0 - evaluationMetrics.classificationError) * 100

let metadata = MLModelMetadata(author: "Christian", shortDescription: "A model trained classify sentiment on Tweets", version: "1.0")

try sentimentClassifier.write(to: URL(fileURLWithPath: "/Users/Christiannng/Swift in General/Swift/SwiftJourney/Swift/CoreML & CoreML2/Twittermenti/TweetSentimentClassifier.mlmodel"))

try sentimentClassifier.prediction(from: "@Apple is a terrible company")
try sentimentClassifier.prediction(from: "@Apple map just recommend me an awesome restaurant")
