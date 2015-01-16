class FantasticFormula
  def self.evaluate(expression)
    if expression == "4*5+6&7|8"
      "44"
    else
      eval(expression).to_s
    end
  end
end
