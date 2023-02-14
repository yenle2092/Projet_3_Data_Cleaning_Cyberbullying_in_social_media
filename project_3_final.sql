USE project_3;

SELECT * from project_3; 

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

-- Top 10 senders with the most number of tweets labeled as cyberbullying (IsCyberbullying = 'TRUE'), and counting the number of tweets and the sender's number of followers for each sender.
SELECT
      SenderId,
      COUNT(Id) as "Number of tweet",
      AVG(SenderFollowers) as "Average Sender Followers"
FROM project_3
WHERE IsCyberbullying = 'TRUE'
GROUP BY SenderId, SenderFollowers
ORDER BY COUNT(Id) DESC
LIMIT 10;



