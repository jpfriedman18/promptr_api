class EvaluationSerializer < ActiveModel::Serializer
  attributes :id, :grammar, :vocabulary, :structure, :spelling, :creativity, :notes
  has_one :prompt_response
  has_one :teacher
end
