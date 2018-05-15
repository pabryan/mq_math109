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
︡07adc1e9-6ab1-41be-9080-c8ec59305c6c︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/8967/tmp_FQsV_B.svg","show":true,"text":null,"uuid":"d87f286f-2cb2-4942-8b97-544ea4dd46e0"},"once":false}︡{"done":true}︡
︠8753c699-4a6d-4a47-8bf1-8364585acf10s︠
# Euclid's Third Axiom
p = point(p1) + point(p2) + line([p1, p2]) + circle(p1, r, linestyle="dashed")
p.show(axes=False, aspect_ratio=1)
p.save('img/euclid_axiom3.png', axes=False, aspect_ratio=1)
︡21818636-338b-42f3-8798-560cea22007e︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/8967/tmp_grKvaL.svg","show":true,"text":null,"uuid":"e6d90c11-82f7-4f61-a4e2-bd97ecdb0f40"},"once":false}︡{"done":true}︡
︠d36ac193-7459-4b4a-adf1-4e1783338e47s︠
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
︡aa4b678f-0d5e-427a-89ba-c2b7e31b41c5︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/8967/tmp_gpWTX8.svg","show":true,"text":null,"uuid":"b1bfe455-d94f-49df-b156-96dc00b95c7b"},"once":false}︡{"done":true}︡
︠4040ca4e-cfa0-4c90-9df2-8c7e4e835cdas︠
# Euclid's Fifth Axiom

p = line([p1, p2]) + point(p1 + e1 + (1/2) * (p2-p1), size=50) + line([p1 + e1, p2 + e1], linestyle="dashed")
p.show(axes=False, aspect_ratio=1)
p.save('img/euclid_axiom5.png', axes=False, aspect_ratio=1)

︡cf485a5e-bd43-4f2d-9417-f577733878f7︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/8967/tmp_ucLkvv.svg","show":true,"uuid":"46a1a902-ef51-432b-bc83-a1394d3b0640"},"once":false}︡{"done":true}









