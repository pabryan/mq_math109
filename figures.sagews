︠182ec2d3-c15a-4569-b4e3-fff03f059eebs︠
e1 = vector([1, 0])
e2 = vector([0, 1])

p1 = vector([0, 0])
p2 = vector([1, 2])
p3 = vector([2, 4])

r = (p2 - p1).norm()

︡b5b1131c-66a5-44fe-8dc6-2707801ba302︡{"done":true}︡
︠ec55c459-6911-4960-b94f-5e7e8bc49079s︠
# Euclid's First Axiom
p = point(p1, size=50) + point(p2, size=50) + line([p1, p2], linestyle="dashed")

p.show(axes=False, aspect_ratio=1)
p.save('img/euclid_axiom1.png', axes=False, aspect_ratio=1)
︡9e274a11-441d-46ea-95a9-e371f12f99d6︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/8967/tmp_ma_SHe.svg","show":true,"text":null,"uuid":"9fb5bbcc-094b-4a06-9ea5-757808205459"},"once":false}︡{"done":true}︡
︠963e74d1-09bb-4709-9f6c-acbef5831ad5s︠
# Euclid's Second Axiom
p = line([p1, p2]) + line([p2, p3], linestyle="dashed")
p.show(axes=False, aspect_ratio=1)
p.save('img/euclid_axiom2.png', axes=False, aspect_ratio=1)
︡07adc1e9-6ab1-41be-9080-c8ec59305c6c︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/8967/tmp_FQsV_B.svg","show":true,"uuid":"d87f286f-2cb2-4942-8b97-544ea4dd46e0"},"once":false}︡{"done":true}
︠8753c699-4a6d-4a47-8bf1-8364585acf10︠
# Euclid's Third Axiom
p = point(p1) + point(p2) + line([p1, p2]) + circle(p1, r, linestyle="dashed")
p.show(axes=False, aspect_ratio=1)
p.save('img/euclid_axiom3.png', axes=False, aspect_ratio=1)
︡593b9b2e-4c23-4a54-a1f6-21fe6d2c7d77︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/8967/tmp_VwSQCP.svg","show":true,"text":null,"uuid":"976d30f9-b12d-492e-a962-71fc17ae07ee"},"once":false}︡{"done":true}︡
︠d36ac193-7459-4b4a-adf1-4e1783338e47︠
# Euclid's Fourth Axiom
p = line([p1 - e1, p1 + e1]) + line([p1 - e2, p1 + e2])

theta = pi/3
R = matrix([[sin(theta), -cos(theta)], [cos(theta), sin(theta)]])
Re1 = R * e1
Re2 = R * e2

q = line([p1 - R*e1, p1 + R*e1]) + line([p1 - R*e2, p1 + R*e2])

t = text("=", p1, fontsize="x-large")

g = graphics_array([p, t, q])
g.show(axes=False, aspect_ratio=1)
g.save('img/euclid_axiom4.png', axes=False, aspect_ratio=1)
︡e95bba0f-9bd1-4aa3-9a8b-47eb9c105071︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/8967/tmp_cMEZgy.svg","show":true,"text":null,"uuid":"2c3bfbac-decd-43ba-897a-23341696a2d9"},"once":false}︡{"done":true}︡









