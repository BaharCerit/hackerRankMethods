MOD = 10**9 + 7
MAX_SIZE = 1000 + 1

def legoBlocks(n, m)
    all_solutions = Array.new(MAX_SIZE) { Array.new(MAX_SIZE, -1) }
    solid_solutions = Array.new(MAX_SIZE) { Array.new(MAX_SIZE, -1) }

    get_solid_solutions(n, m, all_solutions, solid_solutions)
end

def get_all_solutions(height, width, all_solutions)
    return all_solutions[height][width] if all_solutions[height][width] != -1

    count = 0
    if width == 1
        count = 1
    elsif height == 1
        if width <= 4
            count = 2 * get_all_solutions(1, width - 1, all_solutions)
        else
            count = 0
            (1..4).each do |i|
                count += get_all_solutions(1, width - i, all_solutions)
                count %= MOD
            end
        end
    else
        one_row_solutions = get_all_solutions(1, width, all_solutions)
        count = 1
        height.times do
            count *= one_row_solutions
            count %= MOD
        end
    end

    all_solutions[height][width] = count
    count
end

def get_solid_solutions(height, width, all_solutions, solid_solutions)
    return solid_solutions[height][width] if solid_solutions[height][width] != -1

    count = 0
    if width == 1
        count = 1
    else
        count = get_all_solutions(height, width, all_solutions)
        (1...width).each do |i|
            a = get_all_solutions(height, i, all_solutions)
            b = get_solid_solutions(height, width - i, all_solutions, solid_solutions)
            count -= (a * b) % MOD
            count += MOD if count < 0
        end
    end

    solid_solutions[height][width] = count
    count
end
