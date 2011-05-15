require 'spec_helper'
describe BooksController do
    describe '#new' do
        it "should be successful" do
            get :new
            response.should be_success
        end

        it "should create a book object" do
            assigns(:recipe).should_not_be_nil
        end
    end

    describe "#create" do
        it "should create a book" do
            post :create, "book" => {"title"=> "Kafka On The Shore", "author"=> "Haruki Murakami", "year"=>"2002", "description"=> "'Kafka on the Shore' follows the fortunes of two remarkable characters. Kafka Tamura runs away from home at fifteen, under the shadow of his father's dark prophesy. The aging Nakata, tracker of lost cats, who never recovered from a bizarre childhood affliction, finds his pleasantly simplified life suddenly turned upside down. Their parallel odysseys are enriched throughout by vivid accomplices and mesmerising dramas. Cats converse with people; fish tumble from the sky; a ghostlike pimp deploys a Hegel-spouting girl of the night; a forest harbours soldiers apparently un-aged since WWII. There is a savage killing, but the identity of both victim and killer is a riddle. Murakami's new novel is at once a classic tale of quest, but it is also a bold exploration of mythic and contemporary taboos, of patricide, of mother-love, of sister-love. Above all it is an entertainment of a very high order."}
            assigns(:book).should_not be_nil
            assigns(:book).title.should== "Kafka On The Shore"
        end

        it "should redirect to the books list page" do
            response.should redirect_to recipes_path
        end
    end

    describe "#index" do
        it "should be successful" do
            get :index
            response.should be_success
        end
    end
end #end of spec file
