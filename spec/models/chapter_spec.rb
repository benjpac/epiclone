require 'rails_helper'

# RSpec.describe Chapter, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Chapter do

  it { should have_many :sections }

end

