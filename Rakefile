require 'middleman-gh-pages'

desc "create pdf file"
task :create_pdf => [:build] do
  print 'Creating pdf...'
  `LC_ALL="de_de.utf-8" weasyprint ./build/print/regeln.html ./source/print/regeln.pdf`
  `rm -f ./build/print/regeln.html`
  puts 'done'
end
