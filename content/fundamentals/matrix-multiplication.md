---
title: "Matrix Operations"
date: 2025-01-15
draft: false
tags: ["linear-algebra", "numpy", "fundamentals"]
---
dot product


import numpy as np
def matrix_dot_vector(a: list[list[int|float]], b: list[int|float]) -> list[int|float]:
	# Return a list where each element is the dot product of a row of 'a' with 'b'.
	# If the number of columns in 'a' does not match the length of 'b', return -1.
	a = np.array(a)
	b = np.array(b)
	if a.shape[1]==b.shape[0]:
		return np.dot(a,b)
	else:
		return -1

	pass

key learnings:
    np.shape, np.dot
    add content about the theory i wrote, 


transpose:
import numpy as np
def transpose_matrix(a: list[list[int|float]]) -> list[list[int|float]]:
    b = np.transpose(np.array(a))
	return b

key learnings:
    np.transpose


scalar multiplication:
import numpy as np
def scalar_multiply(matrix: list[list[int|float]], scalar: int|float) -> list[list[int|float]]:
    result = scalar * np.array(matrix)
	return result


Cosine similarity:
import numpy as np

def cosine_similarity(v1, v2):
	# Implement your code here

    v1 = np.array(v1)
    v2 = np.array(v2)

    result = (np.dot(v1,v2))/((np.linalg.norm(v1))*(np.linalg.norm(v2)))
    return result
	pass

key learnings:
    np.linalg.norm, np.dot
    The magnitude of a vector is also known as L2 norm:

    The magnitude of a vector is known as the L2 norm because it's derived from the more general formula for p-norms, and the L2 norm is calculated using the value '\(p=2\)'. This specific value results in the familiar calculation of the square root of the sum of the squares of the vector's components, which corresponds to the Euclidean distance—the standard "straight-line" distance we use in everyday life. The p-norm family: A "norm" is a function that measures the length or size of a vector. The general formula for a p-norm is the \(p\)-th root of the sum of the absolute values of each component raised to the power of \(p\).Substituting p = 2: When you substitute \(p=2\) into this general formula, you get the L2 norm:The L2 norm of a vector \(\vec{x}\) is calculated as \((\sum _{i=1}^{n}|x_{i}|^{2})^{1/2}\)