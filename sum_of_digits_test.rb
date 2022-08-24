require './recursive_sum_of_digits'
require './sum_of_digits'

%w(SumOfDigits RecursiveSumOfDigits).each do |klass|
  describe Object.const_get(klass) do
    it "#{Object.const_get(klass)} takes a number as an input and generates an output by adding each digit" do
      expect(Object.const_get(klass).run!(0)).to eq 0
      expect(Object.const_get(klass).run!(10)).to eq 1
      expect(Object.const_get(klass).run!(16)).to eq 7
      expect(Object.const_get(klass).run!(942)).to eq 6
      expect(Object.const_get(klass).run!(132_189)).to eq 6
      expect(Object.const_get(klass).run!(493_193)).to eq 2
      expect(Object.const_get(klass).run!(412_263_151)).to eq 7
      expect(Object.const_get(klass).run!(111_111_111_111)).to eq 3
      expect(Object.const_get(klass).run!(000_000_000_000)).to eq 0
    end
  end
end
