USE 'ssanalysis';
CREATE TABLE 'TWITTER_API' (
  hashtag,
  user,
  timestamp,
  data,
  ACCESS GROUP default (hashtag, user, timestamp, data)
);

;
