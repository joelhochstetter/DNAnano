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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.595192, 32.202499, 23.562458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541798, 32.107727, 23.177532>,  <43.509762, 32.050865, 22.946577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541798, 32.107727, 23.177532>,  <43.595192, 32.202499, 23.562458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541798, 32.107727, 23.177532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878511, 0.477704, 0.004251,
		0.458694, 0.845969, -0.271911,
		-0.133489, -0.236927, -0.962313,
		43.501751, 32.036648, 22.888838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505302, 32.812336, 23.155838>,  <43.595192, 32.202499, 23.562458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505302, 32.812336, 23.155838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308998, 32.493523, 23.015045>,  <43.191216, 32.302235, 22.930569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308998, 32.493523, 23.015045>,  <43.505302, 32.812336, 23.155838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308998, 32.493523, 23.015045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844102, 0.535060, -0.034688,
		0.215979, 0.280085, -0.935364,
		-0.490760, -0.797034, -0.351982,
		43.161770, 32.254414, 22.909451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257618, 32.867729, 22.417217>,  <43.505302, 32.812336, 23.155838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257618, 32.867729, 22.417217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023354, 32.637405, 22.645409>,  <42.882793, 32.499210, 22.782324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023354, 32.637405, 22.645409>,  <43.257618, 32.867729, 22.417217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023354, 32.637405, 22.645409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777975, 0.596864, -0.196235,
		-0.227504, -0.558745, -0.797525,
		-0.585659, -0.575810, 0.570478,
		42.847656, 32.464661, 22.816551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531998, 32.660530, 21.993723>,  <43.257618, 32.867729, 22.417217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531998, 32.660530, 21.993723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525219, 32.698513, 22.391857>,  <42.521152, 32.721302, 22.630737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525219, 32.698513, 22.391857>,  <42.531998, 32.660530, 21.993723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525219, 32.698513, 22.391857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881871, 0.467704, -0.059637,
		-0.471186, -0.878769, 0.075819,
		-0.016946, 0.094962, 0.995336,
		42.520134, 32.727001, 22.690458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887852, 32.334789, 22.188400>,  <42.531998, 32.660530, 21.993723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887852, 32.334789, 22.188400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021473, 32.641640, 22.407459>,  <42.101646, 32.825752, 22.538895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021473, 32.641640, 22.407459>,  <41.887852, 32.334789, 22.188400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021473, 32.641640, 22.407459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839520, 0.506306, -0.197128,
		-0.428501, -0.393912, 0.813155,
		0.334054, 0.767129, 0.547650,
		42.121689, 32.871780, 22.571754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251324, 32.409519, 22.560122>,  <41.887852, 32.334789, 22.188400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251324, 32.409519, 22.560122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869095, 32.299591, 22.517502>,  <40.639759, 32.233635, 22.491930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869095, 32.299591, 22.517502>,  <41.251324, 32.409519, 22.560122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869095, 32.299591, 22.517502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107159, -0.660663, 0.742995,
		-0.274586, 0.698568, 0.660761,
		-0.955573, -0.274823, -0.106551,
		40.582424, 32.217144, 22.485537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023140, 32.316322, 23.235821>,  <41.251324, 32.409519, 22.560122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023140, 32.316322, 23.235821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751068, 32.112000, 23.025513>,  <40.587826, 31.989407, 22.899328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751068, 32.112000, 23.025513>,  <41.023140, 32.316322, 23.235821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751068, 32.112000, 23.025513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019203, -0.704578, 0.709367,
		-0.732797, 0.492591, 0.469428,
		-0.680176, -0.510808, -0.525772,
		40.547016, 31.958757, 22.867781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572964, 32.140694, 23.700682>,  <41.023140, 32.316322, 23.235821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572964, 32.140694, 23.700682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455616, 31.873688, 23.426937>,  <40.385208, 31.713484, 23.262690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455616, 31.873688, 23.426937>,  <40.572964, 32.140694, 23.700682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455616, 31.873688, 23.426937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025723, -0.721115, 0.692337,
		-0.955652, 0.185507, 0.228725,
		-0.293371, -0.667518, -0.684364,
		40.367603, 31.673433, 23.221628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958023, 31.670708, 23.980083>,  <40.572964, 32.140694, 23.700682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958023, 31.670708, 23.980083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152935, 31.464420, 23.698208>,  <40.269882, 31.340647, 23.529081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152935, 31.464420, 23.698208>,  <39.958023, 31.670708, 23.980083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152935, 31.464420, 23.698208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019758, -0.813284, 0.581531,
		-0.873020, -0.269448, -0.406489,
		0.487284, -0.515720, -0.704690,
		40.299122, 31.309704, 23.486801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560677, 30.991137, 24.033821>,  <39.958023, 31.670708, 23.980083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560677, 30.991137, 24.033821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905521, 30.924702, 23.842331>,  <40.112427, 30.884840, 23.727436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905521, 30.924702, 23.842331>,  <39.560677, 30.991137, 24.033821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905521, 30.924702, 23.842331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086518, -0.882637, 0.462025,
		-0.499277, -0.439735, -0.746562,
		0.862112, -0.166088, -0.478726,
		40.164154, 30.874876, 23.698713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506451, 30.254976, 23.877884>,  <39.560677, 30.991137, 24.033821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506451, 30.254976, 23.877884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886665, 30.378292, 23.893059>,  <40.114796, 30.452282, 23.902164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886665, 30.378292, 23.893059>,  <39.506451, 30.254976, 23.877884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886665, 30.378292, 23.893059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233262, -0.789129, 0.568211,
		0.205111, -0.531255, -0.822008,
		0.950536, 0.308290, 0.037937,
		40.171825, 30.470779, 23.904440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875938, 29.607834, 23.860962>,  <39.506451, 30.254976, 23.877884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875938, 29.607834, 23.860962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165501, 29.867626, 23.954037>,  <40.339237, 30.023500, 24.009882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165501, 29.867626, 23.954037>,  <39.875938, 29.607834, 23.860962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165501, 29.867626, 23.954037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362100, -0.644767, 0.673171,
		0.587238, -0.403055, -0.701925,
		0.723902, 0.649479, 0.232686,
		40.382671, 30.062469, 24.023842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516479, 29.241831, 23.689270>,  <39.875938, 29.607834, 23.860962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516479, 29.241831, 23.689270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574680, 29.525692, 23.965015>,  <40.609600, 29.696009, 24.130463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574680, 29.525692, 23.965015>,  <40.516479, 29.241831, 23.689270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574680, 29.525692, 23.965015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339898, -0.690225, 0.638795,
		0.929138, 0.141368, -0.341639,
		0.145503, 0.709651, 0.689365,
		40.618332, 29.738588, 24.171825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241158, 29.090061, 24.000910>,  <40.516479, 29.241831, 23.689270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241158, 29.090061, 24.000910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060139, 29.336811, 24.258488>,  <40.951527, 29.484861, 24.413034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060139, 29.336811, 24.258488>,  <41.241158, 29.090061, 24.000910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060139, 29.336811, 24.258488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489569, -0.431697, 0.757602,
		0.745334, 0.658107, -0.106640,
		-0.452547, 0.616874, 0.643947,
		40.924374, 29.521873, 24.451672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810398, 29.226791, 24.602409>,  <41.241158, 29.090061, 24.000910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810398, 29.226791, 24.602409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443493, 29.301682, 24.743023>,  <41.223351, 29.346615, 24.827391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443493, 29.301682, 24.743023>,  <41.810398, 29.226791, 24.602409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443493, 29.301682, 24.743023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217939, -0.502811, 0.836471,
		0.333363, 0.843877, 0.420406,
		-0.917263, 0.187225, 0.351532,
		41.168312, 29.357849, 24.848482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921070, 29.402449, 25.247372>,  <41.810398, 29.226791, 24.602409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921070, 29.402449, 25.247372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526680, 29.335690, 25.248253>,  <41.290047, 29.295633, 25.248781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526680, 29.335690, 25.248253>,  <41.921070, 29.402449, 25.247372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526680, 29.335690, 25.248253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085342, -0.492743, 0.865979,
		-0.143445, 0.854019, 0.500075,
		-0.985972, -0.166898, 0.002202,
		41.230888, 29.285620, 25.248913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661396, 29.668671, 25.898476>,  <41.921070, 29.402449, 25.247372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661396, 29.668671, 25.898476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419628, 29.380699, 25.762020>,  <41.274567, 29.207916, 25.680147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419628, 29.380699, 25.762020>,  <41.661396, 29.668671, 25.898476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419628, 29.380699, 25.762020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202170, -0.552803, 0.808416,
		-0.770585, 0.419657, 0.479675,
		-0.604423, -0.719928, -0.341139,
		41.238300, 29.164721, 25.659678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273407, 29.500671, 26.458168>,  <41.661396, 29.668671, 25.898476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273407, 29.500671, 26.458168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259117, 29.188904, 26.207973>,  <41.250542, 29.001844, 26.057858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259117, 29.188904, 26.207973>,  <41.273407, 29.500671, 26.458168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259117, 29.188904, 26.207973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148370, -0.623086, 0.767952,
		-0.988286, -0.065367, 0.137903,
		-0.035727, -0.779417, -0.625486,
		41.248398, 28.955078, 26.020329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886345, 29.000601, 26.812126>,  <41.273407, 29.500671, 26.458168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886345, 29.000601, 26.812126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067757, 28.769592, 26.540604>,  <41.176601, 28.630987, 26.377689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067757, 28.769592, 26.540604>,  <40.886345, 29.000601, 26.812126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067757, 28.769592, 26.540604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252942, -0.646918, 0.719387,
		-0.854596, -0.497960, -0.147315,
		0.453527, -0.577523, -0.678808,
		41.203815, 28.596336, 26.336962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510708, 28.340637, 26.903986>,  <40.886345, 29.000601, 26.812126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510708, 28.340637, 26.903986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865604, 28.308258, 26.722324>,  <41.078541, 28.288832, 26.613327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865604, 28.308258, 26.722324>,  <40.510708, 28.340637, 26.903986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865604, 28.308258, 26.722324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230234, -0.775407, 0.587994,
		-0.399749, -0.626252, -0.669335,
		0.887240, -0.080946, -0.454152,
		41.131775, 28.283974, 26.586079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630634, 27.527771, 26.630081>,  <40.510708, 28.340637, 26.903986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630634, 27.527771, 26.630081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985947, 27.706318, 26.673389>,  <41.199135, 27.813446, 26.699375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985947, 27.706318, 26.673389>,  <40.630634, 27.527771, 26.630081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985947, 27.706318, 26.673389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290889, -0.729133, 0.619475,
		0.355456, -0.518770, -0.777514,
		0.888276, 0.446366, 0.108270,
		41.252430, 27.840227, 26.705870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000111, 26.970953, 26.803902>,  <40.630634, 27.527771, 26.630081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000111, 26.970953, 26.803902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274986, 27.249065, 26.888142>,  <41.439911, 27.415932, 26.938686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274986, 27.249065, 26.888142>,  <41.000111, 26.970953, 26.803902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274986, 27.249065, 26.888142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487460, -0.656246, 0.575954,
		0.538656, -0.293131, -0.789889,
		0.687192, 0.695280, 0.210601,
		41.481144, 27.457649, 26.951323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631176, 26.560417, 26.906040>,  <41.000111, 26.970953, 26.803902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631176, 26.560417, 26.906040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703945, 26.913292, 27.079777>,  <41.747604, 27.125017, 27.184019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703945, 26.913292, 27.079777>,  <41.631176, 26.560417, 26.906040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703945, 26.913292, 27.079777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589713, -0.451344, 0.669721,
		0.786857, 0.134303, -0.602345,
		0.181919, 0.882185, 0.434343,
		41.758522, 27.177948, 27.210079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332462, 26.552580, 27.067116>,  <41.631176, 26.560417, 26.906040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332462, 26.552580, 27.067116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149475, 26.810669, 27.311871>,  <42.039680, 26.965523, 27.458723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149475, 26.810669, 27.311871>,  <42.332462, 26.552580, 27.067116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149475, 26.810669, 27.311871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596504, -0.287648, 0.749294,
		0.659471, 0.707774, -0.253288,
		-0.457473, 0.645225, 0.611886,
		42.012234, 27.004236, 27.495436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852489, 26.898159, 27.392796>,  <42.332462, 26.552580, 27.067116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852489, 26.898159, 27.392796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546829, 26.958714, 27.643604>,  <42.363434, 26.995047, 27.794090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546829, 26.958714, 27.643604>,  <42.852489, 26.898159, 27.392796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546829, 26.958714, 27.643604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541041, -0.378849, 0.750831,
		0.351212, 0.912993, 0.207591,
		-0.764149, 0.151386, 0.627023,
		42.317585, 27.004129, 27.831711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199188, 27.176935, 28.001518>,  <42.852489, 26.898159, 27.392796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199188, 27.176935, 28.001518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833965, 27.042080, 28.093319>,  <42.614834, 26.961166, 28.148399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833965, 27.042080, 28.093319>,  <43.199188, 27.176935, 28.001518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833965, 27.042080, 28.093319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350479, -0.360857, 0.864261,
		-0.208558, 0.869552, 0.447641,
		-0.913055, -0.337137, 0.229500,
		42.560047, 26.940939, 28.162169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262978, 27.040430, 28.654999>,  <43.199188, 27.176935, 28.001518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262978, 27.040430, 28.654999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873585, 26.949974, 28.641140>,  <42.639950, 26.895700, 28.632824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873585, 26.949974, 28.641140>,  <43.262978, 27.040430, 28.654999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873585, 26.949974, 28.641140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044845, -0.337127, 0.940390,
		-0.224341, 0.913896, 0.338327,
		-0.973478, -0.226141, -0.034648,
		42.581543, 26.882132, 28.630745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324787, 27.862442, 28.503757>,  <43.262978, 27.040430, 28.654999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324787, 27.862442, 28.503757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956490, 27.993229, 28.418606>,  <42.735512, 28.071701, 28.367516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956490, 27.993229, 28.418606>,  <43.324787, 27.862442, 28.503757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956490, 27.993229, 28.418606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296309, -0.231055, 0.926722,
		0.253821, 0.916355, 0.309627,
		-0.920748, 0.326967, -0.212877,
		42.680264, 28.091318, 28.354742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039738, 28.443956, 29.014502>,  <43.324787, 27.862442, 28.503757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039738, 28.443956, 29.014502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714985, 28.261730, 28.868458>,  <42.520134, 28.152393, 28.780830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714985, 28.261730, 28.868458>,  <43.039738, 28.443956, 29.014502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714985, 28.261730, 28.868458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409219, -0.001980, 0.912434,
		-0.416398, 0.890199, -0.184819,
		-0.811882, -0.455568, -0.365110,
		42.471420, 28.125059, 28.758924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452187, 28.879175, 29.288815>,  <43.039738, 28.443956, 29.014502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452187, 28.879175, 29.288815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367016, 28.493885, 29.223259>,  <42.315914, 28.262711, 29.183926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367016, 28.493885, 29.223259>,  <42.452187, 28.879175, 29.288815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367016, 28.493885, 29.223259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224788, -0.114945, 0.967604,
		-0.950859, 0.242868, -0.192046,
		-0.212926, -0.963225, -0.163890,
		42.303139, 28.204918, 29.174091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871616, 28.697048, 29.624226>,  <42.452187, 28.879175, 29.288815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871616, 28.697048, 29.624226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032825, 28.336655, 29.559975>,  <42.129551, 28.120419, 29.521425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032825, 28.336655, 29.559975>,  <41.871616, 28.697048, 29.624226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032825, 28.336655, 29.559975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250604, -0.277447, 0.927481,
		-0.880211, -0.333541, -0.337607,
		0.403021, -0.900985, -0.160625,
		42.153732, 28.066359, 29.511787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474316, 28.370424, 29.988928>,  <41.871616, 28.697048, 29.624226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474316, 28.370424, 29.988928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789150, 28.125996, 29.955250>,  <41.978050, 27.979338, 29.935043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789150, 28.125996, 29.955250>,  <41.474316, 28.370424, 29.988928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789150, 28.125996, 29.955250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043588, -0.191251, 0.980573,
		-0.615303, -0.768124, -0.177166,
		0.787085, -0.611072, -0.084196,
		42.025276, 27.942675, 29.929991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787987, 28.141418, 29.892179>,  <41.474316, 28.370424, 29.988928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787987, 28.141418, 29.892179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435566, 27.954460, 29.921257>,  <40.224113, 27.842285, 29.938704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435566, 27.954460, 29.921257>,  <40.787987, 28.141418, 29.892179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435566, 27.954460, 29.921257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360739, 0.564540, -0.742403,
		0.305957, -0.680321, -0.665998,
		-0.881055, -0.467394, 0.072694,
		40.171249, 27.814241, 29.943066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660503, 27.848101, 29.209965>,  <40.787987, 28.141418, 29.892179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660503, 27.848101, 29.209965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391571, 27.974365, 29.477795>,  <40.230213, 28.050125, 29.638493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391571, 27.974365, 29.477795>,  <40.660503, 27.848101, 29.209965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391571, 27.974365, 29.477795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367325, 0.643044, -0.671987,
		-0.642688, -0.697748, -0.316385,
		-0.672327, 0.315662, 0.669577,
		40.189873, 28.069063, 29.678667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926437, 27.748516, 29.004629>,  <40.660503, 27.848101, 29.209965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926437, 27.748516, 29.004629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974785, 28.064995, 29.244427>,  <40.003792, 28.254883, 29.388306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974785, 28.064995, 29.244427>,  <39.926437, 27.748516, 29.004629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974785, 28.064995, 29.244427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286531, 0.606026, -0.742046,
		-0.950416, -0.082085, 0.299952,
		0.120868, 0.791199, 0.599496,
		40.011044, 28.302355, 29.424276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301910, 28.253363, 29.191137>,  <39.926437, 27.748516, 29.004629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301910, 28.253363, 29.191137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655518, 28.440205, 29.183872>,  <39.867680, 28.552311, 29.179514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655518, 28.440205, 29.183872>,  <39.301910, 28.253363, 29.191137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655518, 28.440205, 29.183872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306550, 0.549947, -0.776907,
		-0.352909, 0.692366, 0.629353,
		0.884015, 0.467106, -0.018163,
		39.920723, 28.580336, 29.178423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107574, 29.051744, 29.372705>,  <39.301910, 28.253363, 29.191137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107574, 29.051744, 29.372705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425243, 28.954594, 29.149887>,  <39.615845, 28.896303, 29.016195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425243, 28.954594, 29.149887>,  <39.107574, 29.051744, 29.372705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425243, 28.954594, 29.149887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379936, 0.516961, -0.767072,
		0.474277, 0.820829, 0.318278,
		0.794173, -0.242879, -0.557046,
		39.663494, 28.881729, 28.982773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444054, 29.744259, 29.139954>,  <39.107574, 29.051744, 29.372705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444054, 29.744259, 29.139954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534168, 29.435703, 28.901894>,  <39.588238, 29.250570, 28.759058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534168, 29.435703, 28.901894>,  <39.444054, 29.744259, 29.139954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534168, 29.435703, 28.901894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317602, 0.519342, -0.793356,
		0.921074, 0.367751, -0.127996,
		0.225283, -0.771391, -0.595151,
		39.601753, 29.204287, 28.723349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893703, 30.093260, 28.625107>,  <39.444054, 29.744259, 29.139954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893703, 30.093260, 28.625107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757862, 29.749195, 28.472900>,  <39.676357, 29.542757, 28.381577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757862, 29.749195, 28.472900>,  <39.893703, 30.093260, 28.625107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757862, 29.749195, 28.472900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377059, 0.495129, -0.782734,
		0.861683, -0.122341, -0.492479,
		-0.339602, -0.860163, -0.380514,
		39.655983, 29.491146, 28.358746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963596, 30.234005, 27.957787>,  <39.893703, 30.093260, 28.625107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963596, 30.234005, 27.957787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723770, 29.914463, 27.977169>,  <39.579876, 29.722738, 27.988798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723770, 29.914463, 27.977169>,  <39.963596, 30.234005, 27.957787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723770, 29.914463, 27.977169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549914, 0.367222, -0.750162,
		0.581477, -0.476419, -0.659477,
		-0.599566, -0.798857, 0.048458,
		39.543900, 29.674807, 27.991707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049374, 29.931248, 27.262737>,  <39.963596, 30.234005, 27.957787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049374, 29.931248, 27.262737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703285, 29.805908, 27.419300>,  <39.495632, 29.730705, 27.513237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703285, 29.805908, 27.419300>,  <40.049374, 29.931248, 27.262737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703285, 29.805908, 27.419300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481246, 0.300001, -0.823651,
		0.140667, -0.901006, -0.410366,
		-0.865225, -0.313347, 0.391406,
		39.443718, 29.711905, 27.536722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719231, 29.682823, 26.761929>,  <40.049374, 29.931248, 27.262737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719231, 29.682823, 26.761929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406239, 29.721058, 27.008049>,  <39.218445, 29.743998, 27.155722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406239, 29.721058, 27.008049>,  <39.719231, 29.682823, 26.761929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406239, 29.721058, 27.008049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568536, 0.293354, -0.768577,
		-0.253966, -0.951213, -0.175198,
		-0.782476, 0.095586, 0.615301,
		39.171497, 29.749733, 27.192638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096642, 29.648409, 26.373106>,  <39.719231, 29.682823, 26.761929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096642, 29.648409, 26.373106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957603, 29.812592, 26.710320>,  <38.874180, 29.911100, 26.912647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957603, 29.812592, 26.710320>,  <39.096642, 29.648409, 26.373106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957603, 29.812592, 26.710320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748745, 0.419700, -0.513063,
		-0.564410, -0.809554, 0.161441,
		-0.347595, 0.410456, 0.843032,
		38.853325, 29.935728, 26.963230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386562, 29.539145, 26.363369>,  <39.096642, 29.648409, 26.373106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386562, 29.539145, 26.363369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446877, 29.829514, 26.631786>,  <38.483067, 30.003735, 26.792837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446877, 29.829514, 26.631786>,  <38.386562, 29.539145, 26.363369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446877, 29.829514, 26.631786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408546, 0.663887, -0.626375,
		-0.900196, -0.179701, 0.396679,
		0.150790, 0.725922, 0.671044,
		38.492115, 30.047291, 26.833099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737820, 29.851919, 26.494902>,  <38.386562, 29.539145, 26.363369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737820, 29.851919, 26.494902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015968, 30.124702, 26.585583>,  <38.182858, 30.288372, 26.639992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015968, 30.124702, 26.585583>,  <37.737820, 29.851919, 26.494902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015968, 30.124702, 26.585583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281719, 0.548882, -0.786996,
		-0.661133, 0.483386, 0.573796,
		0.695369, 0.681959, 0.226705,
		38.224579, 30.329290, 26.653595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351589, 30.411854, 26.451107>,  <37.737820, 29.851919, 26.494902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351589, 30.411854, 26.451107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739719, 30.502708, 26.417919>,  <37.972595, 30.557220, 26.398006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739719, 30.502708, 26.417919>,  <37.351589, 30.411854, 26.451107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739719, 30.502708, 26.417919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189561, 0.501441, -0.844170,
		-0.150139, 0.834844, 0.529616,
		0.970322, 0.227137, -0.082968,
		38.030815, 30.570850, 26.393028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362560, 31.148727, 26.322065>,  <37.351589, 30.411854, 26.451107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362560, 31.148727, 26.322065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723003, 31.029163, 26.196423>,  <37.939270, 30.957424, 26.121037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723003, 31.029163, 26.196423>,  <37.362560, 31.148727, 26.322065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723003, 31.029163, 26.196423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087845, 0.583544, -0.807317,
		0.424612, 0.755069, 0.499575,
		0.901104, -0.298911, -0.314109,
		37.993336, 30.939489, 26.102190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779572, 31.829704, 26.126417>,  <37.362560, 31.148727, 26.322065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779572, 31.829704, 26.126417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950687, 31.514542, 25.949242>,  <38.053356, 31.325443, 25.842936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950687, 31.514542, 25.949242>,  <37.779572, 31.829704, 26.126417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950687, 31.514542, 25.949242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009445, 0.486120, -0.873841,
		0.903828, 0.378005, 0.200516,
		0.427791, -0.787908, -0.442940,
		38.079025, 31.278170, 25.816360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362816, 32.138538, 25.691206>,  <37.779572, 31.829704, 26.126417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362816, 32.138538, 25.691206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293316, 31.769436, 25.553604>,  <38.251617, 31.547976, 25.471043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293316, 31.769436, 25.553604>,  <38.362816, 32.138538, 25.691206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293316, 31.769436, 25.553604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219506, 0.376815, -0.899904,
		0.960015, -0.080845, -0.268021,
		-0.173747, -0.922753, -0.344002,
		38.241192, 31.492609, 25.450403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647640, 32.219734, 25.083260>,  <38.362816, 32.138538, 25.691206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647640, 32.219734, 25.083260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400146, 31.907028, 25.052250>,  <38.251652, 31.719404, 25.033644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400146, 31.907028, 25.052250>,  <38.647640, 32.219734, 25.083260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400146, 31.907028, 25.052250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187794, 0.243003, -0.951674,
		0.762829, -0.574270, -0.297165,
		-0.618730, -0.781770, -0.077525,
		38.214527, 31.672497, 25.028992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852539, 31.818186, 24.532862>,  <38.647640, 32.219734, 25.083260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852539, 31.818186, 24.532862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474705, 31.697685, 24.585022>,  <38.248005, 31.625385, 24.616318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474705, 31.697685, 24.585022>,  <38.852539, 31.818186, 24.532862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474705, 31.697685, 24.585022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158298, 0.070017, -0.984906,
		0.287574, -0.950970, -0.113824,
		-0.944586, -0.301252, 0.130401,
		38.191330, 31.607309, 24.624142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705421, 31.401442, 24.046000>,  <38.852539, 31.818186, 24.532862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705421, 31.401442, 24.046000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331844, 31.503963, 24.145641>,  <38.107697, 31.565475, 24.205425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331844, 31.503963, 24.145641>,  <38.705421, 31.401442, 24.046000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331844, 31.503963, 24.145641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224300, 0.122322, -0.966813,
		-0.278268, -0.958825, -0.056754,
		-0.933946, 0.256304, 0.249103,
		38.051659, 31.580854, 24.220371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441692, 31.011295, 23.653986>,  <38.705421, 31.401442, 24.046000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441692, 31.011295, 23.653986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160458, 31.272125, 23.767456>,  <37.991718, 31.428623, 23.835537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160458, 31.272125, 23.767456>,  <38.441692, 31.011295, 23.653986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160458, 31.272125, 23.767456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211724, 0.188869, -0.958906,
		-0.678858, -0.734251, 0.005270,
		-0.703083, 0.652077, 0.283674,
		37.949532, 31.467749, 23.852558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837994, 30.883993, 23.233696>,  <38.441692, 31.011295, 23.653986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837994, 30.883993, 23.233696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791145, 31.252392, 23.382317>,  <37.763035, 31.473431, 23.471489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791145, 31.252392, 23.382317>,  <37.837994, 30.883993, 23.233696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791145, 31.252392, 23.382317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324805, 0.318030, -0.890707,
		-0.938501, -0.225002, 0.261896,
		-0.117120, 0.920994, 0.371554,
		37.756008, 31.528690, 23.493782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179611, 31.233776, 22.840153>,  <37.837994, 30.883993, 23.233696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179611, 31.233776, 22.840153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399860, 31.527721, 22.998539>,  <37.532009, 31.704088, 23.093571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399860, 31.527721, 22.998539>,  <37.179611, 31.233776, 22.840153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399860, 31.527721, 22.998539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023126, 0.487596, -0.872763,
		-0.834433, 0.471407, 0.285477,
		0.550624, 0.734864, 0.395964,
		37.565048, 31.748180, 23.117329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778656, 31.770876, 22.760336>,  <37.179611, 31.233776, 22.840153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778656, 31.770876, 22.760336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171429, 31.844894, 22.776150>,  <37.407093, 31.889305, 22.785639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171429, 31.844894, 22.776150>,  <36.778656, 31.770876, 22.760336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171429, 31.844894, 22.776150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041918, 0.416465, -0.908185,
		-0.184520, 0.890121, 0.416698,
		0.981935, 0.185045, 0.039534,
		37.466007, 31.900408, 22.788010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793388, 32.457989, 22.452822>,  <36.778656, 31.770876, 22.760336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793388, 32.457989, 22.452822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165512, 32.312244, 22.436024>,  <37.388786, 32.224796, 22.425945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165512, 32.312244, 22.436024>,  <36.793388, 32.457989, 22.452822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165512, 32.312244, 22.436024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056769, 0.256169, -0.964964,
		0.362356, 0.895331, 0.259001,
		0.930309, -0.364364, -0.041997,
		37.444603, 32.202934, 22.423424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893616, 32.744751, 21.813532>,  <36.793388, 32.457989, 22.452822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893616, 32.744751, 21.813532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228317, 32.526272, 21.829109>,  <37.429138, 32.395184, 21.838455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228317, 32.526272, 21.829109>,  <36.893616, 32.744751, 21.813532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228317, 32.526272, 21.829109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053545, -0.152390, -0.986869,
		0.544960, 0.823678, -0.156759,
		0.836751, -0.546197, 0.038943,
		37.479343, 32.362411, 21.840792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338543, 33.074692, 21.293158>,  <36.893616, 32.744751, 21.813532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338543, 33.074692, 21.293158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366043, 32.684956, 21.378887>,  <37.382542, 32.451115, 21.430325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366043, 32.684956, 21.378887>,  <37.338543, 33.074692, 21.293158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366043, 32.684956, 21.378887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061959, -0.218588, -0.973848,
		0.995708, 0.053674, -0.075397,
		0.068751, -0.974340, 0.214324,
		37.386669, 32.392654, 21.443184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864761, 32.623466, 20.927834>,  <37.338543, 33.074692, 21.293158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864761, 32.623466, 20.927834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547298, 32.397018, 21.016937>,  <37.356823, 32.261150, 21.070398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547298, 32.397018, 21.016937>,  <37.864761, 32.623466, 20.927834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547298, 32.397018, 21.016937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010399, -0.353478, -0.935385,
		0.608281, -0.744689, 0.274652,
		-0.793654, -0.566120, 0.222758,
		37.309204, 32.227180, 21.083765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963192, 31.914907, 20.866255>,  <37.864761, 32.623466, 20.927834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963192, 31.914907, 20.866255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571507, 31.949509, 20.792873>,  <37.336494, 31.970270, 20.748844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571507, 31.949509, 20.792873>,  <37.963192, 31.914907, 20.866255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571507, 31.949509, 20.792873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137423, -0.382279, -0.913771,
		-0.149176, -0.919989, 0.362446,
		-0.979215, 0.086504, -0.183455,
		37.277740, 31.975460, 20.737837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719963, 31.318390, 20.538960>,  <37.963192, 31.914907, 20.866255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719963, 31.318390, 20.538960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431366, 31.567520, 20.417938>,  <37.258209, 31.716997, 20.345325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431366, 31.567520, 20.417938>,  <37.719963, 31.318390, 20.538960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431366, 31.567520, 20.417938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084545, -0.354440, -0.931249,
		-0.687241, -0.697468, 0.203069,
		-0.721492, 0.622824, -0.302553,
		37.214920, 31.754368, 20.327171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863831, 31.248461, 20.277601>,  <37.719963, 31.318390, 20.538960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863831, 31.248461, 20.277601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044140, 31.543266, 20.076160>,  <37.152325, 31.720150, 19.955296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044140, 31.543266, 20.076160>,  <36.863831, 31.248461, 20.277601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044140, 31.543266, 20.076160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317959, -0.394594, -0.862089,
		-0.834091, 0.548729, 0.056469,
		0.450771, 0.737016, -0.503601,
		37.179371, 31.764372, 19.925079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490471, 31.676535, 19.871309>,  <36.863831, 31.248461, 20.277601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490471, 31.676535, 19.871309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839912, 31.682789, 19.676754>,  <37.049576, 31.686541, 19.560020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839912, 31.682789, 19.676754>,  <36.490471, 31.676535, 19.871309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839912, 31.682789, 19.676754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443854, -0.384205, -0.809556,
		-0.199530, 0.923115, -0.328703,
		0.873603, 0.015635, -0.486389,
		37.101994, 31.687479, 19.530838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778839, 31.823839, 19.635979>,  <36.490471, 31.676535, 19.871309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778839, 31.823839, 19.635979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558289, 31.942684, 19.947803>,  <35.425961, 32.013992, 20.134897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558289, 31.942684, 19.947803>,  <35.778839, 31.823839, 19.635979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558289, 31.942684, 19.947803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175770, -0.954830, 0.239592,
		0.815533, -0.004918, 0.578690,
		-0.551373, 0.297111, 0.779560,
		35.392876, 32.031818, 20.181671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975193, 31.427744, 20.329916>,  <35.778839, 31.823839, 19.635979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975193, 31.427744, 20.329916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603058, 31.564690, 20.382465>,  <35.379776, 31.646856, 20.413994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603058, 31.564690, 20.382465>,  <35.975193, 31.427744, 20.329916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603058, 31.564690, 20.382465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312625, -0.927746, 0.203844,
		0.191668, 0.148574, 0.970149,
		-0.930338, 0.342363, 0.131372,
		35.323956, 31.667398, 20.421877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712284, 31.045218, 20.875334>,  <35.975193, 31.427744, 20.329916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712284, 31.045218, 20.875334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374741, 31.171120, 20.701511>,  <35.172215, 31.246660, 20.597218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374741, 31.171120, 20.701511>,  <35.712284, 31.045218, 20.875334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374741, 31.171120, 20.701511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438705, -0.871029, 0.221011,
		-0.308946, 0.377143, 0.873107,
		-0.843854, 0.314756, -0.434556,
		35.121586, 31.265547, 20.571144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198738, 30.886402, 21.298126>,  <35.712284, 31.045218, 20.875334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198738, 30.886402, 21.298126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992432, 30.958416, 20.963085>,  <34.868649, 31.001623, 20.762060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992432, 30.958416, 20.963085>,  <35.198738, 30.886402, 21.298126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992432, 30.958416, 20.963085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569418, -0.802516, 0.178134,
		-0.640118, 0.568820, 0.516422,
		-0.515764, 0.180033, -0.837601,
		34.837704, 31.012426, 20.711805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532955, 30.787441, 21.484230>,  <35.198738, 30.886402, 21.298126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532955, 30.787441, 21.484230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499352, 30.739326, 21.088558>,  <34.479191, 30.710459, 20.851154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499352, 30.739326, 21.088558>,  <34.532955, 30.787441, 21.484230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499352, 30.739326, 21.088558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580156, -0.801187, 0.146694,
		-0.810162, 0.586201, -0.002480,
		-0.084005, -0.120285, -0.989179,
		34.474152, 30.703241, 20.791805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803780, 30.740416, 21.228533>,  <34.532955, 30.787441, 21.484230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803780, 30.740416, 21.228533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035004, 30.582157, 20.943069>,  <34.173737, 30.487202, 20.771791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035004, 30.582157, 20.943069>,  <33.803780, 30.740416, 21.228533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035004, 30.582157, 20.943069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480559, -0.871897, 0.094121,
		-0.659475, 0.288547, -0.694142,
		0.578062, -0.395647, -0.713658,
		34.208424, 30.463463, 20.728971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270443, 30.467991, 20.838682>,  <33.803780, 30.740416, 21.228533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270443, 30.467991, 20.838682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606724, 30.280529, 20.730171>,  <33.808491, 30.168053, 20.665064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606724, 30.280529, 20.730171>,  <33.270443, 30.467991, 20.838682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606724, 30.280529, 20.730171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477090, -0.878018, 0.038328,
		-0.256149, 0.097201, -0.961738,
		0.840698, -0.468653, -0.271277,
		33.858932, 30.139933, 20.648788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953682, 29.993475, 20.381788>,  <33.270443, 30.467991, 20.838682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953682, 29.993475, 20.381788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325359, 29.849163, 20.413868>,  <33.548367, 29.762575, 20.433115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325359, 29.849163, 20.413868>,  <32.953682, 29.993475, 20.381788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325359, 29.849163, 20.413868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363988, -0.930943, 0.029299,
		0.064091, -0.056416, -0.996348,
		0.929196, -0.360781, 0.080200,
		33.604118, 29.740929, 20.437927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933315, 29.364391, 20.042362>,  <32.953682, 29.993475, 20.381788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933315, 29.364391, 20.042362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239429, 29.335651, 20.298229>,  <33.423100, 29.318407, 20.451750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239429, 29.335651, 20.298229>,  <32.933315, 29.364391, 20.042362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239429, 29.335651, 20.298229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219359, -0.963377, 0.154225,
		0.605161, -0.258343, -0.753020,
		0.765285, -0.071851, 0.639668,
		33.469013, 29.314096, 20.490129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319344, 28.739395, 19.890175>,  <32.933315, 29.364391, 20.042362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319344, 28.739395, 19.890175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427158, 28.802395, 20.270184>,  <33.491848, 28.840195, 20.498188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427158, 28.802395, 20.270184>,  <33.319344, 28.739395, 19.890175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427158, 28.802395, 20.270184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165795, -0.964214, 0.206890,
		0.948610, -0.213274, -0.233782,
		0.269540, 0.157498, 0.950022,
		33.508022, 28.849644, 20.555191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716583, 28.088978, 20.102852>,  <33.319344, 28.739395, 19.890175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716583, 28.088978, 20.102852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601753, 28.258781, 20.446335>,  <33.532856, 28.360664, 20.652424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601753, 28.258781, 20.446335>,  <33.716583, 28.088978, 20.102852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601753, 28.258781, 20.446335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119850, -0.905314, 0.407483,
		0.950381, 0.014062, 0.310771,
		-0.287075, 0.424510, 0.858708,
		33.515629, 28.386135, 20.703947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078445, 27.711655, 20.694826>,  <33.716583, 28.088978, 20.102852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078445, 27.711655, 20.694826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762585, 27.895634, 20.857254>,  <33.573067, 28.006021, 20.954712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762585, 27.895634, 20.857254>,  <34.078445, 27.711655, 20.694826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762585, 27.895634, 20.857254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187117, -0.810843, 0.554546,
		0.584322, 0.361917, 0.726350,
		-0.789655, 0.459946, 0.406072,
		33.525688, 28.033617, 20.979076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088051, 27.568430, 21.393131>,  <34.078445, 27.711655, 20.694826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088051, 27.568430, 21.393131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700432, 27.648464, 21.335289>,  <33.467861, 27.696486, 21.300583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700432, 27.648464, 21.335289>,  <34.088051, 27.568430, 21.393131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700432, 27.648464, 21.335289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246857, -0.779247, 0.576053,
		0.002577, 0.593920, 0.804520,
		-0.969049, 0.200086, -0.144605,
		33.409718, 27.708490, 21.291908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780922, 27.575123, 22.036730>,  <34.088051, 27.568430, 21.393131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780922, 27.575123, 22.036730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465023, 27.522587, 21.797047>,  <33.275482, 27.491064, 21.653236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465023, 27.522587, 21.797047>,  <33.780922, 27.575123, 22.036730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465023, 27.522587, 21.797047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311837, -0.755224, 0.576537,
		-0.528259, 0.642173, 0.555478,
		-0.789746, -0.131342, -0.599208,
		33.228100, 27.483185, 21.617285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223988, 27.710102, 22.488050>,  <33.780922, 27.575123, 22.036730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223988, 27.710102, 22.488050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099869, 27.476620, 22.187916>,  <33.025398, 27.336531, 22.007835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099869, 27.476620, 22.187916>,  <33.223988, 27.710102, 22.488050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099869, 27.476620, 22.187916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365413, -0.655419, 0.660984,
		-0.877604, 0.479285, -0.009918,
		-0.310299, -0.583706, -0.750335,
		33.006779, 27.301508, 21.962816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552151, 27.497202, 22.721487>,  <33.223988, 27.710102, 22.488050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552151, 27.497202, 22.721487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621681, 27.239845, 22.423271>,  <32.663399, 27.085430, 22.244341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621681, 27.239845, 22.423271>,  <32.552151, 27.497202, 22.721487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621681, 27.239845, 22.423271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295291, -0.756282, 0.583816,
		-0.939462, 0.118672, -0.321447,
		0.173822, -0.643393, -0.745541,
		32.673828, 27.046827, 22.199610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021835, 27.057066, 22.811409>,  <32.552151, 27.497202, 22.721487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021835, 27.057066, 22.811409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280106, 26.865902, 22.573181>,  <32.435070, 26.751204, 22.430244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280106, 26.865902, 22.573181>,  <32.021835, 27.057066, 22.811409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280106, 26.865902, 22.573181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088935, -0.821696, 0.562944,
		-0.758410, -0.310516, -0.573057,
		0.645682, -0.477907, -0.595567,
		32.473808, 26.722530, 22.394510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745220, 26.403990, 22.815420>,  <32.021835, 27.057066, 22.811409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745220, 26.403990, 22.815420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128128, 26.343613, 22.716747>,  <32.357872, 26.307386, 22.657543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128128, 26.343613, 22.716747>,  <31.745220, 26.403990, 22.815420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128128, 26.343613, 22.716747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027457, -0.896566, 0.442059,
		-0.287894, -0.416396, -0.862399,
		0.957268, -0.150945, -0.246683,
		32.415310, 26.298328, 22.642742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761648, 25.780018, 22.440420>,  <31.745220, 26.403990, 22.815420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761648, 25.780018, 22.440420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120960, 25.862103, 22.595844>,  <32.336548, 25.911352, 22.689098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120960, 25.862103, 22.595844>,  <31.761648, 25.780018, 22.440420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120960, 25.862103, 22.595844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020387, -0.863841, 0.503352,
		0.438948, -0.460073, -0.771789,
		0.898281, 0.205211, 0.388560,
		32.390446, 25.923666, 22.712412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062565, 25.092037, 22.411406>,  <31.761648, 25.780018, 22.440420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062565, 25.092037, 22.411406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326977, 25.269245, 22.653652>,  <32.485622, 25.375570, 22.799000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326977, 25.269245, 22.653652>,  <32.062565, 25.092037, 22.411406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326977, 25.269245, 22.653652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222491, -0.886529, 0.405665,
		0.716615, -0.133413, -0.684591,
		0.661030, 0.443021, 0.605617,
		32.525288, 25.402151, 22.835337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630985, 24.782738, 22.248590>,  <32.062565, 25.092037, 22.411406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630985, 24.782738, 22.248590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682392, 24.946125, 22.610062>,  <32.713234, 25.044157, 22.826944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682392, 24.946125, 22.610062>,  <32.630985, 24.782738, 22.248590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682392, 24.946125, 22.610062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520720, -0.803307, 0.289046,
		0.843999, 0.433418, -0.315935,
		0.128515, 0.408468, 0.903680,
		32.720947, 25.068665, 22.881166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292870, 24.546265, 22.425560>,  <32.630985, 24.782738, 22.248590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292870, 24.546265, 22.425560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149876, 24.639584, 22.787285>,  <33.064079, 24.695574, 23.004320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149876, 24.639584, 22.787285>,  <33.292870, 24.546265, 22.425560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149876, 24.639584, 22.787285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512351, -0.760586, 0.398755,
		0.780834, 0.605873, 0.152368,
		-0.357484, 0.233295, 0.904311,
		33.042629, 24.709572, 23.058578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871132, 24.623631, 22.865841>,  <33.292870, 24.546265, 22.425560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871132, 24.623631, 22.865841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550976, 24.522579, 23.083302>,  <33.358883, 24.461948, 23.213778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550976, 24.522579, 23.083302>,  <33.871132, 24.623631, 22.865841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550976, 24.522579, 23.083302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506123, -0.770777, 0.386966,
		0.321275, 0.584877, 0.744782,
		-0.800389, -0.252629, 0.543651,
		33.310860, 24.446791, 23.246397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149830, 24.270739, 23.448036>,  <33.871132, 24.623631, 22.865841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149830, 24.270739, 23.448036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760204, 24.182404, 23.467731>,  <33.526428, 24.129402, 23.479549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760204, 24.182404, 23.467731>,  <34.149830, 24.270739, 23.448036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760204, 24.182404, 23.467731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223053, -0.900709, 0.372788,
		-0.037976, 0.374103, 0.926609,
		-0.974066, -0.220840, 0.049239,
		33.467983, 24.116152, 23.482504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122810, 24.029171, 24.065960>,  <34.149830, 24.270739, 23.448036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122810, 24.029171, 24.065960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788036, 23.895638, 23.892483>,  <33.587170, 23.815517, 23.788397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788036, 23.895638, 23.892483>,  <34.122810, 24.029171, 24.065960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788036, 23.895638, 23.892483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118077, -0.883903, 0.452520,
		-0.534408, 0.327522, 0.779190,
		-0.836938, -0.333834, -0.433692,
		33.536953, 23.795486, 23.762375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854603, 23.601496, 24.509775>,  <34.122810, 24.029171, 24.065960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854603, 23.601496, 24.509775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639473, 23.495342, 24.189697>,  <33.510395, 23.431650, 23.997650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639473, 23.495342, 24.189697>,  <33.854603, 23.601496, 24.509775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639473, 23.495342, 24.189697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255877, -0.853003, 0.454877,
		-0.803286, 0.449397, 0.390863,
		-0.537828, -0.265384, -0.800196,
		33.478127, 23.415728, 23.949638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431622, 23.173548, 24.827181>,  <33.854603, 23.601496, 24.509775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431622, 23.173548, 24.827181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392365, 23.103294, 24.435360>,  <33.368809, 23.061142, 24.200268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392365, 23.103294, 24.435360>,  <33.431622, 23.173548, 24.827181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392365, 23.103294, 24.435360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325697, -0.924427, 0.198383,
		-0.940367, 0.338507, 0.033521,
		-0.098141, -0.175635, -0.979551,
		33.362923, 23.050604, 24.141495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693050, 22.878157, 24.612995>,  <33.431622, 23.173548, 24.827181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693050, 22.878157, 24.612995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988762, 22.753250, 24.374348>,  <33.166191, 22.678307, 24.231159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988762, 22.753250, 24.374348>,  <32.693050, 22.878157, 24.612995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988762, 22.753250, 24.374348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117698, -0.932264, 0.342098,
		-0.663031, -0.182686, -0.725958,
		0.739281, -0.312265, -0.596618,
		33.210545, 22.659571, 24.195362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445736, 22.268112, 24.377462>,  <32.693050, 22.878157, 24.612995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445736, 22.268112, 24.377462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833370, 22.248669, 24.280708>,  <33.065952, 22.237003, 24.222656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833370, 22.248669, 24.280708>,  <32.445736, 22.268112, 24.377462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833370, 22.248669, 24.280708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080017, -0.865487, 0.494500,
		-0.233386, -0.498568, -0.834842,
		0.969086, -0.048608, -0.241886,
		33.124096, 22.234087, 24.208143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625675, 21.562881, 24.220226>,  <32.445736, 22.268112, 24.377462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625675, 21.562881, 24.220226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997116, 21.695717, 24.286465>,  <33.219978, 21.775419, 24.326208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997116, 21.695717, 24.286465>,  <32.625675, 21.562881, 24.220226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997116, 21.695717, 24.286465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189813, -0.808517, 0.557020,
		0.318869, -0.485814, -0.813822,
		0.928597, 0.332090, 0.165597,
		33.275696, 21.795343, 24.336143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079437, 21.051727, 23.986835>,  <32.625675, 21.562881, 24.220226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079437, 21.051727, 23.986835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305492, 21.260780, 24.242168>,  <33.441128, 21.386213, 24.395369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305492, 21.260780, 24.242168>,  <33.079437, 21.051727, 23.986835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305492, 21.260780, 24.242168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196723, -0.836793, 0.510957,
		0.801196, -0.163189, -0.575721,
		0.565141, 0.522635, 0.638332,
		33.475037, 21.417570, 24.433668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788479, 20.844950, 23.985729>,  <33.079437, 21.051727, 23.986835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788479, 20.844950, 23.985729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769135, 21.028240, 24.340736>,  <33.757526, 21.138214, 24.553741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769135, 21.028240, 24.340736>,  <33.788479, 20.844950, 23.985729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769135, 21.028240, 24.340736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163205, -0.872991, 0.459620,
		0.985406, 0.167075, -0.032565,
		-0.048362, 0.458227, 0.887518,
		33.754627, 21.165709, 24.606993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366924, 20.514063, 24.414343>,  <33.788479, 20.844950, 23.985729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366924, 20.514063, 24.414343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132397, 20.704994, 24.676147>,  <33.991680, 20.819553, 24.833231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132397, 20.704994, 24.676147>,  <34.366924, 20.514063, 24.414343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132397, 20.704994, 24.676147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208992, -0.691480, 0.691504,
		0.782657, 0.542230, 0.305670,
		-0.586319, 0.477328, 0.654514,
		33.956501, 20.848192, 24.872501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711483, 20.366537, 25.081717>,  <34.366924, 20.514063, 24.414343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711483, 20.366537, 25.081717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332916, 20.467484, 25.162319>,  <34.105778, 20.528051, 25.210680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332916, 20.467484, 25.162319>,  <34.711483, 20.366537, 25.081717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332916, 20.467484, 25.162319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059112, -0.748796, 0.660159,
		0.317489, 0.612875, 0.723592,
		-0.946418, 0.252366, 0.201506,
		34.048992, 20.543194, 25.222771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640339, 20.338354, 25.842939>,  <34.711483, 20.366537, 25.081717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640339, 20.338354, 25.842939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266674, 20.293995, 25.707268>,  <34.042477, 20.267380, 25.625864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266674, 20.293995, 25.707268>,  <34.640339, 20.338354, 25.842939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266674, 20.293995, 25.707268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162335, -0.714382, 0.680665,
		-0.317788, 0.690913, 0.649346,
		-0.934162, -0.110896, -0.339181,
		33.986427, 20.260727, 25.605513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174580, 20.346264, 26.502419>,  <34.640339, 20.338354, 25.842939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174580, 20.346264, 26.502419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978710, 20.164764, 26.204605>,  <33.861187, 20.055864, 26.025917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978710, 20.164764, 26.204605>,  <34.174580, 20.346264, 26.502419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978710, 20.164764, 26.204605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166934, -0.789329, 0.590841,
		-0.855776, 0.413608, 0.310768,
		-0.489674, -0.453749, -0.744534,
		33.831806, 20.028639, 25.981245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556931, 20.179943, 26.785484>,  <34.174580, 20.346264, 26.502419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556931, 20.179943, 26.785484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602688, 19.941242, 26.467793>,  <33.630142, 19.798021, 26.277178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602688, 19.941242, 26.467793>,  <33.556931, 20.179943, 26.785484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602688, 19.941242, 26.467793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032553, -0.796797, 0.603370,
		-0.992902, -0.094879, -0.071725,
		0.114397, -0.596752, -0.794230,
		33.637009, 19.762217, 26.229523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043510, 19.798317, 26.883539>,  <33.556931, 20.179943, 26.785484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043510, 19.798317, 26.883539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272240, 19.570995, 26.646877>,  <33.409477, 19.434603, 26.504881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272240, 19.570995, 26.646877>,  <33.043510, 19.798317, 26.883539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272240, 19.570995, 26.646877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262897, -0.810101, 0.524044,
		-0.777112, -0.144118, -0.612640,
		0.571824, -0.568302, -0.591651,
		33.443787, 19.400505, 26.469381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597294, 19.134703, 26.806320>,  <33.043510, 19.798317, 26.883539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597294, 19.134703, 26.806320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988087, 19.073597, 26.746765>,  <33.222561, 19.036934, 26.711033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988087, 19.073597, 26.746765>,  <32.597294, 19.134703, 26.806320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988087, 19.073597, 26.746765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050591, -0.843977, 0.533988,
		-0.207233, -0.514165, -0.832279,
		0.976983, -0.152766, -0.148888,
		33.281181, 19.027767, 26.702099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637943, 18.344248, 26.632616>,  <32.597294, 19.134703, 26.806320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637943, 18.344248, 26.632616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993431, 18.491749, 26.741573>,  <33.206726, 18.580250, 26.806948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993431, 18.491749, 26.741573>,  <32.637943, 18.344248, 26.632616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993431, 18.491749, 26.741573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135752, -0.779186, 0.611915,
		0.437888, -0.506845, -0.742538,
		0.888721, 0.368751, 0.272391,
		33.260048, 18.602375, 26.823290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079578, 17.842524, 26.688128>,  <32.637943, 18.344248, 26.632616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079578, 17.842524, 26.688128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308842, 18.084652, 26.909061>,  <33.446400, 18.229929, 27.041622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308842, 18.084652, 26.909061>,  <33.079578, 17.842524, 26.688128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308842, 18.084652, 26.909061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236693, -0.767601, 0.595621,
		0.784516, -0.210652, -0.583233,
		0.573159, 0.605321, 0.552336,
		33.480789, 18.266249, 27.074762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671989, 17.430285, 26.928646>,  <33.079578, 17.842524, 26.688128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671989, 17.430285, 26.928646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687275, 17.748425, 27.170624>,  <33.696445, 17.939308, 27.315811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687275, 17.748425, 27.170624>,  <33.671989, 17.430285, 26.928646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687275, 17.748425, 27.170624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326666, -0.582069, 0.744638,
		0.944367, 0.169161, -0.282055,
		0.038211, 0.795349, 0.604946,
		33.698738, 17.987030, 27.352108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300339, 17.440325, 27.322037>,  <33.671989, 17.430285, 26.928646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300339, 17.440325, 27.322037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054173, 17.643761, 27.562901>,  <33.906471, 17.765823, 27.707418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054173, 17.643761, 27.562901>,  <34.300339, 17.440325, 27.322037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054173, 17.643761, 27.562901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337286, -0.520557, 0.784385,
		0.712388, 0.685825, 0.148820,
		-0.615419, 0.508592, 0.602157,
		33.869545, 17.796339, 27.743547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718605, 17.675688, 27.900988>,  <34.300339, 17.440325, 27.322037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718605, 17.675688, 27.900988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345093, 17.554863, 27.977730>,  <34.120983, 17.482368, 28.023775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345093, 17.554863, 27.977730>,  <34.718605, 17.675688, 27.900988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345093, 17.554863, 27.977730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327907, -0.507630, 0.796736,
		-0.143271, 0.806890, 0.573064,
		-0.933783, -0.302061, 0.191856,
		34.064957, 17.464245, 28.035286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607315, 17.891392, 28.606052>,  <34.718605, 17.675688, 27.900988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607315, 17.891392, 28.606052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355370, 17.596626, 28.507881>,  <34.204205, 17.419767, 28.448978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355370, 17.596626, 28.507881>,  <34.607315, 17.891392, 28.606052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355370, 17.596626, 28.507881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345228, -0.548671, 0.761431,
		-0.695767, 0.394868, 0.599990,
		-0.629862, -0.736912, -0.245428,
		34.166412, 17.375553, 28.434254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854076, 17.398870, 29.006371>,  <34.607315, 17.891392, 28.606052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854076, 17.398870, 29.006371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482906, 17.256207, 28.963024>,  <34.260204, 17.170609, 28.937016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482906, 17.256207, 28.963024>,  <34.854076, 17.398870, 29.006371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482906, 17.256207, 28.963024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182276, -0.687741, 0.702701,
		-0.325152, 0.632304, 0.703184,
		-0.927929, -0.356658, -0.108366,
		34.204529, 17.149210, 28.930513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618755, 17.645229, 29.786495>,  <34.854076, 17.398870, 29.006371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618755, 17.645229, 29.786495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269386, 17.839569, 29.799706>,  <34.059765, 17.956173, 29.807631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269386, 17.839569, 29.799706>,  <34.618755, 17.645229, 29.786495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269386, 17.839569, 29.799706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078870, -0.074216, -0.994118,
		-0.480541, -0.870886, 0.103140,
		-0.873419, 0.485849, 0.033023,
		34.007362, 17.985323, 29.809612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962345, 17.236977, 29.829214>,  <34.618755, 17.645229, 29.786495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962345, 17.236977, 29.829214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014530, 17.273041, 30.224152>,  <34.045841, 17.294680, 30.461115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014530, 17.273041, 30.224152>,  <33.962345, 17.236977, 29.829214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014530, 17.273041, 30.224152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515894, 0.856593, -0.010054,
		-0.846660, -0.508055, 0.158263,
		0.130459, 0.090159, 0.987346,
		34.053669, 17.300089, 30.520355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337379, 17.304569, 30.213732>,  <33.962345, 17.236977, 29.829214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337379, 17.304569, 30.213732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640560, 17.517326, 30.364780>,  <33.822468, 17.644979, 30.455410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640560, 17.517326, 30.364780>,  <33.337379, 17.304569, 30.213732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640560, 17.517326, 30.364780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548040, 0.833209, -0.073585,
		-0.353777, -0.151177, 0.923032,
		0.757954, 0.531891, 0.377622,
		33.867947, 17.676893, 30.478067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092052, 17.882162, 30.217642>,  <33.337379, 17.304569, 30.213732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092052, 17.882162, 30.217642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460918, 18.008171, 30.307411>,  <33.682240, 18.083776, 30.361273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460918, 18.008171, 30.307411>,  <33.092052, 17.882162, 30.217642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460918, 18.008171, 30.307411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300682, 0.948842, -0.096378,
		-0.243304, 0.021396, 0.969714,
		0.922168, 0.315024, 0.224423,
		33.737568, 18.102678, 30.374739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055618, 18.273094, 30.671896>,  <33.092052, 17.882162, 30.217642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055618, 18.273094, 30.671896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386375, 18.429752, 30.510475>,  <33.584831, 18.523746, 30.413622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386375, 18.429752, 30.510475>,  <33.055618, 18.273094, 30.671896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386375, 18.429752, 30.510475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449782, 0.891345, -0.056579,
		0.337545, 0.228295, 0.913206,
		0.826898, 0.391646, -0.403552,
		33.634445, 18.547247, 30.389410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247753, 19.003679, 30.867947>,  <33.055618, 18.273094, 30.671896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247753, 19.003679, 30.867947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440601, 18.968822, 30.519241>,  <33.556309, 18.947908, 30.310019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440601, 18.968822, 30.519241>,  <33.247753, 19.003679, 30.867947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440601, 18.968822, 30.519241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293726, 0.921376, -0.254542,
		0.825401, 0.378778, 0.418617,
		0.482118, -0.087140, -0.871762,
		33.585236, 18.942680, 30.257713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545776, 19.672396, 30.750116>,  <33.247753, 19.003679, 30.867947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545776, 19.672396, 30.750116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523151, 19.505493, 30.387306>,  <33.509575, 19.405352, 30.169621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523151, 19.505493, 30.387306>,  <33.545776, 19.672396, 30.750116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523151, 19.505493, 30.387306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028188, 0.908786, -0.416308,
		0.998001, 0.002020, -0.063165,
		-0.056562, -0.417256, -0.907027,
		33.506184, 19.380316, 30.115198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972137, 19.981977, 30.378290>,  <33.545776, 19.672396, 30.750116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972137, 19.981977, 30.378290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725136, 19.846684, 30.094238>,  <33.576935, 19.765507, 29.923807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725136, 19.846684, 30.094238>,  <33.972137, 19.981977, 30.378290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725136, 19.846684, 30.094238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067303, 0.876790, -0.476141,
		0.783681, -0.341814, -0.518659,
		-0.617507, -0.338235, -0.710129,
		33.539883, 19.745213, 29.881199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202530, 20.306822, 29.839046>,  <33.972137, 19.981977, 30.378290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202530, 20.306822, 29.839046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849403, 20.184204, 29.696690>,  <33.637527, 20.110634, 29.611275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849403, 20.184204, 29.696690>,  <34.202530, 20.306822, 29.839046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849403, 20.184204, 29.696690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193813, 0.927908, -0.318471,
		0.427862, -0.212175, -0.878588,
		-0.882820, -0.306543, -0.355894,
		33.584557, 20.092241, 29.589922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258144, 20.566990, 29.250092>,  <34.202530, 20.306822, 29.839046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258144, 20.566990, 29.250092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863014, 20.516563, 29.286533>,  <33.625935, 20.486307, 29.308397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863014, 20.516563, 29.286533>,  <34.258144, 20.566990, 29.250092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863014, 20.516563, 29.286533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153224, 0.889426, -0.430631,
		-0.026741, -0.439349, -0.897918,
		-0.987829, -0.126067, 0.091103,
		33.566666, 20.478743, 29.313864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002445, 20.765364, 28.592613>,  <34.258144, 20.566990, 29.250092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002445, 20.765364, 28.592613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693108, 20.790157, 28.844994>,  <33.507504, 20.805033, 28.996422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693108, 20.790157, 28.844994>,  <34.002445, 20.765364, 28.592613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693108, 20.790157, 28.844994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359475, 0.776896, -0.516925,
		-0.522222, -0.626571, -0.578526,
		-0.773344, 0.061984, 0.630949,
		33.461105, 20.808752, 29.034279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491573, 21.053068, 28.179426>,  <34.002445, 20.765364, 28.592613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491573, 21.053068, 28.179426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364536, 21.098080, 28.556038>,  <33.288315, 21.125086, 28.782005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364536, 21.098080, 28.556038>,  <33.491573, 21.053068, 28.179426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364536, 21.098080, 28.556038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382710, 0.893256, -0.235853,
		-0.867565, -0.435237, -0.240623,
		-0.317590, 0.112529, 0.941527,
		33.269260, 21.131838, 28.838495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929424, 21.308451, 28.116995>,  <33.491573, 21.053068, 28.179426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929424, 21.308451, 28.116995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011108, 21.437901, 28.486549>,  <33.060120, 21.515570, 28.708282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011108, 21.437901, 28.486549>,  <32.929424, 21.308451, 28.116995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011108, 21.437901, 28.486549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412380, 0.884387, -0.218637,
		-0.887830, -0.336345, 0.314056,
		0.204210, 0.323622, 0.923887,
		33.072372, 21.534986, 28.763716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333736, 21.757612, 28.356239>,  <32.929424, 21.308451, 28.116995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333736, 21.757612, 28.356239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647461, 21.864708, 28.580086>,  <32.835697, 21.928965, 28.714394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647461, 21.864708, 28.580086>,  <32.333736, 21.757612, 28.356239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647461, 21.864708, 28.580086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261367, 0.960717, -0.093327,
		-0.562619, -0.073067, 0.823481,
		0.784313, 0.267738, 0.559615,
		32.882755, 21.945030, 28.747971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033142, 22.105194, 29.014391>,  <32.333736, 21.757612, 28.356239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033142, 22.105194, 29.014391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413982, 22.212097, 28.954945>,  <32.642487, 22.276239, 28.919277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413982, 22.212097, 28.954945>,  <32.033142, 22.105194, 29.014391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413982, 22.212097, 28.954945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292764, 0.937005, -0.190553,
		0.088326, 0.224934, 0.970363,
		0.952096, 0.267257, -0.148615,
		32.699612, 22.292274, 28.910360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009979, 22.781462, 29.022472>,  <32.033142, 22.105194, 29.014391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009979, 22.781462, 29.022472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383713, 22.802055, 28.881405>,  <32.607952, 22.814411, 28.796764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383713, 22.802055, 28.881405>,  <32.009979, 22.781462, 29.022472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383713, 22.802055, 28.881405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142812, 0.960682, -0.238105,
		0.326541, 0.272834, 0.904949,
		0.934332, 0.051486, -0.352666,
		32.664013, 22.817501, 28.775604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217850, 23.456156, 29.253771>,  <32.009979, 22.781462, 29.022472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217850, 23.456156, 29.253771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475815, 23.349194, 28.967392>,  <32.630592, 23.285017, 28.795565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475815, 23.349194, 28.967392>,  <32.217850, 23.456156, 29.253771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475815, 23.349194, 28.967392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061705, 0.915514, -0.397526,
		0.761762, 0.300547, 0.573925,
		0.644912, -0.267406, -0.715949,
		32.669289, 23.268972, 28.752607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838249, 23.829981, 29.256792>,  <32.217850, 23.456156, 29.253771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838249, 23.829981, 29.256792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780491, 23.724201, 28.875381>,  <32.745834, 23.660734, 28.646534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780491, 23.724201, 28.875381>,  <32.838249, 23.829981, 29.256792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780491, 23.724201, 28.875381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104049, 0.954227, -0.280399,
		0.984034, -0.139703, -0.110275,
		-0.144400, -0.264448, -0.953528,
		32.737171, 23.644867, 28.589323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186565, 24.316448, 28.921165>,  <32.838249, 23.829981, 29.256792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186565, 24.316448, 28.921165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989651, 24.144508, 28.618408>,  <32.871502, 24.041344, 28.436754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989651, 24.144508, 28.618408>,  <33.186565, 24.316448, 28.921165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989651, 24.144508, 28.618408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190364, 0.795338, -0.575499,
		0.849364, -0.427394, -0.309703,
		-0.492283, -0.429852, -0.756892,
		32.841965, 24.015553, 28.391340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506714, 24.462967, 28.354958>,  <33.186565, 24.316448, 28.921165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506714, 24.462967, 28.354958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175743, 24.366920, 28.151897>,  <32.977161, 24.309292, 28.030062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175743, 24.366920, 28.151897>,  <33.506714, 24.462967, 28.354958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175743, 24.366920, 28.151897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253124, 0.647475, -0.718822,
		0.501293, -0.723270, -0.474958,
		-0.827426, -0.240117, -0.507652,
		32.927517, 24.294886, 27.999601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681896, 24.273289, 27.702988>,  <33.506714, 24.462967, 28.354958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681896, 24.273289, 27.702988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306065, 24.410027, 27.710251>,  <33.080566, 24.492069, 27.714609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306065, 24.410027, 27.710251>,  <33.681896, 24.273289, 27.702988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306065, 24.410027, 27.710251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200672, 0.592985, -0.779808,
		-0.277342, -0.729048, -0.625756,
		-0.939581, 0.341845, 0.018160,
		33.024189, 24.512581, 27.715698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570782, 24.581152, 27.153728>,  <33.681896, 24.273289, 27.702988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570782, 24.581152, 27.153728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231644, 24.715580, 27.317787>,  <33.028160, 24.796238, 27.416222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231644, 24.715580, 27.317787>,  <33.570782, 24.581152, 27.153728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231644, 24.715580, 27.317787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137390, 0.886315, -0.442232,
		-0.512140, -0.318593, -0.797628,
		-0.847842, 0.336071, 0.410145,
		32.977291, 24.816401, 27.440830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277004, 25.028656, 26.532125>,  <33.570782, 24.581152, 27.153728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277004, 25.028656, 26.532125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115303, 25.132690, 26.882881>,  <33.018280, 25.195112, 27.093334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115303, 25.132690, 26.882881>,  <33.277004, 25.028656, 26.532125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115303, 25.132690, 26.882881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008364, 0.959729, -0.280803,
		-0.914607, -0.106182, -0.390152,
		-0.404257, 0.260088, 0.876887,
		32.994026, 25.210716, 27.145947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696503, 25.544823, 26.326202>,  <33.277004, 25.028656, 26.532125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696503, 25.544823, 26.326202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797974, 25.620209, 26.705704>,  <32.858856, 25.665440, 26.933405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797974, 25.620209, 26.705704>,  <32.696503, 25.544823, 26.326202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797974, 25.620209, 26.705704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113519, 0.968257, -0.222691,
		-0.960604, 0.164194, 0.224233,
		0.253679, 0.188463, 0.948751,
		32.874077, 25.676748, 26.990330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340096, 26.132668, 26.516256>,  <32.696503, 25.544823, 26.326202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340096, 26.132668, 26.516256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650490, 26.119495, 26.768215>,  <32.836727, 26.111591, 26.919390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650490, 26.119495, 26.768215>,  <32.340096, 26.132668, 26.516256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650490, 26.119495, 26.768215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089743, 0.994241, -0.058577,
		-0.624338, 0.101983, 0.774468,
		0.775982, -0.032932, 0.629895,
		32.883286, 26.109615, 26.957184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268703, 26.754425, 27.084179>,  <32.340096, 26.132668, 26.516256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268703, 26.754425, 27.084179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646244, 26.624149, 27.061996>,  <32.872768, 26.545984, 27.048687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646244, 26.624149, 27.061996>,  <32.268703, 26.754425, 27.084179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646244, 26.624149, 27.061996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329977, 0.937594, 0.109696,
		0.016268, -0.121835, 0.992417,
		0.943849, -0.325690, -0.055456,
		32.929398, 26.526442, 27.045361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539604, 27.225704, 27.411661>,  <32.268703, 26.754425, 27.084179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539604, 27.225704, 27.411661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854836, 27.050724, 27.238426>,  <33.043976, 26.945736, 27.134485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854836, 27.050724, 27.238426>,  <32.539604, 27.225704, 27.411661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854836, 27.050724, 27.238426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516592, 0.852594, 0.078844,
		0.334758, -0.285866, 0.897896,
		0.788080, -0.437452, -0.433089,
		33.091259, 26.919489, 27.108500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045963, 27.475414, 27.847654>,  <32.539604, 27.225704, 27.411661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045963, 27.475414, 27.847654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203671, 27.379711, 27.492733>,  <33.298294, 27.322289, 27.279779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203671, 27.379711, 27.492733>,  <33.045963, 27.475414, 27.847654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203671, 27.379711, 27.492733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515138, 0.857105, -0.002214,
		0.761041, -0.456210, 0.461182,
		0.394271, -0.239257, -0.887303,
		33.321953, 27.307934, 27.226542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662079, 27.796942, 27.918890>,  <33.045963, 27.475414, 27.847654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662079, 27.796942, 27.918890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591949, 27.727192, 27.531311>,  <33.549873, 27.685341, 27.298763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591949, 27.727192, 27.531311>,  <33.662079, 27.796942, 27.918890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591949, 27.727192, 27.531311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456827, 0.857414, -0.236961,
		0.872108, -0.484184, -0.070662,
		-0.175319, -0.174376, -0.968946,
		33.539352, 27.674879, 27.240627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199429, 27.980124, 27.621994>,  <33.662079, 27.796942, 27.918890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199429, 27.980124, 27.621994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920921, 28.030857, 27.339401>,  <33.753815, 28.061296, 27.169846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920921, 28.030857, 27.339401>,  <34.199429, 27.980124, 27.621994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920921, 28.030857, 27.339401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389664, 0.893391, -0.223641,
		0.602800, -0.431006, -0.671465,
		-0.696271, 0.126835, -0.706484,
		33.712040, 28.068907, 27.127457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520519, 28.412880, 27.138859>,  <34.199429, 27.980124, 27.621994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520519, 28.412880, 27.138859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139782, 28.408066, 27.016319>,  <33.911339, 28.405178, 26.942795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139782, 28.408066, 27.016319>,  <34.520519, 28.412880, 27.138859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139782, 28.408066, 27.016319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152960, 0.847342, -0.508543,
		0.265703, -0.530912, -0.804695,
		-0.951843, -0.012035, -0.306349,
		33.854229, 28.404455, 26.924414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525944, 28.516905, 26.441986>,  <34.520519, 28.412880, 27.138859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525944, 28.516905, 26.441986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139397, 28.603401, 26.497669>,  <33.907471, 28.655300, 26.531080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139397, 28.603401, 26.497669>,  <34.525944, 28.516905, 26.441986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139397, 28.603401, 26.497669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109302, 0.835317, -0.538793,
		-0.232794, -0.505455, -0.830856,
		-0.966364, 0.216243, 0.139210,
		33.849487, 28.668274, 26.539433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387863, 28.750301, 25.786430>,  <34.525944, 28.516905, 26.441986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387863, 28.750301, 25.786430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094498, 28.886120, 26.021992>,  <33.918476, 28.967611, 26.163328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094498, 28.886120, 26.021992>,  <34.387863, 28.750301, 25.786430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094498, 28.886120, 26.021992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147327, 0.766332, -0.625324,
		-0.663621, -0.545385, -0.512018,
		-0.733418, 0.339544, 0.588904,
		33.874474, 28.987984, 26.198664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707912, 29.008350, 25.446877>,  <34.387863, 28.750301, 25.786430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707912, 29.008350, 25.446877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692543, 29.217220, 25.787666>,  <33.683323, 29.342543, 25.992140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692543, 29.217220, 25.787666>,  <33.707912, 29.008350, 25.446877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692543, 29.217220, 25.787666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246850, 0.821218, -0.514456,
		-0.968292, -0.230077, 0.097345,
		-0.038423, 0.522173, 0.851974,
		33.681015, 29.373873, 26.043259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176517, 29.403177, 25.323761>,  <33.707912, 29.008350, 25.446877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176517, 29.403177, 25.323761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378979, 29.583157, 25.618069>,  <33.500454, 29.691145, 25.794653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378979, 29.583157, 25.618069>,  <33.176517, 29.403177, 25.323761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378979, 29.583157, 25.618069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161653, 0.887496, -0.431532,
		-0.847160, 0.099481, 0.521943,
		0.506151, 0.449950, 0.735769,
		33.530823, 29.718142, 25.838799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750099, 29.844564, 25.534254>,  <33.176517, 29.403177, 25.323761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750099, 29.844564, 25.534254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122501, 29.963051, 25.619572>,  <33.345943, 30.034143, 25.670761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122501, 29.963051, 25.619572>,  <32.750099, 29.844564, 25.534254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122501, 29.963051, 25.619572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164053, 0.861554, -0.480427,
		-0.326074, 0.412287, 0.850703,
		0.931001, 0.296215, 0.213293,
		33.401802, 30.051916, 25.683559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759701, 30.566936, 25.630674>,  <32.750099, 29.844564, 25.534254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759701, 30.566936, 25.630674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152294, 30.522987, 25.567913>,  <33.387852, 30.496618, 25.530256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152294, 30.522987, 25.567913>,  <32.759701, 30.566936, 25.630674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152294, 30.522987, 25.567913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016586, 0.864799, -0.501844,
		0.190828, 0.489949, 0.850609,
		0.981483, -0.109874, -0.156902,
		33.446739, 30.490025, 25.520842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160603, 31.258442, 25.855370>,  <32.759701, 30.566936, 25.630674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160603, 31.258442, 25.855370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353500, 31.030033, 25.589626>,  <33.469238, 30.892988, 25.430182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353500, 31.030033, 25.589626>,  <33.160603, 31.258442, 25.855370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353500, 31.030033, 25.589626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072060, 0.781656, -0.619534,
		0.873066, 0.250896, 0.418100,
		0.482248, -0.571022, -0.664357,
		33.498177, 30.858727, 25.390320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428268, 31.777367, 25.532089>,  <33.160603, 31.258442, 25.855370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428268, 31.777367, 25.532089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515137, 31.474796, 25.285301>,  <33.567257, 31.293253, 25.137228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515137, 31.474796, 25.285301>,  <33.428268, 31.777367, 25.532089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515137, 31.474796, 25.285301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133350, 0.649122, -0.748905,
		0.966982, 0.080366, 0.241840,
		0.217170, -0.756427, -0.616972,
		33.580288, 31.247868, 25.100210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091461, 32.018845, 25.150288>,  <33.428268, 31.777367, 25.532089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091461, 32.018845, 25.150288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916527, 31.720253, 24.949688>,  <33.811565, 31.541098, 24.829329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916527, 31.720253, 24.949688>,  <34.091461, 32.018845, 25.150288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916527, 31.720253, 24.949688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013212, 0.562930, -0.826399,
		0.899201, -0.354788, -0.256052,
		-0.437336, -0.746482, -0.501500,
		33.785328, 31.496309, 24.799238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441593, 31.840502, 24.544920>,  <34.091461, 32.018845, 25.150288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441593, 31.840502, 24.544920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072784, 31.720654, 24.446861>,  <33.851498, 31.648745, 24.388025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072784, 31.720654, 24.446861>,  <34.441593, 31.840502, 24.544920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072784, 31.720654, 24.446861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115780, 0.390836, -0.913150,
		0.369403, -0.870333, -0.325672,
		-0.922028, -0.299614, -0.245143,
		33.796177, 31.630766, 24.373318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548485, 31.653423, 23.784096>,  <34.441593, 31.840502, 24.544920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548485, 31.653423, 23.784096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158943, 31.715733, 23.850246>,  <33.925220, 31.753119, 23.889936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158943, 31.715733, 23.850246>,  <34.548485, 31.653423, 23.784096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158943, 31.715733, 23.850246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067188, 0.497891, -0.864633,
		-0.217024, -0.853135, -0.474406,
		-0.973851, 0.155772, 0.165375,
		33.866787, 31.762465, 23.899858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337963, 31.625587, 23.103603>,  <34.548485, 31.653423, 23.784096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337963, 31.625587, 23.103603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035179, 31.769703, 23.321667>,  <33.853508, 31.856173, 23.452505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035179, 31.769703, 23.321667>,  <34.337963, 31.625587, 23.103603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035179, 31.769703, 23.321667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315662, 0.528863, -0.787821,
		-0.572156, -0.768438, -0.286602,
		-0.756965, 0.360287, 0.545159,
		33.808090, 31.877789, 23.485214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673309, 31.460281, 22.763693>,  <34.337963, 31.625587, 23.103603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673309, 31.460281, 22.763693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636959, 31.794556, 22.980347>,  <33.615147, 31.995121, 23.110340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636959, 31.794556, 22.980347>,  <33.673309, 31.460281, 22.763693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636959, 31.794556, 22.980347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152735, 0.525756, -0.836811,
		-0.984080, -0.158776, 0.079858,
		-0.090879, 0.835686, 0.541637,
		33.609695, 32.045261, 23.142838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120029, 31.749605, 22.480642>,  <33.673309, 31.460281, 22.763693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120029, 31.749605, 22.480642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277355, 32.040485, 22.705669>,  <33.371750, 32.215012, 22.840687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277355, 32.040485, 22.705669>,  <33.120029, 31.749605, 22.480642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277355, 32.040485, 22.705669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162504, 0.657237, -0.735956,
		-0.904928, 0.198044, 0.376675,
		0.393317, 0.727199, 0.562569,
		33.395351, 32.258644, 22.874441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693253, 32.348469, 22.531513>,  <33.120029, 31.749605, 22.480642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693253, 32.348469, 22.531513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073772, 32.459042, 22.586094>,  <33.302082, 32.525387, 22.618843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073772, 32.459042, 22.586094>,  <32.693253, 32.348469, 22.531513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073772, 32.459042, 22.586094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099587, 0.694461, -0.712606,
		-0.291751, 0.664310, 0.688167,
		0.951296, 0.276435, 0.136453,
		33.359161, 32.541973, 22.627029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380936, 32.516106, 23.152155>,  <32.693253, 32.348469, 22.531513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380936, 32.516106, 23.152155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152542, 32.464912, 22.827785>,  <32.015507, 32.434196, 22.633163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152542, 32.464912, 22.827785>,  <32.380936, 32.516106, 23.152155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152542, 32.464912, 22.827785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208329, -0.932851, 0.293917,
		-0.794090, 0.336761, 0.505978,
		-0.570982, -0.127987, -0.810925,
		31.981247, 32.426517, 22.584507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816292, 32.143456, 23.455469>,  <32.380936, 32.516106, 23.152155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816292, 32.143456, 23.455469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762964, 32.102177, 23.061195>,  <31.730967, 32.077408, 22.824631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762964, 32.102177, 23.061195>,  <31.816292, 32.143456, 23.455469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762964, 32.102177, 23.061195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419963, -0.894975, 0.150503,
		-0.897695, 0.434017, 0.075979,
		-0.133320, -0.103197, -0.985686,
		31.722969, 32.071217, 22.765490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089327, 32.007126, 23.418011>,  <31.816292, 32.143456, 23.455469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089327, 32.007126, 23.418011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262627, 31.873821, 23.083054>,  <31.366608, 31.793839, 22.882078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262627, 31.873821, 23.083054>,  <31.089327, 32.007126, 23.418011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262627, 31.873821, 23.083054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496668, -0.863597, 0.086723,
		-0.752073, 0.378335, -0.539675,
		0.433251, -0.333262, -0.837395,
		31.392603, 31.773842, 22.831835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525951, 31.809669, 22.985909>,  <31.089327, 32.007126, 23.418011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525951, 31.809669, 22.985909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831377, 31.605740, 22.827389>,  <31.014631, 31.483381, 22.732277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831377, 31.605740, 22.827389>,  <30.525951, 31.809669, 22.985909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831377, 31.605740, 22.827389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459402, -0.860181, 0.221445,
		-0.453786, 0.012973, -0.891016,
		0.763563, -0.509824, -0.396297,
		31.060446, 31.452793, 22.708500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294260, 31.299458, 22.613527>,  <30.525951, 31.809669, 22.985909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294260, 31.299458, 22.613527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660048, 31.176498, 22.718792>,  <30.879520, 31.102722, 22.781950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660048, 31.176498, 22.718792>,  <30.294260, 31.299458, 22.613527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660048, 31.176498, 22.718792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399970, -0.785330, 0.472526,
		0.061416, -0.537367, -0.841109,
		0.914468, -0.307397, 0.263162,
		30.934387, 31.084280, 22.797741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328110, 30.545828, 22.425125>,  <30.294260, 31.299458, 22.613527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328110, 30.545828, 22.425125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628273, 30.606934, 22.682358>,  <30.808371, 30.643597, 22.836697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628273, 30.606934, 22.682358>,  <30.328110, 30.545828, 22.425125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628273, 30.606934, 22.682358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184014, -0.886177, 0.425240,
		0.634846, -0.437439, -0.636882,
		0.750407, 0.152766, 0.643081,
		30.853395, 30.652763, 22.875282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492981, 29.973289, 22.508739>,  <30.328110, 30.545828, 22.425125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492981, 29.973289, 22.508739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658041, 30.126099, 22.839504>,  <30.757076, 30.217785, 23.037962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658041, 30.126099, 22.839504>,  <30.492981, 29.973289, 22.508739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658041, 30.126099, 22.839504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244159, -0.828196, 0.504459,
		0.877558, -0.410061, -0.248479,
		0.412648, 0.382023, 0.826910,
		30.781836, 30.240705, 23.087578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846256, 29.387745, 22.857891>,  <30.492981, 29.973289, 22.508739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846256, 29.387745, 22.857891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784096, 29.678246, 23.125744>,  <30.746799, 29.852547, 23.286455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784096, 29.678246, 23.125744>,  <30.846256, 29.387745, 22.857891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784096, 29.678246, 23.125744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298891, -0.680663, 0.668851,
		0.941549, -0.096208, 0.322845,
		-0.155400, 0.726252, 0.669634,
		30.737476, 29.896122, 23.326633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068142, 29.026798, 23.390398>,  <30.846256, 29.387745, 22.857891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068142, 29.026798, 23.390398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857084, 29.326160, 23.551136>,  <30.730450, 29.505777, 23.647579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857084, 29.326160, 23.551136>,  <31.068142, 29.026798, 23.390398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857084, 29.326160, 23.551136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372166, -0.628907, 0.682619,
		0.763599, 0.210628, 0.610371,
		-0.527645, 0.748406, 0.401844,
		30.698792, 29.550682, 23.671690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267439, 28.951666, 24.017752>,  <31.068142, 29.026798, 23.390398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267439, 28.951666, 24.017752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917507, 29.143501, 24.045097>,  <30.707548, 29.258602, 24.061504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917507, 29.143501, 24.045097>,  <31.267439, 28.951666, 24.017752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917507, 29.143501, 24.045097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253615, -0.573646, 0.778852,
		0.412743, 0.664023, 0.623471,
		-0.874827, 0.479587, 0.068362,
		30.655060, 29.287378, 24.065605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064960, 29.169504, 24.752138>,  <31.267439, 28.951666, 24.017752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064960, 29.169504, 24.752138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708450, 29.175400, 24.570850>,  <30.494543, 29.178938, 24.462078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708450, 29.175400, 24.570850>,  <31.064960, 29.169504, 24.752138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708450, 29.175400, 24.570850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353793, -0.647792, 0.674682,
		-0.283648, 0.761675, 0.582576,
		-0.891277, 0.014739, -0.453220,
		30.441067, 29.179821, 24.434885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623903, 29.207211, 25.321749>,  <31.064960, 29.169504, 24.752138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623903, 29.207211, 25.321749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384262, 29.119602, 25.013695>,  <30.240479, 29.067038, 24.828863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384262, 29.119602, 25.013695>,  <30.623903, 29.207211, 25.321749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384262, 29.119602, 25.013695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524116, -0.619870, 0.584007,
		-0.605293, 0.753519, 0.256572,
		-0.599101, -0.219022, -0.770134,
		30.204531, 29.053896, 24.782654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858164, 29.247236, 25.520628>,  <30.623903, 29.207211, 25.321749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858164, 29.247236, 25.520628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873133, 29.011383, 25.197906>,  <29.882114, 28.869871, 25.004274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873133, 29.011383, 25.197906>,  <29.858164, 29.247236, 25.520628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873133, 29.011383, 25.197906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561593, -0.680222, 0.471074,
		-0.826567, 0.435466, -0.356590,
		0.037424, -0.589633, -0.806804,
		29.884359, 28.834494, 24.955866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153164, 28.921326, 25.535084>,  <29.858164, 29.247236, 25.520628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153164, 28.921326, 25.535084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389374, 28.695263, 25.304649>,  <29.531099, 28.559626, 25.166389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389374, 28.695263, 25.304649>,  <29.153164, 28.921326, 25.535084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389374, 28.695263, 25.304649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388839, -0.824777, 0.410546,
		-0.707166, -0.018433, -0.706807,
		0.590525, -0.565158, -0.576087,
		29.566532, 28.525715, 25.131823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867489, 28.288383, 25.448076>,  <29.153164, 28.921326, 25.535084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867489, 28.288383, 25.448076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237320, 28.209583, 25.317631>,  <29.459219, 28.162304, 25.239363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237320, 28.209583, 25.317631>,  <28.867489, 28.288383, 25.448076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237320, 28.209583, 25.317631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060732, -0.921207, 0.384304,
		-0.376126, -0.335513, -0.863690,
		0.924576, -0.197000, -0.326113,
		29.514692, 28.150484, 25.219797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791483, 27.652790, 25.103117>,  <28.867489, 28.288383, 25.448076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791483, 27.652790, 25.103117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180885, 27.672794, 25.192368>,  <29.414526, 27.684797, 25.245918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180885, 27.672794, 25.192368>,  <28.791483, 27.652790, 25.103117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180885, 27.672794, 25.192368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047495, -0.910286, 0.411247,
		0.223677, -0.410949, -0.883793,
		0.973506, 0.050010, 0.223128,
		29.472937, 27.687798, 25.259306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094481, 27.020967, 24.827005>,  <28.791483, 27.652790, 25.103117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094481, 27.020967, 24.827005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328733, 27.165314, 25.117332>,  <29.469284, 27.251923, 25.291529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328733, 27.165314, 25.117332>,  <29.094481, 27.020967, 24.827005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328733, 27.165314, 25.117332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066407, -0.871062, 0.486663,
		0.807853, -0.333204, -0.486157,
		0.585631, 0.360868, 0.725817,
		29.504423, 27.273575, 25.335077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440321, 26.405190, 25.075788>,  <29.094481, 27.020967, 24.827005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440321, 26.405190, 25.075788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572924, 26.648014, 25.364670>,  <29.652485, 26.793709, 25.537998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572924, 26.648014, 25.364670>,  <29.440321, 26.405190, 25.075788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572924, 26.648014, 25.364670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041107, -0.774058, 0.631779,
		0.942556, -0.179753, -0.281561,
		0.331509, 0.607061, 0.722204,
		29.672377, 26.830133, 25.581331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163691, 26.228718, 25.286062>,  <29.440321, 26.405190, 25.075788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163691, 26.228718, 25.286062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967003, 26.414139, 25.580906>,  <29.848989, 26.525393, 25.757812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967003, 26.414139, 25.580906>,  <30.163691, 26.228718, 25.286062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967003, 26.414139, 25.580906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330265, -0.683980, 0.650459,
		0.805691, 0.563284, 0.183231,
		-0.491719, 0.463554, 0.737109,
		29.819487, 26.553205, 25.802038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655661, 26.246798, 25.821012>,  <30.163691, 26.228718, 25.286062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655661, 26.246798, 25.821012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306047, 26.313286, 26.003632>,  <30.096279, 26.353180, 26.113203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306047, 26.313286, 26.003632>,  <30.655661, 26.246798, 25.821012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306047, 26.313286, 26.003632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246511, -0.658020, 0.711507,
		0.418685, 0.734425, 0.534156,
		-0.874034, 0.166222, 0.456547,
		30.043837, 26.363152, 26.140596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825348, 26.121965, 26.496834>,  <30.655661, 26.246798, 25.821012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825348, 26.121965, 26.496834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426380, 26.121109, 26.525547>,  <30.187000, 26.120596, 26.542774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426380, 26.121109, 26.525547>,  <30.825348, 26.121965, 26.496834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426380, 26.121109, 26.525547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050551, -0.730888, 0.680623,
		0.051008, 0.682494, 0.729109,
		-0.997418, -0.002140, 0.071782,
		30.127155, 26.120466, 26.547081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681082, 26.139196, 27.289312>,  <30.825348, 26.121965, 26.496834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681082, 26.139196, 27.289312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371216, 25.990047, 27.085014>,  <30.185295, 25.900558, 26.962437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371216, 25.990047, 27.085014>,  <30.681082, 26.139196, 27.289312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371216, 25.990047, 27.085014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022443, -0.823367, 0.567065,
		-0.631972, 0.427823, 0.646203,
		-0.774666, -0.372872, -0.510744,
		30.138817, 25.878185, 26.931791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429487, 25.679218, 27.850748>,  <30.681082, 26.139196, 27.289312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429487, 25.679218, 27.850748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270861, 25.561317, 27.502987>,  <30.175686, 25.490578, 27.294331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270861, 25.561317, 27.502987>,  <30.429487, 25.679218, 27.850748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270861, 25.561317, 27.502987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012526, -0.948702, 0.315922,
		-0.917921, 0.114393, 0.379914,
		-0.396565, -0.294750, -0.869401,
		30.151892, 25.472893, 27.242167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958263, 25.188623, 28.088692>,  <30.429487, 25.679218, 27.850748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958263, 25.188623, 28.088692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021145, 25.098354, 27.704117>,  <30.058874, 25.044193, 27.473372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021145, 25.098354, 27.704117>,  <29.958263, 25.188623, 28.088692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021145, 25.098354, 27.704117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009336, -0.973837, 0.227055,
		-0.987522, -0.026719, -0.155200,
		0.157206, -0.225671, -0.961436,
		30.068306, 25.030653, 27.415686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380466, 24.723940, 27.878473>,  <29.958263, 25.188623, 28.088692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380466, 24.723940, 27.878473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706310, 24.685356, 27.649700>,  <29.901817, 24.662207, 27.512436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706310, 24.685356, 27.649700>,  <29.380466, 24.723940, 27.878473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706310, 24.685356, 27.649700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032190, -0.977036, 0.210629,
		-0.579116, -0.189991, -0.792797,
		0.814609, -0.096458, -0.571934,
		29.950693, 24.656418, 27.478121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261803, 24.133583, 27.480038>,  <29.380466, 24.723940, 27.878473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261803, 24.133583, 27.480038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658718, 24.161236, 27.438885>,  <29.896868, 24.177828, 27.414192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658718, 24.161236, 27.438885>,  <29.261803, 24.133583, 27.480038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658718, 24.161236, 27.438885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091621, -0.968118, 0.233137,
		-0.083485, -0.240765, -0.966986,
		0.992288, 0.069132, -0.102883,
		29.956404, 24.181976, 27.408020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415266, 23.580191, 27.056904>,  <29.261803, 24.133583, 27.480038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415266, 23.580191, 27.056904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734341, 23.697681, 27.267586>,  <29.925785, 23.768177, 27.393995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734341, 23.697681, 27.267586>,  <29.415266, 23.580191, 27.056904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734341, 23.697681, 27.267586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119949, -0.933196, 0.338757,
		0.591022, -0.207045, -0.779631,
		0.797687, 0.293729, 0.526705,
		29.973646, 23.785801, 27.425598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953125, 23.027391, 26.931015>,  <29.415266, 23.580191, 27.056904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953125, 23.027391, 26.931015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039976, 23.220692, 27.270267>,  <30.092087, 23.336672, 27.473818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039976, 23.220692, 27.270267>,  <29.953125, 23.027391, 26.931015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039976, 23.220692, 27.270267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309818, -0.858050, 0.409589,
		0.925672, 0.173834, -0.336025,
		0.217125, 0.483252, 0.848130,
		30.105114, 23.365667, 27.524706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647160, 22.737148, 27.152153>,  <29.953125, 23.027391, 26.931015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647160, 22.737148, 27.152153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506708, 22.896973, 27.490871>,  <30.422438, 22.992867, 27.694101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506708, 22.896973, 27.490871>,  <30.647160, 22.737148, 27.152153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506708, 22.896973, 27.490871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234637, -0.837975, 0.492690,
		0.906452, 0.371687, 0.200485,
		-0.351128, 0.399559, 0.846795,
		30.401369, 23.016840, 27.744909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049118, 22.395624, 27.692137>,  <30.647160, 22.737148, 27.152153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049118, 22.395624, 27.692137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747906, 22.552380, 27.903557>,  <30.567179, 22.646433, 28.030409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747906, 22.552380, 27.903557>,  <31.049118, 22.395624, 27.692137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747906, 22.552380, 27.903557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145583, -0.684146, 0.714667,
		0.641678, 0.615114, 0.458131,
		-0.753030, 0.391890, 0.528552,
		30.521997, 22.669947, 28.062122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272312, 22.361660, 28.412865>,  <31.049118, 22.395624, 27.692137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272312, 22.361660, 28.412865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874077, 22.398212, 28.421406>,  <30.635136, 22.420143, 28.426531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874077, 22.398212, 28.421406>,  <31.272312, 22.361660, 28.412865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874077, 22.398212, 28.421406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057583, -0.774543, 0.629895,
		0.074098, 0.625886, 0.776387,
		-0.995587, 0.091380, 0.021352,
		30.575401, 22.425627, 28.427811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127218, 22.377104, 29.143009>,  <31.272312, 22.361660, 28.412865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127218, 22.377104, 29.143009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800449, 22.267262, 28.940140>,  <30.604387, 22.201357, 28.818419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800449, 22.267262, 28.940140>,  <31.127218, 22.377104, 29.143009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800449, 22.267262, 28.940140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161375, -0.735417, 0.658119,
		-0.553708, 0.619478, 0.556465,
		-0.816924, -0.274606, -0.507175,
		30.555372, 22.184879, 28.787987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589996, 22.142431, 29.634918>,  <31.127218, 22.377104, 29.143009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589996, 22.142431, 29.634918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497389, 21.971130, 29.285519>,  <30.441824, 21.868349, 29.075880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497389, 21.971130, 29.285519>,  <30.589996, 22.142431, 29.634918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497389, 21.971130, 29.285519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243681, -0.843740, 0.478250,
		-0.941816, 0.323579, 0.090986,
		-0.231520, -0.428252, -0.873498,
		30.427933, 21.842655, 29.023470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076719, 21.743368, 29.759851>,  <30.589996, 22.142431, 29.634918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076719, 21.743368, 29.759851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205437, 21.594051, 29.411804>,  <30.282667, 21.504461, 29.202976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205437, 21.594051, 29.411804>,  <30.076719, 21.743368, 29.759851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205437, 21.594051, 29.411804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164530, -0.927063, 0.336875,
		-0.932406, 0.034757, -0.359737,
		0.321789, -0.373292, -0.870118,
		30.301975, 21.482063, 29.150768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659018, 21.164125, 29.692465>,  <30.076719, 21.743368, 29.759851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659018, 21.164125, 29.692465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967134, 21.094524, 29.447067>,  <30.152004, 21.052765, 29.299828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967134, 21.094524, 29.447067>,  <29.659018, 21.164125, 29.692465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967134, 21.094524, 29.447067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009671, -0.965131, 0.261590,
		-0.637620, -0.195567, -0.745113,
		0.770290, -0.174002, -0.613496,
		30.198221, 21.042324, 29.263018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400753, 20.623640, 29.379702>,  <29.659018, 21.164125, 29.692465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400753, 20.623640, 29.379702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792770, 20.613121, 29.300884>,  <30.027981, 20.606810, 29.253593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792770, 20.613121, 29.300884>,  <29.400753, 20.623640, 29.379702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792770, 20.613121, 29.300884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014489, -0.979124, 0.202746,
		-0.198260, -0.201555, -0.959202,
		0.980042, -0.026298, -0.197041,
		30.086782, 20.605232, 29.241772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435141, 20.019459, 29.025606>,  <29.400753, 20.623640, 29.379702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435141, 20.019459, 29.025606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817427, 20.086002, 29.122707>,  <30.046799, 20.125929, 29.180969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817427, 20.086002, 29.122707>,  <29.435141, 20.019459, 29.025606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817427, 20.086002, 29.122707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077137, -0.937659, 0.338888,
		0.283998, -0.305156, -0.908969,
		0.955717, 0.166358, 0.242755,
		30.104141, 20.135910, 29.195534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798025, 19.428509, 28.789911>,  <29.435141, 20.019459, 29.025606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798025, 19.428509, 28.789911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046778, 19.592720, 29.056664>,  <30.196030, 19.691246, 29.216715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046778, 19.592720, 29.056664>,  <29.798025, 19.428509, 28.789911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046778, 19.592720, 29.056664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347273, -0.907837, 0.235018,
		0.701901, 0.085437, -0.707131,
		0.621881, 0.410527, 0.666882,
		30.233341, 19.715878, 29.256729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484583, 18.805935, 28.440247>,  <29.798025, 19.428509, 28.789911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484583, 18.805935, 28.440247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245590, 18.616646, 28.181301>,  <29.102196, 18.503073, 28.025934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245590, 18.616646, 28.181301>,  <29.484583, 18.805935, 28.440247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245590, 18.616646, 28.181301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208687, 0.871247, -0.444272,
		0.774252, -0.130348, -0.619309,
		-0.597481, -0.473220, -0.647363,
		29.066345, 18.474680, 27.987093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705553, 18.992397, 27.803667>,  <29.484583, 18.805935, 28.440247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705553, 18.992397, 27.803667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322306, 18.890015, 27.752293>,  <29.092358, 18.828585, 27.721468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322306, 18.890015, 27.752293>,  <29.705553, 18.992397, 27.803667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322306, 18.890015, 27.752293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158479, 0.847463, -0.506646,
		0.238523, -0.465073, -0.852534,
		-0.958119, -0.255955, -0.128435,
		29.034870, 18.813229, 27.713762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460079, 18.936049, 27.046141>,  <29.705553, 18.992397, 27.803667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460079, 18.936049, 27.046141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134441, 19.048027, 27.249660>,  <28.939058, 19.115215, 27.371773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134441, 19.048027, 27.249660>,  <29.460079, 18.936049, 27.046141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134441, 19.048027, 27.249660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090923, 0.803888, -0.587791,
		-0.573568, -0.524780, -0.628988,
		-0.814096, 0.279948, 0.508799,
		28.890213, 19.132011, 27.402300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982758, 19.225206, 26.496967>,  <29.460079, 18.936049, 27.046141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982758, 19.225206, 26.496967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863466, 19.344501, 26.859650>,  <28.791891, 19.416079, 27.077259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863466, 19.344501, 26.859650>,  <28.982758, 19.225206, 26.496967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863466, 19.344501, 26.859650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233711, 0.898201, -0.372310,
		-0.925440, -0.322941, -0.198167,
		-0.298228, 0.298237, 0.906706,
		28.773998, 19.433973, 27.131660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357149, 19.463877, 26.377878>,  <28.982758, 19.225206, 26.496967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357149, 19.463877, 26.377878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417479, 19.654026, 26.724583>,  <28.453676, 19.768116, 26.932606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417479, 19.654026, 26.724583>,  <28.357149, 19.463877, 26.377878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417479, 19.654026, 26.724583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162304, 0.876800, -0.452635,
		-0.975146, -0.072410, 0.209398,
		0.150825, 0.475371, 0.866761,
		28.462727, 19.796637, 26.984612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858776, 20.111134, 26.468882>,  <28.357149, 19.463877, 26.377878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858776, 20.111134, 26.468882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149548, 20.211060, 26.724747>,  <28.324011, 20.271015, 26.878265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149548, 20.211060, 26.724747>,  <27.858776, 20.111134, 26.468882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149548, 20.211060, 26.724747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133956, 0.965174, -0.224711,
		-0.673522, 0.077662, 0.735076,
		0.726928, 0.249815, 0.639663,
		28.367626, 20.286005, 26.916645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717072, 20.714975, 26.706589>,  <27.858776, 20.111134, 26.468882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717072, 20.714975, 26.706589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109852, 20.695568, 26.779716>,  <28.345520, 20.683924, 26.823593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109852, 20.695568, 26.779716>,  <27.717072, 20.714975, 26.706589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109852, 20.695568, 26.779716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113012, 0.925543, -0.361383,
		-0.151676, 0.375520, 0.914319,
		0.981948, -0.048516, 0.182821,
		28.404436, 20.681013, 26.834562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822783, 21.382261, 26.871187>,  <27.717072, 20.714975, 26.706589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822783, 21.382261, 26.871187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178310, 21.228210, 26.771847>,  <28.391626, 21.135780, 26.712242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178310, 21.228210, 26.771847>,  <27.822783, 21.382261, 26.871187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178310, 21.228210, 26.771847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237220, 0.850361, -0.469695,
		0.392080, 0.358560, 0.847176,
		0.888819, -0.385125, -0.248352,
		28.444956, 21.112673, 26.697342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439611, 21.882175, 27.089052>,  <27.822783, 21.382261, 26.871187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439611, 21.882175, 27.089052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578445, 21.651844, 26.792957>,  <28.661745, 21.513645, 26.615301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578445, 21.651844, 26.792957>,  <28.439611, 21.882175, 27.089052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578445, 21.651844, 26.792957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163792, 0.814394, -0.556718,
		0.923420, 0.071984, 0.376980,
		0.347085, -0.575831, -0.740237,
		28.682571, 21.479095, 26.570887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063091, 22.245640, 26.779383>,  <28.439611, 21.882175, 27.089052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063091, 22.245640, 26.779383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958586, 21.986000, 26.493610>,  <28.895884, 21.830215, 26.322147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958586, 21.986000, 26.493610>,  <29.063091, 22.245640, 26.779383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958586, 21.986000, 26.493610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195315, 0.689278, -0.697673,
		0.945301, -0.321815, -0.053304,
		-0.261263, -0.649100, -0.714431,
		28.880207, 21.791269, 26.279282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614155, 22.255518, 26.315582>,  <29.063091, 22.245640, 26.779383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614155, 22.255518, 26.315582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277922, 22.141617, 26.131264>,  <29.076181, 22.073277, 26.020674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277922, 22.141617, 26.131264>,  <29.614155, 22.255518, 26.315582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277922, 22.141617, 26.131264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129312, 0.720593, -0.681193,
		0.526018, -0.632187, -0.568898,
		-0.840585, -0.284754, -0.460794,
		29.025745, 22.056190, 25.993025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828236, 22.152023, 25.704870>,  <29.614155, 22.255518, 26.315582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828236, 22.152023, 25.704870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433529, 22.205925, 25.668800>,  <29.196705, 22.238266, 25.647158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433529, 22.205925, 25.668800>,  <29.828236, 22.152023, 25.704870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433529, 22.205925, 25.668800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161067, 0.750679, -0.640733,
		-0.018650, -0.646778, -0.762450,
		-0.986767, 0.134756, -0.090174,
		29.137499, 22.246351, 25.641748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702351, 22.212484, 24.944929>,  <29.828236, 22.152023, 25.704870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702351, 22.212484, 24.944929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369780, 22.364883, 25.106705>,  <29.170237, 22.456322, 25.203770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369780, 22.364883, 25.106705>,  <29.702351, 22.212484, 24.944929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369780, 22.364883, 25.106705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030322, 0.695694, -0.717699,
		-0.554807, -0.608977, -0.566865,
		-0.831427, 0.380996, 0.404441,
		29.120352, 22.479181, 25.228037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284037, 22.405018, 24.379614>,  <29.702351, 22.212484, 24.944929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284037, 22.405018, 24.379614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147139, 22.607121, 24.696495>,  <29.065001, 22.728382, 24.886623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147139, 22.607121, 24.696495>,  <29.284037, 22.405018, 24.379614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147139, 22.607121, 24.696495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211048, 0.780237, -0.588803,
		-0.915602, -0.368707, -0.160399,
		-0.342245, 0.505257, 0.792202,
		29.044466, 22.758698, 24.934156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667536, 22.711308, 24.162342>,  <29.284037, 22.405018, 24.379614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667536, 22.711308, 24.162342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810148, 22.914852, 24.475761>,  <28.895716, 23.036978, 24.663813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810148, 22.914852, 24.475761>,  <28.667536, 22.711308, 24.162342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810148, 22.914852, 24.475761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339519, 0.851892, -0.398757,
		-0.870410, -0.123861, 0.476493,
		0.356530, 0.508860, 0.783549,
		28.917107, 23.067511, 24.710827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168560, 23.251286, 24.211767>,  <28.667536, 22.711308, 24.162342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168560, 23.251286, 24.211767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442043, 23.390636, 24.468258>,  <28.606134, 23.474247, 24.622152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442043, 23.390636, 24.468258>,  <28.168560, 23.251286, 24.211767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442043, 23.390636, 24.468258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205236, 0.935021, -0.289162,
		-0.700300, 0.066100, 0.710782,
		0.683709, 0.348378, 0.641229,
		28.647156, 23.495150, 24.660627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025124, 23.920174, 24.520105>,  <28.168560, 23.251286, 24.211767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025124, 23.920174, 24.520105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416372, 23.959824, 24.593262>,  <28.651121, 23.983614, 24.637156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416372, 23.959824, 24.593262>,  <28.025124, 23.920174, 24.520105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416372, 23.959824, 24.593262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049003, 0.964221, -0.260531,
		-0.202171, 0.245869, 0.947985,
		0.978123, 0.099126, 0.182889,
		28.709810, 23.989561, 24.648129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038334, 24.573225, 24.781994>,  <28.025124, 23.920174, 24.520105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038334, 24.573225, 24.781994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413183, 24.497375, 24.664799>,  <28.638094, 24.451866, 24.594482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413183, 24.497375, 24.664799>,  <28.038334, 24.573225, 24.781994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413183, 24.497375, 24.664799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071760, 0.926270, -0.369965,
		0.341539, 0.325678, 0.881638,
		0.937124, -0.189623, -0.292987,
		28.694321, 24.440489, 24.576902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263798, 25.161982, 24.870173>,  <28.038334, 24.573225, 24.781994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263798, 25.161982, 24.870173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533560, 24.997055, 24.625168>,  <28.695417, 24.898098, 24.478165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533560, 24.997055, 24.625168>,  <28.263798, 25.161982, 24.870173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533560, 24.997055, 24.625168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040057, 0.848767, -0.527248,
		0.737274, 0.331043, 0.588929,
		0.674405, -0.412317, -0.612513,
		28.735882, 24.873360, 24.441414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645325, 25.706686, 24.839735>,  <28.263798, 25.161982, 24.870173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645325, 25.706686, 24.839735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727123, 25.475628, 24.523632>,  <28.776203, 25.336994, 24.333971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727123, 25.475628, 24.523632>,  <28.645325, 25.706686, 24.839735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727123, 25.475628, 24.523632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043090, 0.801224, -0.596811,
		0.977918, 0.156098, 0.138957,
		0.204497, -0.577644, -0.790258,
		28.788473, 25.302334, 24.286554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279644, 25.906460, 24.552137>,  <28.645325, 25.706686, 24.839735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279644, 25.906460, 24.552137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083178, 25.710171, 24.264263>,  <28.965298, 25.592398, 24.091539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083178, 25.710171, 24.264263>,  <29.279644, 25.906460, 24.552137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083178, 25.710171, 24.264263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045384, 0.810674, -0.583737,
		0.869883, -0.319374, -0.375905,
		-0.491167, -0.490723, -0.719685,
		28.935827, 25.562954, 24.048357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704939, 25.816561, 23.870470>,  <29.279644, 25.906460, 24.552137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704939, 25.816561, 23.870470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317205, 25.833340, 23.773617>,  <29.084564, 25.843407, 23.715504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317205, 25.833340, 23.773617>,  <29.704939, 25.816561, 23.870470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317205, 25.833340, 23.773617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189534, 0.754785, -0.627994,
		0.156417, -0.654630, -0.739590,
		-0.969335, 0.041949, -0.242135,
		29.026405, 25.845924, 23.700975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719524, 26.157778, 23.227062>,  <29.704939, 25.816561, 23.870470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719524, 26.157778, 23.227062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329416, 26.168377, 23.314831>,  <29.095352, 26.174736, 23.367493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329416, 26.168377, 23.314831>,  <29.719524, 26.157778, 23.227062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329416, 26.168377, 23.314831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088608, 0.862626, -0.498021,
		-0.202476, -0.505147, -0.838946,
		-0.975270, 0.026500, 0.219421,
		29.036835, 26.176327, 23.380657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410191, 26.506531, 22.560022>,  <29.719524, 26.157778, 23.227062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410191, 26.506531, 22.560022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141584, 26.527481, 22.855679>,  <28.980421, 26.540052, 23.033072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141584, 26.527481, 22.855679>,  <29.410191, 26.506531, 22.560022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141584, 26.527481, 22.855679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243867, 0.926308, -0.287196,
		-0.699713, -0.373108, -0.609255,
		-0.671513, 0.052378, 0.739139,
		28.940130, 26.543194, 23.077421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675644, 26.640068, 22.346920>,  <29.410191, 26.506531, 22.560022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675644, 26.640068, 22.346920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684244, 26.806370, 22.710609>,  <28.689405, 26.906151, 22.928823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684244, 26.806370, 22.710609>,  <28.675644, 26.640068, 22.346920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684244, 26.806370, 22.710609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477230, 0.803404, -0.356079,
		-0.878515, -0.426253, 0.215684,
		0.021502, 0.415752, 0.909223,
		28.690695, 26.931095, 22.983377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137897, 26.980661, 22.339426>,  <28.675644, 26.640068, 22.346920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137897, 26.980661, 22.339426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327719, 27.148243, 22.649078>,  <28.441612, 27.248791, 22.834869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327719, 27.148243, 22.649078>,  <28.137897, 26.980661, 22.339426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327719, 27.148243, 22.649078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501464, 0.851470, -0.153403,
		-0.723418, -0.315401, 0.614156,
		0.474552, 0.418952, 0.774132,
		28.470085, 27.273928, 22.881317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621374, 27.301414, 22.759090>,  <28.137897, 26.980661, 22.339426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621374, 27.301414, 22.759090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976765, 27.474701, 22.819668>,  <28.189999, 27.578672, 22.856014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976765, 27.474701, 22.819668>,  <27.621374, 27.301414, 22.759090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976765, 27.474701, 22.819668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431263, 0.900988, -0.047260,
		-0.156924, -0.023324, 0.987335,
		0.888475, 0.433217, 0.151445,
		28.243307, 27.604666, 22.865101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569942, 27.709682, 23.242186>,  <27.621374, 27.301414, 22.759090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569942, 27.709682, 23.242186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912231, 27.840469, 23.081772>,  <28.117605, 27.918941, 22.985523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912231, 27.840469, 23.081772>,  <27.569942, 27.709682, 23.242186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912231, 27.840469, 23.081772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367212, 0.929788, -0.025488,
		0.364544, 0.169076, 0.915708,
		0.855723, 0.326968, -0.401036,
		28.168949, 27.938560, 22.961462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691328, 28.309696, 23.589840>,  <27.569942, 27.709682, 23.242186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691328, 28.309696, 23.589840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919014, 28.344990, 23.262863>,  <28.055626, 28.366167, 23.066677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919014, 28.344990, 23.262863>,  <27.691328, 28.309696, 23.589840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919014, 28.344990, 23.262863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298526, 0.948554, -0.105488,
		0.766079, 0.304073, 0.566271,
		0.569214, 0.088235, -0.817441,
		28.089779, 28.371460, 23.017632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927578, 28.979303, 23.665148>,  <27.691328, 28.309696, 23.589840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927578, 28.979303, 23.665148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963743, 28.873032, 23.281223>,  <27.985443, 28.809269, 23.050869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963743, 28.873032, 23.281223>,  <27.927578, 28.979303, 23.665148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963743, 28.873032, 23.281223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224610, 0.933489, -0.279552,
		0.970245, 0.240859, 0.024727,
		0.090415, -0.265680, -0.959812,
		27.990868, 28.793327, 22.993280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455179, 29.465197, 23.327276>,  <27.927578, 28.979303, 23.665148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455179, 29.465197, 23.327276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201372, 29.307629, 23.061279>,  <28.049088, 29.213089, 22.901682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201372, 29.307629, 23.061279>,  <28.455179, 29.465197, 23.327276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201372, 29.307629, 23.061279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210409, 0.915918, -0.341792,
		0.743715, -0.076954, -0.664052,
		-0.634520, -0.393919, -0.664990,
		28.011017, 29.189453, 22.861782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583532, 29.888597, 22.751511>,  <28.455179, 29.465197, 23.327276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583532, 29.888597, 22.751511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245256, 29.698639, 22.654121>,  <28.042290, 29.584663, 22.595688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245256, 29.698639, 22.654121>,  <28.583532, 29.888597, 22.751511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245256, 29.698639, 22.654121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352757, 0.839781, -0.412711,
		0.400459, -0.263139, -0.877719,
		-0.845692, -0.474895, -0.243474,
		27.991549, 29.556170, 22.581079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436144, 30.095959, 22.004910>,  <28.583532, 29.888597, 22.751511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436144, 30.095959, 22.004910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099314, 29.962280, 22.174248>,  <27.897215, 29.882074, 22.275850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099314, 29.962280, 22.174248>,  <28.436144, 30.095959, 22.004910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099314, 29.962280, 22.174248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490249, 0.801490, -0.342447,
		-0.224864, -0.495911, -0.838754,
		-0.842076, -0.334194, 0.423346,
		27.846691, 29.862022, 22.301252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959755, 29.990658, 21.475492>,  <28.436144, 30.095959, 22.004910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959755, 29.990658, 21.475492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748573, 30.037792, 21.811916>,  <27.621864, 30.066072, 22.013771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748573, 30.037792, 21.811916>,  <27.959755, 29.990658, 21.475492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748573, 30.037792, 21.811916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471700, 0.782843, -0.405778,
		-0.706233, -0.610959, -0.357721,
		-0.527953, 0.117837, 0.841059,
		27.590187, 30.073143, 22.064234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212837, 30.039028, 21.286158>,  <27.959755, 29.990658, 21.475492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212837, 30.039028, 21.286158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230854, 30.207455, 21.648521>,  <27.241665, 30.308512, 21.865940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230854, 30.207455, 21.648521>,  <27.212837, 30.039028, 21.286158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230854, 30.207455, 21.648521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588832, 0.743745, -0.316417,
		-0.806999, -0.519177, 0.281438,
		0.045041, 0.421068, 0.905910,
		27.244366, 30.333775, 21.920294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504969, 30.200335, 21.509186>,  <27.212837, 30.039028, 21.286158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504969, 30.200335, 21.509186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730009, 30.430882, 21.746262>,  <26.865034, 30.569210, 21.888508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730009, 30.430882, 21.746262>,  <26.504969, 30.200335, 21.509186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730009, 30.430882, 21.746262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530768, 0.801466, -0.275568,
		-0.633849, -0.159546, 0.756823,
		0.562602, 0.576366, 0.592690,
		26.898790, 30.603790, 21.924068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004225, 30.641397, 21.877405>,  <26.504969, 30.200335, 21.509186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004225, 30.641397, 21.877405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363125, 30.812515, 21.921112>,  <26.578465, 30.915186, 21.947336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363125, 30.812515, 21.921112>,  <26.004225, 30.641397, 21.877405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363125, 30.812515, 21.921112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416008, 0.902008, -0.115409,
		-0.147930, 0.058095, 0.987290,
		0.897248, 0.427793, 0.109266,
		26.632299, 30.940853, 21.953892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954573, 31.068813, 22.394262>,  <26.004225, 30.641397, 21.877405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954573, 31.068813, 22.394262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245087, 31.219200, 22.164078>,  <26.419395, 31.309433, 22.025967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245087, 31.219200, 22.164078>,  <25.954573, 31.068813, 22.394262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245087, 31.219200, 22.164078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571229, 0.795792, -0.201028,
		0.382366, 0.474724, 0.792738,
		0.726287, 0.375969, -0.575460,
		26.462973, 31.331991, 21.991440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997131, 31.810839, 22.498470>,  <25.954573, 31.068813, 22.394262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997131, 31.810839, 22.498470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216257, 31.793724, 22.164268>,  <26.347733, 31.783455, 21.963747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216257, 31.793724, 22.164268>,  <25.997131, 31.810839, 22.498470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216257, 31.793724, 22.164268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524697, 0.760285, -0.382962,
		0.651606, 0.648179, 0.394047,
		0.547816, -0.042785, -0.835504,
		26.380602, 31.780890, 21.913618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315777, 32.425076, 22.432629>,  <25.997131, 31.810839, 22.498470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.315777, 32.425076, 22.432629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300928, 32.262360, 22.067520>,  <26.292019, 32.164730, 21.848455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300928, 32.262360, 22.067520>,  <26.315777, 32.425076, 22.432629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300928, 32.262360, 22.067520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518249, 0.788804, -0.330464,
		0.854424, 0.460774, -0.240097,
		-0.037121, -0.406786, -0.912768,
		26.289791, 32.140324, 21.793690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959068, 32.964867, 21.976261>,  <26.315777, 32.425076, 22.432629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959068, 32.964867, 21.976261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997051, 32.650005, 21.732498>,  <26.019840, 32.461090, 21.586241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997051, 32.650005, 21.732498>,  <25.959068, 32.964867, 21.976261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997051, 32.650005, 21.732498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523418, 0.481241, -0.703165,
		0.846769, 0.385744, -0.366312,
		0.094957, -0.787152, -0.609406,
		26.025537, 32.413860, 21.549677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243025, 32.632538, 22.058804>,  <25.959068, 32.964867, 21.976261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243025, 32.632538, 22.058804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871536, 32.686005, 22.197140>,  <24.648643, 32.718086, 22.280142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871536, 32.686005, 22.197140>,  <25.243025, 32.632538, 22.058804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871536, 32.686005, 22.197140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109496, 0.990030, -0.088603,
		-0.354237, -0.044419, -0.934100,
		-0.928723, 0.133667, 0.345841,
		24.592918, 32.726105, 22.300892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816866, 32.967030, 21.562782>,  <25.243025, 32.632538, 22.058804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816866, 32.967030, 21.562782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710983, 33.045361, 21.940475>,  <24.647453, 33.092361, 22.167091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710983, 33.045361, 21.940475>,  <24.816866, 32.967030, 21.562782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.710983, 33.045361, 21.940475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214425, 0.966603, -0.140357,
		-0.940187, 0.165314, -0.297859,
		-0.264709, 0.195830, 0.944235,
		24.631571, 33.104111, 22.223745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.223724, 33.393890, 21.628248>,  <24.816866, 32.967030, 21.562782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.223724, 33.393890, 21.628248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487089, 33.446934, 21.924603>,  <24.645107, 33.478760, 22.102415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487089, 33.446934, 21.924603>,  <24.223724, 33.393890, 21.628248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487089, 33.446934, 21.924603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318156, 0.843052, -0.433637,
		-0.682109, 0.521228, 0.512883,
		0.658410, 0.132611, 0.740885,
		24.684612, 33.486717, 22.146868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.314917, 34.126431, 21.536976>,  <24.223724, 33.393890, 21.628248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.314917, 34.126431, 21.536976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.144207, 34.013496, 21.880638>,  <24.041780, 33.945736, 22.086836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.144207, 34.013496, 21.880638>,  <24.314917, 34.126431, 21.536976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.144207, 34.013496, 21.880638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196909, 0.956235, 0.216428,
		-0.882661, -0.076810, -0.463691,
		-0.426774, -0.282338, 0.859156,
		24.016174, 33.928795, 22.138386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.775448, 34.439640, 21.603598>,  <24.314917, 34.126431, 21.536976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.775448, 34.439640, 21.603598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.906141, 34.362591, 21.973709>,  <23.984558, 34.316360, 22.195776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.906141, 34.362591, 21.973709>,  <23.775448, 34.439640, 21.603598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.906141, 34.362591, 21.973709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338447, 0.890239, 0.304840,
		-0.882439, -0.412760, 0.225678,
		0.326733, -0.192622, 0.925279,
		24.004162, 34.304806, 22.251293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.311041, 34.640301, 22.166754>,  <23.775448, 34.439640, 21.603598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.311041, 34.640301, 22.166754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.646162, 34.616852, 22.383881>,  <23.847235, 34.602783, 22.514156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.646162, 34.616852, 22.383881>,  <23.311041, 34.640301, 22.166754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.646162, 34.616852, 22.383881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183849, 0.905862, 0.381593,
		-0.514087, -0.419496, 0.748156,
		0.837803, -0.058624, 0.542816,
		23.897503, 34.599266, 22.546726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.397911, 35.430634, 21.969061>,  <23.311041, 34.640301, 22.166754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.397911, 35.430634, 21.969061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.188700, 35.759216, 22.059963>,  <23.063173, 35.956367, 22.114506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.188700, 35.759216, 22.059963>,  <23.397911, 35.430634, 21.969061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.188700, 35.759216, 22.059963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064538, 0.304040, -0.950471,
		-0.849868, -0.482456, -0.212037,
		-0.523028, 0.821459, 0.227257,
		23.031792, 36.005653, 22.128141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.731939, 35.488178, 21.474670>,  <23.397911, 35.430634, 21.969061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.731939, 35.488178, 21.474670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.845873, 35.843967, 21.617611>,  <22.914234, 36.057442, 21.703375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.845873, 35.843967, 21.617611>,  <22.731939, 35.488178, 21.474670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.845873, 35.843967, 21.617611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106876, 0.399940, -0.910289,
		-0.952600, 0.221090, 0.208980,
		0.284835, 0.889476, 0.357353,
		22.931324, 36.110809, 21.724817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.232002, 35.897377, 21.094641>,  <22.731939, 35.488178, 21.474670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.232002, 35.897377, 21.094641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.533110, 36.130562, 21.216946>,  <22.713774, 36.270473, 21.290329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.533110, 36.130562, 21.216946>,  <22.232002, 35.897377, 21.094641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.533110, 36.130562, 21.216946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098985, 0.358959, -0.928089,
		-0.650799, 0.728904, 0.212509,
		0.752770, 0.582964, 0.305761,
		22.758942, 36.305450, 21.308674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.946939, 36.540783, 21.010996>,  <22.232002, 35.897377, 21.094641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.946939, 36.540783, 21.010996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.344948, 36.521194, 20.976273>,  <22.583754, 36.509441, 20.955439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.344948, 36.521194, 20.976273>,  <21.946939, 36.540783, 21.010996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.344948, 36.521194, 20.976273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049767, 0.510508, -0.858431,
		0.086352, 0.858477, 0.505529,
		0.995021, -0.048968, -0.086807,
		22.643454, 36.506504, 20.950230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.110998, 37.196129, 20.603848>,  <21.946939, 36.540783, 21.010996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.110998, 37.196129, 20.603848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.481541, 37.049091, 20.636696>,  <22.703865, 36.960869, 20.656404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.481541, 37.049091, 20.636696>,  <22.110998, 37.196129, 20.603848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.481541, 37.049091, 20.636696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281258, 0.530083, -0.799941,
		0.250519, 0.764127, 0.594433,
		0.926355, -0.367590, 0.082121,
		22.759447, 36.938816, 20.661331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.442509, 37.743015, 20.452379>,  <22.110998, 37.196129, 20.603848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.442509, 37.743015, 20.452379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689993, 37.432259, 20.405670>,  <22.838484, 37.245804, 20.377645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689993, 37.432259, 20.405670>,  <22.442509, 37.743015, 20.452379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.689993, 37.432259, 20.405670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354681, 0.408850, -0.840859,
		0.700999, 0.478831, 0.528509,
		0.618710, -0.776893, -0.116771,
		22.875607, 37.199192, 20.370640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.158405, 37.999096, 20.318033>,  <22.442509, 37.743015, 20.452379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.158405, 37.999096, 20.318033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.151133, 37.623058, 20.181862>,  <23.146769, 37.397434, 20.100159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.151133, 37.623058, 20.181862>,  <23.158405, 37.999096, 20.318033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.151133, 37.623058, 20.181862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461686, 0.294118, -0.836863,
		0.886857, -0.172388, 0.428681,
		-0.018183, -0.940094, -0.340430,
		23.145678, 37.341030, 20.079733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.714685, 38.012352, 19.927179>,  <23.158405, 37.999096, 20.318033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.714685, 38.012352, 19.927179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.518131, 37.689941, 19.795200>,  <23.400198, 37.496494, 19.716013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.518131, 37.689941, 19.795200>,  <23.714685, 38.012352, 19.927179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.518131, 37.689941, 19.795200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451443, 0.088252, -0.887925,
		0.744807, -0.585267, 0.320507,
		-0.491387, -0.806024, -0.329946,
		23.370714, 37.448135, 19.696217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.203342, 37.562191, 19.647093>,  <23.714685, 38.012352, 19.927179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.203342, 37.562191, 19.647093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.859301, 37.485947, 19.457825>,  <23.652876, 37.440201, 19.344265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.859301, 37.485947, 19.457825>,  <24.203342, 37.562191, 19.647093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.859301, 37.485947, 19.457825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475145, 0.038180, -0.879079,
		0.185626, -0.980923, 0.057728,
		-0.860105, -0.190609, -0.473168,
		23.601269, 37.428764, 19.315874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379208, 37.048752, 19.075928>,  <24.203342, 37.562191, 19.647093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379208, 37.048752, 19.075928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.034277, 37.199627, 18.940796>,  <23.827318, 37.290150, 18.859716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.034277, 37.199627, 18.940796>,  <24.379208, 37.048752, 19.075928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.034277, 37.199627, 18.940796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387679, 0.062613, -0.919665,
		-0.325731, -0.924019, -0.200220,
		-0.862325, 0.377185, -0.337828,
		23.775579, 37.312782, 18.839447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.287498, 36.758945, 18.456442>,  <24.379208, 37.048752, 19.075928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.287498, 36.758945, 18.456442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.041681, 37.073174, 18.427555>,  <23.894190, 37.261711, 18.410223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.041681, 37.073174, 18.427555>,  <24.287498, 36.758945, 18.456442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.041681, 37.073174, 18.427555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221649, 0.084085, -0.971494,
		-0.757104, -0.613034, -0.225795,
		-0.614545, 0.785569, -0.072217,
		23.857317, 37.308846, 18.405890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.942942, 36.657356, 17.818722>,  <24.287498, 36.758945, 18.456442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.942942, 36.657356, 17.818722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.885586, 37.044708, 17.900379>,  <23.851173, 37.277119, 17.949373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.885586, 37.044708, 17.900379>,  <23.942942, 36.657356, 17.818722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.885586, 37.044708, 17.900379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168782, 0.227183, -0.959114,
		-0.975168, -0.103070, -0.196021,
		-0.143388, 0.968382, 0.204145,
		23.842569, 37.335224, 17.961622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.392570, 36.995514, 17.352030>,  <23.942942, 36.657356, 17.818722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.392570, 36.995514, 17.352030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582819, 37.327904, 17.467453>,  <23.696968, 37.527336, 17.536707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582819, 37.327904, 17.467453>,  <23.392570, 36.995514, 17.352030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.582819, 37.327904, 17.467453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010324, 0.333289, -0.942768,
		-0.879590, 0.445421, 0.167098,
		0.475621, 0.830975, 0.288559,
		23.725506, 37.577194, 17.554020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.056400, 37.475979, 17.023535>,  <23.392570, 36.995514, 17.352030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.056400, 37.475979, 17.023535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.393587, 37.672489, 17.111221>,  <23.595900, 37.790394, 17.163834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.393587, 37.672489, 17.111221>,  <23.056400, 37.475979, 17.023535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.393587, 37.672489, 17.111221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100283, 0.256852, -0.961234,
		-0.528535, 0.832273, 0.167251,
		0.842968, 0.491273, 0.219218,
		23.646477, 37.819870, 17.176987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.994919, 38.157635, 16.632389>,  <23.056400, 37.475979, 17.023535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.994919, 38.157635, 16.632389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.389671, 38.143700, 16.695442>,  <23.626524, 38.135338, 16.733274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.389671, 38.143700, 16.695442>,  <22.994919, 38.157635, 16.632389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.389671, 38.143700, 16.695442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159518, 0.360463, -0.919033,
		-0.024808, 0.932123, 0.361291,
		0.986883, -0.034833, 0.157632,
		23.685736, 38.133251, 16.742731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.242352, 38.767227, 16.387615>,  <22.994919, 38.157635, 16.632389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.242352, 38.767227, 16.387615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.558649, 38.522415, 16.392384>,  <23.748428, 38.375526, 16.395245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.558649, 38.522415, 16.392384>,  <23.242352, 38.767227, 16.387615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.558649, 38.522415, 16.392384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234435, 0.284786, -0.929482,
		0.565477, 0.737778, 0.368674,
		0.790744, -0.612031, 0.011921,
		23.795872, 38.338806, 16.395960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.747421, 39.179512, 16.026421>,  <23.242352, 38.767227, 16.387615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.747421, 39.179512, 16.026421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.900560, 38.810028, 16.031830>,  <23.992443, 38.588337, 16.035074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.900560, 38.810028, 16.031830>,  <23.747421, 39.179512, 16.026421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.900560, 38.810028, 16.031830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436149, 0.167828, -0.884086,
		0.814372, 0.344367, 0.467128,
		0.382848, -0.923713, 0.013521,
		24.015415, 38.532913, 16.035887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.412632, 39.230343, 15.846108>,  <23.747421, 39.179512, 16.026421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.412632, 39.230343, 15.846108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.308283, 38.855038, 15.755240>,  <24.245674, 38.629856, 15.700720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.308283, 38.855038, 15.755240>,  <24.412632, 39.230343, 15.846108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.308283, 38.855038, 15.755240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479331, 0.078369, -0.874128,
		0.837966, -0.336926, 0.429294,
		-0.260873, -0.938264, -0.227169,
		24.230021, 38.573559, 15.687090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.092506, 38.859444, 15.488421>,  <24.412632, 39.230343, 15.846108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.092506, 38.859444, 15.488421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765730, 38.647072, 15.398341>,  <24.569664, 38.519650, 15.344293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765730, 38.647072, 15.398341>,  <25.092506, 38.859444, 15.488421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.765730, 38.647072, 15.398341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242894, 0.037415, -0.969331,
		0.523077, -0.846586, 0.098395,
		-0.816941, -0.530935, -0.225202,
		24.520647, 38.487793, 15.330781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403042, 38.285023, 15.090527>,  <25.092506, 38.859444, 15.488421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403042, 38.285023, 15.090527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011473, 38.323978, 15.018720>,  <24.776531, 38.347351, 14.975636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011473, 38.323978, 15.018720>,  <25.403042, 38.285023, 15.090527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.011473, 38.323978, 15.018720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201265, 0.310694, -0.928957,
		-0.034696, -0.945507, -0.323747,
		-0.978922, 0.097390, -0.179518,
		24.717796, 38.353195, 14.964865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396408, 38.063862, 14.403238>,  <25.403042, 38.285023, 15.090527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396408, 38.063862, 14.403238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057951, 38.269039, 14.461106>,  <24.854877, 38.392147, 14.495828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057951, 38.269039, 14.461106>,  <25.396408, 38.063862, 14.403238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.057951, 38.269039, 14.461106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119451, 0.447068, -0.886488,
		-0.519398, -0.732814, -0.439555,
		-0.846142, 0.512946, 0.144671,
		24.804108, 38.422924, 14.504507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876045, 37.945015, 13.744744>,  <25.396408, 38.063862, 14.403238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876045, 37.945015, 13.744744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812868, 38.280514, 13.953191>,  <24.774961, 38.481812, 14.078259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812868, 38.280514, 13.953191>,  <24.876045, 37.945015, 13.744744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.812868, 38.280514, 13.953191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061358, 0.518384, -0.852944,
		-0.985540, -0.166690, -0.030411,
		-0.157942, 0.838744, 0.521116,
		24.765486, 38.532139, 14.109526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.212366, 38.333511, 13.589066>,  <24.876045, 37.945015, 13.744744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.212366, 38.333511, 13.589066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518435, 38.565742, 13.700377>,  <24.702076, 38.705082, 13.767164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518435, 38.565742, 13.700377>,  <24.212366, 38.333511, 13.589066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.518435, 38.565742, 13.700377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026464, 0.403501, -0.914597,
		-0.643282, 0.707188, 0.293383,
		0.765172, 0.580579, 0.278280,
		24.747986, 38.739918, 13.783861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.663361, 38.520226, 13.206898>,  <24.212366, 38.333511, 13.589066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.663361, 38.520226, 13.206898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.373262, 38.251427, 13.266814>,  <23.199203, 38.090145, 13.302764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.373262, 38.251427, 13.266814>,  <23.663361, 38.520226, 13.206898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.373262, 38.251427, 13.266814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662549, 0.740359, 0.113565,
		-0.187215, -0.016882, -0.982174,
		-0.725244, -0.672000, 0.149791,
		23.155689, 38.049828, 13.311751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.117163, 38.643814, 12.767983>,  <23.663361, 38.520226, 13.206898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.117163, 38.643814, 12.767983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.021336, 38.479122, 13.119685>,  <22.963839, 38.380306, 13.330707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.021336, 38.479122, 13.119685>,  <23.117163, 38.643814, 12.767983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.021336, 38.479122, 13.119685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591495, 0.780047, 0.204110,
		-0.769897, -0.471176, -0.430408,
		-0.239567, -0.411728, 0.879254,
		22.949465, 38.355602, 13.383461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.376543, 38.942844, 12.589064>,  <23.117163, 38.643814, 12.767983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.376543, 38.942844, 12.589064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.519348, 39.288795, 12.730218>,  <22.605032, 39.496365, 12.814911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.519348, 39.288795, 12.730218>,  <22.376543, 38.942844, 12.589064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.519348, 39.288795, 12.730218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812356, 0.100987, 0.574352,
		0.461107, -0.491720, 0.738642,
		0.357014, 0.864878, 0.352885,
		22.626451, 39.548260, 12.836083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.478825, 38.921398, 13.295252>,  <22.376543, 38.942844, 12.589064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.478825, 38.921398, 13.295252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419842, 39.304195, 13.195323>,  <22.384453, 39.533875, 13.135365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419842, 39.304195, 13.195323>,  <22.478825, 38.921398, 13.295252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.419842, 39.304195, 13.195323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688296, 0.082101, 0.720769,
		0.710285, 0.278235, 0.646591,
		-0.147458, 0.956998, -0.249823,
		22.375605, 39.591293, 13.120376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.594803, 39.267509, 13.863424>,  <22.478825, 38.921398, 13.295252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.594803, 39.267509, 13.863424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.336205, 39.458172, 13.625148>,  <22.181046, 39.572567, 13.482182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.336205, 39.458172, 13.625148>,  <22.594803, 39.267509, 13.863424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.336205, 39.458172, 13.625148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634879, 0.096848, 0.766518,
		0.423054, 0.873741, 0.240005,
		-0.646494, 0.476652, -0.595692,
		22.142256, 39.601166, 13.446441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.467039, 40.006500, 13.948856>,  <22.594803, 39.267509, 13.863424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.467039, 40.006500, 13.948856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.151836, 39.797668, 13.818334>,  <21.962715, 39.672371, 13.740020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.151836, 39.797668, 13.818334>,  <22.467039, 40.006500, 13.948856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.151836, 39.797668, 13.818334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416354, 0.061462, 0.907123,
		-0.453536, 0.850679, -0.265803,
		-0.788007, -0.522081, -0.326308,
		21.915434, 39.641045, 13.720441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.791498, 40.381767, 14.138219>,  <22.467039, 40.006500, 13.948856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.791498, 40.381767, 14.138219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.706242, 39.991093, 14.127952>,  <21.655088, 39.756687, 14.121792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.706242, 39.991093, 14.127952>,  <21.791498, 40.381767, 14.138219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.706242, 39.991093, 14.127952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395613, 0.062253, 0.916305,
		-0.893343, 0.205457, -0.399657,
		-0.213141, -0.976684, -0.025668,
		21.642300, 39.698086, 14.120252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.103384, 40.342468, 14.463575>,  <21.791498, 40.381767, 14.138219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.103384, 40.342468, 14.463575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.291199, 39.989384, 14.471082>,  <21.403887, 39.777531, 14.475586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.291199, 39.989384, 14.471082>,  <21.103384, 40.342468, 14.463575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.291199, 39.989384, 14.471082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331986, -0.156816, 0.930158,
		-0.818121, -0.442972, -0.366679,
		0.469535, -0.882714, 0.018766,
		21.432060, 39.724571, 14.476711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.643692, 39.976360, 14.864124>,  <21.103384, 40.342468, 14.463575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.643692, 39.976360, 14.864124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.009287, 39.814064, 14.864398>,  <21.228643, 39.716686, 14.864562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.009287, 39.814064, 14.864398>,  <20.643692, 39.976360, 14.864124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.009287, 39.814064, 14.864398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114928, -0.257271, 0.959481,
		-0.389130, -0.877030, -0.281774,
		0.913985, -0.405746, 0.000683,
		21.283484, 39.692341, 14.864603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.568640, 39.435509, 15.366856>,  <20.643692, 39.976360, 14.864124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.568640, 39.435509, 15.366856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963194, 39.471500, 15.311803>,  <21.199926, 39.493095, 15.278771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963194, 39.471500, 15.311803>,  <20.568640, 39.435509, 15.366856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.963194, 39.471500, 15.311803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154509, -0.220739, 0.963017,
		0.056274, -0.971173, -0.231637,
		0.986387, 0.089983, -0.137633,
		21.259109, 39.498497, 15.270513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.972244, 38.763218, 15.549987>,  <20.568640, 39.435509, 15.366856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.972244, 38.763218, 15.549987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.195271, 39.091343, 15.600907>,  <21.329086, 39.288219, 15.631459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.195271, 39.091343, 15.600907>,  <20.972244, 38.763218, 15.549987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.195271, 39.091343, 15.600907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056006, -0.190172, 0.980152,
		0.828242, -0.539369, -0.151976,
		0.557565, 0.820314, 0.127300,
		21.362539, 39.337437, 15.639097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.518988, 38.476078, 16.036283>,  <20.972244, 38.763218, 15.549987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.518988, 38.476078, 16.036283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.515854, 38.876019, 16.042534>,  <21.513973, 39.115982, 16.046284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.515854, 38.876019, 16.042534>,  <21.518988, 38.476078, 16.036283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.515854, 38.876019, 16.042534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061578, -0.015114, 0.997988,
		0.998072, 0.008783, -0.061450,
		-0.007836, 0.999847, 0.015626,
		21.513502, 39.175972, 16.047222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.048420, 38.649620, 16.510469>,  <21.518988, 38.476078, 16.036283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.048420, 38.649620, 16.510469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.850082, 38.996647, 16.495190>,  <21.731079, 39.204865, 16.486023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.850082, 38.996647, 16.495190>,  <22.048420, 38.649620, 16.510469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.850082, 38.996647, 16.495190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063584, 0.080137, 0.994754,
		0.866081, 0.490814, -0.094900,
		-0.495844, 0.867571, -0.038197,
		21.701330, 39.256920, 16.483730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.435339, 39.036022, 16.891098>,  <22.048420, 38.649620, 16.510469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.435339, 39.036022, 16.891098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.090626, 39.237881, 16.870487>,  <21.883797, 39.358997, 16.858122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.090626, 39.237881, 16.870487>,  <22.435339, 39.036022, 16.891098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.090626, 39.237881, 16.870487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083148, 0.240725, 0.967025,
		0.500413, 0.829084, -0.249414,
		-0.861785, 0.504650, -0.051525,
		21.832090, 39.389275, 16.855030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.583326, 39.709042, 17.208817>,  <22.435339, 39.036022, 16.891098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.583326, 39.709042, 17.208817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.190258, 39.635071, 17.213882>,  <21.954416, 39.590687, 17.216923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.190258, 39.635071, 17.213882>,  <22.583326, 39.709042, 17.208817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.190258, 39.635071, 17.213882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041613, 0.286666, 0.957126,
		-0.180632, 0.940012, -0.289394,
		-0.982670, -0.184930, 0.012665,
		21.895456, 39.579594, 17.217682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.281458, 40.363739, 17.458263>,  <22.583326, 39.709042, 17.208817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.281458, 40.363739, 17.458263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.033342, 40.055233, 17.515392>,  <21.884474, 39.870129, 17.549669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.033342, 40.055233, 17.515392>,  <22.281458, 40.363739, 17.458263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.033342, 40.055233, 17.515392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147810, 0.063885, 0.986951,
		-0.770320, 0.633305, 0.074373,
		-0.620289, -0.771261, 0.142820,
		21.847256, 39.823856, 17.558239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.693567, 40.577000, 18.062090>,  <22.281458, 40.363739, 17.458263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.693567, 40.577000, 18.062090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.690580, 40.177696, 18.038685>,  <21.688787, 39.938114, 18.024641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.690580, 40.177696, 18.038685>,  <21.693567, 40.577000, 18.062090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.690580, 40.177696, 18.038685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112399, -0.057307, 0.992009,
		-0.993635, 0.013985, -0.111775,
		-0.007468, -0.998259, -0.058514,
		21.688339, 39.878220, 18.021130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.086500, 40.261082, 18.400820>,  <21.693567, 40.577000, 18.062090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.086500, 40.261082, 18.400820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.319450, 39.936157, 18.388271>,  <21.459221, 39.741203, 18.380743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.319450, 39.936157, 18.388271>,  <21.086500, 40.261082, 18.400820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.319450, 39.936157, 18.388271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243844, -0.211372, 0.946500,
		-0.775486, -0.543570, -0.321176,
		0.582376, -0.812314, -0.031370,
		21.494164, 39.692463, 18.378860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.708061, 39.669056, 18.578068>,  <21.086500, 40.261082, 18.400820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.708061, 39.669056, 18.578068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.094984, 39.599346, 18.651764>,  <21.327137, 39.557522, 18.695982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.094984, 39.599346, 18.651764>,  <20.708061, 39.669056, 18.578068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.094984, 39.599346, 18.651764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219671, -0.212738, 0.952096,
		-0.126730, -0.961443, -0.244065,
		0.967308, -0.174273, 0.184240,
		21.385176, 39.547066, 18.707035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.571072, 39.079632, 18.909655>,  <20.708061, 39.669056, 18.578068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.571072, 39.079632, 18.909655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.955517, 39.148880, 18.995720>,  <21.186184, 39.190430, 19.047359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.955517, 39.148880, 18.995720>,  <20.571072, 39.079632, 18.909655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.955517, 39.148880, 18.995720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067439, -0.608406, 0.790755,
		0.267802, -0.774514, -0.573071,
		0.961111, 0.173118, 0.215165,
		21.243851, 39.200817, 19.060268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.845798, 38.397015, 19.065767>,  <20.571072, 39.079632, 18.909655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.845798, 38.397015, 19.065767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.077110, 38.668583, 19.246723>,  <21.215897, 38.831524, 19.355297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.077110, 38.668583, 19.246723>,  <20.845798, 38.397015, 19.065767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.077110, 38.668583, 19.246723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013916, -0.562636, 0.826587,
		0.815720, -0.471702, -0.334809,
		0.578279, 0.678924, 0.452390,
		21.250593, 38.872261, 19.382441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.398708, 37.987640, 19.432852>,  <20.845798, 38.397015, 19.065767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.398708, 37.987640, 19.432852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.375029, 38.347061, 19.606796>,  <21.360821, 38.562714, 19.711163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.375029, 38.347061, 19.606796>,  <21.398708, 37.987640, 19.432852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.375029, 38.347061, 19.606796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149533, -0.422729, 0.893834,
		0.986983, 0.117941, -0.109337,
		-0.059200, 0.898549, 0.434862,
		21.357269, 38.616627, 19.737255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.935757, 38.029194, 19.860941>,  <21.398708, 37.987640, 19.432852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.935757, 38.029194, 19.860941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.685516, 38.311382, 19.994167>,  <21.535372, 38.480698, 20.074102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.685516, 38.311382, 19.994167>,  <21.935757, 38.029194, 19.860941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.685516, 38.311382, 19.994167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327229, -0.150266, 0.932921,
		0.708200, 0.692623, -0.136845,
		-0.625599, 0.705474, 0.333064,
		21.497837, 38.523026, 20.094086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.342716, 38.490803, 20.401873>,  <21.935757, 38.029194, 19.860941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.342716, 38.490803, 20.401873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.953075, 38.497765, 20.492046>,  <21.719290, 38.501942, 20.546150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.953075, 38.497765, 20.492046>,  <22.342716, 38.490803, 20.401873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.953075, 38.497765, 20.492046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211315, -0.284568, 0.935076,
		0.080429, 0.958498, 0.273520,
		-0.974103, 0.017408, 0.225432,
		21.660845, 38.502987, 20.559675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.308844, 38.676105, 21.177099>,  <22.342716, 38.490803, 20.401873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.308844, 38.676105, 21.177099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.927830, 38.576141, 21.107559>,  <21.699223, 38.516163, 21.065836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.927830, 38.576141, 21.107559>,  <22.308844, 38.676105, 21.177099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.927830, 38.576141, 21.107559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158431, -0.080706, 0.984066,
		-0.259961, 0.964899, 0.037282,
		-0.952533, -0.249912, -0.173850,
		21.642069, 38.501167, 21.055405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.891109, 38.999290, 21.786966>,  <22.308844, 38.676105, 21.177099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.891109, 38.999290, 21.786966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.649927, 38.731537, 21.613358>,  <21.505219, 38.570885, 21.509192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.649927, 38.731537, 21.613358>,  <21.891109, 38.999290, 21.786966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.649927, 38.731537, 21.613358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452874, -0.160692, 0.876974,
		-0.656774, 0.725332, -0.206256,
		-0.602954, -0.669381, -0.434023,
		21.469042, 38.530724, 21.483150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.228516, 39.124439, 21.950460>,  <21.891109, 38.999290, 21.786966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.228516, 39.124439, 21.950460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.244270, 38.733421, 21.867664>,  <21.253723, 38.498810, 21.817986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.244270, 38.733421, 21.867664>,  <21.228516, 39.124439, 21.950460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.244270, 38.733421, 21.867664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445085, -0.202631, 0.872262,
		-0.894622, 0.057772, -0.443074,
		0.039388, -0.977549, -0.206992,
		21.256086, 38.440155, 21.805567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.566389, 38.911457, 22.088482>,  <21.228516, 39.124439, 21.950460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.566389, 38.911457, 22.088482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791883, 38.581097, 22.084732>,  <20.927179, 38.382881, 22.082481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791883, 38.581097, 22.084732>,  <20.566389, 38.911457, 22.088482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791883, 38.581097, 22.084732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413165, -0.291805, 0.862638,
		-0.715192, -0.482424, -0.505735,
		0.563734, -0.825903, -0.009376,
		20.961004, 38.333324, 22.081919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.062099, 38.295395, 22.078571>,  <20.566389, 38.911457, 22.088482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.062099, 38.295395, 22.078571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.401880, 38.172897, 22.250454>,  <20.605749, 38.099400, 22.353582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.401880, 38.172897, 22.250454>,  <20.062099, 38.295395, 22.078571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.401880, 38.172897, 22.250454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519681, -0.344382, 0.781878,
		-0.091466, -0.887476, -0.451686,
		0.849451, -0.306248, 0.429705,
		20.656715, 38.081024, 22.379366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.947224, 37.679417, 22.467104>,  <20.062099, 38.295395, 22.078571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.947224, 37.679417, 22.467104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.294912, 37.810894, 22.614838>,  <20.503527, 37.889782, 22.703478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.294912, 37.810894, 22.614838>,  <19.947224, 37.679417, 22.467104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.294912, 37.810894, 22.614838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252452, -0.347223, 0.903163,
		0.425110, -0.878290, -0.218834,
		0.869223, 0.328699, 0.369334,
		20.555679, 37.909504, 22.725637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.194986, 37.147648, 22.993059>,  <19.947224, 37.679417, 22.467104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.194986, 37.147648, 22.993059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.337198, 37.511215, 23.080208>,  <20.422525, 37.729355, 23.132496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.337198, 37.511215, 23.080208>,  <20.194986, 37.147648, 22.993059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.337198, 37.511215, 23.080208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172586, -0.165251, 0.971034,
		0.918592, -0.382834, 0.098114,
		0.355531, 0.908917, 0.217870,
		20.443857, 37.783890, 23.145569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.714844, 37.435837, 23.503864>,  <20.194986, 37.147648, 22.993059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.714844, 37.435837, 23.503864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.498699, 37.129288, 23.364906>,  <19.369013, 36.945358, 23.281530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.498699, 37.129288, 23.364906>,  <19.714844, 37.435837, 23.503864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.498699, 37.129288, 23.364906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837339, 0.449093, 0.311735,
		-0.082891, 0.459339, -0.884385,
		-0.540363, -0.766370, -0.347397,
		19.336590, 36.899376, 23.260687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.074528, 37.687504, 23.001875>,  <19.714844, 37.435837, 23.503864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.074528, 37.687504, 23.001875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.013529, 37.346436, 23.201752>,  <18.976929, 37.141792, 23.321678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.013529, 37.346436, 23.201752>,  <19.074528, 37.687504, 23.001875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.013529, 37.346436, 23.201752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884914, 0.342948, 0.315140,
		-0.440080, -0.394127, -0.806842,
		-0.152500, -0.852672, 0.499693,
		18.967779, 37.090633, 23.351660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.367102, 37.288059, 22.811953>,  <19.074528, 37.687504, 23.001875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.367102, 37.288059, 22.811953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.487799, 37.235424, 23.189659>,  <18.560217, 37.203842, 23.416283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.487799, 37.235424, 23.189659>,  <18.367102, 37.288059, 22.811953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487799, 37.235424, 23.189659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880478, 0.341410, 0.328935,
		-0.365665, -0.930658, -0.012840,
		0.301742, -0.131585, 0.944265,
		18.578321, 37.195950, 23.472939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.891808, 23.158363, 21.541769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.255981, 23.012886, 21.620594>,  <30.474485, 22.925600, 21.667889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.255981, 23.012886, 21.620594>,  <29.891808, 23.158363, 21.541769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255981, 23.012886, 21.620594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413425, 0.784393, -0.462393,
		0.013593, 0.502450, 0.864499,
		0.910437, -0.363691, 0.197063,
		30.529112, 22.903778, 21.679712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257393, 23.717026, 21.756437>,  <29.891808, 23.158363, 21.541769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257393, 23.717026, 21.756437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.523783, 23.438824, 21.648548>,  <30.683617, 23.271902, 21.583815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.523783, 23.438824, 21.648548>,  <30.257393, 23.717026, 21.756437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523783, 23.438824, 21.648548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581443, 0.710485, -0.396402,
		0.467335, 0.107164, 0.877561,
		0.665974, -0.695505, -0.269725,
		30.723576, 23.230173, 21.567631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855413, 24.014675, 21.945398>,  <30.257393, 23.717026, 21.756437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855413, 24.014675, 21.945398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.974930, 23.731480, 21.689438>,  <31.046640, 23.561562, 21.535862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.974930, 23.731480, 21.689438>,  <30.855413, 24.014675, 21.945398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974930, 23.731480, 21.689438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565266, 0.671546, -0.479061,
		0.768894, -0.218575, 0.600856,
		0.298792, -0.707991, -0.639901,
		31.064568, 23.519083, 21.497467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574989, 24.091024, 21.951439>,  <30.855413, 24.014675, 21.945398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574989, 24.091024, 21.951439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.482897, 23.904476, 21.609798>,  <31.427641, 23.792547, 21.404814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.482897, 23.904476, 21.609798>,  <31.574989, 24.091024, 21.951439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482897, 23.904476, 21.609798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483681, 0.706751, -0.516291,
		0.844421, -0.531979, 0.062860,
		-0.230230, -0.466371, -0.854103,
		31.413828, 23.764565, 21.353567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145599, 24.166735, 21.455843>,  <31.574989, 24.091024, 21.951439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145599, 24.166735, 21.455843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.808882, 24.112999, 21.246716>,  <31.606852, 24.080757, 21.121239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.808882, 24.112999, 21.246716>,  <32.145599, 24.166735, 21.455843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808882, 24.112999, 21.246716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238880, 0.775828, -0.583976,
		0.484069, -0.616477, -0.620994,
		-0.841792, -0.134341, -0.522818,
		31.556345, 24.072697, 21.089870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331528, 24.222385, 20.732553>,  <32.145599, 24.166735, 21.455843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331528, 24.222385, 20.732553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.952143, 24.326496, 20.804855>,  <31.724512, 24.388962, 20.848236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.952143, 24.326496, 20.804855>,  <32.331528, 24.222385, 20.732553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952143, 24.326496, 20.804855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108538, 0.802736, -0.586374,
		-0.297718, -0.536536, -0.789616,
		-0.948464, 0.260277, 0.180755,
		31.667604, 24.404579, 20.859081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262222, 24.798861, 20.324762>,  <32.331528, 24.222385, 20.732553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262222, 24.798861, 20.324762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.883696, 24.800121, 20.454052>,  <31.656580, 24.800877, 20.531626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.883696, 24.800121, 20.454052>,  <32.262222, 24.798861, 20.324762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883696, 24.800121, 20.454052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135831, 0.903506, -0.406482,
		-0.293318, -0.428564, -0.854575,
		-0.946316, 0.003151, 0.323226,
		31.599800, 24.801067, 20.551020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935698, 25.087406, 19.839060>,  <32.262222, 24.798861, 20.324762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935698, 25.087406, 19.839060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.682112, 25.155205, 20.140884>,  <31.529961, 25.195885, 20.321980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.682112, 25.155205, 20.140884>,  <31.935698, 25.087406, 19.839060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682112, 25.155205, 20.140884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076631, 0.957118, -0.279381,
		-0.769558, -0.234939, -0.593788,
		-0.633962, 0.169497, 0.754561,
		31.491922, 25.206055, 20.367252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280247, 25.343655, 19.559464>,  <31.935698, 25.087406, 19.839060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280247, 25.343655, 19.559464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.296549, 25.478256, 19.935783>,  <31.306330, 25.559017, 20.161575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.296549, 25.478256, 19.935783>,  <31.280247, 25.343655, 19.559464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296549, 25.478256, 19.935783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145698, 0.933519, -0.327590,
		-0.988489, -0.123721, 0.087076,
		0.040758, 0.336506, 0.940799,
		31.308777, 25.579208, 20.218023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686434, 25.714138, 19.601715>,  <31.280247, 25.343655, 19.559464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686434, 25.714138, 19.601715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.893396, 25.837399, 19.921047>,  <31.017574, 25.911354, 20.112646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.893396, 25.837399, 19.921047>,  <30.686434, 25.714138, 19.601715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893396, 25.837399, 19.921047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309449, 0.937156, -0.161181,
		-0.797830, -0.163648, 0.580247,
		0.517405, 0.308152, 0.798332,
		31.048618, 25.929844, 20.160547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199980, 26.020563, 20.163883>,  <30.686434, 25.714138, 19.601715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199980, 26.020563, 20.163883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.570642, 26.162853, 20.212494>,  <30.793039, 26.248228, 20.241661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.570642, 26.162853, 20.212494>,  <30.199980, 26.020563, 20.163883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570642, 26.162853, 20.212494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346418, 0.933620, -0.091369,
		-0.145963, 0.042568, 0.988374,
		0.926655, 0.355727, 0.121528,
		30.848639, 26.269571, 20.248953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181879, 26.444632, 20.769756>,  <30.199980, 26.020563, 20.163883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181879, 26.444632, 20.769756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.496563, 26.574348, 20.559643>,  <30.685373, 26.652180, 20.433575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.496563, 26.574348, 20.559643>,  <30.181879, 26.444632, 20.769756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496563, 26.574348, 20.559643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380196, 0.924905, 0.001595,
		0.486355, 0.198456, 0.850925,
		0.786708, 0.324294, -0.525284,
		30.732576, 26.671637, 20.402058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389090, 26.944574, 21.111048>,  <30.181879, 26.444632, 20.769756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389090, 26.944574, 21.111048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.555235, 27.011635, 20.753418>,  <30.654922, 27.051870, 20.538841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.555235, 27.011635, 20.753418>,  <30.389090, 26.944574, 21.111048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555235, 27.011635, 20.753418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279976, 0.958719, 0.049702,
		0.865497, 0.229674, 0.445157,
		0.415366, 0.167651, -0.894072,
		30.679844, 27.061930, 20.485197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590487, 27.709105, 21.152184>,  <30.389090, 26.944574, 21.111048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590487, 27.709105, 21.152184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.625418, 27.610718, 20.766048>,  <30.646376, 27.551685, 20.534369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.625418, 27.610718, 20.766048>,  <30.590487, 27.709105, 21.152184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625418, 27.610718, 20.766048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266904, 0.927833, -0.260554,
		0.959758, 0.280406, 0.015376,
		0.087327, -0.245965, -0.965337,
		30.651615, 27.536928, 20.476448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949469, 28.251925, 20.835558>,  <30.590487, 27.709105, 21.152184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949469, 28.251925, 20.835558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.731810, 28.059113, 20.560879>,  <30.601213, 27.943426, 20.396072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.731810, 28.059113, 20.560879>,  <30.949469, 28.251925, 20.835558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731810, 28.059113, 20.560879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233479, 0.873150, -0.427898,
		0.805847, -0.072510, -0.587666,
		-0.544148, -0.482028, -0.686696,
		30.568565, 27.914505, 20.354870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117020, 28.645546, 20.184969>,  <30.949469, 28.251925, 20.835558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117020, 28.645546, 20.184969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.783092, 28.437176, 20.113728>,  <30.582737, 28.312153, 20.070984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.783092, 28.437176, 20.113728>,  <31.117020, 28.645546, 20.184969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783092, 28.437176, 20.113728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401079, 0.797093, -0.451418,
		0.377118, -0.305418, -0.874358,
		-0.834816, -0.520925, -0.178101,
		30.532648, 28.280899, 20.060297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878435, 28.690578, 19.438995>,  <31.117020, 28.645546, 20.184969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878435, 28.690578, 19.438995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.556126, 28.624989, 19.666622>,  <30.362740, 28.585634, 19.803198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.556126, 28.624989, 19.666622>,  <30.878435, 28.690578, 19.438995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556126, 28.624989, 19.666622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493942, 0.716198, -0.493033,
		-0.326722, -0.678361, -0.658088,
		-0.805776, -0.163972, 0.569068,
		30.314392, 28.575796, 19.837343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305626, 28.574858, 18.890356>,  <30.878435, 28.690578, 19.438995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305626, 28.574858, 18.890356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.142824, 28.657925, 19.246159>,  <30.045143, 28.707764, 19.459641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.142824, 28.657925, 19.246159>,  <30.305626, 28.574858, 18.890356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142824, 28.657925, 19.246159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716338, 0.531653, -0.451891,
		-0.566751, -0.821109, -0.067627,
		-0.407006, 0.207666, 0.889506,
		30.020723, 28.720224, 19.513010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575018, 28.495543, 18.756731>,  <30.305626, 28.574858, 18.890356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575018, 28.495543, 18.756731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.596258, 28.690262, 19.105492>,  <29.609003, 28.807093, 19.314747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.596258, 28.690262, 19.105492>,  <29.575018, 28.495543, 18.756731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596258, 28.690262, 19.105492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834461, 0.501224, -0.229019,
		-0.548503, -0.715405, 0.432829,
		0.053102, 0.486796, 0.871900,
		29.612188, 28.836300, 19.367062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996204, 28.364668, 19.120787>,  <29.575018, 28.495543, 18.756731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996204, 28.364668, 19.120787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.118189, 28.715645, 19.268890>,  <29.191380, 28.926231, 19.357754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.118189, 28.715645, 19.268890>,  <28.996204, 28.364668, 19.120787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118189, 28.715645, 19.268890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939599, 0.340646, -0.033364,
		-0.155403, -0.337723, 0.928328,
		0.304963, 0.877442, 0.370262,
		29.209679, 28.978878, 19.379969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365562, 28.719299, 19.389923>,  <28.996204, 28.364668, 19.120787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365562, 28.719299, 19.389923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.615582, 29.029953, 19.358532>,  <28.765593, 29.216345, 19.339697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.615582, 29.029953, 19.358532>,  <28.365562, 28.719299, 19.389923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615582, 29.029953, 19.358532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775239, 0.605869, -0.178683,
		-0.091225, 0.172522, 0.980772,
		0.625046, 0.776633, -0.078476,
		28.803095, 29.262943, 19.334990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003117, 29.259808, 19.878998>,  <28.365562, 28.719299, 19.389923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003117, 29.259808, 19.878998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.220852, 29.411633, 19.579765>,  <28.351494, 29.502728, 19.400225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.220852, 29.411633, 19.579765>,  <28.003117, 29.259808, 19.878998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220852, 29.411633, 19.579765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753602, 0.612988, -0.237338,
		0.368482, 0.692949, 0.619713,
		0.544339, 0.379562, -0.748082,
		28.384153, 29.525501, 19.355341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205799, 29.938686, 19.927597>,  <28.003117, 29.259808, 19.878998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205799, 29.938686, 19.927597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.146313, 29.833717, 19.546227>,  <28.110620, 29.770737, 19.317404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.146313, 29.833717, 19.546227>,  <28.205799, 29.938686, 19.927597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146313, 29.833717, 19.546227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824510, 0.565205, -0.026962,
		0.545956, 0.782098, -0.300424,
		-0.148714, -0.262422, -0.953425,
		28.101698, 29.754992, 19.260199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556210, 30.014885, 20.235373>,  <28.205799, 29.938686, 19.927597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556210, 30.014885, 20.235373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.207266, 29.880108, 20.093693>,  <26.997900, 29.799242, 20.008684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.207266, 29.880108, 20.093693>,  <27.556210, 30.014885, 20.235373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207266, 29.880108, 20.093693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327807, -0.940684, 0.087500,
		-0.362673, -0.039778, 0.931067,
		-0.872360, -0.336944, -0.354200,
		26.945559, 29.779024, 19.987432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260736, 29.407146, 20.620537>,  <27.556210, 30.014885, 20.235373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260736, 29.407146, 20.620537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.037270, 29.347382, 20.294209>,  <26.903189, 29.311523, 20.098412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.037270, 29.347382, 20.294209>,  <27.260736, 29.407146, 20.620537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037270, 29.347382, 20.294209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027017, -0.986396, 0.162150,
		-0.828951, 0.068547, 0.555106,
		-0.558669, -0.149411, -0.815822,
		26.869669, 29.302559, 20.049461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885468, 28.875532, 20.863209>,  <27.260736, 29.407146, 20.620537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885468, 28.875532, 20.863209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.860729, 28.877293, 20.463978>,  <26.845886, 28.878349, 20.224440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.860729, 28.877293, 20.463978>,  <26.885468, 28.875532, 20.863209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860729, 28.877293, 20.463978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136210, -0.990597, -0.012810,
		-0.988748, -0.136740, 0.060661,
		-0.061842, 0.004404, -0.998076,
		26.842176, 28.878614, 20.164555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362700, 28.536072, 20.681215>,  <26.885468, 28.875532, 20.863209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362700, 28.536072, 20.681215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.602493, 28.500996, 20.362988>,  <26.746368, 28.479950, 20.172050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.602493, 28.500996, 20.362988>,  <26.362700, 28.536072, 20.681215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602493, 28.500996, 20.362988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055192, -0.987085, 0.150389,
		-0.798482, -0.134064, -0.586902,
		0.599483, -0.087691, -0.795569,
		26.782339, 28.474688, 20.124317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094046, 28.020445, 20.136156>,  <26.362700, 28.536072, 20.681215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094046, 28.020445, 20.136156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.488792, 28.028076, 20.071991>,  <26.725639, 28.032656, 20.033493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.488792, 28.028076, 20.071991>,  <26.094046, 28.020445, 20.136156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488792, 28.028076, 20.071991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039261, -0.991554, 0.123612,
		-0.156699, -0.128286, -0.979280,
		0.986866, 0.019078, -0.160412,
		26.784853, 28.033800, 20.023867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099997, 27.471264, 19.694942>,  <26.094046, 28.020445, 20.136156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099997, 27.471264, 19.694942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.472473, 27.546406, 19.819904>,  <26.695959, 27.591492, 19.894880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.472473, 27.546406, 19.819904>,  <26.099997, 27.471264, 19.694942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472473, 27.546406, 19.819904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136318, -0.974263, 0.179523,
		0.338087, -0.124583, -0.932832,
		0.931190, 0.187857, 0.312403,
		26.751831, 27.602762, 19.913626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519302, 26.941252, 19.414408>,  <26.099997, 27.471264, 19.694942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519302, 26.941252, 19.414408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.697571, 27.078453, 19.745159>,  <26.804531, 27.160774, 19.943609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.697571, 27.078453, 19.745159>,  <26.519302, 26.941252, 19.414408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697571, 27.078453, 19.745159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280868, -0.930618, 0.234657,
		0.849995, 0.127664, -0.511088,
		0.445670, 0.343005, 0.826877,
		26.831272, 27.181355, 19.993221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098362, 26.466496, 19.461876>,  <26.519302, 26.941252, 19.414408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098362, 26.466496, 19.461876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.137592, 26.648930, 19.815681>,  <27.161131, 26.758390, 20.027966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.137592, 26.648930, 19.815681>,  <27.098362, 26.466496, 19.461876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137592, 26.648930, 19.815681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164360, -0.884019, 0.437604,
		0.981513, 0.102462, -0.161661,
		0.098074, 0.456084, 0.884516,
		27.167015, 26.785755, 20.081036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708431, 26.248314, 19.781639>,  <27.098362, 26.466496, 19.461876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708431, 26.248314, 19.781639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.450674, 26.360676, 20.066132>,  <27.296021, 26.428093, 20.236828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.450674, 26.360676, 20.066132>,  <27.708431, 26.248314, 19.781639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450674, 26.360676, 20.066132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131394, -0.875579, 0.464861,
		0.753323, 0.393005, 0.527306,
		-0.644391, 0.280906, 0.711233,
		27.257357, 26.444948, 20.279501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034081, 26.226389, 20.519991>,  <27.708431, 26.248314, 19.781639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034081, 26.226389, 20.519991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.635889, 26.219456, 20.557358>,  <27.396975, 26.215296, 20.579777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.635889, 26.219456, 20.557358>,  <28.034081, 26.226389, 20.519991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635889, 26.219456, 20.557358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062934, -0.856892, 0.511640,
		0.071178, 0.515205, 0.854106,
		-0.995476, -0.017334, 0.093416,
		27.337246, 26.214256, 20.585382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933655, 26.095573, 21.235401>,  <28.034081, 26.226389, 20.519991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933655, 26.095573, 21.235401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.597380, 25.983234, 21.050201>,  <27.395615, 25.915831, 20.939081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.597380, 25.983234, 21.050201>,  <27.933655, 26.095573, 21.235401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597380, 25.983234, 21.050201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024301, -0.873703, 0.485853,
		-0.540973, 0.397200, 0.741337,
		-0.840689, -0.280849, -0.462997,
		27.345173, 25.898979, 20.911303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556572, 25.694054, 21.775711>,  <27.933655, 26.095573, 21.235401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556572, 25.694054, 21.775711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.422195, 25.573307, 21.418831>,  <27.341570, 25.500858, 21.204702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.422195, 25.573307, 21.418831>,  <27.556572, 25.694054, 21.775711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422195, 25.573307, 21.418831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046901, -0.940714, 0.335943,
		-0.940714, 0.154703, 0.301868,
		-0.335943, -0.301868, -0.892198,
		27.321413, 25.482746, 21.151171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941328, 25.435095, 21.976679>,  <27.556572, 25.694054, 21.775711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941328, 25.435095, 21.976679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.088478, 25.300045, 21.630112>,  <27.176767, 25.219015, 21.422173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.088478, 25.300045, 21.630112>,  <26.941328, 25.435095, 21.976679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088478, 25.300045, 21.630112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061519, -0.920878, 0.384966,
		-0.927839, -0.194919, -0.317996,
		0.367873, -0.337624, -0.866418,
		27.198841, 25.198757, 21.370186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524582, 24.795710, 21.789427>,  <26.941328, 25.435095, 21.976679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524582, 24.795710, 21.789427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.858091, 24.778168, 21.569283>,  <27.058197, 24.767643, 21.437197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.858091, 24.778168, 21.569283>,  <26.524582, 24.795710, 21.789427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858091, 24.778168, 21.569283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144341, -0.944855, 0.293962,
		-0.532903, -0.324538, -0.781466,
		0.833774, -0.043856, -0.550361,
		27.108223, 24.765011, 21.404175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512470, 24.141790, 21.421556>,  <26.524582, 24.795710, 21.789427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512470, 24.141790, 21.421556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.897730, 24.241146, 21.380280>,  <27.128885, 24.300758, 21.355513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.897730, 24.241146, 21.380280>,  <26.512470, 24.141790, 21.421556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897730, 24.241146, 21.380280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248888, -0.968498, -0.008201,
		-0.101978, -0.017784, -0.994628,
		0.963149, 0.248387, -0.103191,
		27.186674, 24.315662, 21.349321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858454, 23.740137, 20.898188>,  <26.512470, 24.141790, 21.421556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858454, 23.740137, 20.898188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.141102, 23.864468, 21.152454>,  <27.310692, 23.939066, 21.305014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.141102, 23.864468, 21.152454>,  <26.858454, 23.740137, 20.898188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141102, 23.864468, 21.152454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301099, -0.945044, 0.127398,
		0.640333, 0.101377, -0.761378,
		0.706621, 0.310828, 0.635667,
		27.353088, 23.957716, 21.343155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337543, 23.300600, 20.732052>,  <26.858454, 23.740137, 20.898188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337543, 23.300600, 20.732052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.463699, 23.450520, 21.080776>,  <27.539392, 23.540472, 21.290010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.463699, 23.450520, 21.080776>,  <27.337543, 23.300600, 20.732052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463699, 23.450520, 21.080776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409581, -0.882486, 0.231217,
		0.856021, 0.284153, -0.431840,
		0.315392, 0.374800, 0.871810,
		27.558317, 23.562960, 21.342319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.011618, 22.990313, 20.848070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.936357, 23.141918, 21.210495>,  <27.891201, 23.232882, 21.427950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.936357, 23.141918, 21.210495>,  <28.011618, 22.990313, 20.848070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936357, 23.141918, 21.210495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151439, -0.900309, 0.408057,
		0.970395, 0.213989, 0.111995,
		-0.188150, 0.379016, 0.906061,
		27.879913, 23.255623, 21.482313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644045, 22.870323, 21.360207>,  <28.011618, 22.990313, 20.848070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644045, 22.870323, 21.360207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.313135, 22.924038, 21.578411>,  <28.114590, 22.956266, 21.709333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.313135, 22.924038, 21.578411>,  <28.644045, 22.870323, 21.360207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313135, 22.924038, 21.578411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289244, -0.730613, 0.618501,
		0.481613, 0.669457, 0.565576,
		-0.827277, 0.134288, 0.545509,
		28.064953, 22.964325, 21.742064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789946, 22.782806, 22.071468>,  <28.644045, 22.870323, 21.360207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789946, 22.782806, 22.071468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.392061, 22.742146, 22.077389>,  <28.153332, 22.717749, 22.080940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.392061, 22.742146, 22.077389>,  <28.789946, 22.782806, 22.071468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392061, 22.742146, 22.077389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081350, -0.691526, 0.717756,
		-0.062728, 0.715163, 0.696137,
		-0.994710, -0.101654, 0.014800,
		28.093649, 22.711649, 22.081829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678230, 22.877827, 22.735285>,  <28.789946, 22.782806, 22.071468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678230, 22.877827, 22.735285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.378405, 22.683033, 22.555954>,  <28.198509, 22.566156, 22.448355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.378405, 22.683033, 22.555954>,  <28.678230, 22.877827, 22.735285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378405, 22.683033, 22.555954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036646, -0.706795, 0.706469,
		-0.660915, 0.513115, 0.547635,
		-0.749566, -0.486984, -0.448328,
		28.153536, 22.536938, 22.421455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232176, 22.660345, 23.213598>,  <28.678230, 22.877827, 22.735285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232176, 22.660345, 23.213598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.121943, 22.415344, 22.917248>,  <28.055803, 22.268343, 22.739437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.121943, 22.415344, 22.917248>,  <28.232176, 22.660345, 23.213598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121943, 22.415344, 22.917248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029498, -0.764968, 0.643393,
		-0.960824, 0.199163, 0.192744,
		-0.275583, -0.612502, -0.740875,
		28.039268, 22.231594, 22.694984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006424, 22.057596, 23.649113>,  <28.232176, 22.660345, 23.213598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006424, 22.057596, 23.649113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.070688, 21.929485, 23.275673>,  <28.109247, 21.852619, 23.051609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.070688, 21.929485, 23.275673>,  <28.006424, 22.057596, 23.649113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070688, 21.929485, 23.275673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129398, -0.930889, 0.341617,
		-0.978491, -0.175690, -0.108112,
		0.160659, -0.320280, -0.933601,
		28.118887, 21.833401, 22.995592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552250, 21.463894, 23.615505>,  <28.006424, 22.057596, 23.649113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552250, 21.463894, 23.615505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.822212, 21.434868, 23.321774>,  <27.984190, 21.417452, 23.145535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.822212, 21.434868, 23.321774>,  <27.552250, 21.463894, 23.615505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822212, 21.434868, 23.321774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213954, -0.933159, 0.288856,
		-0.706207, -0.352063, -0.614267,
		0.674904, -0.072567, -0.734328,
		28.024683, 21.413097, 23.101475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435957, 20.828009, 23.312216>,  <27.552250, 21.463894, 23.615505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435957, 20.828009, 23.312216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.809357, 20.936451, 23.218342>,  <28.033398, 21.001516, 23.162018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.809357, 20.936451, 23.218342>,  <27.435957, 20.828009, 23.312216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809357, 20.936451, 23.218342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334144, -0.895149, 0.295052,
		-0.130087, -0.353850, -0.926211,
		0.933501, 0.271106, -0.234684,
		28.089407, 21.017782, 23.147936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650442, 20.291758, 22.852917>,  <27.435957, 20.828009, 23.312216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650442, 20.291758, 22.852917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.979694, 20.459396, 23.006180>,  <28.177246, 20.559980, 23.098139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.979694, 20.459396, 23.006180>,  <27.650442, 20.291758, 22.852917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979694, 20.459396, 23.006180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348925, -0.905635, 0.240992,
		0.448002, -0.064674, -0.891690,
		0.823132, 0.419098, 0.383160,
		28.226633, 20.585125, 23.121128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142029, 19.918255, 22.653387>,  <27.650442, 20.291758, 22.852917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142029, 19.918255, 22.653387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.300467, 20.121944, 22.959015>,  <28.395529, 20.244158, 23.142391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.300467, 20.121944, 22.959015>,  <28.142029, 19.918255, 22.653387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300467, 20.121944, 22.959015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380361, -0.848371, 0.368227,
		0.835724, 0.144770, -0.529723,
		0.396094, 0.509223, 0.764069,
		28.419294, 20.274712, 23.188236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915703, 19.673716, 22.653006>,  <28.142029, 19.918255, 22.653387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915703, 19.673716, 22.653006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.804729, 19.834557, 23.002026>,  <28.738146, 19.931061, 23.211437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.804729, 19.834557, 23.002026>,  <28.915703, 19.673716, 22.653006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804729, 19.834557, 23.002026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562570, -0.668225, 0.486817,
		0.778810, 0.625930, -0.040824,
		-0.277434, 0.402105, 0.872549,
		28.721498, 19.955189, 23.263790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567930, 19.537806, 23.145006>,  <28.915703, 19.673716, 22.653006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567930, 19.537806, 23.145006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.258129, 19.606121, 23.388638>,  <29.072248, 19.647110, 23.534817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.258129, 19.606121, 23.388638>,  <29.567930, 19.537806, 23.145006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258129, 19.606121, 23.388638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317693, -0.727601, 0.608004,
		0.547004, 0.664401, 0.509272,
		-0.774505, 0.170788, 0.609076,
		29.025778, 19.657358, 23.571360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832422, 19.415682, 23.754349>,  <29.567930, 19.537806, 23.145006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832422, 19.415682, 23.754349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.442852, 19.398888, 23.843525>,  <29.209110, 19.388811, 23.897030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.442852, 19.398888, 23.843525>,  <29.832422, 19.415682, 23.754349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442852, 19.398888, 23.843525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184080, -0.720607, 0.668461,
		0.132588, 0.692071, 0.709548,
		-0.973928, -0.041984, 0.222940,
		29.150673, 19.386293, 23.910408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827974, 19.326086, 24.481707>,  <29.832422, 19.415682, 23.754349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827974, 19.326086, 24.481707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471401, 19.207829, 24.344334>,  <29.257458, 19.136875, 24.261909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471401, 19.207829, 24.344334>,  <29.827974, 19.326086, 24.481707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471401, 19.207829, 24.344334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047084, -0.814196, 0.578677,
		-0.450704, 0.499680, 0.739720,
		-0.891431, -0.295641, -0.343435,
		29.203972, 19.119137, 24.241302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428743, 19.162827, 25.069719>,  <29.827974, 19.326086, 24.481707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428743, 19.162827, 25.069719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.282078, 18.946438, 24.766956>,  <29.194078, 18.816605, 24.585299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.282078, 18.946438, 24.766956>,  <29.428743, 19.162827, 25.069719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282078, 18.946438, 24.766956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036985, -0.821402, 0.569149,
		-0.929618, 0.180692, 0.321186,
		-0.366663, -0.540971, -0.756907,
		29.172079, 18.784147, 24.539885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019541, 18.739916, 25.429331>,  <29.428743, 19.162827, 25.069719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019541, 18.739916, 25.429331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.074369, 18.583969, 25.065086>,  <29.107267, 18.490400, 24.846540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.074369, 18.583969, 25.065086>,  <29.019541, 18.739916, 25.429331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074369, 18.583969, 25.065086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167215, -0.915203, 0.366664,
		-0.976345, 0.102008, -0.190642,
		0.137074, -0.389869, -0.910612,
		29.115492, 18.467009, 24.791903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509523, 18.250734, 25.414967>,  <29.019541, 18.739916, 25.429331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509523, 18.250734, 25.414967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.785034, 18.162102, 25.138855>,  <28.950340, 18.108923, 24.973186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.785034, 18.162102, 25.138855>,  <28.509523, 18.250734, 25.414967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785034, 18.162102, 25.138855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025490, -0.958961, 0.282391,
		-0.724525, -0.176909, -0.666158,
		0.688777, -0.221580, -0.690281,
		28.991667, 18.095629, 24.931770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242468, 17.569517, 25.241814>,  <28.509523, 18.250734, 25.414967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242468, 17.569517, 25.241814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.623175, 17.611267, 25.126404>,  <28.851599, 17.636316, 25.057158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.623175, 17.611267, 25.126404>,  <28.242468, 17.569517, 25.241814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623175, 17.611267, 25.126404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236306, -0.849156, 0.472328,
		-0.195705, -0.517726, -0.832862,
		0.951766, 0.104374, -0.288525,
		28.908705, 17.642580, 25.039846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382334, 16.979595, 24.979300>,  <28.242468, 17.569517, 25.241814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382334, 16.979595, 24.979300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.749329, 17.111080, 25.068893>,  <28.969524, 17.189972, 25.122650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.749329, 17.111080, 25.068893>,  <28.382334, 16.979595, 24.979300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749329, 17.111080, 25.068893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207111, -0.875529, 0.436524,
		0.339597, -0.354115, -0.871365,
		0.917485, 0.328712, 0.223986,
		29.024574, 17.209694, 25.136089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793804, 16.447653, 24.936907>,  <28.382334, 16.979595, 24.979300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793804, 16.447653, 24.936907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.047962, 16.678802, 25.141781>,  <29.200457, 16.817493, 25.264706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.047962, 16.678802, 25.141781>,  <28.793804, 16.447653, 24.936907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047962, 16.678802, 25.141781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336713, -0.804254, 0.489694,
		0.694907, -0.138691, -0.705598,
		0.635396, 0.577876, 0.512183,
		29.238581, 16.852165, 25.295435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505098, 16.156605, 24.913191>,  <28.793804, 16.447653, 24.936907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505098, 16.156605, 24.913191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471270, 16.387516, 25.238052>,  <29.450974, 16.526062, 25.432970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471270, 16.387516, 25.238052>,  <29.505098, 16.156605, 24.913191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471270, 16.387516, 25.238052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476461, -0.692424, 0.541788,
		0.875118, 0.432780, -0.216492,
		-0.084571, 0.577279, 0.812156,
		29.445898, 16.560699, 25.481699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116016, 16.016062, 25.220802>,  <29.505098, 16.156605, 24.913191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116016, 16.016062, 25.220802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.893652, 16.206390, 25.493435>,  <29.760233, 16.320587, 25.657015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.893652, 16.206390, 25.493435>,  <30.116016, 16.016062, 25.220802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893652, 16.206390, 25.493435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264839, -0.675839, 0.687824,
		0.787921, 0.562880, 0.249692,
		-0.555913, 0.475823, 0.681581,
		29.726877, 16.349136, 25.697908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456390, 16.052338, 25.893095>,  <30.116016, 16.016062, 25.220802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456390, 16.052338, 25.893095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.077515, 16.098701, 26.012695>,  <29.850189, 16.126520, 26.084455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.077515, 16.098701, 26.012695>,  <30.456390, 16.052338, 25.893095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077515, 16.098701, 26.012695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088338, -0.802007, 0.590746,
		0.308272, 0.585960, 0.749413,
		-0.947188, 0.115909, 0.298999,
		29.793358, 16.133474, 26.102394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014196, 16.004547, 26.518332>,  <30.456390, 16.052338, 25.893095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014196, 16.004547, 26.518332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.413033, 16.015968, 26.546597>,  <31.652334, 16.022821, 26.563555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.413033, 16.015968, 26.546597>,  <31.014196, 16.004547, 26.518332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413033, 16.015968, 26.546597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038188, 0.615177, -0.787464,
		-0.065955, 0.787872, 0.612297,
		0.997092, 0.028555, 0.070661,
		31.712160, 16.024534, 26.567795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048048, 16.659193, 26.404034>,  <31.014196, 16.004547, 26.518332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048048, 16.659193, 26.404034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421158, 16.531242, 26.337574>,  <31.645023, 16.454472, 26.297699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421158, 16.531242, 26.337574>,  <31.048048, 16.659193, 26.404034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421158, 16.531242, 26.337574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140222, 0.746652, -0.650268,
		0.332063, 0.583257, 0.741313,
		0.932777, -0.319879, -0.166150,
		31.700991, 16.435278, 26.287729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445690, 17.249500, 26.433264>,  <31.048048, 16.659193, 26.404034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445690, 17.249500, 26.433264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.667461, 16.981022, 26.236446>,  <31.800524, 16.819935, 26.118357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.667461, 16.981022, 26.236446>,  <31.445690, 17.249500, 26.433264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667461, 16.981022, 26.236446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190024, 0.677712, -0.710350,
		0.810248, 0.300336, 0.503285,
		0.554426, -0.671196, -0.492044,
		31.833790, 16.779663, 26.088833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135773, 17.466499, 26.496363>,  <31.445690, 17.249500, 26.433264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135773, 17.466499, 26.496363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.116604, 17.245464, 26.163532>,  <32.105103, 17.112843, 25.963835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.116604, 17.245464, 26.163532>,  <32.135773, 17.466499, 26.496363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116604, 17.245464, 26.163532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226890, 0.805234, -0.547831,
		0.972741, -0.215044, 0.086787,
		-0.047924, -0.552589, -0.832075,
		32.102226, 17.079687, 25.913910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530254, 17.813904, 26.054470>,  <32.135773, 17.466499, 26.496363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530254, 17.813904, 26.054470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326054, 17.576523, 25.805569>,  <32.203533, 17.434093, 25.656227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326054, 17.576523, 25.805569>,  <32.530254, 17.813904, 26.054470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326054, 17.576523, 25.805569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023736, 0.733107, -0.679700,
		0.859549, -0.332218, -0.388338,
		-0.510502, -0.593453, -0.622256,
		32.172905, 17.398487, 25.618893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830605, 17.897463, 25.398689>,  <32.530254, 17.813904, 26.054470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830605, 17.897463, 25.398689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463387, 17.759499, 25.320480>,  <32.243057, 17.676720, 25.273554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463387, 17.759499, 25.320480>,  <32.830605, 17.897463, 25.398689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463387, 17.759499, 25.320480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173258, 0.792577, -0.584639,
		0.356616, -0.502849, -0.787380,
		-0.918045, -0.344911, -0.195523,
		32.187973, 17.656025, 25.261824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773251, 18.032377, 24.784977>,  <32.830605, 17.897463, 25.398689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773251, 18.032377, 24.784977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.393478, 17.982365, 24.900185>,  <32.165615, 17.952358, 24.969309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.393478, 17.982365, 24.900185>,  <32.773251, 18.032377, 24.784977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393478, 17.982365, 24.900185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308181, 0.546651, -0.778587,
		-0.060100, -0.827973, -0.557537,
		-0.949428, -0.125029, 0.288019,
		32.108650, 17.944857, 24.986589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407715, 17.841955, 24.175297>,  <32.773251, 18.032377, 24.784977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407715, 17.841955, 24.175297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.161312, 18.008823, 24.442581>,  <32.013470, 18.108944, 24.602951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.161312, 18.008823, 24.442581>,  <32.407715, 17.841955, 24.175297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161312, 18.008823, 24.442581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217928, 0.724905, -0.653468,
		-0.756998, -0.548161, -0.355632,
		-0.616005, 0.417172, 0.668211,
		31.976511, 18.133974, 24.643045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078518, 18.290749, 23.810532>,  <32.407715, 17.841955, 24.175297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078518, 18.290749, 23.810532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.935682, 18.419140, 24.161407>,  <31.849981, 18.496174, 24.371933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.935682, 18.419140, 24.161407>,  <32.078518, 18.290749, 23.810532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935682, 18.419140, 24.161407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406758, 0.791950, -0.455371,
		-0.840854, -0.519412, -0.152236,
		-0.357089, 0.320977, 0.877189,
		31.828556, 18.515432, 24.424564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392572, 18.485088, 23.783150>,  <32.078518, 18.290749, 23.810532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392572, 18.485088, 23.783150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.516989, 18.710938, 24.088947>,  <31.591639, 18.846447, 24.272427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.516989, 18.710938, 24.088947>,  <31.392572, 18.485088, 23.783150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516989, 18.710938, 24.088947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512636, 0.777019, -0.365304,
		-0.800286, -0.278282, 0.531132,
		0.311042, 0.564625, 0.764494,
		31.610302, 18.880325, 24.318296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816767, 18.862801, 23.981281>,  <31.392572, 18.485088, 23.783150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816767, 18.862801, 23.981281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.121202, 19.080696, 24.122135>,  <31.303864, 19.211433, 24.206648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.121202, 19.080696, 24.122135>,  <30.816767, 18.862801, 23.981281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121202, 19.080696, 24.122135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427122, 0.829452, -0.359966,
		-0.488166, 0.123563, 0.863959,
		0.761092, 0.544740, 0.352134,
		31.349529, 19.244118, 24.227776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495483, 19.374895, 24.207655>,  <30.816767, 18.862801, 23.981281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495483, 19.374895, 24.207655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870312, 19.502079, 24.149960>,  <31.095209, 19.578388, 24.115341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.870312, 19.502079, 24.149960>,  <30.495483, 19.374895, 24.207655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870312, 19.502079, 24.149960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348833, 0.835142, -0.425268,
		-0.014757, 0.448821, 0.893500,
		0.937069, 0.317958, -0.144239,
		31.151432, 19.597466, 24.106688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435795, 20.025606, 24.294849>,  <30.495483, 19.374895, 24.207655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435795, 20.025606, 24.294849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777885, 20.003895, 24.088688>,  <30.983139, 19.990868, 23.964991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777885, 20.003895, 24.088688>,  <30.435795, 20.025606, 24.294849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777885, 20.003895, 24.088688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252795, 0.824474, -0.506298,
		0.452421, 0.563291, 0.691389,
		0.855225, -0.054280, -0.515406,
		31.034452, 19.987610, 23.934067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846289, 20.682800, 24.371189>,  <30.435795, 20.025606, 24.294849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846289, 20.682800, 24.371189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.031237, 20.532322, 24.050018>,  <31.142204, 20.442036, 23.857315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.031237, 20.532322, 24.050018>,  <30.846289, 20.682800, 24.371189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031237, 20.532322, 24.050018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166164, 0.852732, -0.495214,
		0.870979, 0.362389, 0.331767,
		0.462369, -0.376194, -0.802928,
		31.169947, 20.419464, 23.809139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306578, 21.170830, 24.227116>,  <30.846289, 20.682800, 24.371189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306578, 21.170830, 24.227116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.212097, 20.954792, 23.904003>,  <31.155409, 20.825171, 23.710136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.212097, 20.954792, 23.904003>,  <31.306578, 21.170830, 24.227116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212097, 20.954792, 23.904003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267308, 0.835344, -0.480361,
		0.934214, 0.102465, -0.341679,
		-0.236200, -0.540093, -0.807780,
		31.141237, 20.792765, 23.661669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687786, 21.531385, 23.657629>,  <31.306578, 21.170830, 24.227116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687786, 21.531385, 23.657629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.395641, 21.304897, 23.504810>,  <31.220354, 21.169004, 23.413118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.395641, 21.304897, 23.504810>,  <31.687786, 21.531385, 23.657629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395641, 21.304897, 23.504810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232931, 0.732255, -0.639958,
		0.642114, -0.378412, -0.666704,
		-0.730365, -0.566222, -0.382047,
		31.176533, 21.135031, 23.390196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847372, 21.431499, 22.920593>,  <31.687786, 21.531385, 23.657629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847372, 21.431499, 22.920593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.457182, 21.347012, 22.945370>,  <31.223068, 21.296318, 22.960236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.457182, 21.347012, 22.945370>,  <31.847372, 21.431499, 22.920593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457182, 21.347012, 22.945370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159903, 0.486611, -0.858860,
		0.151267, -0.847700, -0.508451,
		-0.975474, -0.211220, 0.061942,
		31.164539, 21.283646, 22.963953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615166, 21.186655, 22.278034>,  <31.847372, 21.431499, 22.920593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615166, 21.186655, 22.278034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.295643, 21.340054, 22.463436>,  <31.103930, 21.432093, 22.574677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.295643, 21.340054, 22.463436>,  <31.615166, 21.186655, 22.278034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295643, 21.340054, 22.463436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195027, 0.563774, -0.802573,
		-0.569096, -0.731498, -0.375555,
		-0.798808, 0.383498, 0.463503,
		31.056000, 21.455103, 22.602488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002748, 21.007088, 21.828724>,  <31.615166, 21.186655, 22.278034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002748, 21.007088, 21.828724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.919256, 21.308456, 22.078136>,  <30.869162, 21.489277, 22.227783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.919256, 21.308456, 22.078136>,  <31.002748, 21.007088, 21.828724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919256, 21.308456, 22.078136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496966, 0.467404, -0.731135,
		-0.842292, -0.462483, 0.276864,
		-0.208730, 0.753421, 0.623529,
		30.856638, 21.534483, 22.265196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413164, 21.343361, 21.506132>,  <31.002748, 21.007088, 21.828724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413164, 21.343361, 21.506132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.557554, 21.624275, 21.751568>,  <30.644188, 21.792824, 21.898829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.557554, 21.624275, 21.751568>,  <30.413164, 21.343361, 21.506132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557554, 21.624275, 21.751568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234278, 0.705142, -0.669245,
		-0.902668, 0.097831, 0.419070,
		0.360977, 0.702285, 0.613589,
		30.665848, 21.834961, 21.935644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862700, 21.889795, 21.550306>,  <30.413164, 21.343361, 21.506132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862700, 21.889795, 21.550306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209595, 22.052124, 21.665691>,  <30.417732, 22.149521, 21.734922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209595, 22.052124, 21.665691>,  <29.862700, 21.889795, 21.550306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209595, 22.052124, 21.665691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180728, 0.796421, -0.577106,
		-0.463939, 0.448354, 0.764028,
		0.867236, 0.405823, 0.288461,
		30.469765, 22.173870, 21.752230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.741495, 39.108932, 14.608237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.084251, 38.902905, 14.599853>,  <24.289906, 38.779289, 14.594822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.084251, 38.902905, 14.599853>,  <23.741495, 39.108932, 14.608237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.084251, 38.902905, 14.599853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277086, -0.494503, 0.823827,
		-0.434693, -0.700123, -0.566454,
		0.856893, -0.515068, -0.020962,
		24.341320, 38.748383, 14.593564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.482639, 38.529686, 14.766987>,  <23.741495, 39.108932, 14.608237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.482639, 38.529686, 14.766987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.874184, 38.480743, 14.832541>,  <24.109110, 38.451378, 14.871874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.874184, 38.480743, 14.832541>,  <23.482639, 38.529686, 14.766987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.874184, 38.480743, 14.832541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204521, -0.580892, 0.787868,
		-0.001201, -0.804732, -0.593638,
		0.978861, -0.122358, 0.163887,
		24.167843, 38.444035, 14.881707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.509518, 37.829422, 14.916177>,  <23.482639, 38.529686, 14.766987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.509518, 37.829422, 14.916177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.815933, 38.042919, 15.059455>,  <23.999783, 38.171017, 15.145422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.815933, 38.042919, 15.059455>,  <23.509518, 37.829422, 14.916177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.815933, 38.042919, 15.059455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185450, -0.350042, 0.918193,
		0.615460, -0.769800, -0.169164,
		0.766040, 0.533740, 0.358196,
		24.045746, 38.203041, 15.166914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.851475, 37.329910, 15.436170>,  <23.509518, 37.829422, 14.916177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.851475, 37.329910, 15.436170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.962343, 37.707088, 15.509963>,  <24.028864, 37.933395, 15.554239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.962343, 37.707088, 15.509963>,  <23.851475, 37.329910, 15.436170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.962343, 37.707088, 15.509963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090655, -0.165485, 0.982037,
		0.956534, -0.288918, 0.039615,
		0.277173, 0.942943, 0.184483,
		24.045496, 37.989971, 15.565308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.373497, 37.270218, 16.028166>,  <23.851475, 37.329910, 15.436170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.373497, 37.270218, 16.028166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.247591, 37.649857, 16.023388>,  <24.172047, 37.877640, 16.020521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.247591, 37.649857, 16.023388>,  <24.373497, 37.270218, 16.028166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.247591, 37.649857, 16.023388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014807, 0.017493, 0.999738,
		0.949054, 0.314506, -0.019560,
		-0.314766, 0.949094, -0.011945,
		24.153162, 37.934586, 16.019804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.894159, 37.645718, 16.372627>,  <24.373497, 37.270218, 16.028166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.894159, 37.645718, 16.372627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.542065, 37.835251, 16.382992>,  <24.330809, 37.948971, 16.389210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.542065, 37.835251, 16.382992>,  <24.894159, 37.645718, 16.372627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542065, 37.835251, 16.382992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094420, 0.121370, 0.988106,
		0.465049, 0.872212, -0.151574,
		-0.880235, 0.473830, 0.025911,
		24.277994, 37.977402, 16.390764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.949196, 37.950420, 17.016241>,  <24.894159, 37.645718, 16.372627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.949196, 37.950420, 17.016241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.566271, 38.017456, 16.922035>,  <24.336515, 38.057678, 16.865513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.566271, 38.017456, 16.922035>,  <24.949196, 37.950420, 17.016241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.566271, 38.017456, 16.922035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214792, 0.132804, 0.967588,
		0.193430, 0.976872, -0.091139,
		-0.957313, 0.167585, -0.235513,
		24.279078, 38.067730, 16.851381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.714926, 38.550854, 17.454939>,  <24.949196, 37.950420, 17.016241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.714926, 38.550854, 17.454939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.412878, 38.301624, 17.373379>,  <24.231649, 38.152088, 17.324442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.412878, 38.301624, 17.373379>,  <24.714926, 38.550854, 17.454939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.412878, 38.301624, 17.373379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158679, -0.128068, 0.978989,
		-0.636096, 0.771607, -0.002163,
		-0.755117, -0.623075, -0.203901,
		24.186342, 38.114700, 17.312208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.255619, 38.628113, 17.996862>,  <24.714926, 38.550854, 17.454939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.255619, 38.628113, 17.996862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.083946, 38.293045, 17.861744>,  <23.980942, 38.092003, 17.780672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.083946, 38.293045, 17.861744>,  <24.255619, 38.628113, 17.996862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.083946, 38.293045, 17.861744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350283, -0.190356, 0.917097,
		-0.832529, 0.511926, -0.211725,
		-0.429183, -0.837673, -0.337796,
		23.955191, 38.041744, 17.760405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.599764, 38.624763, 18.288073>,  <24.255619, 38.628113, 17.996862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.599764, 38.624763, 18.288073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.672276, 38.244259, 18.188282>,  <23.715782, 38.015957, 18.128408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.672276, 38.244259, 18.188282>,  <23.599764, 38.624763, 18.288073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.672276, 38.244259, 18.188282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319786, -0.296912, 0.899767,
		-0.929987, -0.083329, -0.358024,
		0.181278, -0.951262, -0.249477,
		23.726660, 37.958881, 18.113440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.985945, 38.252937, 18.443441>,  <23.599764, 38.624763, 18.288073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.985945, 38.252937, 18.443441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.271351, 37.973976, 18.416550>,  <23.442595, 37.806599, 18.400415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.271351, 37.973976, 18.416550>,  <22.985945, 38.252937, 18.443441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.271351, 37.973976, 18.416550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216441, -0.310662, 0.925550,
		-0.666368, -0.645845, -0.372610,
		0.713517, -0.697405, -0.067228,
		23.485407, 37.764755, 18.396381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.554434, 37.649303, 18.525257>,  <22.985945, 38.252937, 18.443441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.554434, 37.649303, 18.525257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.933842, 37.573456, 18.626732>,  <23.161486, 37.527946, 18.687616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.933842, 37.573456, 18.626732>,  <22.554434, 37.649303, 18.525257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.933842, 37.573456, 18.626732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302641, -0.306453, 0.902494,
		-0.093388, -0.932808, -0.348063,
		0.948519, -0.189620, 0.253687,
		23.218397, 37.516571, 18.702837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.581663, 36.917572, 18.771820>,  <22.554434, 37.649303, 18.525257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.581663, 36.917572, 18.771820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.902100, 37.095108, 18.932446>,  <23.094362, 37.201630, 19.028822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.902100, 37.095108, 18.932446>,  <22.581663, 36.917572, 18.771820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.902100, 37.095108, 18.932446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268881, -0.332540, 0.903947,
		0.534749, -0.832117, -0.147054,
		0.801091, 0.443845, 0.401566,
		23.142427, 37.228260, 19.052916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.600168, 36.461914, 19.281353>,  <22.581663, 36.917572, 18.771820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.600168, 36.461914, 19.281353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.853115, 36.748272, 19.399750>,  <23.004883, 36.920086, 19.470787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.853115, 36.748272, 19.399750>,  <22.600168, 36.461914, 19.281353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.853115, 36.748272, 19.399750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121545, -0.285664, 0.950591,
		0.765073, -0.637100, -0.093632,
		0.632369, 0.715891, 0.295990,
		23.042826, 36.963039, 19.488546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.138672, 36.116344, 19.697346>,  <22.600168, 36.461914, 19.281353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.138672, 36.116344, 19.697346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.118206, 36.504486, 19.791828>,  <23.105927, 36.737370, 19.848518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.118206, 36.504486, 19.791828>,  <23.138672, 36.116344, 19.697346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.118206, 36.504486, 19.791828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129961, -0.240974, 0.961791,
		0.990198, 0.018513, 0.138437,
		-0.051165, 0.970355, 0.236206,
		23.102856, 36.795593, 19.862690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.726847, 36.254230, 20.078737>,  <23.138672, 36.116344, 19.697346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.726847, 36.254230, 20.078737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.456329, 36.535999, 20.164917>,  <23.294020, 36.705059, 20.216625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.456329, 36.535999, 20.164917>,  <23.726847, 36.254230, 20.078737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.456329, 36.535999, 20.164917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032647, -0.263530, 0.964099,
		0.735908, 0.659048, 0.155227,
		-0.676294, 0.704420, 0.215450,
		23.253441, 36.747326, 20.229551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.952085, 36.427341, 20.683243>,  <23.726847, 36.254230, 20.078737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.952085, 36.427341, 20.683243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.588072, 36.593094, 20.687725>,  <23.369663, 36.692543, 20.690414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.588072, 36.593094, 20.687725>,  <23.952085, 36.427341, 20.683243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.588072, 36.593094, 20.687725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020436, -0.071852, 0.997206,
		0.414026, 0.907264, 0.073856,
		-0.910036, 0.414379, 0.011208,
		23.315062, 36.717407, 20.691088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.941591, 36.887291, 21.137772>,  <23.952085, 36.427341, 20.683243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.941591, 36.887291, 21.137772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.554256, 36.788486, 21.123302>,  <23.321856, 36.729206, 21.114620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.554256, 36.788486, 21.123302>,  <23.941591, 36.887291, 21.137772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.554256, 36.788486, 21.123302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038310, 0.003850, 0.999259,
		-0.246686, 0.969006, -0.013191,
		-0.968338, -0.247008, -0.036173,
		23.263756, 36.714382, 21.112452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.594698, 37.239059, 21.634495>,  <23.941591, 36.887291, 21.137772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.594698, 37.239059, 21.634495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.335979, 36.945660, 21.550934>,  <23.180748, 36.769619, 21.500797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.335979, 36.945660, 21.550934>,  <23.594698, 37.239059, 21.634495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.335979, 36.945660, 21.550934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150904, -0.145411, 0.977795,
		-0.747586, 0.663957, -0.016636,
		-0.646795, -0.733496, -0.208901,
		23.141941, 36.725613, 21.488264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.056467, 37.312405, 22.190510>,  <23.594698, 37.239059, 21.634495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.056467, 37.312405, 22.190510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.018969, 36.944004, 22.039268>,  <22.996469, 36.722961, 21.948524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.018969, 36.944004, 22.039268>,  <23.056467, 37.312405, 22.190510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.018969, 36.944004, 22.039268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205643, -0.353673, 0.912483,
		-0.974127, 0.163295, -0.156243,
		-0.093745, -0.921005, -0.378103,
		22.990845, 36.667702, 21.925838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.447292, 37.167164, 22.432549>,  <23.056467, 37.312405, 22.190510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.447292, 37.167164, 22.432549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.648352, 36.832218, 22.346600>,  <22.768988, 36.631252, 22.295031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.648352, 36.832218, 22.346600>,  <22.447292, 37.167164, 22.432549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.648352, 36.832218, 22.346600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225324, -0.366863, 0.902575,
		-0.834609, -0.405264, -0.373082,
		0.502651, -0.837361, -0.214872,
		22.799147, 36.581009, 22.282139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.693590, 37.363819, 22.673923>,  <22.447292, 37.167164, 22.432549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.693590, 37.363819, 22.673923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.373638, 37.575497, 22.560680>,  <21.181667, 37.702503, 22.492735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.373638, 37.575497, 22.560680>,  <21.693590, 37.363819, 22.673923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.373638, 37.575497, 22.560680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479153, 0.279039, -0.832196,
		-0.361395, -0.801306, -0.476762,
		-0.799879, 0.529193, -0.283105,
		21.133675, 37.734253, 22.475748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.513298, 37.167923, 22.027962>,  <21.693590, 37.363819, 22.673923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.513298, 37.167923, 22.027962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.349665, 37.532349, 22.048424>,  <21.251484, 37.751003, 22.060701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.349665, 37.532349, 22.048424>,  <21.513298, 37.167923, 22.027962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.349665, 37.532349, 22.048424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227157, 0.155972, -0.961287,
		-0.883770, -0.381628, -0.270760,
		-0.409085, 0.911061, 0.051154,
		21.226938, 37.805668, 22.063770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.082476, 37.199371, 21.371227>,  <21.513298, 37.167923, 22.027962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.082476, 37.199371, 21.371227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.109814, 37.575890, 21.503468>,  <21.126217, 37.801800, 21.582811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.109814, 37.575890, 21.503468>,  <21.082476, 37.199371, 21.371227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.109814, 37.575890, 21.503468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138250, 0.319242, -0.937535,
		-0.988037, 0.109780, -0.108315,
		0.068344, 0.941293, 0.330599,
		21.130318, 37.858276, 21.602648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.837360, 37.559811, 20.896978>,  <21.082476, 37.199371, 21.371227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.837360, 37.559811, 20.896978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.021278, 37.863625, 21.081020>,  <21.131628, 38.045914, 21.191444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.021278, 37.863625, 21.081020>,  <20.837360, 37.559811, 20.896978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.021278, 37.863625, 21.081020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079123, 0.481019, -0.873133,
		-0.884494, 0.437865, 0.161073,
		0.459793, 0.759536, 0.460103,
		21.159216, 38.091484, 21.219051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.425919, 38.179188, 20.814232>,  <20.837360, 37.559811, 20.896978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.425919, 38.179188, 20.814232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.802082, 38.282051, 20.903225>,  <21.027781, 38.343769, 20.956621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.802082, 38.282051, 20.903225>,  <20.425919, 38.179188, 20.814232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802082, 38.282051, 20.903225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071604, 0.489854, -0.868859,
		-0.332418, 0.833015, 0.442250,
		0.940410, 0.257157, 0.222484,
		21.084206, 38.359200, 20.969971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.399271, 38.856297, 20.550207>,  <20.425919, 38.179188, 20.814232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.399271, 38.856297, 20.550207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.789583, 38.780518, 20.593960>,  <21.023771, 38.735050, 20.620213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.789583, 38.780518, 20.593960>,  <20.399271, 38.856297, 20.550207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.789583, 38.780518, 20.593960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196779, 0.541715, -0.817204,
		0.095561, 0.818936, 0.565873,
		0.975780, -0.189445, 0.109383,
		21.082317, 38.723682, 20.626774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.742970, 39.453655, 20.665543>,  <20.399271, 38.856297, 20.550207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.742970, 39.453655, 20.665543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.962788, 39.168232, 20.491722>,  <21.094679, 38.996979, 20.387430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.962788, 39.168232, 20.491722>,  <20.742970, 39.453655, 20.665543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.962788, 39.168232, 20.491722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126339, 0.585126, -0.801041,
		0.825856, 0.385308, 0.411703,
		0.549546, -0.713558, -0.434551,
		21.127651, 38.954163, 20.361357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.304424, 39.781116, 20.301401>,  <20.742970, 39.453655, 20.665543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.304424, 39.781116, 20.301401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.309248, 39.425823, 20.117710>,  <21.312141, 39.212646, 20.007496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.309248, 39.425823, 20.117710>,  <21.304424, 39.781116, 20.301401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.309248, 39.425823, 20.117710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062207, 0.459036, -0.886237,
		0.997990, -0.017881, 0.060789,
		0.012058, -0.888238, -0.459226,
		21.312866, 39.159351, 19.979942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.991993, 39.820469, 19.826258>,  <21.304424, 39.781116, 20.301401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.991993, 39.820469, 19.826258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.714066, 39.552040, 19.722809>,  <21.547310, 39.390984, 19.660740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.714066, 39.552040, 19.722809>,  <21.991993, 39.820469, 19.826258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.714066, 39.552040, 19.722809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074955, 0.290072, -0.954065,
		0.715269, -0.682286, -0.151247,
		-0.694817, -0.671077, -0.258621,
		21.505621, 39.350716, 19.645222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.451252, 39.524300, 19.350016>,  <21.991993, 39.820469, 19.826258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.451252, 39.524300, 19.350016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.072109, 39.436226, 19.257854>,  <21.844624, 39.383381, 19.202559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.072109, 39.436226, 19.257854>,  <22.451252, 39.524300, 19.350016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.072109, 39.436226, 19.257854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244592, -0.039130, -0.968836,
		0.204312, -0.974672, 0.090946,
		-0.947856, -0.220189, -0.230402,
		21.787752, 39.370171, 19.188734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.522255, 39.008286, 18.905249>,  <22.451252, 39.524300, 19.350016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.522255, 39.008286, 18.905249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.159561, 39.167545, 18.849667>,  <21.941944, 39.263103, 18.816319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.159561, 39.167545, 18.849667>,  <22.522255, 39.008286, 18.905249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.159561, 39.167545, 18.849667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117429, -0.078080, -0.990007,
		-0.405024, -0.913990, 0.024043,
		-0.906734, 0.398154, -0.138953,
		21.887541, 39.286991, 18.807981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.389866, 38.733227, 18.270735>,  <22.522255, 39.008286, 18.905249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.389866, 38.733227, 18.270735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.112770, 39.018631, 18.312710>,  <21.946512, 39.189873, 18.337894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.112770, 39.018631, 18.312710>,  <22.389866, 38.733227, 18.270735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.112770, 39.018631, 18.312710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181532, -0.031697, -0.982874,
		-0.697966, -0.699926, 0.151483,
		-0.692741, 0.713512, 0.104936,
		21.904947, 39.232685, 18.344191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.673124, 38.560833, 17.933121>,  <22.389866, 38.733227, 18.270735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.673124, 38.560833, 17.933121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.677549, 38.960293, 17.953415>,  <21.680204, 39.199970, 17.965591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.677549, 38.960293, 17.953415>,  <21.673124, 38.560833, 17.933121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.677549, 38.960293, 17.953415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306988, 0.051679, -0.950309,
		-0.951649, -0.005062, 0.307146,
		0.011063, 0.998651, 0.050734,
		21.680868, 39.259888, 17.968636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.984848, 38.884441, 17.669054>,  <21.673124, 38.560833, 17.933121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.984848, 38.884441, 17.669054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.261484, 39.171398, 17.635479>,  <21.427465, 39.343575, 17.615334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.261484, 39.171398, 17.635479>,  <20.984848, 38.884441, 17.669054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.261484, 39.171398, 17.635479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222475, 0.101014, -0.969691,
		-0.687172, 0.689305, 0.229463,
		0.691592, 0.717394, -0.083939,
		21.468962, 39.386616, 17.610298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.645008, 39.258320, 17.201353>,  <20.984848, 38.884441, 17.669054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.645008, 39.258320, 17.201353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.021835, 39.392433, 17.205177>,  <21.247932, 39.472900, 17.207472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.021835, 39.392433, 17.205177>,  <20.645008, 39.258320, 17.201353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.021835, 39.392433, 17.205177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017449, 0.077447, -0.996844,
		-0.334969, 0.938928, 0.078811,
		0.942068, 0.335286, 0.009559,
		21.304455, 39.493019, 17.208044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.682951, 39.965775, 16.829258>,  <20.645008, 39.258320, 17.201353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.682951, 39.965775, 16.829258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.032547, 39.771412, 16.831516>,  <21.242304, 39.654793, 16.832870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.032547, 39.771412, 16.831516>,  <20.682951, 39.965775, 16.829258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.032547, 39.771412, 16.831516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058779, 0.094180, -0.993818,
		0.482376, 0.868919, 0.110874,
		0.873990, -0.485911, 0.005645,
		21.294744, 39.625637, 16.833210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.055525, 40.349369, 16.463654>,  <20.682951, 39.965775, 16.829258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.055525, 40.349369, 16.463654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.246078, 39.998100, 16.446373>,  <21.360411, 39.787338, 16.436005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.246078, 39.998100, 16.446373>,  <21.055525, 40.349369, 16.463654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.246078, 39.998100, 16.446373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111950, 0.109319, -0.987682,
		0.872082, 0.465678, 0.150390,
		0.476382, -0.878176, -0.043203,
		21.388992, 39.734646, 16.433413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.620867, 40.498085, 15.991271>,  <21.055525, 40.349369, 16.463654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.620867, 40.498085, 15.991271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.590137, 40.099632, 16.008347>,  <21.571701, 39.860561, 16.018591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.590137, 40.099632, 16.008347>,  <21.620867, 40.498085, 15.991271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.590137, 40.099632, 16.008347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213757, -0.058274, -0.975147,
		0.973862, -0.065788, 0.217406,
		-0.076822, -0.996131, 0.042688,
		21.567091, 39.800793, 16.021152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.182880, 40.294212, 15.634877>,  <21.620867, 40.498085, 15.991271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.182880, 40.294212, 15.634877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.916153, 39.996124, 15.634316>,  <21.756117, 39.817272, 15.633980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.916153, 39.996124, 15.634316>,  <22.182880, 40.294212, 15.634877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.916153, 39.996124, 15.634316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125504, -0.110444, -0.985926,
		0.734577, -0.657608, 0.167174,
		-0.666817, -0.745220, -0.001402,
		21.716108, 39.772560, 15.633896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.530956, 39.818745, 15.234509>,  <22.182880, 40.294212, 15.634877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.530956, 39.818745, 15.234509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.143473, 39.719467, 15.234553>,  <21.910982, 39.659901, 15.234580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.143473, 39.719467, 15.234553>,  <22.530956, 39.818745, 15.234509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.143473, 39.719467, 15.234553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000421, -0.002086, -0.999998,
		0.248191, -0.968709, 0.002125,
		-0.968711, -0.248191, 0.000110,
		21.852859, 39.645012, 15.234587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.506775, 39.255848, 14.661635>,  <22.530956, 39.818745, 15.234509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.506775, 39.255848, 14.661635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.147726, 39.414963, 14.737569>,  <21.932297, 39.510433, 14.783129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.147726, 39.414963, 14.737569>,  <22.506775, 39.255848, 14.661635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.147726, 39.414963, 14.737569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165571, 0.094836, -0.981627,
		-0.408483, -0.912562, -0.019265,
		-0.897624, 0.397789, 0.189833,
		21.878439, 39.534298, 14.794518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.181286, 25.692038, 20.353424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536343, 25.759510, 20.524837>,  <26.749376, 25.799994, 20.627686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536343, 25.759510, 20.524837>,  <26.181286, 25.692038, 20.353424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536343, 25.759510, 20.524837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199628, 0.979473, 0.027955,
		-0.415024, -0.110361, 0.903092,
		0.887640, 0.168680, 0.428536,
		26.802635, 25.810114, 20.653399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098726, 26.169247, 20.919958>,  <26.181286, 25.692038, 20.353424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098726, 26.169247, 20.919958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479887, 26.185173, 20.799698>,  <26.708584, 26.194729, 20.727541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479887, 26.185173, 20.799698>,  <26.098726, 26.169247, 20.919958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479887, 26.185173, 20.799698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096076, 0.979916, -0.174738,
		0.287655, 0.195394, 0.937590,
		0.952903, 0.039816, -0.300650,
		26.765759, 26.197117, 20.709503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309923, 26.841002, 21.184494>,  <26.098726, 26.169247, 20.919958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309923, 26.841002, 21.184494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548136, 26.716507, 20.888256>,  <26.691063, 26.641811, 20.710514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548136, 26.716507, 20.888256>,  <26.309923, 26.841002, 21.184494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548136, 26.716507, 20.888256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055462, 0.935629, -0.348601,
		0.801417, 0.166527, 0.574456,
		0.595529, -0.311235, -0.740593,
		26.726795, 26.623137, 20.666079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939762, 27.358028, 21.190573>,  <26.309923, 26.841002, 21.184494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939762, 27.358028, 21.190573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002453, 27.173328, 20.841351>,  <27.040068, 27.062510, 20.631817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002453, 27.173328, 20.841351>,  <26.939762, 27.358028, 21.190573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002453, 27.173328, 20.841351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278979, 0.868678, -0.409352,
		0.947422, -0.179408, 0.264963,
		0.156726, -0.461748, -0.873055,
		27.049471, 27.034803, 20.579433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571060, 27.590397, 20.993273>,  <26.939762, 27.358028, 21.190573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571060, 27.590397, 20.993273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361597, 27.471893, 20.673771>,  <27.235918, 27.400791, 20.482069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361597, 27.471893, 20.673771>,  <27.571060, 27.590397, 20.993273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361597, 27.471893, 20.673771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106499, 0.907468, -0.406399,
		0.845244, -0.297882, -0.443655,
		-0.523661, -0.296258, -0.798756,
		27.204498, 27.383017, 20.434145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977859, 27.708286, 20.333948>,  <27.571060, 27.590397, 20.993273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977859, 27.708286, 20.333948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589989, 27.697598, 20.236774>,  <27.357267, 27.691183, 20.178471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589989, 27.697598, 20.236774>,  <27.977859, 27.708286, 20.333948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589989, 27.697598, 20.236774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094973, 0.874679, -0.475307,
		0.225190, -0.483966, -0.845616,
		-0.969675, -0.026724, -0.242933,
		27.299086, 27.689581, 20.163895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039680, 28.050646, 19.727718>,  <27.977859, 27.708286, 20.333948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039680, 28.050646, 19.727718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659050, 28.048210, 19.850658>,  <27.430672, 28.046749, 19.924423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659050, 28.048210, 19.850658>,  <28.039680, 28.050646, 19.727718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659050, 28.048210, 19.850658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107035, 0.943804, -0.312693,
		-0.288175, -0.330448, -0.898754,
		-0.951577, -0.006088, 0.307350,
		27.373577, 28.046383, 19.942863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681417, 28.589308, 19.217464>,  <28.039680, 28.050646, 19.727718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681417, 28.589308, 19.217464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400337, 28.533325, 19.496498>,  <27.231689, 28.499735, 19.663918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400337, 28.533325, 19.496498>,  <27.681417, 28.589308, 19.217464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400337, 28.533325, 19.496498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456246, 0.840972, -0.290870,
		-0.545938, -0.522664, -0.654808,
		-0.702703, -0.139957, 0.697582,
		27.189526, 28.491339, 19.705772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064953, 28.823431, 18.889908>,  <27.681417, 28.589308, 19.217464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064953, 28.823431, 18.889908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985231, 28.845417, 19.281265>,  <26.937399, 28.858608, 19.516081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985231, 28.845417, 19.281265>,  <27.064953, 28.823431, 18.889908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985231, 28.845417, 19.281265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541882, 0.825704, -0.156771,
		-0.816481, -0.561420, -0.134782,
		-0.199305, 0.054965, 0.978395,
		26.925440, 28.861906, 19.574783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428078, 29.148706, 18.847092>,  <27.064953, 28.823431, 18.889908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428078, 29.148706, 18.847092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565714, 29.201393, 19.218952>,  <26.648296, 29.233006, 19.442068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565714, 29.201393, 19.218952>,  <26.428078, 29.148706, 18.847092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565714, 29.201393, 19.218952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346215, 0.938143, -0.004777,
		-0.872775, -0.320216, 0.368410,
		0.344091, 0.131719, 0.929651,
		26.668941, 29.240910, 19.497847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897400, 29.424795, 19.246492>,  <26.428078, 29.148706, 18.847092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897400, 29.424795, 19.246492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215080, 29.514477, 19.472404>,  <26.405689, 29.568285, 19.607952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215080, 29.514477, 19.472404>,  <25.897400, 29.424795, 19.246492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215080, 29.514477, 19.472404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294319, 0.955076, 0.034733,
		-0.531622, -0.193810, 0.824509,
		0.794201, 0.224204, 0.564781,
		26.453341, 29.581738, 19.641838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792397, 29.713305, 19.917206>,  <25.897400, 29.424795, 19.246492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792397, 29.713305, 19.917206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139641, 29.872524, 19.798588>,  <26.347988, 29.968056, 19.727417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139641, 29.872524, 19.798588>,  <25.792397, 29.713305, 19.917206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139641, 29.872524, 19.798588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440208, 0.893432, -0.089421,
		0.229351, 0.208170, 0.950823,
		0.868110, 0.398051, -0.296547,
		26.400074, 29.991940, 19.709623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021053, 30.368120, 20.434818>,  <25.792397, 29.713305, 19.917206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021053, 30.368120, 20.434818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102774, 30.336548, 20.044529>,  <26.151806, 30.317604, 19.810356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102774, 30.336548, 20.044529>,  <26.021053, 30.368120, 20.434818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102774, 30.336548, 20.044529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476232, 0.862826, -0.169512,
		0.855257, 0.499301, 0.138685,
		0.204299, -0.078930, -0.975721,
		26.164062, 30.312868, 19.751812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336466, 30.977125, 20.126619>,  <26.021053, 30.368120, 20.434818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336466, 30.977125, 20.126619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153889, 30.796421, 19.820007>,  <26.044342, 30.687998, 19.636040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153889, 30.796421, 19.820007>,  <26.336466, 30.977125, 20.126619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153889, 30.796421, 19.820007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554764, 0.818046, -0.151778,
		0.695626, 0.355966, -0.624014,
		-0.456444, -0.451761, -0.766531,
		26.016956, 30.660892, 19.590048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284966, 31.518812, 20.652678>,  <26.336466, 30.977125, 20.126619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284966, 31.518812, 20.652678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293768, 31.714249, 21.001572>,  <26.299049, 31.831511, 21.210909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293768, 31.714249, 21.001572>,  <26.284966, 31.518812, 20.652678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293768, 31.714249, 21.001572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688736, -0.639805, 0.341017,
		0.724678, 0.593237, -0.350588,
		0.022004, 0.488590, 0.872236,
		26.300369, 31.860826, 21.263243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970543, 31.484310, 20.858257>,  <26.284966, 31.518812, 20.652678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970543, 31.484310, 20.858257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823189, 31.622997, 21.203297>,  <26.734776, 31.706209, 21.410320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823189, 31.622997, 21.203297>,  <26.970543, 31.484310, 20.858257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823189, 31.622997, 21.203297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576239, -0.642962, 0.504528,
		0.729548, 0.682925, 0.037065,
		-0.368386, 0.346719, 0.862599,
		26.712673, 31.727013, 21.462076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522751, 31.655081, 21.382290>,  <26.970543, 31.484310, 20.858257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522751, 31.655081, 21.382290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177961, 31.555443, 21.558903>,  <26.971087, 31.495661, 21.664871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177961, 31.555443, 21.558903>,  <27.522751, 31.655081, 21.382290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177961, 31.555443, 21.558903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465058, -0.735223, 0.493121,
		0.201792, 0.630396, 0.749587,
		-0.861975, -0.249094, 0.441533,
		26.919369, 31.480715, 21.691362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711451, 31.635523, 22.160172>,  <27.522751, 31.655081, 21.382290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711451, 31.635523, 22.160172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387064, 31.414238, 22.083973>,  <27.192432, 31.281467, 22.038254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387064, 31.414238, 22.083973>,  <27.711451, 31.635523, 22.160172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387064, 31.414238, 22.083973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405685, -0.766269, 0.498249,
		-0.421609, 0.326782, 0.845848,
		-0.810966, -0.553214, -0.190495,
		27.143774, 31.248274, 22.026825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610254, 31.284035, 22.780607>,  <27.711451, 31.635523, 22.160172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610254, 31.284035, 22.780607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408869, 31.084915, 22.498127>,  <27.288038, 30.965443, 22.328638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408869, 31.084915, 22.498127>,  <27.610254, 31.284035, 22.780607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408869, 31.084915, 22.498127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324779, -0.866440, 0.379211,
		-0.800652, -0.038440, 0.597895,
		-0.503463, -0.497799, -0.706202,
		27.257830, 30.935575, 22.286266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230173, 30.801559, 23.140335>,  <27.610254, 31.284035, 22.780607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230173, 30.801559, 23.140335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246065, 30.676479, 22.760727>,  <27.255600, 30.601431, 22.532963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246065, 30.676479, 22.760727>,  <27.230173, 30.801559, 23.140335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246065, 30.676479, 22.760727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200465, -0.927965, 0.314158,
		-0.978895, -0.202727, 0.025816,
		0.039732, -0.312703, -0.949020,
		27.257984, 30.582668, 22.476021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696003, 30.256355, 23.007448>,  <27.230173, 30.801559, 23.140335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696003, 30.256355, 23.007448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006117, 30.190834, 22.763447>,  <27.192184, 30.151522, 22.617046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006117, 30.190834, 22.763447>,  <26.696003, 30.256355, 23.007448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006117, 30.190834, 22.763447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037082, -0.952316, 0.302852,
		-0.630522, -0.257417, -0.732242,
		0.775285, -0.163802, -0.610002,
		27.238703, 30.141693, 22.580446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699722, 29.531879, 22.890093>,  <26.696003, 30.256355, 23.007448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699722, 29.531879, 22.890093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049984, 29.616356, 22.716370>,  <27.260141, 29.667042, 22.612135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049984, 29.616356, 22.716370>,  <26.699722, 29.531879, 22.890093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049984, 29.616356, 22.716370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302227, -0.941083, 0.151732,
		-0.376677, -0.264125, -0.887892,
		0.875656, 0.211191, -0.434310,
		27.312681, 29.679712, 22.586077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809368, 28.978268, 22.456682>,  <26.699722, 29.531879, 22.890093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809368, 28.978268, 22.456682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166616, 29.154724, 22.491840>,  <27.380966, 29.260599, 22.512936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166616, 29.154724, 22.491840>,  <26.809368, 28.978268, 22.456682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166616, 29.154724, 22.491840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435685, -0.896983, 0.074836,
		0.111856, -0.028542, -0.993315,
		0.893122, 0.441142, 0.087897,
		27.434553, 29.287067, 22.518209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233604, 28.612057, 21.941792>,  <26.809368, 28.978268, 22.456682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233604, 28.612057, 21.941792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463793, 28.792130, 22.214897>,  <27.601906, 28.900173, 22.378761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463793, 28.792130, 22.214897>,  <27.233604, 28.612057, 21.941792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463793, 28.792130, 22.214897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542744, -0.834741, 0.092933,
		0.611768, 0.317086, -0.724704,
		0.575472, 0.450182, 0.682765,
		27.636435, 28.927185, 22.419727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997824, 28.525867, 21.716446>,  <27.233604, 28.612057, 21.941792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997824, 28.525867, 21.716446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014692, 28.606068, 22.107960>,  <28.024815, 28.654188, 22.342869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014692, 28.606068, 22.107960>,  <27.997824, 28.525867, 21.716446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014692, 28.606068, 22.107960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608220, -0.782366, 0.134058,
		0.792647, 0.589663, -0.154944,
		0.042174, 0.200501, 0.978785,
		28.027344, 28.666218, 22.401596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684217, 28.436266, 21.837063>,  <27.997824, 28.525867, 21.716446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684217, 28.436266, 21.837063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513275, 28.415600, 22.198105>,  <28.410709, 28.403200, 22.414730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513275, 28.415600, 22.198105>,  <28.684217, 28.436266, 21.837063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513275, 28.415600, 22.198105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563495, -0.795945, 0.221236,
		0.706995, 0.603160, 0.369264,
		-0.427354, -0.051666, 0.902607,
		28.385069, 28.400101, 22.468887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224674, 28.377556, 22.378721>,  <28.684217, 28.436266, 21.837063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224674, 28.377556, 22.378721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894579, 28.260044, 22.571667>,  <28.696522, 28.189537, 22.687433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894579, 28.260044, 22.571667>,  <29.224674, 28.377556, 22.378721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894579, 28.260044, 22.571667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446300, -0.862604, 0.238183,
		0.346115, 0.411837, 0.842968,
		-0.825240, -0.293778, 0.482363,
		28.647007, 28.171911, 22.716375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360119, 28.231283, 23.094032>,  <29.224674, 28.377556, 22.378721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360119, 28.231283, 23.094032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028858, 28.026314, 23.003181>,  <28.830101, 27.903332, 22.948671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028858, 28.026314, 23.003181>,  <29.360119, 28.231283, 23.094032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028858, 28.026314, 23.003181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433834, -0.842587, 0.319118,
		-0.354896, 0.165743, 0.920097,
		-0.828153, -0.512422, -0.227126,
		28.780413, 27.872587, 22.935043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536123, 28.672718, 23.696335>,  <29.360119, 28.231283, 23.094032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536123, 28.672718, 23.696335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736977, 28.793896, 24.020332>,  <29.857489, 28.866602, 24.214731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736977, 28.793896, 24.020332>,  <29.536123, 28.672718, 23.696335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736977, 28.793896, 24.020332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226610, 0.857812, -0.461310,
		-0.834572, 0.415191, 0.362085,
		0.502132, 0.302944, 0.809993,
		29.887617, 28.884779, 24.263330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329386, 29.333227, 23.782600>,  <29.536123, 28.672718, 23.696335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329386, 29.333227, 23.782600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673508, 29.287586, 23.981339>,  <29.879980, 29.260202, 24.100582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673508, 29.287586, 23.981339>,  <29.329386, 29.333227, 23.782600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673508, 29.287586, 23.981339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334805, 0.861428, -0.381899,
		-0.384422, 0.494896, 0.779293,
		0.860305, -0.114101, 0.496846,
		29.931599, 29.253355, 24.130392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505989, 29.875154, 24.086985>,  <29.329386, 29.333227, 23.782600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505989, 29.875154, 24.086985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870108, 29.709740, 24.079502>,  <30.088579, 29.610491, 24.075012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870108, 29.709740, 24.079502>,  <29.505989, 29.875154, 24.086985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870108, 29.709740, 24.079502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369130, 0.831340, -0.415473,
		0.187363, 0.371298, 0.909413,
		0.910295, -0.413536, -0.018705,
		30.143196, 29.585678, 24.073891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980896, 30.392647, 24.275835>,  <29.505989, 29.875154, 24.086985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980896, 30.392647, 24.275835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208933, 30.138096, 24.067982>,  <30.345755, 29.985365, 23.943270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208933, 30.138096, 24.067982>,  <29.980896, 30.392647, 24.275835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208933, 30.138096, 24.067982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463383, 0.771336, -0.436253,
		0.678434, 0.007914, 0.734619,
		0.570090, -0.636379, -0.519633,
		30.379959, 29.947182, 23.912092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581211, 30.812733, 24.202755>,  <29.980896, 30.392647, 24.275835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581211, 30.812733, 24.202755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635336, 30.513557, 23.942822>,  <30.667810, 30.334053, 23.786861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635336, 30.513557, 23.942822>,  <30.581211, 30.812733, 24.202755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635336, 30.513557, 23.942822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468660, 0.626169, -0.623114,
		0.872954, -0.220237, 0.435254,
		0.135310, -0.747936, -0.649833,
		30.675928, 30.289177, 23.747871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312443, 30.778439, 24.117470>,  <30.581211, 30.812733, 24.202755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312443, 30.778439, 24.117470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155823, 30.614906, 23.787731>,  <31.061850, 30.516787, 23.589888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155823, 30.614906, 23.787731>,  <31.312443, 30.778439, 24.117470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155823, 30.614906, 23.787731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454279, 0.693194, -0.559565,
		0.800199, -0.593581, -0.085696,
		-0.391551, -0.408833, -0.824344,
		31.038357, 30.492256, 23.540428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885717, 30.739235, 23.643040>,  <31.312443, 30.778439, 24.117470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885717, 30.739235, 23.643040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558861, 30.733196, 23.412544>,  <31.362747, 30.729572, 23.274246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558861, 30.733196, 23.412544>,  <31.885717, 30.739235, 23.643040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558861, 30.733196, 23.412544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452070, 0.603449, -0.656873,
		0.357647, -0.797259, -0.486278,
		-0.817142, -0.015097, -0.576239,
		31.313719, 30.728666, 23.239672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140278, 30.706356, 22.997007>,  <31.885717, 30.739235, 23.643040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140278, 30.706356, 22.997007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771685, 30.855705, 22.954182>,  <31.550529, 30.945314, 22.928486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771685, 30.855705, 22.954182>,  <32.140278, 30.706356, 22.997007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771685, 30.855705, 22.954182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354143, 0.694392, -0.626420,
		-0.159545, -0.615150, -0.772098,
		-0.921481, 0.373375, -0.107064,
		31.495239, 30.967718, 22.922062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208839, 30.861782, 22.319773>,  <32.140278, 30.706356, 22.997007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208839, 30.861782, 22.319773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879297, 31.046993, 22.450535>,  <31.681572, 31.158119, 22.528992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879297, 31.046993, 22.450535>,  <32.208839, 30.861782, 22.319773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879297, 31.046993, 22.450535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321234, 0.856618, -0.403750,
		-0.466980, -0.227618, -0.854470,
		-0.823856, 0.463028, 0.326905,
		31.632141, 31.185902, 22.548607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869501, 31.332977, 21.677671>,  <32.208839, 30.861782, 22.319773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869501, 31.332977, 21.677671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749025, 31.447838, 22.041393>,  <31.676741, 31.516754, 22.259626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749025, 31.447838, 22.041393>,  <31.869501, 31.332977, 21.677671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749025, 31.447838, 22.041393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125661, 0.957218, -0.260659,
		-0.945249, 0.035757, -0.324385,
		-0.301187, 0.287150, 0.909303,
		31.658669, 31.533983, 22.314184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579266, 32.005936, 21.463121>,  <31.869501, 31.332977, 21.677671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579266, 32.005936, 21.463121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605597, 32.021816, 21.861938>,  <31.621395, 32.031345, 22.101229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605597, 32.021816, 21.861938>,  <31.579266, 32.005936, 21.463121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605597, 32.021816, 21.861938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003532, 0.999211, -0.039551,
		-0.997825, -0.000918, 0.065913,
		0.065825, 0.039698, 0.997041,
		31.625343, 32.033726, 22.161051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139442, 32.526394, 21.615845>,  <31.579266, 32.005936, 21.463121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139442, 32.526394, 21.615845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407925, 32.466187, 21.906178>,  <31.569014, 32.430061, 22.080378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407925, 32.466187, 21.906178>,  <31.139442, 32.526394, 21.615845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407925, 32.466187, 21.906178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151761, 0.986330, 0.064195,
		-0.725571, 0.067065, 0.684871,
		0.671204, -0.150515, 0.725831,
		31.609285, 32.421032, 22.123926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.856422, 25.891619, 26.386858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.237091, 25.974136, 26.477863>,  <29.465492, 26.023647, 26.532467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.237091, 25.974136, 26.477863>,  <28.856422, 25.891619, 26.386858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237091, 25.974136, 26.477863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051519, 0.837546, -0.543932,
		-0.302761, 0.505924, 0.807698,
		0.951673, 0.206294, 0.227511,
		29.522593, 26.036024, 26.546116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820343, 26.560848, 26.655386>,  <28.856422, 25.891619, 26.386858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820343, 26.560848, 26.655386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.193237, 26.485535, 26.531784>,  <29.416973, 26.440346, 26.457623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.193237, 26.485535, 26.531784>,  <28.820343, 26.560848, 26.655386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193237, 26.485535, 26.531784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022970, 0.883032, -0.468751,
		0.361120, 0.429889, 0.827519,
		0.932237, -0.188283, -0.309006,
		29.472908, 26.429050, 26.439083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236761, 27.155443, 26.774250>,  <28.820343, 26.560848, 26.655386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236761, 27.155443, 26.774250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.417414, 26.965488, 26.472122>,  <29.525805, 26.851515, 26.290846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.417414, 26.965488, 26.472122>,  <29.236761, 27.155443, 26.774250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417414, 26.965488, 26.472122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088362, 0.866224, -0.491780,
		0.887818, 0.155361, 0.433176,
		0.451631, -0.474888, -0.755322,
		29.552902, 26.823023, 26.245525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778988, 27.457504, 26.681030>,  <29.236761, 27.155443, 26.774250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778988, 27.457504, 26.681030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.740889, 27.288456, 26.320515>,  <29.718029, 27.187027, 26.104206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.740889, 27.288456, 26.320515>,  <29.778988, 27.457504, 26.681030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740889, 27.288456, 26.320515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097458, 0.897096, -0.430954,
		0.990671, -0.128885, -0.044259,
		-0.095249, -0.422620, -0.901288,
		29.712315, 27.161671, 26.050129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291309, 27.740110, 26.257839>,  <29.778988, 27.457504, 26.681030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291309, 27.740110, 26.257839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.025663, 27.607189, 25.989952>,  <29.866276, 27.527435, 25.829220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.025663, 27.607189, 25.989952>,  <30.291309, 27.740110, 26.257839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025663, 27.607189, 25.989952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176705, 0.800642, -0.572492,
		0.726447, -0.498545, -0.473000,
		-0.664116, -0.332304, -0.669719,
		29.826429, 27.507498, 25.789036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660269, 27.718761, 25.739033>,  <30.291309, 27.740110, 26.257839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660269, 27.718761, 25.739033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.291294, 27.728687, 25.584892>,  <30.069910, 27.734642, 25.492409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.291294, 27.728687, 25.584892>,  <30.660269, 27.718761, 25.739033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291294, 27.728687, 25.584892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274617, 0.743722, -0.609477,
		0.271470, -0.668028, -0.692851,
		-0.922437, 0.024814, -0.385351,
		30.014563, 27.736132, 25.469288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792500, 27.883638, 25.046511>,  <30.660269, 27.718761, 25.739033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792500, 27.883638, 25.046511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.402105, 27.952030, 25.100502>,  <30.167870, 27.993065, 25.132896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.402105, 27.952030, 25.100502>,  <30.792500, 27.883638, 25.046511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402105, 27.952030, 25.100502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008721, 0.649804, -0.760052,
		-0.217664, -0.740622, -0.635690,
		-0.975985, 0.170979, 0.134980,
		30.109310, 28.003325, 25.140995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448273, 27.852489, 24.376499>,  <30.792500, 27.883638, 25.046511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448273, 27.852489, 24.376499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.189333, 28.051956, 24.607071>,  <30.033970, 28.171637, 24.745413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.189333, 28.051956, 24.607071>,  <30.448273, 27.852489, 24.376499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189333, 28.051956, 24.607071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024350, 0.769419, -0.638280,
		-0.761805, -0.399154, -0.510224,
		-0.647348, 0.498669, 0.576428,
		29.995129, 28.201557, 24.779999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826788, 28.026669, 23.947031>,  <30.448273, 27.852489, 24.376499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826788, 28.026669, 23.947031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.876337, 28.279179, 24.253273>,  <29.906067, 28.430685, 24.437017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.876337, 28.279179, 24.253273>,  <29.826788, 28.026669, 23.947031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876337, 28.279179, 24.253273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018430, 0.769950, -0.637838,
		-0.992127, 0.093122, 0.083742,
		0.123874, 0.631273, 0.765604,
		29.913500, 28.468561, 24.482954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109869, 27.803539, 23.828928>,  <29.826788, 28.026669, 23.947031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109869, 27.803539, 23.828928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.892582, 27.628700, 23.542191>,  <28.762209, 27.523798, 23.370148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.892582, 27.628700, 23.542191>,  <29.109869, 27.803539, 23.828928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892582, 27.628700, 23.542191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127363, -0.886817, 0.444223,
		-0.829875, 0.150011, 0.537405,
		-0.543218, -0.437096, -0.716841,
		28.729616, 27.497572, 23.327139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622330, 27.271706, 24.242580>,  <29.109869, 27.803539, 23.828928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622330, 27.271706, 24.242580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.639244, 27.159046, 23.859146>,  <28.649393, 27.091450, 23.629086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.639244, 27.159046, 23.859146>,  <28.622330, 27.271706, 24.242580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639244, 27.159046, 23.859146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219836, -0.933307, 0.283920,
		-0.974620, -0.222737, 0.022451,
		0.042285, -0.281649, -0.958585,
		28.651930, 27.074551, 23.571571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127594, 26.691647, 24.149719>,  <28.622330, 27.271706, 24.242580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127594, 26.691647, 24.149719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.373295, 26.644779, 23.837574>,  <28.520716, 26.616659, 23.650288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.373295, 26.644779, 23.837574>,  <28.127594, 26.691647, 24.149719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373295, 26.644779, 23.837574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113489, -0.965517, 0.234302,
		-0.780907, -0.232482, -0.579772,
		0.614251, -0.117170, -0.780364,
		28.557570, 26.609629, 23.603464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789446, 26.181995, 23.736311>,  <28.127594, 26.691647, 24.149719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789446, 26.181995, 23.736311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.173754, 26.198013, 23.626534>,  <28.404339, 26.207624, 23.560667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.173754, 26.198013, 23.626534>,  <27.789446, 26.181995, 23.736311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173754, 26.198013, 23.626534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060063, -0.996081, 0.064925,
		-0.270767, -0.078862, -0.959409,
		0.960769, 0.040046, -0.274442,
		28.461985, 26.210028, 23.544201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865370, 25.532900, 23.261105>,  <27.789446, 26.181995, 23.736311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865370, 25.532900, 23.261105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.208103, 25.661438, 23.422386>,  <28.413744, 25.738562, 23.519156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.208103, 25.661438, 23.422386>,  <27.865370, 25.532900, 23.261105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208103, 25.661438, 23.422386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200284, -0.928050, 0.314022,
		0.475103, -0.188309, -0.859545,
		0.856834, 0.321346, 0.403204,
		28.465153, 25.757841, 23.543346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364832, 25.002808, 23.018969>,  <27.865370, 25.532900, 23.261105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364832, 25.002808, 23.018969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.520151, 25.186516, 23.338543>,  <28.613342, 25.296740, 23.530287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.520151, 25.186516, 23.338543>,  <28.364832, 25.002808, 23.018969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520151, 25.186516, 23.338543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212512, -0.888221, 0.407311,
		0.896696, 0.011625, -0.442495,
		0.388298, 0.459269, 0.798934,
		28.636641, 25.324297, 23.578222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959936, 24.559303, 23.246935>,  <28.364832, 25.002808, 23.018969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959936, 24.559303, 23.246935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.915792, 24.777523, 23.579247>,  <28.889307, 24.908455, 23.778633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.915792, 24.777523, 23.579247>,  <28.959936, 24.559303, 23.246935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915792, 24.777523, 23.579247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293348, -0.780769, 0.551677,
		0.949615, 0.304589, -0.073873,
		-0.110357, 0.545551, 0.830780,
		28.882685, 24.941189, 23.828480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530020, 24.346834, 23.590084>,  <28.959936, 24.559303, 23.246935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530020, 24.346834, 23.590084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.295771, 24.512844, 23.868595>,  <29.155222, 24.612450, 24.035702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.295771, 24.512844, 23.868595>,  <29.530020, 24.346834, 23.590084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295771, 24.512844, 23.868595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072206, -0.828858, 0.554780,
		0.807361, 0.375167, 0.455431,
		-0.585623, 0.415023, 0.696277,
		29.120085, 24.637352, 24.077478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917534, 24.383890, 24.198439>,  <29.530020, 24.346834, 23.590084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917534, 24.383890, 24.198439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.536249, 24.378578, 24.319244>,  <29.307478, 24.375391, 24.391727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.536249, 24.378578, 24.319244>,  <29.917534, 24.383890, 24.198439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536249, 24.378578, 24.319244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202109, -0.770946, 0.603982,
		0.224816, 0.636762, 0.737558,
		-0.953210, -0.013282, 0.302016,
		29.250286, 24.374594, 24.409849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995489, 24.136496, 24.770033>,  <29.917534, 24.383890, 24.198439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995489, 24.136496, 24.770033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.597893, 24.096363, 24.752541>,  <29.359335, 24.072283, 24.742046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.597893, 24.096363, 24.752541>,  <29.995489, 24.136496, 24.770033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597893, 24.096363, 24.752541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055256, -0.804914, 0.590814,
		-0.094476, 0.584848, 0.805622,
		-0.993993, -0.100333, -0.043729,
		29.299694, 24.066263, 24.739422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652441, 23.938213, 25.420977>,  <29.995489, 24.136496, 24.770033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652441, 23.938213, 25.420977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.375658, 23.794506, 25.170498>,  <29.209589, 23.708282, 25.020210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.375658, 23.794506, 25.170498>,  <29.652441, 23.938213, 25.420977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375658, 23.794506, 25.170498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100600, -0.810937, 0.576421,
		-0.714896, 0.461854, 0.524990,
		-0.691956, -0.359267, -0.626198,
		29.168072, 23.686726, 24.982639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062559, 23.803728, 25.823685>,  <29.652441, 23.938213, 25.420977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062559, 23.803728, 25.823685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.028318, 23.564476, 25.504959>,  <29.007774, 23.420925, 25.313725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.028318, 23.564476, 25.504959>,  <29.062559, 23.803728, 25.823685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028318, 23.564476, 25.504959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117392, -0.788123, 0.604219,
		-0.989389, 0.145261, -0.002752,
		-0.085600, -0.598131, -0.796813,
		29.002638, 23.385036, 25.265915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519096, 23.392809, 25.935198>,  <29.062559, 23.803728, 25.823685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519096, 23.392809, 25.935198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.680172, 23.205143, 25.620815>,  <28.776817, 23.092543, 25.432186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.680172, 23.205143, 25.620815>,  <28.519096, 23.392809, 25.935198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680172, 23.205143, 25.620815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262645, -0.881769, 0.391794,
		-0.876846, 0.048656, -0.478302,
		0.402689, -0.469166, -0.785954,
		28.800978, 23.064394, 25.385029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051643, 22.931873, 25.812395>,  <28.519096, 23.392809, 25.935198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051643, 22.931873, 25.812395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.369867, 22.790207, 25.615765>,  <28.560802, 22.705206, 25.497786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.369867, 22.790207, 25.615765>,  <28.051643, 22.931873, 25.812395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369867, 22.790207, 25.615765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184126, -0.914308, 0.360747,
		-0.577218, -0.196484, -0.792599,
		0.795561, -0.354168, -0.491577,
		28.608536, 22.683956, 25.468292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.114296, 22.312857, 23.340488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829506, 22.403625, 23.606300>,  <33.658634, 22.458086, 23.765787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829506, 22.403625, 23.606300>,  <34.114296, 22.312857, 23.340488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829506, 22.403625, 23.606300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185082, 0.852241, -0.489315,
		-0.677377, -0.471372, -0.564773,
		-0.711972, 0.226922, 0.664532,
		33.615913, 22.471703, 23.805660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582874, 22.671421, 22.949100>,  <34.114296, 22.312857, 23.340488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582874, 22.671421, 22.949100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483971, 22.784988, 23.319668>,  <33.424629, 22.853128, 23.542007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483971, 22.784988, 23.319668>,  <33.582874, 22.671421, 22.949100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483971, 22.784988, 23.319668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384948, 0.848631, -0.362823,
		-0.889200, -0.446335, -0.100539,
		-0.247261, 0.283920, 0.926419,
		33.409794, 22.870165, 23.597593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949680, 23.013443, 22.838062>,  <33.582874, 22.671421, 22.949100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949680, 23.013443, 22.838062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110035, 23.143703, 23.180580>,  <33.206249, 23.221861, 23.386091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110035, 23.143703, 23.180580>,  <32.949680, 23.013443, 22.838062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110035, 23.143703, 23.180580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312422, 0.927255, -0.206374,
		-0.861210, -0.184793, 0.473465,
		0.400886, 0.325652, 0.856295,
		33.230301, 23.241400, 23.437469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479603, 23.340612, 23.149603>,  <32.949680, 23.013443, 22.838062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479603, 23.340612, 23.149603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785061, 23.487225, 23.362206>,  <32.968334, 23.575191, 23.489767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785061, 23.487225, 23.362206>,  <32.479603, 23.340612, 23.149603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785061, 23.487225, 23.362206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288355, 0.930186, -0.227169,
		-0.577666, 0.020213, 0.816023,
		0.763645, 0.366532, 0.531508,
		33.014153, 23.597185, 23.521658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216862, 23.826120, 23.590693>,  <32.479603, 23.340612, 23.149603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216862, 23.826120, 23.590693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606789, 23.909653, 23.559414>,  <32.840744, 23.959772, 23.540648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606789, 23.909653, 23.559414>,  <32.216862, 23.826120, 23.590693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606789, 23.909653, 23.559414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209616, 0.977782, -0.001901,
		0.076061, 0.018244, 0.996936,
		0.974821, 0.208829, -0.078195,
		32.899235, 23.972301, 23.535955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372284, 24.212080, 24.156843>,  <32.216862, 23.826120, 23.590693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372284, 24.212080, 24.156843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616299, 24.285839, 23.848595>,  <32.762707, 24.330095, 23.663647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.616299, 24.285839, 23.848595>,  <32.372284, 24.212080, 24.156843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616299, 24.285839, 23.848595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297580, 0.954670, -0.007128,
		0.734373, 0.233669, 0.637256,
		0.610035, 0.184400, -0.770620,
		32.799309, 24.341160, 23.617409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536446, 24.865507, 24.256248>,  <32.372284, 24.212080, 24.156843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536446, 24.865507, 24.256248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674850, 24.815823, 23.884258>,  <32.757893, 24.786013, 23.661064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674850, 24.815823, 23.884258>,  <32.536446, 24.865507, 24.256248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674850, 24.815823, 23.884258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251696, 0.942577, -0.219540,
		0.903841, 0.310033, 0.294876,
		0.346008, -0.124210, -0.929973,
		32.778652, 24.778559, 23.605267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812611, 25.442543, 24.122921>,  <32.536446, 24.865507, 24.256248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812611, 25.442543, 24.122921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.813026, 25.324799, 23.740643>,  <32.813278, 25.254152, 23.511276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.813026, 25.324799, 23.740643>,  <32.812611, 25.442543, 24.122921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813026, 25.324799, 23.740643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055255, 0.954217, -0.293965,
		0.998472, 0.053113, -0.015270,
		0.001043, -0.294359, -0.955694,
		32.813339, 25.236490, 23.453934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327129, 25.814524, 23.719559>,  <32.812611, 25.442543, 24.122921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327129, 25.814524, 23.719559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060757, 25.708031, 23.440804>,  <32.900932, 25.644135, 23.273550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060757, 25.708031, 23.440804>,  <33.327129, 25.814524, 23.719559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060757, 25.708031, 23.440804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080909, 0.902867, -0.422239,
		0.741608, -0.337568, -0.579711,
		-0.665936, -0.266232, -0.696886,
		32.860977, 25.628160, 23.231737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568687, 26.173532, 23.170155>,  <33.327129, 25.814524, 23.719559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568687, 26.173532, 23.170155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205902, 26.082378, 23.028461>,  <32.988232, 26.027685, 22.943445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205902, 26.082378, 23.028461>,  <33.568687, 26.173532, 23.170155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205902, 26.082378, 23.028461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043432, 0.785923, -0.616798,
		0.418959, -0.574799, -0.702908,
		-0.906966, -0.227885, -0.354234,
		32.933811, 26.014013, 22.922192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631870, 26.326359, 22.549829>,  <33.568687, 26.173532, 23.170155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631870, 26.326359, 22.549829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.234867, 26.277897, 22.543507>,  <32.996666, 26.248819, 22.539713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.234867, 26.277897, 22.543507>,  <33.631870, 26.326359, 22.549829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234867, 26.277897, 22.543507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062952, 0.617949, -0.783693,
		0.104716, -0.776827, -0.620947,
		-0.992508, -0.121155, -0.015807,
		32.937115, 26.241550, 22.538765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372974, 25.965128, 21.863977>,  <33.631870, 26.326359, 22.549829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372974, 25.965128, 21.863977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.097584, 26.200333, 22.033798>,  <32.932350, 26.341455, 22.135691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.097584, 26.200333, 22.033798>,  <33.372974, 25.965128, 21.863977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097584, 26.200333, 22.033798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019632, 0.600275, -0.799553,
		-0.724995, -0.542137, -0.424817,
		-0.688475, 0.588012, 0.424553,
		32.891041, 26.376736, 22.161163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050671, 26.280403, 21.235373>,  <33.372974, 25.965128, 21.863977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050671, 26.280403, 21.235373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.907997, 26.520382, 21.521824>,  <32.822392, 26.664370, 21.693695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.907997, 26.520382, 21.521824>,  <33.050671, 26.280403, 21.235373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907997, 26.520382, 21.521824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069110, 0.747503, -0.660654,
		-0.931664, -0.285139, -0.225163,
		-0.356688, 0.599946, 0.716127,
		32.800991, 26.700365, 21.736662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411377, 26.683851, 20.988947>,  <33.050671, 26.280403, 21.235373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411377, 26.683851, 20.988947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.589741, 26.880482, 21.288151>,  <32.696758, 26.998461, 21.467672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.589741, 26.880482, 21.288151>,  <32.411377, 26.683851, 20.988947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589741, 26.880482, 21.288151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285130, 0.714145, -0.639295,
		-0.848449, 0.498347, 0.178280,
		0.445909, 0.491577, 0.748009,
		32.723515, 27.027954, 21.512554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737339, 26.498426, 21.114609>,  <32.411377, 26.683851, 20.988947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737339, 26.498426, 21.114609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.530582, 26.309044, 20.829327>,  <31.406528, 26.195415, 20.658157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.530582, 26.309044, 20.829327>,  <31.737339, 26.498426, 21.114609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530582, 26.309044, 20.829327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368322, -0.875077, 0.313972,
		-0.772763, -0.100401, 0.626703,
		-0.516891, -0.473455, -0.713208,
		31.375515, 26.167007, 20.615364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330282, 25.996113, 21.418818>,  <31.737339, 26.498426, 21.114609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330282, 25.996113, 21.418818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.298122, 25.851814, 21.047142>,  <31.278826, 25.765234, 20.824137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.298122, 25.851814, 21.047142>,  <31.330282, 25.996113, 21.418818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298122, 25.851814, 21.047142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267625, -0.905792, 0.328507,
		-0.960163, -0.222263, 0.169373,
		-0.080402, -0.360749, -0.929191,
		31.274002, 25.743589, 20.768385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833218, 25.513388, 21.458385>,  <31.330282, 25.996113, 21.418818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833218, 25.513388, 21.458385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.014402, 25.408867, 21.117435>,  <31.123114, 25.346155, 20.912865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.014402, 25.408867, 21.117435>,  <30.833218, 25.513388, 21.458385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014402, 25.408867, 21.117435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168650, -0.963935, 0.205878,
		-0.875431, 0.050497, -0.480697,
		0.452965, -0.261302, -0.852376,
		31.150291, 25.330477, 20.861723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504631, 24.945633, 21.183964>,  <30.833218, 25.513388, 21.458385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504631, 24.945633, 21.183964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838615, 24.907871, 20.967102>,  <31.039005, 24.885214, 20.836985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.838615, 24.907871, 20.967102>,  <30.504631, 24.945633, 21.183964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838615, 24.907871, 20.967102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049941, -0.994110, 0.096187,
		-0.548040, -0.053236, -0.834756,
		0.834960, -0.094402, -0.542153,
		31.089104, 24.879551, 20.804457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431370, 24.609730, 20.597235>,  <30.504631, 24.945633, 21.183964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431370, 24.609730, 20.597235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.813641, 24.539440, 20.691727>,  <31.043003, 24.497267, 20.748423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.813641, 24.539440, 20.691727>,  <30.431370, 24.609730, 20.597235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813641, 24.539440, 20.691727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200206, -0.976164, 0.083796,
		0.215874, -0.127376, -0.968077,
		0.955676, -0.175725, 0.236230,
		31.100344, 24.486723, 20.762596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555859, 23.836479, 20.323267>,  <30.431370, 24.609730, 20.597235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555859, 23.836479, 20.323267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.854462, 23.901012, 20.581474>,  <31.033625, 23.939732, 20.736399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.854462, 23.901012, 20.581474>,  <30.555859, 23.836479, 20.323267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854462, 23.901012, 20.581474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106416, -0.928722, 0.355178,
		0.656809, -0.333837, -0.676132,
		0.746510, 0.161333, 0.645519,
		31.078415, 23.949413, 20.775129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941465, 23.287037, 20.283072>,  <30.555859, 23.836479, 20.323267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941465, 23.287037, 20.283072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.064756, 23.450081, 20.626896>,  <31.138731, 23.547907, 20.833191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.064756, 23.450081, 20.626896>,  <30.941465, 23.287037, 20.283072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064756, 23.450081, 20.626896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101188, -0.884381, 0.455665,
		0.945916, -0.227426, -0.231345,
		0.308227, 0.407612, 0.859563,
		31.157225, 23.572365, 20.884766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404049, 22.793024, 20.505999>,  <30.941465, 23.287037, 20.283072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404049, 22.793024, 20.505999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.283539, 23.007431, 20.821445>,  <31.211233, 23.136076, 21.010714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.283539, 23.007431, 20.821445>,  <31.404049, 22.793024, 20.505999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283539, 23.007431, 20.821445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206060, -0.844100, 0.495009,
		0.931006, -0.013367, 0.364760,
		-0.301277, 0.536019, 0.788616,
		31.193155, 23.168236, 21.058031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607847, 22.394516, 21.080626>,  <31.404049, 22.793024, 20.505999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607847, 22.394516, 21.080626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350925, 22.653576, 21.244576>,  <31.196774, 22.809011, 21.342945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350925, 22.653576, 21.244576>,  <31.607847, 22.394516, 21.080626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350925, 22.653576, 21.244576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287978, -0.699511, 0.654029,
		0.710293, 0.302050, 0.635807,
		-0.642303, 0.647650, 0.409874,
		31.158234, 22.847872, 21.367538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750748, 22.665014, 21.730366>,  <31.607847, 22.394516, 21.080626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750748, 22.665014, 21.730366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353243, 22.695988, 21.698261>,  <31.114740, 22.714571, 21.678999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353243, 22.695988, 21.698261>,  <31.750748, 22.665014, 21.730366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353243, 22.695988, 21.698261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111468, -0.666643, 0.736995,
		0.003562, 0.741344, 0.671115,
		-0.993762, 0.077433, -0.080262,
		31.055115, 22.719217, 21.674183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520405, 22.744469, 22.383377>,  <31.750748, 22.665014, 21.730366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520405, 22.744469, 22.383377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.222136, 22.585587, 22.169384>,  <31.043175, 22.490257, 22.040989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.222136, 22.585587, 22.169384>,  <31.520405, 22.744469, 22.383377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222136, 22.585587, 22.169384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250353, -0.577053, 0.777389,
		-0.617494, 0.713610, 0.330851,
		-0.745671, -0.397203, -0.534981,
		30.998434, 22.466425, 22.008890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098700, 22.611284, 22.872507>,  <31.520405, 22.744469, 22.383377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098700, 22.611284, 22.872507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.962601, 22.381416, 22.574787>,  <30.880941, 22.243496, 22.396154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.962601, 22.381416, 22.574787>,  <31.098700, 22.611284, 22.872507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962601, 22.381416, 22.574787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302625, -0.682498, 0.665293,
		-0.890309, 0.451609, 0.058309,
		-0.340248, -0.574670, -0.744302,
		30.860527, 22.209015, 22.351496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320393, 22.511492, 22.999796>,  <31.098700, 22.611284, 22.872507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320393, 22.511492, 22.999796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491913, 22.229099, 22.774330>,  <30.594824, 22.059664, 22.639050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491913, 22.229099, 22.774330>,  <30.320393, 22.511492, 22.999796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491913, 22.229099, 22.774330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120066, -0.662939, 0.738983,
		-0.895386, -0.249197, -0.369032,
		0.428798, -0.705983, -0.563666,
		30.620552, 22.017303, 22.605230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909006, 21.850492, 23.025930>,  <30.320393, 22.511492, 22.999796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909006, 21.850492, 23.025930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.272902, 21.729603, 22.912064>,  <30.491240, 21.657068, 22.843742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.272902, 21.729603, 22.912064>,  <29.909006, 21.850492, 23.025930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272902, 21.729603, 22.912064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034434, -0.628364, 0.777157,
		-0.413751, -0.716812, -0.561240,
		0.909739, -0.302224, -0.284669,
		30.545822, 21.638935, 22.826662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343651, 21.266001, 22.877825>,  <29.909006, 21.850492, 23.025930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343651, 21.266001, 22.877825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.956455, 21.189827, 22.943222>,  <28.724138, 21.144123, 22.982460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.956455, 21.189827, 22.943222>,  <29.343651, 21.266001, 22.877825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956455, 21.189827, 22.943222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250812, 0.709456, -0.658608,
		0.009431, -0.678532, -0.734510,
		-0.967990, -0.190436, 0.163493,
		28.666058, 21.132696, 22.992270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007307, 21.323717, 22.207615>,  <29.343651, 21.266001, 22.877825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007307, 21.323717, 22.207615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.716850, 21.353580, 22.481007>,  <28.542576, 21.371498, 22.645042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.716850, 21.353580, 22.481007>,  <29.007307, 21.323717, 22.207615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716850, 21.353580, 22.481007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420138, 0.738714, -0.527054,
		-0.544244, -0.669872, -0.505044,
		-0.726142, 0.074658, 0.683480,
		28.499008, 21.375978, 22.686050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332987, 21.272961, 21.870441>,  <29.007307, 21.323717, 22.207615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332987, 21.272961, 21.870441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.278500, 21.456600, 22.221592>,  <28.245808, 21.566784, 22.432283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.278500, 21.456600, 22.221592>,  <28.332987, 21.272961, 21.870441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278500, 21.456600, 22.221592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426030, 0.772868, -0.470291,
		-0.894395, -0.438065, 0.090311,
		-0.136219, 0.459101, 0.877878,
		28.237635, 21.594330, 22.484955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799145, 21.657192, 21.602917>,  <28.332987, 21.272961, 21.870441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799145, 21.657192, 21.602917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.842417, 21.794312, 21.976181>,  <27.868380, 21.876583, 22.200140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.842417, 21.794312, 21.976181>,  <27.799145, 21.657192, 21.602917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842417, 21.794312, 21.976181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438384, 0.858924, -0.264705,
		-0.892254, -0.380448, 0.243193,
		0.108178, 0.342796, 0.933160,
		27.874870, 21.897150, 22.256128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083275, 21.891342, 21.855801>,  <27.799145, 21.657192, 21.602917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083275, 21.891342, 21.855801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.392942, 22.087784, 22.015541>,  <27.578743, 22.205648, 22.111385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.392942, 22.087784, 22.015541>,  <27.083275, 21.891342, 21.855801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392942, 22.087784, 22.015541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360834, 0.860757, -0.359021,
		-0.520060, 0.133844, 0.843578,
		0.774169, 0.491104, 0.399350,
		27.625193, 22.235115, 22.135345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819872, 22.477070, 22.079998>,  <27.083275, 21.891342, 21.855801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819872, 22.477070, 22.079998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.212906, 22.550312, 22.067333>,  <27.448727, 22.594257, 22.059734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.212906, 22.550312, 22.067333>,  <26.819872, 22.477070, 22.079998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212906, 22.550312, 22.067333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181689, 0.910945, -0.370363,
		-0.038971, 0.369666, 0.928347,
		0.982584, 0.183103, -0.031664,
		27.507681, 22.605244, 22.057835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882462, 23.241816, 22.196121>,  <26.819872, 22.477070, 22.079998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882462, 23.241816, 22.196121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.260664, 23.154507, 22.099476>,  <27.487585, 23.102121, 22.041489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.260664, 23.154507, 22.099476>,  <26.882462, 23.241816, 22.196121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260664, 23.154507, 22.099476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126932, 0.930418, -0.343817,
		0.299849, 0.294411, 0.907421,
		0.945504, -0.218274, -0.241615,
		27.544315, 23.089025, 22.026991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353621, 23.630777, 22.628977>,  <26.882462, 23.241816, 22.196121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353621, 23.630777, 22.628977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.509068, 23.517162, 22.278366>,  <27.602335, 23.448994, 22.067999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.509068, 23.517162, 22.278366>,  <27.353621, 23.630777, 22.628977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509068, 23.517162, 22.278366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112229, 0.929624, -0.351003,
		0.914539, 0.234778, 0.329391,
		0.388617, -0.284039, -0.876526,
		27.625652, 23.431952, 22.015408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987661, 24.129187, 22.494381>,  <27.353621, 23.630777, 22.628977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987661, 24.129187, 22.494381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.864008, 23.959007, 22.154163>,  <27.789816, 23.856899, 21.950031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.864008, 23.959007, 22.154163>,  <27.987661, 24.129187, 22.494381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864008, 23.959007, 22.154163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013064, 0.896169, -0.443521,
		0.950929, -0.125996, -0.282595,
		-0.309134, -0.425449, -0.850546,
		27.771267, 23.831373, 21.899000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327362, 24.427488, 22.041801>,  <27.987661, 24.129187, 22.494381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327362, 24.427488, 22.041801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.024137, 24.273037, 21.831566>,  <27.842203, 24.180367, 21.705423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.024137, 24.273037, 21.831566>,  <28.327362, 24.427488, 22.041801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024137, 24.273037, 21.831566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123067, 0.876111, -0.466138,
		0.640465, -0.288679, -0.711667,
		-0.758063, -0.386128, -0.525591,
		27.796719, 24.157198, 21.673889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444721, 24.641350, 21.311798>,  <28.327362, 24.427488, 22.041801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444721, 24.641350, 21.311798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.054197, 24.558350, 21.336327>,  <27.819883, 24.508549, 21.351044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.054197, 24.558350, 21.336327>,  <28.444721, 24.641350, 21.311798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054197, 24.558350, 21.336327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207291, 0.815740, -0.540000,
		0.062028, -0.539919, -0.839428,
		-0.976311, -0.207501, 0.061322,
		27.761305, 24.496099, 21.354723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104452, 24.591116, 20.595169>,  <28.444721, 24.641350, 21.311798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104452, 24.591116, 20.595169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.812923, 24.661156, 20.859943>,  <27.638006, 24.703178, 21.018808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.812923, 24.661156, 20.859943>,  <28.104452, 24.591116, 20.595169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812923, 24.661156, 20.859943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319033, 0.768552, -0.554568,
		-0.605837, -0.615360, -0.504275,
		-0.728820, 0.175097, 0.661938,
		27.594276, 24.713684, 21.058525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635838, 24.767437, 20.169273>,  <28.104452, 24.591116, 20.595169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635838, 24.767437, 20.169273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.506500, 24.902420, 20.522900>,  <27.428898, 24.983410, 20.735075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.506500, 24.902420, 20.522900>,  <27.635838, 24.767437, 20.169273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506500, 24.902420, 20.522900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359295, 0.820508, -0.444606,
		-0.875418, -0.461400, -0.144058,
		-0.323341, 0.337457, 0.884066,
		27.409498, 25.003656, 20.788120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972670, 25.024157, 20.012852>,  <27.635838, 24.767437, 20.169273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972670, 25.024157, 20.012852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.105053, 25.173031, 20.359711>,  <27.184483, 25.262356, 20.567825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.105053, 25.173031, 20.359711>,  <26.972670, 25.024157, 20.012852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105053, 25.173031, 20.359711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361177, 0.898921, -0.247977,
		-0.871790, -0.231124, 0.431930,
		0.330958, 0.372187, 0.867147,
		27.204340, 25.284687, 20.619854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.342758, 26.562489, 28.523382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.706825, 26.703636, 28.436592>,  <41.925266, 26.788324, 28.384518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.706825, 26.703636, 28.436592>,  <41.342758, 26.562489, 28.523382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706825, 26.703636, 28.436592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389253, 0.549385, -0.739363,
		-0.141695, 0.757403, 0.637388,
		0.910167, 0.352870, -0.216976,
		41.979874, 26.809498, 28.371500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301876, 27.273516, 28.589111>,  <41.342758, 26.562489, 28.523382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301876, 27.273516, 28.589111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.621151, 27.203125, 28.358658>,  <41.812717, 27.160891, 28.220387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.621151, 27.203125, 28.358658>,  <41.301876, 27.273516, 28.589111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621151, 27.203125, 28.358658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445204, 0.471959, -0.760952,
		0.405821, 0.863879, 0.298366,
		0.798187, -0.175976, -0.576134,
		41.860607, 27.150331, 28.185818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491821, 27.923191, 28.255728>,  <41.301876, 27.273516, 28.589111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491821, 27.923191, 28.255728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.657925, 27.638832, 28.028683>,  <41.757587, 27.468216, 27.892456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.657925, 27.638832, 28.028683>,  <41.491821, 27.923191, 28.255728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657925, 27.638832, 28.028683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292661, 0.486385, -0.823273,
		0.861343, 0.507988, -0.006078,
		0.415257, -0.710899, -0.567613,
		41.782501, 27.425562, 27.858398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994850, 28.276930, 27.870596>,  <41.491821, 27.923191, 28.255728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994850, 28.276930, 27.870596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.902267, 27.938339, 27.678802>,  <41.846718, 27.735184, 27.563726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.902267, 27.938339, 27.678802>,  <41.994850, 28.276930, 27.870596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902267, 27.938339, 27.678802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219268, 0.525574, -0.822005,
		0.947813, -0.085122, -0.307253,
		-0.231455, -0.846479, -0.479481,
		41.832832, 27.684395, 27.534958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307648, 28.398149, 27.246607>,  <41.994850, 28.276930, 27.870596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307648, 28.398149, 27.246607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.071457, 28.092529, 27.142639>,  <41.929741, 27.909157, 27.080259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.071457, 28.092529, 27.142639>,  <42.307648, 28.398149, 27.246607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071457, 28.092529, 27.142639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220848, 0.462741, -0.858544,
		0.776246, -0.449552, -0.441979,
		-0.590482, -0.764051, -0.259918,
		41.894314, 27.863314, 27.064663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408978, 28.397415, 26.598574>,  <42.307648, 28.398149, 27.246607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408978, 28.397415, 26.598574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.057411, 28.210373, 26.636204>,  <41.846470, 28.098146, 26.658781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.057411, 28.210373, 26.636204>,  <42.408978, 28.397415, 26.598574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057411, 28.210373, 26.636204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308197, 0.406227, -0.860229,
		0.364038, -0.785061, -0.501155,
		-0.878915, -0.467610, 0.094072,
		41.793736, 28.070091, 26.664425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278019, 28.015097, 25.908939>,  <42.408978, 28.397415, 26.598574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278019, 28.015097, 25.908939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.961124, 28.100468, 26.137608>,  <41.770988, 28.151691, 26.274809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.961124, 28.100468, 26.137608>,  <42.278019, 28.015097, 25.908939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961124, 28.100468, 26.137608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348617, 0.610593, -0.711086,
		-0.500823, -0.762643, -0.409330,
		-0.792239, 0.213429, 0.571669,
		41.723454, 28.164495, 26.309109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747684, 27.755537, 25.522583>,  <42.278019, 28.015097, 25.908939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747684, 27.755537, 25.522583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.605736, 28.048145, 25.755459>,  <41.520565, 28.223709, 25.895184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.605736, 28.048145, 25.755459>,  <41.747684, 27.755537, 25.522583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605736, 28.048145, 25.755459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442725, 0.416981, -0.793802,
		-0.823442, -0.539451, 0.175885,
		-0.354876, 0.731518, 0.582188,
		41.499271, 28.267601, 25.930115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093590, 27.930258, 25.174492>,  <41.747684, 27.755537, 25.522583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093590, 27.930258, 25.174492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.118076, 28.236698, 25.430412>,  <41.132767, 28.420563, 25.583965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.118076, 28.236698, 25.430412>,  <41.093590, 27.930258, 25.174492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118076, 28.236698, 25.430412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493960, 0.580256, -0.647539,
		-0.867327, -0.276396, 0.413943,
		0.061216, 0.766099, 0.639800,
		41.136440, 28.466528, 25.622353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459717, 28.250505, 25.232813>,  <41.093590, 27.930258, 25.174492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459717, 28.250505, 25.232813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.702995, 28.544270, 25.353306>,  <40.848961, 28.720528, 25.425602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.702995, 28.544270, 25.353306>,  <40.459717, 28.250505, 25.232813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702995, 28.544270, 25.353306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484750, 0.644137, -0.591697,
		-0.628585, 0.213842, 0.747765,
		0.608192, 0.734411, 0.301235,
		40.885452, 28.764593, 25.443676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031387, 28.828081, 25.366037>,  <40.459717, 28.250505, 25.232813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031387, 28.828081, 25.366037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402565, 28.960712, 25.297943>,  <40.625271, 29.040291, 25.257086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402565, 28.960712, 25.297943>,  <40.031387, 28.828081, 25.366037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402565, 28.960712, 25.297943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362460, 0.696312, -0.619493,
		-0.086871, 0.636558, 0.766320,
		0.927942, 0.331576, -0.170238,
		40.680946, 29.060184, 25.246872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945862, 29.534100, 25.192808>,  <40.031387, 28.828081, 25.366037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945862, 29.534100, 25.192808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.333572, 29.494015, 25.102962>,  <40.566200, 29.469963, 25.049055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.333572, 29.494015, 25.102962>,  <39.945862, 29.534100, 25.192808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333572, 29.494015, 25.102962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095112, 0.689463, -0.718049,
		0.226821, 0.717355, 0.658752,
		0.969281, -0.100213, -0.224614,
		40.624355, 29.463951, 25.035578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238655, 30.216278, 25.254791>,  <39.945862, 29.534100, 25.192808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238655, 30.216278, 25.254791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.456360, 30.001453, 24.997002>,  <40.586983, 29.872559, 24.842329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.456360, 30.001453, 24.997002>,  <40.238655, 30.216278, 25.254791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456360, 30.001453, 24.997002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109466, 0.716188, -0.689269,
		0.831743, 0.445690, 0.331005,
		0.544262, -0.537061, -0.644472,
		40.619640, 29.840336, 24.803659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788918, 30.688177, 25.042755>,  <40.238655, 30.216278, 25.254791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788918, 30.688177, 25.042755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.753971, 30.392246, 24.775913>,  <40.733002, 30.214687, 24.615808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.753971, 30.392246, 24.775913>,  <40.788918, 30.688177, 25.042755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753971, 30.392246, 24.775913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038414, 0.671667, -0.739856,
		0.995436, -0.039011, -0.087099,
		-0.087364, -0.739825, -0.667103,
		40.727760, 30.170300, 24.575783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326481, 30.816359, 24.413227>,  <40.788918, 30.688177, 25.042755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326481, 30.816359, 24.413227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.024845, 30.588589, 24.282318>,  <40.843864, 30.451927, 24.203773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.024845, 30.588589, 24.282318>,  <41.326481, 30.816359, 24.413227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024845, 30.588589, 24.282318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139725, 0.625987, -0.767214,
		0.641746, -0.532813, -0.551609,
		-0.754082, -0.569430, -0.327277,
		40.798618, 30.417761, 24.184137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439659, 30.647133, 23.710161>,  <41.326481, 30.816359, 24.413227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439659, 30.647133, 23.710161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.046883, 30.620834, 23.781113>,  <40.811214, 30.605055, 23.823683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.046883, 30.620834, 23.781113>,  <41.439659, 30.647133, 23.710161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046883, 30.620834, 23.781113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184379, 0.542311, -0.819697,
		-0.042301, -0.837602, -0.544641,
		-0.981944, -0.065746, 0.177377,
		40.752300, 30.601110, 23.834326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279327, 30.634993, 23.059113>,  <41.439659, 30.647133, 23.710161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279327, 30.634993, 23.059113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.930984, 30.702942, 23.243610>,  <40.721977, 30.743711, 23.354309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.930984, 30.702942, 23.243610>,  <41.279327, 30.634993, 23.059113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930984, 30.702942, 23.243610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266115, 0.626014, -0.733000,
		-0.413264, -0.761084, -0.499964,
		-0.870859, 0.169875, 0.461245,
		40.669727, 30.753904, 23.381985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735901, 30.587149, 22.533401>,  <41.279327, 30.634993, 23.059113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735901, 30.587149, 22.533401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.590500, 30.806236, 22.834831>,  <40.503258, 30.937689, 23.015688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.590500, 30.806236, 22.834831>,  <40.735901, 30.587149, 22.533401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590500, 30.806236, 22.834831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165619, 0.758027, -0.630846,
		-0.916753, -0.354119, -0.184832,
		-0.363502, 0.547718, 0.753572,
		40.481449, 30.970552, 23.060904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112438, 30.822718, 22.270683>,  <40.735901, 30.587149, 22.533401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112438, 30.822718, 22.270683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.187916, 31.080544, 22.567043>,  <40.233204, 31.235239, 22.744860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.187916, 31.080544, 22.567043>,  <40.112438, 30.822718, 22.270683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187916, 31.080544, 22.567043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076260, 0.761793, -0.643317,
		-0.979071, 0.064888, 0.192900,
		0.188693, 0.644563, 0.740901,
		40.244522, 31.273912, 22.789314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593811, 31.295065, 22.318386>,  <40.112438, 30.822718, 22.270683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593811, 31.295065, 22.318386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.885075, 31.509853, 22.488773>,  <40.059834, 31.638725, 22.591005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.885075, 31.509853, 22.488773>,  <39.593811, 31.295065, 22.318386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885075, 31.509853, 22.488773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184552, 0.752129, -0.632647,
		-0.660095, 0.382055, 0.646768,
		0.728159, 0.536969, 0.425967,
		40.103523, 31.670944, 22.616564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290607, 31.934881, 22.421701>,  <39.593811, 31.295065, 22.318386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290607, 31.934881, 22.421701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.685017, 32.000778, 22.411716>,  <39.921661, 32.040318, 22.405725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.685017, 32.000778, 22.411716>,  <39.290607, 31.934881, 22.421701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685017, 32.000778, 22.411716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148651, 0.802064, -0.578443,
		-0.075274, 0.574067, 0.815341,
		0.986021, 0.164743, -0.024960,
		39.980824, 32.050201, 22.404228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647942, 31.654392, 22.362654>,  <39.290607, 31.934881, 22.421701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647942, 31.654392, 22.362654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.300285, 31.851452, 22.380062>,  <38.091694, 31.969688, 22.390507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.300285, 31.851452, 22.380062>,  <38.647942, 31.654392, 22.362654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300285, 31.851452, 22.380062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025880, -0.042577, 0.998758,
		0.493890, 0.869186, 0.024256,
		-0.869139, 0.492649, 0.043522,
		38.039543, 31.999247, 22.393118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733547, 32.280663, 22.845196>,  <38.647942, 31.654392, 22.362654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733547, 32.280663, 22.845196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.349361, 32.170059, 22.832195>,  <38.118851, 32.103699, 22.824396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.349361, 32.170059, 22.832195>,  <38.733547, 32.280663, 22.845196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349361, 32.170059, 22.832195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009704, -0.083418, 0.996467,
		-0.278239, 0.957385, 0.077437,
		-0.960463, -0.276505, -0.032500,
		38.061222, 32.087109, 22.822445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385345, 32.716942, 23.369759>,  <38.733547, 32.280663, 22.845196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385345, 32.716942, 23.369759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.126072, 32.418896, 23.306942>,  <37.970509, 32.240067, 23.269253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.126072, 32.418896, 23.306942>,  <38.385345, 32.716942, 23.369759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126072, 32.418896, 23.306942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190591, -0.040921, 0.980816,
		-0.737247, 0.665680, -0.115488,
		-0.648184, -0.745115, -0.157042,
		37.931618, 32.195362, 23.259830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661121, 32.787621, 23.704369>,  <38.385345, 32.716942, 23.369759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661121, 32.787621, 23.704369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.668415, 32.390137, 23.660164>,  <37.672791, 32.151646, 23.633640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.668415, 32.390137, 23.660164>,  <37.661121, 32.787621, 23.704369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668415, 32.390137, 23.660164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098958, -0.111782, 0.988793,
		-0.994924, -0.007094, -0.100373,
		0.018234, -0.993707, -0.110512,
		37.673885, 32.092026, 23.627010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127430, 32.482944, 24.133451>,  <37.661121, 32.787621, 23.704369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127430, 32.482944, 24.133451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.382202, 32.184155, 24.057198>,  <37.535065, 32.004879, 24.011444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.382202, 32.184155, 24.057198>,  <37.127430, 32.482944, 24.133451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382202, 32.184155, 24.057198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031759, -0.272497, 0.961632,
		-0.770266, -0.606439, -0.197285,
		0.636931, -0.746978, -0.190636,
		37.573280, 31.960060, 24.000008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907459, 31.981173, 24.606363>,  <37.127430, 32.482944, 24.133451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907459, 31.981173, 24.606363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.265789, 31.854115, 24.482044>,  <37.480789, 31.777880, 24.407454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.265789, 31.854115, 24.482044>,  <36.907459, 31.981173, 24.606363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265789, 31.854115, 24.482044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190942, -0.356403, 0.914614,
		-0.401295, -0.878679, -0.258623,
		0.895826, -0.317648, -0.310799,
		37.534538, 31.758821, 24.388805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932758, 31.346157, 24.923285>,  <36.907459, 31.981173, 24.606363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932758, 31.346157, 24.923285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.312546, 31.403561, 24.811626>,  <37.540417, 31.438004, 24.744631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.312546, 31.403561, 24.811626>,  <36.932758, 31.346157, 24.923285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312546, 31.403561, 24.811626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307503, -0.603611, 0.735592,
		-0.062930, -0.784256, -0.617237,
		0.949464, 0.143511, -0.279147,
		37.597385, 31.446613, 24.727882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349934, 30.726679, 24.937819>,  <36.932758, 31.346157, 24.923285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349934, 30.726679, 24.937819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.617908, 31.019569, 24.986870>,  <37.778694, 31.195303, 25.016300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.617908, 31.019569, 24.986870>,  <37.349934, 30.726679, 24.937819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617908, 31.019569, 24.986870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481723, -0.554399, 0.678664,
		0.564918, -0.395588, -0.724139,
		0.669933, 0.732224, 0.122626,
		37.818890, 31.239237, 25.023657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963703, 30.336523, 24.940769>,  <37.349934, 30.726679, 24.937819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963703, 30.336523, 24.940769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.045895, 30.696697, 25.094128>,  <38.095211, 30.912802, 25.186142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.045895, 30.696697, 25.094128>,  <37.963703, 30.336523, 24.940769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045895, 30.696697, 25.094128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482844, -0.434030, 0.760578,
		0.851258, 0.028838, -0.523954,
		0.205478, 0.900437, 0.383396,
		38.107536, 30.966827, 25.209146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637447, 30.282024, 25.256927>,  <37.963703, 30.336523, 24.940769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637447, 30.282024, 25.256927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.482315, 30.612617, 25.420151>,  <38.389236, 30.810974, 25.518085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.482315, 30.612617, 25.420151>,  <38.637447, 30.282024, 25.256927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482315, 30.612617, 25.420151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348838, -0.278167, 0.894950,
		0.853168, 0.489439, -0.180426,
		-0.387834, 0.826482, 0.408058,
		38.365963, 30.860561, 25.542568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149178, 30.689198, 25.625731>,  <38.637447, 30.282024, 25.256927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149178, 30.689198, 25.625731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.793427, 30.770344, 25.789612>,  <38.579975, 30.819031, 25.887941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.793427, 30.770344, 25.789612>,  <39.149178, 30.689198, 25.625731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793427, 30.770344, 25.789612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289300, -0.444185, 0.847942,
		0.354004, 0.872665, 0.336358,
		-0.889374, 0.202866, 0.409706,
		38.526615, 30.831203, 25.912523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264759, 30.857971, 26.296011>,  <39.149178, 30.689198, 25.625731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264759, 30.857971, 26.296011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.871944, 30.810146, 26.354404>,  <38.636257, 30.781452, 26.389441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.871944, 30.810146, 26.354404>,  <39.264759, 30.857971, 26.296011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871944, 30.810146, 26.354404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170900, -0.235546, 0.956719,
		-0.080002, 0.964481, 0.251748,
		-0.982035, -0.119563, 0.145986,
		38.577335, 30.774277, 26.398201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160114, 31.120600, 27.014374>,  <39.264759, 30.857971, 26.296011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160114, 31.120600, 27.014374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.868423, 30.879345, 26.885098>,  <38.693409, 30.734592, 26.807531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.868423, 30.879345, 26.885098>,  <39.160114, 31.120600, 27.014374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868423, 30.879345, 26.885098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096115, -0.557917, 0.824312,
		-0.677484, 0.570050, 0.464820,
		-0.729230, -0.603135, -0.323190,
		38.649654, 30.698404, 26.788141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601273, 31.082275, 27.575521>,  <39.160114, 31.120600, 27.014374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601273, 31.082275, 27.575521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.616489, 30.768406, 27.328026>,  <38.625618, 30.580084, 27.179527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.616489, 30.768406, 27.328026>,  <38.601273, 31.082275, 27.575521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616489, 30.768406, 27.328026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235583, -0.594693, 0.768662,
		-0.971109, -0.175007, 0.162232,
		0.038043, -0.784674, -0.618741,
		38.627903, 30.533005, 27.142405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426285, 30.618237, 28.026083>,  <38.601273, 31.082275, 27.575521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426285, 30.618237, 28.026083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570995, 30.400974, 27.723003>,  <38.657822, 30.270617, 27.541157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570995, 30.400974, 27.723003>,  <38.426285, 30.618237, 28.026083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570995, 30.400974, 27.723003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377641, -0.657700, 0.651781,
		-0.852355, -0.521933, -0.032820,
		0.361772, -0.543154, -0.757697,
		38.679527, 30.238028, 27.495695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374966, 29.924265, 28.209656>,  <38.426285, 30.618237, 28.026083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374966, 29.924265, 28.209656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.640205, 29.897800, 27.911415>,  <38.799351, 29.881922, 27.732470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.640205, 29.897800, 27.911415>,  <38.374966, 29.924265, 28.209656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640205, 29.897800, 27.911415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481957, -0.724404, 0.492905,
		-0.572729, -0.686193, -0.448465,
		0.663098, -0.066160, -0.745603,
		38.839134, 29.877953, 27.687735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361282, 29.229689, 28.105938>,  <38.374966, 29.924265, 28.209656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361282, 29.229689, 28.105938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.685440, 29.383144, 27.928814>,  <38.879936, 29.475218, 27.822538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.685440, 29.383144, 27.928814>,  <38.361282, 29.229689, 28.105938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685440, 29.383144, 27.928814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573730, -0.672799, 0.467092,
		-0.118728, -0.632583, -0.765339,
		0.810394, 0.383640, -0.442811,
		38.928558, 29.498236, 27.795971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783310, 28.652153, 27.821573>,  <38.361282, 29.229689, 28.105938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783310, 28.652153, 27.821573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.024731, 28.963909, 27.888828>,  <39.169582, 29.150963, 27.929182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.024731, 28.963909, 27.888828>,  <38.783310, 28.652153, 27.821573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024731, 28.963909, 27.888828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598738, -0.582299, 0.549946,
		0.526529, -0.231253, -0.818101,
		0.603556, 0.779391, 0.168138,
		39.205799, 29.197727, 27.939270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466251, 28.311985, 27.733263>,  <38.783310, 28.652153, 27.821573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466251, 28.311985, 27.733263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.521420, 28.660236, 27.922150>,  <39.554520, 28.869186, 28.035482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.521420, 28.660236, 27.922150>,  <39.466251, 28.311985, 27.733263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521420, 28.660236, 27.922150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640197, -0.442150, 0.628212,
		0.755729, 0.215670, -0.618353,
		0.137918, 0.870626, 0.472217,
		39.562794, 28.921425, 28.063814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127918, 28.334023, 27.829504>,  <39.466251, 28.311985, 27.733263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127918, 28.334023, 27.829504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981590, 28.605091, 28.084671>,  <39.893795, 28.767733, 28.237772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981590, 28.605091, 28.084671>,  <40.127918, 28.334023, 27.829504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981590, 28.605091, 28.084671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565452, -0.382580, 0.730683,
		0.739217, 0.628008, -0.243236,
		-0.365818, 0.677671, 0.637918,
		39.871845, 28.808392, 28.276047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722038, 28.521032, 28.323198>,  <40.127918, 28.334023, 27.829504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722038, 28.521032, 28.323198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.387413, 28.640640, 28.506824>,  <40.186638, 28.712404, 28.617001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.387413, 28.640640, 28.506824>,  <40.722038, 28.521032, 28.323198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387413, 28.640640, 28.506824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352202, -0.348305, 0.868698,
		0.419653, 0.888409, 0.186066,
		-0.836568, 0.299019, 0.459067,
		40.136444, 28.730347, 28.644545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.847555, 22.304352, 25.486841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.245510, 22.282948, 25.521095>,  <28.484283, 22.270105, 25.541649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.245510, 22.282948, 25.521095>,  <27.847555, 22.304352, 25.486841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245510, 22.282948, 25.521095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091834, -0.832125, 0.546932,
		0.041994, -0.552001, -0.832785,
		0.994888, -0.053510, 0.085637,
		28.543976, 22.266895, 25.546787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107344, 21.587542, 25.139269>,  <27.847555, 22.304352, 25.486841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107344, 21.587542, 25.139269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.381765, 21.728374, 25.393944>,  <28.546417, 21.812874, 25.546749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.381765, 21.728374, 25.393944>,  <28.107344, 21.587542, 25.139269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381765, 21.728374, 25.393944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011336, -0.880176, 0.474512,
		0.727464, -0.318323, -0.607838,
		0.686052, 0.352081, 0.636687,
		28.587582, 21.834000, 25.584949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598827, 21.052475, 25.279270>,  <28.107344, 21.587542, 25.139269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598827, 21.052475, 25.279270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.681694, 21.270340, 25.604336>,  <28.731415, 21.401058, 25.799376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.681694, 21.270340, 25.604336>,  <28.598827, 21.052475, 25.279270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681694, 21.270340, 25.604336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091244, -0.837824, 0.538262,
		0.974041, -0.037360, -0.223267,
		0.207168, 0.544661, 0.812666,
		28.743845, 21.433739, 25.848135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178633, 20.727114, 25.664606>,  <28.598827, 21.052475, 25.279270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178633, 20.727114, 25.664606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.013582, 20.970062, 25.936146>,  <28.914551, 21.115831, 26.099070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.013582, 20.970062, 25.936146>,  <29.178633, 20.727114, 25.664606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013582, 20.970062, 25.936146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234015, -0.649557, 0.723403,
		0.880327, 0.457357, 0.125892,
		-0.412628, 0.607371, 0.678851,
		28.889793, 21.152273, 26.139801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560184, 20.618910, 26.259481>,  <29.178633, 20.727114, 25.664606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560184, 20.618910, 26.259481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.212873, 20.763630, 26.395245>,  <29.004488, 20.850462, 26.476702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.212873, 20.763630, 26.395245>,  <29.560184, 20.618910, 26.259481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212873, 20.763630, 26.395245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044533, -0.738259, 0.673046,
		0.494078, 0.569275, 0.657125,
		-0.868276, 0.361801, 0.339406,
		28.952391, 20.872169, 26.497066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639404, 20.464417, 27.007227>,  <29.560184, 20.618910, 26.259481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639404, 20.464417, 27.007227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.251495, 20.535454, 26.940289>,  <29.018751, 20.578077, 26.900126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.251495, 20.535454, 26.940289>,  <29.639404, 20.464417, 27.007227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251495, 20.535454, 26.940289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244018, -0.705677, 0.665188,
		0.000042, 0.685915, 0.727682,
		-0.969771, 0.177595, -0.167346,
		28.960564, 20.588732, 26.890085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279711, 20.558592, 27.752005>,  <29.639404, 20.464417, 27.007227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279711, 20.558592, 27.752005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.007549, 20.463348, 27.474773>,  <28.844254, 20.406202, 27.308435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.007549, 20.463348, 27.474773>,  <29.279711, 20.558592, 27.752005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007549, 20.463348, 27.474773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192468, -0.854484, 0.482508,
		-0.707113, 0.461694, 0.535564,
		-0.680402, -0.238109, -0.693078,
		28.803429, 20.391916, 27.266850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699589, 20.280518, 28.177603>,  <29.279711, 20.558592, 27.752005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699589, 20.280518, 28.177603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.605040, 20.139473, 27.815434>,  <28.548309, 20.054846, 27.598131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.605040, 20.139473, 27.815434>,  <28.699589, 20.280518, 28.177603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605040, 20.139473, 27.815434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176634, -0.900710, 0.396891,
		-0.955472, 0.253743, 0.150622,
		-0.236375, -0.352613, -0.905423,
		28.534128, 20.033689, 27.543806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123259, 19.855530, 28.249695>,  <28.699589, 20.280518, 28.177603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123259, 19.855530, 28.249695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.332649, 19.737995, 27.929787>,  <28.458282, 19.667475, 27.737843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.332649, 19.737995, 27.929787>,  <28.123259, 19.855530, 28.249695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332649, 19.737995, 27.929787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027541, -0.943998, 0.328801,
		-0.851595, -0.150093, -0.502252,
		0.523476, -0.293838, -0.799771,
		28.489693, 19.649843, 27.689856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824350, 19.173498, 28.097567>,  <28.123259, 19.855530, 28.249695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824350, 19.173498, 28.097567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.173494, 19.166107, 27.902519>,  <28.382980, 19.161673, 27.785490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.173494, 19.166107, 27.902519>,  <27.824350, 19.173498, 28.097567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173494, 19.166107, 27.902519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056762, -0.988654, 0.139075,
		-0.484656, -0.149071, -0.861909,
		0.872861, -0.018480, -0.487619,
		28.435352, 19.160563, 27.756233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742163, 18.608772, 27.648827>,  <27.824350, 19.173498, 28.097567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742163, 18.608772, 27.648827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.138420, 18.648228, 27.686554>,  <28.376175, 18.671902, 27.709190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.138420, 18.648228, 27.686554>,  <27.742163, 18.608772, 27.648827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138420, 18.648228, 27.686554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065212, -0.949220, 0.307782,
		0.119889, -0.298751, -0.946770,
		0.990643, 0.098640, 0.094319,
		28.435614, 18.677820, 27.714849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920086, 18.014128, 27.510408>,  <27.742163, 18.608772, 27.648827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920086, 18.014128, 27.510408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.271906, 18.165443, 27.625847>,  <28.482998, 18.256233, 27.695110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.271906, 18.165443, 27.625847>,  <27.920086, 18.014128, 27.510408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271906, 18.165443, 27.625847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290069, -0.907106, 0.304989,
		0.377162, -0.184540, -0.907576,
		0.879550, 0.378290, 0.288596,
		28.535770, 18.278931, 27.712425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455149, 17.904217, 27.068691>,  <27.920086, 18.014128, 27.510408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455149, 17.904217, 27.068691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.556347, 17.891811, 27.455479>,  <28.617065, 17.884369, 27.687551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.556347, 17.891811, 27.455479>,  <28.455149, 17.904217, 27.068691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556347, 17.891811, 27.455479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217443, -0.975737, 0.025599,
		0.942715, -0.216737, -0.253602,
		0.252997, -0.031011, 0.966970,
		28.632246, 17.882507, 27.745569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711710, 17.294567, 27.245329>,  <28.455149, 17.904217, 27.068691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711710, 17.294567, 27.245329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.620394, 17.404995, 27.618782>,  <28.565605, 17.471252, 27.842854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.620394, 17.404995, 27.618782>,  <28.711710, 17.294567, 27.245329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620394, 17.404995, 27.618782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192559, -0.952815, 0.234660,
		0.954361, -0.126209, 0.270677,
		-0.228289, 0.276072, 0.933632,
		28.551907, 17.487816, 27.898872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169352, 16.855270, 26.798931>,  <28.711710, 17.294567, 27.245329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169352, 16.855270, 26.798931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.384735, 16.728924, 26.486446>,  <29.513966, 16.653116, 26.298956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.384735, 16.728924, 26.486446>,  <29.169352, 16.855270, 26.798931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384735, 16.728924, 26.486446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233967, 0.834591, -0.498716,
		0.809520, 0.451315, 0.375490,
		0.538458, -0.315869, -0.781210,
		29.546272, 16.634163, 26.252083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438745, 17.414833, 26.501068>,  <29.169352, 16.855270, 26.798931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438745, 17.414833, 26.501068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.472378, 17.156319, 26.197689>,  <29.492558, 17.001209, 26.015661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.472378, 17.156319, 26.197689>,  <29.438745, 17.414833, 26.501068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472378, 17.156319, 26.197689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244112, 0.724589, -0.644499,
		0.966095, 0.239337, -0.096841,
		0.084083, -0.646288, -0.758447,
		29.497602, 16.962433, 25.970156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951176, 17.662336, 26.083374>,  <29.438745, 17.414833, 26.501068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951176, 17.662336, 26.083374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.761389, 17.424282, 25.823929>,  <29.647516, 17.281450, 25.668262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.761389, 17.424282, 25.823929>,  <29.951176, 17.662336, 26.083374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761389, 17.424282, 25.823929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021441, 0.728798, -0.684393,
		0.880013, -0.338627, -0.333028,
		-0.474465, -0.595135, -0.648613,
		29.619049, 17.245741, 25.629345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116333, 17.906530, 25.383696>,  <29.951176, 17.662336, 26.083374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116333, 17.906530, 25.383696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.799858, 17.679848, 25.291725>,  <29.609974, 17.543839, 25.236544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.799858, 17.679848, 25.291725>,  <30.116333, 17.906530, 25.383696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799858, 17.679848, 25.291725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323628, 0.706963, -0.628862,
		0.518930, -0.423137, -0.742743,
		-0.791187, -0.566708, -0.229925,
		29.562502, 17.509836, 25.222748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161249, 17.928185, 24.629118>,  <30.116333, 17.906530, 25.383696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161249, 17.928185, 24.629118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.798666, 17.826691, 24.764145>,  <29.581116, 17.765795, 24.845161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.798666, 17.826691, 24.764145>,  <30.161249, 17.928185, 24.629118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798666, 17.826691, 24.764145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412276, 0.704827, -0.577276,
		-0.091452, -0.662447, -0.743505,
		-0.906457, -0.253736, 0.337568,
		29.526730, 17.750570, 24.865416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707674, 17.541052, 23.997328>,  <30.161249, 17.928185, 24.629118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707674, 17.541052, 23.997328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.501091, 17.736614, 24.278538>,  <29.377140, 17.853951, 24.447264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.501091, 17.736614, 24.278538>,  <29.707674, 17.541052, 23.997328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501091, 17.736614, 24.278538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267153, 0.688020, -0.674728,
		-0.813572, -0.536284, -0.224723,
		-0.516460, 0.488904, 0.703024,
		29.346153, 17.883286, 24.489445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331261, 17.982023, 23.614691>,  <29.707674, 17.541052, 23.997328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331261, 17.982023, 23.614691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.255600, 18.138855, 23.974800>,  <29.210203, 18.232954, 24.190866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.255600, 18.138855, 23.974800>,  <29.331261, 17.982023, 23.614691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255600, 18.138855, 23.974800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219614, 0.876711, -0.427958,
		-0.957075, -0.278662, -0.079724,
		-0.189151, 0.392079, 0.900275,
		29.198854, 18.256479, 24.244883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684868, 18.247124, 23.493052>,  <29.331261, 17.982023, 23.614691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684868, 18.247124, 23.493052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.830366, 18.393333, 23.835766>,  <28.917665, 18.481060, 24.041393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.830366, 18.393333, 23.835766>,  <28.684868, 18.247124, 23.493052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830366, 18.393333, 23.835766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507379, 0.849118, -0.146849,
		-0.781188, -0.381298, 0.494325,
		0.363747, 0.365526, 0.856784,
		28.939489, 18.502991, 24.092800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069511, 18.620760, 23.764194>,  <28.684868, 18.247124, 23.493052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069511, 18.620760, 23.764194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.408251, 18.774376, 23.911362>,  <28.611494, 18.866545, 23.999662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.408251, 18.774376, 23.911362>,  <28.069511, 18.620760, 23.764194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408251, 18.774376, 23.911362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243640, 0.895067, -0.373490,
		-0.472748, 0.226649, 0.851552,
		0.846847, 0.384039, 0.367920,
		28.662304, 18.889587, 24.021738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907745, 19.183210, 24.162346>,  <28.069511, 18.620760, 23.764194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907745, 19.183210, 24.162346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.289501, 19.243576, 24.059299>,  <28.518555, 19.279795, 23.997471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.289501, 19.243576, 24.059299>,  <27.907745, 19.183210, 24.162346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289501, 19.243576, 24.059299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238056, 0.905405, -0.351528,
		0.180198, 0.396821, 0.900034,
		0.954389, 0.150914, -0.257618,
		28.575817, 19.288851, 23.982014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116339, 19.846922, 24.472143>,  <27.907745, 19.183210, 24.162346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116339, 19.846922, 24.472143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.394341, 19.808659, 24.187099>,  <28.561142, 19.785700, 24.016073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.394341, 19.808659, 24.187099>,  <28.116339, 19.846922, 24.472143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394341, 19.808659, 24.187099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215926, 0.917592, -0.333768,
		0.685815, 0.385842, 0.617076,
		0.695006, -0.095660, -0.712612,
		28.602842, 19.779961, 23.973316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486906, 20.496958, 24.454151>,  <28.116339, 19.846922, 24.472143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486906, 20.496958, 24.454151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.571198, 20.333866, 24.098770>,  <28.621773, 20.236012, 23.885542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.571198, 20.333866, 24.098770>,  <28.486906, 20.496958, 24.454151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571198, 20.333866, 24.098770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116483, 0.891914, -0.436945,
		0.970580, 0.195566, 0.140458,
		0.210728, -0.407729, -0.888454,
		28.634417, 20.211548, 23.832233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980387, 20.905529, 24.196518>,  <28.486906, 20.496958, 24.454151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980387, 20.905529, 24.196518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.840302, 20.711849, 23.875793>,  <28.756250, 20.595642, 23.683359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.840302, 20.711849, 23.875793>,  <28.980387, 20.905529, 24.196518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840302, 20.711849, 23.875793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162384, 0.874447, -0.457136,
		0.922488, -0.029893, -0.384867,
		-0.350211, -0.484199, -0.801813,
		28.735237, 20.566589, 23.635250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386602, 21.108139, 23.612720>,  <28.980387, 20.905529, 24.196518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386602, 21.108139, 23.612720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.036922, 20.975723, 23.470631>,  <28.827114, 20.896275, 23.385376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.036922, 20.975723, 23.470631>,  <29.386602, 21.108139, 23.612720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036922, 20.975723, 23.470631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093633, 0.832770, -0.545643,
		0.476450, -0.443742, -0.759005,
		-0.874202, -0.331039, -0.355224,
		28.774662, 20.876411, 23.364063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956192, 20.945864, 23.146587>,  <29.386602, 21.108139, 23.612720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956192, 20.945864, 23.146587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.322651, 21.047863, 23.022877>,  <30.542526, 21.109062, 22.948650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.322651, 21.047863, 23.022877>,  <29.956192, 20.945864, 23.146587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322651, 21.047863, 23.022877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361849, -0.858072, 0.364388,
		-0.172464, -0.445744, -0.878390,
		0.916145, 0.255000, -0.309279,
		30.597494, 21.124363, 22.930094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259106, 20.519232, 22.770132>,  <29.956192, 20.945864, 23.146587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259106, 20.519232, 22.770132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.566097, 20.712608, 22.938541>,  <30.750292, 20.828634, 23.039587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.566097, 20.712608, 22.938541>,  <30.259106, 20.519232, 22.770132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566097, 20.712608, 22.938541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293501, -0.848849, 0.439674,
		0.569942, -0.213870, -0.793364,
		0.767479, 0.483441, 0.421023,
		30.796341, 20.857641, 23.064848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890158, 20.107374, 22.544533>,  <30.259106, 20.519232, 22.770132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890158, 20.107374, 22.544533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.939308, 20.301643, 22.890717>,  <30.968798, 20.418205, 23.098427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.939308, 20.301643, 22.890717>,  <30.890158, 20.107374, 22.544533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939308, 20.301643, 22.890717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422644, -0.814643, 0.397151,
		0.897928, 0.316982, -0.305366,
		0.122874, 0.485674, 0.865461,
		30.976170, 20.447346, 23.150354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506060, 19.874594, 22.708860>,  <30.890158, 20.107374, 22.544533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506060, 19.874594, 22.708860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.376528, 20.024914, 23.056171>,  <31.298809, 20.115107, 23.264559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.376528, 20.024914, 23.056171>,  <31.506060, 19.874594, 22.708860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376528, 20.024914, 23.056171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484768, -0.722205, 0.493376,
		0.812487, 0.580683, 0.051695,
		-0.323829, 0.375801, 0.868279,
		31.279379, 20.137653, 23.316654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146606, 20.018078, 23.190746>,  <31.506060, 19.874594, 22.708860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146606, 20.018078, 23.190746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807562, 19.966320, 23.396587>,  <31.604136, 19.935265, 23.520092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807562, 19.966320, 23.396587>,  <32.146606, 20.018078, 23.190746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807562, 19.966320, 23.396587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493385, -0.549079, 0.674599,
		0.195268, 0.825693, 0.529245,
		-0.847609, -0.129394, 0.514602,
		31.553280, 19.927502, 23.550968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332886, 20.025778, 23.849409>,  <32.146606, 20.018078, 23.190746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332886, 20.025778, 23.849409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.970514, 19.872906, 23.922329>,  <31.753092, 19.781183, 23.966082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.970514, 19.872906, 23.922329>,  <32.332886, 20.025778, 23.849409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970514, 19.872906, 23.922329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403465, -0.648461, 0.645535,
		-0.128495, 0.658360, 0.741654,
		-0.905928, -0.382180, 0.182301,
		31.698736, 19.758251, 23.977020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392326, 19.901812, 24.528845>,  <32.332886, 20.025778, 23.849409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392326, 19.901812, 24.528845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.061893, 19.697903, 24.432751>,  <31.863632, 19.575558, 24.375095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.061893, 19.697903, 24.432751>,  <32.392326, 19.901812, 24.528845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061893, 19.697903, 24.432751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291669, -0.751512, 0.591743,
		-0.482193, 0.418762, 0.769499,
		-0.826087, -0.509773, -0.240234,
		31.814068, 19.544971, 24.360680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787468, 20.127386, 25.170599>,  <32.392326, 19.901812, 24.528845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787468, 20.127386, 25.170599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158501, 20.179798, 25.310558>,  <33.381119, 20.211245, 25.394535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158501, 20.179798, 25.310558>,  <32.787468, 20.127386, 25.170599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158501, 20.179798, 25.310558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121580, 0.779667, -0.614278,
		-0.353294, 0.612332, 0.707272,
		0.927578, 0.131030, 0.349899,
		33.436775, 20.219107, 25.415527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799858, 20.784336, 25.514130>,  <32.787468, 20.127386, 25.170599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799858, 20.784336, 25.514130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176647, 20.695736, 25.413239>,  <33.402721, 20.642576, 25.352705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176647, 20.695736, 25.413239>,  <32.799858, 20.784336, 25.514130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176647, 20.695736, 25.413239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100933, 0.903513, -0.416505,
		0.320146, 0.366879, 0.873445,
		0.941976, -0.221502, -0.252226,
		33.459240, 20.629286, 25.337570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174400, 21.382805, 25.770914>,  <32.799858, 20.784336, 25.514130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174400, 21.382805, 25.770914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415455, 21.216488, 25.498459>,  <33.560089, 21.116697, 25.334986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415455, 21.216488, 25.498459>,  <33.174400, 21.382805, 25.770914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415455, 21.216488, 25.498459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247607, 0.908837, -0.335718,
		0.758630, 0.033662, 0.650652,
		0.602637, -0.415792, -0.681136,
		33.596245, 21.091751, 25.294119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727104, 21.847952, 25.716637>,  <33.174400, 21.382805, 25.770914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727104, 21.847952, 25.716637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723549, 21.641685, 25.373940>,  <33.721416, 21.517925, 25.168322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723549, 21.641685, 25.373940>,  <33.727104, 21.847952, 25.716637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723549, 21.641685, 25.373940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084363, 0.853337, -0.514489,
		0.996395, -0.076852, 0.035916,
		-0.008891, -0.515665, -0.856744,
		33.720882, 21.486986, 25.116917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123238, 22.243210, 25.256390>,  <33.727104, 21.847952, 25.716637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123238, 22.243210, 25.256390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956875, 21.979301, 25.006039>,  <33.857056, 21.820955, 24.855827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956875, 21.979301, 25.006039>,  <34.123238, 22.243210, 25.256390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956875, 21.979301, 25.006039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047517, 0.671519, -0.739462,
		0.908166, -0.337286, -0.247938,
		-0.415905, -0.659773, -0.625878,
		33.832104, 21.781370, 24.818275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430534, 22.328699, 24.621162>,  <34.123238, 22.243210, 25.256390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430534, 22.328699, 24.621162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068169, 22.173893, 24.552418>,  <33.850750, 22.081009, 24.511171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068169, 22.173893, 24.552418>,  <34.430534, 22.328699, 24.621162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068169, 22.173893, 24.552418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067885, 0.533330, -0.843179,
		0.417981, -0.752182, -0.509425,
		-0.905916, -0.387015, -0.171860,
		33.796394, 22.057789, 24.500860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451134, 22.191957, 23.948423>,  <34.430534, 22.328699, 24.621162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451134, 22.191957, 23.948423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.063080, 22.209961, 24.043766>,  <33.830246, 22.220762, 24.100971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.063080, 22.209961, 24.043766>,  <34.451134, 22.191957, 23.948423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063080, 22.209961, 24.043766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136727, 0.710201, -0.690594,
		-0.200365, -0.702559, -0.682836,
		-0.970134, 0.045008, 0.238358,
		33.772041, 22.223463, 24.115274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.029184, 20.233376, 30.128569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.840406, 20.056690, 29.823372>,  <30.727140, 19.950680, 29.640253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.840406, 20.056690, 29.823372>,  <31.029184, 20.233376, 30.128569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840406, 20.056690, 29.823372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090376, 0.836639, -0.540248,
		0.876984, -0.323923, -0.354927,
		-0.471944, -0.441712, -0.762994,
		30.698824, 19.924177, 29.594473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408468, 20.328478, 29.461185>,  <31.029184, 20.233376, 30.128569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408468, 20.328478, 29.461185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.021259, 20.259090, 29.388695>,  <30.788935, 20.217459, 29.345200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.021259, 20.259090, 29.388695>,  <31.408468, 20.328478, 29.461185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021259, 20.259090, 29.388695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058542, 0.858660, -0.509192,
		0.243941, -0.482299, -0.841356,
		-0.968021, -0.173467, -0.181228,
		30.730852, 20.207050, 29.334326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381226, 20.546204, 28.864334>,  <31.408468, 20.328478, 29.461185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381226, 20.546204, 28.864334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.003206, 20.568825, 28.993134>,  <30.776394, 20.582397, 29.070414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.003206, 20.568825, 28.993134>,  <31.381226, 20.546204, 28.864334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003206, 20.568825, 28.993134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107316, 0.876688, -0.468936,
		-0.308813, -0.477723, -0.822445,
		-0.945049, 0.056551, 0.322000,
		30.719692, 20.585791, 29.089733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217863, 21.079296, 28.486063>,  <31.381226, 20.546204, 28.864334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217863, 21.079296, 28.486063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.875626, 21.039253, 28.689213>,  <30.670282, 21.015228, 28.811102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.875626, 21.039253, 28.689213>,  <31.217863, 21.079296, 28.486063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875626, 21.039253, 28.689213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337675, 0.851563, -0.401019,
		-0.392342, -0.514606, -0.762397,
		-0.855595, -0.100106, 0.507873,
		30.618946, 21.009222, 28.841576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680460, 21.083277, 28.001287>,  <31.217863, 21.079296, 28.486063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680460, 21.083277, 28.001287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.536896, 21.202763, 28.355000>,  <30.450756, 21.274454, 28.567226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.536896, 21.202763, 28.355000>,  <30.680460, 21.083277, 28.001287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536896, 21.202763, 28.355000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184404, 0.906036, -0.380911,
		-0.914974, -0.299778, -0.270103,
		-0.358912, 0.298716, 0.884280,
		30.429222, 21.292377, 28.620283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983044, 21.338024, 27.895424>,  <30.680460, 21.083277, 28.001287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983044, 21.338024, 27.895424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.131691, 21.505524, 28.226856>,  <30.220879, 21.606024, 28.425716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.131691, 21.505524, 28.226856>,  <29.983044, 21.338024, 27.895424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131691, 21.505524, 28.226856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265869, 0.903119, -0.337178,
		-0.889502, -0.094993, 0.446948,
		0.371618, 0.418750, 0.828582,
		30.243176, 21.631149, 28.475431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490982, 21.826553, 28.110476>,  <29.983044, 21.338024, 27.895424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490982, 21.826553, 28.110476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.820185, 21.933830, 28.310768>,  <30.017706, 21.998198, 28.430944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.820185, 21.933830, 28.310768>,  <29.490982, 21.826553, 28.110476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820185, 21.933830, 28.310768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199050, 0.961791, -0.187979,
		-0.532014, 0.055037, 0.844945,
		0.823006, 0.268194, 0.500732,
		30.067087, 22.014288, 28.460987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266169, 22.485188, 28.379713>,  <29.490982, 21.826553, 28.110476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266169, 22.485188, 28.379713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.665413, 22.461689, 28.386906>,  <29.904959, 22.447590, 28.391222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.665413, 22.461689, 28.386906>,  <29.266169, 22.485188, 28.379713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665413, 22.461689, 28.386906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061425, 0.959460, -0.275071,
		-0.001094, 0.275656, 0.961256,
		0.998111, -0.058744, 0.017981,
		29.964846, 22.444065, 28.392300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492296, 23.101830, 28.698435>,  <29.266169, 22.485188, 28.379713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492296, 23.101830, 28.698435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.803211, 22.981415, 28.477455>,  <29.989761, 22.909166, 28.344868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.803211, 22.981415, 28.477455>,  <29.492296, 23.101830, 28.698435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803211, 22.981415, 28.477455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131571, 0.936458, -0.325170,
		0.615232, 0.180065, 0.767507,
		0.777290, -0.301036, -0.552447,
		30.036398, 22.891104, 28.311722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078352, 23.618618, 28.814121>,  <29.492296, 23.101830, 28.698435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078352, 23.618618, 28.814121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.159620, 23.435822, 28.467739>,  <30.208382, 23.326143, 28.259911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.159620, 23.435822, 28.467739>,  <30.078352, 23.618618, 28.814121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159620, 23.435822, 28.467739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171435, 0.887343, -0.428057,
		0.964018, -0.061485, 0.258628,
		0.203173, -0.456992, -0.865955,
		30.220572, 23.298723, 28.207952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663961, 23.982122, 28.555580>,  <30.078352, 23.618618, 28.814121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663961, 23.982122, 28.555580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.516855, 23.809174, 28.226265>,  <30.428591, 23.705404, 28.028675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.516855, 23.809174, 28.226265>,  <30.663961, 23.982122, 28.555580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516855, 23.809174, 28.226265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001633, 0.885633, -0.464383,
		0.929917, -0.169440, -0.326411,
		-0.367765, -0.432371, -0.823288,
		30.406525, 23.679462, 27.979279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039165, 24.281389, 28.033722>,  <30.663961, 23.982122, 28.555580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039165, 24.281389, 28.033722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.723688, 24.125149, 27.843819>,  <30.534403, 24.031404, 27.729877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.723688, 24.125149, 27.843819>,  <31.039165, 24.281389, 28.033722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723688, 24.125149, 27.843819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046186, 0.807692, -0.587793,
		0.613051, -0.441661, -0.655060,
		-0.788692, -0.390602, -0.474758,
		30.487082, 24.007969, 27.701391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709167, 24.087395, 27.758146>,  <31.039165, 24.281389, 28.033722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709167, 24.087395, 27.758146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.097588, 24.163166, 27.816357>,  <32.330639, 24.208628, 27.851282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.097588, 24.163166, 27.816357>,  <31.709167, 24.087395, 27.758146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097588, 24.163166, 27.816357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141284, -0.946687, 0.289522,
		0.192611, -0.260580, -0.946044,
		0.971051, 0.189426, 0.145526,
		32.388905, 24.219994, 27.860014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088524, 23.463373, 27.441359>,  <31.709167, 24.087395, 27.758146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088524, 23.463373, 27.441359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.308937, 23.634426, 27.727993>,  <32.441185, 23.737059, 27.899973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.308937, 23.634426, 27.727993>,  <32.088524, 23.463373, 27.441359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308937, 23.634426, 27.727993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266601, -0.903926, 0.334426,
		0.790753, 0.006764, -0.612097,
		0.551029, 0.427635, 0.716586,
		32.474247, 23.762716, 27.942968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679771, 23.069052, 27.410620>,  <32.088524, 23.463373, 27.441359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679771, 23.069052, 27.410620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.669167, 23.260952, 27.761421>,  <32.662804, 23.376093, 27.971903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.669167, 23.260952, 27.761421>,  <32.679771, 23.069052, 27.410620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669167, 23.260952, 27.761421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198044, -0.857402, 0.475015,
		0.979835, 0.186278, -0.072282,
		-0.026510, 0.479752, 0.877004,
		32.661213, 23.404877, 28.024523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323715, 22.787462, 27.734283>,  <32.679771, 23.069052, 27.410620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323715, 22.787462, 27.734283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.137085, 22.940075, 28.053467>,  <33.025105, 23.031643, 28.244976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.137085, 22.940075, 28.053467>,  <33.323715, 22.787462, 27.734283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137085, 22.940075, 28.053467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401451, -0.712544, 0.575429,
		0.788125, 0.588824, 0.179291,
		-0.466579, 0.381534, 0.797958,
		32.997112, 23.054535, 28.292854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797680, 23.017614, 28.308937>,  <33.323715, 22.787462, 27.734283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797680, 23.017614, 28.308937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.439129, 22.880730, 28.421650>,  <33.223999, 22.798599, 28.489279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.439129, 22.880730, 28.421650>,  <33.797680, 23.017614, 28.308937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439129, 22.880730, 28.421650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439057, -0.773062, 0.457826,
		0.061162, 0.534103, 0.843204,
		-0.896375, -0.342213, 0.281784,
		33.170216, 22.778067, 28.506186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913269, 22.588812, 28.857048>,  <33.797680, 23.017614, 28.308937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913269, 22.588812, 28.857048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.520378, 22.533176, 28.907452>,  <33.284641, 22.499796, 28.937695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.520378, 22.533176, 28.907452>,  <33.913269, 22.588812, 28.857048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520378, 22.533176, 28.907452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184817, -0.833624, 0.520494,
		0.032650, 0.534534, 0.844516,
		-0.982230, -0.139087, 0.126009,
		33.225708, 22.491451, 28.945255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820141, 22.350044, 29.575138>,  <33.913269, 22.588812, 28.857048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820141, 22.350044, 29.575138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.522030, 22.217976, 29.343433>,  <33.343163, 22.138735, 29.204411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.522030, 22.217976, 29.343433>,  <33.820141, 22.350044, 29.575138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522030, 22.217976, 29.343433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120368, -0.921134, 0.370166,
		-0.655796, 0.206153, 0.726246,
		-0.745281, -0.330170, -0.579262,
		33.298447, 22.118925, 29.169655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389835, 21.993885, 29.987171>,  <33.820141, 22.350044, 29.575138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389835, 21.993885, 29.987171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.305294, 21.834576, 29.630138>,  <33.254570, 21.738991, 29.415918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.305294, 21.834576, 29.630138>,  <33.389835, 21.993885, 29.987171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305294, 21.834576, 29.630138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011419, -0.914158, 0.405197,
		-0.977342, 0.075449, 0.197763,
		-0.211358, -0.398274, -0.892584,
		33.241886, 21.715094, 29.362364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957623, 21.381939, 30.133667>,  <33.389835, 21.993885, 29.987171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957623, 21.381939, 30.133667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.042171, 21.296375, 29.752182>,  <33.092899, 21.245037, 29.523291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.042171, 21.296375, 29.752182>,  <32.957623, 21.381939, 30.133667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042171, 21.296375, 29.752182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003546, -0.975584, 0.219600,
		-0.977399, -0.049800, -0.205454,
		0.211373, -0.213908, -0.953711,
		33.105583, 21.232203, 29.466068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435345, 20.880312, 29.922428>,  <32.957623, 21.381939, 30.133667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435345, 20.880312, 29.922428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.739452, 20.855392, 29.663780>,  <32.921917, 20.840441, 29.508593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.739452, 20.855392, 29.663780>,  <32.435345, 20.880312, 29.922428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739452, 20.855392, 29.663780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011527, -0.993940, 0.109319,
		-0.649510, -0.090565, -0.754940,
		0.760266, -0.062301, -0.646618,
		32.967533, 20.836702, 29.469795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286640, 20.312803, 29.514612>,  <32.435345, 20.880312, 29.922428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286640, 20.312803, 29.514612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.680294, 20.354706, 29.457325>,  <32.916485, 20.379847, 29.422953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.680294, 20.354706, 29.457325>,  <32.286640, 20.312803, 29.514612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680294, 20.354706, 29.457325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112145, -0.992694, 0.044510,
		-0.137507, -0.059865, -0.988690,
		0.984132, 0.104756, -0.143216,
		32.975533, 20.386133, 29.414360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467327, 19.796288, 28.989838>,  <32.286640, 20.312803, 29.514612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467327, 19.796288, 28.989838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811909, 19.890755, 29.169670>,  <33.018658, 19.947435, 29.277569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811909, 19.890755, 29.169670>,  <32.467327, 19.796288, 28.989838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811909, 19.890755, 29.169670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251227, -0.967555, 0.026881,
		0.441342, 0.089790, -0.892835,
		0.861454, 0.236168, 0.449580,
		33.070343, 19.961605, 29.304544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904327, 19.233572, 28.876966>,  <32.467327, 19.796288, 28.989838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904327, 19.233572, 28.876966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.096218, 19.395256, 29.188473>,  <33.211353, 19.492266, 29.375378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.096218, 19.395256, 29.188473>,  <32.904327, 19.233572, 28.876966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096218, 19.395256, 29.188473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266492, -0.912760, 0.309598,
		0.835970, 0.059014, -0.545593,
		0.479725, 0.404211, 0.778767,
		33.240135, 19.516520, 29.422102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543568, 18.878176, 28.910301>,  <32.904327, 19.233572, 28.876966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543568, 18.878176, 28.910301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.524521, 19.021698, 29.283180>,  <33.513092, 19.107811, 29.506908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.524521, 19.021698, 29.283180>,  <33.543568, 18.878176, 28.910301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524521, 19.021698, 29.283180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224471, -0.905541, 0.360012,
		0.973317, 0.226394, -0.037421,
		-0.047619, 0.358805, 0.932197,
		33.510235, 19.129339, 29.562840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704857, 18.990635, 28.173397>,  <33.543568, 18.878176, 28.910301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704857, 18.990635, 28.173397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.713783, 18.673149, 27.930244>,  <33.719139, 18.482658, 27.784353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.713783, 18.673149, 27.930244>,  <33.704857, 18.990635, 28.173397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713783, 18.673149, 27.930244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104543, 0.602847, -0.790978,
		0.994270, 0.081203, -0.069523,
		0.022318, -0.793714, -0.607882,
		33.720478, 18.435036, 27.747879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168102, 19.163973, 27.672308>,  <33.704857, 18.990635, 28.173397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168102, 19.163973, 27.672308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.957764, 18.874722, 27.493168>,  <33.831562, 18.701170, 27.385683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.957764, 18.874722, 27.493168>,  <34.168102, 19.163973, 27.672308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957764, 18.874722, 27.493168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050454, 0.499078, -0.865087,
		0.849082, -0.477498, -0.225953,
		-0.525845, -0.723130, -0.447850,
		33.800011, 18.657784, 27.358812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541004, 18.942612, 27.007465>,  <34.168102, 19.163973, 27.672308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541004, 18.942612, 27.007465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.161034, 18.826096, 26.962231>,  <33.933052, 18.756186, 26.935089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.161034, 18.826096, 26.962231>,  <34.541004, 18.942612, 27.007465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161034, 18.826096, 26.962231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037306, 0.465051, -0.884497,
		0.310236, -0.835989, -0.452631,
		-0.949927, -0.291289, -0.113088,
		33.876057, 18.738708, 26.928305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464134, 18.639021, 26.330441>,  <34.541004, 18.942612, 27.007465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464134, 18.639021, 26.330441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.103432, 18.769012, 26.444439>,  <33.887009, 18.847008, 26.512838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.103432, 18.769012, 26.444439>,  <34.464134, 18.639021, 26.330441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103432, 18.769012, 26.444439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080715, 0.521147, -0.849641,
		-0.424641, -0.789173, -0.443718,
		-0.901757, 0.324977, 0.284998,
		33.832905, 18.866507, 26.529938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262047, 18.733330, 25.690350>,  <34.464134, 18.639021, 26.330441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262047, 18.733330, 25.690350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.996155, 18.922863, 25.921387>,  <33.836620, 19.036583, 26.060009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.996155, 18.922863, 25.921387>,  <34.262047, 18.733330, 25.690350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996155, 18.922863, 25.921387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185825, 0.643965, -0.742145,
		-0.723601, -0.600659, -0.340015,
		-0.664734, 0.473833, 0.577591,
		33.796734, 19.065014, 26.094664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668922, 18.868538, 25.334558>,  <34.262047, 18.733330, 25.690350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668922, 18.868538, 25.334558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.657490, 19.146030, 25.622425>,  <33.650631, 19.312527, 25.795145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.657490, 19.146030, 25.622425>,  <33.668922, 18.868538, 25.334558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657490, 19.146030, 25.622425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058503, 0.717563, -0.694032,
		-0.997878, -0.061939, 0.020077,
		-0.028581, 0.693734, 0.719664,
		33.648914, 19.354151, 25.838324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046944, 19.376581, 25.174068>,  <33.668922, 18.868538, 25.334558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046944, 19.376581, 25.174068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.302219, 19.582401, 25.403137>,  <33.455383, 19.705893, 25.540579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.302219, 19.582401, 25.403137>,  <33.046944, 19.376581, 25.174068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302219, 19.582401, 25.403137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164292, 0.817734, -0.551651,
		-0.752147, 0.257970, 0.606404,
		0.638187, 0.514550, 0.572674,
		33.493675, 19.736767, 25.574940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326408, 19.404264, 25.254547>,  <33.046944, 19.376581, 25.174068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326408, 19.404264, 25.254547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059864, 19.268578, 24.988949>,  <31.899937, 19.187166, 24.829590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059864, 19.268578, 24.988949>,  <32.326408, 19.404264, 25.254547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059864, 19.268578, 24.988949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097936, -0.842989, 0.528941,
		-0.739167, 0.417497, 0.528516,
		-0.666364, -0.339215, -0.663997,
		31.859955, 19.166813, 24.789749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717876, 19.128651, 25.584755>,  <32.326408, 19.404264, 25.254547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717876, 19.128651, 25.584755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.749723, 18.932793, 25.237442>,  <31.768831, 18.815279, 25.029055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.749723, 18.932793, 25.237442>,  <31.717876, 19.128651, 25.584755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749723, 18.932793, 25.237442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023453, -0.869884, 0.492698,
		-0.996550, -0.059591, -0.057772,
		0.079616, -0.489643, -0.868280,
		31.773607, 18.785900, 24.976957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136076, 18.619955, 25.570944>,  <31.717876, 19.128651, 25.584755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136076, 18.619955, 25.570944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.398333, 18.488010, 25.299259>,  <31.555687, 18.408844, 25.136248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.398333, 18.488010, 25.299259>,  <31.136076, 18.619955, 25.570944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398333, 18.488010, 25.299259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115199, -0.845301, 0.521724,
		-0.746234, -0.420307, -0.516214,
		0.655640, -0.329861, -0.679211,
		31.595024, 18.389051, 25.095495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816837, 18.094221, 25.266216>,  <31.136076, 18.619955, 25.570944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816837, 18.094221, 25.266216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.204832, 18.029549, 25.193573>,  <31.437630, 17.990746, 25.149986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.204832, 18.029549, 25.193573>,  <30.816837, 18.094221, 25.266216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204832, 18.029549, 25.193573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111642, -0.959658, 0.258055,
		-0.216005, -0.230035, -0.948908,
		0.969989, -0.161679, -0.181609,
		31.495829, 17.981045, 25.139090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949049, 17.397371, 24.936964>,  <30.816837, 18.094221, 25.266216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949049, 17.397371, 24.936964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.324848, 17.462021, 25.057777>,  <31.550327, 17.500811, 25.130266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.324848, 17.462021, 25.057777>,  <30.949049, 17.397371, 24.936964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324848, 17.462021, 25.057777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048282, -0.935376, 0.350344,
		0.339140, -0.314563, -0.886585,
		0.939496, 0.161622, 0.302036,
		31.606697, 17.510508, 25.148388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264349, 16.776550, 24.857683>,  <30.949049, 17.397371, 24.936964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264349, 16.776550, 24.857683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.523851, 16.975834, 25.087780>,  <31.679552, 17.095404, 25.225838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.523851, 16.975834, 25.087780>,  <31.264349, 16.776550, 24.857683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523851, 16.975834, 25.087780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138067, -0.820419, 0.554843,
		0.748368, -0.280535, -0.601037,
		0.648755, 0.498210, 0.575242,
		31.718477, 17.125298, 25.260353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894920, 16.366192, 24.880806>,  <31.264349, 16.776550, 24.857683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894920, 16.366192, 24.880806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.935915, 16.595139, 25.206234>,  <31.960512, 16.732506, 25.401491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.935915, 16.595139, 25.206234>,  <31.894920, 16.366192, 24.880806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935915, 16.595139, 25.206234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076151, -0.819990, 0.567290,
		0.991815, 0.003813, -0.127625,
		0.102488, 0.572366, 0.813568,
		31.966661, 16.766848, 25.450304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378616, 15.987525, 25.269867>,  <31.894920, 16.366192, 24.880806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378616, 15.987525, 25.269867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.220581, 16.245312, 25.531727>,  <32.125759, 16.399984, 25.688843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.220581, 16.245312, 25.531727>,  <32.378616, 15.987525, 25.269867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220581, 16.245312, 25.531727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255237, -0.607559, 0.752148,
		0.882472, 0.464257, 0.075548,
		-0.395090, 0.644467, 0.654650,
		32.102055, 16.438652, 25.728121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864738, 16.034039, 25.909122>,  <32.378616, 15.987525, 25.269867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864738, 16.034039, 25.909122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.498356, 16.144226, 26.025841>,  <32.278526, 16.210339, 26.095873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.498356, 16.144226, 26.025841>,  <32.864738, 16.034039, 25.909122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498356, 16.144226, 26.025841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087951, -0.571671, 0.815756,
		0.391526, 0.772858, 0.499397,
		-0.915954, 0.275468, 0.291798,
		32.223568, 16.226866, 26.113380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.538280, 29.898701, 18.569262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250229, 29.893295, 18.846745>,  <29.077398, 29.890051, 19.013235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250229, 29.893295, 18.846745>,  <29.538280, 29.898701, 18.569262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250229, 29.893295, 18.846745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573797, -0.573716, 0.584472,
		0.390093, 0.818943, 0.420904,
		-0.720128, -0.013515, 0.693709,
		29.034191, 29.889240, 19.054857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743212, 30.114740, 19.310377>,  <29.538280, 29.898701, 18.569262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743212, 30.114740, 19.310377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442057, 29.851551, 19.316429>,  <29.261364, 29.693638, 19.320061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442057, 29.851551, 19.316429>,  <29.743212, 30.114740, 19.310377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442057, 29.851551, 19.316429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486921, -0.541398, 0.685417,
		-0.442794, 0.523410, 0.727994,
		-0.752889, -0.657974, 0.015132,
		29.216190, 29.654160, 19.320969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680080, 29.959991, 19.998323>,  <29.743212, 30.114740, 19.310377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680080, 29.959991, 19.998323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540964, 29.662884, 19.769470>,  <29.457495, 29.484619, 19.632158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540964, 29.662884, 19.769470>,  <29.680080, 29.959991, 19.998323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540964, 29.662884, 19.769470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560050, -0.653980, 0.508581,
		-0.751920, -0.143541, 0.643438,
		-0.347793, -0.742769, -0.572131,
		29.436626, 29.440054, 19.597832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701283, 29.533972, 20.459841>,  <29.680080, 29.959991, 19.998323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701283, 29.533972, 20.459841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668596, 29.313721, 20.127544>,  <29.648985, 29.181570, 19.928165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668596, 29.313721, 20.127544>,  <29.701283, 29.533972, 20.459841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668596, 29.313721, 20.127544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485646, -0.749876, 0.449259,
		-0.870328, -0.366735, 0.328686,
		-0.081715, -0.550627, -0.830742,
		29.644081, 29.148533, 19.878323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397406, 28.948107, 20.674051>,  <29.701283, 29.533972, 20.459841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397406, 28.948107, 20.674051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572117, 28.866508, 20.323597>,  <29.676943, 28.817551, 20.113325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572117, 28.866508, 20.323597>,  <29.397406, 28.948107, 20.674051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572117, 28.866508, 20.323597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486473, -0.765684, 0.420798,
		-0.756681, -0.610012, -0.235199,
		0.436780, -0.203992, -0.876134,
		29.703150, 28.805311, 20.060757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276056, 28.224060, 20.593225>,  <29.397406, 28.948107, 20.674051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276056, 28.224060, 20.593225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566246, 28.318764, 20.334728>,  <29.740360, 28.375586, 20.179630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566246, 28.318764, 20.334728>,  <29.276056, 28.224060, 20.593225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566246, 28.318764, 20.334728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469629, -0.856699, 0.213343,
		-0.503124, -0.458269, -0.732704,
		0.725475, 0.236761, -0.646243,
		29.783888, 28.389791, 20.140856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382328, 27.629274, 20.042023>,  <29.276056, 28.224060, 20.593225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382328, 27.629274, 20.042023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724428, 27.835693, 20.060947>,  <29.929689, 27.959545, 20.072302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724428, 27.835693, 20.060947>,  <29.382328, 27.629274, 20.042023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724428, 27.835693, 20.060947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517138, -0.855790, -0.013819,
		0.033358, 0.036285, -0.998785,
		0.855252, 0.516049, 0.047311,
		29.981003, 27.990507, 20.075140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826166, 27.278324, 19.545113>,  <29.382328, 27.629274, 20.042023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826166, 27.278324, 19.545113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072439, 27.472725, 19.793221>,  <30.220203, 27.589365, 19.942085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072439, 27.472725, 19.793221>,  <29.826166, 27.278324, 19.545113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072439, 27.472725, 19.793221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593052, -0.804100, 0.041373,
		0.518866, 0.342380, -0.783297,
		0.615684, 0.486003, 0.620269,
		30.257145, 27.618526, 19.979301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482830, 27.209501, 19.235767>,  <29.826166, 27.278324, 19.545113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482830, 27.209501, 19.235767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562248, 27.297279, 19.617851>,  <30.609900, 27.349947, 19.847101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562248, 27.297279, 19.617851>,  <30.482830, 27.209501, 19.235767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562248, 27.297279, 19.617851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700266, -0.713645, 0.018395,
		0.685716, 0.665247, -0.295364,
		0.198548, 0.219447, 0.955208,
		30.621813, 27.363113, 19.904413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244781, 27.277954, 19.342844>,  <30.482830, 27.209501, 19.235767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244781, 27.277954, 19.342844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095272, 27.230057, 19.710747>,  <31.005566, 27.201319, 19.931488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095272, 27.230057, 19.710747>,  <31.244781, 27.277954, 19.342844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095272, 27.230057, 19.710747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655865, -0.735300, 0.170803,
		0.655846, 0.667079, 0.353372,
		-0.373774, -0.119744, 0.919758,
		30.983139, 27.194134, 19.986673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834795, 27.107868, 19.810190>,  <31.244781, 27.277954, 19.342844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834795, 27.107868, 19.810190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497717, 26.956280, 19.963158>,  <31.295469, 26.865326, 20.054937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497717, 26.956280, 19.963158>,  <31.834795, 27.107868, 19.810190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497717, 26.956280, 19.963158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494113, -0.826474, 0.269801,
		0.213811, 0.416317, 0.883722,
		-0.842696, -0.378972, 0.382417,
		31.244907, 26.842588, 20.077883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973215, 26.863012, 20.369999>,  <31.834795, 27.107868, 19.810190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973215, 26.863012, 20.369999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618307, 26.682510, 20.331806>,  <31.405361, 26.574209, 20.308889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618307, 26.682510, 20.331806>,  <31.973215, 26.863012, 20.369999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618307, 26.682510, 20.331806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420465, -0.876407, 0.234775,
		-0.189626, 0.168162, 0.967349,
		-0.887271, -0.451256, -0.095483,
		31.352125, 26.547134, 20.303162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178749, 27.398603, 20.812630>,  <31.973215, 26.863012, 20.369999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178749, 27.398603, 20.812630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484257, 27.416737, 21.070190>,  <32.667561, 27.427616, 21.224728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484257, 27.416737, 21.070190>,  <32.178749, 27.398603, 20.812630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484257, 27.416737, 21.070190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197264, 0.933416, -0.299703,
		-0.614614, 0.355920, 0.703967,
		0.763764, 0.045334, 0.643901,
		32.713387, 27.430336, 21.263361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245258, 28.131258, 20.962990>,  <32.178749, 27.398603, 20.812630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245258, 28.131258, 20.962990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591888, 27.995609, 21.109440>,  <32.799866, 27.914221, 21.197309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591888, 27.995609, 21.109440>,  <32.245258, 28.131258, 20.962990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591888, 27.995609, 21.109440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404547, 0.906942, -0.117463,
		-0.292220, 0.249905, 0.923122,
		0.866573, -0.339121, 0.366125,
		32.851860, 27.893873, 21.219276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452465, 28.471556, 21.535042>,  <32.245258, 28.131258, 20.962990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452465, 28.471556, 21.535042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784233, 28.339767, 21.354595>,  <32.983295, 28.260695, 21.246326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784233, 28.339767, 21.354595>,  <32.452465, 28.471556, 21.535042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784233, 28.339767, 21.354595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345953, 0.937010, -0.048266,
		0.438602, -0.116032, 0.891159,
		0.829424, -0.329469, -0.451116,
		33.033062, 28.240927, 21.219261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020206, 29.044708, 21.774387>,  <32.452465, 28.471556, 21.535042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020206, 29.044708, 21.774387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169086, 28.843002, 21.462700>,  <33.258415, 28.721979, 21.275688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169086, 28.843002, 21.462700>,  <33.020206, 29.044708, 21.774387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169086, 28.843002, 21.462700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419574, 0.840274, -0.343363,
		0.827903, -0.199140, 0.524328,
		0.372202, -0.504265, -0.779219,
		33.280746, 28.691723, 21.228933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823368, 29.171013, 21.756180>,  <33.020206, 29.044708, 21.774387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823368, 29.171013, 21.756180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694370, 29.088898, 21.386562>,  <33.616970, 29.039629, 21.164793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694370, 29.088898, 21.386562>,  <33.823368, 29.171013, 21.756180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694370, 29.088898, 21.386562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527892, 0.771289, -0.355588,
		0.785701, -0.602470, -0.140370,
		-0.322497, -0.205286, -0.924042,
		33.597622, 29.027311, 21.109350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464508, 29.100349, 21.365398>,  <33.823368, 29.171013, 21.756180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464508, 29.100349, 21.365398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169540, 29.181995, 21.107857>,  <33.992558, 29.230984, 20.953331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169540, 29.181995, 21.107857>,  <34.464508, 29.100349, 21.365398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169540, 29.181995, 21.107857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495193, 0.811652, -0.309846,
		0.459341, -0.547319, -0.699606,
		-0.737421, 0.204115, -0.643854,
		33.948315, 29.243231, 20.914701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775040, 29.205797, 20.744936>,  <34.464508, 29.100349, 21.365398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775040, 29.205797, 20.744936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425110, 29.374504, 20.649612>,  <34.215153, 29.475727, 20.592419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425110, 29.374504, 20.649612>,  <34.775040, 29.205797, 20.744936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425110, 29.374504, 20.649612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478518, 0.829004, -0.289436,
		0.075485, -0.367242, -0.927057,
		-0.874827, 0.421766, -0.238309,
		34.162663, 29.501034, 20.578119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034683, 29.601023, 20.219175>,  <34.775040, 29.205797, 20.744936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034683, 29.601023, 20.219175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669315, 29.744297, 20.296490>,  <34.450092, 29.830261, 20.342878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669315, 29.744297, 20.296490>,  <35.034683, 29.601023, 20.219175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669315, 29.744297, 20.296490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300727, 0.913949, -0.272507,
		-0.274263, -0.190788, -0.942539,
		-0.913424, 0.358186, 0.193287,
		34.395287, 29.851753, 20.354475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793427, 29.973610, 19.707869>,  <35.034683, 29.601023, 20.219175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793427, 29.973610, 19.707869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602261, 30.128052, 20.023468>,  <34.487560, 30.220716, 20.212828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602261, 30.128052, 20.023468>,  <34.793427, 29.973610, 19.707869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602261, 30.128052, 20.023468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313498, 0.914038, -0.257398,
		-0.820558, 0.124335, -0.557876,
		-0.477916, 0.386103, 0.789000,
		34.458885, 30.243883, 20.260168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471817, 30.647715, 19.505905>,  <34.793427, 29.973610, 19.707869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471817, 30.647715, 19.505905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476856, 30.663387, 19.905567>,  <34.479877, 30.672791, 20.145365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476856, 30.663387, 19.905567>,  <34.471817, 30.647715, 19.505905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476856, 30.663387, 19.905567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300896, 0.952769, -0.041153,
		-0.953574, 0.301159, 0.000210,
		0.012594, 0.039179, 0.999153,
		34.480633, 30.675140, 20.205313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208733, 31.254877, 19.612331>,  <34.471817, 30.647715, 19.505905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208733, 31.254877, 19.612331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406460, 31.159153, 19.946609>,  <34.525097, 31.101719, 20.147177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406460, 31.159153, 19.946609>,  <34.208733, 31.254877, 19.612331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406460, 31.159153, 19.946609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425018, 0.905151, 0.007799,
		-0.758295, 0.351330, 0.549141,
		0.494316, -0.239309, 0.835693,
		34.554756, 31.087360, 20.197317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039902, 31.802986, 20.118723>,  <34.208733, 31.254877, 19.612331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039902, 31.802986, 20.118723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376305, 31.628895, 20.247269>,  <34.578148, 31.524439, 20.324396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376305, 31.628895, 20.247269>,  <34.039902, 31.802986, 20.118723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376305, 31.628895, 20.247269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425856, 0.898915, 0.102950,
		-0.333685, 0.050272, 0.941343,
		0.841012, -0.435230, 0.321363,
		34.628609, 31.498325, 20.343678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178104, 32.230534, 20.711536>,  <34.039902, 31.802986, 20.118723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178104, 32.230534, 20.711536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515259, 32.044434, 20.603401>,  <34.717552, 31.932772, 20.538519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515259, 32.044434, 20.603401>,  <34.178104, 32.230534, 20.711536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515259, 32.044434, 20.603401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505721, 0.856572, 0.102615,
		0.183823, -0.223209, 0.957281,
		0.842885, -0.465254, -0.270339,
		34.768124, 31.904858, 20.522299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691936, 32.544239, 21.141451>,  <34.178104, 32.230534, 20.711536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691936, 32.544239, 21.141451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881828, 32.355160, 20.844482>,  <34.995762, 32.241711, 20.666302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881828, 32.355160, 20.844482>,  <34.691936, 32.544239, 21.141451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881828, 32.355160, 20.844482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252720, 0.881220, -0.399479,
		0.843071, 0.002018, 0.537799,
		0.474725, -0.472702, -0.742421,
		35.024246, 32.213348, 20.621756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222511, 32.790771, 21.693436>,  <34.691936, 32.544239, 21.141451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222511, 32.790771, 21.693436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012997, 33.085865, 21.863800>,  <33.887287, 33.262920, 21.966019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012997, 33.085865, 21.863800>,  <34.222511, 32.790771, 21.693436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012997, 33.085865, 21.863800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060294, -0.466624, 0.882398,
		0.849713, 0.487868, 0.199931,
		-0.523787, 0.737730, 0.425912,
		33.855862, 33.307182, 21.991573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555855, 32.880806, 22.406155>,  <34.222511, 32.790771, 21.693436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555855, 32.880806, 22.406155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176826, 33.004322, 22.439041>,  <33.949409, 33.078434, 22.458773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176826, 33.004322, 22.439041>,  <34.555855, 32.880806, 22.406155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176826, 33.004322, 22.439041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043845, -0.380485, 0.923747,
		0.316528, 0.871710, 0.374075,
		-0.947569, 0.308793, 0.082215,
		33.892555, 33.096958, 22.463705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368454, 33.244667, 23.026041>,  <34.555855, 32.880806, 22.406155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368454, 33.244667, 23.026041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027554, 33.071438, 22.908653>,  <33.823013, 32.967503, 22.838221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027554, 33.071438, 22.908653>,  <34.368454, 33.244667, 23.026041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027554, 33.071438, 22.908653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023292, -0.591836, 0.805722,
		-0.522621, 0.679839, 0.514477,
		-0.852247, -0.433070, -0.293471,
		33.771881, 32.941517, 22.820612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957272, 33.199905, 23.610252>,  <34.368454, 33.244667, 23.026041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957272, 33.199905, 23.610252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771793, 32.929676, 23.380962>,  <33.660507, 32.767536, 23.243389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771793, 32.929676, 23.380962>,  <33.957272, 33.199905, 23.610252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771793, 32.929676, 23.380962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190231, -0.555980, 0.809134,
		-0.865333, 0.484235, 0.129289,
		-0.463693, -0.675576, -0.573224,
		33.632687, 32.727005, 23.208996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393597, 33.024776, 23.939238>,  <33.957272, 33.199905, 23.610252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393597, 33.024776, 23.939238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427567, 32.702663, 23.704525>,  <33.447948, 32.509396, 23.563698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427567, 32.702663, 23.704525>,  <33.393597, 33.024776, 23.939238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427567, 32.702663, 23.704525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075524, -0.592417, 0.802084,
		-0.993521, -0.023797, -0.111127,
		0.084921, -0.805280, -0.586781,
		33.453041, 32.461079, 23.528490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956432, 32.493397, 24.263470>,  <33.393597, 33.024776, 23.939238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956432, 32.493397, 24.263470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183361, 32.284264, 24.008976>,  <33.319519, 32.158783, 23.856279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183361, 32.284264, 24.008976>,  <32.956432, 32.493397, 24.263470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183361, 32.284264, 24.008976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113492, -0.715590, 0.689239,
		-0.815639, -0.463227, -0.346631,
		0.567320, -0.522831, -0.636236,
		33.353558, 32.127415, 23.818106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592907, 31.830961, 24.139389>,  <32.956432, 32.493397, 24.263470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592907, 31.830961, 24.139389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973061, 31.778355, 24.026623>,  <33.201153, 31.746790, 23.958963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973061, 31.778355, 24.026623>,  <32.592907, 31.830961, 24.139389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973061, 31.778355, 24.026623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125899, -0.666091, 0.735169,
		-0.284466, -0.734185, -0.616484,
		0.950383, -0.131516, -0.281913,
		33.258175, 31.738899, 23.942049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677700, 31.075098, 24.129892>,  <32.592907, 31.830961, 24.139389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677700, 31.075098, 24.129892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037636, 31.240292, 24.186085>,  <33.253597, 31.339407, 24.219799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037636, 31.240292, 24.186085>,  <32.677700, 31.075098, 24.129892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037636, 31.240292, 24.186085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209606, -0.691769, 0.691029,
		0.382562, -0.592370, -0.709045,
		0.899840, 0.412982, 0.140480,
		33.307587, 31.364185, 24.228230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125980, 30.518139, 24.287245>,  <32.677700, 31.075098, 24.129892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125980, 30.518139, 24.287245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337944, 30.825718, 24.430309>,  <33.465122, 31.010265, 24.516148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337944, 30.825718, 24.430309>,  <33.125980, 30.518139, 24.287245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337944, 30.825718, 24.430309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239712, -0.540356, 0.806569,
		0.813473, -0.341669, -0.470663,
		0.529905, 0.768946, 0.357663,
		33.496914, 31.056402, 24.537607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856228, 30.267576, 24.334299>,  <33.125980, 30.518139, 24.287245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856228, 30.267576, 24.334299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781921, 30.582546, 24.569401>,  <33.737339, 30.771528, 24.710463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781921, 30.582546, 24.569401>,  <33.856228, 30.267576, 24.334299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781921, 30.582546, 24.569401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334460, -0.511777, 0.791342,
		0.923920, 0.343584, -0.168291,
		-0.185765, 0.787423, 0.587756,
		33.726192, 30.818773, 24.745728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479355, 30.423834, 24.723803>,  <33.856228, 30.267576, 24.334299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479355, 30.423834, 24.723803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147072, 30.529160, 24.920006>,  <33.947704, 30.592354, 25.037727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147072, 30.529160, 24.920006>,  <34.479355, 30.423834, 24.723803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147072, 30.529160, 24.920006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217926, -0.656961, 0.721741,
		0.512286, 0.706448, 0.488358,
		-0.830705, 0.263312, 0.490506,
		33.897861, 30.608152, 25.067158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697403, 30.310490, 25.424932>,  <34.479355, 30.423834, 24.723803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697403, 30.310490, 25.424932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306198, 30.378326, 25.473480>,  <34.071476, 30.419029, 25.502609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306198, 30.378326, 25.473480>,  <34.697403, 30.310490, 25.424932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306198, 30.378326, 25.473480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005542, -0.602904, 0.797795,
		0.208476, 0.779580, 0.590587,
		-0.978012, 0.169594, 0.121371,
		34.012794, 30.429205, 25.509892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564579, 30.456299, 26.108309>,  <34.697403, 30.310490, 25.424932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564579, 30.456299, 26.108309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202847, 30.332809, 25.990406>,  <33.985809, 30.258715, 25.919664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202847, 30.332809, 25.990406>,  <34.564579, 30.456299, 26.108309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202847, 30.332809, 25.990406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037886, -0.745885, 0.664997,
		-0.425155, 0.590208, 0.686220,
		-0.904327, -0.308725, -0.294756,
		33.931549, 30.240192, 25.901979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281864, 30.290974, 26.703892>,  <34.564579, 30.456299, 26.108309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281864, 30.290974, 26.703892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016014, 30.118546, 26.459774>,  <33.856506, 30.015089, 26.313303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016014, 30.118546, 26.459774>,  <34.281864, 30.290974, 26.703892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016014, 30.118546, 26.459774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055779, -0.785892, 0.615843,
		-0.745096, 0.443344, 0.498276,
		-0.664621, -0.431068, -0.610294,
		33.816628, 29.989225, 26.276686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799221, 29.955732, 27.186321>,  <34.281864, 30.290974, 26.703892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799221, 29.955732, 27.186321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774406, 29.782303, 26.826729>,  <33.759518, 29.678246, 26.610973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774406, 29.782303, 26.826729>,  <33.799221, 29.955732, 27.186321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774406, 29.782303, 26.826729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172228, -0.882552, 0.437537,
		-0.983102, 0.181971, -0.019925,
		-0.062034, -0.433575, -0.898980,
		33.755795, 29.652231, 26.557035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107689, 29.628679, 27.062759>,  <33.799221, 29.955732, 27.186321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107689, 29.628679, 27.062759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351635, 29.427708, 26.817604>,  <33.498001, 29.307125, 26.670511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351635, 29.427708, 26.817604>,  <33.107689, 29.628679, 27.062759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351635, 29.427708, 26.817604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311265, -0.863065, 0.397786,
		-0.728820, -0.051825, -0.682741,
		0.609865, -0.502428, -0.612887,
		33.534595, 29.276979, 26.633738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715355, 29.036634, 26.814890>,  <33.107689, 29.628679, 27.062759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715355, 29.036634, 26.814890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096874, 28.928082, 26.763309>,  <33.325787, 28.862949, 26.732361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096874, 28.928082, 26.763309>,  <32.715355, 29.036634, 26.814890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096874, 28.928082, 26.763309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232147, -0.938078, 0.257134,
		-0.190748, -0.215317, -0.957734,
		0.953794, -0.271383, -0.128951,
		33.383011, 28.846666, 26.724625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611889, 28.434584, 26.527493>,  <32.715355, 29.036634, 26.814890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611889, 28.434584, 26.527493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998306, 28.430370, 26.630756>,  <33.230156, 28.427843, 26.692715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998306, 28.430370, 26.630756>,  <32.611889, 28.434584, 26.527493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998306, 28.430370, 26.630756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026655, -0.997900, 0.059035,
		0.256998, -0.063911, -0.964296,
		0.966044, -0.010531, 0.258162,
		33.288120, 28.427212, 26.708204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910938, 27.967592, 26.115698>,  <32.611889, 28.434584, 26.527493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910938, 27.967592, 26.115698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172318, 28.005802, 26.416065>,  <33.329144, 28.028728, 26.596287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172318, 28.005802, 26.416065>,  <32.910938, 27.967592, 26.115698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172318, 28.005802, 26.416065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043418, -0.995102, 0.088805,
		0.755725, -0.025426, -0.654396,
		0.653449, 0.095525, 0.750919,
		33.368351, 28.034460, 26.641340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385265, 27.397888, 25.918619>,  <32.910938, 27.967592, 26.115698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385265, 27.397888, 25.918619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449570, 27.475323, 26.305748>,  <33.488152, 27.521784, 26.538025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449570, 27.475323, 26.305748>,  <33.385265, 27.397888, 25.918619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449570, 27.475323, 26.305748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006696, -0.980340, 0.197204,
		0.986971, -0.038183, -0.156304,
		0.160761, 0.193588, 0.967822,
		33.497799, 27.533400, 26.596094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922863, 26.977177, 26.106203>,  <33.385265, 27.397888, 25.918619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922863, 26.977177, 26.106203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756420, 27.075600, 26.456360>,  <33.656555, 27.134653, 26.666454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756420, 27.075600, 26.456360>,  <33.922863, 26.977177, 26.106203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756420, 27.075600, 26.456360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012162, -0.961101, 0.275931,
		0.909235, 0.125462, 0.396926,
		-0.416104, 0.246059, 0.875392,
		33.631588, 27.149418, 26.718977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101513, 26.407112, 26.460762>,  <33.922863, 26.977177, 26.106203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101513, 26.407112, 26.460762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803234, 26.564766, 26.675648>,  <33.624268, 26.659357, 26.804579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803234, 26.564766, 26.675648>,  <34.101513, 26.407112, 26.460762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803234, 26.564766, 26.675648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193171, -0.899536, 0.391817,
		0.637672, 0.188402, 0.746913,
		-0.745694, 0.394132, 0.537215,
		33.579525, 26.683006, 26.836813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167122, 26.130922, 27.237131>,  <34.101513, 26.407112, 26.460762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167122, 26.130922, 27.237131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792141, 26.256554, 27.177074>,  <33.567154, 26.331932, 27.141041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792141, 26.256554, 27.177074>,  <34.167122, 26.130922, 27.237131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792141, 26.256554, 27.177074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346273, -0.796917, 0.494993,
		0.035815, 0.516021, 0.855827,
		-0.937450, 0.314078, -0.150142,
		33.510906, 26.350777, 27.132032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858444, 26.026932, 27.804075>,  <34.167122, 26.130922, 27.237131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858444, 26.026932, 27.804075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551960, 26.063084, 27.549595>,  <33.368069, 26.084774, 27.396906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551960, 26.063084, 27.549595>,  <33.858444, 26.026932, 27.804075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551960, 26.063084, 27.549595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397672, -0.844386, 0.358984,
		-0.504755, 0.528057, 0.682919,
		-0.766211, 0.090379, -0.636202,
		33.322098, 26.090197, 27.358734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247509, 25.929626, 28.195095>,  <33.858444, 26.026932, 27.804075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247509, 25.929626, 28.195095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147179, 25.831089, 27.820629>,  <33.086979, 25.771967, 27.595949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147179, 25.831089, 27.820629>,  <33.247509, 25.929626, 28.195095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147179, 25.831089, 27.820629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399745, -0.854414, 0.331935,
		-0.881640, 0.457485, 0.115836,
		-0.250827, -0.246343, -0.936163,
		33.071930, 25.757187, 27.539780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552425, 25.699085, 28.213640>,  <33.247509, 25.929626, 28.195095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552425, 25.699085, 28.213640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725285, 25.538574, 27.890598>,  <32.828999, 25.442268, 27.696774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725285, 25.538574, 27.890598>,  <32.552425, 25.699085, 28.213640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725285, 25.538574, 27.890598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476461, -0.861942, 0.173320,
		-0.765657, 0.309892, -0.563681,
		0.432150, -0.401276, -0.807604,
		32.854931, 25.418192, 27.648317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909599, 25.400068, 27.827320>,  <32.552425, 25.699085, 28.213640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909599, 25.400068, 27.827320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246899, 25.205051, 27.736782>,  <32.449280, 25.088041, 27.682459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246899, 25.205051, 27.736782>,  <31.909599, 25.400068, 27.827320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246899, 25.205051, 27.736782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480136, -0.872503, 0.090601,
		-0.241656, 0.032276, -0.969825,
		0.843251, -0.487543, -0.226343,
		32.499874, 25.058788, 27.668879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804579, 24.819050, 27.513336>,  <31.909599, 25.400068, 27.827320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804579, 24.819050, 27.513336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175072, 24.718975, 27.626122>,  <32.397366, 24.658930, 27.693792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175072, 24.718975, 27.626122>,  <31.804579, 24.819050, 27.513336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175072, 24.718975, 27.626122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338913, -0.880167, 0.332331,
		0.165030, -0.403376, -0.900030,
		0.926231, -0.250187, 0.281963,
		32.452942, 24.643919, 27.710711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226049, 24.409750, 27.307743>,  <31.804579, 24.819050, 27.513336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226049, 24.409750, 27.307743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836132, 24.333946, 27.354836>,  <30.602180, 24.288464, 27.383091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836132, 24.333946, 27.354836>,  <31.226049, 24.409750, 27.307743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836132, 24.333946, 27.354836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223043, 0.815612, -0.533880,
		0.005155, -0.546683, -0.837324,
		-0.974795, -0.189511, 0.117730,
		30.543694, 24.277092, 27.390154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911757, 24.451157, 26.613314>,  <31.226049, 24.409750, 27.307743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911757, 24.451157, 26.613314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634172, 24.512703, 26.894665>,  <30.467621, 24.549631, 27.063477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634172, 24.512703, 26.894665>,  <30.911757, 24.451157, 26.613314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634172, 24.512703, 26.894665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266608, 0.852548, -0.449536,
		-0.668834, -0.499487, -0.550613,
		-0.693961, 0.153867, 0.703380,
		30.425983, 24.558863, 27.105679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433981, 24.714024, 26.224726>,  <30.911757, 24.451157, 26.613314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433981, 24.714024, 26.224726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346872, 24.821068, 26.600163>,  <30.294607, 24.885296, 26.825424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346872, 24.821068, 26.600163>,  <30.433981, 24.714024, 26.224726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346872, 24.821068, 26.600163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274724, 0.905984, -0.322056,
		-0.936538, -0.327988, -0.123777,
		-0.217770, 0.267613, 0.938594,
		30.281542, 24.901352, 26.881741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788679, 25.007158, 26.163603>,  <30.433981, 24.714024, 26.224726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788679, 25.007158, 26.163603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877853, 25.173416, 26.516315>,  <29.931358, 25.273170, 26.727943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877853, 25.173416, 26.516315>,  <29.788679, 25.007158, 26.163603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877853, 25.173416, 26.516315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261704, 0.896859, -0.356588,
		-0.939047, -0.151269, 0.308720,
		0.222938, 0.415646, 0.881781,
		29.944735, 25.298109, 26.780849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174709, 25.260956, 26.301226>,  <29.788679, 25.007158, 26.163603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174709, 25.260956, 26.301226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473471, 25.461933, 26.475437>,  <29.652727, 25.582520, 26.579964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473471, 25.461933, 26.475437>,  <29.174709, 25.260956, 26.301226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473471, 25.461933, 26.475437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137360, 0.757458, -0.638270,
		-0.650589, 0.416903, 0.634764,
		0.746904, 0.502443, 0.435529,
		29.697542, 25.612665, 26.606096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
