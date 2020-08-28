# Twitter Redesign
---
In this project, I redesign a popular micro-blogging platform twitter.com also mocking the basic functionalities of the applcation.

## Project Specification
---
1. The user logs in to the app, only by typing the username (a proper authenticated login is not a requirement).

2. The user is presented with the homepage (see the Homepage screenshot above) that includes
	 - Left-side menu (includes only links to pages that are implemented).
	 - Tweets tab in the centre (skip Photos and Videos for this MVP).
	 - Right-side section with Who to follow (skip Trending for this MVP).

3. The *Tweets* section includes:
    - Simple form for creating a tweet.
    - List of all tweets (sorted by most recent) that display tweet text and author details.

4. The *Who to follow* section includes:
    1. List of profiles that are not followed by the logged-in user (ordered by most recently added).

5. When the user opens the profile page (see the *Userpage* screenshot above), they can see:
    i. Left-side menu (includes only links to pages that are implemented).
    ii. Cover picture and *Tweets* tab in the centre (skip other tabs and *Tweet to user* form).
    iii. Right-side section with *Profile detailed info.*
6. The *Profile detailed info* section includes:
         i. User photo.
         ii. Button to follow a user.
         iii. Stats: total number of tweets, number of followers and number of following users.
         iv. List of people who follow this user.
7. At the end extend your MVP app with one simple feature of your choice.

You should follow the guidelines of the given design, including:

## Future features
---
  Add instant messaging functionalty.
  Performing various reactions, such as comments on tweets etc.
#  Built With
     Ruby v2.6.5
     Ruby on Rails v6.0.3
     Gems used for testing: Capybara, Rspec-Rails, Shoulda-matchers and FactoryBot
