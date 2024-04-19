def group_by_marks(marks, pass_marks)
  marks.group_by { |key, value| value >= pass_marks ? "Passed" : "Failed" }
end


# Or we can use each to group the marks
def group_by_marks_with_each(marks, pass_marks)
    result = {
      "Failed" => [],
      "Passed" => []
    }

    marks.each do |key, value|
      if value >= pass_marks
        result["Passed"] << [key, value]
      else
        result["Failed"] << [key, value]
      end
    end

    result.delete_if { |key, value| value.empty? }

    return result
end
