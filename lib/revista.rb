class Revista
  include ActiveFile

  field :titulo, required: true
  field :valor, default: 10.0
end
