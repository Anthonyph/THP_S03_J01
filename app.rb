# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# tu peux faire User.new, Event.new, binding.pry, User.all, etc.

anthony = User.new("anthony.phim@gmail.com", 28)
noemie = User.new("noemie.letellier@gmail.com", 25)
aurelie = User.new("aurelie@gmail.com", 32)
jennifer = User.new("jennifer@gmail.com", 31)

my_event = Event.new("2019-10-14 16:00", 30, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

binding.pry
