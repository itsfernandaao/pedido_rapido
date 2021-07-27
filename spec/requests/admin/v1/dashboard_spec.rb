require 'rails_helper'

describe 'Dashboard', type: :request do
  let(:employee) { create(:employee) }

  it 'Test Dashboard' do
    get '/admin/v1/dashboard', headers: auth_header(employee)  
    expect(body_json).to eq({ 'message' => 'Uhull' }) 
  end

  it 'Test Dashboard' do
    get '/admin/v1/dashboard', headers: auth_header(employee)    
    expect(response).to have_http_status(:ok)
  end

end