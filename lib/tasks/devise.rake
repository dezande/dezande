namespace :devise do

  desc "Add a new user"
  task :new_user => :environment do
    puts "What is the email?"
    email = STDIN.gets
    puts "What is the password? (minimum 8 caratere)"
    password = STDIN.gets

    if User.create(email: email, password: password)
      puts "User done"
    else
      puts "User don't accepted - use --trace for see the problem"
    end
  end
end
