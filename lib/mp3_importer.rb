
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir[@path+"/*.mp3"].collect {|file| file.split('/').last}
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end
end
