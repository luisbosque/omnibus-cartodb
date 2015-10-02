name 'cartodb-windshaft'
default_version 'cdb'

source git: "https://github.com/CartoDB/Windshaft-cartodb"
relative_path "#{name}"

# depends on mapnik but node-mapnik b/c package.json depends on node-mapnik from "https://github.com/CartoDB/node-mapnik/tarball/1.4.15-cdb1"
dependency 'libXrender'
dependency 'cartodb-mapnik'
dependency 'nodejs'
dependency 'protobuf'
dependency 'pango'

build do
  command 'npm install --build-from-source -g -d', env: with_standard_compiler_flags(with_embedded_path)
end
