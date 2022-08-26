require 'bundler'
Bundler.require

require_relative '../lib/song'

DB = { conn: SQLite3::Database.new("db/music.db") }
DB[:conn].execute("PRAGMA table_info(songs)")
