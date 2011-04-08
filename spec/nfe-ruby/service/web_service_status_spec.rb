require File.expand_path(File.dirname(__FILE__) + '../../../spec_helper')

describe "WebService" do

  it "should get the status from the webservice" do
    test = NFe::Service::WebService.new('', "", certificate_dir, 'sp')
    p test.status_servico
  end

end
