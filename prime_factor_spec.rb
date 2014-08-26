gem 'pry', '=0.9.12.6'
gem 'rspec'
require 'rspec'
require 'pry'
require File.expand_path("../prime_factor", __FILE__)

RSpec.describe PrimeFactor do
  let(:prime_f) { PrimeFactor.new }
  describe "#highest_prime_factor_of" do
    it "finds highest prime factor of a given number without ruby class Prime" do
      binding.pry
      expect(prime_f.highest_prime_factor_of(20)).to eq 5
    end
  end

  describe "#easy_prime_factors_for" do
    it "finds highest prime factor of a given number using ruby Prime class" do
      expect(prime_f.easy_prime_factors_for(20)).to eq 5
    end
  end

  describe "#find_max_prime" do
    let(:primes) { [2,3,5,6,9] }

    it "returns the maximum prime number from a privided array" do
      expect(prime_f.find_max_prime(primes)).to eq 5
    end

    it "returns nil for non prime array" do
      expect(prime_f.find_max_prime([4,8,12])).to eq nil
    end
  end
end
