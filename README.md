# Shortest-Path-Algorithms
Part 1 – Dijkstra’s algorithm (8 marks).  
For a graph with k nodes, the adjacency matrix A is a k-by-k matrix that indicates how the nodes are connected; the element Aij = 1 if there is an edge between nodes i and j, and 0 if there is no edge between the nodes.  
Here the rows and columns of A are numbered in order 1, 2, 3, 4; thus, for instance, we have A12 = 1 (in the first row and second column), because nodes 1 and 2 are connected; and A13 = A14 = 0, because node 1 is not connected to nodes 3 or 4. Note that the adjacency matrix is symmetric (i.e., the transpose of A is equal to A): if node 1 is connected to node 2, then node 2 is connected to node 1.  
In the following, assume the network contains 6 nodes. Write the following function:  
• [v, c] = dijkstra(A, o, d): Here A is the 6-by-6 adjacency matrix of a graph (with edge costs), o is the origin node (1,2,…,6), and d is the destination node (1,2,…,6). The function finds the shortest path from o to d using Dijkstra’s algorithm. The function returns v, the vector representing the lowest-cost path, and c, the cost of traversing the path. For example, if o = 4 and d = 6, and the shortest path goes 4-1-2-6 with cost 5, then the function returns v = [4 1 2 6] and c = 5.  
The function should print the intermediate steps of the algorithm to show that it is correctly implementing Dijkstra’s algorithm. (How you do this is up to you, but it should be similar to the demonstrations in class.)  
NOTE: If you are using a language other than MATLAB, define a class (or equivalent) so you can return both v and c. Explain your design choice in the comments.  

Part 2 – Bellman-Ford algorithm (8 marks).  
Repeat part 1, using the Bellman-Ford algorithm instead of Dijkstra’s algorithm. The function signature should be:  
• [v, c] = bellman_ford(A, o, d): All parameters and return values are the same as for Dijkstra’s algorithm.  
Again, the function should print the intermediate steps of the algorithm to show that it is correctly implementing the Bellman-Ford algorithm.  

Part 3 – Arbitrary networks, all paths (4 marks).  
Modify your functions to accept networks with an arbitrary number of nodes. Furthermore, for k nodes, the function’s return value V should now be a k-by-k matrix with the paths to/from ALL other nodes in the network. The jth row should be the path to/from node j; not all paths will have length k, so beyond the end of the path, the rest of the row should be filled with zeros. Furthermore, the return value c should be a vector containing the cost of each path. The function signatures are  
• [V, c] = dijkstra_p3(A, o): Finds the lowest-cost paths to all other nodes in A with origin o.  
• [V, c] = bellman_ford_p3(A, d): Finds the lowest-cost paths to all other nodes in A with destination d.  
