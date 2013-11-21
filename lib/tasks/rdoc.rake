require 'rdoc/task'

Rake::RDocTask.new do |rdoc|
	rdoc.rdoc_files.include('app/*/*.rb')
	rdoc.main = "README.md" #page to start on
	rdoc.title = "Atlas Documentation"
	rdoc.rdoc_dir = 'rdoc' #where documentation will be placed
end