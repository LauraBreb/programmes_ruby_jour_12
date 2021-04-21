require_relative '../lib/caesar_cipher'

describe "#caesar_cipher" do
  it "transform a string into a coded new string" do
    expect(caesar_cipher("What a string!",5)).to eq("Bmfy f xywnsl!")
  end
end