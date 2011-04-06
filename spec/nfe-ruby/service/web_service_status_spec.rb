require File.expand_path(File.dirname(__FILE__) + '../../../spec_helper')
certificate_dir = File.expand_path(File.dirname(__FILE__) + '../../../../lib/nfe/certificates/certificado_restaurante_marias.pem')

describe "WebService" do

  it "should get the status from the webservice" do
    test = NFe::Service::WebService.new('WGATI', "wgf39400", certificate_dir,'sp')
    p test.status_servico
  end

end
