#
class User < ActiveRecord::Base
  include Authentication
  belongs_to :profileable, :polymorphic => true
end
