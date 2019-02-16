describe GetGeo::DataRequester do
  describe 'class methods' do
    describe '.new' do
      subject { described_class.new }

      it 'initialize new object' do
        expect(subject).not_to be_nil
      end
    end
  end

  describe 'instance methods' do
    describe '#execute' do
      let!(:response) { double }
      let!(:data) { "{\"as\":\"AS4134 No.31,Jin-rong Street\",\"city\":\"Guangzhou\",\"country\":\"China\",\"countryCode\":\"CN\",\"isp\":\"Chinanet\",\"lat\":23.1322,\"lon\":113.267,\"org\":\"Chinanet GD\",\"query\":\"183.3.4.1\",\"region\":\"GD\",\"regionName\":\"Guangdong\",\"status\":\"success\",\"timezone\":\"Asia/Shanghai\",\"zip\":\"\"}" }
      before do
        expect(OpenURI).to receive(:open_uri).and_return(response)
        expect(response).to receive(:read).and_return(data)
      end

      subject { described_class.new.execute }

      it 'returns hash with data' do
        expect(subject).not_to be_nil
      end
    end
  end
end