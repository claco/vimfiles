task :default => [:update]

desc "Initial Setup"
task :setup do
  system "git submodule init"
  Rake::Task[:update].invoke
  Rake::Task[:symlink].invoke
end

desc "Update Bundles"
task :update do
  system "git pull"
  system "git submodule update"

  Dir.foreach('bundle') do |name|
    if (name == '.' || name == '..')
      next
    end

    dir = "bundle/#{name}"
    puts "Updating #{dir}"
    Dir.chdir(dir)
    system "git checkout master"
    system "git pull"
    Dir.chdir("../../")
  end
end

desc "Symlink Config"
task :symlink do
  pwd = File.dirname(__FILE__)

  if RUBY_PLATFORM =~ /(ming|win32)/
    home = ENV["USERPROFILE"]

    sh "mklink /d \"#{home}/vimfiles\" \"#{pwd}\""
    sh "mklink \"#{home}/_vimrc\" \"#{pwd}/vimrc\""
  else
    sh "ln -s \"#{pwd}\" ~/.vim"
    sh "ln -s \"#{pwd}/vimrc\" ~/.vimrc"
  end
end
