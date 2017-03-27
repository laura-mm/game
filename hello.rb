require 'sinatra'
require 'pony'
Pony.options = {
:via => 'smtp',
:via_options => {
:address => 'smtp.mailgun.org',
:port => '587',
:enable_starttls_auto => true,
:authentication => :plain,
# This is the Default SMTP Login from earlier:
:user_name => 'postmaster@sandbox3646b324266747a0a8d6e13024fea2a9.mailgun.org',
# This is your Default Password:
:password => '9134611ece519401a6ff3cd73ca04ec2'
}
}


get('/') do
erb :hello
end
get('/:name') do
@name = params[:name].capitalize
erb :hello
end
get ('/:name/:time') do
@name = params[:name]
@time = params[:time]
erb :hello
end
post('/signup') do
puts params[:name]
puts params[:email]
"All OK"

message = {
:from => 'laura.mm@hotmail.co.uk',
:to => "#{params[:name]} <#{params[:email]}>",
:subject => 'Welcome!',
:html_body => '<h1>Thanks for signing up to our awesome newsletter!</h1>'
}
Pony.mail(message)

end




