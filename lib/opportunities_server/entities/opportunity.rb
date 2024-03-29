class Opportunity < Hanami::Entity
  attributes do
    attribute :id, Types::Int
    attribute :title, Types::String
    attribute :slug, Types::String
    attribute :company_id, Types::Int
    attribute :created_at, Types::Date
    attribute :updated_at, Types::Date
    attribute :opportunity_category_id, Types::Int
    attribute :address_id, Types::Int
    attribute :expired_at, Types::Date
    attribute :other_benefit, Types::String
    attribute :deleted_at, Types::Date
    attribute :opportunity_level_id, Types::Int
    attribute :characteristic_id, Types::Int
    attribute :work_environment_id, Types::Int
    attribute :external_url, Types::String
    attribute :external_email, Types::String
    attribute :visit_id, Types::Int
    attribute :managed, Types::Int
    attribute :subscription_message, Types::String
    attribute :status, Types::Int
    attribute :subscriptions_count, Types::Int
    attribute :responsability, Types::String
    attribute :requirement, Types::String
    attribute :subscription_email_message, Types::String
    attribute :work_environment, Types::String
    attribute :occupation_area_id, Types::Int
    attribute :enable_messages, Types::String
    attribute :published_at, Types::Date
    attribute :tags, Types::String
    attribute :required_profile, Types::String
    attribute :closed_at, Types::Date
    attribute :internal_recruitment, Types::Bool
    attribute :requisition_id, Types::Int
    attribute :default_publishing_time, Types::Int
    attribute :pcd, Types::Bool
    attribute :continuous_capture, Types::Bool
    attribute :hidden, Types::Bool
    attribute :user_id, Types::Int
    attribute :duplicated_from, Types::Int
    attribute :language, Types::String
    attribute :number_of_positions, Types::Int
    attribute :subscriber_edit_question, Types::Bool
    attribute :hiring_time, Types::Int
    attribute :critical_period, Types::Int
    attribute :days_type, Types::String
    attribute :company_opportunity_area_id, Types::Int
    attribute :company_opportunity_group_id, Types::Int
    attribute :hiring_date, Types::Date
  end
end
