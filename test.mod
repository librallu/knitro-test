var a_x; var a_y;
var b_x; var b_y;
var c_x; var c_y;
var d_x; var d_y;

minimize obj: (((((b_x-a_x)*(c_y-a_y)-(b_y-a_y)*(c_x-a_x))+((c_x-a_x)*(d_y-a_y)-(c_y-a_y)*(d_x-a_x))-200)*(((b_x-a_x)*(c_y-a_y)-(b_y-a_y)*(c_x-a_x))+((c_x-a_x)*(d_y-a_y)-(c_y-a_y)*(d_x-a_x))-200)));

subject to poly_integ_0_3: (a_x-b_x)*(d_y-b_y)-(a_y-b_y)*(d_x-b_x) <= 0;
subject to poly_integ_1_0: (b_x-c_x)*(a_y-c_y)-(b_y-c_y)*(a_x-c_x) <= 0;
subject to poly_integ_1_3: (b_x-c_x)*(d_y-c_y)-(b_y-c_y)*(d_x-c_x) <= 0;
subject to poly_integ_2_0: (c_x-d_x)*(a_y-d_y)-(c_y-d_y)*(a_x-d_x) <= 0;

subject to dist_ab: (b_x-a_x)*(b_x-a_x)+(b_y-a_y)*(b_y-a_y) >= 0;
subject to dist_bc: (c_x-b_x)*(c_x-b_x)+(c_y-b_y)*(c_y-b_y) >= 0;
subject to dist_cd: (d_x-c_x)*(d_x-c_x)+(d_y-c_y)*(d_y-c_y) >= 0;
subject to dist_da: (a_x-d_x)*(a_x-d_x)+(a_y-d_y)*(a_y-d_y) >= 0;

subject to bound_x_a: 0 <= a_x <= 20;
subject to bound_y_a: 0 <= a_y <= 20;
subject to bound_x_b: 0 <= b_x <= 20;
subject to bound_y_b: 0 <= b_y <= 20;
subject to bound_x_c: 0 <= c_x <= 20;
subject to bound_y_c: 0 <= c_y <= 20;
subject to bound_x_d: 0 <= d_x <= 20;
subject to bound_y_d: 0 <= d_y <= 20;

solve;

display a_x, a_y;
display b_x, b_y;
display c_x, c_y;
display d_x, d_y;
