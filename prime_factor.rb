require 'prime'
class PrimeFactor
  def highest_prime_factor_of context_num
    pivot = 3
    primes = [2,3]

    while pivot < context_num
      pivot += 2
      sqroot = Math.sqrt(context_num).ceil
      next unless context_num % pivot == 0
      is_prime = true
      primes.each do |prime|
        is_prime = false and break if prime > sqroot
        is_prime = false and break if pivot % prime == 0
      end
      primes << pivot if is_prime
    end
    primes.max
  end

  def easy_prime_factors_for context_num
    factors = Prime.prime_division(context_num).flatten!.uniq!
    find_max_prime factors
  end

  def find_max_prime primes
    return if primes.empty?
    maximum = primes.max
    return maximum if Prime.prime? maximum
    primes.delete maximum
    find_max_prime primes
  end
end
