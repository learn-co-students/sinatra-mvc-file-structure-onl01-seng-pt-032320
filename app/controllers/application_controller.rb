class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
end

# The controllers, such as `application_controller.rb`, are where the application 
# configurations, routes, and controller actions are implemented. There is
# typically a class, which in this case we will call `ApplicationController`,
# that represents an instance of your application when the server is up and
# running. The `application_controller.rb` file represents the "C" components of
# the MVC paradigm.

# (In some simple applications –– including several labs and code-alongs in this
# track –– the Application Controller will simply be called `app.rb` and will
# live in the root directory of the project.)

# Sometimes our other controllers will use `ApplicationController` as an
# inheritance point so that they inherit all the defaults and behaviors defined
# in our main `ApplicationController`. Other times our other controllers will
# simply inherit from `Sinatra::Base`.

# Controllers represent the application logic, generally; the interface and flow
# of our application.

# Let's go ahead and fill in our controller. You'll notice in
# `application_controller.rb`, we have an `ApplicationController` class that
# inherits from `Sinatra::Base`. When we start up a server, the server will spin
# up an instance of the `ApplicationController` class to run our app.

# You'll also notice there is a `configure` block already in the controller. This
# configure block tells the controller where to look to find the views (your
# pages with HTML to display text in the browser) and the public directory.

# When a client makes a request to a server to load an application, the request
# is received and processed by the controller. We need to set up a controller
# action to accept the request and respond with the appropriate HTML.

# We've created a controller action that can receive and respond to a `GET`
# request to the root URL `'/'`. This `GET` request loads the `index.erb` file.

