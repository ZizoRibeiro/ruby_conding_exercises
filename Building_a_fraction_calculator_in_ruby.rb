require 'rspec'

def fraction_calculator fraction_one, fraction_two, operator
  final_result = case operator
  when '/' then Rational(fraction_one) / Rational(fraction_two)
  when '*' then Rational(fraction_one) * Rational(fraction_two)
  when '+' then Rational(fraction_one) + Rational(fraction_two)
  when '-' then Rational(fraction_one) - Rational(fraction_two)
  end

  String(final_result)
end


describe 'Fraction calculator' do
  it 'can perform calculations on two fractions and output the value in a string based fraction format' do
    expect(fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
    expect(fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
    expect(fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
    expect(fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
  end
end
