require 'pry'
class MP3Importer

  attr_accessor :path

  @@files = []

  def initialize(filepath)
    @path = filepath
  end

  def files
       array = Dir[@path+"/*"]
       array.each{|file| @@files<<file.rpartition('/').last}
       @@files
     end

    def import
       @@files. each do |file|
          Song.new_by_filename(file)
       end
     end

end
