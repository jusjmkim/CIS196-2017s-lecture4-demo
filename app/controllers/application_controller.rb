class ApplicationController < Sinatra::Base
  set :views, proc { File.join(root, '../views') }
  get '/' do
    @elems = ['foo', 'bar', 'baz', 'foobar']
    erb :'index.html'
  end

  get '/hi' do
    'Hi everyone'
  end
end