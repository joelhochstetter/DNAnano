// switches for output
#declare DRAW_BASES = 1; // possible values are 0, 1; only relevant for DNA ribbons
#declare DRAW_BASES_TYPE = 3; // possible values are 1, 2, 3; only relevant for DNA ribbons
#declare DRAW_FOG = 0; // set to 1 to enable fog

#include "colors.inc"

#include "transforms.inc"
background { rgb <1, 1, 1>}

#default {
   normal{
       ripples 0.25
       frequency 0.20
       turbulence 0.2
       lambda 5
   }
	finish {
		phong 0.1
		phong_size 40.
	}
}

// original window dimensions: 1024x640


// camera settings

camera {
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.710880, 36.299278, 49.806194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630493, 35.910904, 49.754200>,  <40.582260, 35.677879, 49.723003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630493, 35.910904, 49.754200>,  <40.710880, 36.299278, 49.806194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630493, 35.910904, 49.754200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848636, -0.238842, 0.471986,
		-0.489314, -0.015456, 0.871971,
		-0.200969, -0.970935, -0.129985,
		40.570202, 35.619625, 49.715206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802502, 35.977966, 50.401863>,  <40.710880, 36.299278, 49.806194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802502, 35.977966, 50.401863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836563, 35.674480, 50.143532>,  <40.856998, 35.492390, 49.988533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836563, 35.674480, 50.143532>,  <40.802502, 35.977966, 50.401863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836563, 35.674480, 50.143532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850876, -0.281883, 0.443342,
		-0.518420, -0.587274, 0.621571,
		0.085153, -0.758717, -0.645831,
		40.862110, 35.446865, 49.949783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152874, 35.512218, 50.738712>,  <40.802502, 35.977966, 50.401863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152874, 35.512218, 50.738712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222069, 35.346077, 50.381489>,  <41.263588, 35.246391, 50.167152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222069, 35.346077, 50.381489>,  <41.152874, 35.512218, 50.738712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222069, 35.346077, 50.381489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919081, -0.257884, 0.297969,
		-0.354068, -0.872341, 0.337129,
		0.172990, -0.415350, -0.893061,
		41.273964, 35.221474, 50.113571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491222, 34.844376, 50.841915>,  <41.152874, 35.512218, 50.738712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491222, 34.844376, 50.841915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575851, 34.925060, 50.459389>,  <41.626629, 34.973473, 50.229874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575851, 34.925060, 50.459389>,  <41.491222, 34.844376, 50.841915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575851, 34.925060, 50.459389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923634, -0.361216, 0.128153,
		-0.319587, -0.910403, -0.262735,
		0.211575, 0.201715, -0.956319,
		41.639324, 34.985577, 50.172493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839279, 34.241829, 50.685501>,  <41.491222, 34.844376, 50.841915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839279, 34.241829, 50.685501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928730, 34.537022, 50.430828>,  <41.982403, 34.714138, 50.278023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928730, 34.537022, 50.430828>,  <41.839279, 34.241829, 50.685501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928730, 34.537022, 50.430828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945063, -0.323972, -0.043575,
		-0.238426, -0.591963, -0.769891,
		0.223629, 0.737985, -0.636686,
		41.995819, 34.758415, 50.239822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301155, 33.966888, 50.120598>,  <41.839279, 34.241829, 50.685501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301155, 33.966888, 50.120598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369183, 34.360500, 50.099583>,  <42.410000, 34.596668, 50.086975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369183, 34.360500, 50.099583>,  <42.301155, 33.966888, 50.120598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369183, 34.360500, 50.099583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985429, -0.169683, 0.011706,
		0.002605, -0.053760, -0.998551,
		0.170066, 0.984031, -0.052534,
		42.420204, 34.655708, 50.083824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847050, 34.106071, 49.556141>,  <42.301155, 33.966888, 50.120598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847050, 34.106071, 49.556141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828503, 34.397209, 49.829811>,  <42.817375, 34.571892, 49.994011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828503, 34.397209, 49.829811>,  <42.847050, 34.106071, 49.556141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828503, 34.397209, 49.829811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984446, -0.082890, 0.154903,
		0.169456, 0.680713, -0.712681,
		-0.046370, 0.727845, 0.684172,
		42.814590, 34.615562, 50.035061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450920, 34.642349, 49.367508>,  <42.847050, 34.106071, 49.556141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450920, 34.642349, 49.367508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345005, 34.679634, 49.751423>,  <43.281456, 34.702003, 49.981773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345005, 34.679634, 49.751423>,  <43.450920, 34.642349, 49.367508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345005, 34.679634, 49.751423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959285, -0.075970, 0.272031,
		0.098272, 0.992744, -0.069301,
		-0.264792, 0.093212, 0.959790,
		43.265568, 34.707596, 50.039360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029453, 34.974049, 49.636269>,  <43.450920, 34.642349, 49.367508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029453, 34.974049, 49.636269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830261, 34.894020, 49.973785>,  <43.710747, 34.846001, 50.176296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830261, 34.894020, 49.973785>,  <44.029453, 34.974049, 49.636269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.830261, 34.894020, 49.973785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855120, 0.048490, 0.516158,
		-0.144185, 0.978580, 0.146940,
		-0.497977, -0.200074, 0.843795,
		43.680870, 34.834000, 50.226925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137215, 35.432495, 50.174789>,  <44.029453, 34.974049, 49.636269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137215, 35.432495, 50.174789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026245, 35.103107, 50.372753>,  <43.959663, 34.905476, 50.491531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026245, 35.103107, 50.372753>,  <44.137215, 35.432495, 50.174789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026245, 35.103107, 50.372753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841241, 0.040613, 0.539132,
		-0.464058, 0.565908, 0.681468,
		-0.277423, -0.823467, 0.494912,
		43.943020, 34.856068, 50.521225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360119, 35.560879, 50.847321>,  <44.137215, 35.432495, 50.174789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360119, 35.560879, 50.847321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.325760, 35.162357, 50.847038>,  <44.305145, 34.923244, 50.846870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.325760, 35.162357, 50.847038>,  <44.360119, 35.560879, 50.847321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.325760, 35.162357, 50.847038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923276, -0.079870, 0.375742,
		-0.374409, 0.031629, 0.926724,
		-0.085902, -0.996303, -0.000701,
		44.299988, 34.863468, 50.846828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303570, 35.321007, 51.575382>,  <44.360119, 35.560879, 50.847321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303570, 35.321007, 51.575382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435051, 35.035881, 51.327557>,  <44.513939, 34.864807, 51.178860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435051, 35.035881, 51.327557>,  <44.303570, 35.321007, 51.575382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435051, 35.035881, 51.327557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880779, -0.005400, 0.473497,
		-0.340859, -0.701336, 0.626054,
		0.328699, -0.712811, -0.619562,
		44.533661, 34.822037, 51.141689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798347, 34.932304, 51.974255>,  <44.303570, 35.321007, 51.575382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798347, 34.932304, 51.974255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867798, 34.803768, 51.601891>,  <44.909470, 34.726646, 51.378471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867798, 34.803768, 51.601891>,  <44.798347, 34.932304, 51.974255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867798, 34.803768, 51.601891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956807, -0.168777, 0.236715,
		-0.233182, -0.931803, 0.278154,
		0.173625, -0.321338, -0.930911,
		44.919884, 34.707367, 51.322617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051693, 34.222614, 52.052372>,  <44.798347, 34.932304, 51.974255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051693, 34.222614, 52.052372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183296, 34.384377, 51.711029>,  <45.262257, 34.481434, 51.506226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183296, 34.384377, 51.711029>,  <45.051693, 34.222614, 52.052372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183296, 34.384377, 51.711029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919106, -0.344586, 0.191061,
		-0.216789, -0.847184, -0.485059,
		0.329008, 0.404401, -0.853354,
		45.281998, 34.505695, 51.455021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560860, 33.715611, 51.866585>,  <45.051693, 34.222614, 52.052372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560860, 33.715611, 51.866585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.636662, 34.023018, 51.622135>,  <45.682144, 34.207462, 51.475468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.636662, 34.023018, 51.622135>,  <45.560860, 33.715611, 51.866585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.636662, 34.023018, 51.622135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977144, -0.208662, 0.040605,
		-0.096312, -0.604848, -0.790496,
		0.189507, 0.768517, -0.611120,
		45.693512, 34.253574, 51.438801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.054626, 33.503872, 51.361935>,  <45.560860, 33.715611, 51.866585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.054626, 33.503872, 51.361935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070614, 33.901939, 51.397812>,  <46.080208, 34.140778, 51.419338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070614, 33.901939, 51.397812>,  <46.054626, 33.503872, 51.361935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.070614, 33.901939, 51.397812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996007, -0.046853, 0.075997,
		0.079832, 0.086298, -0.993066,
		0.039970, 0.995167, 0.089694,
		46.082603, 34.200489, 51.424721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.693642, 33.765308, 50.977806>,  <46.054626, 33.503872, 51.361935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.693642, 33.765308, 50.977806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.600105, 34.075008, 51.213047>,  <46.543983, 34.260826, 51.354191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.600105, 34.075008, 51.213047>,  <46.693642, 33.765308, 50.977806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.600105, 34.075008, 51.213047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971646, 0.164337, 0.169995,
		0.034971, 0.611177, -0.790721,
		-0.233842, 0.774245, 0.588101,
		46.529953, 34.307281, 51.389477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.160564, 34.308395, 50.697735>,  <46.693642, 33.765308, 50.977806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.160564, 34.308395, 50.697735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.060921, 34.424622, 51.067280>,  <47.001137, 34.494358, 51.289005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.060921, 34.424622, 51.067280>,  <47.160564, 34.308395, 50.697735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.060921, 34.424622, 51.067280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926530, 0.349202, 0.139997,
		-0.281936, 0.890860, -0.356203,
		-0.249105, 0.290563, 0.923861,
		46.986191, 34.511791, 51.344437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.610023, 34.897667, 50.819347>,  <47.160564, 34.308395, 50.697735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.610023, 34.897667, 50.819347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.514557, 34.792377, 51.193245>,  <47.457279, 34.729202, 51.417583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.514557, 34.792377, 51.193245>,  <47.610023, 34.897667, 50.819347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.514557, 34.792377, 51.193245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890979, 0.323510, 0.318588,
		-0.386260, 0.908875, 0.157317,
		-0.238663, -0.263224, 0.934748,
		47.442959, 34.713409, 51.473671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.819534, 35.442749, 51.388008>,  <47.610023, 34.897667, 50.819347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.819534, 35.442749, 51.388008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.774593, 35.099579, 51.588547>,  <47.747631, 34.893677, 51.708870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.774593, 35.099579, 51.588547>,  <47.819534, 35.442749, 51.388008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.774593, 35.099579, 51.588547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931214, 0.085149, 0.354387,
		-0.346725, 0.506677, 0.789342,
		-0.112348, -0.857921, 0.501348,
		47.740891, 34.842201, 51.738953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.807945, 35.580368, 52.154308>,  <47.819534, 35.442749, 51.388008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.807945, 35.580368, 52.154308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.896004, 35.191586, 52.121246>,  <47.948837, 34.958317, 52.101410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.896004, 35.191586, 52.121246>,  <47.807945, 35.580368, 52.154308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.896004, 35.191586, 52.121246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901130, 0.170193, 0.398746,
		-0.373497, -0.162268, 0.913329,
		0.220145, -0.971959, -0.082658,
		47.962048, 34.899998, 52.096447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.448534, 34.957153, 51.715092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.507006, 35.342083, 51.806805>,  <24.542089, 35.573040, 51.861832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.507006, 35.342083, 51.806805>,  <24.448534, 34.957153, 51.715092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.507006, 35.342083, 51.806805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863137, -0.010829, -0.504853,
		-0.483348, 0.271699, -0.832198,
		0.146180, 0.962321, 0.229280,
		24.550859, 35.630779, 51.875587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.625566, 35.277393, 51.085125>,  <24.448534, 34.957153, 51.715092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.625566, 35.277393, 51.085125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.765566, 35.508255, 51.380257>,  <24.849566, 35.646774, 51.557335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.765566, 35.508255, 51.380257>,  <24.625566, 35.277393, 51.085125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.765566, 35.508255, 51.380257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895529, 0.024925, -0.444305,
		-0.274824, 0.816253, -0.508137,
		0.350000, 0.577157, 0.737827,
		24.870565, 35.681404, 51.601604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158804, 35.615360, 50.771557>,  <24.625566, 35.277393, 51.085125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158804, 35.615360, 50.771557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.246717, 35.713982, 51.149109>,  <25.299465, 35.773155, 51.375641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.246717, 35.713982, 51.149109>,  <25.158804, 35.615360, 50.771557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.246717, 35.713982, 51.149109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964523, 0.090134, -0.248137,
		-0.146254, 0.964929, -0.217996,
		0.219785, 0.246554, 0.943878,
		25.312653, 35.787949, 51.432274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582272, 36.212471, 50.841366>,  <25.158804, 35.615360, 50.771557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582272, 36.212471, 50.841366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.659590, 35.990776, 51.165207>,  <25.705980, 35.857758, 51.359512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.659590, 35.990776, 51.165207>,  <25.582272, 36.212471, 50.841366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659590, 35.990776, 51.165207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954838, -0.083522, -0.285148,
		0.225659, 0.828157, 0.513063,
		0.193295, -0.554238, 0.809603,
		25.717579, 35.824505, 51.408089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215601, 36.509228, 51.056366>,  <25.582272, 36.212471, 50.841366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215601, 36.509228, 51.056366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.185310, 36.148357, 51.226231>,  <26.167135, 35.931835, 51.328152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.185310, 36.148357, 51.226231>,  <26.215601, 36.509228, 51.056366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185310, 36.148357, 51.226231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954409, -0.188904, -0.231126,
		0.288738, 0.387802, 0.875351,
		-0.075726, -0.902178, 0.424665,
		26.162592, 35.877705, 51.353630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735992, 36.587444, 51.611397>,  <26.215601, 36.509228, 51.056366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735992, 36.587444, 51.611397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.695835, 36.193962, 51.551746>,  <26.671741, 35.957870, 51.515957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.695835, 36.193962, 51.551746>,  <26.735992, 36.587444, 51.611397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695835, 36.193962, 51.551746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994942, -0.098744, -0.018434,
		0.003409, -0.150224, 0.988646,
		-0.100392, -0.983708, -0.149128,
		26.665718, 35.898849, 51.507008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109560, 36.200325, 52.186771>,  <26.735992, 36.587444, 51.611397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109560, 36.200325, 52.186771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.081980, 35.936279, 51.887573>,  <27.065432, 35.777851, 51.708054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.081980, 35.936279, 51.887573>,  <27.109560, 36.200325, 52.186771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081980, 35.936279, 51.887573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975381, -0.202037, 0.088389,
		-0.209470, -0.723489, 0.657789,
		-0.068949, -0.660110, -0.747998,
		27.061295, 35.738247, 51.663174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569738, 35.728214, 52.373184>,  <27.109560, 36.200325, 52.186771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569738, 35.728214, 52.373184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.538895, 35.587166, 52.000153>,  <27.520388, 35.502537, 51.776333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.538895, 35.587166, 52.000153>,  <27.569738, 35.728214, 52.373184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538895, 35.587166, 52.000153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978973, -0.203956, -0.003828,
		-0.188856, -0.913268, 0.360936,
		-0.077111, -0.352624, -0.932583,
		27.515760, 35.481380, 51.720379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908747, 35.032475, 52.299191>,  <27.569738, 35.728214, 52.373184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908747, 35.032475, 52.299191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.898245, 35.189026, 51.931248>,  <27.891943, 35.282955, 51.710484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.898245, 35.189026, 51.931248>,  <27.908747, 35.032475, 52.299191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898245, 35.189026, 51.931248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995525, -0.073326, -0.059612,
		-0.090780, -0.917305, -0.387698,
		-0.026254, 0.391374, -0.919857,
		27.890369, 35.306438, 51.655289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411539, 34.698921, 51.849907>,  <27.908747, 35.032475, 52.299191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411539, 34.698921, 51.849907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.321960, 35.041954, 51.664696>,  <28.268213, 35.247776, 51.553570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.321960, 35.041954, 51.664696>,  <28.411539, 34.698921, 51.849907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321960, 35.041954, 51.664696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963599, 0.123644, -0.237041,
		-0.146032, -0.499261, -0.854057,
		-0.223945, 0.857584, -0.463032,
		28.254778, 35.299229, 51.525787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532078, 34.621910, 51.184387>,  <28.411539, 34.698921, 51.849907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532078, 34.621910, 51.184387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.578577, 35.017826, 51.217381>,  <28.606476, 35.255375, 51.237179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.578577, 35.017826, 51.217381>,  <28.532078, 34.621910, 51.184387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578577, 35.017826, 51.217381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885354, -0.065625, -0.460262,
		-0.450149, 0.126533, -0.883943,
		0.116247, 0.989789, 0.082486,
		28.613451, 35.314762, 51.242126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737362, 34.774673, 50.583267>,  <28.532078, 34.621910, 51.184387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737362, 34.774673, 50.583267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.854540, 35.100460, 50.783596>,  <28.924847, 35.295933, 50.903793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.854540, 35.100460, 50.783596>,  <28.737362, 34.774673, 50.583267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854540, 35.100460, 50.783596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892745, -0.045460, -0.448263,
		-0.342328, 0.578425, -0.740430,
		0.292947, 0.814468, 0.500823,
		28.942425, 35.344799, 50.933842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184385, 35.253029, 50.062366>,  <28.737362, 34.774673, 50.583267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184385, 35.253029, 50.062366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.272310, 35.367928, 50.435284>,  <29.325066, 35.436867, 50.659035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.272310, 35.367928, 50.435284>,  <29.184385, 35.253029, 50.062366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272310, 35.367928, 50.435284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956306, 0.125399, -0.264109,
		-0.192774, 0.949612, -0.247134,
		0.219810, 0.287249, 0.932294,
		29.338253, 35.454102, 50.714973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529537, 35.857468, 49.963005>,  <29.184385, 35.253029, 50.062366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529537, 35.857468, 49.963005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.656397, 35.753010, 50.327690>,  <29.732513, 35.690334, 50.546501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.656397, 35.753010, 50.327690>,  <29.529537, 35.857468, 49.963005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656397, 35.753010, 50.327690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946003, 0.155060, -0.284665,
		-0.067032, 0.952765, 0.296219,
		0.317151, -0.261142, 0.911713,
		29.751543, 35.674667, 50.601204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008289, 36.394650, 50.127373>,  <29.529537, 35.857468, 49.963005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008289, 36.394650, 50.127373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.093792, 36.089336, 50.371246>,  <30.145094, 35.906147, 50.517570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.093792, 36.089336, 50.371246>,  <30.008289, 36.394650, 50.127373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093792, 36.089336, 50.371246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976067, 0.192447, -0.101280,
		-0.040026, 0.616738, 0.786150,
		0.213755, -0.763281, 0.609681,
		30.157919, 35.860352, 50.554150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456421, 36.679974, 50.697781>,  <30.008289, 36.394650, 50.127373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456421, 36.679974, 50.697781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.520988, 36.285252, 50.702953>,  <30.559729, 36.048420, 50.706059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.520988, 36.285252, 50.702953>,  <30.456421, 36.679974, 50.697781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520988, 36.285252, 50.702953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982377, 0.159415, -0.097577,
		0.094227, 0.028459, 0.995144,
		0.161418, -0.986801, 0.012936,
		30.569414, 35.989212, 50.706833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065907, 36.601383, 51.144615>,  <30.456421, 36.679974, 50.697781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065907, 36.601383, 51.144615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.039019, 36.260830, 50.936527>,  <31.022886, 36.056496, 50.811676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.039019, 36.260830, 50.936527>,  <31.065907, 36.601383, 51.144615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039019, 36.260830, 50.936527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971048, 0.063966, -0.230162,
		0.229233, -0.520626, 0.822436,
		-0.067220, -0.851385, -0.520216,
		31.018852, 36.005413, 50.780464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710003, 36.253220, 51.393799>,  <31.065907, 36.601383, 51.144615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710003, 36.253220, 51.393799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.596638, 36.070362, 51.056587>,  <31.528618, 35.960648, 50.854259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.596638, 36.070362, 51.056587>,  <31.710003, 36.253220, 51.393799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596638, 36.070362, 51.056587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957106, -0.079643, -0.278577,
		0.060209, -0.885820, 0.460107,
		-0.283413, -0.457144, -0.843028,
		31.511614, 35.933220, 50.803680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167999, 35.641258, 51.293484>,  <31.710003, 36.253220, 51.393799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167999, 35.641258, 51.293484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.025841, 35.713276, 50.926598>,  <31.940546, 35.756485, 50.706467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.025841, 35.713276, 50.926598>,  <32.167999, 35.641258, 51.293484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025841, 35.713276, 50.926598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894530, -0.219119, -0.389619,
		-0.271126, -0.958943, -0.083179,
		-0.355396, 0.180042, -0.917212,
		31.919222, 35.767288, 50.651432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406166, 35.041672, 50.792618>,  <32.167999, 35.641258, 51.293484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406166, 35.041672, 50.792618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.336853, 35.353596, 50.551994>,  <32.295265, 35.540749, 50.407619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.336853, 35.353596, 50.551994>,  <32.406166, 35.041672, 50.792618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336853, 35.353596, 50.551994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843904, -0.197325, -0.498887,
		-0.507739, -0.594103, -0.623893,
		-0.173280, 0.779810, -0.601556,
		32.284870, 35.587540, 50.371529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659561, 34.778694, 50.060299>,  <32.406166, 35.041672, 50.792618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659561, 34.778694, 50.060299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.660484, 35.177975, 50.036320>,  <32.661037, 35.417542, 50.021935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.660484, 35.177975, 50.036320>,  <32.659561, 34.778694, 50.060299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660484, 35.177975, 50.036320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742522, -0.041862, -0.668512,
		-0.669817, -0.042968, -0.741282,
		0.002307, 0.998199, -0.059945,
		32.661175, 35.477436, 50.018337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.276829, 34.594074, 34.793510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.288832, 34.874115, 35.078876>,  <24.296034, 35.042141, 35.250095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.288832, 34.874115, 35.078876>,  <24.276829, 34.594074, 34.793510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.288832, 34.874115, 35.078876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957327, -0.225381, 0.180908,
		0.287444, 0.677541, -0.676989,
		0.030008, 0.700101, 0.713413,
		24.297834, 35.084145, 35.292900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826832, 35.199219, 34.614048>,  <24.276829, 34.594074, 34.793510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826832, 35.199219, 34.614048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.740177, 35.098400, 34.991310>,  <24.688185, 35.037910, 35.217667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.740177, 35.098400, 34.991310>,  <24.826832, 35.199219, 34.614048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.740177, 35.098400, 34.991310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973386, -0.129736, 0.188913,
		0.074746, 0.958979, 0.273444,
		-0.216639, -0.252046, 0.943154,
		24.675186, 35.022785, 35.274258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399406, 35.380703, 34.998672>,  <24.826832, 35.199219, 34.614048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399406, 35.380703, 34.998672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.201294, 35.185261, 35.285992>,  <25.082426, 35.067993, 35.458385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.201294, 35.185261, 35.285992>,  <25.399406, 35.380703, 34.998672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201294, 35.185261, 35.285992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824481, -0.003847, 0.565876,
		-0.273729, 0.872494, 0.404755,
		-0.495281, -0.488610, 0.718302,
		25.052710, 35.038677, 35.501484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180979, 35.773220, 35.621185>,  <25.399406, 35.380703, 34.998672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.180979, 35.773220, 35.621185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.288671, 35.394260, 35.690403>,  <25.353287, 35.166885, 35.731934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.288671, 35.394260, 35.690403>,  <25.180979, 35.773220, 35.621185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.288671, 35.394260, 35.690403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618934, 0.307871, 0.722589,
		-0.737858, -0.087439, 0.669268,
		0.269231, -0.947402, 0.173046,
		25.369440, 35.110039, 35.742317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021120, 35.480099, 36.327248>,  <25.180979, 35.773220, 35.621185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021120, 35.480099, 36.327248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.334345, 35.297375, 36.158421>,  <25.522280, 35.187740, 36.057125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.334345, 35.297375, 36.158421>,  <25.021120, 35.480099, 36.327248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334345, 35.297375, 36.158421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595781, 0.356184, 0.719845,
		-0.178500, -0.815142, 0.551073,
		0.783060, -0.456811, -0.422068,
		25.569263, 35.160332, 36.031799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335688, 34.981716, 36.689095>,  <25.021120, 35.480099, 36.327248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.335688, 34.981716, 36.689095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.574408, 35.200150, 36.453938>,  <25.717640, 35.331211, 36.312843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.574408, 35.200150, 36.453938>,  <25.335688, 34.981716, 36.689095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574408, 35.200150, 36.453938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384101, 0.448848, 0.806847,
		0.704484, -0.707336, 0.058119,
		0.596799, 0.546087, -0.587895,
		25.753447, 35.363976, 36.277569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042259, 34.922050, 36.781780>,  <25.335688, 34.981716, 36.689095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042259, 34.922050, 36.781780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.003761, 35.293594, 36.638695>,  <25.980661, 35.516521, 36.552845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.003761, 35.293594, 36.638695>,  <26.042259, 34.922050, 36.781780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003761, 35.293594, 36.638695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363308, 0.367368, 0.856182,
		0.926684, -0.047554, -0.372820,
		-0.096247, 0.928859, -0.357710,
		25.974888, 35.572250, 36.531380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679052, 35.334610, 36.480225>,  <26.042259, 34.922050, 36.781780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679052, 35.334610, 36.480225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.402603, 35.573952, 36.642368>,  <26.236732, 35.717556, 36.739655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.402603, 35.573952, 36.642368>,  <26.679052, 35.334610, 36.480225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402603, 35.573952, 36.642368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660119, 0.294260, 0.691125,
		0.294260, 0.745238, -0.598357,
		-0.691125, 0.598357, 0.405357,
		26.195265, 35.753460, 36.763977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889450, 36.039886, 36.556316>,  <26.679052, 35.334610, 36.480225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889450, 36.039886, 36.556316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.625761, 35.917500, 36.831070>,  <26.467548, 35.844067, 36.995922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.625761, 35.917500, 36.831070>,  <26.889450, 36.039886, 36.556316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625761, 35.917500, 36.831070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630148, 0.273633, 0.726663,
		-0.410291, 0.911870, 0.012422,
		-0.659223, -0.305971, 0.686882,
		26.427994, 35.825706, 37.037136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765743, 36.605663, 36.937214>,  <26.889450, 36.039886, 36.556316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765743, 36.605663, 36.937214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.693478, 36.273579, 37.148155>,  <26.650118, 36.074326, 37.274719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.693478, 36.273579, 37.148155>,  <26.765743, 36.605663, 36.937214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693478, 36.273579, 37.148155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547347, 0.360615, 0.755227,
		-0.817173, 0.425090, 0.389265,
		-0.180665, -0.830214, 0.527357,
		26.639278, 36.024513, 37.306362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405739, 36.713398, 37.626072>,  <26.765743, 36.605663, 36.937214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405739, 36.713398, 37.626072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.630875, 36.383160, 37.642105>,  <26.765957, 36.185017, 37.651726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.630875, 36.383160, 37.642105>,  <26.405739, 36.713398, 37.626072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630875, 36.383160, 37.642105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484363, 0.368727, 0.793368,
		-0.669779, -0.427124, 0.607421,
		0.562839, -0.825594, 0.040083,
		26.799726, 36.135483, 37.654129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494373, 36.160732, 38.283535>,  <26.405739, 36.713398, 37.626072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494373, 36.160732, 38.283535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.802864, 36.287636, 38.062790>,  <26.987959, 36.363777, 37.930344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.802864, 36.287636, 38.062790>,  <26.494373, 36.160732, 38.283535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802864, 36.287636, 38.062790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315496, 0.562469, 0.764259,
		0.552861, -0.763534, 0.333707,
		0.771237, 0.317246, -0.551859,
		27.034231, 36.382812, 37.897228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064793, 36.082645, 38.733486>,  <26.494373, 36.160732, 38.283535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064793, 36.082645, 38.733486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.157955, 36.379719, 38.482353>,  <27.213854, 36.557964, 38.331673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.157955, 36.379719, 38.482353>,  <27.064793, 36.082645, 38.733486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157955, 36.379719, 38.482353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364350, 0.531929, 0.764396,
		0.901667, -0.406785, -0.146707,
		0.232907, 0.742683, -0.627835,
		27.227827, 36.602524, 38.294003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755754, 36.339916, 38.914158>,  <27.064793, 36.082645, 38.733486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755754, 36.339916, 38.914158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.580513, 36.612614, 38.679794>,  <27.475368, 36.776230, 38.539177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.580513, 36.612614, 38.679794>,  <27.755754, 36.339916, 38.914158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580513, 36.612614, 38.679794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272357, 0.721824, 0.636232,
		0.856672, 0.119158, -0.501910,
		-0.438103, 0.681742, -0.585913,
		27.449081, 36.817135, 38.504021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186531, 36.898533, 38.630566>,  <27.755754, 36.339916, 38.914158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186531, 36.898533, 38.630566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.826395, 37.072468, 38.623562>,  <27.610313, 37.176826, 38.619362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.826395, 37.072468, 38.623562>,  <28.186531, 36.898533, 38.630566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826395, 37.072468, 38.623562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369825, 0.785698, 0.495891,
		0.229384, 0.439997, -0.868209,
		-0.900340, 0.434835, -0.017505,
		27.556293, 37.202919, 38.618309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158924, 37.741470, 38.474590>,  <28.186531, 36.898533, 38.630566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158924, 37.741470, 38.474590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.887749, 37.604046, 38.734550>,  <27.725044, 37.521591, 38.890526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.887749, 37.604046, 38.734550>,  <28.158924, 37.741470, 38.474590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887749, 37.604046, 38.734550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310889, 0.667129, 0.676969,
		-0.666146, 0.660988, -0.345463,
		-0.677937, -0.343559, 0.649899,
		27.684368, 37.500977, 38.929520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156939, 38.236225, 38.993549>,  <28.158924, 37.741470, 38.474590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156939, 38.236225, 38.993549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.971577, 37.940678, 39.189236>,  <27.860359, 37.763348, 39.306648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.971577, 37.940678, 39.189236>,  <28.156939, 38.236225, 38.993549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971577, 37.940678, 39.189236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326699, 0.370730, 0.869383,
		-0.823725, 0.562702, 0.069589,
		-0.463405, -0.738868, 0.489214,
		27.832556, 37.719017, 39.335999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801451, 38.562038, 39.556931>,  <28.156939, 38.236225, 38.993549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801451, 38.562038, 39.556931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.907799, 38.180779, 39.614651>,  <27.971607, 37.952023, 39.649284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.907799, 38.180779, 39.614651>,  <27.801451, 38.562038, 39.556931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907799, 38.180779, 39.614651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451262, 0.255330, 0.855084,
		-0.851866, -0.162222, 0.498003,
		0.265869, -0.953148, 0.144303,
		27.987560, 37.894833, 39.657940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515707, 38.489769, 40.132343>,  <27.801451, 38.562038, 39.556931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515707, 38.489769, 40.132343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.841902, 38.263474, 40.083477>,  <28.037619, 38.127697, 40.054157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.841902, 38.263474, 40.083477>,  <27.515707, 38.489769, 40.132343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841902, 38.263474, 40.083477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427928, 0.447239, 0.785401,
		-0.389692, -0.692762, 0.606812,
		0.815486, -0.565736, -0.122167,
		28.086548, 38.093754, 40.046825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750071, 38.079998, 40.694817>,  <27.515707, 38.489769, 40.132343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750071, 38.079998, 40.694817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.076307, 38.199665, 40.496704>,  <28.272049, 38.271465, 40.377838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.076307, 38.199665, 40.496704>,  <27.750071, 38.079998, 40.694817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076307, 38.199665, 40.496704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369014, 0.390376, 0.843466,
		0.445684, -0.870692, 0.207991,
		0.815595, 0.299168, -0.495282,
		28.320986, 38.289417, 40.348118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436373, 37.827637, 41.058254>,  <27.750071, 38.079998, 40.694817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436373, 37.827637, 41.058254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.505266, 38.165283, 40.855156>,  <28.546602, 38.367870, 40.733295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.505266, 38.165283, 40.855156>,  <28.436373, 37.827637, 41.058254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505266, 38.165283, 40.855156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414070, 0.405660, 0.814853,
		0.893802, -0.350588, -0.279654,
		0.172233, 0.844113, -0.507748,
		28.556936, 38.418518, 40.702831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173269, 38.007233, 41.096489>,  <28.436373, 37.827637, 41.058254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173269, 38.007233, 41.096489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.937822, 38.327255, 41.050125>,  <28.796555, 38.519268, 41.022305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.937822, 38.327255, 41.050125>,  <29.173269, 38.007233, 41.096489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937822, 38.327255, 41.050125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564694, 0.509517, 0.649241,
		0.578490, 0.316699, -0.751699,
		-0.588617, 0.800059, -0.115913,
		28.761238, 38.567272, 41.015350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601040, 38.466751, 40.844006>,  <29.173269, 38.007233, 41.096489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601040, 38.466751, 40.844006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.302425, 38.590122, 41.079823>,  <29.123257, 38.664143, 41.221313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.302425, 38.590122, 41.079823>,  <29.601040, 38.466751, 40.844006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302425, 38.590122, 41.079823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634918, 0.065347, 0.769811,
		0.198904, 0.949002, -0.244609,
		-0.746536, 0.308425, 0.589541,
		29.078465, 38.682652, 41.256683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725246, 39.137581, 41.225811>,  <29.601040, 38.466751, 40.844006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725246, 39.137581, 41.225811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.490740, 38.937229, 41.480499>,  <29.350037, 38.817017, 41.633312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.490740, 38.937229, 41.480499>,  <29.725246, 39.137581, 41.225811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490740, 38.937229, 41.480499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757461, -0.060180, 0.650102,
		-0.287306, 0.863422, 0.414679,
		-0.586267, -0.500881, 0.636718,
		29.314859, 38.786964, 41.671516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666288, 39.431652, 41.837528>,  <29.725246, 39.137581, 41.225811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666288, 39.431652, 41.837528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.611948, 39.043312, 41.916512>,  <29.579344, 38.810307, 41.963902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.611948, 39.043312, 41.916512>,  <29.666288, 39.431652, 41.837528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611948, 39.043312, 41.916512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726048, 0.038047, 0.686590,
		-0.674091, 0.236640, 0.699717,
		-0.135853, -0.970852, 0.197459,
		29.571192, 38.752056, 41.975750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095579, 39.336254, 42.455490>,  <29.666288, 39.431652, 41.837528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095579, 39.336254, 42.455490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.996517, 38.963322, 42.350098>,  <29.937080, 38.739563, 42.286861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.996517, 38.963322, 42.350098>,  <30.095579, 39.336254, 42.455490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996517, 38.963322, 42.350098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695026, -0.360429, 0.622117,
		-0.674986, -0.029055, 0.737258,
		-0.247654, -0.932334, -0.263478,
		29.922220, 38.683620, 42.271053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886702, 38.901516, 43.076496>,  <30.095579, 39.336254, 42.455490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886702, 38.901516, 43.076496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.005985, 38.668610, 42.773964>,  <30.077555, 38.528866, 42.592445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.005985, 38.668610, 42.773964>,  <29.886702, 38.901516, 43.076496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005985, 38.668610, 42.773964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598989, -0.502776, 0.623240,
		-0.743158, -0.638889, 0.198840,
		0.298209, -0.582269, -0.756329,
		30.095448, 38.493927, 42.547066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859432, 38.078289, 43.120003>,  <29.886702, 38.901516, 43.076496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859432, 38.078289, 43.120003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.144754, 38.289341, 42.935478>,  <30.315947, 38.415970, 42.824764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.144754, 38.289341, 42.935478>,  <29.859432, 38.078289, 43.120003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144754, 38.289341, 42.935478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670273, -0.321253, 0.668977,
		0.204772, -0.786389, -0.582804,
		0.713304, 0.527626, -0.461312,
		30.358746, 38.447628, 42.797085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495573, 37.790726, 43.296375>,  <29.859432, 38.078289, 43.120003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495573, 37.790726, 43.296375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.577152, 38.172791, 43.210526>,  <30.626099, 38.402031, 43.159016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.577152, 38.172791, 43.210526>,  <30.495573, 37.790726, 43.296375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577152, 38.172791, 43.210526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537886, 0.073850, 0.839777,
		0.817976, -0.286714, -0.498709,
		0.203946, 0.955166, -0.214627,
		30.638336, 38.459339, 43.146137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739492, 37.213734, 42.841583>,  <30.495573, 37.790726, 43.296375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739492, 37.213734, 42.841583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.898306, 36.941662, 43.088070>,  <30.993593, 36.778419, 43.235962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.898306, 36.941662, 43.088070>,  <30.739492, 37.213734, 42.841583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898306, 36.941662, 43.088070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538433, 0.371113, 0.756548,
		-0.743273, -0.632167, -0.218885,
		0.397034, -0.680177, 0.616217,
		31.017416, 36.737610, 43.272934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114256, 37.078911, 43.190254>,  <30.739492, 37.213734, 42.841583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114256, 37.078911, 43.190254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427900, 36.985695, 43.420338>,  <30.616087, 36.929764, 43.558388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427900, 36.985695, 43.420338>,  <30.114256, 37.078911, 43.190254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427900, 36.985695, 43.420338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425485, 0.472871, 0.771593,
		-0.451810, -0.849756, 0.271629,
		0.784111, -0.233039, 0.575206,
		30.663134, 36.915783, 43.592899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916986, 37.219147, 43.883694>,  <30.114256, 37.078911, 43.190254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916986, 37.219147, 43.883694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.309309, 37.163731, 43.938572>,  <30.544703, 37.130482, 43.971500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.309309, 37.163731, 43.938572>,  <29.916986, 37.219147, 43.883694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309309, 37.163731, 43.938572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022609, 0.618102, 0.785773,
		-0.193666, -0.773794, 0.603106,
		0.980807, -0.138542, 0.137199,
		30.603552, 37.122169, 43.979733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023821, 37.026676, 44.565636>,  <29.916986, 37.219147, 43.883694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023821, 37.026676, 44.565636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.364569, 37.192822, 44.438015>,  <30.569017, 37.292507, 44.361443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.364569, 37.192822, 44.438015>,  <30.023821, 37.026676, 44.565636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364569, 37.192822, 44.438015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041836, 0.553256, 0.831960,
		0.522076, -0.722071, 0.453927,
		0.851872, 0.415356, -0.319051,
		30.620129, 37.317429, 44.342300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601006, 36.908493, 45.007042>,  <30.023821, 37.026676, 44.565636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601006, 36.908493, 45.007042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.938255, 37.092392, 44.895489>,  <31.140606, 37.202732, 44.828556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.938255, 37.092392, 44.895489>,  <30.601006, 36.908493, 45.007042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938255, 37.092392, 44.895489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400452, -0.190710, 0.896252,
		0.358861, -0.867332, -0.344898,
		0.843124, 0.459745, -0.278886,
		31.191193, 37.230316, 44.811825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255487, 36.527702, 45.166157>,  <30.601006, 36.908493, 45.007042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255487, 36.527702, 45.166157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.259657, 36.927490, 45.178444>,  <31.262159, 37.167362, 45.185818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.259657, 36.927490, 45.178444>,  <31.255487, 36.527702, 45.166157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259657, 36.927490, 45.178444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474153, -0.031989, 0.879861,
		0.880381, 0.005395, -0.474237,
		0.010424, 0.999474, 0.030720,
		31.262785, 37.227333, 45.187660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977581, 36.725155, 45.389050>,  <31.255487, 36.527702, 45.166157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977581, 36.725155, 45.389050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.656857, 36.937160, 45.499454>,  <31.464422, 37.064365, 45.565697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.656857, 36.937160, 45.499454>,  <31.977581, 36.725155, 45.389050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656857, 36.937160, 45.499454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368652, 0.075204, 0.926520,
		0.470315, 0.844645, -0.255692,
		-0.801810, 0.530018, 0.276011,
		31.416313, 37.096165, 45.582256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166149, 37.073845, 45.953136>,  <31.977581, 36.725155, 45.389050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166149, 37.073845, 45.953136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.768269, 37.092945, 45.989544>,  <31.529539, 37.104404, 46.011387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.768269, 37.092945, 45.989544>,  <32.166149, 37.073845, 45.953136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768269, 37.092945, 45.989544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085904, -0.099989, 0.991273,
		0.056432, 0.993842, 0.095358,
		-0.994704, 0.047748, 0.091017,
		31.469858, 37.107269, 46.016850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552555, 37.097237, 46.578537>,  <32.166149, 37.073845, 45.953136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552555, 37.097237, 46.578537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841389, 37.372929, 46.602421>,  <33.014687, 37.538342, 46.616753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841389, 37.372929, 46.602421>,  <32.552555, 37.097237, 46.578537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841389, 37.372929, 46.602421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253684, 0.183501, 0.949722,
		0.643618, -0.700922, 0.307349,
		0.722080, 0.689228, 0.059708,
		33.058014, 37.579697, 46.620335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191139, 37.045429, 47.020710>,  <32.552555, 37.097237, 46.578537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191139, 37.045429, 47.020710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066521, 37.425297, 47.007645>,  <32.991749, 37.653217, 46.999805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066521, 37.425297, 47.007645>,  <33.191139, 37.045429, 47.020710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066521, 37.425297, 47.007645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274506, -0.057037, 0.959892,
		0.909718, 0.308015, 0.278460,
		-0.311544, 0.949670, -0.032664,
		32.973057, 37.710197, 46.997845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608490, 37.437218, 47.543781>,  <33.191139, 37.045429, 47.020710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608490, 37.437218, 47.543781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.239983, 37.577465, 47.476448>,  <33.018879, 37.661613, 47.436047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.239983, 37.577465, 47.476448>,  <33.608490, 37.437218, 47.543781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239983, 37.577465, 47.476448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170523, 0.024868, 0.985040,
		0.349559, 0.936188, 0.036879,
		-0.921266, 0.350618, -0.168335,
		32.963604, 37.682652, 47.425949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260590, 37.359589, 48.146103>,  <33.608490, 37.437218, 47.543781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260590, 37.359589, 48.146103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.027554, 37.628624, 47.963577>,  <32.887733, 37.790047, 47.854061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.027554, 37.628624, 47.963577>,  <33.260590, 37.359589, 48.146103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027554, 37.628624, 47.963577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444078, 0.206809, 0.871794,
		0.680727, 0.710532, 0.178197,
		-0.582585, 0.672587, -0.456312,
		32.852779, 37.830399, 47.826683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392143, 37.139854, 48.862598>,  <33.260590, 37.359589, 48.146103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392143, 37.139854, 48.862598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482178, 36.773876, 48.996593>,  <33.536198, 36.554291, 49.076988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482178, 36.773876, 48.996593>,  <33.392143, 37.139854, 48.862598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482178, 36.773876, 48.996593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911739, 0.076542, -0.403576,
		0.343608, 0.396258, 0.851418,
		0.225089, -0.914943, 0.334984,
		33.549706, 36.499393, 49.097088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085018, 37.271088, 49.183491>,  <33.392143, 37.139854, 48.862598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085018, 37.271088, 49.183491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.020790, 36.879959, 49.129707>,  <33.982254, 36.645283, 49.097435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.020790, 36.879959, 49.129707>,  <34.085018, 37.271088, 49.183491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020790, 36.879959, 49.129707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932635, -0.105705, -0.344992,
		0.323127, -0.180798, 0.928925,
		-0.160565, -0.977823, -0.134462,
		33.972622, 36.586613, 49.089367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684399, 37.112442, 49.513386>,  <34.085018, 37.271088, 49.183491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684399, 37.112442, 49.513386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543098, 36.795189, 49.314930>,  <34.458321, 36.604836, 49.195858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543098, 36.795189, 49.314930>,  <34.684399, 37.112442, 49.513386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543098, 36.795189, 49.314930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935530, -0.299904, -0.186659,
		-0.000748, -0.530087, 0.847943,
		-0.353247, -0.793136, -0.496137,
		34.437126, 36.557247, 49.166088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113220, 36.441856, 49.671104>,  <34.684399, 37.112442, 49.513386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113220, 36.441856, 49.671104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918903, 36.360901, 49.330975>,  <34.802315, 36.312328, 49.126896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918903, 36.360901, 49.330975>,  <35.113220, 36.441856, 49.671104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918903, 36.360901, 49.330975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805102, -0.482376, -0.345145,
		-0.340320, -0.852263, 0.397278,
		-0.485792, -0.202389, -0.850321,
		34.773167, 36.300182, 49.075878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257431, 35.753136, 49.608086>,  <35.113220, 36.441856, 49.671104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257431, 35.753136, 49.608086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187473, 35.932255, 49.257339>,  <35.145500, 36.039726, 49.046890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187473, 35.932255, 49.257339>,  <35.257431, 35.753136, 49.608086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187473, 35.932255, 49.257339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846374, -0.386653, -0.366266,
		-0.503055, -0.806212, -0.311380,
		-0.174892, 0.447796, -0.876865,
		35.135006, 36.066593, 48.994282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334568, 35.248779, 49.073677>,  <35.257431, 35.753136, 49.608086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334568, 35.248779, 49.073677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370342, 35.598461, 48.882778>,  <35.391808, 35.808270, 48.768238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370342, 35.598461, 48.882778>,  <35.334568, 35.248779, 49.073677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370342, 35.598461, 48.882778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882625, -0.291585, -0.368714,
		-0.461490, -0.388250, -0.797677,
		0.089437, 0.874208, -0.477243,
		35.397175, 35.860725, 48.739605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471622, 35.077503, 48.403507>,  <35.334568, 35.248779, 49.073677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471622, 35.077503, 48.403507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583267, 35.461594, 48.406723>,  <35.650253, 35.692047, 48.408653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583267, 35.461594, 48.406723>,  <35.471622, 35.077503, 48.403507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583267, 35.461594, 48.406723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909319, -0.261608, -0.323575,
		-0.308601, 0.097625, -0.946168,
		0.279115, 0.960224, 0.008040,
		35.667000, 35.749660, 48.409134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890244, 35.164711, 47.817612>,  <35.471622, 35.077503, 48.403507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890244, 35.164711, 47.817612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.009510, 35.514858, 47.969833>,  <36.081070, 35.724949, 48.061165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.009510, 35.514858, 47.969833>,  <35.890244, 35.164711, 47.817612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009510, 35.514858, 47.969833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949805, -0.232555, -0.209256,
		-0.094678, 0.423843, -0.900774,
		0.298171, 0.875372, 0.380550,
		36.098961, 35.777470, 48.084000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329536, 35.388206, 47.414047>,  <35.890244, 35.164711, 47.817612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329536, 35.388206, 47.414047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.418865, 35.573063, 47.757339>,  <36.472462, 35.683975, 47.963314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.418865, 35.573063, 47.757339>,  <36.329536, 35.388206, 47.414047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418865, 35.573063, 47.757339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949548, -0.302042, -0.084438,
		0.220199, 0.833786, -0.506275,
		0.223319, 0.462139, 0.858229,
		36.485863, 35.711704, 48.014809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975605, 35.729874, 47.277580>,  <36.329536, 35.388206, 47.414047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975605, 35.729874, 47.277580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956154, 35.690228, 47.675137>,  <36.944485, 35.666439, 47.913670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956154, 35.690228, 47.675137>,  <36.975605, 35.729874, 47.277580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956154, 35.690228, 47.675137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862491, -0.506006, -0.008266,
		0.503732, 0.856816, 0.110091,
		-0.048624, -0.099116, 0.993887,
		36.941566, 35.660492, 47.973301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643379, 36.041367, 47.599606>,  <36.975605, 35.729874, 47.277580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643379, 36.041367, 47.599606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475956, 35.754002, 47.821850>,  <37.375504, 35.581585, 47.955196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475956, 35.754002, 47.821850>,  <37.643379, 36.041367, 47.599606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475956, 35.754002, 47.821850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731659, -0.629168, -0.262341,
		0.538040, 0.296712, 0.788971,
		-0.418555, -0.718408, 0.555609,
		37.350388, 35.538479, 47.988533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222176, 35.749931, 47.786472>,  <37.643379, 36.041367, 47.599606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222176, 35.749931, 47.786472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944485, 35.497807, 47.925472>,  <37.777870, 35.346531, 48.008873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944485, 35.497807, 47.925472>,  <38.222176, 35.749931, 47.786472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944485, 35.497807, 47.925472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636574, -0.763006, -0.112230,
		0.335881, 0.143293, 0.930941,
		-0.694232, -0.630308, 0.347495,
		37.736214, 35.308716, 48.029720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469341, 35.359978, 48.350986>,  <38.222176, 35.749931, 47.786472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469341, 35.359978, 48.350986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201939, 35.130642, 48.161510>,  <38.041496, 34.993038, 48.047825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201939, 35.130642, 48.161510>,  <38.469341, 35.359978, 48.350986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201939, 35.130642, 48.161510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726842, -0.638553, -0.252884,
		-0.157486, -0.513351, 0.843604,
		-0.668505, -0.573341, -0.473689,
		38.001389, 34.958641, 48.019405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604141, 34.677578, 48.464966>,  <38.469341, 35.359978, 48.350986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604141, 34.677578, 48.464966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.401905, 34.682655, 48.119892>,  <38.280563, 34.685703, 47.912849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.401905, 34.682655, 48.119892>,  <38.604141, 34.677578, 48.464966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401905, 34.682655, 48.119892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490824, -0.818091, -0.299698,
		-0.709556, -0.574948, 0.407387,
		-0.505591, 0.012697, -0.862680,
		38.250229, 34.686466, 47.861088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912312, 34.286545, 47.985302>,  <38.604141, 34.677578, 48.464966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912312, 34.286545, 47.985302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.182503, 34.563992, 48.085407>,  <39.344616, 34.730457, 48.145470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.182503, 34.563992, 48.085407>,  <38.912312, 34.286545, 47.985302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182503, 34.563992, 48.085407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137609, -0.452012, 0.881334,
		0.724428, -0.560880, -0.400771,
		0.675476, 0.693612, 0.250268,
		39.385147, 34.772076, 48.160488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546803, 33.912830, 48.289825>,  <38.912312, 34.286545, 47.985302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546803, 33.912830, 48.289825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483269, 34.287968, 48.413254>,  <39.445148, 34.513050, 48.487309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483269, 34.287968, 48.413254>,  <39.546803, 33.912830, 48.289825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483269, 34.287968, 48.413254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012900, -0.310538, 0.950474,
		0.987222, 0.154944, 0.037225,
		-0.158830, 0.937848, 0.308568,
		39.435619, 34.569321, 48.505825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651642, 33.758389, 49.019527>,  <39.546803, 33.912830, 48.289825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651642, 33.758389, 49.019527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757347, 33.416935, 48.839985>,  <39.820770, 33.212063, 48.732258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757347, 33.416935, 48.839985>,  <39.651642, 33.758389, 49.019527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757347, 33.416935, 48.839985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895335, 0.390143, -0.214856,
		0.358528, -0.345100, 0.867389,
		0.264259, -0.853636, -0.448858,
		39.836624, 33.160843, 48.705326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626274, 33.534302, 49.818581>,  <39.651642, 33.758389, 49.019527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626274, 33.534302, 49.818581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.771435, 33.428711, 50.176044>,  <39.858532, 33.365356, 50.390522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.771435, 33.428711, 50.176044>,  <39.626274, 33.534302, 49.818581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771435, 33.428711, 50.176044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890443, 0.184400, 0.416062,
		-0.274621, -0.946738, -0.168137,
		0.362897, -0.263976, 0.893657,
		39.880302, 33.349518, 50.444141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078701, 33.155540, 50.229980>,  <39.626274, 33.534302, 49.818581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078701, 33.155540, 50.229980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.323967, 33.324509, 50.496990>,  <39.471127, 33.425888, 50.657196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.323967, 33.324509, 50.496990>,  <39.078701, 33.155540, 50.229980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323967, 33.324509, 50.496990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788432, 0.274753, 0.550351,
		0.049073, -0.863755, 0.501517,
		0.613161, 0.422420, 0.667529,
		39.507915, 33.451233, 50.697250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984089, 32.917435, 50.925095>,  <39.078701, 33.155540, 50.229980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984089, 32.917435, 50.925095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128597, 33.290283, 50.935204>,  <39.215302, 33.513992, 50.941269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128597, 33.290283, 50.935204>,  <38.984089, 32.917435, 50.925095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128597, 33.290283, 50.935204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714136, 0.259156, 0.650267,
		0.599575, -0.252975, 0.759285,
		0.361274, 0.932117, 0.025276,
		39.236980, 33.569920, 50.942787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945908, 33.047588, 51.605186>,  <38.984089, 32.917435, 50.925095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945908, 33.047588, 51.605186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980602, 33.418491, 51.459488>,  <39.001419, 33.641033, 51.372070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980602, 33.418491, 51.459488>,  <38.945908, 33.047588, 51.605186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980602, 33.418491, 51.459488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613255, 0.337838, 0.713992,
		0.785108, 0.161444, 0.597947,
		0.086739, 0.927255, -0.364246,
		39.006622, 33.696667, 51.350216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127811, 33.559441, 52.142712>,  <38.945908, 33.047588, 51.605186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127811, 33.559441, 52.142712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.939747, 33.781311, 51.868111>,  <38.826908, 33.914433, 51.703350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.939747, 33.781311, 51.868111>,  <39.127811, 33.559441, 52.142712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939747, 33.781311, 51.868111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586664, 0.384709, 0.712618,
		0.659374, 0.737791, 0.144532,
		-0.470161, 0.554674, -0.686503,
		38.798698, 33.947712, 51.662159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026699, 34.188122, 52.442093>,  <39.127811, 33.559441, 52.142712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026699, 34.188122, 52.442093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.759468, 34.158176, 52.145969>,  <38.599129, 34.140209, 51.968296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.759468, 34.158176, 52.145969>,  <39.026699, 34.188122, 52.442093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759468, 34.158176, 52.145969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701308, 0.395842, 0.592854,
		0.248664, 0.915262, -0.316958,
		-0.668082, -0.074864, -0.740312,
		38.559044, 34.135715, 51.923874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707035, 34.810215, 52.485973>,  <39.026699, 34.188122, 52.442093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707035, 34.810215, 52.485973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.444267, 34.578442, 52.293015>,  <38.286606, 34.439377, 52.177238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.444267, 34.578442, 52.293015>,  <38.707035, 34.810215, 52.485973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444267, 34.578442, 52.293015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723653, 0.304998, 0.619114,
		-0.211607, 0.755798, -0.619671,
		-0.656923, -0.579435, -0.482396,
		38.247189, 34.404610, 52.148296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126423, 35.206856, 52.507698>,  <38.707035, 34.810215, 52.485973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126423, 35.206856, 52.507698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004948, 34.831867, 52.439671>,  <37.932064, 34.606873, 52.398853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004948, 34.831867, 52.439671>,  <38.126423, 35.206856, 52.507698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004948, 34.831867, 52.439671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825211, 0.169585, 0.538765,
		-0.476236, 0.303957, -0.825112,
		-0.303688, -0.937470, -0.170066,
		37.913841, 34.550625, 52.388649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565548, 35.326454, 52.273876>,  <38.126423, 35.206856, 52.507698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565548, 35.326454, 52.273876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547024, 34.961082, 52.435619>,  <37.535912, 34.741859, 52.532665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547024, 34.961082, 52.435619>,  <37.565548, 35.326454, 52.273876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547024, 34.961082, 52.435619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772026, 0.289602, 0.565780,
		-0.633902, -0.285976, -0.718600,
		-0.046309, -0.913427, 0.404360,
		37.533131, 34.687054, 52.556927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824333, 35.133163, 52.279308>,  <37.565548, 35.326454, 52.273876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824333, 35.133163, 52.279308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.001320, 34.885792, 52.539082>,  <37.107510, 34.737370, 52.694946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.001320, 34.885792, 52.539082>,  <36.824333, 35.133163, 52.279308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001320, 34.885792, 52.539082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782278, 0.087923, 0.616693,
		-0.438484, -0.780904, -0.444884,
		0.442462, -0.618433, 0.649437,
		37.134060, 34.700264, 52.733913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278999, 34.657917, 52.488003>,  <36.824333, 35.133163, 52.279308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278999, 34.657917, 52.488003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567314, 34.652203, 52.765209>,  <36.740303, 34.648773, 52.931534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567314, 34.652203, 52.765209>,  <36.278999, 34.657917, 52.488003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567314, 34.652203, 52.765209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692911, 0.011895, 0.720925,
		-0.018553, -0.999827, -0.001335,
		0.720785, -0.014300, 0.693012,
		36.783550, 34.647915, 52.973114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965382, 34.209949, 53.023151>,  <36.278999, 34.657917, 52.488003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965382, 34.209949, 53.023151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.262966, 34.387005, 53.223389>,  <36.441517, 34.493237, 53.343533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.262966, 34.387005, 53.223389>,  <35.965382, 34.209949, 53.023151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262966, 34.387005, 53.223389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608243, 0.138377, 0.781596,
		0.276693, -0.885959, 0.372179,
		0.743963, 0.442638, 0.500591,
		36.486156, 34.519794, 53.373566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901546, 33.952366, 53.716606>,  <35.965382, 34.209949, 53.023151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901546, 33.952366, 53.716606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097374, 34.297939, 53.763817>,  <36.214870, 34.505283, 53.792145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097374, 34.297939, 53.763817>,  <35.901546, 33.952366, 53.716606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097374, 34.297939, 53.763817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448858, 0.133647, 0.883552,
		0.747560, -0.485541, 0.453215,
		0.489571, 0.863938, 0.118030,
		36.244244, 34.557121, 53.799225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983147, 34.060429, 54.472198>,  <35.901546, 33.952366, 53.716606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983147, 34.060429, 54.472198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079090, 34.420784, 54.327492>,  <36.136658, 34.636997, 54.240669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079090, 34.420784, 54.327492>,  <35.983147, 34.060429, 54.472198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079090, 34.420784, 54.327492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307626, 0.423971, 0.851830,
		0.920780, -0.093029, 0.378828,
		0.239857, 0.900885, -0.361766,
		36.151047, 34.691048, 54.218964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384029, 34.453682, 55.025143>,  <35.983147, 34.060429, 54.472198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384029, 34.453682, 55.025143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220299, 34.715664, 54.771061>,  <36.122059, 34.872852, 54.618610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220299, 34.715664, 54.771061>,  <36.384029, 34.453682, 55.025143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220299, 34.715664, 54.771061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283274, 0.570570, 0.770848,
		0.867299, 0.495465, -0.048018,
		-0.409326, 0.654954, -0.635207,
		36.097500, 34.912151, 54.580498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567272, 35.155647, 55.225483>,  <36.384029, 34.453682, 55.025143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567272, 35.155647, 55.225483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.234013, 35.190197, 55.006977>,  <36.034058, 35.210926, 54.875874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.234013, 35.190197, 55.006977>,  <36.567272, 35.155647, 55.225483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234013, 35.190197, 55.006977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346174, 0.688868, 0.636887,
		0.431315, 0.719723, -0.544028,
		-0.833145, 0.086371, -0.546268,
		35.984070, 35.216110, 54.843098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473965, 35.823360, 55.227276>,  <36.567272, 35.155647, 55.225483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473965, 35.823360, 55.227276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121895, 35.708256, 55.076286>,  <35.910652, 35.639191, 54.985691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121895, 35.708256, 55.076286>,  <36.473965, 35.823360, 55.227276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121895, 35.708256, 55.076286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442938, 0.783786, 0.435299,
		0.170599, 0.550338, -0.817328,
		-0.880172, -0.287764, -0.377478,
		35.857841, 35.621925, 54.963043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214970, 36.424725, 55.031147>,  <36.473965, 35.823360, 55.227276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214970, 36.424725, 55.031147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.906612, 36.176212, 55.087337>,  <35.721596, 36.027107, 55.121052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.906612, 36.176212, 55.087337>,  <36.214970, 36.424725, 55.031147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906612, 36.176212, 55.087337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469787, 0.703505, 0.533274,
		-0.430139, 0.345104, -0.834197,
		-0.770896, -0.621276, 0.140479,
		35.675343, 35.989830, 55.129482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590176, 36.813293, 54.930359>,  <36.214970, 36.424725, 55.031147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590176, 36.813293, 54.930359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504719, 36.489517, 55.149143>,  <35.453445, 36.295254, 55.280415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504719, 36.489517, 55.149143>,  <35.590176, 36.813293, 54.930359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504719, 36.489517, 55.149143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382879, 0.584474, 0.715397,
		-0.898756, -0.056584, -0.434783,
		-0.213640, -0.809437, 0.546964,
		35.440628, 36.246685, 55.313232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027607, 37.045574, 55.288368>,  <35.590176, 36.813293, 54.930359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027607, 37.045574, 55.288368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.185524, 36.738010, 55.489532>,  <35.280273, 36.553471, 55.610229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.185524, 36.738010, 55.489532>,  <35.027607, 37.045574, 55.288368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185524, 36.738010, 55.489532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276230, 0.422710, 0.863142,
		-0.876262, -0.479682, -0.045513,
		0.394794, -0.768910, 0.502907,
		35.303963, 36.507336, 55.640404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576237, 36.983063, 55.696739>,  <35.027607, 37.045574, 55.288368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576237, 36.983063, 55.696739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859482, 36.775860, 55.888676>,  <35.029427, 36.651539, 56.003838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859482, 36.775860, 55.888676>,  <34.576237, 36.983063, 55.696739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859482, 36.775860, 55.888676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361968, 0.317186, 0.876569,
		-0.606268, -0.794395, 0.037100,
		0.708109, -0.518006, 0.479845,
		35.071915, 36.620457, 56.032631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292953, 36.604935, 56.278927>,  <34.576237, 36.983063, 55.696739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292953, 36.604935, 56.278927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.677307, 36.624874, 56.387901>,  <34.907921, 36.636837, 56.453285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.677307, 36.624874, 56.387901>,  <34.292953, 36.604935, 56.278927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677307, 36.624874, 56.387901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275974, 0.255060, 0.926705,
		-0.023292, -0.965639, 0.258840,
		0.960883, 0.049849, 0.272433,
		34.965572, 36.639828, 56.469631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314186, 36.303383, 56.758705>,  <34.292953, 36.604935, 56.278927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314186, 36.303383, 56.758705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640831, 36.527905, 56.812496>,  <34.836819, 36.662617, 56.844772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640831, 36.527905, 56.812496>,  <34.314186, 36.303383, 56.758705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640831, 36.527905, 56.812496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344114, 0.286405, 0.894180,
		0.463394, -0.776471, 0.427035,
		0.816610, 0.561306, 0.134476,
		34.885815, 36.696297, 56.852840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449635, 36.223316, 57.461723>,  <34.314186, 36.303383, 56.758705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449635, 36.223316, 57.461723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632610, 36.558323, 57.342178>,  <34.742397, 36.759327, 57.270451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632610, 36.558323, 57.342178>,  <34.449635, 36.223316, 57.461723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632610, 36.558323, 57.342178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268621, 0.450536, 0.851387,
		0.847698, -0.309176, 0.431066,
		0.457439, 0.837513, -0.298867,
		34.769844, 36.809578, 57.252518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828461, 36.384090, 58.058655>,  <34.449635, 36.223316, 57.461723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828461, 36.384090, 58.058655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787197, 36.714302, 57.836716>,  <34.762440, 36.912430, 57.703552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787197, 36.714302, 57.836716>,  <34.828461, 36.384090, 58.058655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787197, 36.714302, 57.836716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123042, 0.542949, 0.830703,
		0.987025, 0.153967, 0.045563,
		-0.103162, 0.825530, -0.554849,
		34.756248, 36.961960, 57.670261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011906, 36.839584, 58.513626>,  <34.828461, 36.384090, 58.058655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011906, 36.839584, 58.513626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849655, 37.076668, 58.235298>,  <34.752304, 37.218918, 58.068302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849655, 37.076668, 58.235298>,  <35.011906, 36.839584, 58.513626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849655, 37.076668, 58.235298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356218, 0.598559, 0.717520,
		0.841768, 0.538910, -0.031661,
		-0.405630, 0.592708, -0.695818,
		34.727966, 37.254478, 58.026554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241756, 37.550606, 58.629826>,  <35.011906, 36.839584, 58.513626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241756, 37.550606, 58.629826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.901981, 37.576359, 58.420330>,  <34.698116, 37.591812, 58.294632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.901981, 37.576359, 58.420330>,  <35.241756, 37.550606, 58.629826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901981, 37.576359, 58.420330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343001, 0.686877, 0.640742,
		0.401002, 0.723916, -0.561376,
		-0.849440, 0.064386, -0.523743,
		34.647148, 37.595676, 58.263206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906651, 38.179806, 58.866936>,  <35.241756, 37.550606, 58.629826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906651, 38.179806, 58.866936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.616436, 37.977467, 58.680294>,  <34.442307, 37.856064, 58.568310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.616436, 37.977467, 58.680294>,  <34.906651, 38.179806, 58.866936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616436, 37.977467, 58.680294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686217, 0.480478, 0.546121,
		-0.052060, 0.716421, -0.695723,
		-0.725532, -0.505848, -0.466606,
		34.398777, 37.825714, 58.540314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442585, 38.684410, 58.742130>,  <34.906651, 38.179806, 58.866936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442585, 38.684410, 58.742130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.221794, 38.352478, 58.709389>,  <34.089317, 38.153320, 58.689743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.221794, 38.352478, 58.709389>,  <34.442585, 38.684410, 58.742130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221794, 38.352478, 58.709389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703452, 0.410696, 0.580073,
		-0.447743, 0.377771, -0.810441,
		-0.551979, -0.829830, -0.081858,
		34.056202, 38.103531, 58.684830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851532, 38.830929, 58.532066>,  <34.442585, 38.684410, 58.742130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851532, 38.830929, 58.532066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789677, 38.480812, 58.715347>,  <33.752563, 38.270741, 58.825317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789677, 38.480812, 58.715347>,  <33.851532, 38.830929, 58.532066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789677, 38.480812, 58.715347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632131, 0.444085, 0.634980,
		-0.759274, -0.191452, -0.621972,
		-0.154640, -0.875291, 0.458205,
		33.743286, 38.218224, 58.852810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120010, 38.742027, 58.523209>,  <33.851532, 38.830929, 58.532066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120010, 38.742027, 58.523209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.261753, 38.510044, 58.816628>,  <33.346798, 38.370853, 58.992680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.261753, 38.510044, 58.816628>,  <33.120010, 38.742027, 58.523209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261753, 38.510044, 58.816628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650896, 0.410242, 0.638777,
		-0.671391, -0.703814, -0.232118,
		0.354356, -0.579954, 0.733543,
		33.368061, 38.336060, 59.036690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516315, 38.473125, 58.866333>,  <33.120010, 38.742027, 58.523209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516315, 38.473125, 58.866333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829002, 38.456745, 59.115250>,  <33.016613, 38.446918, 59.264599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829002, 38.456745, 59.115250>,  <32.516315, 38.473125, 58.866333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829002, 38.456745, 59.115250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543120, 0.445714, 0.711590,
		-0.306503, -0.894239, 0.326180,
		0.781714, -0.040950, 0.622292,
		33.063515, 38.444462, 59.301937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231033, 38.440857, 59.495827>,  <32.516315, 38.473125, 58.866333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231033, 38.440857, 59.495827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.605698, 38.528118, 59.605423>,  <32.830498, 38.580475, 59.671181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.605698, 38.528118, 59.605423>,  <32.231033, 38.440857, 59.495827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605698, 38.528118, 59.605423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346193, 0.458301, 0.818603,
		0.053007, -0.861610, 0.504796,
		0.936665, 0.218148, 0.273990,
		32.886696, 38.593563, 59.687618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281879, 38.315586, 60.267662>,  <32.231033, 38.440857, 59.495827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281879, 38.315586, 60.267662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.592014, 38.543022, 60.157707>,  <32.778095, 38.679482, 60.091736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.592014, 38.543022, 60.157707>,  <32.281879, 38.315586, 60.267662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592014, 38.543022, 60.157707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210603, 0.643117, 0.736238,
		0.595395, -0.512943, 0.618380,
		0.775339, 0.568586, -0.274882,
		32.824615, 38.713596, 60.075241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481251, 38.480743, 60.932308>,  <32.281879, 38.315586, 60.267662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481251, 38.480743, 60.932308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.666412, 38.745075, 60.695995>,  <32.777512, 38.903675, 60.554207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.666412, 38.745075, 60.695995>,  <32.481251, 38.480743, 60.932308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666412, 38.745075, 60.695995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259004, 0.738239, 0.622832,
		0.847724, -0.135297, 0.512892,
		0.462905, 0.660831, -0.590781,
		32.805283, 38.943325, 60.518761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998024, 38.938751, 61.425983>,  <32.481251, 38.480743, 60.932308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998024, 38.938751, 61.425983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.888046, 39.124126, 61.089024>,  <32.822060, 39.235352, 60.886848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.888046, 39.124126, 61.089024>,  <32.998024, 38.938751, 61.425983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888046, 39.124126, 61.089024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269291, 0.803976, 0.530194,
		0.922977, 0.372624, -0.096251,
		-0.274947, 0.463437, -0.842396,
		32.805561, 39.263157, 60.836304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261219, 39.579430, 61.438442>,  <32.998024, 38.938751, 61.425983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261219, 39.579430, 61.438442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.990646, 39.656563, 61.154118>,  <32.828300, 39.702843, 60.983524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.990646, 39.656563, 61.154118>,  <33.261219, 39.579430, 61.438442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990646, 39.656563, 61.154118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115980, 0.925183, 0.361366,
		0.727313, 0.326880, -0.603461,
		-0.676435, 0.192836, -0.710809,
		32.787716, 39.714413, 60.940876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464893, 40.210838, 61.161736>,  <33.261219, 39.579430, 61.438442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464893, 40.210838, 61.161736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.074806, 40.140759, 61.107689>,  <32.840755, 40.098709, 61.075260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.074806, 40.140759, 61.107689>,  <33.464893, 40.210838, 61.161736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074806, 40.140759, 61.107689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218748, 0.855098, 0.470061,
		0.033180, 0.487967, -0.872231,
		-0.975217, -0.175202, -0.135114,
		32.782242, 40.088200, 61.067154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212776, 40.903103, 61.085033>,  <33.464893, 40.210838, 61.161736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212776, 40.903103, 61.085033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867123, 40.705727, 61.124588>,  <32.659729, 40.587299, 61.148319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867123, 40.705727, 61.124588>,  <33.212776, 40.903103, 61.085033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867123, 40.705727, 61.124588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435044, 0.831227, 0.346118,
		-0.252984, 0.256075, -0.932965,
		-0.864138, -0.493443, 0.098883,
		32.607880, 40.557693, 61.154251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702908, 41.290665, 60.818493>,  <33.212776, 40.903103, 61.085033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702908, 41.290665, 60.818493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501350, 41.064140, 61.079376>,  <32.380417, 40.928226, 61.235909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501350, 41.064140, 61.079376>,  <32.702908, 41.290665, 60.818493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501350, 41.064140, 61.079376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463629, 0.814419, 0.348954,
		-0.728791, -0.126548, -0.672941,
		-0.503897, -0.566310, 0.652213,
		32.350182, 40.894249, 61.275040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046124, 41.533432, 60.901237>,  <32.702908, 41.290665, 60.818493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046124, 41.533432, 60.901237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.085934, 41.318542, 61.236256>,  <32.109821, 41.189610, 61.437267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.085934, 41.318542, 61.236256>,  <32.046124, 41.533432, 60.901237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085934, 41.318542, 61.236256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392015, 0.752477, 0.529247,
		-0.914559, -0.381005, -0.135708,
		0.099528, -0.537227, 0.837545,
		32.115791, 41.157375, 61.487518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655703, 41.908440, 61.368599>,  <32.046124, 41.533432, 60.901237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655703, 41.908440, 61.368599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794260, 41.641556, 61.632370>,  <31.877394, 41.481426, 61.790630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794260, 41.641556, 61.632370>,  <31.655703, 41.908440, 61.368599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794260, 41.641556, 61.632370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127074, 0.729840, 0.671704,
		-0.929443, -0.148879, 0.337597,
		0.346394, -0.667210, 0.659425,
		31.898178, 41.441391, 61.830196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308811, 42.145069, 61.985706>,  <31.655703, 41.908440, 61.368599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308811, 42.145069, 61.985706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.642441, 41.941563, 62.071007>,  <31.842619, 41.819458, 62.122189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.642441, 41.941563, 62.071007>,  <31.308811, 42.145069, 61.985706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642441, 41.941563, 62.071007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221814, 0.663251, 0.714770,
		-0.505091, -0.548869, 0.666052,
		0.834075, -0.508764, 0.213255,
		31.892664, 41.788933, 62.134983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491077, 42.319695, 62.636616>,  <31.308811, 42.145069, 61.985706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491077, 42.319695, 62.636616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.831921, 42.123112, 62.564632>,  <32.036427, 42.005161, 62.521442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.831921, 42.123112, 62.564632>,  <31.491077, 42.319695, 62.636616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831921, 42.123112, 62.564632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396701, 0.382219, 0.834588,
		-0.341378, -0.782548, 0.520652,
		0.852109, -0.491453, -0.179956,
		32.087555, 41.975677, 62.510647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772789, 42.095074, 63.281956>,  <31.491077, 42.319695, 62.636616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772789, 42.095074, 63.281956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100494, 42.056812, 63.055801>,  <32.297115, 42.033855, 62.920109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100494, 42.056812, 63.055801>,  <31.772789, 42.095074, 63.281956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100494, 42.056812, 63.055801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562704, 0.323832, 0.760590,
		0.110336, -0.941266, 0.319128,
		0.819262, -0.095654, -0.565385,
		32.346272, 42.028114, 62.886185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275433, 41.834305, 63.813663>,  <31.772789, 42.095074, 63.281956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275433, 41.834305, 63.813663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.453388, 42.013031, 63.503201>,  <32.560162, 42.120266, 63.316921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.453388, 42.013031, 63.503201>,  <32.275433, 41.834305, 63.813663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453388, 42.013031, 63.503201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671184, 0.407444, 0.619275,
		0.592946, -0.796456, -0.118631,
		0.444890, 0.446820, -0.776161,
		32.586857, 42.147076, 63.270351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889477, 41.545158, 63.891796>,  <32.275433, 41.834305, 63.813663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889477, 41.545158, 63.891796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.924961, 41.877155, 63.671524>,  <32.946251, 42.076351, 63.539360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.924961, 41.877155, 63.671524>,  <32.889477, 41.545158, 63.891796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924961, 41.877155, 63.671524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644240, 0.373842, 0.667230,
		0.759661, -0.413960, -0.501549,
		0.088706, 0.829988, -0.550683,
		32.951572, 42.126152, 63.506321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673161, 41.652210, 63.737518>,  <32.889477, 41.545158, 63.891796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673161, 41.652210, 63.737518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460598, 41.990097, 63.712044>,  <33.333061, 42.192829, 63.696758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460598, 41.990097, 63.712044>,  <33.673161, 41.652210, 63.737518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460598, 41.990097, 63.712044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595970, 0.426232, 0.680549,
		0.602018, 0.323694, -0.729930,
		-0.531408, 0.844719, -0.063687,
		33.301174, 42.243511, 63.692936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920361, 42.268028, 63.502804>,  <33.673161, 41.652210, 63.737518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920361, 42.268028, 63.502804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.994057, 42.455990, 63.157494>,  <34.038273, 42.568768, 62.950306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.994057, 42.455990, 63.157494>,  <33.920361, 42.268028, 63.502804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994057, 42.455990, 63.157494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976994, -0.008429, -0.213099,
		-0.107412, 0.882678, 0.457539,
		0.184241, 0.469902, -0.863277,
		34.049328, 42.596962, 62.898510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409763, 42.916393, 63.321461>,  <33.920361, 42.268028, 63.502804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409763, 42.916393, 63.321461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.554504, 42.763832, 62.981205>,  <33.641350, 42.672295, 62.777050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.554504, 42.763832, 62.981205>,  <33.409763, 42.916393, 63.321461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554504, 42.763832, 62.981205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931461, -0.110750, -0.346576,
		0.037975, 0.917752, -0.395335,
		0.361854, -0.381401, -0.850644,
		33.663059, 42.649410, 62.726013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301121, 43.367184, 62.879963>,  <33.409763, 42.916393, 63.321461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301121, 43.367184, 62.879963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337685, 43.014359, 62.695091>,  <33.359623, 42.802662, 62.584167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337685, 43.014359, 62.695091>,  <33.301121, 43.367184, 62.879963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337685, 43.014359, 62.695091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855597, 0.167899, -0.489656,
		0.509507, 0.440200, -0.739342,
		0.091411, -0.882062, -0.462179,
		33.365108, 42.749741, 62.556438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012901, 43.377571, 62.817039>,  <33.301121, 43.367184, 62.879963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012901, 43.377571, 62.817039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.272453, 43.443798, 62.519978>,  <34.428185, 43.483536, 62.341740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.272453, 43.443798, 62.519978>,  <34.012901, 43.377571, 62.817039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272453, 43.443798, 62.519978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599723, -0.489401, -0.633103,
		-0.468278, 0.856198, -0.218269,
		0.648883, 0.165567, -0.742657,
		34.467117, 43.493469, 62.297180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648872, 43.782124, 62.164818>,  <34.012901, 43.377571, 62.817039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648872, 43.782124, 62.164818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.973709, 43.578770, 62.050243>,  <34.168610, 43.456757, 61.981499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.973709, 43.578770, 62.050243>,  <33.648872, 43.782124, 62.164818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973709, 43.578770, 62.050243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538065, -0.462437, -0.704725,
		0.225813, 0.726425, -0.649087,
		0.812093, -0.508387, -0.286439,
		34.217339, 43.426254, 61.964310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801079, 43.775463, 61.372490>,  <33.648872, 43.782124, 62.164818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801079, 43.775463, 61.372490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957909, 43.450603, 61.545319>,  <34.052006, 43.255688, 61.649017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957909, 43.450603, 61.545319>,  <33.801079, 43.775463, 61.372490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957909, 43.450603, 61.545319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404290, -0.574008, -0.712084,
		0.826335, 0.104505, -0.553398,
		0.392071, -0.812153, 0.432073,
		34.075531, 43.206959, 61.674942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423306, 43.530884, 60.961601>,  <33.801079, 43.775463, 61.372490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423306, 43.530884, 60.961601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188789, 43.279316, 61.165848>,  <34.048080, 43.128376, 61.288395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188789, 43.279316, 61.165848>,  <34.423306, 43.530884, 60.961601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188789, 43.279316, 61.165848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146551, -0.537565, -0.830390,
		0.796738, -0.561677, 0.222998,
		-0.586287, -0.628922, 0.510612,
		34.012905, 43.090641, 61.319031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649555, 42.821754, 60.815022>,  <34.423306, 43.530884, 60.961601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649555, 42.821754, 60.815022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.263733, 42.840935, 60.918812>,  <34.032238, 42.852444, 60.981087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.263733, 42.840935, 60.918812>,  <34.649555, 42.821754, 60.815022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263733, 42.840935, 60.918812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242223, -0.550946, -0.798615,
		0.104660, -0.833162, 0.543035,
		-0.964559, 0.047953, 0.259474,
		33.974365, 42.855320, 60.996655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415310, 42.112190, 60.797840>,  <34.649555, 42.821754, 60.815022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415310, 42.112190, 60.797840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092495, 42.347198, 60.774170>,  <33.898804, 42.488205, 60.759968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092495, 42.347198, 60.774170>,  <34.415310, 42.112190, 60.797840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092495, 42.347198, 60.774170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298233, -0.492036, -0.817898,
		-0.509658, -0.642424, 0.572311,
		-0.807035, 0.587530, -0.059178,
		33.850384, 42.523457, 60.756420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892849, 41.651577, 60.668434>,  <34.415310, 42.112190, 60.797840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892849, 41.651577, 60.668434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.738571, 41.997562, 60.540012>,  <33.646004, 42.205154, 60.462959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.738571, 41.997562, 60.540012>,  <33.892849, 41.651577, 60.668434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738571, 41.997562, 60.540012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325507, -0.453173, -0.829867,
		-0.863298, -0.215572, 0.456339,
		-0.385696, 0.864964, -0.321054,
		33.622864, 42.257053, 60.443695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293163, 41.469631, 60.395592>,  <33.892849, 41.651577, 60.668434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293163, 41.469631, 60.395592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.385189, 41.821728, 60.229584>,  <33.440407, 42.032986, 60.129978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.385189, 41.821728, 60.229584>,  <33.293163, 41.469631, 60.395592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385189, 41.821728, 60.229584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439072, -0.286698, -0.851481,
		-0.868496, 0.378120, 0.320531,
		0.230067, 0.880244, -0.415018,
		33.454208, 42.085800, 60.105080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942902, 41.332390, 59.899761>,  <33.293163, 41.469631, 60.395592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942902, 41.332390, 59.899761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.145996, 41.668427, 59.823391>,  <33.267853, 41.870049, 59.777569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.145996, 41.668427, 59.823391>,  <32.942902, 41.332390, 59.899761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145996, 41.668427, 59.823391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177843, -0.114638, -0.977359,
		-0.842957, 0.530195, 0.091199,
		0.507735, 0.840090, -0.190926,
		33.298317, 41.920452, 59.766113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536060, 41.686512, 59.398342>,  <32.942902, 41.332390, 59.899761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536060, 41.686512, 59.398342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.923454, 41.772678, 59.348328>,  <33.155891, 41.824379, 59.318317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.923454, 41.772678, 59.348328>,  <32.536060, 41.686512, 59.398342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923454, 41.772678, 59.348328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092046, -0.156933, -0.983311,
		-0.231440, 0.963831, -0.132160,
		0.968485, 0.215413, -0.125037,
		33.214001, 41.837303, 59.310818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526375, 42.054928, 58.798512>,  <32.536060, 41.686512, 59.398342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526375, 42.054928, 58.798512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.912300, 41.959476, 58.842682>,  <33.143856, 41.902206, 58.869186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.912300, 41.959476, 58.842682>,  <32.526375, 42.054928, 58.798512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912300, 41.959476, 58.842682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090560, -0.092711, -0.991566,
		0.246858, 0.966674, -0.067838,
		0.964811, -0.238633, 0.110428,
		33.201744, 41.887886, 58.875809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882240, 42.496162, 58.265606>,  <32.526375, 42.054928, 58.798512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882240, 42.496162, 58.265606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.108997, 42.185223, 58.374680>,  <33.245052, 41.998657, 58.440125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.108997, 42.185223, 58.374680>,  <32.882240, 42.496162, 58.265606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108997, 42.185223, 58.374680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185603, -0.201974, -0.961643,
		0.802611, 0.595758, 0.029781,
		0.566892, -0.777353, 0.272682,
		33.279064, 41.952015, 58.456486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440338, 42.488216, 57.838356>,  <32.882240, 42.496162, 58.265606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440338, 42.488216, 57.838356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449406, 42.105923, 57.955700>,  <33.454845, 41.876545, 58.026104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449406, 42.105923, 57.955700>,  <33.440338, 42.488216, 57.838356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449406, 42.105923, 57.955700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197985, -0.283330, -0.938364,
		0.979943, 0.079349, 0.182799,
		0.022666, -0.955734, 0.293357,
		33.456207, 41.819202, 58.043709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020660, 42.240376, 57.571175>,  <33.440338, 42.488216, 57.838356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020660, 42.240376, 57.571175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.806438, 41.909943, 57.641342>,  <33.677906, 41.711681, 57.683441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.806438, 41.909943, 57.641342>,  <34.020660, 42.240376, 57.571175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806438, 41.909943, 57.641342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244175, -0.350312, -0.904246,
		0.808431, -0.441441, 0.389319,
		-0.535554, -0.826082, 0.175414,
		33.645771, 41.662117, 57.693966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385040, 41.753815, 57.262726>,  <34.020660, 42.240376, 57.571175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385040, 41.753815, 57.262726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.035946, 41.568096, 57.323067>,  <33.826488, 41.456665, 57.359272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.035946, 41.568096, 57.323067>,  <34.385040, 41.753815, 57.262726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035946, 41.568096, 57.323067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205924, -0.630289, -0.748552,
		0.442628, -0.622228, 0.645688,
		-0.872740, -0.464293, 0.150852,
		33.774124, 41.428806, 57.368320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538143, 41.085651, 57.199734>,  <34.385040, 41.753815, 57.262726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538143, 41.085651, 57.199734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.141190, 41.102592, 57.153469>,  <33.903019, 41.112759, 57.125710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.141190, 41.102592, 57.153469>,  <34.538143, 41.085651, 57.199734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141190, 41.102592, 57.153469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048583, -0.728297, -0.683537,
		-0.113189, -0.683951, 0.720694,
		-0.992385, 0.042356, -0.115664,
		33.843475, 41.115299, 57.118771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290714, 40.364815, 57.157291>,  <34.538143, 41.085651, 57.199734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290714, 40.364815, 57.157291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009892, 40.583881, 56.975224>,  <33.841400, 40.715321, 56.865982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009892, 40.583881, 56.975224>,  <34.290714, 40.364815, 57.157291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009892, 40.583881, 56.975224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082946, -0.697711, -0.711561,
		-0.707283, -0.461795, 0.535253,
		-0.702048, 0.547672, -0.455175,
		33.799274, 40.748180, 56.838673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927376, 39.886806, 56.867905>,  <34.290714, 40.364815, 57.157291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927376, 39.886806, 56.867905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.863937, 40.221497, 56.658241>,  <33.825874, 40.422310, 56.532444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.863937, 40.221497, 56.658241>,  <33.927376, 39.886806, 56.867905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863937, 40.221497, 56.658241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002610, -0.531234, -0.847221,
		-0.987341, -0.132995, 0.086433,
		-0.158592, 0.836722, -0.524162,
		33.816360, 40.472511, 56.500992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470741, 39.699722, 56.429996>,  <33.927376, 39.886806, 56.867905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470741, 39.699722, 56.429996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.680099, 40.003128, 56.274708>,  <33.805714, 40.185173, 56.181534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.680099, 40.003128, 56.274708>,  <33.470741, 39.699722, 56.429996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680099, 40.003128, 56.274708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110520, -0.512195, -0.851728,
		-0.844895, 0.402880, -0.351910,
		0.523391, 0.758514, -0.388225,
		33.837116, 40.230682, 56.158241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141579, 39.841908, 55.752430>,  <33.470741, 39.699722, 56.429996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141579, 39.841908, 55.752430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495052, 40.026646, 55.721977>,  <33.707138, 40.137489, 55.703705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495052, 40.026646, 55.721977>,  <33.141579, 39.841908, 55.752430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495052, 40.026646, 55.721977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151371, -0.435885, -0.887182,
		-0.442924, 0.772467, -0.455096,
		0.883688, 0.461842, -0.076135,
		33.760159, 40.165199, 55.699139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179337, 40.033333, 55.070004>,  <33.141579, 39.841908, 55.752430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179337, 40.033333, 55.070004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.567467, 40.051399, 55.165028>,  <33.800343, 40.062241, 55.222042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.567467, 40.051399, 55.165028>,  <33.179337, 40.033333, 55.070004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567467, 40.051399, 55.165028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239264, -0.321590, -0.916151,
		0.035017, 0.945801, -0.322853,
		0.970323, 0.045167, 0.237557,
		33.858562, 40.064949, 55.236294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419785, 40.084396, 54.373257>,  <33.179337, 40.033333, 55.070004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419785, 40.084396, 54.373257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730953, 40.024017, 54.617245>,  <33.917652, 39.987789, 54.763638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730953, 40.024017, 54.617245>,  <33.419785, 40.084396, 54.373257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730953, 40.024017, 54.617245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524414, -0.378811, -0.762556,
		0.346171, 0.913080, -0.215522,
		0.777917, -0.150952, 0.609966,
		33.964329, 39.978733, 54.800236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950756, 40.300037, 53.989056>,  <33.419785, 40.084396, 54.373257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950756, 40.300037, 53.989056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139805, 40.063644, 54.250549>,  <34.253235, 39.921810, 54.407448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139805, 40.063644, 54.250549>,  <33.950756, 40.300037, 53.989056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139805, 40.063644, 54.250549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435946, -0.487910, -0.756237,
		0.765887, 0.642406, 0.027041,
		0.472618, -0.590981, 0.653738,
		34.281590, 39.886349, 54.446671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734653, 40.354027, 53.885250>,  <33.950756, 40.300037, 53.989056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734653, 40.354027, 53.885250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.634834, 40.005596, 54.054462>,  <34.574944, 39.796539, 54.155991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.634834, 40.005596, 54.054462>,  <34.734653, 40.354027, 53.885250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634834, 40.005596, 54.054462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595090, -0.482579, -0.642640,
		0.763932, 0.091368, 0.638796,
		-0.249552, -0.871074, 0.423030,
		34.559967, 39.744274, 54.181370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397346, 39.995293, 53.909607>,  <34.734653, 40.354027, 53.885250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397346, 39.995293, 53.909607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.122086, 39.708675, 53.955235>,  <34.956928, 39.536705, 53.982613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.122086, 39.708675, 53.955235>,  <35.397346, 39.995293, 53.909607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122086, 39.708675, 53.955235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557081, -0.622509, -0.549675,
		0.464878, -0.314712, 0.827554,
		-0.688149, -0.716547, 0.114071,
		34.915642, 39.493710, 53.989456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780293, 39.398186, 53.993729>,  <35.397346, 39.995293, 53.909607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780293, 39.398186, 53.993729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419331, 39.269424, 53.879158>,  <35.202755, 39.192169, 53.810413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419331, 39.269424, 53.879158>,  <35.780293, 39.398186, 53.993729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419331, 39.269424, 53.879158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428200, -0.595815, -0.679448,
		0.048058, -0.735786, 0.675506,
		-0.902405, -0.321904, -0.286430,
		35.148609, 39.172852, 53.793228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826164, 38.683472, 53.911095>,  <35.780293, 39.398186, 53.993729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826164, 38.683472, 53.911095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500824, 38.766068, 53.693535>,  <35.305622, 38.815624, 53.563000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500824, 38.766068, 53.693535>,  <35.826164, 38.683472, 53.911095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500824, 38.766068, 53.693535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347355, -0.577611, -0.738722,
		-0.466701, -0.789764, 0.398074,
		-0.813348, 0.206489, -0.543900,
		35.256821, 38.828014, 53.530365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636616, 38.061932, 53.695499>,  <35.826164, 38.683472, 53.911095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636616, 38.061932, 53.695499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490452, 38.329788, 53.436871>,  <35.402752, 38.490501, 53.281693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490452, 38.329788, 53.436871>,  <35.636616, 38.061932, 53.695499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490452, 38.329788, 53.436871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444382, -0.484849, -0.753291,
		-0.817925, -0.562584, -0.120409,
		-0.365409, 0.669643, -0.646572,
		35.380829, 38.530682, 53.242901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310112, 37.736408, 53.027180>,  <35.636616, 38.061932, 53.695499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310112, 37.736408, 53.027180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384441, 38.115559, 52.923645>,  <35.429039, 38.343048, 52.861523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384441, 38.115559, 52.923645>,  <35.310112, 37.736408, 53.027180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384441, 38.115559, 52.923645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410909, -0.314254, -0.855802,
		-0.892537, 0.052669, -0.447888,
		0.185825, 0.947877, -0.258841,
		35.440189, 38.399921, 52.845993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026054, 37.750221, 52.348858>,  <35.310112, 37.736408, 53.027180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026054, 37.750221, 52.348858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.288544, 38.051239, 52.370930>,  <35.446037, 38.231850, 52.384174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.288544, 38.051239, 52.370930>,  <35.026054, 37.750221, 52.348858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288544, 38.051239, 52.370930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286379, -0.180727, -0.940917,
		-0.698111, 0.633255, -0.334110,
		0.656223, 0.752546, 0.055183,
		35.485409, 38.277004, 52.387486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067463, 38.026608, 51.694473>,  <35.026054, 37.750221, 52.348858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067463, 38.026608, 51.694473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.407982, 38.184891, 51.832291>,  <35.612293, 38.279861, 51.914982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.407982, 38.184891, 51.832291>,  <35.067463, 38.026608, 51.694473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407982, 38.184891, 51.832291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463486, -0.259353, -0.847300,
		-0.245923, 0.880995, -0.404191,
		0.851295, 0.395707, 0.344548,
		35.663372, 38.303604, 51.935654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234509, 38.519287, 51.192085>,  <35.067463, 38.026608, 51.694473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234509, 38.519287, 51.192085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.558075, 38.418640, 51.404629>,  <35.752216, 38.358250, 51.532154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.558075, 38.418640, 51.404629>,  <35.234509, 38.519287, 51.192085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558075, 38.418640, 51.404629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529188, -0.082164, -0.844517,
		0.256156, 0.964332, 0.066691,
		0.808915, -0.251620, 0.531360,
		35.800751, 38.343155, 51.564037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788364, 38.654694, 50.769573>,  <35.234509, 38.519287, 51.192085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788364, 38.654694, 50.769573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977459, 38.428825, 51.040176>,  <36.090916, 38.293304, 51.202538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977459, 38.428825, 51.040176>,  <35.788364, 38.654694, 50.769573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977459, 38.428825, 51.040176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639115, -0.308828, -0.704385,
		0.606671, 0.765357, 0.214895,
		0.472740, -0.564672, 0.676508,
		36.119282, 38.259422, 51.243130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525852, 38.850403, 50.714241>,  <35.788364, 38.654694, 50.769573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525852, 38.850403, 50.714241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505516, 38.493549, 50.893806>,  <36.493317, 38.279438, 51.001545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505516, 38.493549, 50.893806>,  <36.525852, 38.850403, 50.714241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505516, 38.493549, 50.893806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651461, -0.370318, -0.662165,
		0.756977, 0.258787, 0.600013,
		-0.050836, -0.892129, 0.448911,
		36.490265, 38.225910, 51.028481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251183, 38.730549, 50.830196>,  <36.525852, 38.850403, 50.714241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251183, 38.730549, 50.830196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037708, 38.392643, 50.814480>,  <36.909622, 38.189899, 50.805050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037708, 38.392643, 50.814480>,  <37.251183, 38.730549, 50.830196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037708, 38.392643, 50.814480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650597, -0.380445, -0.657255,
		0.540279, -0.376334, 0.752643,
		-0.533687, -0.844769, -0.039295,
		36.877602, 38.139214, 50.802692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689358, 38.155014, 51.137608>,  <37.251183, 38.730549, 50.830196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689358, 38.155014, 51.137608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404102, 38.007957, 50.898857>,  <37.232948, 37.919724, 50.755608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404102, 38.007957, 50.898857>,  <37.689358, 38.155014, 51.137608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404102, 38.007957, 50.898857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700681, -0.400235, -0.590642,
		-0.021745, -0.839434, 0.543027,
		-0.713143, -0.367645, -0.596878,
		37.190159, 37.897663, 50.719795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999966, 37.493561, 50.988823>,  <37.689358, 38.155014, 51.137608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999966, 37.493561, 50.988823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.719860, 37.569462, 50.713543>,  <37.551796, 37.615002, 50.548374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.719860, 37.569462, 50.713543>,  <37.999966, 37.493561, 50.988823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719860, 37.569462, 50.713543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615699, -0.327366, -0.716761,
		-0.361301, -0.925649, 0.112413,
		-0.700269, 0.189754, -0.688198,
		37.509781, 37.626389, 50.507084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038910, 36.881371, 50.555447>,  <37.999966, 37.493561, 50.988823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038910, 36.881371, 50.555447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.838970, 37.161896, 50.352150>,  <37.719006, 37.330212, 50.230171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.838970, 37.161896, 50.352150>,  <38.038910, 36.881371, 50.555447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838970, 37.161896, 50.352150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474361, -0.269295, -0.838130,
		-0.724658, -0.660029, -0.198069,
		-0.499852, 0.701314, -0.508239,
		37.689014, 37.372292, 50.199677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859951, 36.541145, 49.912224>,  <38.038910, 36.881371, 50.555447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859951, 36.541145, 49.912224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823437, 36.926098, 49.809864>,  <37.801529, 37.157070, 49.748447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823437, 36.926098, 49.809864>,  <37.859951, 36.541145, 49.912224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823437, 36.926098, 49.809864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480681, -0.182468, -0.857701,
		-0.872131, -0.201302, -0.445943,
		-0.091287, 0.962384, -0.255898,
		37.796051, 37.214813, 49.733093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527645, 36.549675, 49.227631>,  <37.859951, 36.541145, 49.912224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527645, 36.549675, 49.227631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718338, 36.897148, 49.281467>,  <37.832752, 37.105633, 49.313770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718338, 36.897148, 49.281467>,  <37.527645, 36.549675, 49.227631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718338, 36.897148, 49.281467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500494, -0.142364, -0.853954,
		-0.722656, 0.474469, -0.502641,
		0.476733, 0.868684, 0.134589,
		37.861359, 37.157753, 49.321842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520664, 36.862984, 48.549301>,  <37.527645, 36.549675, 49.227631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520664, 36.862984, 48.549301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803596, 37.053753, 48.758003>,  <37.973354, 37.168213, 48.883224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803596, 37.053753, 48.758003>,  <37.520664, 36.862984, 48.549301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803596, 37.053753, 48.758003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654791, -0.163949, -0.737814,
		-0.266337, 0.863520, -0.428250,
		0.707329, 0.476921, 0.521759,
		38.015797, 37.196831, 48.914532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722111, 37.477894, 48.145008>,  <37.520664, 36.862984, 48.549301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722111, 37.477894, 48.145008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006981, 37.328205, 48.382587>,  <38.177902, 37.238392, 48.525135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006981, 37.328205, 48.382587>,  <37.722111, 37.477894, 48.145008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006981, 37.328205, 48.382587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605577, -0.100471, -0.789419,
		0.355091, 0.921881, 0.155067,
		0.712171, -0.374220, 0.593946,
		38.220631, 37.215939, 48.560772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067833, 37.571281, 47.812206>,  <37.722111, 37.477894, 48.145008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067833, 37.571281, 47.812206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815559, 37.851814, 47.679317>,  <36.664196, 38.020134, 47.599583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815559, 37.851814, 47.679317>,  <37.067833, 37.571281, 47.812206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815559, 37.851814, 47.679317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294689, 0.179602, 0.938564,
		0.717911, 0.689841, 0.093402,
		-0.630684, 0.701329, -0.332227,
		36.626354, 38.062214, 47.579651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031937, 38.107086, 48.251057>,  <37.067833, 37.571281, 47.812206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031937, 38.107086, 48.251057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666737, 38.126305, 48.089005>,  <36.447617, 38.137836, 47.991776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666737, 38.126305, 48.089005>,  <37.031937, 38.107086, 48.251057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666737, 38.126305, 48.089005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366749, 0.338298, 0.866631,
		0.178690, 0.939812, -0.291245,
		-0.912998, 0.048045, -0.405126,
		36.392838, 38.140717, 47.967468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708279, 38.626011, 48.648750>,  <37.031937, 38.107086, 48.251057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708279, 38.626011, 48.648750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.391037, 38.480545, 48.453308>,  <36.200691, 38.393265, 48.336044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.391037, 38.480545, 48.453308>,  <36.708279, 38.626011, 48.648750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391037, 38.480545, 48.453308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608542, 0.439177, 0.660908,
		-0.025768, 0.821504, -0.569620,
		-0.793103, -0.363668, -0.488603,
		36.153107, 38.371445, 48.306728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265358, 39.208511, 48.485905>,  <36.708279, 38.626011, 48.648750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265358, 39.208511, 48.485905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064075, 38.862896, 48.491875>,  <35.943306, 38.655525, 48.495457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064075, 38.862896, 48.491875>,  <36.265358, 39.208511, 48.485905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064075, 38.862896, 48.491875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713727, 0.425280, 0.556534,
		-0.487214, 0.269397, -0.830691,
		-0.503205, -0.864038, 0.014926,
		35.913113, 38.603683, 48.496353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584366, 39.414387, 48.369595>,  <36.265358, 39.208511, 48.485905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584366, 39.414387, 48.369595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555382, 39.050022, 48.532074>,  <35.537991, 38.831406, 48.629562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555382, 39.050022, 48.532074>,  <35.584366, 39.414387, 48.369595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555382, 39.050022, 48.532074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846589, 0.271491, 0.457798,
		-0.527291, -0.310707, -0.790839,
		-0.072464, -0.910908, 0.406196,
		35.533642, 38.776749, 48.653934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881229, 39.172642, 48.271027>,  <35.584366, 39.414387, 48.369595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881229, 39.172642, 48.271027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008789, 38.944401, 48.573738>,  <35.085323, 38.807457, 48.755367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008789, 38.944401, 48.573738>,  <34.881229, 39.172642, 48.271027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008789, 38.944401, 48.573738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788866, 0.282792, 0.545637,
		-0.525352, -0.771003, -0.359944,
		0.318898, -0.570599, 0.756783,
		35.104458, 38.773220, 48.800774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263790, 38.788059, 48.535336>,  <34.881229, 39.172642, 48.271027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263790, 38.788059, 48.535336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.537430, 38.787025, 48.827091>,  <34.701614, 38.786404, 49.002144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.537430, 38.787025, 48.827091>,  <34.263790, 38.788059, 48.535336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537430, 38.787025, 48.827091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712818, 0.209593, 0.669299,
		-0.154604, -0.977785, 0.141540,
		0.684096, -0.002584, 0.729388,
		34.742661, 38.786251, 49.045906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951595, 38.325195, 49.030224>,  <34.263790, 38.788059, 48.535336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951595, 38.325195, 49.030224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.212746, 38.577213, 49.198414>,  <34.369438, 38.728424, 49.299328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.212746, 38.577213, 49.198414>,  <33.951595, 38.325195, 49.030224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212746, 38.577213, 49.198414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689559, 0.264649, 0.674143,
		0.313468, -0.730068, 0.607239,
		0.652875, 0.630049, 0.420466,
		34.408607, 38.766228, 49.324554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822506, 38.241238, 49.665794>,  <33.951595, 38.325195, 49.030224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822506, 38.241238, 49.665794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024891, 38.586090, 49.676609>,  <34.146320, 38.793003, 49.683098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.024891, 38.586090, 49.676609>,  <33.822506, 38.241238, 49.665794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024891, 38.586090, 49.676609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631117, 0.348656, 0.692915,
		0.587960, -0.367647, 0.720513,
		0.505959, 0.862134, 0.027032,
		34.176678, 38.844730, 49.684719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821915, 38.316204, 50.342743>,  <33.822506, 38.241238, 49.665794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821915, 38.316204, 50.342743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887939, 38.677231, 50.183678>,  <33.927555, 38.893845, 50.088238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887939, 38.677231, 50.183678>,  <33.821915, 38.316204, 50.342743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887939, 38.677231, 50.183678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576720, 0.415399, 0.703447,
		0.800094, 0.113229, 0.589092,
		0.165058, 0.902565, -0.397659,
		33.937458, 38.948002, 50.064381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942558, 38.743622, 50.904999>,  <33.821915, 38.316204, 50.342743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942558, 38.743622, 50.904999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873981, 38.995407, 50.601845>,  <33.832836, 39.146477, 50.419952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873981, 38.995407, 50.601845>,  <33.942558, 38.743622, 50.904999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873981, 38.995407, 50.601845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603293, 0.541092, 0.585881,
		0.778874, 0.557670, 0.286984,
		-0.171443, 0.629463, -0.757881,
		33.822548, 39.184246, 50.374481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954239, 39.427498, 51.161232>,  <33.942558, 38.743622, 50.904999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954239, 39.427498, 51.161232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.748394, 39.452675, 50.819187>,  <33.624889, 39.467781, 50.613960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.748394, 39.452675, 50.819187>,  <33.954239, 39.427498, 51.161232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748394, 39.452675, 50.819187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678810, 0.579374, 0.451158,
		0.523827, 0.812628, -0.255424,
		-0.514609, 0.062944, -0.855111,
		33.594009, 39.471558, 50.562653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945019, 40.149986, 50.896980>,  <33.954239, 39.427498, 51.161232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945019, 40.149986, 50.896980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627327, 39.944450, 50.767262>,  <33.436710, 39.821129, 50.689430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627327, 39.944450, 50.767262>,  <33.945019, 40.149986, 50.896980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627327, 39.944450, 50.767262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603660, 0.728108, 0.324736,
		0.069259, 0.453679, -0.888470,
		-0.794228, -0.513842, -0.324296,
		33.389057, 39.790298, 50.669971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489784, 40.654766, 50.724052>,  <33.945019, 40.149986, 50.896980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489784, 40.654766, 50.724052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256969, 40.330063, 50.743160>,  <33.117279, 40.135242, 50.754623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256969, 40.330063, 50.743160>,  <33.489784, 40.654766, 50.724052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256969, 40.330063, 50.743160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692921, 0.525861, 0.493286,
		-0.425545, 0.254015, -0.868555,
		-0.582041, -0.811756, 0.047766,
		33.082355, 40.086536, 50.757488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901447, 40.788849, 50.355217>,  <33.489784, 40.654766, 50.724052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901447, 40.788849, 50.355217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818256, 40.519943, 50.639420>,  <32.768341, 40.358601, 50.809940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818256, 40.519943, 50.639420>,  <32.901447, 40.788849, 50.355217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818256, 40.519943, 50.639420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525531, 0.689434, 0.498495,
		-0.824963, -0.269718, -0.496677,
		-0.207973, -0.672260, 0.710503,
		32.755863, 40.318264, 50.852570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191704, 40.988007, 50.559208>,  <32.901447, 40.788849, 50.355217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191704, 40.988007, 50.559208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.357323, 40.777142, 50.856033>,  <32.456696, 40.650623, 51.034130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.357323, 40.777142, 50.856033>,  <32.191704, 40.988007, 50.559208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357323, 40.777142, 50.856033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594576, 0.460649, 0.659001,
		-0.689232, -0.714074, -0.122706,
		0.414051, -0.527163, 0.742066,
		32.481537, 40.618992, 51.078651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629438, 41.115025, 50.917145>,  <32.191704, 40.988007, 50.559208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629438, 41.115025, 50.917145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.923096, 40.957588, 51.138458>,  <32.099289, 40.863129, 51.271244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.923096, 40.957588, 51.138458>,  <31.629438, 41.115025, 50.917145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923096, 40.957588, 51.138458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352832, 0.475064, 0.806116,
		-0.580122, -0.787021, 0.209896,
		0.734145, -0.393588, 0.553282,
		32.143337, 40.839512, 51.304443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265181, 40.813179, 51.498241>,  <31.629438, 41.115025, 50.917145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265181, 40.813179, 51.498241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.649506, 40.871925, 51.592278>,  <31.880100, 40.907173, 51.648701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.649506, 40.871925, 51.592278>,  <31.265181, 40.813179, 51.498241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649506, 40.871925, 51.592278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274409, 0.383981, 0.881622,
		0.039204, -0.911587, 0.409234,
		0.960814, 0.146861, 0.235094,
		31.937750, 40.915985, 51.662807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303141, 40.713417, 52.213787>,  <31.265181, 40.813179, 51.498241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303141, 40.713417, 52.213787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.657434, 40.889053, 52.153553>,  <31.870010, 40.994434, 52.117413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.657434, 40.889053, 52.153553>,  <31.303141, 40.713417, 52.213787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657434, 40.889053, 52.153553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051256, 0.414932, 0.908408,
		0.461359, -0.796887, 0.390024,
		0.885732, 0.439094, -0.150587,
		31.923155, 41.020779, 52.108376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765129, 40.521126, 52.686314>,  <31.303141, 40.713417, 52.213787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765129, 40.521126, 52.686314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.962854, 40.849762, 52.572720>,  <32.081490, 41.046944, 52.504562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.962854, 40.849762, 52.572720>,  <31.765129, 40.521126, 52.686314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962854, 40.849762, 52.572720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224470, 0.194967, 0.954778,
		0.839803, -0.535704, -0.088048,
		0.494312, 0.821589, -0.283983,
		32.111149, 41.096237, 52.487526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421467, 40.584095, 53.045998>,  <31.765129, 40.521126, 52.686314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421467, 40.584095, 53.045998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.329784, 40.955692, 52.929771>,  <32.274773, 41.178650, 52.860035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.329784, 40.955692, 52.929771>,  <32.421467, 40.584095, 53.045998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329784, 40.955692, 52.929771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074869, 0.314459, 0.946314,
		0.970494, 0.195149, -0.141629,
		-0.229208, 0.928995, -0.290569,
		32.261021, 41.234390, 52.842602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949497, 41.052914, 53.362839>,  <32.421467, 40.584095, 53.045998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949497, 41.052914, 53.362839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.616215, 41.250557, 53.263546>,  <32.416245, 41.369144, 53.203968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.616215, 41.250557, 53.263546>,  <32.949497, 41.052914, 53.362839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616215, 41.250557, 53.263546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003981, 0.454269, 0.890856,
		0.552946, 0.741280, -0.380467,
		-0.833208, 0.494109, -0.248235,
		32.366253, 41.398788, 53.189075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096729, 41.598072, 53.738243>,  <32.949497, 41.052914, 53.362839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096729, 41.598072, 53.738243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709496, 41.673111, 53.671761>,  <32.477158, 41.718136, 53.631870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709496, 41.673111, 53.671761>,  <33.096729, 41.598072, 53.738243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709496, 41.673111, 53.671761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057398, 0.479562, 0.875629,
		0.243970, 0.857220, -0.453488,
		-0.968083, 0.187598, -0.166202,
		32.419071, 41.729389, 53.621899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068291, 42.266022, 53.864983>,  <33.096729, 41.598072, 53.738243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068291, 42.266022, 53.864983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703403, 42.106365, 53.901936>,  <32.484470, 42.010571, 53.924107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703403, 42.106365, 53.901936>,  <33.068291, 42.266022, 53.864983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703403, 42.106365, 53.901936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078735, 0.392085, 0.916553,
		-0.402060, 0.828826, -0.389096,
		-0.912222, -0.399144, 0.092384,
		32.429737, 41.986622, 53.929649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664200, 42.843533, 54.115280>,  <33.068291, 42.266022, 53.864983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664200, 42.843533, 54.115280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.470520, 42.508724, 54.217213>,  <32.354313, 42.307838, 54.278374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.470520, 42.508724, 54.217213>,  <32.664200, 42.843533, 54.115280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470520, 42.508724, 54.217213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265781, 0.418197, 0.868603,
		-0.833614, 0.352846, -0.424955,
		-0.484199, -0.837025, 0.254835,
		32.325260, 42.257618, 54.293663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026085, 42.992088, 54.385040>,  <32.664200, 42.843533, 54.115280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026085, 42.992088, 54.385040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.096275, 42.628277, 54.535755>,  <32.138390, 42.409992, 54.626186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.096275, 42.628277, 54.535755>,  <32.026085, 42.992088, 54.385040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096275, 42.628277, 54.535755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316475, 0.310301, 0.896414,
		-0.932229, -0.276547, -0.233390,
		0.175480, -0.909525, 0.376791,
		32.148918, 42.355419, 54.648792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502836, 42.884239, 54.710625>,  <32.026085, 42.992088, 54.385040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502836, 42.884239, 54.710625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.743193, 42.610630, 54.876053>,  <31.887407, 42.446465, 54.975311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.743193, 42.610630, 54.876053>,  <31.502836, 42.884239, 54.710625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743193, 42.610630, 54.876053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367071, 0.223480, 0.902948,
		-0.710062, -0.694385, -0.116798,
		0.600892, -0.684022, 0.413573,
		31.923460, 42.405422, 55.000126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110207, 42.502445, 55.125954>,  <31.502836, 42.884239, 54.710625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110207, 42.502445, 55.125954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.479246, 42.443336, 55.268490>,  <31.700670, 42.407871, 55.354012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.479246, 42.443336, 55.268490>,  <31.110207, 42.502445, 55.125954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479246, 42.443336, 55.268490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284785, 0.362192, 0.887533,
		-0.260216, -0.920315, 0.292074,
		0.922597, -0.147772, 0.356340,
		31.756025, 42.399006, 55.375393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952955, 42.289520, 55.687706>,  <31.110207, 42.502445, 55.125954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952955, 42.289520, 55.687706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341064, 42.362446, 55.751369>,  <31.573931, 42.406200, 55.789566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341064, 42.362446, 55.751369>,  <30.952955, 42.289520, 55.687706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341064, 42.362446, 55.751369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201905, 0.247218, 0.947691,
		0.133433, -0.951654, 0.276679,
		0.970273, 0.182316, 0.159156,
		31.632147, 42.417141, 55.799118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061575, 41.995052, 56.255878>,  <30.952955, 42.289520, 55.687706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061575, 41.995052, 56.255878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333757, 42.287460, 56.235493>,  <31.497066, 42.462906, 56.223263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333757, 42.287460, 56.235493>,  <31.061575, 41.995052, 56.255878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333757, 42.287460, 56.235493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050228, 0.115908, 0.991989,
		0.731067, -0.672444, 0.115587,
		0.680454, 0.731016, -0.050961,
		31.537893, 42.506763, 56.220203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552933, 41.886940, 56.843719>,  <31.061575, 41.995052, 56.255878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552933, 41.886940, 56.843719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.600857, 42.270172, 56.739620>,  <31.629612, 42.500111, 56.677162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.600857, 42.270172, 56.739620>,  <31.552933, 41.886940, 56.843719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600857, 42.270172, 56.739620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022734, 0.264712, 0.964059,
		0.992536, -0.109587, 0.053496,
		0.119810, 0.958080, -0.260245,
		31.636801, 42.557594, 56.661545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965467, 42.177334, 57.411232>,  <31.552933, 41.886940, 56.843719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965467, 42.177334, 57.411232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.799643, 42.485897, 57.218124>,  <31.700148, 42.671036, 57.102261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.799643, 42.485897, 57.218124>,  <31.965467, 42.177334, 57.411232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799643, 42.485897, 57.218124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110295, 0.484001, 0.868088,
		0.903312, 0.413125, -0.115567,
		-0.414564, 0.771408, -0.482770,
		31.675274, 42.717319, 57.073292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327808, 42.738609, 57.533806>,  <31.965467, 42.177334, 57.411232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327808, 42.738609, 57.533806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.956758, 42.857590, 57.443447>,  <31.734127, 42.928978, 57.389233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.956758, 42.857590, 57.443447>,  <32.327808, 42.738609, 57.533806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956758, 42.857590, 57.443447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008820, 0.587190, 0.809401,
		0.373402, 0.752815, -0.542070,
		-0.927628, 0.297451, -0.225898,
		31.678471, 42.946827, 57.375679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287338, 43.361004, 57.971439>,  <32.327808, 42.738609, 57.533806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287338, 43.361004, 57.971439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919542, 43.300064, 57.826485>,  <31.698864, 43.263500, 57.739513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919542, 43.300064, 57.826485>,  <32.287338, 43.361004, 57.971439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919542, 43.300064, 57.826485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379111, 0.587429, 0.714983,
		0.103950, 0.794807, -0.597893,
		-0.919494, -0.152346, -0.362383,
		31.643694, 43.254360, 57.717770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026638, 44.076881, 57.930614>,  <32.287338, 43.361004, 57.971439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026638, 44.076881, 57.930614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.736513, 43.801620, 57.938358>,  <31.562439, 43.636463, 57.943005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.736513, 43.801620, 57.938358>,  <32.026638, 44.076881, 57.930614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736513, 43.801620, 57.938358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335263, 0.377649, 0.863122,
		-0.601268, 0.619541, -0.504624,
		-0.725311, -0.688149, 0.019359,
		31.518919, 43.595177, 57.944164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348495, 44.383972, 58.061554>,  <32.026638, 44.076881, 57.930614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348495, 44.383972, 58.061554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.273413, 44.015232, 58.197174>,  <31.228363, 43.793987, 58.278545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.273413, 44.015232, 58.197174>,  <31.348495, 44.383972, 58.061554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273413, 44.015232, 58.197174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371250, 0.386162, 0.844424,
		-0.909363, 0.032631, -0.414723,
		-0.187705, -0.921854, 0.339047,
		31.217102, 43.738674, 58.298889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781649, 44.532776, 58.396049>,  <31.348495, 44.383972, 58.061554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781649, 44.532776, 58.396049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.922461, 44.178558, 58.517296>,  <31.006947, 43.966026, 58.590046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.922461, 44.178558, 58.517296>,  <30.781649, 44.532776, 58.396049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922461, 44.178558, 58.517296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445323, 0.126384, 0.886405,
		-0.823264, -0.447024, -0.349864,
		0.352027, -0.885548, 0.303118,
		31.028069, 43.912895, 58.608231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271084, 44.104206, 58.869476>,  <30.781649, 44.532776, 58.396049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271084, 44.104206, 58.869476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613716, 43.916298, 58.954880>,  <30.819296, 43.803555, 59.006123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613716, 43.916298, 58.954880>,  <30.271084, 44.104206, 58.869476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613716, 43.916298, 58.954880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280863, -0.077334, 0.956627,
		-0.432882, -0.879395, -0.198183,
		0.856580, -0.469769, 0.213513,
		30.870689, 43.775368, 59.018932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037170, 43.652031, 59.274509>,  <30.271084, 44.104206, 58.869476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037170, 43.652031, 59.274509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.431162, 43.678944, 59.338123>,  <30.667557, 43.695091, 59.376293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.431162, 43.678944, 59.338123>,  <30.037170, 43.652031, 59.274509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431162, 43.678944, 59.338123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151031, -0.110821, 0.982297,
		0.083717, -0.991560, -0.098995,
		0.984978, 0.067283, 0.159034,
		30.726656, 43.699127, 59.385834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552666, 43.808502, 58.761463>,  <30.037170, 43.652031, 59.274509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552666, 43.808502, 58.761463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.201065, 43.660557, 58.881832>,  <28.990105, 43.571789, 58.954052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.201065, 43.660557, 58.881832>,  <29.552666, 43.808502, 58.761463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201065, 43.660557, 58.881832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145561, -0.392832, -0.908017,
		0.454056, -0.841952, 0.291462,
		-0.879002, -0.369865, 0.300923,
		28.937365, 43.549599, 58.972111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668047, 43.121563, 58.756351>,  <29.552666, 43.808502, 58.761463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668047, 43.121563, 58.756351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.275463, 43.178204, 58.704681>,  <29.039913, 43.212189, 58.673679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.275463, 43.178204, 58.704681>,  <29.668047, 43.121563, 58.756351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275463, 43.178204, 58.704681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035501, -0.527971, -0.848520,
		-0.188356, -0.837374, 0.513155,
		-0.981459, 0.141606, -0.129174,
		28.981026, 43.220684, 58.665928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643438, 42.500889, 58.431503>,  <29.668047, 43.121563, 58.756351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643438, 42.500889, 58.431503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.298782, 42.681602, 58.339008>,  <29.091990, 42.790031, 58.283512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.298782, 42.681602, 58.339008>,  <29.643438, 42.500889, 58.431503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298782, 42.681602, 58.339008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208357, -0.730343, -0.650528,
		-0.462779, -0.512341, 0.723424,
		-0.861640, 0.451781, -0.231237,
		29.040291, 42.817139, 58.269638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038977, 42.035118, 58.529488>,  <29.643438, 42.500889, 58.431503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038977, 42.035118, 58.529488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.905874, 42.299568, 58.260509>,  <28.826014, 42.458241, 58.099121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.905874, 42.299568, 58.260509>,  <29.038977, 42.035118, 58.529488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905874, 42.299568, 58.260509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150858, -0.741219, -0.654092,
		-0.930868, -0.116209, 0.346382,
		-0.332757, 0.661128, -0.672446,
		28.806047, 42.497906, 58.058777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451881, 41.677048, 58.195728>,  <29.038977, 42.035118, 58.529488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451881, 41.677048, 58.195728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.528551, 41.968670, 57.932903>,  <28.574553, 42.143642, 57.775208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.528551, 41.968670, 57.932903>,  <28.451881, 41.677048, 58.195728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528551, 41.968670, 57.932903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214644, -0.622134, -0.752912,
		-0.957700, 0.285348, 0.037242,
		0.191672, 0.729058, -0.657066,
		28.586052, 42.187386, 57.735783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990389, 41.503433, 57.574398>,  <28.451881, 41.677048, 58.195728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990389, 41.503433, 57.574398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.276596, 41.740498, 57.426460>,  <28.448320, 41.882736, 57.337696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.276596, 41.740498, 57.426460>,  <27.990389, 41.503433, 57.574398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276596, 41.740498, 57.426460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009892, -0.520764, -0.853643,
		-0.698522, 0.614457, -0.366755,
		0.715520, 0.592660, -0.369844,
		28.491253, 41.918297, 57.315506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805311, 41.708878, 56.834011>,  <27.990389, 41.503433, 57.574398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805311, 41.708878, 56.834011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.201706, 41.727592, 56.884216>,  <28.439543, 41.738823, 56.914337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.201706, 41.727592, 56.884216>,  <27.805311, 41.708878, 56.834011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201706, 41.727592, 56.884216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133181, -0.444190, -0.885979,
		0.014298, 0.894710, -0.446418,
		0.990989, 0.046787, 0.125509,
		28.499002, 41.741627, 56.921867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019869, 41.705170, 56.217381>,  <27.805311, 41.708878, 56.834011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019869, 41.705170, 56.217381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.367197, 41.618690, 56.395943>,  <28.575594, 41.566803, 56.503082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.367197, 41.618690, 56.395943>,  <28.019869, 41.705170, 56.217381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367197, 41.618690, 56.395943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331064, -0.417563, -0.846190,
		0.369348, 0.882553, -0.291002,
		0.868319, -0.216199, 0.446408,
		28.627693, 41.553829, 56.529865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503275, 41.898338, 55.818798>,  <28.019869, 41.705170, 56.217381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503275, 41.898338, 55.818798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.696732, 41.620270, 56.031525>,  <28.812805, 41.453430, 56.159161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.696732, 41.620270, 56.031525>,  <28.503275, 41.898338, 55.818798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696732, 41.620270, 56.031525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336729, -0.413062, -0.846164,
		0.807900, 0.588320, 0.034309,
		0.483643, -0.695169, 0.531817,
		28.841824, 41.411720, 56.191071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175631, 41.820248, 55.443188>,  <28.503275, 41.898338, 55.818798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175631, 41.820248, 55.443188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.141951, 41.513744, 55.697983>,  <29.121742, 41.329842, 55.850861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.141951, 41.513744, 55.697983>,  <29.175631, 41.820248, 55.443188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141951, 41.513744, 55.697983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561831, -0.564468, -0.604750,
		0.822956, 0.306960, 0.478037,
		-0.084202, -0.766258, 0.636992,
		29.116690, 41.283867, 55.889080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849396, 41.487946, 55.306385>,  <29.175631, 41.820248, 55.443188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849396, 41.487946, 55.306385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.651285, 41.192501, 55.489319>,  <29.532419, 41.015236, 55.599079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.651285, 41.192501, 55.489319>,  <29.849396, 41.487946, 55.306385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651285, 41.192501, 55.489319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472188, -0.670761, -0.571942,
		0.729205, -0.067322, 0.680976,
		-0.495277, -0.738612, 0.457333,
		29.502703, 40.970917, 55.626518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373590, 41.039021, 55.664837>,  <29.849396, 41.487946, 55.306385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373590, 41.039021, 55.664837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.028868, 40.843010, 55.612438>,  <29.822035, 40.725403, 55.581001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.028868, 40.843010, 55.612438>,  <30.373590, 41.039021, 55.664837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028868, 40.843010, 55.612438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492846, -0.747875, -0.444732,
		0.119967, -0.447832, 0.886033,
		-0.861807, -0.490030, -0.130992,
		29.770325, 40.695999, 55.573139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502399, 40.213242, 55.817554>,  <30.373590, 41.039021, 55.664837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502399, 40.213242, 55.817554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166441, 40.201233, 55.600788>,  <29.964867, 40.194027, 55.470730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166441, 40.201233, 55.600788>,  <30.502399, 40.213242, 55.817554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166441, 40.201233, 55.600788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413719, -0.681682, -0.603446,
		-0.351300, -0.731033, 0.584961,
		-0.839896, -0.030019, -0.541916,
		29.914473, 40.192226, 55.438213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347258, 39.506531, 55.651028>,  <30.502399, 40.213242, 55.817554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347258, 39.506531, 55.651028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192852, 39.735065, 55.361320>,  <30.100208, 39.872189, 55.187496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192852, 39.735065, 55.361320>,  <30.347258, 39.506531, 55.651028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192852, 39.735065, 55.361320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320102, -0.653380, -0.686025,
		-0.865174, -0.496656, 0.069329,
		-0.386016, 0.571339, -0.724268,
		30.077047, 39.906467, 55.144039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018257, 39.056248, 55.185101>,  <30.347258, 39.506531, 55.651028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018257, 39.056248, 55.185101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.038414, 39.380253, 54.951401>,  <30.050508, 39.574654, 54.811180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.038414, 39.380253, 54.951401>,  <30.018257, 39.056248, 55.185101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038414, 39.380253, 54.951401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196880, -0.581570, -0.789313,
		-0.979132, -0.075251, -0.188781,
		0.050393, 0.810008, -0.584249,
		30.053532, 39.623257, 54.776127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792448, 38.816105, 54.645264>,  <30.018257, 39.056248, 55.185101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792448, 38.816105, 54.645264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.969900, 39.153912, 54.525276>,  <30.076372, 39.356594, 54.453281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.969900, 39.153912, 54.525276>,  <29.792448, 38.816105, 54.645264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969900, 39.153912, 54.525276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236865, -0.433297, -0.869568,
		-0.864342, 0.314714, -0.392260,
		0.443630, 0.844517, -0.299972,
		30.102989, 39.407269, 54.435284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486986, 38.914982, 53.995495>,  <29.792448, 38.816105, 54.645264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486986, 38.914982, 53.995495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.822983, 39.131943, 54.001362>,  <30.024580, 39.262119, 54.004883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.822983, 39.131943, 54.001362>,  <29.486986, 38.914982, 53.995495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822983, 39.131943, 54.001362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294577, -0.433154, -0.851822,
		-0.455675, 0.719845, -0.523625,
		0.839991, 0.542402, 0.014672,
		30.074980, 39.294662, 54.005764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498737, 39.239292, 53.370140>,  <29.486986, 38.914982, 53.995495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498737, 39.239292, 53.370140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.878073, 39.227009, 53.496445>,  <30.105675, 39.219639, 53.572227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.878073, 39.227009, 53.496445>,  <29.498737, 39.239292, 53.370140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878073, 39.227009, 53.496445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282928, -0.368433, -0.885556,
		0.143533, 0.929147, -0.340711,
		0.948341, -0.030710, 0.315764,
		30.162575, 39.217796, 53.591175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975407, 39.608826, 52.875046>,  <29.498737, 39.239292, 53.370140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975407, 39.608826, 52.875046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.243616, 39.396648, 53.082520>,  <30.404541, 39.269341, 53.207005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.243616, 39.396648, 53.082520>,  <29.975407, 39.608826, 52.875046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243616, 39.396648, 53.082520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461956, -0.248539, -0.851367,
		0.580514, 0.810468, 0.078391,
		0.670522, -0.530443, 0.518681,
		30.444773, 39.237514, 53.238125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593708, 39.813969, 52.614914>,  <29.975407, 39.608826, 52.875046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593708, 39.813969, 52.614914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.657928, 39.466217, 52.801853>,  <30.696461, 39.257568, 52.914017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.657928, 39.466217, 52.801853>,  <30.593708, 39.813969, 52.614914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657928, 39.466217, 52.801853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464407, -0.351265, -0.812981,
		0.870947, 0.347564, 0.347347,
		0.160552, -0.869374, 0.467345,
		30.706095, 39.205406, 52.942055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312250, 39.636696, 52.387009>,  <30.593708, 39.813969, 52.614914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312250, 39.636696, 52.387009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165844, 39.292320, 52.528328>,  <31.078001, 39.085693, 52.613117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165844, 39.292320, 52.528328>,  <31.312250, 39.636696, 52.387009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165844, 39.292320, 52.528328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276010, -0.462986, -0.842296,
		0.888736, -0.210779, 0.407087,
		-0.366014, -0.860939, 0.353295,
		31.056040, 39.034039, 52.634315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889357, 39.142212, 52.585148>,  <31.312250, 39.636696, 52.387009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889357, 39.142212, 52.585148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.554226, 38.945927, 52.489437>,  <31.353148, 38.828156, 52.432011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.554226, 38.945927, 52.489437>,  <31.889357, 39.142212, 52.585148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554226, 38.945927, 52.489437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407769, -0.271059, -0.871924,
		0.363005, -0.828089, 0.427196,
		-0.837826, -0.490710, -0.239273,
		31.302877, 38.798714, 52.417656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029816, 38.633221, 52.169384>,  <31.889357, 39.142212, 52.585148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029816, 38.633221, 52.169384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.637377, 38.622688, 52.092709>,  <31.401913, 38.616367, 52.046703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.637377, 38.622688, 52.092709>,  <32.029816, 38.633221, 52.169384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637377, 38.622688, 52.092709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185581, -0.408461, -0.893711,
		-0.054765, -0.912396, 0.405628,
		-0.981101, -0.026332, -0.191693,
		31.343046, 38.614788, 52.035202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997145, 38.051876, 51.730076>,  <32.029816, 38.633221, 52.169384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997145, 38.051876, 51.730076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.659962, 38.259647, 51.674046>,  <31.457653, 38.384308, 51.640427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.659962, 38.259647, 51.674046>,  <31.997145, 38.051876, 51.730076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659962, 38.259647, 51.674046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060838, -0.166671, -0.984134,
		-0.534533, -0.838103, 0.108896,
		-0.842955, 0.519427, -0.140080,
		31.407076, 38.415474, 51.632023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482702, 37.538548, 51.406693>,  <31.997145, 38.051876, 51.730076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482702, 37.538548, 51.406693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.346487, 37.905910, 51.326134>,  <31.264759, 38.126328, 51.277798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.346487, 37.905910, 51.326134>,  <31.482702, 37.538548, 51.406693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346487, 37.905910, 51.326134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134252, -0.259501, -0.956366,
		-0.930597, -0.298639, 0.211668,
		-0.340536, 0.918408, -0.201398,
		31.244326, 38.181435, 51.265713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739283, 37.466759, 51.206215>,  <31.482702, 37.538548, 51.406693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739283, 37.466759, 51.206215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.920033, 37.792072, 51.059582>,  <31.028482, 37.987259, 50.971603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.920033, 37.792072, 51.059582>,  <30.739283, 37.466759, 51.206215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920033, 37.792072, 51.059582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280142, -0.260770, -0.923861,
		-0.846953, 0.520164, 0.110000,
		0.451874, 0.813283, -0.366580,
		31.055595, 38.036057, 50.949608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283068, 37.797585, 50.757931>,  <30.739283, 37.466759, 51.206215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283068, 37.797585, 50.757931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640362, 37.945187, 50.655193>,  <30.854738, 38.033749, 50.593552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.640362, 37.945187, 50.655193>,  <30.283068, 37.797585, 50.757931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640362, 37.945187, 50.655193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144789, -0.304742, -0.941365,
		-0.425642, 0.878047, -0.218777,
		0.893233, 0.369008, -0.256842,
		30.908331, 38.055889, 50.578140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280651, 37.909561, 50.021988>,  <30.283068, 37.797585, 50.757931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280651, 37.909561, 50.021988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676611, 37.923977, 50.076828>,  <30.914186, 37.932625, 50.109734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676611, 37.923977, 50.076828>,  <30.280651, 37.909561, 50.021988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676611, 37.923977, 50.076828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135446, -0.525856, -0.839720,
		0.041833, 0.849810, -0.525427,
		0.989901, 0.036039, 0.137102,
		30.973581, 37.934788, 50.117958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534580, 37.960484, 49.374702>,  <30.280651, 37.909561, 50.021988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534580, 37.960484, 49.374702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859581, 37.838902, 49.573681>,  <31.054581, 37.765953, 49.693069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859581, 37.838902, 49.573681>,  <30.534580, 37.960484, 49.374702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859581, 37.838902, 49.573681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274689, -0.553028, -0.786579,
		0.514186, 0.775739, -0.365843,
		0.812502, -0.303955, 0.497446,
		31.103331, 37.747715, 49.722916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085131, 38.103210, 48.857388>,  <30.534580, 37.960484, 49.374702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085131, 38.103210, 48.857388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206604, 37.833603, 49.126747>,  <31.279488, 37.671837, 49.288364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206604, 37.833603, 49.126747>,  <31.085131, 38.103210, 48.857388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206604, 37.833603, 49.126747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366666, -0.569670, -0.735549,
		0.879393, 0.470288, 0.074141,
		0.303684, -0.674022, 0.673402,
		31.297709, 37.631397, 49.328770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817366, 37.879898, 48.748787>,  <31.085131, 38.103210, 48.857388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817366, 37.879898, 48.748787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.652534, 37.582561, 48.959553>,  <31.553637, 37.404160, 49.086014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.652534, 37.582561, 48.959553>,  <31.817366, 37.879898, 48.748787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652534, 37.582561, 48.959553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335047, -0.661400, -0.671039,
		0.847311, -0.099980, 0.521602,
		-0.412078, -0.743340, 0.526913,
		31.528912, 37.359558, 49.117626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249050, 37.217663, 48.566612>,  <31.817366, 37.879898, 48.748787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249050, 37.217663, 48.566612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.946276, 37.078888, 48.788128>,  <31.764610, 36.995625, 48.921036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.946276, 37.078888, 48.788128>,  <32.249050, 37.217663, 48.566612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946276, 37.078888, 48.788128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208106, -0.931290, -0.298984,
		0.619465, -0.111066, 0.777128,
		-0.756938, -0.346935, 0.553787,
		31.719194, 36.974808, 48.954266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516178, 36.664658, 49.007595>,  <32.249050, 37.217663, 48.566612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516178, 36.664658, 49.007595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124893, 36.607540, 48.947311>,  <31.890123, 36.573269, 48.911140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124893, 36.607540, 48.947311>,  <32.516178, 36.664658, 49.007595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124893, 36.607540, 48.947311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183300, -0.934898, -0.303919,
		-0.097501, -0.324922, 0.940702,
		-0.978210, -0.142798, -0.150712,
		31.831430, 36.564701, 48.902100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306915, 35.935093, 49.362526>,  <32.516178, 36.664658, 49.007595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306915, 35.935093, 49.362526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.035564, 36.055367, 49.094376>,  <31.872755, 36.127529, 48.933487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.035564, 36.055367, 49.094376>,  <32.306915, 35.935093, 49.362526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035564, 36.055367, 49.094376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067669, -0.934113, -0.350506,
		-0.731594, -0.192410, 0.654024,
		-0.678373, 0.300685, -0.670372,
		31.832052, 36.145573, 48.893265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990866, 35.340790, 49.282043>,  <32.306915, 35.935093, 49.362526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990866, 35.340790, 49.282043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.888512, 35.569328, 48.970123>,  <31.827099, 35.706451, 48.782970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.888512, 35.569328, 48.970123>,  <31.990866, 35.340790, 49.282043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888512, 35.569328, 48.970123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029611, -0.810907, -0.584426,
		-0.966253, -0.126456, 0.224418,
		-0.255886, 0.571348, -0.779797,
		31.811747, 35.740734, 48.736183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448160, 34.977322, 48.970783>,  <31.990866, 35.340790, 49.282043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448160, 34.977322, 48.970783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.602160, 35.220139, 48.692711>,  <31.694559, 35.365829, 48.525867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.602160, 35.220139, 48.692711>,  <31.448160, 34.977322, 48.970783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602160, 35.220139, 48.692711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244602, -0.793417, -0.557368,
		-0.889913, 0.044544, -0.453949,
		0.384999, 0.607046, -0.695177,
		31.717659, 35.402252, 48.484158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110575, 34.745930, 48.296524>,  <31.448160, 34.977322, 48.970783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110575, 34.745930, 48.296524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453682, 34.937717, 48.222397>,  <31.659546, 35.052788, 48.177921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453682, 34.937717, 48.222397>,  <31.110575, 34.745930, 48.296524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453682, 34.937717, 48.222397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336579, -0.796365, -0.502511,
		-0.388517, 0.368665, -0.844477,
		0.857770, 0.479467, -0.185316,
		31.711014, 35.081558, 48.166801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293970, 34.623302, 47.633472>,  <31.110575, 34.745930, 48.296524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293970, 34.623302, 47.633472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.641506, 34.714943, 47.809029>,  <31.850029, 34.769928, 47.914364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.641506, 34.714943, 47.809029>,  <31.293970, 34.623302, 47.633472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641506, 34.714943, 47.809029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449493, -0.736628, -0.505307,
		0.207531, 0.636310, -0.742994,
		0.868842, 0.229104, 0.438890,
		31.902159, 34.783672, 47.940697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785908, 34.600582, 47.118137>,  <31.293970, 34.623302, 47.633472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785908, 34.600582, 47.118137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.011021, 34.583984, 47.448364>,  <32.146088, 34.574028, 47.646500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.011021, 34.583984, 47.448364>,  <31.785908, 34.600582, 47.118137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011021, 34.583984, 47.448364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439751, -0.830652, -0.341522,
		0.699927, 0.555245, -0.449228,
		0.562780, -0.041492, 0.825565,
		32.179855, 34.571537, 47.696033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429150, 34.290394, 46.885056>,  <31.785908, 34.600582, 47.118137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429150, 34.290394, 46.885056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.455444, 34.276726, 47.283955>,  <32.471222, 34.268524, 47.523296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.455444, 34.276726, 47.283955>,  <32.429150, 34.290394, 46.885056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455444, 34.276726, 47.283955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527833, -0.846947, -0.063814,
		0.846800, 0.530578, -0.037641,
		0.065738, -0.034169, 0.997252,
		32.475166, 34.266476, 47.583130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096428, 34.414680, 46.992676>,  <32.429150, 34.290394, 46.885056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096428, 34.414680, 46.992676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.960609, 34.219498, 47.314323>,  <32.879120, 34.102386, 47.507313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.960609, 34.219498, 47.314323>,  <33.096428, 34.414680, 46.992676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960609, 34.219498, 47.314323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572694, -0.785428, -0.234788,
		0.746143, 0.380793, 0.546139,
		-0.339547, -0.487955, 0.804119,
		32.858746, 34.073112, 47.555557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581463, 34.315022, 47.484398>,  <33.096428, 34.414680, 46.992676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581463, 34.315022, 47.484398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322536, 34.011990, 47.517998>,  <33.167179, 33.830170, 47.538158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322536, 34.011990, 47.517998>,  <33.581463, 34.315022, 47.484398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322536, 34.011990, 47.517998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752083, -0.652732, -0.091169,
		0.123896, 0.004158, 0.992287,
		-0.647318, -0.757578, 0.083998,
		33.128342, 33.784718, 47.543198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861935, 33.821693, 47.915176>,  <33.581463, 34.315022, 47.484398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861935, 33.821693, 47.915176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604614, 33.615482, 47.688763>,  <33.450222, 33.491756, 47.552914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604614, 33.615482, 47.688763>,  <33.861935, 33.821693, 47.915176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604614, 33.615482, 47.688763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629847, -0.776673, -0.008452,
		-0.435267, -0.361952, 0.824338,
		-0.643300, -0.515528, -0.566035,
		33.411625, 33.460823, 47.518951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817780, 33.087383, 48.118656>,  <33.861935, 33.821693, 47.915176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817780, 33.087383, 48.118656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.752728, 33.091328, 47.723999>,  <33.713696, 33.093693, 47.487206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.752728, 33.091328, 47.723999>,  <33.817780, 33.087383, 48.118656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752728, 33.091328, 47.723999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775285, -0.617243, -0.133956,
		-0.610316, -0.786711, 0.092739,
		-0.162627, 0.009856, -0.986638,
		33.703938, 33.094284, 47.428009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781292, 32.422997, 47.893570>,  <33.817780, 33.087383, 48.118656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781292, 32.422997, 47.893570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937710, 32.695953, 47.646534>,  <34.031563, 32.859730, 47.498314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937710, 32.695953, 47.646534>,  <33.781292, 32.422997, 47.893570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937710, 32.695953, 47.646534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797933, -0.585779, -0.142007,
		-0.458676, -0.437264, -0.773574,
		0.391049, 0.682396, -0.617590,
		34.055023, 32.900673, 47.461258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088192, 32.011318, 47.303070>,  <33.781292, 32.422997, 47.893570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088192, 32.011318, 47.303070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.253368, 32.370628, 47.363174>,  <34.352474, 32.586216, 47.399239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.253368, 32.370628, 47.363174>,  <34.088192, 32.011318, 47.303070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253368, 32.370628, 47.363174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909040, -0.396392, -0.128532,
		-0.055895, 0.189670, -0.980256,
		0.412944, 0.898275, 0.150261,
		34.377251, 32.640110, 47.408253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753384, 32.145245, 47.347778>,  <34.088192, 32.011318, 47.303070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753384, 32.145245, 47.347778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895035, 32.507763, 47.255493>,  <34.980026, 32.725273, 47.200123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895035, 32.507763, 47.255493>,  <34.753384, 32.145245, 47.347778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895035, 32.507763, 47.255493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930466, -0.366229, -0.010444,
		-0.093960, -0.210975, -0.972965,
		0.354125, 0.906292, -0.230716,
		35.001274, 32.779652, 47.186279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352322, 32.126244, 46.830376>,  <34.753384, 32.145245, 47.347778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352322, 32.126244, 46.830376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386692, 32.463970, 47.041939>,  <35.407314, 32.666607, 47.168877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386692, 32.463970, 47.041939>,  <35.352322, 32.126244, 46.830376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386692, 32.463970, 47.041939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975702, -0.178708, 0.126762,
		0.201548, 0.505165, -0.839158,
		0.085928, 0.844317, 0.528909,
		35.412472, 32.717266, 47.200611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984470, 32.552975, 46.621601>,  <35.352322, 32.126244, 46.830376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984470, 32.552975, 46.621601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.910500, 32.669888, 46.996914>,  <35.866116, 32.740036, 47.222103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.910500, 32.669888, 46.996914>,  <35.984470, 32.552975, 46.621601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910500, 32.669888, 46.996914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958373, -0.157701, 0.238015,
		0.217535, 0.943240, -0.250950,
		-0.184930, 0.292280, 0.938282,
		35.855022, 32.757572, 47.278397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546616, 32.807590, 46.719193>,  <35.984470, 32.552975, 46.621601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546616, 32.807590, 46.719193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.402050, 32.777554, 47.090942>,  <36.315311, 32.759529, 47.313992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.402050, 32.777554, 47.090942>,  <36.546616, 32.807590, 46.719193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402050, 32.777554, 47.090942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912958, -0.231019, 0.336359,
		0.189445, 0.970047, 0.152051,
		-0.361411, -0.075095, 0.929378,
		36.293629, 32.755024, 47.369755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955467, 33.268753, 47.019005>,  <36.546616, 32.807590, 46.719193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955467, 33.268753, 47.019005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.818546, 33.051754, 47.325867>,  <36.736393, 32.921555, 47.509983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.818546, 33.051754, 47.325867>,  <36.955467, 33.268753, 47.019005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818546, 33.051754, 47.325867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877279, 0.107853, 0.467706,
		-0.336471, 0.833103, 0.439007,
		-0.342299, -0.542501, 0.767153,
		36.715858, 32.889004, 47.556011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157745, 33.647621, 47.612385>,  <36.955467, 33.268753, 47.019005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157745, 33.647621, 47.612385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098248, 33.281807, 47.762852>,  <37.062550, 33.062317, 47.853130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098248, 33.281807, 47.762852>,  <37.157745, 33.647621, 47.612385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098248, 33.281807, 47.762852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821667, 0.097351, 0.561593,
		-0.550217, 0.392619, 0.736962,
		-0.148748, -0.914535, 0.376166,
		37.053623, 33.007446, 47.875702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356121, 33.691250, 48.221130>,  <37.157745, 33.647621, 47.612385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356121, 33.691250, 48.221130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.343960, 33.292408, 48.193268>,  <37.336662, 33.053101, 48.176552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.343960, 33.292408, 48.193268>,  <37.356121, 33.691250, 48.221130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343960, 33.292408, 48.193268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738240, -0.069383, 0.670960,
		-0.673853, -0.031018, 0.738214,
		-0.030408, -0.997108, -0.069653,
		37.334839, 32.993275, 48.172371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397068, 33.440529, 48.969913>,  <37.356121, 33.691250, 48.221130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397068, 33.440529, 48.969913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.532162, 33.153873, 48.725830>,  <37.613216, 32.981880, 48.579380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.532162, 33.153873, 48.725830>,  <37.397068, 33.440529, 48.969913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532162, 33.153873, 48.725830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691843, -0.250564, 0.677179,
		-0.638192, -0.650878, 0.411180,
		0.337734, -0.716642, -0.610213,
		37.633480, 32.938881, 48.542767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413876, 32.796913, 49.365818>,  <37.397068, 33.440529, 48.969913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413876, 32.796913, 49.365818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670834, 32.789757, 49.059349>,  <37.825008, 32.785465, 48.875469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670834, 32.789757, 49.059349>,  <37.413876, 32.796913, 49.365818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670834, 32.789757, 49.059349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734034, -0.273005, 0.621821,
		-0.220289, -0.961846, -0.162248,
		0.642391, -0.017885, -0.766168,
		37.863552, 32.784389, 48.829498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741821, 32.113583, 49.434299>,  <37.413876, 32.796913, 49.365818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741821, 32.113583, 49.434299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982147, 32.352833, 49.222160>,  <38.126343, 32.496384, 49.094875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982147, 32.352833, 49.222160>,  <37.741821, 32.113583, 49.434299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982147, 32.352833, 49.222160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785634, -0.319265, 0.529952,
		0.147656, -0.735062, -0.661726,
		0.600814, 0.598125, -0.530348,
		38.162392, 32.532269, 49.063057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365070, 31.800035, 49.321022>,  <37.741821, 32.113583, 49.434299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365070, 31.800035, 49.321022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.485577, 32.170746, 49.231289>,  <38.557880, 32.393173, 49.177448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.485577, 32.170746, 49.231289>,  <38.365070, 31.800035, 49.321022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485577, 32.170746, 49.231289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828881, -0.138230, 0.542079,
		0.471375, -0.349259, -0.809830,
		0.301268, 0.926775, -0.224336,
		38.575958, 32.448780, 49.163990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018951, 31.709658, 49.272739>,  <38.365070, 31.800035, 49.321022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018951, 31.709658, 49.272739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989281, 32.106728, 49.310879>,  <38.971478, 32.344971, 49.333763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989281, 32.106728, 49.310879>,  <39.018951, 31.709658, 49.272739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989281, 32.106728, 49.310879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925103, 0.032792, 0.378298,
		0.372401, 0.116267, -0.920760,
		-0.074177, 0.992677, 0.095347,
		38.967030, 32.404530, 49.339481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647614, 31.681046, 48.826824>,  <39.018951, 31.709658, 49.272739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647614, 31.681046, 48.826824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.820995, 31.580126, 48.480770>,  <39.925026, 31.519573, 48.273136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.820995, 31.580126, 48.480770>,  <39.647614, 31.681046, 48.826824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820995, 31.580126, 48.480770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888590, -0.279531, -0.363689,
		-0.150073, 0.926395, -0.345356,
		0.433457, -0.252300, -0.865136,
		39.951031, 31.504436, 48.221230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312752, 31.892342, 48.103313>,  <39.647614, 31.681046, 48.826824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312752, 31.892342, 48.103313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.505844, 31.543003, 48.077282>,  <39.621700, 31.333399, 48.061661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.505844, 31.543003, 48.077282>,  <39.312752, 31.892342, 48.103313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505844, 31.543003, 48.077282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837056, -0.438264, -0.327508,
		0.257505, 0.212575, -0.942604,
		0.482729, -0.873348, -0.065082,
		39.650661, 31.280998, 48.057758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197021, 31.462824, 47.453850>,  <39.312752, 31.892342, 48.103313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197021, 31.462824, 47.453850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.338375, 31.189915, 47.709858>,  <39.423187, 31.026169, 47.863464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.338375, 31.189915, 47.709858>,  <39.197021, 31.462824, 47.453850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338375, 31.189915, 47.709858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666408, -0.663749, -0.339615,
		0.656522, -0.306500, -0.689229,
		0.353384, -0.682272, 0.640019,
		39.444389, 30.985233, 47.901863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444500, 30.858686, 47.080688>,  <39.197021, 31.462824, 47.453850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444500, 30.858686, 47.080688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.302982, 30.763466, 47.442497>,  <39.218071, 30.706333, 47.659584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.302982, 30.763466, 47.442497>,  <39.444500, 30.858686, 47.080688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302982, 30.763466, 47.442497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690897, -0.585353, -0.424291,
		0.630468, -0.775044, 0.042624,
		-0.353794, -0.238054, 0.904522,
		39.196842, 30.692049, 47.713852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891880, 31.382830, 46.893810>,  <39.444500, 30.858686, 47.080688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891880, 31.382830, 46.893810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.029423, 31.307650, 46.525803>,  <40.111950, 31.262541, 46.304996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.029423, 31.307650, 46.525803>,  <39.891880, 31.382830, 46.893810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029423, 31.307650, 46.525803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664962, 0.643041, -0.379899,
		0.663013, 0.742410, 0.096135,
		0.343860, -0.187951, -0.920019,
		40.132580, 31.251265, 46.249798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810863, 32.037693, 46.597092>,  <39.891880, 31.382830, 46.893810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810863, 32.037693, 46.597092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.832272, 31.770359, 46.300320>,  <39.845116, 31.609959, 46.122257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.832272, 31.770359, 46.300320>,  <39.810863, 32.037693, 46.597092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832272, 31.770359, 46.300320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638592, 0.548296, -0.539973,
		0.767682, 0.502690, -0.397451,
		0.053518, -0.668337, -0.741931,
		39.848328, 31.569859, 46.077740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120522, 32.317307, 46.025055>,  <39.810863, 32.037693, 46.597092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120522, 32.317307, 46.025055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.827972, 32.059181, 45.936810>,  <39.652443, 31.904306, 45.883862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.827972, 32.059181, 45.936810>,  <40.120522, 32.317307, 46.025055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827972, 32.059181, 45.936810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603302, 0.763046, -0.231921,
		0.317998, -0.036525, -0.947388,
		-0.731371, -0.645311, -0.220612,
		39.608562, 31.865587, 45.870625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935459, 32.485943, 45.370953>,  <40.120522, 32.317307, 46.025055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935459, 32.485943, 45.370953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.628601, 32.288551, 45.534885>,  <39.444485, 32.170116, 45.633244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.628601, 32.288551, 45.534885>,  <39.935459, 32.485943, 45.370953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628601, 32.288551, 45.534885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638404, 0.649739, -0.412650,
		-0.062646, -0.578200, -0.813486,
		-0.767148, -0.493482, 0.409829,
		39.398457, 32.140507, 45.657833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853420, 32.706615, 44.632767>,  <39.935459, 32.485943, 45.370953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853420, 32.706615, 44.632767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.168289, 32.465843, 44.579044>,  <40.357212, 32.321381, 44.546810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.168289, 32.465843, 44.579044>,  <39.853420, 32.706615, 44.632767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168289, 32.465843, 44.579044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337870, 0.603077, -0.722594,
		0.515951, 0.523427, 0.678100,
		0.787172, -0.601932, -0.134308,
		40.404442, 32.285263, 44.538754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567722, 33.016899, 44.695057>,  <39.853420, 32.706615, 44.632767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567722, 33.016899, 44.695057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.563499, 32.697746, 44.453968>,  <40.560966, 32.506252, 44.309315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.563499, 32.697746, 44.453968>,  <40.567722, 33.016899, 44.695057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563499, 32.697746, 44.453968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287773, 0.574827, -0.766003,
		0.957640, -0.181532, 0.223542,
		-0.010556, -0.797885, -0.602718,
		40.560333, 32.458382, 44.273151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269867, 33.019352, 44.409832>,  <40.567722, 33.016899, 44.695057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269867, 33.019352, 44.409832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.976471, 32.849979, 44.197155>,  <40.800434, 32.748356, 44.069550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.976471, 32.849979, 44.197155>,  <41.269867, 33.019352, 44.409832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976471, 32.849979, 44.197155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231334, 0.580025, -0.781060,
		0.639121, -0.695899, -0.327489,
		-0.733491, -0.423432, -0.531691,
		40.756424, 32.722950, 44.037647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493290, 32.687469, 43.874020>,  <41.269867, 33.019352, 44.409832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493290, 32.687469, 43.874020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120907, 32.782429, 43.763046>,  <40.897476, 32.839405, 43.696465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120907, 32.782429, 43.763046>,  <41.493290, 32.687469, 43.874020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120907, 32.782429, 43.763046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356053, 0.421771, -0.833868,
		-0.080947, -0.875072, -0.477175,
		-0.930954, 0.237399, -0.277431,
		40.841621, 32.853649, 43.679817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231136, 32.498425, 43.115314>,  <41.493290, 32.687469, 43.874020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231136, 32.498425, 43.115314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.100254, 32.854084, 43.243282>,  <41.021725, 33.067478, 43.320065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.100254, 32.854084, 43.243282>,  <41.231136, 32.498425, 43.115314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100254, 32.854084, 43.243282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499648, 0.450155, -0.740076,
		-0.802053, -0.082306, -0.591554,
		-0.327204, 0.889149, 0.319924,
		41.002094, 33.120831, 43.339260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749897, 32.897858, 42.674004>,  <41.231136, 32.498425, 43.115314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749897, 32.897858, 42.674004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.019485, 33.108501, 42.881252>,  <41.181236, 33.234886, 43.005600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.019485, 33.108501, 42.881252>,  <40.749897, 32.897858, 42.674004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019485, 33.108501, 42.881252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459815, 0.249903, -0.852126,
		-0.578217, 0.812546, -0.073716,
		0.673969, 0.526610, 0.518119,
		41.221676, 33.266483, 43.036690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870281, 33.600433, 42.299889>,  <40.749897, 32.897858, 42.674004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870281, 33.600433, 42.299889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.180737, 33.487209, 42.525272>,  <41.367008, 33.419277, 42.660503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.180737, 33.487209, 42.525272>,  <40.870281, 33.600433, 42.299889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180737, 33.487209, 42.525272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629805, 0.304222, -0.714699,
		0.030884, 0.909576, 0.414389,
		0.776139, -0.283057, 0.563459,
		41.413578, 33.402290, 42.694309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305698, 33.646805, 41.810703>,  <40.870281, 33.600433, 42.299889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305698, 33.646805, 41.810703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.547699, 33.542439, 42.111607>,  <41.692902, 33.479820, 42.292149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.547699, 33.542439, 42.111607>,  <41.305698, 33.646805, 41.810703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547699, 33.542439, 42.111607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791109, 0.090086, -0.605005,
		0.090086, 0.961150, 0.260913,
		0.605005, -0.260913, 0.752259,
		41.729202, 33.464165, 42.337284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895485, 34.160946, 41.792210>,  <41.305698, 33.646805, 41.810703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895485, 34.160946, 41.792210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.002655, 33.803810, 41.937019>,  <42.066959, 33.589531, 42.023903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.002655, 33.803810, 41.937019>,  <41.895485, 34.160946, 41.792210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002655, 33.803810, 41.937019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725686, -0.060137, -0.685392,
		0.633714, 0.446350, 0.631806,
		0.267930, -0.892835, 0.362020,
		42.083035, 33.535961, 42.045624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516525, 34.219204, 42.023052>,  <41.895485, 34.160946, 41.792210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516525, 34.219204, 42.023052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.474751, 33.841179, 41.899155>,  <42.449684, 33.614365, 41.824814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.474751, 33.841179, 41.899155>,  <42.516525, 34.219204, 42.023052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474751, 33.841179, 41.899155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632250, 0.177321, -0.754200,
		0.767693, -0.274606, 0.578998,
		-0.104440, -0.945065, -0.309748,
		42.443420, 33.557659, 41.806229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233288, 33.918053, 41.980228>,  <42.516525, 34.219204, 42.023052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233288, 33.918053, 41.980228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.949936, 33.768131, 41.740990>,  <42.779926, 33.678181, 41.597446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.949936, 33.768131, 41.740990>,  <43.233288, 33.918053, 41.980228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949936, 33.768131, 41.740990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526856, 0.283116, -0.801416,
		0.469703, -0.882819, -0.003088,
		-0.708380, -0.374800, -0.598099,
		42.737423, 33.655693, 41.561562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529327, 33.428848, 41.525219>,  <43.233288, 33.918053, 41.980228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529327, 33.428848, 41.525219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.210136, 33.566364, 41.327217>,  <43.018620, 33.648872, 41.208416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.210136, 33.566364, 41.327217>,  <43.529327, 33.428848, 41.525219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210136, 33.566364, 41.327217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522593, -0.014414, -0.852460,
		-0.300203, -0.938936, -0.168161,
		-0.797981, 0.343791, -0.495009,
		42.970741, 33.669502, 41.178715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595695, 33.119091, 40.866886>,  <43.529327, 33.428848, 41.525219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595695, 33.119091, 40.866886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.325615, 33.411396, 40.826702>,  <43.163567, 33.586781, 40.802589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.325615, 33.411396, 40.826702>,  <43.595695, 33.119091, 40.866886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325615, 33.411396, 40.826702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364422, 0.212053, -0.906769,
		-0.641330, -0.648860, -0.409484,
		-0.675199, 0.730763, -0.100463,
		43.123055, 33.630627, 40.796562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073078, 33.025005, 40.330219>,  <43.595695, 33.119091, 40.866886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073078, 33.025005, 40.330219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.199455, 33.400219, 40.387184>,  <43.275280, 33.625347, 40.421364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.199455, 33.400219, 40.387184>,  <43.073078, 33.025005, 40.330219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199455, 33.400219, 40.387184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493994, -0.034485, -0.868781,
		-0.810032, 0.344831, -0.474277,
		0.315939, 0.938031, 0.142410,
		43.294235, 33.681629, 40.429909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942432, 33.371792, 39.709606>,  <43.073078, 33.025005, 40.330219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942432, 33.371792, 39.709606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.215145, 33.578182, 39.917046>,  <43.378773, 33.702019, 40.041508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.215145, 33.578182, 39.917046>,  <42.942432, 33.371792, 39.709606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215145, 33.578182, 39.917046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638539, -0.073789, -0.766044,
		-0.356997, 0.853417, -0.379781,
		0.681778, 0.515980, 0.518597,
		43.419678, 33.732975, 40.072624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988457, 32.716255, 39.415363>,  <42.942432, 33.371792, 39.709606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988457, 32.716255, 39.415363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.613651, 32.711086, 39.275745>,  <42.388767, 32.707985, 39.191975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.613651, 32.711086, 39.275745>,  <42.988457, 32.716255, 39.415363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613651, 32.711086, 39.275745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342450, -0.230757, -0.910758,
		-0.068772, -0.972926, 0.220649,
		-0.937016, -0.012927, -0.349048,
		42.332546, 32.707207, 39.171032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104038, 32.246712, 39.009392>,  <42.988457, 32.716255, 39.415363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104038, 32.246712, 39.009392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.761730, 32.413708, 38.887173>,  <42.556347, 32.513905, 38.813843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.761730, 32.413708, 38.887173>,  <43.104038, 32.246712, 39.009392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761730, 32.413708, 38.887173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187064, -0.300937, -0.935117,
		-0.482354, -0.857402, 0.179435,
		-0.855770, 0.417492, -0.305547,
		42.504997, 32.538956, 38.795509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086327, 31.518854, 39.140759>,  <43.104038, 32.246712, 39.009392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086327, 31.518854, 39.140759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.362091, 31.449678, 38.859390>,  <43.527550, 31.408173, 38.690567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.362091, 31.449678, 38.859390>,  <43.086327, 31.518854, 39.140759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362091, 31.449678, 38.859390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488361, 0.828169, 0.275027,
		0.534990, -0.533131, 0.655406,
		0.689412, -0.172938, -0.703423,
		43.568916, 31.397797, 38.648365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767906, 31.562218, 39.366573>,  <43.086327, 31.518854, 39.140759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767906, 31.562218, 39.366573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.771873, 31.671915, 38.981930>,  <43.774254, 31.737734, 38.751144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.771873, 31.671915, 38.981930>,  <43.767906, 31.562218, 39.366573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771873, 31.671915, 38.981930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427358, 0.868244, 0.252025,
		0.904028, -0.413450, -0.108589,
		0.009918, 0.274245, -0.961609,
		43.774849, 31.754189, 38.693447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351746, 31.937014, 39.374641>,  <43.767906, 31.562218, 39.366573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351746, 31.937014, 39.374641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.121971, 32.062405, 39.072182>,  <43.984108, 32.137638, 38.890705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.121971, 32.062405, 39.072182>,  <44.351746, 31.937014, 39.374641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121971, 32.062405, 39.072182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266117, 0.945101, 0.189647,
		0.774084, -0.092284, -0.626320,
		-0.574434, 0.313478, -0.756146,
		43.949642, 32.156448, 38.845337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.711891, 32.403732, 38.827629>,  <44.351746, 31.937014, 39.374641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.711891, 32.403732, 38.827629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.317394, 32.468761, 38.839600>,  <44.080696, 32.507778, 38.846783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.317394, 32.468761, 38.839600>,  <44.711891, 32.403732, 38.827629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317394, 32.468761, 38.839600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163749, 0.935980, 0.311653,
		0.022654, 0.312266, -0.949725,
		-0.986242, 0.162576, 0.029929,
		44.021523, 32.517536, 38.848579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601742, 32.671715, 38.312248>,  <44.711891, 32.403732, 38.827629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601742, 32.671715, 38.312248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.365974, 32.779095, 38.617016>,  <44.224514, 32.843525, 38.799877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.365974, 32.779095, 38.617016>,  <44.601742, 32.671715, 38.312248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365974, 32.779095, 38.617016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632989, 0.739475, 0.229133,
		-0.501909, 0.617341, -0.605787,
		-0.589417, 0.268452, 0.761919,
		44.189148, 32.859631, 38.845592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415447, 33.368183, 38.259827>,  <44.601742, 32.671715, 38.312248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415447, 33.368183, 38.259827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.428474, 33.252636, 38.642551>,  <44.436291, 33.183308, 38.872189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.428474, 33.252636, 38.642551>,  <44.415447, 33.368183, 38.259827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428474, 33.252636, 38.642551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625803, 0.752332, 0.205835,
		-0.779301, 0.592074, 0.205275,
		0.032566, -0.288869, 0.956815,
		44.438244, 33.165974, 38.929596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675865, 34.054314, 37.838745>,  <44.415447, 33.368183, 38.259827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675865, 34.054314, 37.838745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.698414, 33.865814, 37.486668>,  <44.711945, 33.752716, 37.275421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.698414, 33.865814, 37.486668>,  <44.675865, 34.054314, 37.838745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.698414, 33.865814, 37.486668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753376, 0.598593, -0.272233,
		0.655169, -0.647774, 0.388772,
		0.056371, -0.471250, -0.880197,
		44.715324, 33.724438, 37.222610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406048, 33.901340, 37.773510>,  <44.675865, 34.054314, 37.838745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406048, 33.901340, 37.773510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.209641, 33.940487, 37.427258>,  <45.091797, 33.963974, 37.219505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.209641, 33.940487, 37.427258>,  <45.406048, 33.901340, 37.773510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209641, 33.940487, 37.427258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714388, 0.613902, -0.335820,
		0.498546, -0.783292, -0.371357,
		-0.491021, 0.097871, -0.865632,
		45.062336, 33.969849, 37.167568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832775, 33.598988, 37.271797>,  <45.406048, 33.901340, 37.773510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832775, 33.598988, 37.271797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.594460, 33.891823, 37.139687>,  <45.451469, 34.067524, 37.060421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.594460, 33.891823, 37.139687>,  <45.832775, 33.598988, 37.271797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.594460, 33.891823, 37.139687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768469, 0.400114, -0.499364,
		-0.233433, -0.551319, -0.800972,
		-0.595789, 0.732090, -0.330272,
		45.415722, 34.111450, 37.040604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996208, 33.658234, 36.573071>,  <45.832775, 33.598988, 37.271797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.996208, 33.658234, 36.573071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.865116, 34.016068, 36.694607>,  <45.786461, 34.230766, 36.767529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.865116, 34.016068, 36.694607>,  <45.996208, 33.658234, 36.573071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.865116, 34.016068, 36.694607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689230, 0.446343, -0.570737,
		-0.646188, 0.022370, -0.762851,
		-0.327725, 0.894582, 0.303839,
		45.766800, 34.284443, 36.785759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829014, 34.041500, 35.958107>,  <45.996208, 33.658234, 36.573071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829014, 34.041500, 35.958107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.916302, 34.275429, 36.270611>,  <45.968674, 34.415787, 36.458115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.916302, 34.275429, 36.270611>,  <45.829014, 34.041500, 35.958107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.916302, 34.275429, 36.270611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750646, 0.410986, -0.517321,
		-0.623626, 0.699340, -0.349305,
		0.218224, 0.584820, 0.781258,
		45.981770, 34.450874, 36.504990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226768, 34.468410, 35.656471>,  <45.829014, 34.041500, 35.958107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226768, 34.468410, 35.656471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.289726, 34.585800, 36.033638>,  <46.327499, 34.656235, 36.259937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.289726, 34.585800, 36.033638>,  <46.226768, 34.468410, 35.656471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.289726, 34.585800, 36.033638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862249, 0.424620, -0.276088,
		-0.481407, 0.856488, -0.186214,
		0.157396, 0.293473, 0.942921,
		46.336945, 34.673843, 36.316513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213875, 35.262753, 35.827118>,  <46.226768, 34.468410, 35.656471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213875, 35.262753, 35.827118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.469700, 35.047798, 36.047001>,  <46.623196, 34.918827, 36.178932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.469700, 35.047798, 36.047001>,  <46.213875, 35.262753, 35.827118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.469700, 35.047798, 36.047001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766001, 0.505778, -0.396775,
		-0.064809, 0.674839, 0.735114,
		0.639564, -0.537384, 0.549706,
		46.661568, 34.886581, 36.211914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.801693, 35.595867, 36.275566>,  <46.213875, 35.262753, 35.827118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.801693, 35.595867, 36.275566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.893658, 35.239326, 36.119289>,  <46.948837, 35.025402, 36.025524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.893658, 35.239326, 36.119289>,  <46.801693, 35.595867, 36.275566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893658, 35.239326, 36.119289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727844, 0.423974, -0.538970,
		0.646053, -0.160448, 0.746238,
		0.229909, -0.891349, -0.390691,
		46.962631, 34.971920, 36.002083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.554535, 35.347847, 36.277966>,  <46.801693, 35.595867, 36.275566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.554535, 35.347847, 36.277966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.361076, 35.187222, 35.966881>,  <47.245003, 35.090847, 35.780228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.361076, 35.187222, 35.966881>,  <47.554535, 35.347847, 36.277966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.361076, 35.187222, 35.966881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727169, 0.310196, -0.612375,
		0.487150, -0.861700, 0.141979,
		-0.483643, -0.401561, -0.777714,
		47.215984, 35.066753, 35.733566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.714878, 34.634670, 35.866554>,  <47.554535, 35.347847, 36.277966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.714878, 34.634670, 35.866554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.591805, 34.960770, 35.670315>,  <47.517960, 35.156429, 35.552570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.591805, 34.960770, 35.670315>,  <47.714878, 34.634670, 35.866554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.591805, 34.960770, 35.670315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906921, 0.095331, -0.410373,
		-0.287788, -0.571204, -0.768702,
		-0.307688, 0.815253, -0.490602,
		47.499496, 35.205345, 35.523132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.710400, 34.680264, 35.028294>,  <47.714878, 34.634670, 35.866554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.710400, 34.680264, 35.028294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.737064, 35.045612, 35.188946>,  <47.753063, 35.264820, 35.285336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.737064, 35.045612, 35.188946>,  <47.710400, 34.680264, 35.028294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.737064, 35.045612, 35.188946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876698, 0.138573, -0.460650,
		-0.476400, 0.382814, -0.791515,
		0.066661, 0.913373, 0.401628,
		47.757061, 35.319626, 35.309433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.642519, 35.644238, 57.090492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.003756, 35.725475, 57.241848>,  <31.220497, 35.774220, 57.332661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.003756, 35.725475, 57.241848>,  <30.642519, 35.644238, 57.090492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003756, 35.725475, 57.241848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429378, -0.443202, -0.786897,
		0.007885, 0.873111, -0.487457,
		0.903090, 0.203099, 0.378390,
		31.274683, 35.786404, 57.355366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995287, 35.976341, 56.511799>,  <30.642519, 35.644238, 57.090492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995287, 35.976341, 56.511799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.267212, 35.852348, 56.777660>,  <31.430367, 35.777950, 56.937176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.267212, 35.852348, 56.777660>,  <30.995287, 35.976341, 56.511799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267212, 35.852348, 56.777660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574642, -0.337960, -0.745365,
		0.455680, 0.888646, -0.051618,
		0.679811, -0.309986, 0.664655,
		31.471155, 35.759354, 56.977058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633595, 36.270557, 56.297752>,  <30.995287, 35.976341, 56.511799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633595, 36.270557, 56.297752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.743086, 35.962261, 56.527889>,  <31.808781, 35.777283, 56.665974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.743086, 35.962261, 56.527889>,  <31.633595, 36.270557, 56.297752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743086, 35.962261, 56.527889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516393, -0.386894, -0.763971,
		0.811425, 0.506227, 0.292103,
		0.273730, -0.770745, 0.575347,
		31.825205, 35.731037, 56.700493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265411, 36.242077, 56.151871>,  <31.633595, 36.270557, 56.297752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265411, 36.242077, 56.151871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.201298, 35.874607, 56.296288>,  <32.162830, 35.654125, 56.382938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.201298, 35.874607, 56.296288>,  <32.265411, 36.242077, 56.151871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201298, 35.874607, 56.296288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708629, -0.361720, -0.605809,
		0.687135, 0.158743, 0.708975,
		-0.160282, -0.918673, 0.361040,
		32.153214, 35.599007, 56.404598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975605, 35.933411, 56.291290>,  <32.265411, 36.242077, 56.151871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975605, 35.933411, 56.291290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.748657, 35.604061, 56.296146>,  <32.612488, 35.406452, 56.299061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.748657, 35.604061, 56.296146>,  <32.975605, 35.933411, 56.291290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748657, 35.604061, 56.296146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714666, -0.499680, -0.489461,
		0.409078, -0.269026, 0.871941,
		-0.567369, -0.823374, 0.012144,
		32.578445, 35.357048, 56.299789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456753, 35.452209, 56.362728>,  <32.975605, 35.933411, 56.291290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456753, 35.452209, 56.362728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.134220, 35.291618, 56.188995>,  <32.940701, 35.195263, 56.084755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.134220, 35.291618, 56.188995>,  <33.456753, 35.452209, 56.362728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134220, 35.291618, 56.188995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583934, -0.423504, -0.692579,
		0.094115, -0.812069, 0.575922,
		-0.806328, -0.401483, -0.434336,
		32.892323, 35.171173, 56.058693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600304, 34.693813, 56.409260>,  <33.456753, 35.452209, 56.362728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600304, 34.693813, 56.409260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.341618, 34.771351, 56.114185>,  <33.186405, 34.817875, 55.937141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.341618, 34.771351, 56.114185>,  <33.600304, 34.693813, 56.409260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341618, 34.771351, 56.114185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589590, -0.486523, -0.644731,
		-0.483877, -0.851892, 0.200357,
		-0.646720, 0.193842, -0.737685,
		33.147602, 34.829506, 55.892879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411629, 34.098721, 56.026733>,  <33.600304, 34.693813, 56.409260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411629, 34.098721, 56.026733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.340134, 34.375465, 55.746910>,  <33.297237, 34.541512, 55.579014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.340134, 34.375465, 55.746910>,  <33.411629, 34.098721, 56.026733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340134, 34.375465, 55.746910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363885, -0.614113, -0.700323,
		-0.914135, -0.379731, -0.141994,
		-0.178734, 0.691859, -0.699560,
		33.286514, 34.583023, 55.537041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557964, 33.763527, 55.320908>,  <33.411629, 34.098721, 56.026733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557964, 33.763527, 55.320908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.495655, 34.134609, 55.185200>,  <33.458271, 34.357258, 55.103775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.495655, 34.134609, 55.185200>,  <33.557964, 33.763527, 55.320908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495655, 34.134609, 55.185200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199426, -0.306851, -0.930630,
		-0.967453, -0.212625, -0.137209,
		-0.155772, 0.927703, -0.339266,
		33.448925, 34.412922, 55.083420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037640, 33.645493, 54.804939>,  <33.557964, 33.763527, 55.320908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037640, 33.645493, 54.804939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.212185, 34.002766, 54.761471>,  <33.316914, 34.217129, 54.735390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.212185, 34.002766, 54.761471>,  <33.037640, 33.645493, 54.804939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212185, 34.002766, 54.761471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014733, -0.113666, -0.993410,
		-0.899648, 0.435092, -0.036441,
		0.436367, 0.893182, -0.108670,
		33.343094, 34.270721, 54.728870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601322, 33.951405, 54.421852>,  <33.037640, 33.645493, 54.804939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601322, 33.951405, 54.421852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.973274, 34.088829, 54.369263>,  <33.196445, 34.171284, 54.337708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.973274, 34.088829, 54.369263>,  <32.601322, 33.951405, 54.421852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973274, 34.088829, 54.369263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099121, -0.110182, -0.988957,
		-0.354250, 0.932646, -0.068403,
		0.929883, 0.343558, -0.131477,
		33.252239, 34.191895, 54.329819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540890, 34.310513, 53.828472>,  <32.601322, 33.951405, 54.421852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540890, 34.310513, 53.828472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.937679, 34.268795, 53.857052>,  <33.175755, 34.243763, 53.874199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.937679, 34.268795, 53.857052>,  <32.540890, 34.310513, 53.828472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937679, 34.268795, 53.857052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059987, -0.109205, -0.992207,
		0.111286, 0.988532, -0.102073,
		0.991976, -0.104296, 0.071452,
		33.235271, 34.237507, 53.878487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914200, 34.778027, 53.373165>,  <32.540890, 34.310513, 53.828472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914200, 34.778027, 53.373165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.170551, 34.478268, 53.439720>,  <33.324360, 34.298412, 53.479652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.170551, 34.478268, 53.439720>,  <32.914200, 34.778027, 53.373165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170551, 34.478268, 53.439720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096533, -0.136357, -0.985945,
		0.761552, 0.647929, -0.015046,
		0.640874, -0.749396, 0.166389,
		33.362812, 34.253448, 53.489635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370049, 34.762154, 52.804626>,  <32.914200, 34.778027, 53.373165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370049, 34.762154, 52.804626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.444057, 34.395134, 52.945412>,  <33.488464, 34.174923, 53.029881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.444057, 34.395134, 52.945412>,  <33.370049, 34.762154, 52.804626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444057, 34.395134, 52.945412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183507, -0.319588, -0.929618,
		0.965449, 0.236586, 0.109246,
		0.185021, -0.917546, 0.351961,
		33.499565, 34.119869, 53.050999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007687, 34.569511, 52.545883>,  <33.370049, 34.762154, 52.804626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007687, 34.569511, 52.545883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.790581, 34.242783, 52.624084>,  <33.660316, 34.046745, 52.671005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.790581, 34.242783, 52.624084>,  <34.007687, 34.569511, 52.545883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790581, 34.242783, 52.624084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267159, -0.388582, -0.881833,
		0.796265, -0.426394, 0.429127,
		-0.542760, -0.816818, 0.195499,
		33.627754, 33.997738, 52.682735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317547, 34.215691, 51.965351>,  <34.007687, 34.569511, 52.545883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317547, 34.215691, 51.965351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.048859, 33.990097, 52.157482>,  <33.887646, 33.854740, 52.272762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.048859, 33.990097, 52.157482>,  <34.317547, 34.215691, 51.965351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048859, 33.990097, 52.157482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248054, -0.782191, -0.571529,
		0.698044, -0.264758, 0.665310,
		-0.671717, -0.563985, 0.480329,
		33.847343, 33.820900, 52.301582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746204, 33.726643, 52.163872>,  <34.317547, 34.215691, 51.965351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746204, 33.726643, 52.163872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.368065, 33.608353, 52.108932>,  <34.141182, 33.537380, 52.075970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.368065, 33.608353, 52.108932>,  <34.746204, 33.726643, 52.163872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368065, 33.608353, 52.108932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316735, -0.732800, -0.602231,
		0.077445, -0.612821, 0.786417,
		-0.945347, -0.295726, -0.137350,
		34.084461, 33.519634, 52.067726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636761, 32.922962, 52.146858>,  <34.746204, 33.726643, 52.163872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636761, 32.922962, 52.146858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.336205, 33.075218, 51.931255>,  <34.155872, 33.166573, 51.801895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.336205, 33.075218, 51.931255>,  <34.636761, 32.922962, 52.146858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336205, 33.075218, 51.931255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263523, -0.575780, -0.773972,
		-0.604955, -0.723594, 0.332326,
		-0.751388, 0.380643, -0.539005,
		34.110786, 33.189411, 51.769554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199677, 32.359428, 51.917225>,  <34.636761, 32.922962, 52.146858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199677, 32.359428, 51.917225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.114990, 32.661140, 51.668633>,  <34.064178, 32.842167, 51.519478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.114990, 32.661140, 51.668633>,  <34.199677, 32.359428, 51.917225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114990, 32.661140, 51.668633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152868, -0.602511, -0.783334,
		-0.965302, -0.260848, 0.012256,
		-0.211715, 0.754280, -0.621480,
		34.051476, 32.887424, 51.482189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703815, 32.052822, 51.501305>,  <34.199677, 32.359428, 51.917225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703815, 32.052822, 51.501305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.829399, 32.367958, 51.289368>,  <33.904751, 32.557041, 51.162205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.829399, 32.367958, 51.289368>,  <33.703815, 32.052822, 51.501305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829399, 32.367958, 51.289368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048130, -0.570551, -0.819851,
		-0.948215, 0.231901, -0.217050,
		0.313962, 0.787841, -0.529843,
		33.923588, 32.604309, 51.130413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400295, 32.044544, 50.894096>,  <33.703815, 32.052822, 51.501305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400295, 32.044544, 50.894096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.730412, 32.260227, 50.826977>,  <33.928482, 32.389637, 50.786705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.730412, 32.260227, 50.826977>,  <33.400295, 32.044544, 50.894096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730412, 32.260227, 50.826977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218221, -0.578567, -0.785900,
		-0.520848, 0.611975, -0.595150,
		0.825286, 0.539209, -0.167800,
		33.977997, 32.421989, 50.776638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355114, 32.151169, 50.117352>,  <33.400295, 32.044544, 50.894096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355114, 32.151169, 50.117352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.725693, 32.241402, 50.237885>,  <33.948040, 32.295544, 50.310204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.725693, 32.241402, 50.237885>,  <33.355114, 32.151169, 50.117352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725693, 32.241402, 50.237885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366639, -0.359470, -0.858113,
		-0.085257, 0.905479, -0.415740,
		0.926449, 0.225586, 0.301336,
		34.003628, 32.309078, 50.328285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715374, 32.450569, 50.122433>,  <33.355114, 32.151169, 50.117352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715374, 32.450569, 50.122433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.472088, 32.723072, 49.959484>,  <32.326115, 32.886574, 49.861713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.472088, 32.723072, 49.959484>,  <32.715374, 32.450569, 50.122433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472088, 32.723072, 49.959484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257115, 0.316458, 0.913097,
		0.750973, 0.660106, -0.017314,
		-0.608220, 0.681260, -0.407374,
		32.289623, 32.927448, 49.837273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837261, 33.093258, 50.475311>,  <32.715374, 32.450569, 50.122433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837261, 33.093258, 50.475311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.465687, 33.105366, 50.327713>,  <32.242741, 33.112633, 50.239155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.465687, 33.105366, 50.327713>,  <32.837261, 33.093258, 50.475311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465687, 33.105366, 50.327713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309088, 0.485248, 0.817924,
		0.203818, 0.873852, -0.441407,
		-0.928936, 0.030274, -0.368999,
		32.187004, 33.114449, 50.217014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599552, 33.736927, 50.592735>,  <32.837261, 33.093258, 50.475311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599552, 33.736927, 50.592735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.258045, 33.541740, 50.520100>,  <32.053143, 33.424629, 50.476517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.258045, 33.541740, 50.520100>,  <32.599552, 33.736927, 50.592735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258045, 33.541740, 50.520100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440290, 0.490483, 0.752044,
		-0.277905, 0.722021, -0.633604,
		-0.853764, -0.487966, -0.181591,
		32.001915, 33.395351, 50.465622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066399, 34.165176, 50.919765>,  <32.599552, 33.736927, 50.592735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066399, 34.165176, 50.919765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.864899, 33.826637, 50.850555>,  <31.743999, 33.623516, 50.809029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.864899, 33.826637, 50.850555>,  <32.066399, 34.165176, 50.919765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864899, 33.826637, 50.850555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457034, 0.091144, 0.884767,
		-0.733048, 0.524779, -0.432722,
		-0.503747, -0.846345, -0.173028,
		31.713774, 33.572735, 50.798645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479420, 34.395336, 51.014233>,  <32.066399, 34.165176, 50.919765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479420, 34.395336, 51.014233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.476528, 34.000496, 51.078205>,  <31.474792, 33.763592, 51.116589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.476528, 34.000496, 51.078205>,  <31.479420, 34.395336, 51.014233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476528, 34.000496, 51.078205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652486, 0.125856, 0.747277,
		-0.757767, -0.098953, -0.644979,
		-0.007229, -0.987101, 0.159935,
		31.474360, 33.704365, 51.126186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778334, 34.174641, 51.439697>,  <31.479420, 34.395336, 51.014233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778334, 34.174641, 51.439697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.002995, 33.843964, 51.453178>,  <31.137791, 33.645557, 51.461266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.002995, 33.843964, 51.453178>,  <30.778334, 34.174641, 51.439697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002995, 33.843964, 51.453178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429048, -0.256181, 0.866192,
		-0.707437, -0.500957, -0.498573,
		0.561650, -0.826688, 0.033702,
		31.171490, 33.595959, 51.463287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349293, 33.495743, 51.598988>,  <30.778334, 34.174641, 51.439697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349293, 33.495743, 51.598988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.722431, 33.487465, 51.742859>,  <30.946314, 33.482498, 51.829182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.722431, 33.487465, 51.742859>,  <30.349293, 33.495743, 51.598988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722431, 33.487465, 51.742859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360052, -0.088397, 0.928735,
		0.012573, -0.995870, -0.089913,
		0.932847, -0.020696, 0.359677,
		31.002285, 33.481255, 51.850761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271784, 32.958496, 52.066540>,  <30.349293, 33.495743, 51.598988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271784, 32.958496, 52.066540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.597704, 33.167984, 52.165997>,  <30.793255, 33.293674, 52.225670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.597704, 33.167984, 52.165997>,  <30.271784, 32.958496, 52.066540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597704, 33.167984, 52.165997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201910, -0.145680, 0.968509,
		0.543448, -0.839343, -0.012956,
		0.814799, 0.523719, 0.248642,
		30.842144, 33.325100, 52.240589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582296, 32.583134, 52.595661>,  <30.271784, 32.958496, 52.066540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582296, 32.583134, 52.595661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.720289, 32.956177, 52.638042>,  <30.803085, 33.180004, 52.663471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.720289, 32.956177, 52.638042>,  <30.582296, 32.583134, 52.595661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720289, 32.956177, 52.638042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298028, 0.001795, 0.954556,
		0.890039, -0.360880, 0.278563,
		0.344980, 0.932611, 0.105955,
		30.823784, 33.235958, 52.669830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034021, 32.632629, 53.318974>,  <30.582296, 32.583134, 52.595661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034021, 32.632629, 53.318974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.924864, 33.001820, 53.210419>,  <30.859369, 33.223331, 53.145287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.924864, 33.001820, 53.210419>,  <31.034021, 32.632629, 53.318974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924864, 33.001820, 53.210419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379488, 0.155945, 0.911959,
		0.884035, 0.351855, 0.307701,
		-0.272893, 0.922973, -0.271385,
		30.842997, 33.278713, 53.129002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095760, 32.985233, 53.954102>,  <31.034021, 32.632629, 53.318974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095760, 32.985233, 53.954102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.888124, 33.247681, 53.734993>,  <30.763542, 33.405148, 53.603527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.888124, 33.247681, 53.734993>,  <31.095760, 32.985233, 53.954102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888124, 33.247681, 53.734993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426315, 0.356718, 0.831268,
		0.740811, 0.665026, 0.094544,
		-0.519090, 0.656119, -0.547772,
		30.732397, 33.444515, 53.570660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280762, 33.673653, 54.156193>,  <31.095760, 32.985233, 53.954102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280762, 33.673653, 54.156193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.921700, 33.735733, 53.991207>,  <30.706263, 33.772980, 53.892216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.921700, 33.735733, 53.991207>,  <31.280762, 33.673653, 54.156193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921700, 33.735733, 53.991207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371468, 0.237115, 0.897657,
		0.237115, 0.959005, -0.155197,
		-0.897657, 0.155197, -0.412464,
		30.652403, 33.782291, 53.867470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020817, 34.339779, 54.292973>,  <31.280762, 33.673653, 54.156193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020817, 34.339779, 54.292973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.693907, 34.117817, 54.230827>,  <30.497761, 33.984638, 54.193539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.693907, 34.117817, 54.230827>,  <31.020817, 34.339779, 54.292973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693907, 34.117817, 54.230827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447989, 0.442260, 0.776989,
		-0.362443, 0.704618, -0.610040,
		-0.817277, -0.554906, -0.155366,
		30.448725, 33.951344, 54.184216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512936, 34.850460, 54.193035>,  <31.020817, 34.339779, 54.292973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512936, 34.850460, 54.193035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.291403, 34.523254, 54.255169>,  <30.158484, 34.326931, 54.292450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.291403, 34.523254, 54.255169>,  <30.512936, 34.850460, 54.193035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291403, 34.523254, 54.255169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343614, 0.394481, 0.852241,
		-0.758420, 0.418621, -0.499556,
		-0.553831, -0.818011, 0.155339,
		30.125254, 34.277851, 54.301769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792215, 35.051361, 54.109398>,  <30.512936, 34.850460, 54.193035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792215, 35.051361, 54.109398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.767847, 34.721355, 54.334126>,  <29.753225, 34.523354, 54.468964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.767847, 34.721355, 54.334126>,  <29.792215, 35.051361, 54.109398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767847, 34.721355, 54.334126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402529, 0.535375, 0.742526,
		-0.913378, -0.180914, -0.364707,
		-0.060922, -0.825011, 0.561822,
		29.749571, 34.473850, 54.502674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071682, 35.056156, 54.346573>,  <29.792215, 35.051361, 54.109398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071682, 35.056156, 54.346573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.273872, 34.829437, 54.606800>,  <29.395187, 34.693405, 54.762936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.273872, 34.829437, 54.606800>,  <29.071682, 35.056156, 54.346573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273872, 34.829437, 54.606800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401294, 0.513045, 0.758781,
		-0.763843, -0.644614, 0.031881,
		0.505477, -0.566796, 0.650565,
		29.425516, 34.659397, 54.801971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527035, 34.917870, 54.823490>,  <29.071682, 35.056156, 54.346573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527035, 34.917870, 54.823490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.874130, 34.834061, 55.003773>,  <29.082388, 34.783775, 55.111942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.874130, 34.834061, 55.003773>,  <28.527035, 34.917870, 54.823490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874130, 34.834061, 55.003773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297868, 0.506692, 0.809035,
		-0.397880, -0.836279, 0.377264,
		0.867737, -0.209524, 0.450703,
		29.134451, 34.771202, 55.138985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365892, 35.051636, 55.482410>,  <28.527035, 34.917870, 54.823490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365892, 35.051636, 55.482410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.765001, 35.052475, 55.509094>,  <29.004467, 35.052979, 55.525105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.765001, 35.052475, 55.509094>,  <28.365892, 35.051636, 55.482410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765001, 35.052475, 55.509094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052602, 0.639902, 0.766654,
		-0.041076, -0.768454, 0.638586,
		0.997770, 0.002100, 0.066707,
		29.064333, 35.053104, 55.529106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.546162, 34.988243, 56.231384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853752, 35.162552, 56.044292>,  <29.038307, 35.267136, 55.932037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853752, 35.162552, 56.044292>,  <28.546162, 34.988243, 56.231384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853752, 35.162552, 56.044292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043453, 0.694340, 0.718334,
		0.637795, -0.572708, 0.514998,
		0.768980, 0.435772, -0.467733,
		29.084446, 35.293285, 55.903973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085447, 34.973419, 56.718399>,  <28.546162, 34.988243, 56.231384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085447, 34.973419, 56.718399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165907, 35.275669, 56.469059>,  <29.214184, 35.457020, 56.319454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165907, 35.275669, 56.469059>,  <29.085447, 34.973419, 56.718399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165907, 35.275669, 56.469059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073020, 0.623020, 0.778790,
		0.976835, -0.202171, 0.070145,
		0.201151, 0.755628, -0.623350,
		29.226252, 35.502357, 56.282055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665907, 35.335968, 57.050846>,  <29.085447, 34.973419, 56.718399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665907, 35.335968, 57.050846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504978, 35.593239, 56.790241>,  <29.408421, 35.747601, 56.633881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504978, 35.593239, 56.790241>,  <29.665907, 35.335968, 57.050846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504978, 35.593239, 56.790241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043395, 0.724242, 0.688179,
		0.914469, 0.248597, -0.319289,
		-0.402321, 0.643174, -0.651509,
		29.384281, 35.786190, 56.594788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969860, 35.903542, 57.307198>,  <29.665907, 35.335968, 57.050846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969860, 35.903542, 57.307198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669214, 36.046204, 57.085255>,  <29.488827, 36.131802, 56.952087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669214, 36.046204, 57.085255>,  <29.969860, 35.903542, 57.307198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669214, 36.046204, 57.085255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024736, 0.825370, 0.564050,
		0.659138, 0.437673, -0.611538,
		-0.751615, 0.356660, -0.554859,
		29.443729, 36.153202, 56.918797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035610, 36.697475, 57.251663>,  <29.969860, 35.903542, 57.307198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035610, 36.697475, 57.251663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656071, 36.659657, 57.131165>,  <29.428347, 36.636967, 57.058865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656071, 36.659657, 57.131165>,  <30.035610, 36.697475, 57.251663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656071, 36.659657, 57.131165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220707, 0.880897, 0.418699,
		0.225780, 0.463769, -0.856704,
		-0.948848, -0.094547, -0.301246,
		29.371416, 36.631294, 57.040791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812517, 37.297417, 56.916058>,  <30.035610, 36.697475, 57.251663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812517, 37.297417, 56.916058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502428, 37.112106, 57.087826>,  <29.316374, 37.000919, 57.190887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502428, 37.112106, 57.087826>,  <29.812517, 37.297417, 56.916058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502428, 37.112106, 57.087826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272266, 0.858470, 0.434627,
		-0.569998, 0.220016, -0.791641,
		-0.775224, -0.463274, 0.429423,
		29.269861, 36.973125, 57.216652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105232, 37.667061, 56.738461>,  <29.812517, 37.297417, 56.916058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105232, 37.667061, 56.738461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070162, 37.462368, 57.080322>,  <29.049120, 37.339550, 57.285439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070162, 37.462368, 57.080322>,  <29.105232, 37.667061, 56.738461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070162, 37.462368, 57.080322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227776, 0.845531, 0.482902,
		-0.969758, -0.152331, -0.190695,
		-0.087678, -0.511734, 0.854658,
		29.043858, 37.308849, 57.336720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656111, 38.009464, 57.058846>,  <29.105232, 37.667061, 56.738461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656111, 38.009464, 57.058846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796524, 37.780224, 57.355042>,  <28.880772, 37.642681, 57.532761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796524, 37.780224, 57.355042>,  <28.656111, 38.009464, 57.058846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796524, 37.780224, 57.355042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069704, 0.772630, 0.631018,
		-0.933765, -0.273124, 0.231272,
		0.351034, -0.573102, 0.740492,
		28.901834, 37.608292, 57.577190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139574, 38.027786, 57.497280>,  <28.656111, 38.009464, 57.058846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139574, 38.027786, 57.497280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435867, 37.903786, 57.735680>,  <28.613644, 37.829384, 57.878719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435867, 37.903786, 57.735680>,  <28.139574, 38.027786, 57.497280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435867, 37.903786, 57.735680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257852, 0.688021, 0.678336,
		-0.620343, -0.656146, 0.429707,
		0.740735, -0.310000, 0.595997,
		28.658087, 37.810787, 57.914478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788820, 37.926086, 58.214077>,  <28.139574, 38.027786, 57.497280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788820, 37.926086, 58.214077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178162, 37.983082, 58.285946>,  <28.411766, 38.017281, 58.329067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178162, 37.983082, 58.285946>,  <27.788820, 37.926086, 58.214077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178162, 37.983082, 58.285946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227099, 0.707654, 0.669068,
		-0.031810, -0.692042, 0.721156,
		0.973352, 0.142491, 0.179673,
		28.470167, 38.025829, 58.339848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862776, 37.986977, 58.923576>,  <27.788820, 37.926086, 58.214077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862776, 37.986977, 58.923576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175013, 38.175419, 58.759266>,  <28.362354, 38.288483, 58.660679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175013, 38.175419, 58.759266>,  <27.862776, 37.986977, 58.923576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175013, 38.175419, 58.759266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177406, 0.797162, 0.577114,
		0.599334, -0.377617, 0.705836,
		0.780594, 0.471103, -0.410774,
		28.409191, 38.316750, 58.636032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396084, 38.113266, 59.421532>,  <27.862776, 37.986977, 58.923576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396084, 38.113266, 59.421532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448956, 38.394676, 59.142223>,  <28.480679, 38.563522, 58.974640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448956, 38.394676, 59.142223>,  <28.396084, 38.113266, 59.421532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448956, 38.394676, 59.142223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132958, 0.710671, 0.690847,
		0.982269, 0.001526, 0.187474,
		0.132178, 0.703523, -0.698272,
		28.488609, 38.605732, 58.932743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785728, 38.445152, 59.752350>,  <28.396084, 38.113266, 59.421532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785728, 38.445152, 59.752350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659943, 38.687992, 59.460445>,  <28.584471, 38.833694, 59.285305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659943, 38.687992, 59.460445>,  <28.785728, 38.445152, 59.752350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659943, 38.687992, 59.460445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035820, 0.760621, 0.648207,
		0.948593, 0.229978, -0.217443,
		-0.314465, 0.607095, -0.729758,
		28.565603, 38.870121, 59.241516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158278, 39.125591, 59.740734>,  <28.785728, 38.445152, 59.752350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158278, 39.125591, 59.740734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847931, 39.229927, 59.510956>,  <28.661722, 39.292530, 59.373089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847931, 39.229927, 59.510956>,  <29.158278, 39.125591, 59.740734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847931, 39.229927, 59.510956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135157, 0.820668, 0.555190,
		0.616249, 0.508394, -0.601475,
		-0.775867, 0.260842, -0.574450,
		28.615171, 39.308178, 59.338619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278666, 39.797222, 59.739902>,  <29.158278, 39.125591, 59.740734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278666, 39.797222, 59.739902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893169, 39.737846, 59.651207>,  <28.661871, 39.702221, 59.597992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893169, 39.737846, 59.651207>,  <29.278666, 39.797222, 59.739902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893169, 39.737846, 59.651207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252832, 0.773651, 0.580982,
		0.085306, 0.615979, -0.783130,
		-0.963742, -0.148439, -0.221736,
		28.604046, 39.693314, 59.584686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060059, 40.371986, 59.411461>,  <29.278666, 39.797222, 59.739902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060059, 40.371986, 59.411461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745960, 40.189342, 59.578743>,  <28.557501, 40.079758, 59.679111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745960, 40.189342, 59.578743>,  <29.060059, 40.371986, 59.411461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745960, 40.189342, 59.578743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193100, 0.822320, 0.535260,
		-0.588306, 0.339554, -0.733894,
		-0.785245, -0.456611, 0.418208,
		28.510387, 40.052361, 59.704205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519793, 40.796421, 59.316177>,  <29.060059, 40.371986, 59.411461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519793, 40.796421, 59.316177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406401, 40.571011, 59.626553>,  <28.338366, 40.435764, 59.812778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406401, 40.571011, 59.626553>,  <28.519793, 40.796421, 59.316177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406401, 40.571011, 59.626553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322265, 0.818055, 0.476373,
		-0.903208, -0.115015, -0.413507,
		-0.283481, -0.563522, 0.775939,
		28.321356, 40.401955, 59.859333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860479, 41.114731, 59.512257>,  <28.519793, 40.796421, 59.316177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860479, 41.114731, 59.512257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952339, 40.885593, 59.826992>,  <28.007456, 40.748112, 60.015835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952339, 40.885593, 59.826992>,  <27.860479, 41.114731, 59.512257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952339, 40.885593, 59.826992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236851, 0.751250, 0.616057,
		-0.944014, -0.327841, 0.036847,
		0.229650, -0.572839, 0.786840,
		28.021235, 40.713741, 60.063046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192730, 41.203468, 59.999084>,  <27.860479, 41.114731, 59.512257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192730, 41.203468, 59.999084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505644, 41.058525, 60.201759>,  <27.693392, 40.971561, 60.323364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505644, 41.058525, 60.201759>,  <27.192730, 41.203468, 59.999084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505644, 41.058525, 60.201759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143938, 0.686241, 0.712990,
		-0.606066, -0.630691, 0.484678,
		0.782283, -0.362355, 0.506687,
		27.740328, 40.949818, 60.353767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876923, 40.974636, 60.687279>,  <27.192730, 41.203468, 59.999084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876923, 40.974636, 60.687279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270163, 41.039516, 60.721241>,  <27.506105, 41.078445, 60.741619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270163, 41.039516, 60.721241>,  <26.876923, 40.974636, 60.687279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270163, 41.039516, 60.721241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181646, 0.806195, 0.563076,
		0.022878, -0.568982, 0.822032,
		0.983098, 0.162201, 0.084909,
		27.565092, 41.088177, 60.746716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982233, 41.074665, 61.398071>,  <26.876923, 40.974636, 60.687279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982233, 41.074665, 61.398071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307781, 41.235760, 61.230541>,  <27.503111, 41.332417, 61.130024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307781, 41.235760, 61.230541>,  <26.982233, 41.074665, 61.398071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307781, 41.235760, 61.230541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062176, 0.656311, 0.751924,
		0.577707, -0.638012, 0.509113,
		0.813872, 0.402737, -0.418824,
		27.551943, 41.356583, 61.104893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306280, 41.327278, 62.036205>,  <26.982233, 41.074665, 61.398071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306280, 41.327278, 62.036205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447630, 41.514320, 61.712112>,  <27.532440, 41.626545, 61.517658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447630, 41.514320, 61.712112>,  <27.306280, 41.327278, 62.036205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447630, 41.514320, 61.712112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071085, 0.877025, 0.475156,
		0.932778, -0.110311, 0.343156,
		0.353372, 0.467609, -0.810228,
		27.553642, 41.654602, 61.469044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901825, 41.680313, 62.268841>,  <27.306280, 41.327278, 62.036205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901825, 41.680313, 62.268841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727364, 41.835049, 61.943848>,  <27.622686, 41.927891, 61.748852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727364, 41.835049, 61.943848>,  <27.901825, 41.680313, 62.268841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727364, 41.835049, 61.943848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085481, 0.880990, 0.465349,
		0.895802, 0.272416, -0.351181,
		-0.436155, 0.386841, -0.812479,
		27.596518, 41.951099, 61.700104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313761, 42.200054, 61.872948>,  <27.901825, 41.680313, 62.268841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313761, 42.200054, 61.872948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916260, 42.235363, 61.900276>,  <27.677759, 42.256550, 61.916672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916260, 42.235363, 61.900276>,  <28.313761, 42.200054, 61.872948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916260, 42.235363, 61.900276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111580, 0.768393, 0.630176,
		0.003131, 0.633861, -0.773440,
		-0.993750, 0.088274, 0.068320,
		27.618135, 42.261845, 61.920773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657347, 41.506672, 62.053352>,  <28.313761, 42.200054, 61.872948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657347, 41.506672, 62.053352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000330, 41.568020, 62.249821>,  <29.206120, 41.604828, 62.367702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000330, 41.568020, 62.249821>,  <28.657347, 41.506672, 62.053352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000330, 41.568020, 62.249821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310755, -0.915159, -0.256738,
		0.410120, 0.372775, -0.832370,
		0.857457, 0.153370, 0.491167,
		29.257566, 41.614033, 62.397171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270443, 41.526283, 61.605434>,  <28.657347, 41.506672, 62.053352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270443, 41.526283, 61.605434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431812, 41.423874, 61.956821>,  <29.528635, 41.362431, 62.167652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431812, 41.423874, 61.956821>,  <29.270443, 41.526283, 61.605434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431812, 41.423874, 61.956821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391980, -0.819149, -0.418743,
		0.826801, 0.513273, -0.230111,
		0.403425, -0.256019, 0.878466,
		29.552839, 41.347069, 62.220360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035192, 41.318878, 61.470039>,  <29.270443, 41.526283, 61.605434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035192, 41.318878, 61.470039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913624, 41.148094, 61.810707>,  <29.840683, 41.045624, 62.015106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913624, 41.148094, 61.810707>,  <30.035192, 41.318878, 61.470039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913624, 41.148094, 61.810707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329012, -0.885989, -0.326763,
		0.894082, 0.180898, 0.409747,
		-0.303921, -0.426964, 0.851665,
		29.822447, 41.020004, 62.066208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503128, 40.862984, 61.534351>,  <30.035192, 41.318878, 61.470039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503128, 40.862984, 61.534351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257490, 40.717979, 61.814770>,  <30.110107, 40.630978, 61.983021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257490, 40.717979, 61.814770>,  <30.503128, 40.862984, 61.534351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257490, 40.717979, 61.814770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200583, -0.930791, -0.305604,
		0.763317, -0.047052, 0.644309,
		-0.614096, -0.362510, 0.701051,
		30.073261, 40.609226, 62.025085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960859, 40.360138, 61.876968>,  <30.503128, 40.862984, 61.534351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960859, 40.360138, 61.876968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577232, 40.258621, 61.927212>,  <30.347055, 40.197712, 61.957359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577232, 40.258621, 61.927212>,  <30.960859, 40.360138, 61.876968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577232, 40.258621, 61.927212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242266, -0.965035, -0.100074,
		0.146618, -0.065546, 0.987019,
		-0.959067, -0.253794, 0.125612,
		30.289513, 40.182484, 61.964897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004316, 39.698555, 62.244373>,  <30.960859, 40.360138, 61.876968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004316, 39.698555, 62.244373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644823, 39.728237, 62.071503>,  <30.429127, 39.746048, 61.967781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644823, 39.728237, 62.071503>,  <31.004316, 39.698555, 62.244373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644823, 39.728237, 62.071503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184175, -0.830551, -0.525609,
		-0.397945, -0.551977, 0.732776,
		-0.898732, 0.074205, -0.432174,
		30.375204, 39.750500, 61.941849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808794, 39.038467, 62.276749>,  <31.004316, 39.698555, 62.244373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808794, 39.038467, 62.276749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565928, 39.189327, 61.997002>,  <30.420208, 39.279842, 61.829155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565928, 39.189327, 61.997002>,  <30.808794, 39.038467, 62.276749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565928, 39.189327, 61.997002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314847, -0.693932, -0.647557,
		-0.729533, -0.613368, 0.302590,
		-0.607168, 0.377145, -0.699363,
		30.383778, 39.302471, 61.787193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562971, 38.467289, 61.972092>,  <30.808794, 39.038467, 62.276749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562971, 38.467289, 61.972092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463511, 38.738964, 61.695866>,  <30.403833, 38.901970, 61.530128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463511, 38.738964, 61.695866>,  <30.562971, 38.467289, 61.972092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463511, 38.738964, 61.695866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220395, -0.654580, -0.723154,
		-0.943185, -0.332011, 0.013074,
		-0.248652, 0.679186, -0.690563,
		30.388914, 38.942719, 61.488697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022215, 38.161758, 61.492451>,  <30.562971, 38.467289, 61.972092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022215, 38.161758, 61.492451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200590, 38.466328, 61.304253>,  <30.307615, 38.649071, 61.191334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200590, 38.466328, 61.304253>,  <30.022215, 38.161758, 61.492451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200590, 38.466328, 61.304253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113839, -0.569639, -0.813973,
		-0.887795, 0.309420, -0.340704,
		0.445938, 0.761426, -0.470499,
		30.334372, 38.694756, 61.163101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699364, 38.286152, 60.792801>,  <30.022215, 38.161758, 61.492451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699364, 38.286152, 60.792801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075041, 38.422497, 60.776199>,  <30.300447, 38.504303, 60.766239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075041, 38.422497, 60.776199>,  <29.699364, 38.286152, 60.792801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075041, 38.422497, 60.776199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173746, -0.575991, -0.798778,
		-0.296184, 0.742997, -0.600192,
		0.939195, 0.340867, -0.041506,
		30.356800, 38.524757, 60.763748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704477, 38.572262, 60.136169>,  <29.699364, 38.286152, 60.792801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704477, 38.572262, 60.136169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069065, 38.468563, 60.263931>,  <30.287817, 38.406345, 60.340588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069065, 38.468563, 60.263931>,  <29.704477, 38.572262, 60.136169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069065, 38.468563, 60.263931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107678, -0.599015, -0.793465,
		0.397030, 0.757610, -0.518068,
		0.911467, -0.259245, 0.319405,
		30.342505, 38.390789, 60.359753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070961, 38.388512, 59.532421>,  <29.704477, 38.572262, 60.136169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070961, 38.388512, 59.532421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306963, 38.223141, 59.809830>,  <30.448565, 38.123920, 59.976276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306963, 38.223141, 59.809830>,  <30.070961, 38.388512, 59.532421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306963, 38.223141, 59.809830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245842, -0.726184, -0.642042,
		0.769060, 0.549306, -0.326816,
		0.590007, -0.413424, 0.693522,
		30.483965, 38.099113, 60.017887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667616, 38.202061, 59.167408>,  <30.070961, 38.388512, 59.532421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667616, 38.202061, 59.167408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679024, 37.975731, 59.497021>,  <30.685869, 37.839931, 59.694790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679024, 37.975731, 59.497021>,  <30.667616, 38.202061, 59.167408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679024, 37.975731, 59.497021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511853, -0.699823, -0.498252,
		0.858600, 0.435993, 0.269661,
		0.028519, -0.565826, 0.824032,
		30.687580, 37.805984, 59.744228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299726, 37.901340, 59.161171>,  <30.667616, 38.202061, 59.167408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299726, 37.901340, 59.161171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088509, 37.664955, 59.405117>,  <30.961779, 37.523125, 59.551483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088509, 37.664955, 59.405117>,  <31.299726, 37.901340, 59.161171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088509, 37.664955, 59.405117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381275, -0.806679, -0.451552,
		0.758815, -0.005912, 0.651280,
		-0.528043, -0.590961, 0.609865,
		30.930096, 37.487667, 59.588078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744610, 37.310070, 59.222214>,  <31.299726, 37.901340, 59.161171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744610, 37.310070, 59.222214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382364, 37.185619, 59.337498>,  <31.165018, 37.110950, 59.406670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382364, 37.185619, 59.337498>,  <31.744610, 37.310070, 59.222214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382364, 37.185619, 59.337498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108682, -0.827130, -0.551402,
		0.409944, -0.468033, 0.782874,
		-0.905613, -0.311128, 0.288211,
		31.110680, 37.092281, 59.423962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804846, 36.652882, 59.551147>,  <31.744610, 37.310070, 59.222214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804846, 36.652882, 59.551147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460478, 36.699139, 59.352978>,  <31.253857, 36.726891, 59.234077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460478, 36.699139, 59.352978>,  <31.804846, 36.652882, 59.551147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460478, 36.699139, 59.352978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183883, -0.837254, -0.514969,
		-0.474345, -0.534447, 0.699545,
		-0.860920, 0.115638, -0.495423,
		31.202202, 36.733829, 59.204350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757706, 36.149559, 59.131748>,  <31.804846, 36.652882, 59.551147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757706, 36.149559, 59.131748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420702, 36.319275, 58.998985>,  <31.218500, 36.421104, 58.919327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420702, 36.319275, 58.998985>,  <31.757706, 36.149559, 59.131748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420702, 36.319275, 58.998985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006989, -0.607480, -0.794304,
		-0.538634, -0.671529, 0.508843,
		-0.842510, 0.424283, -0.331903,
		31.167950, 36.446560, 58.899414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435966, 35.699520, 58.833885>,  <31.757706, 36.149559, 59.131748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435966, 35.699520, 58.833885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254698, 36.016735, 58.671051>,  <31.145937, 36.207066, 58.573349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254698, 36.016735, 58.671051>,  <31.435966, 35.699520, 58.833885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254698, 36.016735, 58.671051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048302, -0.477847, -0.877114,
		-0.890115, -0.377819, 0.254851,
		-0.453170, 0.793042, -0.407089,
		31.118748, 36.254646, 58.548923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891302, 35.407581, 58.410801>,  <31.435966, 35.699520, 58.833885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891302, 35.407581, 58.410801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042948, 35.756222, 58.286484>,  <31.133936, 35.965405, 58.211895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042948, 35.756222, 58.286484>,  <30.891302, 35.407581, 58.410801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042948, 35.756222, 58.286484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156813, -0.391519, -0.906710,
		-0.911966, 0.295011, -0.285108,
		0.379115, 0.871597, -0.310790,
		31.156683, 36.017700, 58.193245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667427, 35.363380, 57.753098>,  <30.891302, 35.407581, 58.410801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667427, 35.363380, 57.753098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953529, 35.642670, 57.765064>,  <31.125191, 35.810242, 57.772243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953529, 35.642670, 57.765064>,  <30.667427, 35.363380, 57.753098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953529, 35.642670, 57.765064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319115, -0.288221, -0.902826,
		-0.621751, 0.655298, -0.428965,
		0.715256, 0.698222, 0.029914,
		31.168106, 35.852135, 57.774040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<48.176731, 33.655018, 52.288334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.092026, 34.040184, 52.221470>,  <48.041203, 34.271286, 52.181351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.092026, 34.040184, 52.221470>,  <48.176731, 33.655018, 52.288334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.092026, 34.040184, 52.221470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928343, -0.251651, -0.273590,
		-0.305512, 0.097248, 0.947209,
		-0.211760, 0.962919, -0.167161,
		48.028496, 34.329060, 52.171322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.503181, 33.743931, 52.418205>,  <48.176731, 33.655018, 52.288334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.503181, 33.743931, 52.418205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.580750, 34.084751, 52.223721>,  <47.627289, 34.289246, 52.107029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.580750, 34.084751, 52.223721>,  <47.503181, 33.743931, 52.418205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.580750, 34.084751, 52.223721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949172, 0.037705, -0.312490,
		-0.247927, 0.522092, 0.816059,
		0.193918, 0.852055, -0.486207,
		47.638924, 34.340366, 52.077858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978207, 34.246376, 52.619232>,  <47.503181, 33.743931, 52.418205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978207, 34.246376, 52.619232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.098507, 34.413452, 52.276283>,  <47.170685, 34.513699, 52.070515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.098507, 34.413452, 52.276283>,  <46.978207, 34.246376, 52.619232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.098507, 34.413452, 52.276283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953569, 0.146772, -0.262990,
		0.015991, 0.896657, 0.442437,
		0.300749, 0.417689, -0.857372,
		47.188732, 34.538757, 52.019073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.647739, 34.890217, 52.546616>,  <46.978207, 34.246376, 52.619232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.647739, 34.890217, 52.546616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.744881, 34.765667, 52.179123>,  <46.803165, 34.690937, 51.958626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.744881, 34.765667, 52.179123>,  <46.647739, 34.890217, 52.546616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744881, 34.765667, 52.179123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949318, 0.118539, -0.291110,
		0.199549, 0.942866, -0.266804,
		0.242851, -0.311373, -0.918733,
		46.817738, 34.672256, 51.903503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325340, 35.398773, 52.082615>,  <46.647739, 34.890217, 52.546616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325340, 35.398773, 52.082615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.373520, 35.060452, 51.874725>,  <46.402428, 34.857460, 51.749992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.373520, 35.060452, 51.874725>,  <46.325340, 35.398773, 52.082615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.373520, 35.060452, 51.874725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858792, 0.173832, -0.481933,
		0.497963, 0.504385, -0.705428,
		0.120454, -0.845800, -0.519724,
		46.409657, 34.806713, 51.718807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980511, 35.542645, 51.473083>,  <46.325340, 35.398773, 52.082615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980511, 35.542645, 51.473083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.033806, 35.146492, 51.458118>,  <46.065784, 34.908802, 51.449139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.033806, 35.146492, 51.458118>,  <45.980511, 35.542645, 51.473083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.033806, 35.146492, 51.458118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888448, -0.102627, -0.447358,
		0.439213, 0.092846, -0.893572,
		0.133240, -0.990377, -0.037413,
		46.073776, 34.849380, 51.446896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955490, 35.391949, 50.812527>,  <45.980511, 35.542645, 51.473083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955490, 35.391949, 50.812527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.880070, 35.054348, 51.013371>,  <45.834820, 34.851788, 51.133877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.880070, 35.054348, 51.013371>,  <45.955490, 35.391949, 50.812527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880070, 35.054348, 51.013371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928866, -0.012730, -0.370198,
		0.318839, -0.536193, -0.781561,
		-0.188548, -0.843999, 0.502111,
		45.823505, 34.801147, 51.164005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695835, 34.910969, 50.322475>,  <45.955490, 35.391949, 50.812527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695835, 34.910969, 50.322475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.568241, 34.805222, 50.686531>,  <45.491684, 34.741772, 50.904964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.568241, 34.805222, 50.686531>,  <45.695835, 34.910969, 50.322475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568241, 34.805222, 50.686531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944728, 0.011946, -0.327637,
		0.075746, -0.964347, -0.253570,
		-0.318985, -0.264372, 0.910141,
		45.472546, 34.725910, 50.959572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247284, 34.271412, 50.177174>,  <45.695835, 34.910969, 50.322475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247284, 34.271412, 50.177174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.139183, 34.448742, 50.519032>,  <45.074322, 34.555141, 50.724148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.139183, 34.448742, 50.519032>,  <45.247284, 34.271412, 50.177174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139183, 34.448742, 50.519032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962328, -0.151879, -0.225516,
		0.029826, -0.883398, 0.467673,
		-0.270251, 0.443328, 0.854649,
		45.058109, 34.581741, 50.775425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818832, 33.742718, 50.478882>,  <45.247284, 34.271412, 50.177174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818832, 33.742718, 50.478882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.720409, 34.061668, 50.699299>,  <44.661358, 34.253040, 50.831547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.720409, 34.061668, 50.699299>,  <44.818832, 33.742718, 50.478882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720409, 34.061668, 50.699299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969256, -0.202389, -0.139936,
		-0.000058, -0.568531, 0.822662,
		-0.246056, 0.797378, 0.551040,
		44.646591, 34.300880, 50.864613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150280, 33.597095, 50.799824>,  <44.818832, 33.742718, 50.478882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150280, 33.597095, 50.799824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.178432, 33.994778, 50.832344>,  <44.195324, 34.233387, 50.851856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.178432, 33.994778, 50.832344>,  <44.150280, 33.597095, 50.799824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178432, 33.994778, 50.832344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963152, 0.088941, -0.253828,
		-0.259587, -0.060439, 0.963827,
		0.070382, 0.994202, 0.081300,
		44.199547, 34.293037, 50.856735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731728, 33.801945, 51.316071>,  <44.150280, 33.597095, 50.799824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731728, 33.801945, 51.316071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.787571, 34.133503, 51.099392>,  <43.821079, 34.332439, 50.969383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.787571, 34.133503, 51.099392>,  <43.731728, 33.801945, 51.316071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787571, 34.133503, 51.099392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990108, 0.109174, -0.088125,
		-0.013908, 0.548640, 0.835943,
		0.139612, 0.828899, -0.541695,
		43.829456, 34.382172, 50.936882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193958, 34.282181, 51.397106>,  <43.731728, 33.801945, 51.316071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193958, 34.282181, 51.397106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.315540, 34.446590, 51.053322>,  <43.388489, 34.545238, 50.847050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.315540, 34.446590, 51.053322>,  <43.193958, 34.282181, 51.397106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315540, 34.446590, 51.053322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939098, 0.281095, -0.197687,
		0.160336, 0.867204, 0.471433,
		0.303953, 0.411026, -0.859459,
		43.406727, 34.569897, 50.795483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715885, 34.936184, 51.228798>,  <43.193958, 34.282181, 51.397106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715885, 34.936184, 51.228798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.906963, 34.868687, 50.883930>,  <43.021610, 34.828190, 50.677010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.906963, 34.868687, 50.883930>,  <42.715885, 34.936184, 51.228798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906963, 34.868687, 50.883930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830708, 0.232597, -0.505789,
		0.285886, 0.957823, -0.029065,
		0.477696, -0.168743, -0.862167,
		43.050274, 34.818066, 50.625278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856392, 35.648884, 50.799110>,  <42.715885, 34.936184, 51.228798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856392, 35.648884, 50.799110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.828495, 35.334381, 50.553528>,  <42.811756, 35.145679, 50.406178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.828495, 35.334381, 50.553528>,  <42.856392, 35.648884, 50.799110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828495, 35.334381, 50.553528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825090, 0.391381, -0.407489,
		0.560680, 0.478146, -0.676028,
		-0.069745, -0.786255, -0.613953,
		42.807571, 35.098503, 50.369343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478119, 35.906918, 50.186279>,  <42.856392, 35.648884, 50.799110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478119, 35.906918, 50.186279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.489079, 35.512512, 50.120529>,  <42.495655, 35.275867, 50.081078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.489079, 35.512512, 50.120529>,  <42.478119, 35.906918, 50.186279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489079, 35.512512, 50.120529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857519, 0.061323, -0.510784,
		0.513721, 0.154949, -0.843849,
		0.027398, -0.986017, -0.164375,
		42.497299, 35.216705, 50.071217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322327, 35.767929, 49.407104>,  <42.478119, 35.906918, 50.186279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322327, 35.767929, 49.407104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.222908, 35.465710, 49.649548>,  <42.163258, 35.284378, 49.795013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.222908, 35.465710, 49.649548>,  <42.322327, 35.767929, 49.407104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222908, 35.465710, 49.649548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927351, 0.004911, -0.374161,
		0.279721, -0.655073, -0.701881,
		-0.248550, -0.755550, 0.606108,
		42.148342, 35.239044, 49.831379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965458, 35.375141, 48.993889>,  <42.322327, 35.767929, 49.407104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965458, 35.375141, 48.993889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.851040, 35.274284, 49.363667>,  <41.782391, 35.213772, 49.585533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.851040, 35.274284, 49.363667>,  <41.965458, 35.375141, 48.993889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851040, 35.274284, 49.363667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957962, 0.053028, -0.281952,
		0.022063, -0.966243, -0.256686,
		-0.286046, -0.252116, 0.924454,
		41.765224, 35.198643, 49.641003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419250, 34.831669, 48.924606>,  <41.965458, 35.375141, 48.993889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419250, 34.831669, 48.924606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.379707, 34.978020, 49.294765>,  <41.355984, 35.065830, 49.516861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.379707, 34.978020, 49.294765>,  <41.419250, 34.831669, 48.924606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379707, 34.978020, 49.294765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989217, -0.137116, -0.051460,
		0.108059, -0.920505, 0.375491,
		-0.098855, 0.365882, 0.925396,
		41.350052, 35.087784, 49.572384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879295, 34.416157, 49.143478>,  <41.419250, 34.831669, 48.924606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879295, 34.416157, 49.143478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892544, 34.713539, 49.410664>,  <40.900494, 34.891968, 49.570976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.892544, 34.713539, 49.410664>,  <40.879295, 34.416157, 49.143478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892544, 34.713539, 49.410664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998238, -0.008320, 0.058758,
		0.049241, -0.668730, 0.741873,
		0.033121, 0.743458, 0.667962,
		40.902481, 34.936577, 49.611053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390537, 34.326824, 49.612225>,  <40.879295, 34.416157, 49.143478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390537, 34.326824, 49.612225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.436771, 34.724133, 49.609486>,  <40.464512, 34.962517, 49.607841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.436771, 34.724133, 49.609486>,  <40.390537, 34.326824, 49.612225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436771, 34.724133, 49.609486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987800, 0.114215, -0.105860,
		-0.104365, 0.019001, 0.994357,
		0.115582, 0.993274, -0.006849,
		40.471447, 35.022114, 49.607430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961891, 34.523048, 50.120342>,  <40.390537, 34.326824, 49.612225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961891, 34.523048, 50.120342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.999386, 34.819416, 49.854336>,  <40.021881, 34.997238, 49.694733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.999386, 34.819416, 49.854336>,  <39.961891, 34.523048, 50.120342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999386, 34.819416, 49.854336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995012, 0.092619, -0.037055,
		0.034138, 0.665172, 0.745909,
		0.093734, 0.740923, -0.665016,
		40.027508, 35.041695, 49.654831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598183, 34.427040, 49.473122>,  <39.961891, 34.523048, 50.120342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598183, 34.427040, 49.473122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.941582, 34.630630, 49.448040>,  <40.147621, 34.752785, 49.432991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.941582, 34.630630, 49.448040>,  <39.598183, 34.427040, 49.473122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941582, 34.630630, 49.448040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357386, 0.506109, -0.784939,
		-0.367783, 0.696273, 0.616393,
		0.858493, 0.508977, -0.062700,
		40.199131, 34.783325, 49.429230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813782, 34.466366, 49.709553>,  <39.598183, 34.427040, 49.473122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813782, 34.466366, 49.709553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.501751, 34.361057, 49.482517>,  <38.314533, 34.297871, 49.346294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.501751, 34.361057, 49.482517>,  <38.813782, 34.466366, 49.709553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501751, 34.361057, 49.482517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075212, -0.940040, 0.332667,
		-0.621141, 0.216818, 0.753109,
		-0.780081, -0.263276, -0.567591,
		38.267727, 34.282074, 49.312241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828342, 33.717709, 49.567688>,  <38.813782, 34.466366, 49.709553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828342, 33.717709, 49.567688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.909393, 33.350437, 49.431519>,  <38.958023, 33.130074, 49.349819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.909393, 33.350437, 49.431519>,  <38.828342, 33.717709, 49.567688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909393, 33.350437, 49.431519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588791, 0.163545, -0.791567,
		0.782476, 0.360827, -0.507479,
		0.202623, -0.918181, -0.340421,
		38.970181, 33.074982, 49.329391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847546, 33.672451, 48.856113>,  <38.828342, 33.717709, 49.567688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847546, 33.672451, 48.856113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758675, 33.296505, 48.959869>,  <38.705353, 33.070938, 49.022125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758675, 33.296505, 48.959869>,  <38.847546, 33.672451, 48.856113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758675, 33.296505, 48.959869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612686, -0.072371, -0.787005,
		0.758455, -0.333778, -0.559766,
		-0.222175, -0.939869, 0.259392,
		38.692020, 33.014545, 49.037685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932030, 33.243507, 48.252850>,  <38.847546, 33.672451, 48.856113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932030, 33.243507, 48.252850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.689617, 33.018959, 48.478271>,  <38.544170, 32.884232, 48.613525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.689617, 33.018959, 48.478271>,  <38.932030, 33.243507, 48.252850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689617, 33.018959, 48.478271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645121, -0.067605, -0.761083,
		0.465348, -0.824799, -0.321181,
		-0.606028, -0.561369, 0.563555,
		38.507809, 32.850548, 48.647339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645081, 32.718864, 47.780445>,  <38.932030, 33.243507, 48.252850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645081, 32.718864, 47.780445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.413567, 32.753281, 48.104816>,  <38.274658, 32.773930, 48.299438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.413567, 32.753281, 48.104816>,  <38.645081, 32.718864, 47.780445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413567, 32.753281, 48.104816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815444, -0.052000, -0.576496,
		-0.007430, -0.994934, 0.100252,
		-0.578789, 0.086033, 0.810926,
		38.239929, 32.779095, 48.348095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129120, 32.066975, 47.673698>,  <38.645081, 32.718864, 47.780445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129120, 32.066975, 47.673698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986927, 32.338963, 47.930218>,  <37.901611, 32.502155, 48.084129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986927, 32.338963, 47.930218>,  <38.129120, 32.066975, 47.673698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986927, 32.338963, 47.930218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901328, -0.067731, -0.427809,
		-0.247462, -0.730103, 0.636955,
		-0.355486, 0.679972, 0.641302,
		37.880280, 32.542953, 48.122608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566479, 31.755651, 48.116604>,  <38.129120, 32.066975, 47.673698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566479, 31.755651, 48.116604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490452, 32.148094, 48.102150>,  <37.444836, 32.383560, 48.093479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490452, 32.148094, 48.102150>,  <37.566479, 31.755651, 48.116604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490452, 32.148094, 48.102150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969254, -0.193378, -0.152159,
		-0.156271, 0.006098, 0.987695,
		-0.190071, 0.981106, -0.036130,
		37.433430, 32.442425, 48.091312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892193, 31.687975, 48.173985>,  <37.566479, 31.755651, 48.116604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892193, 31.687975, 48.173985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.936527, 32.077023, 48.092281>,  <36.963127, 32.310452, 48.043259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.936527, 32.077023, 48.092281>,  <36.892193, 31.687975, 48.173985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936527, 32.077023, 48.092281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965161, 0.056326, -0.255522,
		-0.237021, 0.225467, 0.944979,
		0.110839, 0.972621, -0.204262,
		36.969780, 32.368809, 48.031002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316673, 31.965265, 48.399395>,  <36.892193, 31.687975, 48.173985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316673, 31.965265, 48.399395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.448170, 32.263294, 48.167255>,  <36.527065, 32.442112, 48.027973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.448170, 32.263294, 48.167255>,  <36.316673, 31.965265, 48.399395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448170, 32.263294, 48.167255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944107, 0.275108, -0.181596,
		0.024356, 0.607606, 0.793865,
		0.328737, 0.745071, -0.580346,
		36.546791, 32.486816, 47.993153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926235, 32.521255, 48.618954>,  <36.316673, 31.965265, 48.399395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926235, 32.521255, 48.618954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026394, 32.628586, 48.246868>,  <36.086491, 32.692986, 48.023617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026394, 32.628586, 48.246868>,  <35.926235, 32.521255, 48.618954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026394, 32.628586, 48.246868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952459, 0.240527, -0.187001,
		0.173564, 0.932816, 0.315799,
		0.250396, 0.268329, -0.930216,
		36.101513, 32.709084, 47.967804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607105, 33.126297, 48.485615>,  <35.926235, 32.521255, 48.618954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607105, 33.126297, 48.485615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.681858, 33.008522, 48.110725>,  <35.726711, 32.937859, 47.885792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.681858, 33.008522, 48.110725>,  <35.607105, 33.126297, 48.485615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681858, 33.008522, 48.110725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943803, 0.210919, -0.254459,
		0.272600, 0.932105, -0.238475,
		0.186884, -0.294439, -0.937220,
		35.737923, 32.920189, 47.829559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494205, 33.637161, 48.019592>,  <35.607105, 33.126297, 48.485615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494205, 33.637161, 48.019592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.425289, 33.285599, 47.841675>,  <35.383938, 33.074661, 47.734924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.425289, 33.285599, 47.841675>,  <35.494205, 33.637161, 48.019592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425289, 33.285599, 47.841675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920333, 0.304593, -0.245376,
		0.351143, 0.367080, -0.861366,
		-0.172293, -0.878906, -0.444791,
		35.373600, 33.021927, 47.708237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.550285, 33.769550, 53.247944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.895594, 33.787930, 53.449001>,  <30.102779, 33.798958, 53.569637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.895594, 33.787930, 53.449001>,  <29.550285, 33.769550, 53.247944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895594, 33.787930, 53.449001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503722, -0.141688, -0.852167,
		0.032060, 0.988844, -0.145461,
		0.863271, 0.045951, 0.502645,
		30.154575, 33.801716, 53.599796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955315, 34.163475, 52.795517>,  <29.550285, 33.769550, 53.247944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955315, 34.163475, 52.795517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.195847, 33.958527, 53.040752>,  <30.340166, 33.835560, 53.187893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.195847, 33.958527, 53.040752>,  <29.955315, 34.163475, 52.795517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195847, 33.958527, 53.040752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554402, -0.284986, -0.781935,
		0.575361, 0.810100, 0.112687,
		0.601331, -0.512369, 0.613090,
		30.376245, 33.804817, 53.224678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629789, 34.512691, 52.792656>,  <29.955315, 34.163475, 52.795517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629789, 34.512691, 52.792656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.699110, 34.134937, 52.904442>,  <30.740702, 33.908283, 52.971512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.699110, 34.134937, 52.904442>,  <30.629789, 34.512691, 52.792656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699110, 34.134937, 52.904442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671107, -0.094445, -0.735320,
		0.720821, 0.314981, 0.617418,
		0.173300, -0.944387, 0.279464,
		30.751101, 33.851620, 52.988281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417130, 34.364460, 52.850212>,  <30.629789, 34.512691, 52.792656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417130, 34.364460, 52.850212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.236641, 34.012859, 52.788563>,  <31.128347, 33.801899, 52.751575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.236641, 34.012859, 52.788563>,  <31.417130, 34.364460, 52.850212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236641, 34.012859, 52.788563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672395, -0.221318, -0.706331,
		0.586757, -0.422343, 0.690900,
		-0.451223, -0.879002, -0.154121,
		31.101274, 33.749157, 52.742325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957115, 33.895367, 52.653408>,  <31.417130, 34.364460, 52.850212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957115, 33.895367, 52.653408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618057, 33.719982, 52.533909>,  <31.414623, 33.614750, 52.462208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618057, 33.719982, 52.533909>,  <31.957115, 33.895367, 52.653408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618057, 33.719982, 52.533909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346958, -0.032087, -0.937332,
		0.401397, -0.898178, 0.179326,
		-0.847644, -0.438461, -0.298750,
		31.363764, 33.588444, 52.444283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202663, 33.330311, 52.257931>,  <31.957115, 33.895367, 52.653408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202663, 33.330311, 52.257931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.836496, 33.424545, 52.127384>,  <31.616796, 33.481087, 52.049057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.836496, 33.424545, 52.127384>,  <32.202663, 33.330311, 52.257931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836496, 33.424545, 52.127384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272195, -0.234996, -0.933106,
		-0.296526, -0.943013, 0.150992,
		-0.915414, 0.235591, -0.326365,
		31.561872, 33.495220, 52.029476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006878, 32.726101, 51.929630>,  <32.202663, 33.330311, 52.257931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006878, 32.726101, 51.929630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.765011, 33.003895, 51.773647>,  <31.619890, 33.170570, 51.680058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.765011, 33.003895, 51.773647>,  <32.006878, 32.726101, 51.929630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765011, 33.003895, 51.773647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227029, -0.319008, -0.920158,
		-0.763434, -0.644925, 0.035227,
		-0.604671, 0.694482, -0.389958,
		31.583611, 33.212238, 51.656658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607643, 32.358963, 51.325504>,  <32.006878, 32.726101, 51.929630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607643, 32.358963, 51.325504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.558620, 32.754196, 51.288258>,  <31.529207, 32.991337, 51.265907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.558620, 32.754196, 51.288258>,  <31.607643, 32.358963, 51.325504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558620, 32.754196, 51.288258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227868, -0.063305, -0.971632,
		-0.965948, -0.140301, -0.217394,
		-0.122558, 0.988083, -0.093120,
		31.521852, 33.050621, 51.260323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082912, 32.443958, 50.836948>,  <31.607643, 32.358963, 51.325504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082912, 32.443958, 50.836948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.273247, 32.795444, 50.821724>,  <31.387447, 33.006336, 50.812588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.273247, 32.795444, 50.821724>,  <31.082912, 32.443958, 50.836948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273247, 32.795444, 50.821724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102548, -0.098406, -0.989848,
		-0.873536, 0.467101, -0.136935,
		0.475834, 0.878711, -0.038061,
		31.415997, 33.059059, 50.810307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937687, 32.692078, 50.191147>,  <31.082912, 32.443958, 50.836948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937687, 32.692078, 50.191147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251122, 32.921444, 50.286800>,  <31.439182, 33.059063, 50.344193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.251122, 32.921444, 50.286800>,  <30.937687, 32.692078, 50.191147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251122, 32.921444, 50.286800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393336, -0.159925, -0.905379,
		-0.480916, 0.803503, -0.350861,
		0.783585, 0.573418, 0.239136,
		31.486197, 33.093468, 50.358540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953064, 33.216396, 49.700920>,  <30.937687, 32.692078, 50.191147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953064, 33.216396, 49.700920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.321486, 33.190685, 49.854557>,  <31.542538, 33.175259, 49.946739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.321486, 33.190685, 49.854557>,  <30.953064, 33.216396, 49.700920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321486, 33.190685, 49.854557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376538, -0.104739, -0.920461,
		0.099394, 0.992420, -0.072268,
		0.921054, -0.064277, 0.384095,
		31.597801, 33.171402, 49.969784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342102, 33.710800, 49.400337>,  <30.953064, 33.216396, 49.700920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342102, 33.710800, 49.400337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615643, 33.447926, 49.527115>,  <31.779766, 33.290199, 49.603180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615643, 33.447926, 49.527115>,  <31.342102, 33.710800, 49.400337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615643, 33.447926, 49.527115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428591, 0.010271, -0.903440,
		0.590474, 0.753657, 0.288688,
		0.683849, -0.657188, 0.316945,
		31.820797, 33.250771, 49.622200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991556, 33.891388, 48.965530>,  <31.342102, 33.710800, 49.400337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991556, 33.891388, 48.965530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990440, 33.510773, 49.088543>,  <31.989771, 33.282406, 49.162350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990440, 33.510773, 49.088543>,  <31.991556, 33.891388, 48.965530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990440, 33.510773, 49.088543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221583, -0.300475, -0.927694,
		0.975137, 0.065557, 0.211682,
		-0.002788, -0.951534, 0.307531,
		31.989603, 33.225311, 49.180801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468143, 33.407108, 48.614445>,  <31.991556, 33.891388, 48.965530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468143, 33.407108, 48.614445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584831, 33.604252, 48.286545>,  <32.654846, 33.722538, 48.089806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584831, 33.604252, 48.286545>,  <32.468143, 33.407108, 48.614445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584831, 33.604252, 48.286545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202490, 0.869425, 0.450665,
		0.934824, 0.034522, 0.353429,
		0.291723, 0.492858, -0.819750,
		32.672348, 33.752110, 48.040619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778450, 34.038898, 48.812065>,  <32.468143, 33.407108, 48.614445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778450, 34.038898, 48.812065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.641426, 34.102295, 48.441654>,  <32.559212, 34.140331, 48.219406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.641426, 34.102295, 48.441654>,  <32.778450, 34.038898, 48.812065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641426, 34.102295, 48.441654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176263, 0.957324, 0.229047,
		0.922813, 0.241688, -0.300006,
		-0.342560, 0.158488, -0.926031,
		32.538658, 34.149841, 48.163845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055824, 34.692314, 48.640614>,  <32.778450, 34.038898, 48.812065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055824, 34.692314, 48.640614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.766273, 34.648972, 48.368065>,  <32.592545, 34.622967, 48.204536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.766273, 34.648972, 48.368065>,  <33.055824, 34.692314, 48.640614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766273, 34.648972, 48.368065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197870, 0.978708, 0.054573,
		0.660950, 0.174327, -0.729900,
		-0.723873, -0.108355, -0.681372,
		32.549110, 34.616467, 48.163654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063820, 35.319450, 48.266380>,  <33.055824, 34.692314, 48.640614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063820, 35.319450, 48.266380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711334, 35.180996, 48.137600>,  <32.499844, 35.097923, 48.060333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711334, 35.180996, 48.137600>,  <33.063820, 35.319450, 48.266380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711334, 35.180996, 48.137600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297042, 0.935263, -0.192482,
		0.367729, -0.073986, -0.926985,
		-0.881216, -0.346134, -0.321947,
		32.446968, 35.077156, 48.041016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755470, 35.758690, 47.747101>,  <33.063820, 35.319450, 48.266380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755470, 35.758690, 47.747101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446747, 35.551197, 47.894192>,  <32.261513, 35.426701, 47.982445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446747, 35.551197, 47.894192>,  <32.755470, 35.758690, 47.747101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446747, 35.551197, 47.894192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461730, 0.854837, 0.236767,
		-0.437163, 0.012950, -0.899289,
		-0.771812, -0.518734, 0.367723,
		32.215202, 35.395576, 48.004509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175240, 36.134327, 47.573761>,  <32.755470, 35.758690, 47.747101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175240, 36.134327, 47.573761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.013805, 35.901352, 47.856003>,  <31.916945, 35.761566, 48.025349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.013805, 35.901352, 47.856003>,  <32.175240, 36.134327, 47.573761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013805, 35.901352, 47.856003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362181, 0.809910, 0.461379,
		-0.840203, -0.069350, -0.537819,
		-0.403588, -0.582440, 0.705606,
		31.892729, 35.726620, 48.067684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465267, 36.311321, 47.586601>,  <32.175240, 36.134327, 47.573761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465267, 36.311321, 47.586601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.564209, 36.157413, 47.942303>,  <31.623573, 36.065067, 48.155724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.564209, 36.157413, 47.942303>,  <31.465267, 36.311321, 47.586601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564209, 36.157413, 47.942303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383481, 0.803953, 0.454534,
		-0.889808, -0.453441, 0.051307,
		0.247353, -0.384773, 0.889250,
		31.638414, 36.041981, 48.209076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873339, 36.393517, 48.073948>,  <31.465267, 36.311321, 47.586601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873339, 36.393517, 48.073948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.170940, 36.321686, 48.331387>,  <31.349501, 36.278587, 48.485847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.170940, 36.321686, 48.331387>,  <30.873339, 36.393517, 48.073948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170940, 36.321686, 48.331387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248461, 0.819789, 0.515959,
		-0.620263, -0.543783, 0.565309,
		0.744003, -0.179573, 0.643594,
		31.394142, 36.267815, 48.524464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579397, 36.366123, 48.726562>,  <30.873339, 36.393517, 48.073948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579397, 36.366123, 48.726562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.971182, 36.423347, 48.783398>,  <31.206253, 36.457684, 48.817497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.971182, 36.423347, 48.783398>,  <30.579397, 36.366123, 48.726562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971182, 36.423347, 48.783398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197722, 0.819597, 0.537742,
		-0.039520, -0.554790, 0.831051,
		0.979461, 0.143065, 0.142085,
		31.265020, 36.466267, 48.826023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616240, 36.452297, 49.406197>,  <30.579397, 36.366123, 48.726562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616240, 36.452297, 49.406197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.958721, 36.605762, 49.267799>,  <31.164209, 36.697842, 49.184761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.958721, 36.605762, 49.267799>,  <30.616240, 36.452297, 49.406197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958721, 36.605762, 49.267799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029036, 0.704387, 0.709222,
		0.515820, -0.597193, 0.614239,
		0.856205, 0.383666, -0.345997,
		31.215582, 36.720863, 49.164001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041121, 36.518044, 49.981884>,  <30.616240, 36.452297, 49.406197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041121, 36.518044, 49.981884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.191679, 36.778450, 49.718216>,  <31.282015, 36.934696, 49.560017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.191679, 36.778450, 49.718216>,  <31.041121, 36.518044, 49.981884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191679, 36.778450, 49.718216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019584, 0.705741, 0.708199,
		0.926252, -0.279472, 0.252889,
		0.376396, 0.651018, -0.659167,
		31.304598, 36.973755, 49.520466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565329, 36.777126, 50.297737>,  <31.041121, 36.518044, 49.981884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565329, 36.777126, 50.297737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.520573, 37.041725, 50.001114>,  <31.493719, 37.200485, 49.823139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.520573, 37.041725, 50.001114>,  <31.565329, 36.777126, 50.297737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520573, 37.041725, 50.001114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032928, 0.743364, 0.668076,
		0.993175, 0.099169, -0.061394,
		-0.111890, 0.661495, -0.741556,
		31.487005, 37.240173, 49.778648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100525, 37.215912, 50.353138>,  <31.565329, 36.777126, 50.297737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100525, 37.215912, 50.353138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.806774, 37.405697, 50.158993>,  <31.630524, 37.519569, 50.042507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.806774, 37.405697, 50.158993>,  <32.100525, 37.215912, 50.353138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806774, 37.405697, 50.158993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123052, 0.610172, 0.782655,
		0.667496, 0.634487, -0.389712,
		-0.734375, 0.474464, -0.485362,
		31.586462, 37.548035, 50.013386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233822, 37.971390, 50.433941>,  <32.100525, 37.215912, 50.353138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233822, 37.971390, 50.433941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.848948, 37.971962, 50.324982>,  <31.618023, 37.972305, 50.259605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.848948, 37.971962, 50.324982>,  <32.233822, 37.971390, 50.433941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848948, 37.971962, 50.324982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194982, 0.694679, 0.692390,
		0.190217, 0.719319, -0.668130,
		-0.962185, 0.001431, -0.272394,
		31.560291, 37.972393, 50.243263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047928, 38.629017, 50.288845>,  <32.233822, 37.971390, 50.433941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047928, 38.629017, 50.288845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.700998, 38.444389, 50.363361>,  <31.492840, 38.333614, 50.408073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.700998, 38.444389, 50.363361>,  <32.047928, 38.629017, 50.288845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700998, 38.444389, 50.363361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159853, 0.612747, 0.773943,
		-0.471377, 0.641480, -0.605233,
		-0.867324, -0.461567, 0.186293,
		31.440802, 38.305920, 50.419250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429539, 39.259777, 50.025051>,  <32.047928, 38.629017, 50.288845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429539, 39.259777, 50.025051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.717503, 39.429222, 50.244972>,  <32.890282, 39.530888, 50.376923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.717503, 39.429222, 50.244972>,  <32.429539, 39.259777, 50.025051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717503, 39.429222, 50.244972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688690, -0.337575, -0.641677,
		-0.086224, 0.840592, -0.534762,
		0.719911, 0.423613, 0.549800,
		32.933475, 39.556305, 50.409912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894554, 39.565617, 49.497658>,  <32.429539, 39.259777, 50.025051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894554, 39.565617, 49.497658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.115330, 39.535049, 49.829807>,  <33.247795, 39.516708, 50.029099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.115330, 39.535049, 49.829807>,  <32.894554, 39.565617, 49.497658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115330, 39.535049, 49.829807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801794, -0.224942, -0.553648,
		0.229097, 0.971370, -0.062881,
		0.551942, -0.076421, 0.830373,
		33.280914, 39.512123, 50.078918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469505, 40.068779, 49.491329>,  <32.894554, 39.565617, 49.497658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469505, 40.068779, 49.491329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.585968, 39.786762, 49.749985>,  <33.655846, 39.617550, 49.905178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.585968, 39.786762, 49.749985>,  <33.469505, 40.068779, 49.491329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585968, 39.786762, 49.749985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760172, -0.239874, -0.603820,
		0.580832, 0.667362, 0.466114,
		0.291158, -0.705045, 0.646637,
		33.673317, 39.575249, 49.943977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234249, 40.151062, 49.519180>,  <33.469505, 40.068779, 49.491329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234249, 40.151062, 49.519180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116688, 39.794209, 49.656422>,  <34.046150, 39.580097, 49.738766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116688, 39.794209, 49.656422>,  <34.234249, 40.151062, 49.519180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116688, 39.794209, 49.656422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776651, -0.432132, -0.458341,
		0.557166, 0.131763, 0.819880,
		-0.293904, -0.892133, 0.343103,
		34.028515, 39.526569, 49.759354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817932, 39.947830, 49.858311>,  <34.234249, 40.151062, 49.519180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817932, 39.947830, 49.858311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.612820, 39.609135, 49.801628>,  <34.489754, 39.405918, 49.767620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.612820, 39.609135, 49.801628>,  <34.817932, 39.947830, 49.858311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612820, 39.609135, 49.801628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774811, -0.385344, -0.501177,
		0.369763, -0.366791, 0.853663,
		-0.512781, -0.846744, -0.141708,
		34.458984, 39.355110, 49.759117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274899, 39.421555, 50.073425>,  <34.817932, 39.947830, 49.858311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274899, 39.421555, 50.073425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010189, 39.212749, 49.858181>,  <34.851364, 39.087467, 49.729034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010189, 39.212749, 49.858181>,  <35.274899, 39.421555, 50.073425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010189, 39.212749, 49.858181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744682, -0.540629, -0.391369,
		-0.086620, -0.659718, 0.746504,
		-0.661775, -0.522008, -0.538109,
		34.811657, 39.056149, 49.696747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538975, 38.690498, 50.071636>,  <35.274899, 39.421555, 50.073425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538975, 38.690498, 50.071636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.296921, 38.719948, 49.754551>,  <35.151688, 38.737617, 49.564301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.296921, 38.719948, 49.754551>,  <35.538975, 38.690498, 50.071636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296921, 38.719948, 49.754551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691566, -0.444653, -0.569227,
		-0.394391, -0.892672, 0.218159,
		-0.605138, 0.073627, -0.792709,
		35.115379, 38.742035, 49.516739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406940, 37.983723, 49.817516>,  <35.538975, 38.690498, 50.071636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406940, 37.983723, 49.817516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.346649, 38.246475, 49.522007>,  <35.310474, 38.404125, 49.344700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.346649, 38.246475, 49.522007>,  <35.406940, 37.983723, 49.817516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346649, 38.246475, 49.522007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592802, -0.537988, -0.599296,
		-0.791117, -0.528281, -0.308306,
		-0.150732, 0.656877, -0.738777,
		35.301430, 38.443539, 49.300373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296539, 37.581318, 49.275112>,  <35.406940, 37.983723, 49.817516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296539, 37.581318, 49.275112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.409683, 37.925434, 49.105461>,  <35.477570, 38.131905, 49.003670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.409683, 37.925434, 49.105461>,  <35.296539, 37.581318, 49.275112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409683, 37.925434, 49.105461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362836, -0.505303, -0.782955,
		-0.887884, 0.067580, -0.455077,
		0.282864, 0.860292, -0.424130,
		35.494541, 38.183521, 48.978222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285809, 37.456421, 48.518826>,  <35.296539, 37.581318, 49.275112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285809, 37.456421, 48.518826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.450054, 37.820583, 48.498573>,  <35.548603, 38.039082, 48.486423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.450054, 37.820583, 48.498573>,  <35.285809, 37.456421, 48.518826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450054, 37.820583, 48.498573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348779, -0.208124, -0.913804,
		-0.842467, 0.357563, -0.402988,
		0.410614, 0.910403, -0.050627,
		35.573238, 38.093704, 48.483387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101002, 37.792061, 47.849342>,  <35.285809, 37.456421, 48.518826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101002, 37.792061, 47.849342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.427906, 37.988350, 47.970192>,  <35.624050, 38.106121, 48.042702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.427906, 37.988350, 47.970192>,  <35.101002, 37.792061, 47.849342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427906, 37.988350, 47.970192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411521, -0.129962, -0.902087,
		-0.403406, 0.861571, -0.308154,
		0.817260, 0.490719, 0.302127,
		35.673084, 38.135567, 48.060829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271599, 38.181213, 47.330128>,  <35.101002, 37.792061, 47.849342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271599, 38.181213, 47.330128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621128, 38.155182, 47.522873>,  <35.830849, 38.139565, 47.638519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621128, 38.155182, 47.522873>,  <35.271599, 38.181213, 47.330128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621128, 38.155182, 47.522873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468170, -0.155010, -0.869936,
		0.131307, 0.985767, -0.104985,
		0.873828, -0.065078, 0.481861,
		35.883278, 38.135658, 47.667431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.676842, 41.516743, 55.533127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.440228, 41.793076, 55.366837>,  <32.298260, 41.958878, 55.267063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.440228, 41.793076, 55.366837>,  <32.676842, 41.516743, 55.533127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440228, 41.793076, 55.366837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102716, -0.446846, -0.888695,
		-0.799710, -0.568396, 0.193365,
		-0.591535, 0.690837, -0.415730,
		32.262768, 42.000328, 55.242119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139721, 41.135391, 55.044777>,  <32.676842, 41.516743, 55.533127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139721, 41.135391, 55.044777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.171619, 41.519787, 54.938847>,  <32.190758, 41.750423, 54.875290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.171619, 41.519787, 54.938847>,  <32.139721, 41.135391, 55.044777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171619, 41.519787, 54.938847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015165, -0.266810, -0.963630,
		-0.996700, 0.072832, -0.035851,
		0.079749, 0.960993, -0.264825,
		32.195545, 41.808086, 54.859398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660980, 41.165699, 54.552944>,  <32.139721, 41.135391, 55.044777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660980, 41.165699, 54.552944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.854637, 41.505985, 54.471073>,  <31.970831, 41.710155, 54.421951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.854637, 41.505985, 54.471073>,  <31.660980, 41.165699, 54.552944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854637, 41.505985, 54.471073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075737, -0.192294, -0.978410,
		-0.871704, 0.489193, -0.028667,
		0.484144, 0.850714, -0.204673,
		31.999880, 41.761200, 54.409672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189842, 41.536755, 54.099751>,  <31.660980, 41.165699, 54.552944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189842, 41.536755, 54.099751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.562466, 41.669025, 54.039288>,  <31.786039, 41.748390, 54.003010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.562466, 41.669025, 54.039288>,  <31.189842, 41.536755, 54.099751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562466, 41.669025, 54.039288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064970, -0.257660, -0.964049,
		-0.357740, 0.907889, -0.218541,
		0.931558, 0.330680, -0.151161,
		31.841932, 41.768230, 53.993938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168358, 41.719494, 53.351471>,  <31.189842, 41.536755, 54.099751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168358, 41.719494, 53.351471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.557520, 41.725067, 53.443779>,  <31.791018, 41.728409, 53.499165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.557520, 41.725067, 53.443779>,  <31.168358, 41.719494, 53.351471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557520, 41.725067, 53.443779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228856, -0.199663, -0.952764,
		0.032804, 0.979766, -0.197442,
		0.972908, 0.013931, 0.230775,
		31.849392, 41.729248, 53.513012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350275, 42.189236, 52.876389>,  <31.168358, 41.719494, 53.351471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350275, 42.189236, 52.876389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.645582, 41.941406, 52.983040>,  <31.822765, 41.792709, 53.047031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.645582, 41.941406, 52.983040>,  <31.350275, 42.189236, 52.876389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645582, 41.941406, 52.983040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214419, -0.159208, -0.963679,
		0.639520, 0.768622, 0.015310,
		0.738267, -0.619575, 0.266624,
		31.867062, 41.755535, 53.063026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902147, 42.350945, 52.384323>,  <31.350275, 42.189236, 52.876389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902147, 42.350945, 52.384323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.017056, 41.999012, 52.535778>,  <32.085999, 41.787849, 52.626652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.017056, 41.999012, 52.535778>,  <31.902147, 42.350945, 52.384323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017056, 41.999012, 52.535778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282225, -0.300002, -0.911234,
		0.915328, 0.368629, 0.162131,
		0.287268, -0.879836, 0.378636,
		32.103237, 41.735062, 52.649368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584942, 42.239815, 52.108047>,  <31.902147, 42.350945, 52.384323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584942, 42.239815, 52.108047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.437836, 41.884171, 52.217026>,  <32.349571, 41.670784, 52.282413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.437836, 41.884171, 52.217026>,  <32.584942, 42.239815, 52.108047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437836, 41.884171, 52.217026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191497, -0.359111, -0.913438,
		0.909988, -0.283758, 0.302331,
		-0.367765, -0.889113, 0.272448,
		32.327507, 41.617435, 52.298759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080070, 41.666515, 51.954315>,  <32.584942, 42.239815, 52.108047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080070, 41.666515, 51.954315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.733318, 41.470181, 51.989189>,  <32.525269, 41.352379, 52.010113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.733318, 41.470181, 51.989189>,  <33.080070, 41.666515, 51.954315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733318, 41.470181, 51.989189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306095, -0.662111, -0.684043,
		0.393479, -0.566295, 0.724213,
		-0.866879, -0.490835, 0.087187,
		32.473255, 41.322929, 52.015347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243782, 40.930573, 51.983555>,  <33.080070, 41.666515, 51.954315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243782, 40.930573, 51.983555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.849823, 40.935909, 51.914497>,  <32.613449, 40.939110, 51.873062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.849823, 40.935909, 51.914497>,  <33.243782, 40.930573, 51.983555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849823, 40.935909, 51.914497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091771, -0.805262, -0.585774,
		-0.146838, -0.592769, 0.791874,
		-0.984894, 0.013343, -0.172642,
		32.554356, 40.939911, 51.862705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054577, 40.329716, 52.099621>,  <33.243782, 40.930573, 51.983555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054577, 40.329716, 52.099621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.766228, 40.472969, 51.862274>,  <32.593220, 40.558922, 51.719868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.766228, 40.472969, 51.862274>,  <33.054577, 40.329716, 52.099621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766228, 40.472969, 51.862274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086594, -0.802894, -0.589799,
		-0.687640, -0.476551, 0.547769,
		-0.720870, 0.358136, -0.593368,
		32.549965, 40.580410, 51.684265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633781, 39.792053, 51.998306>,  <33.054577, 40.329716, 52.099621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633781, 39.792053, 51.998306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.554935, 40.028011, 51.685085>,  <32.507626, 40.169586, 51.497154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.554935, 40.028011, 51.685085>,  <32.633781, 39.792053, 51.998306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554935, 40.028011, 51.685085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284748, -0.729843, -0.621489,
		-0.938117, -0.345479, -0.024107,
		-0.197117, 0.589893, -0.783053,
		32.495800, 40.204979, 51.450169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363018, 39.379711, 51.560764>,  <32.633781, 39.792053, 51.998306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363018, 39.379711, 51.560764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.473576, 39.681164, 51.322220>,  <32.539909, 39.862034, 51.179092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.473576, 39.681164, 51.322220>,  <32.363018, 39.379711, 51.560764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473576, 39.681164, 51.322220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472236, -0.646953, -0.598703,
		-0.837018, -0.116144, -0.534707,
		0.276395, 0.753633, -0.596358,
		32.556496, 39.907253, 51.143311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233871, 39.072742, 50.834282>,  <32.363018, 39.379711, 51.560764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233871, 39.072742, 50.834282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.488590, 39.379467, 50.802067>,  <32.641422, 39.563503, 50.782738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.488590, 39.379467, 50.802067>,  <32.233871, 39.072742, 50.834282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488590, 39.379467, 50.802067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589366, -0.551440, -0.590391,
		-0.497131, 0.328494, -0.803089,
		0.636796, 0.766815, -0.080535,
		32.679630, 39.609512, 50.777905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600866, 39.133614, 50.581276>,  <32.233871, 39.072742, 50.834282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600866, 39.133614, 50.581276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.418865, 38.789600, 50.673637>,  <31.309664, 38.583191, 50.729053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.418865, 38.789600, 50.673637>,  <31.600866, 39.133614, 50.581276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418865, 38.789600, 50.673637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247499, 0.371224, 0.894951,
		-0.855404, 0.350055, -0.381765,
		-0.455003, -0.860031, 0.230908,
		31.282364, 38.531590, 50.742908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013952, 39.413082, 50.981213>,  <31.600866, 39.133614, 50.581276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013952, 39.413082, 50.981213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067560, 39.025116, 51.062500>,  <31.099726, 38.792336, 51.111271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.067560, 39.025116, 51.062500>,  <31.013952, 39.413082, 50.981213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067560, 39.025116, 51.062500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346409, 0.146278, 0.926609,
		-0.928461, -0.194580, -0.316384,
		0.134019, -0.969918, 0.203218,
		31.107765, 38.734142, 51.123466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387087, 39.123852, 51.435246>,  <31.013952, 39.413082, 50.981213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387087, 39.123852, 51.435246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.705572, 38.887627, 51.487827>,  <30.896664, 38.745892, 51.519375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.705572, 38.887627, 51.487827>,  <30.387087, 39.123852, 51.435246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705572, 38.887627, 51.487827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174946, -0.016743, 0.984436,
		-0.579173, -0.806816, -0.116648,
		0.796212, -0.590565, 0.131452,
		30.944435, 38.710457, 51.527264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084274, 38.640278, 51.852932>,  <30.387087, 39.123852, 51.435246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084274, 38.640278, 51.852932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480692, 38.655861, 51.904022>,  <30.718542, 38.665211, 51.934677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480692, 38.655861, 51.904022>,  <30.084274, 38.640278, 51.852932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480692, 38.655861, 51.904022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131166, 0.104642, 0.985822,
		0.025036, -0.993747, 0.108814,
		0.991044, 0.038953, 0.127726,
		30.778006, 38.667549, 51.942341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127462, 38.247662, 52.330223>,  <30.084274, 38.640278, 51.852932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127462, 38.247662, 52.330223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.481289, 38.432358, 52.356556>,  <30.693584, 38.543175, 52.372356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.481289, 38.432358, 52.356556>,  <30.127462, 38.247662, 52.330223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481289, 38.432358, 52.356556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103176, 0.056069, 0.993082,
		0.454857, -0.885240, 0.097237,
		0.884567, 0.461743, 0.065832,
		30.746658, 38.570881, 52.376305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428379, 37.914001, 52.941120>,  <30.127462, 38.247662, 52.330223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428379, 37.914001, 52.941120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.643745, 38.244247, 52.873634>,  <30.772966, 38.442394, 52.833145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.643745, 38.244247, 52.873634>,  <30.428379, 37.914001, 52.941120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643745, 38.244247, 52.873634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133789, 0.281420, 0.950212,
		0.831990, -0.489039, 0.261979,
		0.538417, 0.825617, -0.168710,
		30.805271, 38.491932, 52.823021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001501, 38.081657, 53.534187>,  <30.428379, 37.914001, 52.941120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001501, 38.081657, 53.534187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.914740, 38.429344, 53.356464>,  <30.862682, 38.637959, 53.249832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.914740, 38.429344, 53.356464>,  <31.001501, 38.081657, 53.534187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914740, 38.429344, 53.356464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168767, 0.414901, 0.894078,
		0.961494, 0.268912, 0.056702,
		-0.216903, 0.869220, -0.444309,
		30.849669, 38.690109, 53.223171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184908, 38.612354, 54.040932>,  <31.001501, 38.081657, 53.534187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184908, 38.612354, 54.040932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.964241, 38.819420, 53.779339>,  <30.831841, 38.943657, 53.622383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.964241, 38.819420, 53.779339>,  <31.184908, 38.612354, 54.040932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964241, 38.819420, 53.779339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247605, 0.647096, 0.721081,
		0.796464, 0.559726, -0.228805,
		-0.551667, 0.517662, -0.653980,
		30.798740, 38.974720, 53.583145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405340, 39.208755, 54.085083>,  <31.184908, 38.612354, 54.040932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405340, 39.208755, 54.085083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.033079, 39.213314, 53.938793>,  <30.809723, 39.216049, 53.851017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.033079, 39.213314, 53.938793>,  <31.405340, 39.208755, 54.085083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033079, 39.213314, 53.938793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287292, 0.596241, 0.749640,
		0.226607, 0.802724, -0.551618,
		-0.930652, 0.011398, -0.365728,
		30.753883, 39.216732, 53.829075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185478, 39.965248, 53.984016>,  <31.405340, 39.208755, 54.085083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185478, 39.965248, 53.984016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.853685, 39.743160, 54.008297>,  <30.654610, 39.609905, 54.022865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.853685, 39.743160, 54.008297>,  <31.185478, 39.965248, 53.984016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853685, 39.743160, 54.008297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412906, 0.682764, 0.602778,
		-0.376120, 0.474931, -0.795597,
		-0.829483, -0.555224, 0.060700,
		30.604841, 39.576591, 54.026508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667400, 40.470196, 53.943848>,  <31.185478, 39.965248, 53.984016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667400, 40.470196, 53.943848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.483974, 40.144234, 54.085636>,  <30.373919, 39.948658, 54.170708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.483974, 40.144234, 54.085636>,  <30.667400, 40.470196, 53.943848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483974, 40.144234, 54.085636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468567, 0.560647, 0.682730,
		-0.755092, 0.146984, -0.638930,
		-0.458565, -0.814905, 0.354468,
		30.346405, 39.899761, 54.191978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921556, 40.693409, 54.136177>,  <30.667400, 40.470196, 53.943848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921556, 40.693409, 54.136177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.011204, 40.356567, 54.332397>,  <30.064993, 40.154465, 54.450130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.011204, 40.356567, 54.332397>,  <29.921556, 40.693409, 54.136177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011204, 40.356567, 54.332397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453017, 0.355644, 0.817492,
		-0.862871, -0.405443, -0.301779,
		0.224120, -0.842101, 0.490548,
		30.078440, 40.103939, 54.479561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301249, 40.507980, 54.289341>,  <29.921556, 40.693409, 54.136177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301249, 40.507980, 54.289341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569771, 40.343800, 54.536201>,  <29.730885, 40.245289, 54.684319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569771, 40.343800, 54.536201>,  <29.301249, 40.507980, 54.289341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569771, 40.343800, 54.536201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500984, 0.362363, 0.785944,
		-0.546228, -0.836791, 0.037623,
		0.671304, -0.410456, 0.617152,
		29.771162, 40.220661, 54.721348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848074, 40.230247, 54.731369>,  <29.301249, 40.507980, 54.289341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848074, 40.230247, 54.731369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185659, 40.239063, 54.945747>,  <29.388210, 40.244354, 55.074375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185659, 40.239063, 54.945747>,  <28.848074, 40.230247, 54.731369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185659, 40.239063, 54.945747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527079, 0.219500, 0.820979,
		-0.099547, -0.975364, 0.196866,
		0.843966, 0.022038, 0.535945,
		29.438848, 40.245674, 55.106529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.632416, 37.085819, 59.432568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663273, 37.439762, 59.248798>,  <33.681786, 37.652130, 59.138538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663273, 37.439762, 59.248798>,  <33.632416, 37.085819, 59.432568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663273, 37.439762, 59.248798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216281, -0.464675, -0.858662,
		-0.973279, -0.033126, -0.227224,
		0.077142, 0.884862, -0.459423,
		33.686417, 37.705219, 59.110973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339844, 36.988560, 58.768909>,  <33.632416, 37.085819, 59.432568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339844, 36.988560, 58.768909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.564320, 37.316193, 58.721302>,  <33.699005, 37.512772, 58.692738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.564320, 37.316193, 58.721302>,  <33.339844, 36.988560, 58.768909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564320, 37.316193, 58.721302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508313, -0.454549, -0.731440,
		-0.653210, 0.349979, -0.671440,
		0.561191, 0.819085, -0.119017,
		33.732677, 37.561916, 58.685596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479824, 37.035343, 58.035133>,  <33.339844, 36.988560, 58.768909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479824, 37.035343, 58.035133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.754925, 37.282417, 58.187695>,  <33.919983, 37.430660, 58.279232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.754925, 37.282417, 58.187695>,  <33.479824, 37.035343, 58.035133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754925, 37.282417, 58.187695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572550, -0.138523, -0.808082,
		-0.446306, 0.774130, -0.448924,
		0.687748, 0.617684, 0.381405,
		33.961250, 37.467724, 58.302116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588020, 37.587776, 57.414387>,  <33.479824, 37.035343, 58.035133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588020, 37.587776, 57.414387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892155, 37.562164, 57.672935>,  <34.074635, 37.546799, 57.828064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892155, 37.562164, 57.672935>,  <33.588020, 37.587776, 57.414387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892155, 37.562164, 57.672935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636556, -0.124465, -0.761121,
		0.129182, 0.990156, -0.053879,
		0.760335, -0.064026, 0.646368,
		34.120255, 37.542957, 57.866844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121723, 37.940647, 57.044613>,  <33.588020, 37.587776, 57.414387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121723, 37.940647, 57.044613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.319359, 37.745636, 57.332558>,  <34.437939, 37.628632, 57.505325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.319359, 37.745636, 57.332558>,  <34.121723, 37.940647, 57.044613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319359, 37.745636, 57.332558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801622, -0.065075, -0.594278,
		0.336571, 0.870680, 0.358658,
		0.494087, -0.487525, 0.719859,
		34.467587, 37.599377, 57.548515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735779, 38.004089, 56.932053>,  <34.121723, 37.940647, 57.044613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735779, 38.004089, 56.932053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.775864, 37.692204, 57.179276>,  <34.799915, 37.505070, 57.327610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.775864, 37.692204, 57.179276>,  <34.735779, 38.004089, 56.932053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775864, 37.692204, 57.179276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696489, -0.388633, -0.603214,
		0.710535, 0.490921, 0.504119,
		0.100213, -0.779718, 0.618059,
		34.805927, 37.458286, 57.364693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495289, 37.854366, 57.060040>,  <34.735779, 38.004089, 56.932053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495289, 37.854366, 57.060040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.269848, 37.526367, 57.099949>,  <35.134583, 37.329567, 57.123894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.269848, 37.526367, 57.099949>,  <35.495289, 37.854366, 57.060040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269848, 37.526367, 57.099949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583170, -0.480521, -0.654990,
		0.585035, -0.310968, 0.749021,
		-0.563601, -0.819999, 0.099774,
		35.100769, 37.280369, 57.129883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987049, 37.296505, 57.050709>,  <35.495289, 37.854366, 57.060040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987049, 37.296505, 57.050709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629189, 37.128399, 56.990082>,  <35.414471, 37.027534, 56.953705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629189, 37.128399, 56.990082>,  <35.987049, 37.296505, 57.050709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629189, 37.128399, 56.990082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385488, -0.554670, -0.737387,
		0.225830, -0.718133, 0.658245,
		-0.894651, -0.420270, -0.151571,
		35.360794, 37.002319, 56.944611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219040, 36.711514, 56.845451>,  <35.987049, 37.296505, 57.050709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219040, 36.711514, 56.845451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.836060, 36.720741, 56.730385>,  <35.606270, 36.726280, 56.661343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.836060, 36.720741, 56.730385>,  <36.219040, 36.711514, 56.845451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836060, 36.720741, 56.730385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241950, -0.479167, -0.843717,
		-0.157308, -0.877420, 0.453197,
		-0.957452, 0.023073, -0.287669,
		35.548824, 36.727665, 56.644085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107315, 36.061371, 56.541203>,  <36.219040, 36.711514, 56.845451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107315, 36.061371, 56.541203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761360, 36.219204, 56.417088>,  <35.553787, 36.313904, 56.342617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761360, 36.219204, 56.417088>,  <36.107315, 36.061371, 56.541203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761360, 36.219204, 56.417088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066636, -0.522419, -0.850081,
		-0.497526, -0.755900, 0.425539,
		-0.864886, 0.394581, -0.310287,
		35.501896, 36.337578, 56.324001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741074, 35.471527, 56.373245>,  <36.107315, 36.061371, 56.541203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741074, 35.471527, 56.373245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582016, 35.760033, 56.146385>,  <35.486580, 35.933136, 56.010269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582016, 35.760033, 56.146385>,  <35.741074, 35.471527, 56.373245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582016, 35.760033, 56.146385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214594, -0.527875, -0.821765,
		-0.892093, -0.448476, 0.055127,
		-0.397642, 0.721261, -0.567154,
		35.462723, 35.976410, 55.976238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085827, 35.224274, 56.044224>,  <35.741074, 35.471527, 56.373245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085827, 35.224274, 56.044224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172379, 35.542622, 55.818031>,  <35.224312, 35.733631, 55.682316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172379, 35.542622, 55.818031>,  <35.085827, 35.224274, 56.044224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172379, 35.542622, 55.818031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031429, -0.584582, -0.810726,
		-0.975803, 0.157654, -0.151507,
		0.216383, 0.795870, -0.565482,
		35.237293, 35.781384, 55.648388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653900, 35.227760, 55.419338>,  <35.085827, 35.224274, 56.044224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653900, 35.227760, 55.419338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970520, 35.452980, 55.324322>,  <35.160492, 35.588112, 55.267311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970520, 35.452980, 55.324322>,  <34.653900, 35.227760, 55.419338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970520, 35.452980, 55.324322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186354, -0.592598, -0.783645,
		-0.581996, 0.576028, -0.573997,
		0.791551, 0.563045, -0.237545,
		35.207985, 35.621895, 55.253059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731434, 35.050041, 54.734821>,  <34.653900, 35.227760, 55.419338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731434, 35.050041, 54.734821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075653, 35.238899, 54.811272>,  <35.282185, 35.352215, 54.857140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075653, 35.238899, 54.811272>,  <34.731434, 35.050041, 54.734821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075653, 35.238899, 54.811272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360521, -0.299520, -0.883353,
		-0.359827, 0.829075, -0.427971,
		0.860552, 0.472147, 0.191124,
		35.333820, 35.380543, 54.868610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074783, 35.274712, 54.409542>,  <34.731434, 35.050041, 54.734821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074783, 35.274712, 54.409542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797642, 34.995579, 54.482185>,  <33.631359, 34.828098, 54.525772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.797642, 34.995579, 54.482185>,  <34.074783, 35.274712, 54.409542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797642, 34.995579, 54.482185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263764, 0.479667, 0.836868,
		-0.671107, 0.531925, -0.516402,
		-0.692852, -0.697836, 0.181606,
		33.589787, 34.786228, 54.536667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545834, 35.631149, 54.719254>,  <34.074783, 35.274712, 54.409542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545834, 35.631149, 54.719254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.473766, 35.252228, 54.825199>,  <33.430527, 35.024876, 54.888767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.473766, 35.252228, 54.825199>,  <33.545834, 35.631149, 54.719254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473766, 35.252228, 54.825199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466243, 0.319346, 0.825007,
		-0.866117, 0.025146, -0.499209,
		-0.180166, -0.947305, 0.264866,
		33.419716, 34.968037, 54.904659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902393, 35.508289, 54.612484>,  <33.545834, 35.631149, 54.719254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902393, 35.508289, 54.612484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031067, 35.244141, 54.883904>,  <33.108273, 35.085651, 55.046757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031067, 35.244141, 54.883904>,  <32.902393, 35.508289, 54.612484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031067, 35.244141, 54.883904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631640, 0.384212, 0.673359,
		-0.705373, -0.645209, -0.293520,
		0.321683, -0.660368, 0.678552,
		33.127571, 35.046032, 55.087471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287537, 35.270988, 55.065918>,  <32.902393, 35.508289, 54.612484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287537, 35.270988, 55.065918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540424, 35.107140, 55.328979>,  <32.692158, 35.008831, 55.486816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540424, 35.107140, 55.328979>,  <32.287537, 35.270988, 55.065918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540424, 35.107140, 55.328979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703871, 0.051116, 0.708486,
		-0.323830, -0.910821, -0.256007,
		0.632218, -0.409625, 0.657654,
		32.730091, 34.984253, 55.526276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843212, 34.779800, 55.508568>,  <32.287537, 35.270988, 55.065918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843212, 34.779800, 55.508568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181515, 34.876968, 55.698593>,  <32.384495, 34.935268, 55.812607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.181515, 34.876968, 55.698593>,  <31.843212, 34.779800, 55.508568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181515, 34.876968, 55.698593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523290, 0.203731, 0.827442,
		0.104217, -0.948411, 0.299425,
		0.845758, 0.242920, 0.475062,
		32.435242, 34.949844, 55.841110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954060, 34.257710, 56.205685>,  <31.843212, 34.779800, 55.508568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954060, 34.257710, 56.205685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.107998, 34.626236, 56.227818>,  <32.200359, 34.847351, 56.241096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.107998, 34.626236, 56.227818>,  <31.954060, 34.257710, 56.205685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107998, 34.626236, 56.227818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582243, 0.195819, 0.789081,
		0.716161, -0.335891, 0.611793,
		0.384845, 0.921321, 0.055332,
		32.223454, 34.902634, 56.244415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955681, 34.413044, 56.887032>,  <31.954060, 34.257710, 56.205685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955681, 34.413044, 56.887032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024414, 34.780235, 56.744038>,  <32.065655, 35.000549, 56.658241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024414, 34.780235, 56.744038>,  <31.955681, 34.413044, 56.887032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024414, 34.780235, 56.744038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402291, 0.396633, 0.825133,
		0.899242, 0.002028, 0.437448,
		0.171833, 0.917975, -0.357485,
		32.075962, 35.055626, 56.636791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423779, 34.793678, 57.332203>,  <31.955681, 34.413044, 56.887032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423779, 34.793678, 57.332203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204578, 35.073254, 57.148388>,  <32.073059, 35.241001, 57.038101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204578, 35.073254, 57.148388>,  <32.423779, 34.793678, 57.332203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204578, 35.073254, 57.148388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258317, 0.381112, 0.887708,
		0.795591, 0.605172, -0.028302,
		-0.548003, 0.698942, -0.459535,
		32.040176, 35.282936, 57.010529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462917, 35.389805, 57.735573>,  <32.423779, 34.793678, 57.332203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462917, 35.389805, 57.735573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.167736, 35.518528, 57.498302>,  <31.990627, 35.595760, 57.355938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.167736, 35.518528, 57.498302>,  <32.462917, 35.389805, 57.735573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167736, 35.518528, 57.498302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289049, 0.643551, 0.708727,
		0.609812, 0.694467, -0.381895,
		-0.737956, 0.321804, -0.593180,
		31.946348, 35.615070, 57.320347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510113, 36.067963, 57.772839>,  <32.462917, 35.389805, 57.735573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510113, 36.067963, 57.772839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.138218, 35.998524, 57.642944>,  <31.915081, 35.956860, 57.565006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.138218, 35.998524, 57.642944>,  <32.510113, 36.067963, 57.772839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138218, 35.998524, 57.642944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349335, 0.694670, 0.628808,
		0.116425, 0.698068, -0.706504,
		-0.929737, -0.173598, -0.324736,
		31.859297, 35.946445, 57.545525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071037, 36.754345, 57.765427>,  <32.510113, 36.067963, 57.772839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071037, 36.754345, 57.765427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.789473, 36.470230, 57.765369>,  <31.620533, 36.299763, 57.765335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.789473, 36.470230, 57.765369>,  <32.071037, 36.754345, 57.765427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789473, 36.470230, 57.765369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583295, 0.577945, 0.570742,
		-0.405307, 0.401838, -0.821129,
		-0.703913, -0.710286, -0.000145,
		31.578299, 36.257145, 57.765327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449791, 37.152218, 57.648178>,  <32.071037, 36.754345, 57.765427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449791, 37.152218, 57.648178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.365366, 36.805077, 57.828083>,  <31.314711, 36.596790, 57.936024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.365366, 36.805077, 57.828083>,  <31.449791, 37.152218, 57.648178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365366, 36.805077, 57.828083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549427, 0.485889, 0.679737,
		-0.808445, -0.103643, -0.579375,
		-0.211062, -0.867854, 0.449759,
		31.302048, 36.544720, 57.963009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781868, 37.302219, 57.959862>,  <31.449791, 37.152218, 57.648178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781868, 37.302219, 57.959862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.917099, 36.964272, 58.125706>,  <30.998238, 36.761501, 58.225212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.917099, 36.964272, 58.125706>,  <30.781868, 37.302219, 57.959862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917099, 36.964272, 58.125706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417366, 0.260258, 0.870673,
		-0.843510, -0.467398, -0.264632,
		0.338078, -0.844870, 0.414606,
		31.018522, 36.710812, 58.250088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156258, 36.981693, 58.293278>,  <30.781868, 37.302219, 57.959862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156258, 36.981693, 58.293278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.480854, 36.847942, 58.484974>,  <30.675611, 36.767693, 58.599991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.480854, 36.847942, 58.484974>,  <30.156258, 36.981693, 58.293278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480854, 36.847942, 58.484974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392724, 0.295229, 0.870981,
		-0.432723, -0.895003, 0.108257,
		0.811491, -0.334378, 0.479242,
		30.724302, 36.747627, 58.628746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326162, 36.865116, 58.515240>,  <30.156258, 36.981693, 58.293278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326162, 36.865116, 58.515240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.199629, 37.107235, 58.223064>,  <29.123709, 37.252506, 58.047760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.199629, 37.107235, 58.223064>,  <29.326162, 36.865116, 58.515240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199629, 37.107235, 58.223064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025421, -0.775115, -0.631309,
		-0.948308, -0.181135, 0.260581,
		-0.316332, 0.605299, -0.730443,
		29.104729, 37.288826, 58.003933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776981, 36.512058, 58.337627>,  <29.326162, 36.865116, 58.515240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776981, 36.512058, 58.337627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.847342, 36.768387, 58.038719>,  <28.889559, 36.922184, 57.859375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.847342, 36.768387, 58.038719>,  <28.776981, 36.512058, 58.337627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847342, 36.768387, 58.038719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059731, -0.764651, -0.641670,
		-0.982594, 0.068236, -0.172781,
		0.175902, 0.640822, -0.747266,
		28.900112, 36.960632, 57.814541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284292, 36.418407, 57.800930>,  <28.776981, 36.512058, 58.337627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284292, 36.418407, 57.800930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.599586, 36.572510, 57.608990>,  <28.788763, 36.664970, 57.493824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.599586, 36.572510, 57.608990>,  <28.284292, 36.418407, 57.800930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599586, 36.572510, 57.608990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127835, -0.660252, -0.740085,
		-0.601951, 0.644703, -0.471184,
		0.788235, 0.385260, -0.479855,
		28.836058, 36.688087, 57.465034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141607, 36.341278, 57.066334>,  <28.284292, 36.418407, 57.800930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141607, 36.341278, 57.066334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.533695, 36.419937, 57.057434>,  <28.768948, 36.467133, 57.052094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.533695, 36.419937, 57.057434>,  <28.141607, 36.341278, 57.066334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533695, 36.419937, 57.057434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079135, -0.492499, -0.866708,
		-0.181394, 0.847805, -0.498320,
		0.980221, 0.196650, -0.022245,
		28.827761, 36.478931, 57.050762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411364, 36.559845, 56.297607>,  <28.141607, 36.341278, 57.066334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411364, 36.559845, 56.297607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.751139, 36.442532, 56.473083>,  <28.955004, 36.372143, 56.578369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.751139, 36.442532, 56.473083>,  <28.411364, 36.559845, 56.297607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751139, 36.442532, 56.473083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132324, -0.686385, -0.715098,
		0.510831, 0.665479, -0.544233,
		0.849436, -0.293279, 0.438685,
		29.005970, 36.354549, 56.604691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903837, 36.592911, 55.689766>,  <28.411364, 36.559845, 56.297607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903837, 36.592911, 55.689766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.057686, 36.352482, 55.969990>,  <29.149996, 36.208225, 56.138123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.057686, 36.352482, 55.969990>,  <28.903837, 36.592911, 55.689766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057686, 36.352482, 55.969990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216342, -0.679105, -0.701436,
		0.897364, 0.421348, -0.131163,
		0.384622, -0.601068, 0.700560,
		29.173073, 36.172161, 56.180157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650965, 36.443882, 55.481499>,  <28.903837, 36.592911, 55.689766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650965, 36.443882, 55.481499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.547638, 36.147560, 55.729527>,  <29.485641, 35.969769, 55.878342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.547638, 36.147560, 55.729527>,  <29.650965, 36.443882, 55.481499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547638, 36.147560, 55.729527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201000, -0.669019, -0.715550,
		0.944919, -0.060205, 0.321721,
		-0.258317, -0.740803, 0.620068,
		29.470142, 35.925320, 55.915546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102249, 35.864788, 55.336044>,  <29.650965, 36.443882, 55.481499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102249, 35.864788, 55.336044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.795534, 35.675945, 55.510010>,  <29.611506, 35.562637, 55.614388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.795534, 35.675945, 55.510010>,  <30.102249, 35.864788, 55.336044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795534, 35.675945, 55.510010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145819, -0.787939, -0.598239,
		0.625117, -0.395305, 0.673025,
		-0.766789, -0.472109, 0.434911,
		29.565496, 35.534313, 55.640484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397717, 35.150536, 55.535381>,  <30.102249, 35.864788, 55.336044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397717, 35.150536, 55.535381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.000814, 35.103100, 55.550171>,  <29.762674, 35.074638, 55.559044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.000814, 35.103100, 55.550171>,  <30.397717, 35.150536, 55.535381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000814, 35.103100, 55.550171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075977, -0.814862, -0.574654,
		0.098281, -0.567393, 0.817561,
		-0.992254, -0.118593, 0.036976,
		29.703138, 35.067520, 55.561264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266109, 34.489330, 55.820465>,  <30.397717, 35.150536, 55.535381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266109, 34.489330, 55.820465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.942348, 34.591587, 55.608990>,  <29.748091, 34.652939, 55.482105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.942348, 34.591587, 55.608990>,  <30.266109, 34.489330, 55.820465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942348, 34.591587, 55.608990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154622, -0.775741, -0.611815,
		-0.566532, -0.576952, 0.588360,
		-0.809403, 0.255640, -0.528692,
		29.699528, 34.668278, 55.450382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956106, 33.842129, 55.665718>,  <30.266109, 34.489330, 55.820465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956106, 33.842129, 55.665718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.815130, 34.082993, 55.379169>,  <29.730545, 34.227509, 55.207241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.815130, 34.082993, 55.379169>,  <29.956106, 33.842129, 55.665718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815130, 34.082993, 55.379169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230433, -0.686086, -0.690063,
		-0.907022, -0.408281, 0.103045,
		-0.352438, 0.602157, -0.716376,
		29.709398, 34.263641, 55.164257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793459, 33.374653, 55.236599>,  <29.956106, 33.842129, 55.665718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793459, 33.374653, 55.236599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.772793, 33.706699, 55.014523>,  <29.760393, 33.905926, 54.881275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.772793, 33.706699, 55.014523>,  <29.793459, 33.374653, 55.236599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772793, 33.706699, 55.014523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326213, -0.511414, -0.795010,
		-0.943883, -0.222187, -0.244372,
		-0.051666, 0.830114, -0.555195,
		29.757294, 33.955734, 54.847965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622965, 33.128384, 54.563717>,  <29.793459, 33.374653, 55.236599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622965, 33.128384, 54.563717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.736221, 33.501389, 54.474049>,  <29.804174, 33.725193, 54.420246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.736221, 33.501389, 54.474049>,  <29.622965, 33.128384, 54.563717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736221, 33.501389, 54.474049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280307, -0.303992, -0.910504,
		-0.917203, 0.194962, -0.347461,
		0.283139, 0.932512, -0.224173,
		29.821163, 33.781143, 54.406796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418909, 33.248020, 53.852970>,  <29.622965, 33.128384, 54.563717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418909, 33.248020, 53.852970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.726460, 33.485634, 53.947582>,  <29.910990, 33.628201, 54.004349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.726460, 33.485634, 53.947582>,  <29.418909, 33.248020, 53.852970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726460, 33.485634, 53.947582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375880, -0.120671, -0.918778,
		-0.517243, 0.795337, -0.316067,
		0.768878, 0.594035, 0.236535,
		29.957123, 33.663845, 54.018543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.680779, 40.010929, 55.423717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.016874, 40.223526, 55.466633>,  <29.218533, 40.351086, 55.492382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.016874, 40.223526, 55.466633>,  <28.680779, 40.010929, 55.423717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016874, 40.223526, 55.466633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435938, 0.544533, 0.716549,
		0.322419, -0.648844, 0.689237,
		0.840240, 0.531494, 0.107289,
		29.268946, 40.382973, 55.498817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782560, 40.022282, 56.122276>,  <28.680779, 40.010929, 55.423717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782560, 40.022282, 56.122276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.991549, 40.326782, 55.968647>,  <29.116941, 40.509483, 55.876469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.991549, 40.326782, 55.968647>,  <28.782560, 40.022282, 56.122276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991549, 40.326782, 55.968647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324223, 0.593982, 0.736251,
		0.788609, -0.260143, 0.557155,
		0.522471, 0.761256, -0.384075,
		29.148291, 40.555161, 55.853424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149853, 40.209423, 56.695538>,  <28.782560, 40.022282, 56.122276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149853, 40.209423, 56.695538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.138855, 40.530956, 56.457848>,  <29.132256, 40.723877, 56.315235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.138855, 40.530956, 56.457848>,  <29.149853, 40.209423, 56.695538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138855, 40.530956, 56.457848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197837, 0.578316, 0.791461,
		0.979849, 0.139321, 0.143126,
		-0.027495, 0.803828, -0.594226,
		29.130606, 40.772106, 56.279579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506546, 40.702740, 56.987911>,  <29.149853, 40.209423, 56.695538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506546, 40.702740, 56.987911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.331469, 40.942173, 56.719547>,  <29.226423, 41.085835, 56.558529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.331469, 40.942173, 56.719547>,  <29.506546, 40.702740, 56.987911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331469, 40.942173, 56.719547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047481, 0.760530, 0.647564,
		0.897870, 0.251578, -0.361300,
		-0.437693, 0.598584, -0.670912,
		29.200161, 41.121750, 56.518272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840714, 41.237823, 56.970905>,  <29.506546, 40.702740, 56.987911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840714, 41.237823, 56.970905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.484629, 41.357224, 56.833260>,  <29.270977, 41.428864, 56.750671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.484629, 41.357224, 56.833260>,  <29.840714, 41.237823, 56.970905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484629, 41.357224, 56.833260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083636, 0.635462, 0.767589,
		0.447803, 0.712097, -0.540731,
		-0.890212, 0.298504, -0.344119,
		29.217566, 41.446774, 56.730022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768024, 41.989994, 57.020500>,  <29.840714, 41.237823, 56.970905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768024, 41.989994, 57.020500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.378019, 41.901691, 57.010536>,  <29.144016, 41.848709, 57.004559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.378019, 41.901691, 57.010536>,  <29.768024, 41.989994, 57.020500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378019, 41.901691, 57.010536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165469, 0.646832, 0.744465,
		-0.148232, 0.729984, -0.667196,
		-0.975011, -0.220754, -0.024908,
		29.085516, 41.835464, 57.003063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479963, 42.665131, 57.062710>,  <29.768024, 41.989994, 57.020500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479963, 42.665131, 57.062710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.156021, 42.444813, 57.143467>,  <28.961657, 42.312622, 57.191921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.156021, 42.444813, 57.143467>,  <29.479963, 42.665131, 57.062710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156021, 42.444813, 57.143467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424467, 0.787743, 0.446417,
		-0.404925, 0.275835, -0.871751,
		-0.809854, -0.550795, 0.201894,
		28.913065, 42.279575, 57.204037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737589, 43.019749, 56.815331>,  <29.479963, 42.665131, 57.062710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737589, 43.019749, 56.815331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.717461, 42.771580, 57.128391>,  <28.705383, 42.622677, 57.316227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.717461, 42.771580, 57.128391>,  <28.737589, 43.019749, 56.815331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717461, 42.771580, 57.128391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154205, 0.779075, 0.607670,
		-0.986757, -0.090110, -0.134876,
		-0.050322, -0.620421, 0.782653,
		28.702364, 42.585453, 57.363186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358215, 43.422791, 57.302132>,  <28.737589, 43.019749, 56.815331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358215, 43.422791, 57.302132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.485950, 43.125393, 57.537163>,  <28.562592, 42.946957, 57.678181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.485950, 43.125393, 57.537163>,  <28.358215, 43.422791, 57.302132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485950, 43.125393, 57.537163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063122, 0.601974, 0.796017,
		-0.945536, -0.291288, 0.145303,
		0.319339, -0.743491, 0.587575,
		28.581753, 42.902344, 57.713436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908184, 43.508961, 57.914726>,  <28.358215, 43.422791, 57.302132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908184, 43.508961, 57.914726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.241575, 43.325382, 58.037811>,  <28.441610, 43.215237, 58.111664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.241575, 43.325382, 58.037811>,  <27.908184, 43.508961, 57.914726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241575, 43.325382, 58.037811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102191, 0.419255, 0.902099,
		-0.543024, -0.783323, 0.302539,
		0.833476, -0.458944, 0.307714,
		28.491617, 43.187698, 58.130127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741175, 43.470070, 58.599030>,  <27.908184, 43.508961, 57.914726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741175, 43.470070, 58.599030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.129721, 43.377495, 58.620506>,  <28.362848, 43.321949, 58.633392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.129721, 43.377495, 58.620506>,  <27.741175, 43.470070, 58.599030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129721, 43.377495, 58.620506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024987, 0.324248, 0.945642,
		-0.236266, -0.917224, 0.320747,
		0.971367, -0.231437, 0.053690,
		28.421131, 43.308064, 58.636612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753544, 42.923500, 59.140903>,  <27.741175, 43.470070, 58.599030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753544, 42.923500, 59.140903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.094311, 43.128063, 59.095829>,  <28.298771, 43.250801, 59.068787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.094311, 43.128063, 59.095829>,  <27.753544, 42.923500, 59.140903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094311, 43.128063, 59.095829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028089, 0.170245, 0.985001,
		0.522921, -0.842306, 0.130671,
		0.851918, 0.511407, -0.112684,
		28.349886, 43.281487, 59.062023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230633, 42.598015, 59.681324>,  <27.753544, 42.923500, 59.140903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230633, 42.598015, 59.681324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.384523, 42.951035, 59.573181>,  <28.476858, 43.162846, 59.508297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.384523, 42.951035, 59.573181>,  <28.230633, 42.598015, 59.681324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384523, 42.951035, 59.573181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138880, 0.234218, 0.962213,
		0.912523, -0.407736, -0.032458,
		0.384727, 0.882549, -0.270356,
		28.499941, 43.215797, 59.492073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731371, 42.664303, 60.134159>,  <28.230633, 42.598015, 59.681324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731371, 42.664303, 60.134159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.613873, 43.031731, 60.028374>,  <28.543373, 43.252190, 59.964901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.613873, 43.031731, 60.028374>,  <28.731371, 42.664303, 60.134159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613873, 43.031731, 60.028374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008418, 0.279144, 0.960212,
		0.955847, 0.279831, -0.089730,
		-0.293745, 0.918571, -0.264463,
		28.525749, 43.307301, 59.949036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091579, 42.325523, 60.427784>,  <28.731371, 42.664303, 60.134159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091579, 42.325523, 60.427784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.941343, 42.114017, 60.732239>,  <27.851202, 41.987114, 60.914913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.941343, 42.114017, 60.732239>,  <28.091579, 42.325523, 60.427784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941343, 42.114017, 60.732239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133921, -0.843615, -0.519980,
		0.917059, -0.093367, 0.387667,
		-0.375591, -0.528769, 0.761140,
		27.828667, 41.955387, 60.960583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589588, 41.930065, 60.662117>,  <28.091579, 42.325523, 60.427784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589588, 41.930065, 60.662117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.257668, 41.747684, 60.790825>,  <28.058516, 41.638256, 60.868050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.257668, 41.747684, 60.790825>,  <28.589588, 41.930065, 60.662117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257668, 41.747684, 60.790825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270977, -0.833259, -0.481923,
		0.487854, -0.312708, 0.814992,
		-0.829801, -0.455952, 0.321772,
		28.008728, 41.610897, 60.887356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828075, 41.265949, 60.925282>,  <28.589588, 41.930065, 60.662117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828075, 41.265949, 60.925282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.435219, 41.225147, 60.862041>,  <28.199505, 41.200665, 60.824097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.435219, 41.225147, 60.862041>,  <28.828075, 41.265949, 60.925282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435219, 41.225147, 60.862041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147762, -0.938358, -0.312490,
		-0.116480, -0.330270, 0.936672,
		-0.982140, -0.102005, -0.158101,
		28.140577, 41.194546, 60.814610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846647, 40.537685, 61.001259>,  <28.828075, 41.265949, 60.925282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846647, 40.537685, 61.001259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.512211, 40.653446, 60.814838>,  <28.311550, 40.722900, 60.702988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.512211, 40.653446, 60.814838>,  <28.846647, 40.537685, 61.001259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512211, 40.653446, 60.814838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039552, -0.879126, -0.474946,
		-0.547164, -0.378665, 0.746475,
		-0.836090, 0.289398, -0.466049,
		28.261383, 40.740265, 60.675022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307280, 39.975330, 61.085808>,  <28.846647, 40.537685, 61.001259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307280, 39.975330, 61.085808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.221004, 40.193443, 60.761795>,  <28.169239, 40.324310, 60.567387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.221004, 40.193443, 60.761795>,  <28.307280, 39.975330, 61.085808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221004, 40.193443, 60.761795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040889, -0.823782, -0.565429,
		-0.975606, -0.155077, 0.155382,
		-0.215686, 0.545283, -0.810028,
		28.156300, 40.357029, 60.518787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814077, 39.562065, 60.695087>,  <28.307280, 39.975330, 61.085808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814077, 39.562065, 60.695087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.962650, 39.827538, 60.435375>,  <28.051794, 39.986820, 60.279549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.962650, 39.827538, 60.435375>,  <27.814077, 39.562065, 60.695087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962650, 39.827538, 60.435375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094609, -0.722720, -0.684635,
		-0.923628, 0.192867, -0.331231,
		0.371430, 0.663685, -0.649278,
		28.074080, 40.026642, 60.240593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501978, 39.397263, 60.153069>,  <27.814077, 39.562065, 60.695087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501978, 39.397263, 60.153069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.801842, 39.618114, 60.007103>,  <27.981760, 39.750626, 59.919521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.801842, 39.618114, 60.007103>,  <27.501978, 39.397263, 60.153069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801842, 39.618114, 60.007103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079904, -0.622853, -0.778247,
		-0.656984, 0.554261, -0.511045,
		0.749658, 0.552131, -0.364917,
		28.026739, 39.783752, 59.897629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387899, 39.356930, 59.359554>,  <27.501978, 39.397263, 60.153069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387899, 39.356930, 59.359554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.766018, 39.453369, 59.447456>,  <27.992889, 39.511230, 59.500198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.766018, 39.453369, 59.447456>,  <27.387899, 39.356930, 59.359554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766018, 39.453369, 59.447456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320915, -0.566332, -0.759132,
		-0.058570, 0.788125, -0.612722,
		0.945295, 0.241094, 0.219751,
		28.049606, 39.525696, 59.513382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536613, 39.552387, 58.719528>,  <27.387899, 39.356930, 59.359554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536613, 39.552387, 58.719528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.870567, 39.470795, 58.924019>,  <28.070940, 39.421841, 59.046715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.870567, 39.470795, 58.924019>,  <27.536613, 39.552387, 58.719528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870567, 39.470795, 58.924019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344646, -0.530456, -0.774490,
		0.429166, 0.822805, -0.372570,
		0.834886, -0.203981, 0.511230,
		28.121033, 39.409599, 59.077389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092710, 39.656902, 58.262146>,  <27.536613, 39.552387, 58.719528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092710, 39.656902, 58.262146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.214914, 39.405766, 58.548496>,  <28.288237, 39.255081, 58.720306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.214914, 39.405766, 58.548496>,  <28.092710, 39.656902, 58.262146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214914, 39.405766, 58.548496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500168, -0.533930, -0.681726,
		0.810245, 0.566331, 0.150907,
		0.305509, -0.627844, 0.715874,
		28.306566, 39.217411, 58.763260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774578, 39.486248, 58.023960>,  <28.092710, 39.656902, 58.262146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774578, 39.486248, 58.023960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.693102, 39.216934, 58.308270>,  <28.644217, 39.055347, 58.478855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.693102, 39.216934, 58.308270>,  <28.774578, 39.486248, 58.023960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693102, 39.216934, 58.308270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368888, -0.725268, -0.581299,
		0.906880, 0.143789, 0.396098,
		-0.203693, -0.673284, 0.710773,
		28.631994, 39.014950, 58.521500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399199, 38.994064, 58.240383>,  <28.774578, 39.486248, 58.023960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399199, 38.994064, 58.240383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.086943, 38.763081, 58.336002>,  <28.899590, 38.624493, 58.393375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.086943, 38.763081, 58.336002>,  <29.399199, 38.994064, 58.240383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086943, 38.763081, 58.336002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461598, -0.790586, -0.402369,
		0.421339, -0.203761, 0.883717,
		-0.780641, -0.577455, 0.239049,
		28.852751, 38.589844, 58.407719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785252, 38.291420, 58.415497>,  <29.399199, 38.994064, 58.240383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785252, 38.291420, 58.415497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.393991, 38.216476, 58.379459>,  <29.159235, 38.171509, 58.357838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.393991, 38.216476, 58.379459>,  <29.785252, 38.291420, 58.415497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393991, 38.216476, 58.379459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207736, -0.898020, -0.387822,
		-0.008245, -0.398065, 0.917320,
		-0.978150, -0.187363, -0.090097,
		29.100546, 38.160267, 58.352432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680687, 37.503376, 58.634956>,  <29.785252, 38.291420, 58.415497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680687, 37.503376, 58.634956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.358999, 37.612061, 58.423523>,  <29.165987, 37.677273, 58.296661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.358999, 37.612061, 58.423523>,  <29.680687, 37.503376, 58.634956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358999, 37.612061, 58.423523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079724, -0.832020, -0.548988,
		-0.588963, -0.483647, 0.647463,
		-0.804219, 0.271715, -0.528587,
		29.117733, 37.693577, 58.264946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859554, 36.786270, 58.977253>,  <29.680687, 37.503376, 58.634956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859554, 36.786270, 58.977253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.254726, 36.797428, 59.038200>,  <30.491829, 36.804123, 59.074768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.254726, 36.797428, 59.038200>,  <29.859554, 36.786270, 58.977253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254726, 36.797428, 59.038200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154240, 0.267851, 0.951034,
		-0.014284, -0.963057, 0.268921,
		0.987930, 0.027894, 0.152368,
		30.551105, 36.805798, 59.083912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927605, 36.585716, 59.732471>,  <29.859554, 36.786270, 58.977253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927605, 36.585716, 59.732471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.273476, 36.743786, 59.608425>,  <30.480999, 36.838627, 59.533997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.273476, 36.743786, 59.608425>,  <29.927605, 36.585716, 59.732471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273476, 36.743786, 59.608425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032775, 0.571661, 0.819835,
		0.501255, -0.719058, 0.481351,
		0.864679, 0.395170, -0.310116,
		30.532879, 36.862339, 59.515388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371178, 36.691650, 60.389656>,  <29.927605, 36.585716, 59.732471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371178, 36.691650, 60.389656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.544933, 36.952538, 60.141167>,  <30.649187, 37.109070, 59.992073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.544933, 36.952538, 60.141167>,  <30.371178, 36.691650, 60.389656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544933, 36.952538, 60.141167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160612, 0.734730, 0.659072,
		0.886291, -0.186517, 0.423911,
		0.434388, 0.652214, -0.621228,
		30.675251, 37.148201, 59.954800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884525, 37.107193, 60.816475>,  <30.371178, 36.691650, 60.389656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884525, 37.107193, 60.816475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.804129, 37.309391, 60.480839>,  <30.755892, 37.430710, 60.279457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.804129, 37.309391, 60.480839>,  <30.884525, 37.107193, 60.816475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804129, 37.309391, 60.480839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045058, 0.860438, 0.507559,
		0.978556, 0.064207, -0.195716,
		-0.200991, 0.505494, -0.839094,
		30.743832, 37.461040, 60.229111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357363, 37.645878, 60.842968>,  <30.884525, 37.107193, 60.816475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357363, 37.645878, 60.842968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.080856, 37.802776, 60.600220>,  <30.914953, 37.896915, 60.454571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.080856, 37.802776, 60.600220>,  <31.357363, 37.645878, 60.842968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080856, 37.802776, 60.600220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051349, 0.864384, 0.500203,
		0.720775, 0.314610, -0.617660,
		-0.691264, 0.392251, -0.606872,
		30.873478, 37.920452, 60.418159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555931, 38.398514, 60.731434>,  <31.357363, 37.645878, 60.842968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555931, 38.398514, 60.731434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.175369, 38.375519, 60.610424>,  <30.947031, 38.361721, 60.537819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.175369, 38.375519, 60.610424>,  <31.555931, 38.398514, 60.731434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175369, 38.375519, 60.610424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207759, 0.844974, 0.492804,
		0.227294, 0.531709, -0.815857,
		-0.951406, -0.057490, -0.302525,
		30.889948, 38.358273, 60.519665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445950, 39.140877, 60.482353>,  <31.555931, 38.398514, 60.731434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445950, 39.140877, 60.482353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.111486, 38.953403, 60.596321>,  <30.910809, 38.840919, 60.664703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.111486, 38.953403, 60.596321>,  <31.445950, 39.140877, 60.482353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111486, 38.953403, 60.596321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292392, 0.820382, 0.491406,
		-0.464057, 0.327583, -0.823007,
		-0.836156, -0.468681, 0.284922,
		30.860640, 38.812798, 60.681797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831188, 39.824688, 60.147282>,  <31.445950, 39.140877, 60.482353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831188, 39.824688, 60.147282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.151894, 39.790565, 60.383888>,  <32.344318, 39.770092, 60.525852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.151894, 39.790565, 60.383888>,  <31.831188, 39.824688, 60.147282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151894, 39.790565, 60.383888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337261, -0.752515, -0.565664,
		0.493385, 0.653026, -0.574568,
		0.801764, -0.085311, 0.591521,
		32.392422, 39.764973, 60.561344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523136, 40.000832, 59.767139>,  <31.831188, 39.824688, 60.147282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523136, 40.000832, 59.767139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.611629, 39.763874, 60.077007>,  <32.664726, 39.621700, 60.262928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.611629, 39.763874, 60.077007>,  <32.523136, 40.000832, 59.767139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611629, 39.763874, 60.077007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573743, -0.563277, -0.594591,
		0.788591, 0.576007, 0.215269,
		0.221233, -0.592398, 0.774674,
		32.677998, 39.586155, 60.309410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319908, 39.833027, 59.707283>,  <32.523136, 40.000832, 59.767139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319908, 39.833027, 59.707283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.171158, 39.553688, 59.951912>,  <33.081909, 39.386086, 60.098690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.171158, 39.553688, 59.951912>,  <33.319908, 39.833027, 59.707283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171158, 39.553688, 59.951912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531811, -0.700264, -0.476243,
		0.760846, 0.148140, 0.631797,
		-0.371874, -0.698344, 0.611575,
		33.059597, 39.344185, 60.135384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885441, 39.523438, 59.922569>,  <33.319908, 39.833027, 59.707283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885441, 39.523438, 59.922569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.578873, 39.270576, 59.968140>,  <33.394932, 39.118858, 59.995483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.578873, 39.270576, 59.968140>,  <33.885441, 39.523438, 59.922569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578873, 39.270576, 59.968140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509185, -0.706039, -0.492179,
		0.391567, -0.319209, 0.863007,
		-0.766424, -0.632151, 0.113925,
		33.348946, 39.080933, 60.002316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106556, 38.848392, 60.169376>,  <33.885441, 39.523438, 59.922569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106556, 38.848392, 60.169376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.754662, 38.766159, 59.997890>,  <33.543526, 38.716820, 59.895000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.754662, 38.766159, 59.997890>,  <34.106556, 38.848392, 60.169376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754662, 38.766159, 59.997890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425680, -0.742226, -0.517588,
		-0.211796, -0.637838, 0.740477,
		-0.879739, -0.205583, -0.428715,
		33.490742, 38.704483, 59.869274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050854, 38.203739, 60.116341>,  <34.106556, 38.848392, 60.169376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050854, 38.203739, 60.116341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751087, 38.286652, 59.864815>,  <33.571228, 38.336399, 59.713898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751087, 38.286652, 59.864815>,  <34.050854, 38.203739, 60.116341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751087, 38.286652, 59.864815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312242, -0.726846, -0.611719,
		-0.583847, -0.654776, 0.479991,
		-0.749418, 0.207277, -0.628815,
		33.526260, 38.348835, 59.676170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925930, 37.530979, 59.904499>,  <34.050854, 38.203739, 60.116341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925930, 37.530979, 59.904499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.737648, 37.777191, 59.651657>,  <33.624680, 37.924919, 59.499954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.737648, 37.777191, 59.651657>,  <33.925930, 37.530979, 59.904499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737648, 37.777191, 59.651657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387339, -0.499533, -0.774878,
		-0.792720, -0.609577, -0.003288,
		-0.470705, 0.615535, -0.632103,
		33.596436, 37.961853, 59.462025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.000526, 43.843761, 59.664482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615515, 43.781410, 59.575718>,  <31.384508, 43.743999, 59.522461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615515, 43.781410, 59.575718>,  <32.000526, 43.843761, 59.664482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615515, 43.781410, 59.575718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247554, -0.170975, -0.953669,
		0.110711, -0.972867, 0.203156,
		-0.962528, -0.155874, -0.221909,
		31.326756, 43.734650, 59.509144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935339, 43.198151, 59.388870>,  <32.000526, 43.843761, 59.664482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935339, 43.198151, 59.388870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593164, 43.373714, 59.278904>,  <31.387859, 43.479053, 59.212925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593164, 43.373714, 59.278904>,  <31.935339, 43.198151, 59.388870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593164, 43.373714, 59.278904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122499, -0.344295, -0.930835,
		-0.503209, -0.829950, 0.240757,
		-0.855438, 0.438913, -0.274920,
		31.336533, 43.505386, 59.196426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523094, 42.711029, 58.923420>,  <31.935339, 43.198151, 59.388870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523094, 42.711029, 58.923420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340485, 43.060036, 58.853794>,  <31.230919, 43.269440, 58.812019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340485, 43.060036, 58.853794>,  <31.523094, 42.711029, 58.923420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340485, 43.060036, 58.853794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041440, -0.216284, -0.975451,
		-0.888745, -0.438105, 0.134896,
		-0.456526, 0.872517, -0.174066,
		31.203527, 43.321793, 58.801575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041719, 42.468090, 58.511189>,  <31.523094, 42.711029, 58.923420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041719, 42.468090, 58.511189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085751, 42.860916, 58.449955>,  <31.112169, 43.096611, 58.413216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085751, 42.860916, 58.449955>,  <31.041719, 42.468090, 58.511189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085751, 42.860916, 58.449955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043943, -0.158680, -0.986352,
		-0.992951, 0.101850, -0.060623,
		0.110080, 0.982063, -0.153086,
		31.118774, 43.155537, 58.404030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662304, 42.641926, 57.974392>,  <31.041719, 42.468090, 58.511189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662304, 42.641926, 57.974392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938940, 42.930466, 57.989178>,  <31.104921, 43.103588, 57.998047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938940, 42.930466, 57.989178>,  <30.662304, 42.641926, 57.974392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938940, 42.930466, 57.989178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140098, -0.083765, -0.986588,
		-0.708575, 0.687491, -0.158990,
		0.691588, 0.721346, 0.036962,
		31.146416, 43.146870, 58.000267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438639, 43.135376, 57.424042>,  <30.662304, 42.641926, 57.974392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438639, 43.135376, 57.424042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826447, 43.189739, 57.505585>,  <31.059132, 43.222359, 57.554512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826447, 43.189739, 57.505585>,  <30.438639, 43.135376, 57.424042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826447, 43.189739, 57.505585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230534, -0.224243, -0.946873,
		-0.082975, 0.965010, -0.248740,
		0.969520, 0.135909, 0.203861,
		31.117302, 43.230511, 57.566742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632328, 43.607758, 56.955746>,  <30.438639, 43.135376, 57.424042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632328, 43.607758, 56.955746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934679, 43.373562, 57.072948>,  <31.116089, 43.233044, 57.143272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934679, 43.373562, 57.072948>,  <30.632328, 43.607758, 56.955746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934679, 43.373562, 57.072948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247961, -0.158194, -0.955767,
		0.605940, 0.795098, 0.025602,
		0.755878, -0.585486, 0.293009,
		31.161442, 43.197918, 57.160851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083527, 43.698448, 56.407078>,  <30.632328, 43.607758, 56.955746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083527, 43.698448, 56.407078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257111, 43.395813, 56.602730>,  <31.361261, 43.214230, 56.720119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257111, 43.395813, 56.602730>,  <31.083527, 43.698448, 56.407078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257111, 43.395813, 56.602730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566333, -0.193152, -0.801224,
		0.700676, 0.624708, 0.344663,
		0.433959, -0.756592, 0.489130,
		31.387299, 43.168835, 56.749470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833027, 43.763699, 56.278801>,  <31.083527, 43.698448, 56.407078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833027, 43.763699, 56.278801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771818, 43.385368, 56.393341>,  <31.735092, 43.158371, 56.462063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771818, 43.385368, 56.393341>,  <31.833027, 43.763699, 56.278801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771818, 43.385368, 56.393341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457345, -0.324641, -0.827915,
		0.876025, 0.004269, 0.482247,
		-0.153022, -0.945828, 0.286346,
		31.725912, 43.101620, 56.479244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453648, 43.415962, 56.176071>,  <31.833027, 43.763699, 56.278801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453648, 43.415962, 56.176071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183151, 43.121696, 56.191570>,  <32.020855, 42.945137, 56.200871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183151, 43.121696, 56.191570>,  <32.453648, 43.415962, 56.176071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183151, 43.121696, 56.191570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406381, -0.416392, -0.813309,
		0.614457, -0.534243, 0.580540,
		-0.676237, -0.735664, 0.038749,
		31.980280, 42.900997, 56.203194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883263, 42.766846, 55.919167>,  <32.453648, 43.415962, 56.176071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883263, 42.766846, 55.919167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494987, 42.675888, 55.888031>,  <32.262024, 42.621315, 55.869350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494987, 42.675888, 55.888031>,  <32.883263, 42.766846, 55.919167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494987, 42.675888, 55.888031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204500, -0.611261, -0.764552,
		0.126275, -0.758059, 0.639845,
		-0.970687, -0.227392, -0.077836,
		32.203781, 42.607670, 55.864681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939098, 42.128418, 55.806858>,  <32.883263, 42.766846, 55.919167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939098, 42.128418, 55.806858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576279, 42.229160, 55.671898>,  <32.358589, 42.289604, 55.590923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576279, 42.229160, 55.671898>,  <32.939098, 42.128418, 55.806858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576279, 42.229160, 55.671898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092147, -0.663181, -0.742765,
		-0.410823, -0.704812, 0.578328,
		-0.907046, 0.251854, -0.337397,
		32.304165, 42.304718, 55.570679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949951, 41.502045, 56.225586>,  <32.939098, 42.128418, 55.806858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949951, 41.502045, 56.225586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219589, 41.271130, 56.409908>,  <33.381371, 41.132580, 56.520504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219589, 41.271130, 56.409908>,  <32.949951, 41.502045, 56.225586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219589, 41.271130, 56.409908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180269, 0.476418, 0.860540,
		-0.716313, -0.663152, 0.217082,
		0.674090, -0.577283, 0.460810,
		33.421818, 41.097946, 56.548153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599274, 41.259373, 56.764236>,  <32.949951, 41.502045, 56.225586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599274, 41.259373, 56.764236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981064, 41.192085, 56.862774>,  <33.210136, 41.151714, 56.921898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981064, 41.192085, 56.862774>,  <32.599274, 41.259373, 56.764236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981064, 41.192085, 56.862774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168401, 0.377788, 0.910449,
		-0.246219, -0.910483, 0.332261,
		0.954472, -0.168216, 0.246345,
		33.267406, 41.141621, 56.936676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602196, 40.924381, 57.367466>,  <32.599274, 41.259373, 56.764236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602196, 40.924381, 57.367466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976074, 41.066101, 57.356098>,  <33.200401, 41.151134, 57.349277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976074, 41.066101, 57.356098>,  <32.602196, 40.924381, 57.367466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976074, 41.066101, 57.356098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070124, 0.262201, 0.962462,
		0.348452, -0.897620, 0.269924,
		0.934700, 0.354301, -0.028420,
		33.256485, 41.172390, 57.347572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891754, 40.637375, 58.005241>,  <32.602196, 40.924381, 57.367466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891754, 40.637375, 58.005241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145706, 40.926548, 57.896202>,  <33.298077, 41.100052, 57.830780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145706, 40.926548, 57.896202>,  <32.891754, 40.637375, 58.005241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145706, 40.926548, 57.896202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086096, 0.284425, 0.954825,
		0.767802, -0.629665, 0.118334,
		0.634876, 0.722928, -0.272594,
		33.336170, 41.143425, 57.814423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417675, 40.574993, 58.422428>,  <32.891754, 40.637375, 58.005241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417675, 40.574993, 58.422428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442120, 40.958035, 58.309818>,  <33.456787, 41.187859, 58.242252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442120, 40.958035, 58.309818>,  <33.417675, 40.574993, 58.422428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442120, 40.958035, 58.309818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006131, 0.282404, 0.959276,
		0.998112, -0.056897, 0.023129,
		0.061111, 0.957607, -0.281522,
		33.460453, 41.245316, 58.225361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989029, 40.880119, 58.739372>,  <33.417675, 40.574993, 58.422428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989029, 40.880119, 58.739372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784214, 41.212776, 58.653412>,  <33.661324, 41.412373, 58.601833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784214, 41.212776, 58.653412>,  <33.989029, 40.880119, 58.739372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784214, 41.212776, 58.653412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125004, 0.319671, 0.939247,
		0.849819, 0.454064, -0.267642,
		-0.512036, 0.831646, -0.214903,
		33.630604, 41.462269, 58.588940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383232, 41.476192, 59.120594>,  <33.989029, 40.880119, 58.739372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383232, 41.476192, 59.120594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021133, 41.624397, 59.037407>,  <33.803875, 41.713322, 58.987495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021133, 41.624397, 59.037407>,  <34.383232, 41.476192, 59.120594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021133, 41.624397, 59.037407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006060, 0.500666, 0.865619,
		0.424846, 0.782338, -0.455471,
		-0.905245, 0.370515, -0.207965,
		33.749561, 41.735554, 58.975018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402969, 42.267330, 59.157303>,  <34.383232, 41.476192, 59.120594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402969, 42.267330, 59.157303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038528, 42.112934, 59.215134>,  <33.819862, 42.020298, 59.249832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038528, 42.112934, 59.215134>,  <34.402969, 42.267330, 59.157303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038528, 42.112934, 59.215134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052336, 0.456257, 0.888308,
		-0.408842, 0.801773, -0.435898,
		-0.911103, -0.385991, 0.144575,
		33.765198, 41.997135, 59.258507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159180, 42.872696, 59.467937>,  <34.402969, 42.267330, 59.157303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159180, 42.872696, 59.467937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896149, 42.589897, 59.572048>,  <33.738331, 42.420219, 59.634514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896149, 42.589897, 59.572048>,  <34.159180, 42.872696, 59.467937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896149, 42.589897, 59.572048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202455, 0.498602, 0.842857,
		-0.725672, 0.501552, -0.471006,
		-0.657581, -0.706995, 0.260280,
		33.698875, 42.377800, 59.650131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388107, 43.195549, 59.526882>,  <34.159180, 42.872696, 59.467937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388107, 43.195549, 59.526882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415470, 42.863529, 59.748276>,  <33.431889, 42.664318, 59.881111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415470, 42.863529, 59.748276>,  <33.388107, 43.195549, 59.526882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415470, 42.863529, 59.748276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013886, 0.553939, 0.832441,
		-0.997561, -0.064632, 0.026369,
		0.068409, -0.830045, 0.553485,
		33.435993, 42.614517, 59.914322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139881, 43.405430, 60.099560>,  <33.388107, 43.195549, 59.526882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139881, 43.405430, 60.099560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301041, 43.056843, 60.211430>,  <33.397736, 42.847691, 60.278553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301041, 43.056843, 60.211430>,  <33.139881, 43.405430, 60.099560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301041, 43.056843, 60.211430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145405, 0.362645, 0.920514,
		-0.903620, -0.330208, 0.272825,
		0.402899, -0.871466, 0.279679,
		33.421909, 42.795403, 60.295334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733498, 43.157116, 60.757690>,  <33.139881, 43.405430, 60.099560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733498, 43.157116, 60.757690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085724, 42.967739, 60.749111>,  <33.297058, 42.854115, 60.743961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085724, 42.967739, 60.749111>,  <32.733498, 43.157116, 60.757690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085724, 42.967739, 60.749111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144221, 0.224577, 0.963725,
		-0.451449, -0.851716, 0.266034,
		0.880565, -0.473440, -0.021450,
		33.349892, 42.825706, 60.742676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690529, 42.879238, 61.346245>,  <32.733498, 43.157116, 60.757690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690529, 42.879238, 61.346245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078720, 42.890942, 61.250477>,  <33.311634, 42.897964, 61.193016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078720, 42.890942, 61.250477>,  <32.690529, 42.879238, 61.346245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078720, 42.890942, 61.250477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216214, 0.334420, 0.917287,
		0.106908, -0.941970, 0.318219,
		0.970475, 0.029262, -0.239419,
		33.369862, 42.899719, 61.178650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120628, 42.573997, 61.919975>,  <32.690529, 42.879238, 61.346245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120628, 42.573997, 61.919975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384003, 42.792480, 61.712852>,  <33.542027, 42.923569, 61.588581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384003, 42.792480, 61.712852>,  <33.120628, 42.573997, 61.919975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384003, 42.792480, 61.712852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294247, 0.446412, 0.845065,
		0.692735, -0.708782, 0.133213,
		0.658434, 0.546208, -0.517803,
		33.581532, 42.956345, 61.557510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251999, 41.867924, 62.031715>,  <33.120628, 42.573997, 61.919975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251999, 41.867924, 62.031715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885960, 41.853966, 62.192402>,  <32.666336, 41.845592, 62.288815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885960, 41.853966, 62.192402>,  <33.251999, 41.867924, 62.031715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885960, 41.853966, 62.192402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251652, -0.728994, -0.636584,
		0.315063, -0.683630, 0.658320,
		-0.915100, -0.034897, 0.401715,
		32.611431, 41.843498, 62.312916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061619, 41.217464, 62.173168>,  <33.251999, 41.867924, 62.031715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061619, 41.217464, 62.173168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703064, 41.394375, 62.161285>,  <32.487930, 41.500519, 62.154156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703064, 41.394375, 62.161285>,  <33.061619, 41.217464, 62.173168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703064, 41.394375, 62.161285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335723, -0.721138, -0.606012,
		-0.289445, -0.533249, 0.794901,
		-0.896388, 0.442273, -0.029705,
		32.434147, 41.527058, 62.152374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669048, 40.760624, 62.499199>,  <33.061619, 41.217464, 62.173168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669048, 40.760624, 62.499199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428902, 40.995541, 62.282070>,  <32.284813, 41.136490, 62.151794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428902, 40.995541, 62.282070>,  <32.669048, 40.760624, 62.499199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428902, 40.995541, 62.282070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439280, -0.809364, -0.389823,
		-0.668278, 0.004413, 0.743899,
		-0.600365, 0.587290, -0.542819,
		32.248791, 41.171726, 62.119225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105267, 40.527569, 62.591663>,  <32.669048, 40.760624, 62.499199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105267, 40.527569, 62.591663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129841, 40.705353, 62.234188>,  <32.144585, 40.812023, 62.019703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129841, 40.705353, 62.234188>,  <32.105267, 40.527569, 62.591663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129841, 40.705353, 62.234188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175967, -0.876531, -0.448027,
		-0.982477, 0.184784, 0.024361,
		0.061435, 0.444463, -0.893688,
		32.148270, 40.838692, 61.966084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635674, 40.165825, 62.106831>,  <32.105267, 40.527569, 62.591663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635674, 40.165825, 62.106831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864676, 40.372810, 61.852440>,  <32.002075, 40.497002, 61.699806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864676, 40.372810, 61.852440>,  <31.635674, 40.165825, 62.106831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864676, 40.372810, 61.852440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001116, -0.775182, -0.631736,
		-0.819901, 0.362382, -0.443218,
		0.572504, 0.517467, -0.635977,
		32.036427, 40.528049, 61.661648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455950, 39.994793, 61.464699>,  <31.635674, 40.165825, 62.106831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455950, 39.994793, 61.464699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809341, 40.155487, 61.368305>,  <32.021378, 40.251904, 61.310471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809341, 40.155487, 61.368305>,  <31.455950, 39.994793, 61.464699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809341, 40.155487, 61.368305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180478, -0.766575, -0.616271,
		-0.432309, 0.500971, -0.749758,
		0.883480, 0.401734, -0.240983,
		32.074387, 40.276009, 61.296009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492130, 39.963676, 60.771770>,  <31.455950, 39.994793, 61.464699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492130, 39.963676, 60.771770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873497, 39.982357, 60.890980>,  <32.102318, 39.993565, 60.962505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873497, 39.982357, 60.890980>,  <31.492130, 39.963676, 60.771770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873497, 39.982357, 60.890980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237085, -0.726872, -0.644552,
		0.186523, 0.685183, -0.704084,
		0.953415, 0.046704, 0.298025,
		32.159523, 39.996368, 60.980389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831009, 39.643314, 60.424503>,  <31.492130, 39.963676, 60.771770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831009, 39.643314, 60.424503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693480, 39.356503, 60.667042>,  <30.610962, 39.184414, 60.812565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693480, 39.356503, 60.667042>,  <30.831009, 39.643314, 60.424503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693480, 39.356503, 60.667042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434199, 0.693929, 0.574398,
		-0.832620, -0.065782, -0.549924,
		-0.343823, -0.717032, 0.606342,
		30.590332, 39.141392, 60.848946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220127, 39.830776, 60.539276>,  <30.831009, 39.643314, 60.424503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220127, 39.830776, 60.539276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250458, 39.569901, 60.840981>,  <30.268656, 39.413376, 61.022003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250458, 39.569901, 60.840981>,  <30.220127, 39.830776, 60.539276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250458, 39.569901, 60.840981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363107, 0.686437, 0.630046,
		-0.928657, -0.321650, -0.184763,
		0.075826, -0.652185, 0.754258,
		30.273205, 39.374245, 61.067257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635958, 39.767963, 60.868324>,  <30.220127, 39.830776, 60.539276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635958, 39.767963, 60.868324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865829, 39.636459, 61.168102>,  <30.003752, 39.557556, 61.347969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865829, 39.636459, 61.168102>,  <29.635958, 39.767963, 60.868324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865829, 39.636459, 61.168102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318940, 0.753385, 0.575055,
		-0.753672, -0.569498, 0.328100,
		0.574678, -0.328759, 0.749441,
		30.038233, 39.537830, 61.392933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188101, 39.668514, 61.487747>,  <29.635958, 39.767963, 60.868324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188101, 39.668514, 61.487747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560753, 39.726097, 61.621220>,  <29.784344, 39.760647, 61.701302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560753, 39.726097, 61.621220>,  <29.188101, 39.668514, 61.487747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560753, 39.726097, 61.621220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339119, 0.674422, 0.655861,
		-0.130629, -0.724177, 0.677129,
		0.931630, 0.143953, 0.333681,
		29.840242, 39.769283, 61.721325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030338, 39.759678, 62.133434>,  <29.188101, 39.668514, 61.487747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030338, 39.759678, 62.133434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405678, 39.894756, 62.103878>,  <29.630882, 39.975803, 62.086143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405678, 39.894756, 62.103878>,  <29.030338, 39.759678, 62.133434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405678, 39.894756, 62.103878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262756, 0.835648, 0.482339,
		0.224634, -0.433187, 0.872863,
		0.938349, 0.337699, -0.073893,
		29.687183, 39.996067, 62.081711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148708, 40.099697, 62.786926>,  <29.030338, 39.759678, 62.133434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148708, 40.099697, 62.786926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428915, 40.260731, 62.551231>,  <29.597038, 40.357353, 62.409813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428915, 40.260731, 62.551231>,  <29.148708, 40.099697, 62.786926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428915, 40.260731, 62.551231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121383, 0.880870, 0.457531,
		0.703239, -0.248984, 0.665929,
		0.700515, 0.402586, -0.589240,
		29.639069, 40.381508, 62.374458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583023, 40.437202, 63.157131>,  <29.148708, 40.099697, 62.786926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583023, 40.437202, 63.157131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632633, 40.628368, 62.809288>,  <29.662399, 40.743069, 62.600582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632633, 40.628368, 62.809288>,  <29.583023, 40.437202, 63.157131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632633, 40.628368, 62.809288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123440, 0.876995, 0.464373,
		0.984571, 0.049750, 0.167764,
		0.124026, 0.477917, -0.869605,
		29.669842, 40.771744, 62.548405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089981, 41.078976, 63.345665>,  <29.583023, 40.437202, 63.157131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089981, 41.078976, 63.345665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912355, 41.146080, 62.993607>,  <29.805780, 41.186344, 62.782372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912355, 41.146080, 62.993607>,  <30.089981, 41.078976, 63.345665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912355, 41.146080, 62.993607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109250, 0.964847, 0.239029,
		0.889310, 0.202300, -0.410125,
		-0.444063, 0.167764, -0.880149,
		29.779137, 41.196411, 62.729561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417799, 41.647690, 63.092045>,  <30.089981, 41.078976, 63.345665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417799, 41.647690, 63.092045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067709, 41.646133, 62.898567>,  <29.857655, 41.645199, 62.782478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067709, 41.646133, 62.898567>,  <30.417799, 41.647690, 63.092045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067709, 41.646133, 62.898567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102925, 0.978567, 0.178361,
		0.472637, 0.205891, -0.856868,
		-0.875226, -0.003893, -0.483699,
		29.805141, 41.644966, 62.753456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.782612, 34.445156, 48.349613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082638, 34.703693, 48.293552>,  <37.262653, 34.858818, 48.259914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082638, 34.703693, 48.293552>,  <36.782612, 34.445156, 48.349613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082638, 34.703693, 48.293552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634234, 0.763031, 0.124618,
		0.187487, -0.004581, 0.982256,
		0.750064, 0.646345, -0.140153,
		37.307655, 34.897598, 48.251507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809700, 34.835373, 48.930462>,  <36.782612, 34.445156, 48.349613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809700, 34.835373, 48.930462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.976509, 35.045147, 48.633530>,  <37.076595, 35.171013, 48.455368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.976509, 35.045147, 48.633530>,  <36.809700, 34.835373, 48.930462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976509, 35.045147, 48.633530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566327, 0.788744, 0.239075,
		0.710890, 0.320704, 0.625927,
		0.417023, 0.524436, -0.742333,
		37.101616, 35.202477, 48.410831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012405, 35.415352, 49.224075>,  <36.809700, 34.835373, 48.930462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012405, 35.415352, 49.224075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966923, 35.493973, 48.834526>,  <36.939632, 35.541145, 48.600796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966923, 35.493973, 48.834526>,  <37.012405, 35.415352, 49.224075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966923, 35.493973, 48.834526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638340, 0.736681, 0.223212,
		0.761310, 0.647046, 0.041700,
		-0.113709, 0.196552, -0.973878,
		36.932812, 35.552937, 48.542362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778988, 36.140709, 49.205940>,  <37.012405, 35.415352, 49.224075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778988, 36.140709, 49.205940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681583, 36.015114, 48.838871>,  <36.623142, 35.939758, 48.618629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681583, 36.015114, 48.838871>,  <36.778988, 36.140709, 49.205940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681583, 36.015114, 48.838871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791888, 0.610665, 0.001191,
		0.560015, 0.726982, -0.397342,
		-0.243509, -0.313984, -0.917670,
		36.608532, 35.920918, 48.563572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538643, 36.683495, 48.876068>,  <36.778988, 36.140709, 49.205940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538643, 36.683495, 48.876068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378265, 36.404961, 48.637959>,  <36.282040, 36.237839, 48.495090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378265, 36.404961, 48.637959>,  <36.538643, 36.683495, 48.876068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378265, 36.404961, 48.637959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887424, 0.456535, 0.063676,
		0.227425, 0.553794, -0.800993,
		-0.400944, -0.696339, -0.595278,
		36.257980, 36.196060, 48.459373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100040, 37.005962, 48.396801>,  <36.538643, 36.683495, 48.876068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100040, 37.005962, 48.396801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975021, 36.626057, 48.403152>,  <35.900009, 36.398113, 48.406963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975021, 36.626057, 48.403152>,  <36.100040, 37.005962, 48.396801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975021, 36.626057, 48.403152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949050, 0.312935, 0.037081,
		-0.040187, -0.003480, -0.999186,
		-0.312552, -0.949768, 0.015879,
		35.881256, 36.341125, 48.407917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442532, 36.889744, 47.986778>,  <36.100040, 37.005962, 48.396801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442532, 36.889744, 47.986778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421387, 36.556274, 48.206665>,  <35.408699, 36.356194, 48.338596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421387, 36.556274, 48.206665>,  <35.442532, 36.889744, 47.986778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421387, 36.556274, 48.206665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977114, 0.156763, 0.143784,
		-0.206045, -0.529540, -0.822881,
		-0.052858, -0.833674, 0.549721,
		35.405529, 36.306171, 48.371582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777283, 36.585224, 47.825111>,  <35.442532, 36.889744, 47.986778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777283, 36.585224, 47.825111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.895645, 36.419605, 48.169437>,  <34.966663, 36.320236, 48.376034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.895645, 36.419605, 48.169437>,  <34.777283, 36.585224, 47.825111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895645, 36.419605, 48.169437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937466, 0.047054, 0.344883,
		-0.183302, -0.909039, -0.374230,
		0.295903, -0.414045, 0.860818,
		34.984417, 36.295391, 48.427685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298817, 36.185390, 47.873943>,  <34.777283, 36.585224, 47.825111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298817, 36.185390, 47.873943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.465019, 36.213455, 48.236694>,  <34.564739, 36.230293, 48.454346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.465019, 36.213455, 48.236694>,  <34.298817, 36.185390, 47.873943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465019, 36.213455, 48.236694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909586, 0.029010, 0.414501,
		0.002772, -0.997114, 0.075868,
		0.415506, 0.070158, 0.906881,
		34.589672, 36.234505, 48.508759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082752, 35.656162, 48.243778>,  <34.298817, 36.185390, 47.873943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082752, 35.656162, 48.243778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177673, 35.945869, 48.502735>,  <34.234627, 36.119694, 48.658108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177673, 35.945869, 48.502735>,  <34.082752, 35.656162, 48.243778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177673, 35.945869, 48.502735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874863, -0.130339, 0.466504,
		0.422256, -0.677084, 0.602708,
		0.237306, 0.724271, 0.647393,
		34.248867, 36.163151, 48.696953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055199, 35.279091, 48.862106>,  <34.082752, 35.656162, 48.243778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055199, 35.279091, 48.862106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.014271, 35.672600, 48.921059>,  <33.989716, 35.908707, 48.956429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.014271, 35.672600, 48.921059>,  <34.055199, 35.279091, 48.862106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014271, 35.672600, 48.921059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724136, -0.175239, 0.667021,
		0.682025, -0.038472, 0.730317,
		-0.102318, 0.983774, 0.147377,
		33.983574, 35.967731, 48.965271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719566, 35.292084, 49.547344>,  <34.055199, 35.279091, 48.862106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719566, 35.292084, 49.547344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.683720, 35.660809, 49.396488>,  <33.662212, 35.882042, 49.305977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.683720, 35.660809, 49.396488>,  <33.719566, 35.292084, 49.547344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683720, 35.660809, 49.396488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856323, 0.122050, 0.501810,
		0.508604, 0.367923, 0.778431,
		-0.089620, 0.921811, -0.377137,
		33.656834, 35.937351, 49.283348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676907, 35.923561, 50.113087>,  <33.719566, 35.292084, 49.547344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676907, 35.923561, 50.113087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458637, 35.979382, 49.782566>,  <33.327675, 36.012875, 49.584255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458637, 35.979382, 49.782566>,  <33.676907, 35.923561, 50.113087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458637, 35.979382, 49.782566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808976, 0.169543, 0.562862,
		0.218641, 0.975592, 0.020379,
		-0.545669, 0.139551, -0.826300,
		33.294937, 36.021248, 49.534676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208786, 36.568081, 50.161732>,  <33.676907, 35.923561, 50.113087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208786, 36.568081, 50.161732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067692, 36.266972, 49.939415>,  <32.983036, 36.086304, 49.806023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067692, 36.266972, 49.939415>,  <33.208786, 36.568081, 50.161732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067692, 36.266972, 49.939415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882522, 0.070210, 0.465000,
		-0.311018, 0.654522, -0.689107,
		-0.352735, -0.752776, -0.555794,
		32.961872, 36.041138, 49.772678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570778, 36.766476, 49.864281>,  <33.208786, 36.568081, 50.161732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570778, 36.766476, 49.864281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.584480, 36.370319, 49.917866>,  <32.592701, 36.132626, 49.950016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.584480, 36.370319, 49.917866>,  <32.570778, 36.766476, 49.864281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584480, 36.370319, 49.917866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766042, 0.060072, 0.639977,
		-0.641877, -0.124547, -0.756625,
		0.034255, -0.990393, 0.133967,
		32.594757, 36.073200, 49.958057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957010, 36.604015, 49.631805>,  <32.570778, 36.766476, 49.864281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957010, 36.604015, 49.631805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.044880, 36.285049, 49.856613>,  <32.097603, 36.093670, 49.991497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.044880, 36.285049, 49.856613>,  <31.957010, 36.604015, 49.631805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044880, 36.285049, 49.856613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897249, 0.061023, 0.437287,
		-0.382997, -0.600333, -0.702078,
		0.219675, -0.797419, 0.562020,
		32.110783, 36.045822, 50.025219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429186, 36.087933, 49.527355>,  <31.957010, 36.604015, 49.631805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429186, 36.087933, 49.527355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.595284, 35.964954, 49.869831>,  <31.694942, 35.891167, 50.075317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.595284, 35.964954, 49.869831>,  <31.429186, 36.087933, 49.527355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595284, 35.964954, 49.869831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909162, -0.172933, 0.378838,
		0.031592, -0.935721, -0.351323,
		0.415242, -0.307441, 0.856186,
		31.719856, 35.872723, 50.126686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226433, 35.357090, 49.677330>,  <31.429186, 36.087933, 49.527355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226433, 35.357090, 49.677330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.298120, 35.518909, 50.036041>,  <31.341133, 35.616001, 50.251270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.298120, 35.518909, 50.036041>,  <31.226433, 35.357090, 49.677330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298120, 35.518909, 50.036041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926008, -0.238479, 0.292639,
		0.332251, -0.882873, 0.331879,
		0.179217, 0.404552, 0.896782,
		31.351885, 35.640274, 50.305077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944033, 34.844967, 50.106880>,  <31.226433, 35.357090, 49.677330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944033, 34.844967, 50.106880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.969383, 35.196533, 50.295975>,  <30.984594, 35.407475, 50.409431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.969383, 35.196533, 50.295975>,  <30.944033, 34.844967, 50.106880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969383, 35.196533, 50.295975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863332, -0.189343, 0.467768,
		0.500640, -0.437778, 0.746800,
		0.063378, 0.878920, 0.472741,
		30.988396, 35.460209, 50.437798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684917, 34.660343, 50.732010>,  <30.944033, 34.844967, 50.106880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684917, 34.660343, 50.732010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.655109, 35.059025, 50.719166>,  <30.637224, 35.298233, 50.711460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.655109, 35.059025, 50.719166>,  <30.684917, 34.660343, 50.732010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655109, 35.059025, 50.719166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832250, -0.044423, 0.552618,
		0.549369, 0.067905, 0.832816,
		-0.074521, 0.996702, -0.032110,
		30.632753, 35.358036, 50.709534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364996, 34.812771, 51.383389>,  <30.684917, 34.660343, 50.732010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364996, 34.812771, 51.383389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.296488, 35.128727, 51.147850>,  <30.255383, 35.318302, 51.006527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.296488, 35.128727, 51.147850>,  <30.364996, 34.812771, 51.383389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296488, 35.128727, 51.147850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894029, 0.126531, 0.429770,
		0.413978, 0.600053, 0.684514,
		-0.171272, 0.789891, -0.588845,
		30.245106, 35.365696, 50.971195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201252, 35.486099, 51.803528>,  <30.364996, 34.812771, 51.383389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201252, 35.486099, 51.803528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.056858, 35.508411, 51.431168>,  <29.970221, 35.521797, 51.207752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.056858, 35.508411, 51.431168>,  <30.201252, 35.486099, 51.803528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056858, 35.508411, 51.431168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927966, 0.077596, 0.364497,
		0.092565, 0.995423, 0.023751,
		-0.360986, 0.055780, -0.930902,
		29.948563, 35.525146, 51.151897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608522, 35.854534, 51.999241>,  <30.201252, 35.486099, 51.803528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608522, 35.854534, 51.999241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.550491, 35.739880, 51.620445>,  <29.515673, 35.671089, 51.393166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.550491, 35.739880, 51.620445>,  <29.608522, 35.854534, 51.999241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550491, 35.739880, 51.620445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988877, 0.010290, 0.148382,
		-0.032787, 0.957985, -0.284938,
		-0.145080, -0.286633, -0.946992,
		29.506968, 35.653889, 51.336349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226124, 36.408428, 51.640862>,  <29.608522, 35.854534, 51.999241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226124, 36.408428, 51.640862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.145639, 36.068333, 51.446289>,  <29.097349, 35.864277, 51.329544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.145639, 36.068333, 51.446289>,  <29.226124, 36.408428, 51.640862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145639, 36.068333, 51.446289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977148, 0.139475, 0.160401,
		-0.068533, 0.507590, -0.858869,
		-0.201209, -0.850235, -0.486432,
		29.085278, 35.813263, 51.300358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714317, 36.610039, 51.187744>,  <29.226124, 36.408428, 51.640862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714317, 36.610039, 51.187744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.678782, 36.212166, 51.208557>,  <28.657459, 35.973442, 51.221046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.678782, 36.212166, 51.208557>,  <28.714317, 36.610039, 51.187744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678782, 36.212166, 51.208557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989813, 0.093998, 0.106935,
		-0.111258, -0.042006, -0.992903,
		-0.088839, -0.994686, 0.052036,
		28.652130, 35.913761, 51.224167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085636, 36.336849, 50.790695>,  <28.714317, 36.610039, 51.187744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085636, 36.336849, 50.790695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.134243, 36.013111, 51.020546>,  <28.163408, 35.818867, 51.158455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.134243, 36.013111, 51.020546>,  <28.085636, 36.336849, 50.790695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134243, 36.013111, 51.020546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987377, -0.157813, -0.013470,
		0.101585, -0.565732, -0.818308,
		0.121520, -0.809347, 0.574623,
		28.170698, 35.770306, 51.192932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718838, 35.828419, 50.447758>,  <28.085636, 36.336849, 50.790695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718838, 35.828419, 50.447758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.764418, 35.662182, 50.808712>,  <27.791765, 35.562439, 51.025284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.764418, 35.662182, 50.808712>,  <27.718838, 35.828419, 50.447758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764418, 35.662182, 50.808712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957191, -0.289196, -0.012320,
		0.266086, -0.862351, -0.430753,
		0.113948, -0.415591, 0.902386,
		27.798601, 35.537506, 51.079430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233854, 35.260719, 50.454334>,  <27.718838, 35.828419, 50.447758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233854, 35.260719, 50.454334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.316895, 35.308193, 50.842728>,  <27.366718, 35.336678, 51.075764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.316895, 35.308193, 50.842728>,  <27.233854, 35.260719, 50.454334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316895, 35.308193, 50.842728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970590, -0.098693, 0.219576,
		0.121889, -0.988016, 0.094701,
		0.207598, 0.118680, 0.970988,
		27.379173, 35.343796, 51.134026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885605, 34.773392, 50.824814>,  <27.233854, 35.260719, 50.454334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885605, 34.773392, 50.824814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.949278, 35.085850, 51.066303>,  <26.987482, 35.273323, 51.211197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.949278, 35.085850, 51.066303>,  <26.885605, 34.773392, 50.824814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949278, 35.085850, 51.066303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958467, -0.024305, 0.284166,
		0.236647, -0.623880, 0.744830,
		0.159183, 0.781142, 0.603720,
		26.997032, 35.320190, 51.247421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623810, 34.609028, 51.400532>,  <26.885605, 34.773392, 50.824814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623810, 34.609028, 51.400532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.650608, 35.006470, 51.436882>,  <26.666687, 35.244934, 51.458691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.650608, 35.006470, 51.436882>,  <26.623810, 34.609028, 51.400532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650608, 35.006470, 51.436882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899959, 0.020852, 0.435475,
		0.430796, -0.110960, 0.895602,
		0.066995, 0.993606, 0.090876,
		26.670706, 35.304550, 51.464146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203869, 34.762993, 51.992008>,  <26.623810, 34.609028, 51.400532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203869, 34.762993, 51.992008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.205383, 35.122459, 51.816566>,  <26.206291, 35.338139, 51.711300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.205383, 35.122459, 51.816566>,  <26.203869, 34.762993, 51.992008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205383, 35.122459, 51.816566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922294, 0.172649, 0.345783,
		0.386470, 0.403217, 0.829492,
		0.003785, 0.898671, -0.438608,
		26.206518, 35.392059, 51.684982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780920, 35.210835, 52.500057>,  <26.203869, 34.762993, 51.992008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780920, 35.210835, 52.500057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.776066, 35.392994, 52.143974>,  <25.773153, 35.502289, 51.930325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.776066, 35.392994, 52.143974>,  <25.780920, 35.210835, 52.500057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776066, 35.392994, 52.143974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991232, 0.111668, 0.070638,
		0.131576, 0.883256, 0.450051,
		-0.012135, 0.455400, -0.890205,
		25.772425, 35.529613, 51.876911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413111, 35.752937, 52.631516>,  <25.780920, 35.210835, 52.500057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413111, 35.752937, 52.631516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.424311, 35.804680, 52.235035>,  <25.431030, 35.835724, 51.997147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.424311, 35.804680, 52.235035>,  <25.413111, 35.752937, 52.631516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424311, 35.804680, 52.235035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949895, 0.312260, 0.013917,
		0.311313, 0.941149, 0.131616,
		0.028000, 0.129354, -0.991203,
		25.432711, 35.843487, 51.937675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335871, 36.477558, 52.502098>,  <25.413111, 35.752937, 52.631516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.335871, 36.477558, 52.502098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.198284, 36.216885, 52.231693>,  <25.115732, 36.060482, 52.069450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.198284, 36.216885, 52.231693>,  <25.335871, 36.477558, 52.502098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198284, 36.216885, 52.231693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930136, 0.335065, 0.150263,
		0.128584, 0.680470, -0.721406,
		-0.343968, -0.651684, -0.676014,
		25.095095, 36.021378, 52.028889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.878138, 36.852459, 52.234726>,  <25.335871, 36.477558, 52.502098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.878138, 36.852459, 52.234726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.789017, 36.472382, 52.147552>,  <24.735544, 36.244335, 52.095249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.789017, 36.472382, 52.147552>,  <24.878138, 36.852459, 52.234726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789017, 36.472382, 52.147552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964863, 0.182994, 0.188555,
		-0.139282, 0.252287, -0.957576,
		-0.222801, -0.950192, -0.217934,
		24.722176, 36.187325, 52.082172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.276569, 32.442741, 50.674095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892307, 32.416275, 50.566193>,  <34.661751, 32.400394, 50.501450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892307, 32.416275, 50.566193>,  <35.276569, 32.442741, 50.674095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892307, 32.416275, 50.566193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236182, 0.705699, 0.667987,
		0.146171, 0.705415, -0.693559,
		-0.960652, -0.066166, -0.269759,
		34.604111, 32.396427, 50.485264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979328, 33.191963, 50.552406>,  <35.276569, 32.442741, 50.674095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979328, 33.191963, 50.552406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.665382, 32.949162, 50.602264>,  <34.477016, 32.803482, 50.632179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.665382, 32.949162, 50.602264>,  <34.979328, 33.191963, 50.552406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665382, 32.949162, 50.602264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387760, 0.637993, 0.665287,
		-0.483356, 0.473826, -0.736108,
		-0.784863, -0.607004, 0.124647,
		34.429924, 32.767059, 50.639660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375278, 33.644566, 50.458527>,  <34.979328, 33.191963, 50.552406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375278, 33.644566, 50.458527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236729, 33.339481, 50.676994>,  <34.153599, 33.156429, 50.808075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236729, 33.339481, 50.676994>,  <34.375278, 33.644566, 50.458527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236729, 33.339481, 50.676994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456273, 0.645675, 0.612307,
		-0.819660, -0.037117, -0.571647,
		-0.346371, -0.762710, 0.546169,
		34.132816, 33.110668, 50.840843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678123, 33.774773, 50.651363>,  <34.375278, 33.644566, 50.458527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678123, 33.774773, 50.651363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.788296, 33.493202, 50.913242>,  <33.854401, 33.324261, 51.070370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.788296, 33.493202, 50.913242>,  <33.678123, 33.774773, 50.651363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788296, 33.493202, 50.913242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418073, 0.525553, 0.740952,
		-0.865652, -0.477792, -0.149538,
		0.275431, -0.703924, 0.654698,
		33.870926, 33.282024, 51.109653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092392, 33.720467, 51.154942>,  <33.678123, 33.774773, 50.651363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092392, 33.720467, 51.154942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.387043, 33.532719, 51.349701>,  <33.563835, 33.420071, 51.466557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.387043, 33.532719, 51.349701>,  <33.092392, 33.720467, 51.154942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387043, 33.532719, 51.349701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323765, 0.387341, 0.863217,
		-0.593763, -0.793511, 0.133361,
		0.736628, -0.469369, 0.486901,
		33.608032, 33.391907, 51.495770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789936, 33.211185, 51.792427>,  <33.092392, 33.720467, 51.154942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789936, 33.211185, 51.792427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.171371, 33.304695, 51.868343>,  <33.400234, 33.360802, 51.913891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.171371, 33.304695, 51.868343>,  <32.789936, 33.211185, 51.792427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171371, 33.304695, 51.868343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247846, 0.251416, 0.935608,
		0.171007, -0.939222, 0.297688,
		0.953587, 0.233776, 0.189789,
		33.457447, 33.374828, 51.925282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886204, 32.946712, 52.414177>,  <32.789936, 33.211185, 51.792427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886204, 32.946712, 52.414177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.166237, 33.231026, 52.386852>,  <33.334259, 33.401615, 52.370457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.166237, 33.231026, 52.386852>,  <32.886204, 32.946712, 52.414177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166237, 33.231026, 52.386852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203369, 0.290174, 0.935115,
		0.684486, -0.640769, 0.347698,
		0.700086, 0.710784, -0.068307,
		33.376263, 33.444260, 52.366360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056026, 32.885437, 53.103413>,  <32.886204, 32.946712, 52.414177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056026, 32.885437, 53.103413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.247753, 33.206974, 52.962505>,  <33.362789, 33.399895, 52.877960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.247753, 33.206974, 52.962505>,  <33.056026, 32.885437, 53.103413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247753, 33.206974, 52.962505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060484, 0.370175, 0.926991,
		0.875555, -0.465629, 0.128812,
		0.479317, 0.803841, -0.352272,
		33.391548, 33.448128, 52.856823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587162, 32.950176, 53.558609>,  <33.056026, 32.885437, 53.103413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587162, 32.950176, 53.558609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582947, 33.311321, 53.386688>,  <33.580418, 33.528008, 53.283535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.582947, 33.311321, 53.386688>,  <33.587162, 32.950176, 53.558609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582947, 33.311321, 53.386688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297387, 0.413206, 0.860710,
		0.954699, -0.118745, -0.272855,
		-0.010541, 0.902862, -0.429801,
		33.579784, 33.582180, 53.257748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204235, 33.314201, 53.780224>,  <33.587162, 32.950176, 53.558609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204235, 33.314201, 53.780224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.923355, 33.583584, 53.687817>,  <33.754826, 33.745213, 53.632374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.923355, 33.583584, 53.687817>,  <34.204235, 33.314201, 53.780224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923355, 33.583584, 53.687817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110776, 0.423866, 0.898925,
		0.703308, 0.605635, -0.372242,
		-0.702201, 0.673456, -0.231018,
		33.712696, 33.785622, 53.618511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442738, 33.960766, 53.962654>,  <34.204235, 33.314201, 53.780224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442738, 33.960766, 53.962654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.055515, 34.060905, 53.957005>,  <33.823181, 34.120991, 53.953617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.055515, 34.060905, 53.957005>,  <34.442738, 33.960766, 53.962654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055515, 34.060905, 53.957005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093309, 0.411933, 0.906424,
		0.232743, 0.876148, -0.422133,
		-0.968052, 0.250352, -0.014122,
		33.765099, 34.136009, 53.952766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422791, 34.728939, 54.087940>,  <34.442738, 33.960766, 53.962654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422791, 34.728939, 54.087940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.061241, 34.578613, 54.169685>,  <33.844311, 34.488419, 54.218731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.061241, 34.578613, 54.169685>,  <34.422791, 34.728939, 54.087940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061241, 34.578613, 54.169685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028776, 0.530052, 0.847477,
		-0.426821, 0.760135, -0.489917,
		-0.903878, -0.375819, 0.204364,
		33.790077, 34.465866, 54.230995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961918, 35.347305, 54.084614>,  <34.422791, 34.728939, 54.087940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961918, 35.347305, 54.084614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281029, 35.334286, 54.325443>,  <35.472496, 35.326473, 54.469940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281029, 35.334286, 54.325443>,  <34.961918, 35.347305, 54.084614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281029, 35.334286, 54.325443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567158, -0.298434, -0.767639,
		0.204665, 0.953875, -0.219624,
		0.797775, -0.032547, 0.602077,
		35.520363, 35.324520, 54.506065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529839, 35.821896, 53.785240>,  <34.961918, 35.347305, 54.084614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529839, 35.821896, 53.785240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.692043, 35.530544, 54.006153>,  <35.789368, 35.355732, 54.138702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.692043, 35.530544, 54.006153>,  <35.529839, 35.821896, 53.785240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692043, 35.530544, 54.006153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659127, -0.185614, -0.728766,
		0.633331, 0.659550, 0.404827,
		0.405516, -0.728382, 0.552282,
		35.813698, 35.312031, 54.171837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277462, 35.881634, 53.734867>,  <35.529839, 35.821896, 53.785240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277462, 35.881634, 53.734867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.242435, 35.518181, 53.898193>,  <36.221420, 35.300110, 53.996189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.242435, 35.518181, 53.898193>,  <36.277462, 35.881634, 53.734867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242435, 35.518181, 53.898193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857557, -0.277321, -0.433231,
		0.506881, 0.312216, 0.803488,
		-0.087562, -0.908633, 0.408312,
		36.216167, 35.245590, 54.020687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935791, 35.680630, 53.942604>,  <36.277462, 35.881634, 53.734867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935791, 35.680630, 53.942604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732178, 35.341030, 53.885902>,  <36.610008, 35.137272, 53.851883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732178, 35.341030, 53.885902>,  <36.935791, 35.680630, 53.942604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732178, 35.341030, 53.885902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674523, -0.291151, -0.678417,
		0.534701, -0.440953, 0.720872,
		-0.509032, -0.848995, -0.141754,
		36.579468, 35.086330, 53.843376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338051, 35.067127, 54.058609>,  <36.935791, 35.680630, 53.942604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338051, 35.067127, 54.058609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064350, 34.929272, 53.801540>,  <36.900127, 34.846558, 53.647301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064350, 34.929272, 53.801540>,  <37.338051, 35.067127, 54.058609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064350, 34.929272, 53.801540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729190, -0.312710, -0.608683,
		0.008805, -0.885121, 0.465278,
		-0.684255, -0.344635, -0.642668,
		36.859074, 34.825882, 53.608742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630421, 34.491131, 53.920731>,  <37.338051, 35.067127, 54.058609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630421, 34.491131, 53.920731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375515, 34.539356, 53.616268>,  <37.222572, 34.568291, 53.433590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375515, 34.539356, 53.616268>,  <37.630421, 34.491131, 53.920731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375515, 34.539356, 53.616268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632233, -0.482975, -0.605819,
		-0.440659, -0.867295, 0.231559,
		-0.637261, 0.120561, -0.761159,
		37.184338, 34.575523, 53.387920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655521, 33.869156, 53.616901>,  <37.630421, 34.491131, 53.920731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655521, 33.869156, 53.616901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504047, 34.116550, 53.341488>,  <37.413162, 34.264988, 53.176239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504047, 34.116550, 53.341488>,  <37.655521, 33.869156, 53.616901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504047, 34.116550, 53.341488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685000, -0.312984, -0.657887,
		-0.622394, -0.720773, -0.305142,
		-0.378683, 0.618487, -0.688529,
		37.390442, 34.302097, 53.134930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481098, 33.486713, 52.984932>,  <37.655521, 33.869156, 53.616901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481098, 33.486713, 52.984932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.495895, 33.862057, 52.847462>,  <37.504772, 34.087261, 52.764980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.495895, 33.862057, 52.847462>,  <37.481098, 33.486713, 52.984932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495895, 33.862057, 52.847462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733322, -0.259126, -0.628564,
		-0.678874, -0.228774, -0.697705,
		0.036994, 0.938358, -0.343679,
		37.506992, 34.143562, 52.744358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342072, 33.344524, 52.322567>,  <37.481098, 33.486713, 52.984932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342072, 33.344524, 52.322567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526100, 33.698994, 52.344585>,  <37.636517, 33.911674, 52.357796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526100, 33.698994, 52.344585>,  <37.342072, 33.344524, 52.322567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526100, 33.698994, 52.344585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591332, -0.259568, -0.763512,
		-0.662316, 0.383821, -0.643443,
		0.460069, 0.886175, 0.055050,
		37.664120, 33.964848, 52.361099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401207, 33.662472, 51.558079>,  <37.342072, 33.344524, 52.322567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401207, 33.662472, 51.558079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669544, 33.917706, 51.709244>,  <37.830547, 34.070847, 51.799942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669544, 33.917706, 51.709244>,  <37.401207, 33.662472, 51.558079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669544, 33.917706, 51.709244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643267, -0.247092, -0.724674,
		-0.369022, 0.729243, -0.576218,
		0.670843, 0.638083, 0.377916,
		37.870796, 34.109131, 51.822620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674526, 33.920292, 51.029076>,  <37.401207, 33.662472, 51.558079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674526, 33.920292, 51.029076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.953217, 34.007164, 51.302544>,  <38.120430, 34.059288, 51.466625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.953217, 34.007164, 51.302544>,  <37.674526, 33.920292, 51.029076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953217, 34.007164, 51.302544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704023, -0.024231, -0.709764,
		-0.137584, 0.975830, -0.169785,
		0.696723, 0.217185, 0.683673,
		38.162231, 34.072319, 51.507645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138344, 34.411251, 50.683098>,  <37.674526, 33.920292, 51.029076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138344, 34.411251, 50.683098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355442, 34.294407, 50.998081>,  <38.485703, 34.224300, 51.187073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355442, 34.294407, 50.998081>,  <38.138344, 34.411251, 50.683098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355442, 34.294407, 50.998081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822754, -0.003548, -0.568387,
		0.168826, 0.956378, 0.238408,
		0.542747, -0.292110, 0.787463,
		38.518265, 34.206776, 51.234322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873695, 34.718288, 50.677704>,  <38.138344, 34.411251, 50.683098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873695, 34.718288, 50.677704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.934292, 34.376850, 50.877071>,  <38.970650, 34.171986, 50.996693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.934292, 34.376850, 50.877071>,  <38.873695, 34.718288, 50.677704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934292, 34.376850, 50.877071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876492, -0.117098, -0.466959,
		0.456959, 0.507599, 0.730433,
		0.151496, -0.853599, 0.498415,
		38.979740, 34.120770, 51.026596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558510, 34.785114, 50.918419>,  <38.873695, 34.718288, 50.677704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558510, 34.785114, 50.918419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.443016, 34.403469, 50.886650>,  <39.373718, 34.174484, 50.867588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.443016, 34.403469, 50.886650>,  <39.558510, 34.785114, 50.918419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443016, 34.403469, 50.886650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766154, -0.180516, -0.616784,
		0.574143, -0.238937, 0.783115,
		-0.288737, -0.954109, -0.079420,
		39.356396, 34.117237, 50.862823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496998, 35.533680, 50.786026>,  <39.558510, 34.785114, 50.918419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496998, 35.533680, 50.786026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.231941, 35.288143, 50.957661>,  <39.072906, 35.140823, 51.060642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.231941, 35.288143, 50.957661>,  <39.496998, 35.533680, 50.786026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231941, 35.288143, 50.957661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732179, -0.651478, 0.198722,
		0.157556, 0.445848, 0.881133,
		-0.662639, -0.613837, 0.429085,
		39.033150, 35.103992, 51.086388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441254, 36.062389, 50.262428>,  <39.496998, 35.533680, 50.786026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441254, 36.062389, 50.262428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.061897, 35.992603, 50.368351>,  <38.834286, 35.950733, 50.431904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.061897, 35.992603, 50.368351>,  <39.441254, 36.062389, 50.262428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061897, 35.992603, 50.368351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062229, 0.921213, 0.384050,
		-0.310943, 0.347750, -0.884525,
		-0.948389, -0.174461, 0.264805,
		38.777382, 35.940266, 50.447792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090984, 36.532360, 50.040852>,  <39.441254, 36.062389, 50.262428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090984, 36.532360, 50.040852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.934399, 36.382236, 50.376923>,  <38.840446, 36.292164, 50.578568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.934399, 36.382236, 50.376923>,  <39.090984, 36.532360, 50.040852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934399, 36.382236, 50.376923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083262, 0.894854, 0.438524,
		-0.916419, 0.241621, -0.319053,
		-0.391463, -0.375307, 0.840180,
		38.816959, 36.269646, 50.628975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221062, 37.040878, 49.404148>,  <39.090984, 36.532360, 50.040852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221062, 37.040878, 49.404148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.950066, 37.150681, 49.131191>,  <38.787468, 37.216560, 48.967419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.950066, 37.150681, 49.131191>,  <39.221062, 37.040878, 49.404148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950066, 37.150681, 49.131191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601462, 0.327265, 0.728794,
		0.423380, 0.904182, -0.056614,
		-0.677490, 0.274506, -0.682388,
		38.746819, 37.233032, 48.926476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050835, 37.753941, 49.521156>,  <39.221062, 37.040878, 49.404148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050835, 37.753941, 49.521156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.735786, 37.584892, 49.341801>,  <38.546757, 37.483463, 49.234188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.735786, 37.584892, 49.341801>,  <39.050835, 37.753941, 49.521156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735786, 37.584892, 49.341801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582883, 0.275107, 0.764567,
		-0.199766, 0.863544, -0.463017,
		-0.787617, -0.422620, -0.448389,
		38.499500, 37.458107, 49.207283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502041, 38.314262, 49.393063>,  <39.050835, 37.753941, 49.521156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502041, 38.314262, 49.393063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291981, 37.974342, 49.374874>,  <38.165947, 37.770390, 49.363960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291981, 37.974342, 49.374874>,  <38.502041, 38.314262, 49.393063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291981, 37.974342, 49.374874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590414, 0.325338, 0.738625,
		-0.612889, 0.414731, -0.672581,
		-0.525147, -0.849796, -0.045467,
		38.134438, 37.719402, 49.361233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799240, 38.476135, 49.451973>,  <38.502041, 38.314262, 49.393063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799240, 38.476135, 49.451973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783180, 38.085594, 49.536945>,  <37.773544, 37.851269, 49.587929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783180, 38.085594, 49.536945>,  <37.799240, 38.476135, 49.451973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783180, 38.085594, 49.536945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705291, 0.178292, 0.686131,
		-0.707779, -0.122278, -0.695770,
		-0.040151, -0.976350, 0.212433,
		37.771133, 37.792690, 49.600674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127636, 38.370205, 49.487873>,  <37.799240, 38.476135, 49.451973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127636, 38.370205, 49.487873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287529, 38.068424, 49.696110>,  <37.383465, 37.887356, 49.821053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287529, 38.068424, 49.696110>,  <37.127636, 38.370205, 49.487873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287529, 38.068424, 49.696110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688298, 0.128026, 0.714041,
		-0.605358, -0.643750, -0.468110,
		0.399734, -0.754450, 0.520594,
		37.407448, 37.842091, 49.852287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557373, 37.977425, 49.745323>,  <37.127636, 38.370205, 49.487873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557373, 37.977425, 49.745323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859207, 37.884521, 49.990810>,  <37.040310, 37.828781, 50.138103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859207, 37.884521, 49.990810>,  <36.557373, 37.977425, 49.745323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859207, 37.884521, 49.990810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638139, -0.041832, 0.768784,
		-0.152882, -0.971755, -0.179777,
		0.754590, -0.232256, 0.613719,
		37.085583, 37.814846, 50.174927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228069, 37.380135, 50.034210>,  <36.557373, 37.977425, 49.745323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228069, 37.380135, 50.034210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528656, 37.542511, 50.242252>,  <36.709007, 37.639938, 50.367077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528656, 37.542511, 50.242252>,  <36.228069, 37.380135, 50.034210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528656, 37.542511, 50.242252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564833, -0.011578, 0.825124,
		0.340974, -0.913826, 0.220589,
		0.751466, 0.405942, 0.520106,
		36.754097, 37.664295, 50.398285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080254, 37.109955, 50.756577>,  <36.228069, 37.380135, 50.034210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080254, 37.109955, 50.756577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342155, 37.411213, 50.782078>,  <36.499298, 37.591969, 50.797379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342155, 37.411213, 50.782078>,  <36.080254, 37.109955, 50.756577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342155, 37.411213, 50.782078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379168, 0.254320, 0.889693,
		0.653853, -0.606708, 0.452087,
		0.654758, 0.753145, 0.063756,
		36.538582, 37.637157, 50.801205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381992, 37.001568, 51.442814>,  <36.080254, 37.109955, 50.756577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381992, 37.001568, 51.442814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403141, 37.382675, 51.323189>,  <36.415829, 37.611340, 51.251411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403141, 37.382675, 51.323189>,  <36.381992, 37.001568, 51.442814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403141, 37.382675, 51.323189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390765, 0.295343, 0.871823,
		0.918971, 0.070774, 0.387922,
		0.052867, 0.952766, -0.299067,
		36.419003, 37.668507, 51.233467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778164, 37.437622, 51.976551>,  <36.381992, 37.001568, 51.442814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778164, 37.437622, 51.976551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.554192, 37.689980, 51.761723>,  <36.419807, 37.841396, 51.632824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.554192, 37.689980, 51.761723>,  <36.778164, 37.437622, 51.976551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554192, 37.689980, 51.761723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275178, 0.469813, 0.838781,
		0.781507, 0.617451, -0.089455,
		-0.559933, 0.630897, -0.537070,
		36.386211, 37.879250, 51.600601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803024, 38.058792, 52.337608>,  <36.778164, 37.437622, 51.976551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803024, 38.058792, 52.337608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.518795, 38.161907, 52.075729>,  <36.348259, 38.223774, 51.918602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.518795, 38.161907, 52.075729>,  <36.803024, 38.058792, 52.337608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518795, 38.161907, 52.075729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438109, 0.566003, 0.698356,
		0.550589, 0.783063, -0.289248,
		-0.710572, 0.257785, -0.654702,
		36.305622, 38.239243, 51.879318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658180, 38.790977, 52.584774>,  <36.803024, 38.058792, 52.337608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658180, 38.790977, 52.584774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.348194, 38.669876, 52.362865>,  <36.162205, 38.597214, 52.229721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.348194, 38.669876, 52.362865>,  <36.658180, 38.790977, 52.584774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348194, 38.669876, 52.362865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621133, 0.526989, 0.580066,
		0.116744, 0.794118, -0.596446,
		-0.774961, -0.302753, -0.554775,
		36.115707, 38.579052, 52.196434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284740, 39.351460, 52.364227>,  <36.658180, 38.790977, 52.584774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284740, 39.351460, 52.364227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.028942, 39.043949, 52.366577>,  <35.875465, 38.859444, 52.367989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.028942, 39.043949, 52.366577>,  <36.284740, 39.351460, 52.364227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028942, 39.043949, 52.366577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567297, 0.477029, 0.671281,
		-0.518869, 0.425943, -0.741180,
		-0.639491, -0.768776, 0.005879,
		35.837093, 38.813316, 52.368340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619259, 39.622932, 52.540939>,  <36.284740, 39.351460, 52.364227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619259, 39.622932, 52.540939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.565899, 39.237103, 52.631981>,  <35.533882, 39.005604, 52.686607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.565899, 39.237103, 52.631981>,  <35.619259, 39.622932, 52.540939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565899, 39.237103, 52.631981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639911, 0.259201, 0.723414,
		-0.756781, -0.049141, -0.651819,
		-0.133403, -0.964572, 0.227604,
		35.525879, 38.947731, 52.700260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888641, 39.461643, 52.483646>,  <35.619259, 39.622932, 52.540939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888641, 39.461643, 52.483646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055843, 39.191761, 52.726971>,  <35.156162, 39.029831, 52.872967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055843, 39.191761, 52.726971>,  <34.888641, 39.461643, 52.483646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055843, 39.191761, 52.726971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720272, 0.161923, 0.674529,
		-0.553608, -0.720107, -0.418288,
		0.418002, -0.674705, 0.608315,
		35.181244, 38.989349, 52.909466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299049, 39.113331, 52.776279>,  <34.888641, 39.461643, 52.483646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299049, 39.113331, 52.776279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.599953, 39.068893, 53.036053>,  <34.780495, 39.042229, 53.191917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.599953, 39.068893, 53.036053>,  <34.299049, 39.113331, 52.776279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599953, 39.068893, 53.036053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623431, 0.198900, 0.756156,
		-0.213180, -0.973702, 0.080362,
		0.752255, -0.111097, 0.649438,
		34.825630, 39.035564, 53.230885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944828, 38.806423, 53.416492>,  <34.299049, 39.113331, 52.776279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944828, 38.806423, 53.416492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.299015, 38.945343, 53.539997>,  <34.511528, 39.028694, 53.614101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.299015, 38.945343, 53.539997>,  <33.944828, 38.806423, 53.416492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299015, 38.945343, 53.539997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410260, 0.272167, 0.870409,
		0.218249, -0.897393, 0.383474,
		0.885469, 0.347290, 0.308764,
		34.564655, 39.049530, 53.632626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034298, 38.586727, 54.063641>,  <33.944828, 38.806423, 53.416492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034298, 38.586727, 54.063641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.315968, 38.870728, 54.061039>,  <34.484970, 39.041126, 54.059479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.315968, 38.870728, 54.061039>,  <34.034298, 38.586727, 54.063641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315968, 38.870728, 54.061039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255767, 0.262195, 0.930504,
		0.662366, -0.653568, 0.366225,
		0.704170, 0.710002, -0.006508,
		34.527218, 39.083729, 54.059086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266529, 38.632511, 54.726810>,  <34.034298, 38.586727, 54.063641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266529, 38.632511, 54.726810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350765, 38.986164, 54.559975>,  <34.401306, 39.198357, 54.459873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350765, 38.986164, 54.559975>,  <34.266529, 38.632511, 54.726810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350765, 38.986164, 54.559975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306348, 0.464852, 0.830701,
		0.928334, -0.047160, 0.368744,
		0.210587, 0.884132, -0.417090,
		34.413940, 39.251404, 54.434849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701935, 38.939541, 55.248058>,  <34.266529, 38.632511, 54.726810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701935, 38.939541, 55.248058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582436, 39.245441, 55.019707>,  <34.510735, 39.428982, 54.882698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582436, 39.245441, 55.019707>,  <34.701935, 38.939541, 55.248058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582436, 39.245441, 55.019707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074833, 0.577581, 0.812896,
		0.951392, 0.285575, -0.115325,
		-0.298753, 0.764753, -0.570876,
		34.492809, 39.474869, 54.848442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083748, 39.578941, 55.353424>,  <34.701935, 38.939541, 55.248058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083748, 39.578941, 55.353424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.728508, 39.693405, 55.209545>,  <34.515362, 39.762085, 55.123219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.728508, 39.693405, 55.209545>,  <35.083748, 39.578941, 55.353424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728508, 39.693405, 55.209545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074741, 0.682239, 0.727298,
		0.453526, 0.672801, -0.584511,
		-0.888103, 0.286162, -0.359699,
		34.462078, 39.779255, 55.101635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047478, 40.263672, 55.556839>,  <35.083748, 39.578941, 55.353424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047478, 40.263672, 55.556839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668262, 40.194252, 55.450172>,  <34.440735, 40.152599, 55.386173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668262, 40.194252, 55.450172>,  <35.047478, 40.263672, 55.556839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668262, 40.194252, 55.450172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311763, 0.674034, 0.669688,
		0.063521, 0.718025, -0.693113,
		-0.948034, -0.173548, -0.266669,
		34.383854, 40.142189, 55.370171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748894, 40.931564, 55.393322>,  <35.047478, 40.263672, 55.556839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748894, 40.931564, 55.393322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456791, 40.681576, 55.503693>,  <34.281528, 40.531582, 55.569916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456791, 40.681576, 55.503693>,  <34.748894, 40.931564, 55.393322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456791, 40.681576, 55.503693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338682, 0.681948, 0.648260,
		-0.593313, 0.379944, -0.709664,
		-0.730256, -0.624972, 0.275928,
		34.237713, 40.494083, 55.586472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181946, 41.320034, 55.548264>,  <34.748894, 40.931564, 55.393322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181946, 41.320034, 55.548264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.075363, 40.982815, 55.735146>,  <34.011414, 40.780483, 55.847275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.075363, 40.982815, 55.735146>,  <34.181946, 41.320034, 55.548264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075363, 40.982815, 55.735146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376110, 0.537242, 0.754925,
		-0.887436, 0.025435, -0.460229,
		-0.266456, -0.843045, 0.467202,
		33.995426, 40.729900, 55.875305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530048, 41.485172, 55.797443>,  <34.181946, 41.320034, 55.548264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530048, 41.485172, 55.797443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635513, 41.172558, 56.023605>,  <33.698792, 40.984989, 56.159302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635513, 41.172558, 56.023605>,  <33.530048, 41.485172, 55.797443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635513, 41.172558, 56.023605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243570, 0.513209, 0.822977,
		-0.933357, -0.354705, -0.055044,
		0.263665, -0.781538, 0.565403,
		33.714611, 40.938095, 56.193226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
