CREATE DATABASE Cyberbullying;

USE Cyberbullying;

SELECT * FROM project_3;

SELECT 
	  IsCyberbullying, 
      COUNT(Id) AS "Number of tweet", 
      SUM(Retweets) AS "Retweets Total", 
      SUM(Favorites) AS "Favorites Total"
FROM project_3
GROUP BY IsCyberbullying
ORDER BY sum(Retweets)
LIMIT 10;

SELECT 
      SenderId, 
      COUNT(Id) as "Number of tweet" 
FROM project_3
WHERE IsCyberbullying = 'TRUE'
GROUP BY SenderId
ORDER BY COUNT(Id) DESC
LIMIT 10;

-- Comparing the stats of tweets by category :
SELECT IsCyberbullying,
COUNT(Id) AS "Number of tweet",
SUM(Retweets) AS "Retweets Total",
SUM(Favorites) AS "Favorites Total",
AVG(Retweets) AS "Avg Retweets",
AVG(Favorites) AS "Avg Favorites"
FROM project_3
GROUP BY IsCyberbullying
HAVING IsCyberbullying IN ('True', False)
ORDER BY sum(Retweets)
LIMIT 10;

-- Avg sender's Followers by category of tweet
SELECT 
  IsCyberbullying, 
  AVG(SenderFollowers) AS "Avg Followers" 
FROM project_3 
GROUP BY IsCyberbullying;



	   










-- General stats about the table :
SELECT AVG(Retweets) as AverageRetweets, AVG(Favorites) as AverageFavorites, AVG(SenderFollowers) as AverageFollowers, AVG(Letter) as AverageLetter, AVG(Words) as AverageWords
FROM project_3;

-- Accounts with most followers :
SELECT DISTINCT SenderId, SenderFollowers, SenderFavorites, SenderFollowings, IsCyberbullying
FROM project_3
ORDER BY SenderFollowers DESC
LIMIT 10;

-- Tweets with the most retweets :
SELECT Id, Retweets, Favorites, Hashtags, SenderFollowings, SenderFollowers, SenderStatues, Letter, Words, IsCyberbullying
FROM project_3
ORDER BY Retweets DESC
LIMIT 10;

-- Most favorite tweets :
SELECT Id, Retweets, Favorites, Hashtags, SenderFollowings, SenderFollowers, SenderStatues, Letter, Words, IsCyberbullying
FROM project_3
ORDER BY Favorites DESC
LIMIT 10;

-- Most favorite cyberbullying tweets :
SELECT Id, Retweets, Favorites, SenderFollowers, SenderStatues, Letter, Words, IsCyberbullying
FROM project_3
WHERE IsCyberbullying = 'True'
ORDER BY Favorites DESC
LIMIT 10;

-- Cyberbullying tweets with the most retweets :
SELECT Id, Retweets, Favorites, SenderFollowers, SenderStatues, Letter, Words, IsCyberbullying
FROM project_3
WHERE IsCyberbullying = 'True'
ORDER BY Retweets DESC
LIMIT 10;

-- Avg retweet and favorites for cyberbullying tweet
SELECT Id, AVG(Retweets), AVG(Favorites), SenderFollowers, SenderStatues, Letter, Words, IsCyberbullying
FROM project_3
WHERE IsCyberbullying = 'True'
GROUP BY Id, IsCyberbullying;

-- Avg Followers and Status and favorites for cyberbullying senders


