require 'vigilem/x11/stat'

describe Vigilem::X11::Stat do
  
  
  it 'will have added the default after required' do
    expect(Vigilem::Core::Stat.all).not_to be_empty
  end
  
  context 'default contructor,' do
    
    describe '#gem_name' do
      it 'defaults to vigilem-x11-stat' do
        expect(subject.gem_name).to eql('vigilem-x11')
      end
    end
    
    describe '#api_check?' do
      it 'will return true the DISPLAY env var is available' do
        ENV['DISPLAY'] ||= ':0.0'
        expect(subject.api_check?).to be_truthy
      end
      
      it 'will return false the DISPLAY env var is nil' do
        ENV['DISPLAY'] = nil
        expect(subject.api_check?).to be_falsey
      end
    end
    
    describe '#available?' do
      it 'will return true as long as api_check? is true' do
        allow(subject).to receive(:api_check?) { true }
        expect(subject.available?).to be_truthy
      end
      
      it 'will return false when api_check? is false' do
        allow(subject).to receive(:api_check?) { false }
        expect(subject.available?).to be_falsey
      end
      
    end
  end
  
end
