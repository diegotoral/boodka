# require 'test_helper'

# describe AccountForm do
#   let(:account_form_params) { build :account_form_params }
#   let(:account_form) { build :account_form }
#   let(:default_account_form) { build :default_account_form }

#   it 'process account params' do
#     account_form.account_params.must_equal({
#       title: account_form_params[:title],
#       description: account_form_params[:description],
#       currency: account_form_params[:currency],
#       default: account_form_params[:default]
#     })
#   end

#   it 'process reconciliation params' do
#     account_form.reconciliation_params.must_equal({
#       amount: account_form_params[:amount],
#       created_at: account_form_params[:created_at]
#     })
#   end

#   it 'precoss default flag' do
#     default_account_form.default?.must_equal true
#   end
# end
