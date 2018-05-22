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

︡cf485a5e-bd43-4f2d-9417-f577733878f7︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/8967/tmp_ucLkvv.svg","show":true,"text":null,"uuid":"46a1a902-ef51-432b-bc83-a1394d3b0640"},"once":false}︡{"done":true}︡
︠865a656d-680c-4406-b42e-221589dabd63s︠
# Euclid's Fifth Axiom in Descartes Model
v = (p2 - p1).normalized()
vperp = vector([-v[1], v[0]]).normalized()
w = ((1/2) * v + (1/3) * vperp).normalized()

q1 = p1 + (1/2) * v
q2 = q1 + (3/2)*e1

L1 = point(q1, size=50) + line([q1 - 2*v, q1 + 3*v]) + arrow(q1, q1 + v) + text(r"$p$", q1 - 0.3 * e1) + text(r"$L$", q1-2*v + 0.2 * e1) + text(r"$q$", q1 + 0.4 * e1 + 0.5 * e2)
L2 = point(q2, size=50) + line([q2 - 2*v, q2 + 3*v]) + arrow(q2, q2 + v) + text(r"$r$", q2 + 0.3 * e1) + text(r"$q$", q2 + 0.5 * e1 + 0.6 * e2) + text(r"$L'$", q2 - 2*v + 0.2 * e1)
L3 = line([q2 - 2*w, q2 + 3*w]) + arrow(q2, q2 + w) + text(r"$w$", q2 - 0.3 * e1 + 0.6 * e2) + text(r"$\bar{L}$", q2 - 2*w + 0.2 * e1)


p = L1 + L2
p.show(axes=False, aspect_ratio=1)
p.save('img/euclid_axiom5_descartes.png', axes=False, aspect_ratio=1)

L2 = L2 + arrow(q2, q2 + vperp) + text(r"$q^{\perp}$", q2 - 0.6* e1 + 0.1 * e2)
p = L1 + L2 + L3
p.show(axes=False, aspect_ratio=1)
p.save('img/euclid_axiom5_descartes_proof.png', axes=False, aspect_ratio=1)
︡9063a3d2-b259-4edf-ad93-e61ad8c36c92︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/8967/tmp_ZXkFT7.svg","show":true,"text":null,"uuid":"e4469d6f-6674-45fc-b8b8-b18232627aa8"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-746c2d02-fba9-41f7-86c8-dbce79185bad/8967/tmp_N0TD0X.svg","show":true,"text":null,"uuid":"cd5ddc5f-daed-4f6f-86de-26c2066decab"},"once":false}︡{"done":true}︡
︠7920b99c-bd16-4dad-8647-eb6cb631a2f4s︠
# Plot the sphere with points, lines, circles and right-angles illustrated
from sage.plot.plot3d.transform import rotate_arbitrary
t = var('t')
S = sphere(mesh=True, opacity=0.8)

x1 = point((0, 0, 1), size=10, color="red")
x2 = point((1, 0, 0), size=10, color="red")
x3 = point((1/sqrt(3), -1/sqrt(3), 1/sqrt(3)), size=10, color="red")


L1 = vector([cos(t), sin(t), 0])
M12 = rotate_arbitrary((1,1,1), pi/2)
L2 = M12 * L1
M13 = rotate_arbitrary((1, 0, 0), pi/2)
L3 = M13 * L1

r = 1/2
N12 = rotate_arbitrary((1,1,1), -pi/2)
C1 = vector([r*cos(t), r*sin(t), sqrt(1-r^2)])
C2 = N12 * C1

pL1 = parametric_plot3d(L1, (t, 0, 2*pi), color="red", thickness=5)
pL2 = parametric_plot3d(L2, (t, 0, 2*pi), color="red", thickness=5)
pL3 = parametric_plot3d(L3, (t, 0, 2*pi), color="red", thickness=5)

pC1 = parametric_plot3d(C1, (t, 0, 2*pi), color="red", thickness=5)
pC2 = parametric_plot3d(C2, (t, 0, 2*pi), color="red", thickness=5)

p1 = x1 + x2 + x3 + S
p2 = S + pL1 + pL2
p3 = S + pC1 + pC2
p4 = S + pL1 + pL3

p1.show(frame=False, aspect_ratio=1)
p2.show(frame=False, aspect_ratio=1)
p3.show(frame=False, aspect_ratio=1)
p4.show(frame=False, aspect_ratio=1)

p1.save("img/sphere_axiom1.png", frame=False, aspect_ratio=1)
p2.save("img/sphere_axiom2.png", frame=False, aspect_ratio=1)
p3.save("img/sphere_axiom3.png", frame=False, aspect_ratio=1)
p4.save("img/sphere_axiom4.png", frame=False, aspect_ratio=1)

︡8b6d2601-0488-4ab1-85cf-cace49fbc693︡{"file":{"filename":"57680980-50bc-4b1c-b259-b9deeee6b461.sage3d","uuid":"57680980-50bc-4b1c-b259-b9deeee6b461"}}︡{"file":{"filename":"dba67dc3-eb13-4ede-acdc-f0dd6b8e2b64.sage3d","uuid":"dba67dc3-eb13-4ede-acdc-f0dd6b8e2b64"}}︡{"file":{"filename":"6156602f-28d5-4976-9957-e706ea4ac742.sage3d","uuid":"6156602f-28d5-4976-9957-e706ea4ac742"}}︡{"file":{"filename":"02d2ccb6-96db-4030-8c76-fbc3e9914686.sage3d","uuid":"02d2ccb6-96db-4030-8c76-fbc3e9914686"}}︡{"done":true}︡
︠a96df27b-56c9-4224-9421-e3d4ee350214s︠
# Plot the hyperboloid with points, lines, circles and right-angles illustrated
from sage.plot.plot3d.transform import rotate_arbitrary
t = var('t')
x, y, z = var('x,y,z')
f(x, y, z) = x^2 + y^2 - z^2 + 1
H = p = implicit_plot3d(f,(x,-4,4),(y,-4,4),(z,1,4), mesh=True, opacity=0.6)

x1 = point((0, 0, 1), size=10, color="red")
x2 = point((2, 0, sqrt(5)), size=10, color="red")
x3 = point((2/sqrt(3), 2/sqrt(3), sqrt(11/3)), size=10, color="red")

def lorentz_boost(V):
    v = V.norm()
    gamma = 1/(sqrt(1 - v^2))
    M = matrix(RR, 3)
    M[2, 2] = gamma
    M[2,0:2] = -gamma*V
    M[0:2,2] = -gamma*V

    M[0:2, 0:2] = ((gamma-1)/v^2) * V.tensor_product(V) + matrix.identity(2)

    return M

V = vector([1/2, 1/2])
M12 = lorentz_boost(V)
M13 = rotate_arbitrary((0,0,1), pi/2)
L1 = vector([sinh(t), 0, cosh(t)])
L2 = M12 * L1
L3 = M13 * L1
L4 = M12 * L3

r = 1
C1 = vector([r*cos(t), r*sin(t), sqrt(1+r^2)])
C2 = M12 * C1

tmin=-2
tmax=2
pL1 = parametric_plot3d(L1, (t, tmin, tmax), color="red", thickness=5)
pL2 = parametric_plot3d(L2, (t, tmin+3/4, tmax+1/4), color="red", thickness=5)
pL3 = parametric_plot3d(L3, (t, tmin, tmax), color="red", thickness=5)
pL4 = parametric_plot3d(L2, (t, tmin+3/4, tmax+1/4), color="green", thickness=5)
pL5 = parametric_plot3d(L4, (t, tmin-1/4, tmax-1), color="green", thickness=5)


pC1 = parametric_plot3d(C1, (t, 0, 2*pi), color="red", thickness=5)
pC2 = parametric_plot3d(C2, (t, 0, 2*pi), color="red", thickness=5)

M16 = rotate_arbitrary((0, 0, 1), 0.2)
L6 = M12 * M16 * L1
pL6 = parametric_plot3d(L6, (t, tmin+3/4, tmax+1/4), color="yellow", thickness=5)

f1 = y
P1 = implicit_plot3d(f1, (x, -3, 3), (y, -3, 3), (z,-1,5), color="gray")
q1 = M12*(L1.substitute(t=0))
N1 = M12 * vector([0, 1, 0])
f2 = N1[0] * x + N1[1] * y - N1[2]*z
P2 = implicit_plot3d(f2, (x, -3, 3), (y, -3, 3), (z,-1,5), color="gray")

p1 = H + x1 + x2 + x3
p2 = H + pL1 + pL2
p3 = H + pC1 + pC2
p4 = H + pL1 + pL3 + pL4 + pL5
p5 = H + pL1 + pL4 + pL6 + point(q1, size=10, color="black")
p6 = H + pL1 + pL2 + P1 + P2
︡0520c629-8b6c-48c7-a70b-41c5ce0157a0︡
︠67ed8fb9-78e6-411d-a553-8a0ad60650cfs︠

q1 = p1.rotate((1,1,0), pi/3)
q2 = p2.rotate((1,1,0), pi/3)
q3 = p3.rotate((1,1,0), pi/3)
q4 = p4.rotate((1,1,0), pi/2)
q5 = p5.rotate((1,1,0), pi/2)
q6 = p6.rotate((0,0,1), 0)

q1.show(frame=False, aspect_ratio=1)
q2.show(frame=False, aspect_ratio=1)
q3.show(frame=False, aspect_ratio=1)
q4.show(frame=False, aspect_ratio=1)
q5.show(frame=False, aspect_ratio=1)
q6.show(frame=False, aspect_ratio=1)

q1.save("img/hyperbolic_axiom1.png", frame=False, aspect_ratio=1)
q2.save("img/hyperbolic_axiom2.png", frame=False, aspect_ratio=1)
q3.save("img/hyperbolic_axiom3.png", frame=False, aspect_ratio=1)
q4.save("img/hyperbolic_axiom4.png", frame=False, aspect_ratio=1)
q5.save("img/hyperbolic_axiom5.png", frame=False, aspect_ratio=1)
q6.save("img/hyperbolic_lines_planes.png", frame=False, aspect_ratio=1)

︡a00ef7c9-25ed-4dea-af7c-ef00c878d999︡{"file":{"filename":"5a5f03cc-8c2e-43d6-a16a-5bf31a32e7cb.sage3d","uuid":"5a5f03cc-8c2e-43d6-a16a-5bf31a32e7cb"}}︡{"file":{"filename":"8ca0d0c9-cf4f-4888-a8b2-99d54deeed93.sage3d","uuid":"8ca0d0c9-cf4f-4888-a8b2-99d54deeed93"}}︡{"file":{"filename":"e5b2eb6e-3d48-45b7-9a79-a03622a0db90.sage3d","uuid":"e5b2eb6e-3d48-45b7-9a79-a03622a0db90"}}︡{"file":{"filename":"c44bd56c-a63c-4203-9e9e-3f67c334f518.sage3d","uuid":"c44bd56c-a63c-4203-9e9e-3f67c334f518"}}︡{"file":{"filename":"2fab5c01-de11-45cd-9909-1401f5feef51.sage3d","uuid":"2fab5c01-de11-45cd-9909-1401f5feef51"}}︡{"file":{"filename":"bb42f59c-b737-4fa8-bd49-6ee8d00018d5.sage3d","uuid":"bb42f59c-b737-4fa8-bd49-6ee8d00018d5"}}︡{"done":true}︡
︠5c28ec33-82f6-4353-a191-26d317d0a698︠










