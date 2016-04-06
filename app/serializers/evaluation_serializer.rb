class EvaluationSerializer < ActiveModel::Serializer
  attributes :id, :grammar, :vocabulary, :structure, :spelling, :creativity, :notes, :teacher_id, :prompt_response_id
end
