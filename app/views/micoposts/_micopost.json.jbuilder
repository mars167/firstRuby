json.extract! micopost, :id, :content, :user_id, :created_at, :updated_at
json.url micopost_url(micopost, format: :json)
