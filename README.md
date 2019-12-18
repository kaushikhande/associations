# README

### Has and belongs to many
  1. rails g model Author name:string
  2. rails g model Book title:string
  3. rails g migration CreateJoinTableAuthorsBooks authors books

  Intransitive Associations

  This is the simplest many-to-many association. Two models are associated by simple virtue of their existence. A Book can be written by many authors and an Author may write many books. It is a direct association and there is a direct dependency between the two models. We can’t really have one without the other. In ActiveRecord this can easily be modeled with the has_and_belongs_to_many (HABTM) association. We can create the models and migrations for this relationship in Rails by running the following commands:

  rails g model Author name:string
  rails g model Book title:string
  rails g migration CreateJoinTableAuthorsBooks authors books

  We need to define the HABTM association in our models like this:

  class Book < ApplicationRecord
    has_and_belongs_to_many :authors
  end
  class Author < ApplicationRecord
    has_and_belongs_to_many :books
  end

  Then, we can create our database tables by running:

  rails db:migrate

  Finally, we can populate our database:

  herman = Author.create name: 'Herman Melville'
  moby = Book.create title: 'Moby Dick'
  herman.books << moby

  We can now, among other things, access: a book’s Authors, all Books written by an Author and all Authors that have written a specific book:

  moby.authors
  herman.books
  herman.books.where(title: 'Moby Dick')

--------------
has_may through


-------------

Team has_many homematches
Team has_many awaymatches

Match
  title
  hometeam_id
  awaytema_id

rails generate migration AddAwayteamToMatch awayteam_id:integer
