require 'spec_helper'
describe BooksController do
    describe '#new' do
        it "should be successful" do
            get :new
            response.should be_success
        end
    end
end
