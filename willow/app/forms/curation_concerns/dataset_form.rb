# Generated via
#  `rails generate curation_concerns:work Dataset`
module CurationConcerns
  class DatasetForm < Sufia::Forms::WorkForm
    self.model_class = ::Dataset
    self.terms += [:license]

    NESTED_ASSOCIATIONS = [:license,].freeze

    protected

      def self.permitted_license_params
        [:id,
         :_destroy,
         {
           label: [],
           definition: [],
           webpage: [],
         },
        ]
      end

      def self.build_permitted_params
        permitted = super
        permitted << { license_attributes: permitted_license_params }
        permitted
      end

  end
end
