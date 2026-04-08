{ Fill in the following sections (removing comment marks ! if necessary),
  and delete those that are unused.}
TITLE 'New Problem'     { the problem identification }
COORDINATES cartesian2  { coordinate system, 1D,2D,3D, etc }
VARIABLES        { system variables }
  u              { choose your own names }
! SELECT         { method controls }
DEFINITIONS    { parameter definitions }
H=5 {metres per calcular les dimensions de pas}
p=800 {densitat en kg/(m^3)}
vm=0.007 {velocitat mitjana en m/s}
mu=1 {viscositat kg/(m*s)}
! INITIAL VALUES
EQUATIONS        { PDE's, one for each variable }
  div(grad(u))=0 { one possibility }
! CONSTRAINTS    { Integral constraints }
BOUNDARIES       { The domain definition }
  REGION 1       { For each material region }
    START(0,0)   { Walk the domain boundary }
    LINE TO (4*H,0) TO (4*H,H/4) TO (8*H,H/4) TO (8*H,(H*3)/4) TO (4*H,(H*3)/4) TO (4*H,H) TO (0,H) TO CLOSE
! TIME 0 TO 1    { if time dependent }
MONITORS         { show progress }
PLOTS            { save result displays }
  CONTOUR(u)
END
