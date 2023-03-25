# frozen_string_literal: true

# BEGIN
def fibonacci(n)
	if (n == 0)
		return 0;
	end	
	if n < 0
		return nil
	end
    if (n == 1 || n == 2)
        return 1
    end
    return fibonacci(n - 1) + fibonacci(n - 2)
end
# END
