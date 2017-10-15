# Business-Card-Exchange

## A Rails based full CRUD web app that allows people to find and add people's contact information to their "wallet"

The purpose of business card exchange is to conviniently organize the contacts you meet in your own wallet.

## Technologies Used:
1) HTML
2) CSS
3) Javascript
4) Ruby/ERB
5) Ruby On Rails
6) Bootstrap

## User Stories:
As a user,users can sign up a new account with minimal information. After sign up users can see their username top of the screen and their saving cards as well.Users can add their business cards using ADD Card button from top of the app and anytime users can update or delete their business card from the App.
Another feature of the App, Users can upload their business card using choose file button from the App.After uploading their cards users can logout from any page and its a secure logout where another users can't see their saving information from others account.


## Wireframes:
![](https://github.com/arifkhan36/business-card-exchange/blob/master/app/assets/images/wireframe-1.png)

![](https://github.com/arifkhan36/business-card-exchange/blob/master/app/assets/images/wireframes-2.png)

![](https://github.com/arifkhan36/business-card-exchange/blob/master/app/assets/images/wireframes-3.png)

![](https://github.com/arifkhan36/business-card-exchange/blob/master/app/assets/images/wireframes-4.png)

## ERD table:
![](https://github.com/arifkhan36/business-card-exchange/blob/master/app/assets/images/ERD%20table.png)

## User Authentication:
For the Authentication I used device authnentication, Devise is a flexible authentication solution for Rails based App and its a complete MVC solution for Rails.Devise allows you to have multiple models signed in at the same time.In this App, users can sign up using their email and password and can logout from any pages.

## Paperclip for choosefile:

paperclip is an easy file attachment library for ActiveRecord.The intent behind it was to keep setup as easy as possible and to treat files as much like other attributes as possible. This means they aren't saved to their final locations on disk, nor are they deleted if set to nil, until ActiveRecord::Base#save is called.
For the paperclip, ImageMagick must me installed and paperclip must have access to it.To ensure paperclip access we need to run command in our terminal.After that, it will give us the path so we can use imagemagick for our paperclip.




