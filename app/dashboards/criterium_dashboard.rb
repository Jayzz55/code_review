require "administrate/base_dashboard"

class CriteriumDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    code_test: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    description: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :code_test,
    :id,
    :name,
    :description,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :code_test,
    :id,
    :name,
    :description,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :code_test,
    :name,
    :description,
  ]

  # Overwrite this method to customize how criteria are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(criterium)
  #   "Criterium ##{criterium.id}"
  # end
end
