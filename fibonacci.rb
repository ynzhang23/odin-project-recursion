def fibs(number)
  array = []
  if number == 0
    return array
  elsif number == 1
    return array = [0]
  else
    array = [0, 1]
    i = 2
    while i < number
      array[i] = array[-1] + array[-2]
      i += 1
    end
    return array
  end
end

def fibs_rec(number)
  return [] if number == 0
  return [0] if number == 1
  return [0, 1] if number == 2
  return fibs(number - 1) << fibs(number - 1)[-1] + fibs(number - 1)[-2]
end

puts fibs(8)