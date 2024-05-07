def grading_students(grades)
  # Write your code here
 rounded_grade = []
  grades.each do |grade|
      if grade < 38
          rounded_grade << grade
      elsif grade % 5 > 2
          rounded_grade << (grade - (grade % 5) + 5)
      else
          rounded_grade << grade
      end
  end
  return rounded_grade
end
