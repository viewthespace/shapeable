require 'spec_helper'

describe BarsController, type: :controller do

  context 'Shape and version can not be resolved' do

    describe '#show with no default should raise Shapeable::UnresolvedShapeError' do

      before do
        Shapeable.configuration.default_version = nil
        Shapeable.configuration.default_shape = nil
        Shapeable.configuration.path = nil
      end

      it 'raises an error if no headers and no default serialzer have been specified' do
        request.env['HTTP_ACCEPT'] = 'application/json'
        expect{get :show, id: 1}.to raise_error(Shapeable::Errors::UnresolvedShapeError)
      end
    end
  end
end
