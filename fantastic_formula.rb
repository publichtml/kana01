class FantasticFormula
  WEAK_ORDERED_OPERATORS = %w(* + & |)

  def self.evaluate(expression)
    operators  = contained_operators(expression)

    if operators.count > 1
      weakest = operators.sort_by! { |op| WEAK_ORDERED_OPERATORS.index(op) }.first
      sub_evaluated = expression.split(weakest).map { |exp| evaluate(exp) }
      eval(sub_evaluated.join(weakest))
    else
      eval(expression)
    end.to_s
  end

  def self.contained_operators(expression)
    expression.scan(/(\D)/).flatten.uniq
  end
end
