require 'graphql'

# app/graph/types/author_type.rb
QueryType = GraphQL::ObjectType.define do
  name "Event"
  description "Events"
  field :name, types.String
  field :status, types.String
  field :channels, types.String
  field :country, types.String
  field :startDateTime, types.String
  field :blurb, types.String
  field :sort, types.String
  field :displayed, types.Boolean
  field :hasInPlay, types.Boolean
  field :flags, types.String
  field :order, types.Integer
  field :settled, types.Boolean
end

EventSchema = GraphQL::Schema.new(query: QueryType)

puts EventSchema.execute('{ name sort }')
