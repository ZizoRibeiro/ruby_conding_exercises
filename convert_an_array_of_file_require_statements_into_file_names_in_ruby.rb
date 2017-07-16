require 'rspec'

  def append_is_file_extension require_files
    require_files.map do |file|
      file.gsub(/\/\/= require /, '')
    end.map do |f|
      f + '.js'
    end 
  end 
  

describe 'JavaScript file extension' do
  it 'converts require statements to javascript file name' do
    javascript_file = [
      '//= require custom/scripts',
      '//= require base/defaults',
      '//= require html.sortable',
      '//= require moment',
      '//= require test-styles'
    ]
    expect(append_is_file_extension javascript_file).to eq([
                                                            'custom/scripts.js',
                                                            'base/defaults.js',
                                                            'html.sortable.js',
                                                            'moment.js',
                                                            'test-styles.js'
                                                          ])
  end
end