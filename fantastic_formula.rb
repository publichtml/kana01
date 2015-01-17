class FantasticFormula
  WEAK_ORDERED_OPERATORS = %w(* + & |)

  def self.evaluate(expression)
    contained_operators = expression.scan(/(\D)/).flatten.uniq

    if contained_operators.count > 1
      weakest = contained_operators.sort_by! { |op| WEAK_ORDERED_OPERATORS.index(op) }.first
      sub_evaluated = expression.split(weakest).map { |exp| evaluate(exp) }
      eval(sub_evaluated.join(weakest))
    else
      eval(expression)
    end.to_s
  end
end
