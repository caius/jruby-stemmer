require "jruby-stemmer"

describe JRuby::Stemmer do
  it "stems a string" do
    result = JRuby::Stemmer.stem("apple")
    expect(result).to be == "appl"
  end
end

describe "String" do
  it "has a #stem method" do
    expect("").to respond_to(:stem)
  end
  it "stems a string" do
    expect("apple".stem).to be == "appl"
  end
end
