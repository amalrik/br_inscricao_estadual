module BrInscricaoEstadual
  class ES < Common
    protected
      DIGITS_ZERO = [0,1]

    def calculate_verify(peso)
    	result = (calculate(peso)%11)
			digit_verify_inscription(result)      
    end

    def digit_verify_inscription(result)
      if result < 2
         0
      elsif result > 1
        11 - result
      end
    end
      
  end
end
