Gem::Specification.new do |s|
  s.name = %q{faker}
  s.version = "0.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Benjamin Curtis", "Jamie Dyer"]
  s.date = %q{2009-03-18}
  s.description = %q{A port of Perl's Data::Faker - Generates fake names, phone numbers, etc.}
  s.email = %q{benjamin.curtis@gmail.com}
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "README.txt", "Rakefile", "config/hoe.rb", "config/requirements.rb", "faker.tmproj", "lib/data/regular_names.rb", "lib/data/super_hero_villain_names.rb", "lib/extensions/array.rb", "lib/extensions/hash.rb", "lib/extensions/object.rb", "lib/faker.rb", "lib/faker/address.rb", "lib/faker/company.rb", "lib/faker/internet.rb", "lib/faker/lorem.rb", "lib/faker/name.rb", "lib/faker/phone_number.rb", "lib/faker/version.rb", "script/destroy", "script/generate", "script/txt2html", "setup.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/website.rake", "test/test_faker.rb", "test/test_faker_internet.rb", "test/test_faker_name.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://faker.rubyforge.org}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{faker}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A port of Perl's Data::Faker - Generates fake names, phone numbers, etc.}
  s.test_files = ["test/test_faker.rb", "test/test_faker_internet.rb", "test/test_faker_name.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
