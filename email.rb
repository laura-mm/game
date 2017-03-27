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

message = {
:from => 'laura.mm@hotmail.co.uk',
:to => 'Recipient Name Goes Here <laura.sidhom@student.manchester.ac.uk>',
:subject => 'Welcome!',
:body => 'Thanks for signing up to our awesome newsletter!'
}
Pony.mail(message)