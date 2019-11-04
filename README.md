# How to use

Clone the repo `https://github.com/Iphytech/country-info.git` to your computer

change to the project directory

NB: There is no database (because we ain't going to make use of it).

go to the terminal and run `bundle or bundle install`

We are making use of `excon` for the restful api calls - Read more about it here (https://github.com/excon/excon)
And we are consuming data from `Rapid APi endpoint`

For yuou to be able to use it, you have to signup on their website https://rapidapi.com/ and get the api key

We are going to use `Figaro gem` to save our credentials -  See the documentation (https://github.com/laserlemon/figaro)

To use it 

Got to the terminal and run `bundle exec figaro install`, This creates a commented config/application.yml file and adds it to your .gitignore. Add your own configuration to this file and you're done!

Go inside the application.yml file and add your rapudapi key like this

```ruby
api_key: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```


Start the project and test what we have built
```bash
rails s or rails server
```

If you want to see the full response returned 

Go to your controller in the search action  and add this

```ruby
 render :json =>  @country
 
```
