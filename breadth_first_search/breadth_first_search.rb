def bfs(n, m, edges, s)
  # Write your code here
  dist = Array.new(n + 1, INF)
  dist[s] = 0

  graph = Hash.new { |hash, key| hash[key] = [] }
  edges.each do |node_a, node_b|
      graph[node_a] << node_b
      graph[node_b] << node_a
  end

  queue = [s]
  visited = Set.new([s])

  until queue.empty?
      curr_node = queue.shift

      graph[curr_node].each do |neighbour|
          next if visited.include?(neighbour)

          visited.add(neighbour)
          queue << neighbour
          if dist[curr_node] + EDGE_WEIGHT < dist[neighbour]
              dist[neighbour] = dist[curr_node] + EDGE_WEIGHT
          end
      end
  end

  res = dist.map { |x| x == INF ? -1 : x }
  return res[1...s] + res[(s + 1)..]

end
