require_relative "fantastic_formula"

describe FantasticFormula do
  describe ".evaluate" do
    it "4*5+6&7|8 = 44" do
      expect(FantasticFormula.evaluate("4*5+6&7|8")).to eq "44"
    end
  end
end
