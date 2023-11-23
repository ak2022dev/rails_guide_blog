class Comment < ApplicationRecord
  belongs_to :article

  VALID_STATUSES = [ 'public', 'private', 'archived' ]

  def archived?
    status == 'archived'
  end
end
