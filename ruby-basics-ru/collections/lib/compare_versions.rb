# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
  if(ver1 == ver2)
	0
  else
    strarr1 = ver1.split('.');
    strarr2 = ver2.split('.');
    if(strarr1[0].to_i > strarr2[0].to_i)
      1
    elsif(strarr1[0].to_i < strarr2[0].to_i)
      -1
    else
	  if(strarr1[1].to_i > strarr2[1].to_i)
		1
	  elsif(strarr1[1].to_i < strarr2[1].to_i)
		-1
	  end
    end
  end
end
# END
