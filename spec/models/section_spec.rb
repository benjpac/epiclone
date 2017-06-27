require 'rails_helper'

# RSpec.describe Section, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Section do

  it { should have_many :lessons }
  it { should belong_to :chapter }

end
