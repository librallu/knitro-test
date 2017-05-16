a_x = 0
a_y = 0
b_x = 10
b_y = 0
c_x = 10
c_y = 10
d_x = 0
d_y = 10

obj = (((((b_x-a_x)*(c_y-a_y)-(b_y-a_y)*(c_x-a_x))+((c_x-a_x)*(d_y-a_y)-(c_y-a_y)*(d_x-a_x))-200)*(((b_x-a_x)*(c_y-a_y)-(b_y-a_y)*(c_x-a_x))+((c_x-a_x)*(d_y-a_y)-(c_y-a_y)*(d_x-a_x))-200)))

print("OBJ:"+str(obj))

print("INTEGS:")
print((a_x-b_x)*(d_y-b_y)-(a_y-b_y)*(d_x-b_x) <= 0)
print((b_x-c_x)*(a_y-c_y)-(b_y-c_y)*(a_x-c_x) <= 0)
print((b_x-c_x)*(d_y-c_y)-(b_y-c_y)*(d_x-c_x) <= 0)
print((c_x-d_x)*(a_y-d_y)-(c_y-d_y)*(a_x-d_x) <= 0)
print("DISTS:")
print((b_x-a_x)*(b_x-a_x)+(b_y-a_y)*(b_y-a_y) >= 0)
print((c_x-b_x)*(c_x-b_x)+(c_y-b_y)*(c_y-b_y) >= 0)
print((d_x-c_x)*(d_x-c_x)+(d_y-c_y)*(d_y-c_y) >= 0)
print((a_x-d_x)*(a_x-d_x)+(a_y-d_y)*(a_y-d_y) >= 0)
print("BOUNDS:")
print(0 <= a_x <= 20)
print(0 <= a_y <= 20)
print(0 <= b_x <= 20)
print(0 <= b_y <= 20)
print(0 <= c_x <= 20)
print(0 <= c_y <= 20)
print(0 <= d_x <= 20)
print(0 <= d_y <= 20)
