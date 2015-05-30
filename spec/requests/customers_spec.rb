require 'rails_helper'

describe "Customers" do
  let(:authorized_user) { }
  let(:custs) { create_list(:customer, 5) }

  context "GET /customers" do

    it "fetches all customers" do
      FactoryGirl.create(:customer)
      get "/customers"
      expect(json['data'].count).to eq 1
      expect(response.status).to eq(200)
    end

    it "returns not found if customer does not exist" do
      get "/customers"
      expect(json).to include("data"=>[])
    end
  end

  context "GET /customers/:id" do
     it "fetches a customer" do
      customer = FactoryGirl.create(:customer)
      get "/customers/#{customer.id}"

      expect(json['data']['id']).to eq customer.id
      expect(response.status).to eq(200)
    end

    it "returns not found if customer does not exist" do
      get "/customers/2"
      expect(response.status).to eq(404)
    end
  end

  context "POST /customers" do
    it "creates a customer" do
      query = FactoryGirl.build(:customer).attributes.compact

      post "/customers", query
      expect(response.status).to eq(201)
    end

    #maybe refactor these with shared examples
    #maybe this should return errors if required fields not included
    it "returns unprocessable entity if customer not created" do
      expect(response.status).to eq(422)
    end

    pending it "returns unauthorized if user unauthenticated" do
      expect(response.status).to eq(401)
    end
  end

  context "PUT /customers/:id" do
    let(:query) { { contact_person: 'Jen Smith' } }

    pending it "updates a customers record" do
      FactoryGirl.create(:customer)
      post "/customers", query

      expect(json['data']['contact_person']).to eq 'Jen Smith'
      expect(response.status).to eq(200)
    end

    pending it "returns unprocessable entity if customer not updated" do
      expect(response.status).to eq(422)
    end

    pending it "returns unauthorized if user unauthenticated" do
      expect(response.status).to eq(401)
    end
  end

  context "DELETE /customers/:id" do
    pending it "deletes a customers record" do
      customer_id = FactoryGirl.create(:customer).id
      delete "/customers/#{customer_id}"

      #what should http code be here
      expect(response.status).to eq(200)
    end

    pending it "returns unprocessable entity if customer not deleted" do
      expect(response.status).to eq(422)
    end

    pending it "returns unauthorized if user unauthenticated" do
      expect(response.status).to eq(401)
    end
  end
end
