#!/usr/bin/env ruby

require 'bundler/setup'
require 'byebug'

require_relative 'book'
require_relative 'git_repo_data_store'

ids = %w(
  9b08c294-057f-4201-9f48-5d6ad992740d@29.2
)

# book = Book.new("7fccc9cf-9b71-44f6-800b-f9457fd64335@16.3")
# book = Book.new("9b08c294-057f-4201-9f48-5d6ad992740d@29.2")

data_store = GitRepoDataStore.new(directory: '/tmp/data')

ids.each do |id|
  book = Book.new(id)
  book.scrape(data_store: data_store)
end


