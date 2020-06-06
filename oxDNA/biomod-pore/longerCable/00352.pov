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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
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
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.138298, 35.183949, 35.255356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327183, 34.851032, 35.139210>,  <24.440514, 34.651283, 35.069523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327183, 34.851032, 35.139210>,  <24.138298, 35.183949, 35.255356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.327183, 34.851032, 35.139210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410919, 0.499268, -0.762809,
		0.779846, 0.240892, 0.577764,
		0.472213, -0.832287, -0.290366,
		24.468847, 34.601345, 35.052101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.777317, 35.398277, 35.120621>,  <24.138298, 35.183949, 35.255356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.777317, 35.398277, 35.120621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703039, 35.062630, 34.916115>,  <24.658472, 34.861240, 34.793411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703039, 35.062630, 34.916115>,  <24.777317, 35.398277, 35.120621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.703039, 35.062630, 34.916115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395835, 0.412348, -0.820538,
		0.899351, -0.354747, 0.255583,
		-0.185694, -0.839121, -0.511267,
		24.647331, 34.810894, 34.762733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276915, 35.504730, 34.612267>,  <24.777317, 35.398277, 35.120621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276915, 35.504730, 34.612267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071333, 35.193974, 34.466782>,  <24.947985, 35.007519, 34.379490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071333, 35.193974, 34.466782>,  <25.276915, 35.504730, 34.612267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071333, 35.193974, 34.466782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366537, 0.184458, -0.911936,
		0.775567, -0.602007, 0.189957,
		-0.513953, -0.776893, -0.363717,
		24.917147, 34.960907, 34.357666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627865, 35.228542, 34.094658>,  <25.276915, 35.504730, 34.612267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627865, 35.228542, 34.094658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260530, 35.110714, 33.988918>,  <25.040129, 35.040016, 33.925472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260530, 35.110714, 33.988918>,  <25.627865, 35.228542, 34.094658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260530, 35.110714, 33.988918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211475, 0.199388, -0.956829,
		0.334568, -0.934596, -0.120809,
		-0.918337, -0.294577, -0.264353,
		24.985029, 35.022343, 33.909611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711880, 34.798069, 33.464375>,  <25.627865, 35.228542, 34.094658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711880, 34.798069, 33.464375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326508, 34.905224, 33.461857>,  <25.095284, 34.969517, 33.460346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326508, 34.905224, 33.461857>,  <25.711880, 34.798069, 33.464375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.326508, 34.905224, 33.461857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118138, 0.403544, -0.907301,
		-0.240511, -0.874866, -0.420434,
		-0.963431, 0.267885, -0.006298,
		25.037479, 34.985588, 33.459969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446417, 34.482792, 32.811432>,  <25.711880, 34.798069, 33.464375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446417, 34.482792, 32.811432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241575, 34.815487, 32.897179>,  <25.118670, 35.015106, 32.948627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241575, 34.815487, 32.897179>,  <25.446417, 34.482792, 32.811432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241575, 34.815487, 32.897179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212290, 0.364402, -0.906722,
		-0.832276, -0.418827, -0.363182,
		-0.512104, 0.831742, 0.214371,
		25.087944, 35.065010, 32.961491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.994776, 34.732899, 32.225468>,  <25.446417, 34.482792, 32.811432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.994776, 34.732899, 32.225468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103615, 35.059944, 32.428436>,  <25.168919, 35.256172, 32.550217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103615, 35.059944, 32.428436>,  <24.994776, 34.732899, 32.225468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103615, 35.059944, 32.428436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218337, 0.461109, -0.860063,
		-0.937172, 0.344811, -0.053048,
		0.272098, 0.817609, 0.507423,
		25.185244, 35.305225, 32.580662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.562435, 35.300514, 32.138039>,  <24.994776, 34.732899, 32.225468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.562435, 35.300514, 32.138039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927202, 35.452488, 32.200073>,  <25.146063, 35.543671, 32.237293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927202, 35.452488, 32.200073>,  <24.562435, 35.300514, 32.138039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.927202, 35.452488, 32.200073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127777, 0.622020, -0.772505,
		-0.389968, 0.684646, 0.615780,
		0.911920, 0.379935, 0.155086,
		25.200779, 35.566467, 32.246597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.466415, 36.111870, 32.103985>,  <24.562435, 35.300514, 32.138039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.466415, 36.111870, 32.103985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857426, 36.034462, 32.070541>,  <25.092031, 35.988018, 32.050476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857426, 36.034462, 32.070541>,  <24.466415, 36.111870, 32.103985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.857426, 36.034462, 32.070541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112739, 0.815014, -0.568367,
		0.178133, 0.546169, 0.818516,
		0.977527, -0.193524, -0.083607,
		25.150684, 35.976406, 32.045460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.768421, 36.687313, 32.299644>,  <24.466415, 36.111870, 32.103985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.768421, 36.687313, 32.299644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047556, 36.510666, 32.074081>,  <25.215036, 36.404678, 31.938744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047556, 36.510666, 32.074081>,  <24.768421, 36.687313, 32.299644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047556, 36.510666, 32.074081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063657, 0.822428, -0.565297,
		0.713420, 0.358589, 0.602034,
		0.697839, -0.441618, -0.563910,
		25.256908, 36.378181, 31.904909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.263344, 37.206654, 32.228573>,  <24.768421, 36.687313, 32.299644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.263344, 37.206654, 32.228573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318863, 36.948467, 31.928146>,  <25.352175, 36.793556, 31.747890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318863, 36.948467, 31.928146>,  <25.263344, 37.206654, 32.228573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318863, 36.948467, 31.928146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016449, 0.759808, -0.649939,
		0.990184, 0.077855, 0.116076,
		0.138797, -0.645469, -0.751070,
		25.360502, 36.754826, 31.702826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916399, 37.441826, 31.815319>,  <25.263344, 37.206654, 32.228573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916399, 37.441826, 31.815319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605440, 37.254677, 31.647154>,  <25.418865, 37.142387, 31.546255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605440, 37.254677, 31.647154>,  <25.916399, 37.441826, 31.815319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605440, 37.254677, 31.647154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137728, 0.778771, -0.612003,
		0.613744, -0.417868, -0.669854,
		-0.777399, -0.467871, -0.420414,
		25.372221, 37.114315, 31.521029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984030, 37.520611, 31.079969>,  <25.916399, 37.441826, 31.815319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984030, 37.520611, 31.079969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602228, 37.451084, 31.176889>,  <25.373146, 37.409370, 31.235041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602228, 37.451084, 31.176889>,  <25.984030, 37.520611, 31.079969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602228, 37.451084, 31.176889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269988, 0.848704, -0.454761,
		-0.126597, -0.499489, -0.857020,
		-0.954505, -0.173814, 0.242300,
		25.315876, 37.398941, 31.249578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.522009, 37.470558, 30.514742>,  <25.984030, 37.520611, 31.079969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.522009, 37.470558, 30.514742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323774, 37.605564, 30.834862>,  <25.204834, 37.686569, 31.026934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323774, 37.605564, 30.834862>,  <25.522009, 37.470558, 30.514742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323774, 37.605564, 30.834862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170884, 0.865511, -0.470839,
		-0.851583, -0.370098, -0.371258,
		-0.495585, 0.337516, 0.800299,
		25.175098, 37.706818, 31.074951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.983524, 36.897911, 30.483253>,  <25.522009, 37.470558, 30.514742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.983524, 36.897911, 30.483253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290926, 37.023888, 30.706041>,  <25.475367, 37.099472, 30.839714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290926, 37.023888, 30.706041>,  <24.983524, 36.897911, 30.483253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290926, 37.023888, 30.706041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171207, -0.939951, 0.295264,
		0.616513, -0.131555, -0.776276,
		0.768505, 0.314938, 0.556969,
		25.521477, 37.118370, 30.873133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663013, 36.543110, 30.382763>,  <24.983524, 36.897911, 30.483253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663013, 36.543110, 30.382763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655449, 36.663731, 30.764069>,  <25.650909, 36.736103, 30.992851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655449, 36.663731, 30.764069>,  <25.663013, 36.543110, 30.382763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655449, 36.663731, 30.764069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186420, -0.935651, 0.299675,
		0.982288, 0.183375, -0.038520,
		-0.018912, 0.301548, 0.953264,
		25.649775, 36.754196, 31.050047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587912, 35.916370, 30.783840>,  <25.663013, 36.543110, 30.382763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587912, 35.916370, 30.783840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554605, 36.179577, 31.083193>,  <25.534622, 36.337502, 31.262804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554605, 36.179577, 31.083193>,  <25.587912, 35.916370, 30.783840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554605, 36.179577, 31.083193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102584, -0.752660, 0.650368,
		0.991233, -0.022619, 0.130172,
		-0.083264, 0.658020, 0.748383,
		25.529627, 36.376984, 31.307707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102489, 35.712284, 31.230524>,  <25.587912, 35.916370, 30.783840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102489, 35.712284, 31.230524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839563, 35.944305, 31.422972>,  <25.681808, 36.083519, 31.538441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839563, 35.944305, 31.422972>,  <26.102489, 35.712284, 31.230524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839563, 35.944305, 31.422972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137230, -0.719870, 0.680408,
		0.741017, 0.381218, 0.552781,
		-0.657314, 0.580052, 0.481121,
		25.642368, 36.118320, 31.567308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.382971, 35.763149, 31.881882>,  <26.102489, 35.712284, 31.230524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.382971, 35.763149, 31.881882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003727, 35.855503, 31.969320>,  <25.776180, 35.910915, 32.021782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003727, 35.855503, 31.969320>,  <26.382971, 35.763149, 31.881882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003727, 35.855503, 31.969320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004668, -0.697555, 0.716516,
		0.317913, 0.678315, 0.662435,
		-0.948108, 0.230882, 0.218595,
		25.719294, 35.924767, 32.034901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396513, 35.958168, 32.614098>,  <26.382971, 35.763149, 31.881882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396513, 35.958168, 32.614098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028557, 35.845264, 32.505188>,  <25.807783, 35.777523, 32.439842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028557, 35.845264, 32.505188>,  <26.396513, 35.958168, 32.614098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028557, 35.845264, 32.505188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069393, -0.566158, 0.821370,
		-0.385990, 0.774464, 0.501216,
		-0.919889, -0.282260, -0.272274,
		25.752590, 35.760586, 32.423508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070070, 35.936592, 33.195946>,  <26.396513, 35.958168, 32.614098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070070, 35.936592, 33.195946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863102, 35.691853, 32.956642>,  <25.738920, 35.545010, 32.813061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863102, 35.691853, 32.956642>,  <26.070070, 35.936592, 33.195946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863102, 35.691853, 32.956642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076981, -0.663004, 0.744647,
		-0.852260, 0.431352, 0.295952,
		-0.517423, -0.611851, -0.598258,
		25.707874, 35.508297, 32.777164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925011, 36.634693, 33.230202>,  <26.070070, 35.936592, 33.195946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925011, 36.634693, 33.230202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754129, 36.884819, 33.491425>,  <25.651602, 37.034893, 33.648159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754129, 36.884819, 33.491425>,  <25.925011, 36.634693, 33.230202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754129, 36.884819, 33.491425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426079, 0.497824, -0.755399,
		-0.797468, -0.600961, 0.053762,
		-0.427202, 0.625313, 0.653056,
		25.625969, 37.072414, 33.687340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182924, 36.579777, 33.043243>,  <25.925011, 36.634693, 33.230202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182924, 36.579777, 33.043243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909620, 36.358147, 32.853020>,  <24.745638, 36.225170, 32.738884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909620, 36.358147, 32.853020>,  <25.182924, 36.579777, 33.043243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909620, 36.358147, 32.853020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315045, -0.811257, 0.492553,
		-0.658712, 0.186719, 0.728858,
		-0.683261, -0.554074, -0.475560,
		24.704641, 36.191925, 32.710350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.773849, 36.202572, 33.491592>,  <25.182924, 36.579777, 33.043243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.773849, 36.202572, 33.491592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698608, 35.979027, 33.168533>,  <24.653463, 35.844898, 32.974697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698608, 35.979027, 33.168533>,  <24.773849, 36.202572, 33.491592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.698608, 35.979027, 33.168533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076625, -0.828167, 0.555220,
		-0.979156, 0.042554, 0.198604,
		-0.188104, -0.558864, -0.807643,
		24.642178, 35.811367, 32.926239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.064117, 35.912247, 33.522263>,  <24.773849, 36.202572, 33.491592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.064117, 35.912247, 33.522263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.349646, 35.693485, 33.347282>,  <24.520962, 35.562229, 33.242294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.349646, 35.693485, 33.347282>,  <24.064117, 35.912247, 33.522263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.349646, 35.693485, 33.347282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086570, -0.688749, 0.719813,
		-0.694956, -0.475949, -0.538989,
		0.713822, -0.546898, -0.437448,
		24.563791, 35.529415, 33.216049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.827023, 35.306049, 33.545143>,  <24.064117, 35.912247, 33.522263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.827023, 35.306049, 33.545143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218807, 35.248459, 33.488678>,  <24.453878, 35.213905, 33.454800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218807, 35.248459, 33.488678>,  <23.827023, 35.306049, 33.545143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.218807, 35.248459, 33.488678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025661, -0.783416, 0.620968,
		-0.199989, -0.604592, -0.771021,
		0.979463, -0.143972, -0.141160,
		24.512646, 35.205269, 33.446331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.808071, 34.620293, 33.632065>,  <23.827023, 35.306049, 33.545143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.808071, 34.620293, 33.632065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.191416, 34.722160, 33.683731>,  <24.421423, 34.783283, 33.714733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.191416, 34.722160, 33.683731>,  <23.808071, 34.620293, 33.632065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.191416, 34.722160, 33.683731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099443, -0.721671, 0.685056,
		0.267684, -0.643687, -0.716947,
		0.958362, 0.254674, 0.129169,
		24.478924, 34.798561, 33.722481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.042889, 34.058170, 33.893700>,  <23.808071, 34.620293, 33.632065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.042889, 34.058170, 33.893700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330902, 34.304382, 34.021870>,  <24.503710, 34.452110, 34.098770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330902, 34.304382, 34.021870>,  <24.042889, 34.058170, 33.893700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330902, 34.304382, 34.021870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006306, -0.467533, 0.883953,
		0.693910, -0.634456, -0.340522,
		0.720034, 0.615531, 0.320424,
		24.546913, 34.489040, 34.117996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.632448, 33.729546, 34.135315>,  <24.042889, 34.058170, 33.893700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.632448, 33.729546, 34.135315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605782, 34.072659, 34.339188>,  <24.589781, 34.278526, 34.461510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605782, 34.072659, 34.339188>,  <24.632448, 33.729546, 34.135315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.605782, 34.072659, 34.339188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018349, -0.511781, 0.858920,
		0.997606, 0.047910, 0.049858,
		-0.066667, 0.857779, 0.509677,
		24.585781, 34.329990, 34.492092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156919, 33.705803, 34.634853>,  <24.632448, 33.729546, 34.135315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156919, 33.705803, 34.634853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.846533, 33.925053, 34.759716>,  <24.660301, 34.056602, 34.834633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.846533, 33.925053, 34.759716>,  <25.156919, 33.705803, 34.634853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.846533, 33.925053, 34.759716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113184, -0.607833, 0.785957,
		0.620537, 0.574545, 0.533696,
		-0.775966, 0.548121, 0.312154,
		24.613743, 34.089489, 34.853363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541599, 33.122936, 34.396526>,  <25.156919, 33.705803, 34.634853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541599, 33.122936, 34.396526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676342, 32.846336, 34.140915>,  <25.757187, 32.680378, 33.987549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676342, 32.846336, 34.140915>,  <25.541599, 33.122936, 34.396526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676342, 32.846336, 34.140915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467136, 0.712015, -0.524232,
		0.817503, -0.121921, 0.562871,
		0.336857, -0.691499, -0.639028,
		25.777399, 32.638885, 33.949207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318153, 32.992695, 34.356777>,  <25.541599, 33.122936, 34.396526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318153, 32.992695, 34.356777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148291, 32.944710, 33.997829>,  <26.046373, 32.915920, 33.782459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148291, 32.944710, 33.997829>,  <26.318153, 32.992695, 34.356777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148291, 32.944710, 33.997829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652189, 0.646942, -0.395116,
		0.627945, -0.753045, -0.196492,
		-0.424659, -0.119961, -0.897371,
		26.020893, 32.908722, 33.728619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866997, 32.854370, 33.810307>,  <26.318153, 32.992695, 34.356777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866997, 32.854370, 33.810307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550457, 33.002602, 33.615810>,  <26.360533, 33.091541, 33.499111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550457, 33.002602, 33.615810>,  <26.866997, 32.854370, 33.810307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550457, 33.002602, 33.615810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598506, 0.631849, -0.492501,
		0.124722, -0.680761, -0.721809,
		-0.791350, 0.370582, -0.486245,
		26.313051, 33.113777, 33.469936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973515, 32.811523, 33.088680>,  <26.866997, 32.854370, 33.810307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973515, 32.811523, 33.088680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746677, 33.128143, 33.179768>,  <26.610575, 33.318115, 33.234421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746677, 33.128143, 33.179768>,  <26.973515, 32.811523, 33.088680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746677, 33.128143, 33.179768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731094, 0.611080, -0.303452,
		-0.379354, -0.005598, -0.925235,
		-0.567091, 0.791549, 0.227723,
		26.576550, 33.365608, 33.248085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109568, 33.405704, 32.581394>,  <26.973515, 32.811523, 33.088680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109568, 33.405704, 32.581394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981680, 33.591057, 32.911983>,  <26.904947, 33.702267, 33.110336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981680, 33.591057, 32.911983>,  <27.109568, 33.405704, 32.581394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981680, 33.591057, 32.911983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520681, 0.814674, -0.255338,
		-0.791625, 0.348693, -0.501740,
		-0.319720, 0.463378, 0.826474,
		26.885763, 33.730072, 33.159927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563725, 33.691586, 33.211586>,  <27.109568, 33.405704, 32.581394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563725, 33.691586, 33.211586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659208, 33.955402, 33.496689>,  <27.716499, 34.113693, 33.667751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659208, 33.955402, 33.496689>,  <27.563725, 33.691586, 33.211586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659208, 33.955402, 33.496689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685907, -0.405058, 0.604533,
		0.687423, -0.633192, 0.355693,
		0.238709, 0.659542, 0.712757,
		27.730822, 34.153263, 33.710514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713545, 33.419174, 33.945560>,  <27.563725, 33.691586, 33.211586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713545, 33.419174, 33.945560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606047, 33.793247, 34.037830>,  <27.541548, 34.017693, 34.093193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606047, 33.793247, 34.037830>,  <27.713545, 33.419174, 33.945560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606047, 33.793247, 34.037830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482436, -0.337968, 0.808104,
		0.833686, 0.105888, 0.541993,
		-0.268744, 0.935182, 0.230675,
		27.525423, 34.073803, 34.107033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795631, 33.609489, 34.665810>,  <27.713545, 33.419174, 33.945560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795631, 33.609489, 34.665810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532547, 33.905033, 34.607159>,  <27.374697, 34.082359, 34.571968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532547, 33.905033, 34.607159>,  <27.795631, 33.609489, 34.665810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532547, 33.905033, 34.607159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450720, -0.230053, 0.862512,
		0.603547, 0.633369, 0.484329,
		-0.657709, 0.738864, -0.146624,
		27.335234, 34.126694, 34.563171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665331, 33.867558, 35.355690>,  <27.795631, 33.609489, 34.665810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665331, 33.867558, 35.355690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363375, 34.023277, 35.144566>,  <27.182201, 34.116711, 35.017891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363375, 34.023277, 35.144566>,  <27.665331, 33.867558, 35.355690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363375, 34.023277, 35.144566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634351, -0.229049, 0.738332,
		0.166541, 0.892177, 0.419861,
		-0.754892, 0.389302, -0.527808,
		27.136908, 34.140068, 34.986221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107706, 33.988262, 35.840134>,  <27.665331, 33.867558, 35.355690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107706, 33.988262, 35.840134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373556, 33.689606, 35.828865>,  <27.533066, 33.510410, 35.822102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373556, 33.689606, 35.828865>,  <27.107706, 33.988262, 35.840134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373556, 33.689606, 35.828865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201507, -0.142804, -0.969021,
		0.719490, 0.649716, -0.245365,
		0.664628, -0.746643, -0.028176,
		27.572945, 33.465614, 35.820412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369694, 33.740631, 35.828476>,  <27.107706, 33.988262, 35.840134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369694, 33.740631, 35.828476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109552, 34.012383, 35.692543>,  <25.953468, 34.175434, 35.610985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109552, 34.012383, 35.692543>,  <26.369694, 33.740631, 35.828476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109552, 34.012383, 35.692543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619496, 0.215442, -0.754857,
		-0.439623, -0.701445, -0.560987,
		-0.650351, 0.679382, -0.339829,
		25.914448, 34.216198, 35.590595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254082, 33.505630, 35.187099>,  <26.369694, 33.740631, 35.828476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254082, 33.505630, 35.187099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214411, 33.895657, 35.266502>,  <26.190609, 34.129673, 35.314144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214411, 33.895657, 35.266502>,  <26.254082, 33.505630, 35.187099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214411, 33.895657, 35.266502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582067, 0.218644, -0.783194,
		-0.807070, 0.037868, -0.589241,
		-0.099176, 0.975070, 0.198503,
		26.184658, 34.188179, 35.326054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894751, 33.874855, 34.591393>,  <26.254082, 33.505630, 35.187099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894751, 33.874855, 34.591393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186197, 34.034019, 34.814381>,  <26.361065, 34.129520, 34.948174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186197, 34.034019, 34.814381>,  <25.894751, 33.874855, 34.591393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186197, 34.034019, 34.814381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526927, 0.194323, -0.827397,
		-0.437564, 0.896606, -0.068084,
		0.728619, 0.397915, 0.557475,
		26.404783, 34.153393, 34.981625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127436, 34.494991, 34.176712>,  <25.894751, 33.874855, 34.591393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127436, 34.494991, 34.176712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414074, 34.370457, 34.426373>,  <26.586058, 34.295734, 34.576168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414074, 34.370457, 34.426373>,  <26.127436, 34.494991, 34.176712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414074, 34.370457, 34.426373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679180, 0.107780, -0.726015,
		0.158763, 0.944168, 0.288687,
		0.716595, -0.311335, 0.624149,
		26.629053, 34.277058, 34.613617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565790, 35.010616, 34.114071>,  <26.127436, 34.494991, 34.176712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565790, 35.010616, 34.114071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810556, 34.748032, 34.290535>,  <26.957417, 34.590481, 34.396412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810556, 34.748032, 34.290535>,  <26.565790, 35.010616, 34.114071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810556, 34.748032, 34.290535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785679, 0.440405, -0.434455,
		0.090914, 0.612458, 0.785257,
		0.611917, -0.656459, 0.441157,
		26.994131, 34.551094, 34.422882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184912, 35.275940, 34.410931>,  <26.565790, 35.010616, 34.114071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184912, 35.275940, 34.410931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268932, 34.901829, 34.296997>,  <27.319345, 34.677361, 34.228638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268932, 34.901829, 34.296997>,  <27.184912, 35.275940, 34.410931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268932, 34.901829, 34.296997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609174, 0.353068, -0.710105,
		0.764712, -0.024352, 0.643912,
		0.210052, -0.935281, -0.284830,
		27.331947, 34.621246, 34.211548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500534, 35.715488, 33.905415>,  <27.184912, 35.275940, 34.410931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500534, 35.715488, 33.905415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794498, 35.798859, 34.163551>,  <27.970877, 35.848881, 34.318432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794498, 35.798859, 34.163551>,  <27.500534, 35.715488, 33.905415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794498, 35.798859, 34.163551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555452, -0.730949, -0.396469,
		0.389073, 0.649824, -0.652955,
		0.734912, 0.208430, 0.645338,
		28.014973, 35.861389, 34.357151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183207, 35.867722, 33.515766>,  <27.500534, 35.715488, 33.905415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183207, 35.867722, 33.515766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273005, 35.777279, 33.894917>,  <28.326883, 35.723011, 34.122406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273005, 35.777279, 33.894917>,  <28.183207, 35.867722, 33.515766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273005, 35.777279, 33.894917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726089, -0.609931, -0.317458,
		0.649921, 0.759513, 0.027250,
		0.224493, -0.226109, 0.947881,
		28.340353, 35.709446, 34.179279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860771, 36.123444, 33.609119>,  <28.183207, 35.867722, 33.515766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860771, 36.123444, 33.609119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737394, 35.823467, 33.843201>,  <28.663368, 35.643482, 33.983650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737394, 35.823467, 33.843201>,  <28.860771, 36.123444, 33.609119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737394, 35.823467, 33.843201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860934, -0.481712, -0.163543,
		0.404544, 0.453374, 0.794227,
		-0.308442, -0.749937, 0.585199,
		28.644861, 35.598488, 34.018761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320286, 36.097206, 34.144581>,  <28.860771, 36.123444, 33.609119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320286, 36.097206, 34.144581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147697, 35.757507, 34.022854>,  <29.044144, 35.553688, 33.949818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147697, 35.757507, 34.022854>,  <29.320286, 36.097206, 34.144581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147697, 35.757507, 34.022854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895476, -0.362297, -0.258581,
		0.109346, -0.384081, 0.916801,
		-0.431471, -0.849248, -0.304320,
		29.018257, 35.502731, 33.931557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570177, 35.965607, 34.760490>,  <29.320286, 36.097206, 34.144581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570177, 35.965607, 34.760490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502995, 35.760986, 34.423420>,  <29.462685, 35.638214, 34.221176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502995, 35.760986, 34.423420>,  <29.570177, 35.965607, 34.760490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502995, 35.760986, 34.423420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868294, 0.481506, -0.119238,
		0.466750, 0.711663, -0.525053,
		-0.167959, -0.511554, -0.842675,
		29.452606, 35.607521, 34.170616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053562, 36.509632, 34.698864>,  <29.570177, 35.965607, 34.760490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053562, 36.509632, 34.698864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950874, 36.123051, 34.702110>,  <28.889261, 35.891102, 34.704060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950874, 36.123051, 34.702110>,  <29.053562, 36.509632, 34.698864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950874, 36.123051, 34.702110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908444, 0.244161, 0.339286,
		-0.329887, 0.079724, -0.940648,
		-0.256719, -0.966452, 0.008120,
		28.873859, 35.833115, 34.704548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348904, 36.473923, 34.533115>,  <29.053562, 36.509632, 34.698864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348904, 36.473923, 34.533115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478138, 36.163391, 34.749611>,  <28.555679, 35.977074, 34.879509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478138, 36.163391, 34.749611>,  <28.348904, 36.473923, 34.533115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478138, 36.163391, 34.749611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732126, 0.157358, 0.662745,
		-0.599673, -0.610375, -0.517528,
		0.323085, -0.776326, 0.541235,
		28.575064, 35.930492, 34.911980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119524, 37.198811, 34.563316>,  <28.348904, 36.473923, 34.533115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119524, 37.198811, 34.563316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296238, 37.107498, 34.910351>,  <28.402267, 37.052711, 35.118572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296238, 37.107498, 34.910351>,  <28.119524, 37.198811, 34.563316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296238, 37.107498, 34.910351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855627, 0.397932, -0.330989,
		-0.269682, 0.888558, 0.371128,
		0.441786, -0.228285, 0.867589,
		28.428774, 37.039013, 35.170628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406382, 37.763111, 34.993717>,  <28.119524, 37.198811, 34.563316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406382, 37.763111, 34.993717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673761, 37.466606, 35.018066>,  <28.834188, 37.288704, 35.032677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673761, 37.466606, 35.018066>,  <28.406382, 37.763111, 34.993717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673761, 37.466606, 35.018066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736098, 0.647630, -0.196812,
		0.106463, 0.176370, 0.978549,
		0.668449, -0.741262, 0.060877,
		28.874296, 37.244228, 35.036331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849297, 37.765015, 35.623142>,  <28.406382, 37.763111, 34.993717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849297, 37.765015, 35.623142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052551, 37.625824, 35.308002>,  <29.174503, 37.542309, 35.118919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052551, 37.625824, 35.308002>,  <28.849297, 37.765015, 35.623142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052551, 37.625824, 35.308002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609825, 0.791324, 0.043804,
		0.608202, -0.502710, 0.614307,
		0.508137, -0.347978, -0.787850,
		29.204992, 37.521431, 35.071648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570454, 37.782600, 35.691589>,  <28.849297, 37.765015, 35.623142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570454, 37.782600, 35.691589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545963, 37.794952, 35.292530>,  <29.531269, 37.802364, 35.053097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545963, 37.794952, 35.292530>,  <29.570454, 37.782600, 35.691589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545963, 37.794952, 35.292530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594700, 0.803864, -0.011617,
		0.801613, -0.594011, -0.067579,
		-0.061225, 0.030877, -0.997646,
		29.527596, 37.804214, 34.993237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258276, 37.954453, 35.561741>,  <29.570454, 37.782600, 35.691589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258276, 37.954453, 35.561741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078156, 37.993668, 35.206749>,  <29.970083, 38.017197, 34.993755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078156, 37.993668, 35.206749>,  <30.258276, 37.954453, 35.561741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078156, 37.993668, 35.206749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603870, 0.765595, -0.221824,
		0.657701, -0.635808, -0.403953,
		-0.450302, 0.098041, -0.887477,
		29.943066, 38.023079, 34.940506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736044, 38.037209, 35.008987>,  <30.258276, 37.954453, 35.561741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736044, 38.037209, 35.008987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392174, 38.219711, 34.917084>,  <30.185852, 38.329212, 34.861942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392174, 38.219711, 34.917084>,  <30.736044, 38.037209, 35.008987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392174, 38.219711, 34.917084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508962, 0.803555, -0.308636,
		0.043809, -0.382267, -0.923013,
		-0.859673, 0.456258, -0.229762,
		30.134272, 38.356590, 34.848156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006517, 38.636292, 34.622570>,  <30.736044, 38.037209, 35.008987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006517, 38.636292, 34.622570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618483, 38.722736, 34.666801>,  <30.385662, 38.774605, 34.693340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618483, 38.722736, 34.666801>,  <31.006517, 38.636292, 34.622570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618483, 38.722736, 34.666801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145713, 0.882695, -0.446786,
		-0.194166, -0.417308, -0.887780,
		-0.970086, 0.216111, 0.110582,
		30.327457, 38.787571, 34.699974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694126, 38.603863, 34.432888>,  <31.006517, 38.636292, 34.622570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694126, 38.603863, 34.432888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984631, 38.837547, 34.577797>,  <32.158932, 38.977760, 34.664742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984631, 38.837547, 34.577797>,  <31.694126, 38.603863, 34.432888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984631, 38.837547, 34.577797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687375, -0.611210, -0.392348,
		-0.007793, 0.533962, -0.845472,
		0.726260, 0.584215, 0.362270,
		32.202507, 39.012810, 34.686478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058369, 38.700481, 33.891438>,  <31.694126, 38.603863, 34.432888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058369, 38.700481, 33.891438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290756, 38.730103, 34.215660>,  <32.430187, 38.747875, 34.410194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290756, 38.730103, 34.215660>,  <32.058369, 38.700481, 33.891438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290756, 38.730103, 34.215660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625381, -0.677988, -0.386305,
		0.520939, 0.731334, -0.440197,
		0.580966, 0.074049, 0.810552,
		32.465046, 38.752316, 34.458824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799568, 38.704807, 33.652191>,  <32.058369, 38.700481, 33.891438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799568, 38.704807, 33.652191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779766, 38.557114, 34.023399>,  <32.767883, 38.468498, 34.246124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779766, 38.557114, 34.023399>,  <32.799568, 38.704807, 33.652191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779766, 38.557114, 34.023399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600696, -0.753333, -0.267683,
		0.797943, 0.544204, 0.259091,
		-0.049508, -0.369231, 0.928018,
		32.764915, 38.446346, 34.301804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527252, 38.676182, 33.948803>,  <32.799568, 38.704807, 33.652191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527252, 38.676182, 33.948803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284405, 38.399437, 34.105125>,  <33.138695, 38.233391, 34.198917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284405, 38.399437, 34.105125>,  <33.527252, 38.676182, 33.948803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284405, 38.399437, 34.105125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593787, -0.721845, -0.355467,
		0.528035, 0.016243, 0.849067,
		-0.607120, -0.691865, 0.390805,
		33.102268, 38.191879, 34.222366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878597, 38.034019, 33.997047>,  <33.527252, 38.676182, 33.948803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878597, 38.034019, 33.997047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524601, 37.853691, 34.043610>,  <33.312202, 37.745495, 34.071548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524601, 37.853691, 34.043610>,  <33.878597, 38.034019, 33.997047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524601, 37.853691, 34.043610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346548, -0.804739, -0.481974,
		0.310965, -0.386201, 0.868418,
		-0.884989, -0.450826, 0.116409,
		33.259106, 37.718445, 34.078533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896751, 37.295788, 34.100677>,  <33.878597, 38.034019, 33.997047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896751, 37.295788, 34.100677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547295, 37.343906, 33.912094>,  <33.337620, 37.372780, 33.798943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547295, 37.343906, 33.912094>,  <33.896751, 37.295788, 34.100677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547295, 37.343906, 33.912094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280568, -0.667087, -0.690128,
		-0.397527, -0.735203, 0.549044,
		-0.873644, 0.120300, -0.471460,
		33.285202, 37.379997, 33.770657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709667, 36.702625, 33.701450>,  <33.896751, 37.295788, 34.100677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709667, 36.702625, 33.701450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414829, 36.937920, 33.568378>,  <33.237926, 37.079094, 33.488537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414829, 36.937920, 33.568378>,  <33.709667, 36.702625, 33.701450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414829, 36.937920, 33.568378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120176, -0.598529, -0.792036,
		-0.665019, -0.543824, 0.511864,
		-0.737094, 0.588233, -0.332679,
		33.193699, 37.114388, 33.468575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242165, 36.281403, 33.548649>,  <33.709667, 36.702625, 33.701450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242165, 36.281403, 33.548649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172718, 36.614807, 33.338840>,  <33.131050, 36.814850, 33.212955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172718, 36.614807, 33.338840>,  <33.242165, 36.281403, 33.548649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172718, 36.614807, 33.338840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137057, -0.506977, -0.850993,
		-0.975230, -0.219633, -0.026221,
		-0.173613, 0.833508, -0.524521,
		33.120636, 36.864861, 33.181484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756618, 36.087265, 33.027405>,  <33.242165, 36.281403, 33.548649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756618, 36.087265, 33.027405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926601, 36.425880, 32.899170>,  <33.028591, 36.629051, 32.822227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926601, 36.425880, 32.899170>,  <32.756618, 36.087265, 33.027405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926601, 36.425880, 32.899170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175195, -0.424377, -0.888375,
		-0.888098, 0.321355, -0.328652,
		0.424956, 0.846543, -0.320589,
		33.054089, 36.679844, 32.802994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415668, 36.415787, 32.338463>,  <32.756618, 36.087265, 33.027405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415668, 36.415787, 32.338463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779877, 36.578445, 32.368389>,  <32.998402, 36.676041, 32.386345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779877, 36.578445, 32.368389>,  <32.415668, 36.415787, 32.338463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779877, 36.578445, 32.368389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152755, -0.162698, -0.974780,
		-0.384216, 0.898983, -0.210256,
		0.910518, 0.406644, 0.074814,
		33.053032, 36.700439, 32.390835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544453, 36.792332, 31.740921>,  <32.415668, 36.415787, 32.338463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544453, 36.792332, 31.740921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909702, 36.713787, 31.883835>,  <33.128853, 36.666660, 31.969584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909702, 36.713787, 31.883835>,  <32.544453, 36.792332, 31.740921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909702, 36.713787, 31.883835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295816, -0.283935, -0.912071,
		0.280546, 0.938521, -0.201178,
		0.913119, -0.196366, 0.357286,
		33.183640, 36.654877, 31.991020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089336, 37.121918, 31.250084>,  <32.544453, 36.792332, 31.740921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089336, 37.121918, 31.250084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272617, 36.843250, 31.470884>,  <33.382587, 36.676052, 31.603365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272617, 36.843250, 31.470884>,  <33.089336, 37.121918, 31.250084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272617, 36.843250, 31.470884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335189, -0.439749, -0.833228,
		0.823223, 0.566814, 0.032020,
		0.458205, -0.696665, 0.552001,
		33.410080, 36.634251, 31.636484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740177, 37.115173, 30.962917>,  <33.089336, 37.121918, 31.250084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740177, 37.115173, 30.962917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690765, 36.767567, 31.154562>,  <33.661118, 36.559002, 31.269548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690765, 36.767567, 31.154562>,  <33.740177, 37.115173, 30.962917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690765, 36.767567, 31.154562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194488, -0.494647, -0.847053,
		0.973096, -0.011453, 0.230116,
		-0.123527, -0.869018, 0.479111,
		33.653706, 36.506863, 31.298296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012398, 36.676342, 30.420229>,  <33.740177, 37.115173, 30.962917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012398, 36.676342, 30.420229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871647, 36.428677, 30.701033>,  <33.787197, 36.280079, 30.869514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871647, 36.428677, 30.701033>,  <34.012398, 36.676342, 30.420229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871647, 36.428677, 30.701033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025298, -0.755990, -0.654094,
		0.935704, -0.212402, 0.281680,
		-0.351878, -0.619164, 0.702010,
		33.766083, 36.242928, 30.911636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435081, 36.073414, 30.423321>,  <34.012398, 36.676342, 30.420229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435081, 36.073414, 30.423321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064209, 36.000870, 30.554440>,  <33.841686, 35.957344, 30.633112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064209, 36.000870, 30.554440>,  <34.435081, 36.073414, 30.423321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064209, 36.000870, 30.554440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156522, -0.607436, -0.778795,
		0.340358, -0.773389, 0.534814,
		-0.927177, -0.181359, 0.327798,
		33.786057, 35.946461, 30.652779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303333, 35.306850, 30.369221>,  <34.435081, 36.073414, 30.423321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303333, 35.306850, 30.369221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949696, 35.493252, 30.355200>,  <33.737514, 35.605091, 30.346786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949696, 35.493252, 30.355200>,  <34.303333, 35.306850, 30.369221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949696, 35.493252, 30.355200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262116, -0.556585, -0.788358,
		-0.386885, -0.687792, 0.614217,
		-0.884090, 0.466000, -0.035053,
		33.684467, 35.633053, 30.344685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857616, 34.870785, 30.144529>,  <34.303333, 35.306850, 30.369221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857616, 34.870785, 30.144529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625637, 35.195103, 30.112862>,  <33.486450, 35.389694, 30.093861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625637, 35.195103, 30.112862>,  <33.857616, 34.870785, 30.144529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625637, 35.195103, 30.112862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498642, -0.430151, -0.752547,
		-0.644217, -0.396963, 0.653763,
		-0.579949, 0.810796, -0.079168,
		33.451653, 35.438343, 30.089111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147369, 34.595425, 30.155073>,  <33.857616, 34.870785, 30.144529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147369, 34.595425, 30.155073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167080, 34.955578, 29.982155>,  <33.178905, 35.171669, 29.878405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167080, 34.955578, 29.982155>,  <33.147369, 34.595425, 30.155073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167080, 34.955578, 29.982155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604804, -0.317549, -0.730325,
		-0.794849, 0.297439, 0.528910,
		0.049273, 0.900385, -0.432295,
		33.181862, 35.225693, 29.852467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508739, 34.725330, 30.021536>,  <33.147369, 34.595425, 30.155073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508739, 34.725330, 30.021536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718643, 34.948978, 29.764784>,  <32.844585, 35.083168, 29.610733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718643, 34.948978, 29.764784>,  <32.508739, 34.725330, 30.021536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718643, 34.948978, 29.764784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599451, -0.292654, -0.744991,
		-0.604392, 0.775715, 0.181595,
		0.524756, 0.559124, -0.641881,
		32.876068, 35.116714, 29.572220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047958, 34.994713, 29.454449>,  <32.508739, 34.725330, 30.021536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047958, 34.994713, 29.454449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407455, 35.048428, 29.287483>,  <32.623154, 35.080654, 29.187304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407455, 35.048428, 29.287483>,  <32.047958, 34.994713, 29.454449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407455, 35.048428, 29.287483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399241, -0.143020, -0.905623,
		-0.181309, 0.980568, -0.074927,
		0.898740, 0.134283, -0.417413,
		32.677078, 35.088711, 29.162260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987200, 35.479164, 28.886185>,  <32.047958, 34.994713, 29.454449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987200, 35.479164, 28.886185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342907, 35.311638, 28.812647>,  <32.556332, 35.211121, 28.768524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342907, 35.311638, 28.812647>,  <31.987200, 35.479164, 28.886185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342907, 35.311638, 28.812647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230553, -0.063303, -0.970998,
		0.395033, 0.905861, -0.152852,
		0.889266, -0.418817, -0.183842,
		32.609688, 35.185993, 28.757494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262894, 35.826435, 28.307394>,  <31.987200, 35.479164, 28.886185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262894, 35.826435, 28.307394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451473, 35.473686, 28.304993>,  <32.564621, 35.262035, 28.303553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451473, 35.473686, 28.304993>,  <32.262894, 35.826435, 28.307394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451473, 35.473686, 28.304993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102279, -0.047914, -0.993601,
		0.875944, 0.469044, -0.112786,
		0.471446, -0.881874, -0.006003,
		32.592907, 35.209126, 28.303192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637772, 35.781235, 27.653912>,  <32.262894, 35.826435, 28.307394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637772, 35.781235, 27.653912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617046, 35.393028, 27.748068>,  <32.604610, 35.160103, 27.804562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617046, 35.393028, 27.748068>,  <32.637772, 35.781235, 27.653912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617046, 35.393028, 27.748068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279335, -0.212216, -0.936449,
		0.958795, -0.114275, -0.260104,
		-0.051814, -0.970518, 0.235393,
		32.601501, 35.101871, 27.818686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056961, 35.381958, 27.139652>,  <32.637772, 35.781235, 27.653912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056961, 35.381958, 27.139652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787518, 35.136971, 27.305122>,  <32.625851, 34.989979, 27.404404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787518, 35.136971, 27.305122>,  <33.056961, 35.381958, 27.139652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787518, 35.136971, 27.305122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256852, -0.330831, -0.908063,
		0.693020, -0.717933, 0.065536,
		-0.673610, -0.612473, 0.413675,
		32.585434, 34.953228, 27.429224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956184, 34.934933, 26.632614>,  <33.056961, 35.381958, 27.139652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956184, 34.934933, 26.632614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647469, 34.837929, 26.867741>,  <32.462238, 34.779728, 27.008816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647469, 34.837929, 26.867741>,  <32.956184, 34.934933, 26.632614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647469, 34.837929, 26.867741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511343, -0.312792, -0.800430,
		0.377976, -0.918341, 0.117405,
		-0.771791, -0.242510, 0.587815,
		32.415932, 34.765175, 27.044085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764858, 34.293957, 26.345881>,  <32.956184, 34.934933, 26.632614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764858, 34.293957, 26.345881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446407, 34.449425, 26.531401>,  <32.255337, 34.542706, 26.642714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446407, 34.449425, 26.531401>,  <32.764858, 34.293957, 26.345881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446407, 34.449425, 26.531401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560427, -0.184479, -0.807397,
		-0.228261, -0.902714, 0.364697,
		-0.796127, 0.388683, 0.463796,
		32.207569, 34.566025, 26.670540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301231, 33.790421, 26.380762>,  <32.764858, 34.293957, 26.345881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301231, 33.790421, 26.380762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086605, 34.125755, 26.419317>,  <31.957829, 34.326958, 26.442450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086605, 34.125755, 26.419317>,  <32.301231, 33.790421, 26.380762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086605, 34.125755, 26.419317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509451, -0.230754, -0.828982,
		-0.672724, -0.493908, 0.550906,
		-0.536565, 0.838336, 0.096388,
		31.925636, 34.377254, 26.448235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498465, 33.632080, 26.454346>,  <32.301231, 33.790421, 26.380762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498465, 33.632080, 26.454346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522329, 34.013050, 26.334793>,  <31.536648, 34.241631, 26.263062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522329, 34.013050, 26.334793>,  <31.498465, 33.632080, 26.454346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522329, 34.013050, 26.334793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365215, -0.257827, -0.894507,
		-0.929009, 0.162526, 0.332456,
		0.059664, 0.952423, -0.298881,
		31.540228, 34.298779, 26.245129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711246, 33.866932, 26.291420>,  <31.498465, 33.632080, 26.454346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711246, 33.866932, 26.291420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981573, 34.090908, 26.099695>,  <31.143768, 34.225292, 25.984659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981573, 34.090908, 26.099695>,  <30.711246, 33.866932, 26.291420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981573, 34.090908, 26.099695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416995, -0.245764, -0.875052,
		-0.607773, 0.791245, 0.067400,
		0.675816, 0.559938, -0.479314,
		31.184319, 34.258888, 25.955900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333805, 34.012924, 25.612947>,  <30.711246, 33.866932, 26.291420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333805, 34.012924, 25.612947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711447, 34.133949, 25.560600>,  <30.938032, 34.206562, 25.529192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711447, 34.133949, 25.560600>,  <30.333805, 34.012924, 25.612947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711447, 34.133949, 25.560600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179607, 0.139223, -0.973837,
		-0.276425, 0.942907, 0.185783,
		0.944103, 0.302560, -0.130868,
		30.994678, 34.224716, 25.521339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236473, 34.322212, 24.951479>,  <30.333805, 34.012924, 25.612947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236473, 34.322212, 24.951479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628252, 34.264874, 25.008234>,  <30.863319, 34.230469, 25.042288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628252, 34.264874, 25.008234>,  <30.236473, 34.322212, 24.951479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628252, 34.264874, 25.008234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142995, -0.002602, -0.989720,
		0.142242, 0.989669, 0.017949,
		0.979449, -0.143347, 0.141887,
		30.922087, 34.221870, 25.050800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553669, 34.869495, 24.493868>,  <30.236473, 34.322212, 24.951479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553669, 34.869495, 24.493868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796556, 34.559750, 24.565022>,  <30.942289, 34.373901, 24.607714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796556, 34.559750, 24.565022>,  <30.553669, 34.869495, 24.493868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796556, 34.559750, 24.565022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313712, 0.027972, -0.949106,
		0.729980, 0.632120, 0.259913,
		0.607219, -0.774366, 0.177885,
		30.978722, 34.327438, 24.618387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263611, 35.051525, 24.163256>,  <30.553669, 34.869495, 24.493868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263611, 35.051525, 24.163256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266857, 34.653549, 24.203302>,  <31.268805, 34.414764, 24.227331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266857, 34.653549, 24.203302>,  <31.263611, 35.051525, 24.163256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266857, 34.653549, 24.203302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359354, -0.090530, -0.928800,
		0.933166, 0.043517, 0.356802,
		0.008117, -0.994942, 0.100118,
		31.269293, 34.355068, 24.233337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780977, 34.804535, 23.747065>,  <31.263611, 35.051525, 24.163256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780977, 34.804535, 23.747065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558815, 34.477509, 23.807865>,  <31.425518, 34.281292, 23.844345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558815, 34.477509, 23.807865>,  <31.780977, 34.804535, 23.747065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558815, 34.477509, 23.807865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193753, -0.304983, -0.932440,
		0.808694, -0.488430, 0.327795,
		-0.555404, -0.817570, 0.152003,
		31.392193, 34.232239, 23.853466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238262, 34.301277, 23.560831>,  <31.780977, 34.804535, 23.747065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238262, 34.301277, 23.560831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867245, 34.153507, 23.538252>,  <31.644634, 34.064846, 23.524704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867245, 34.153507, 23.538252>,  <32.238262, 34.301277, 23.560831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867245, 34.153507, 23.538252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155532, -0.244250, -0.957158,
		0.339810, -0.896586, 0.284010,
		-0.927544, -0.369424, -0.056449,
		31.588982, 34.042679, 23.521317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335861, 33.612358, 23.285883>,  <32.238262, 34.301277, 23.560831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335861, 33.612358, 23.285883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970831, 33.752377, 23.201340>,  <31.751812, 33.836388, 23.150614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970831, 33.752377, 23.201340>,  <32.335861, 33.612358, 23.285883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970831, 33.752377, 23.201340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117777, -0.269967, -0.955639,
		-0.391577, -0.896987, 0.205138,
		-0.912577, 0.350045, -0.211358,
		31.697058, 33.857391, 23.137932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077011, 33.117882, 22.862946>,  <32.335861, 33.612358, 23.285883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077011, 33.117882, 22.862946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854351, 33.438358, 22.775103>,  <31.720755, 33.630646, 22.722397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854351, 33.438358, 22.775103>,  <32.077011, 33.117882, 22.862946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854351, 33.438358, 22.775103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119010, -0.338529, -0.933399,
		-0.822177, -0.493443, 0.283793,
		-0.556652, 0.801194, -0.219606,
		31.687355, 33.678715, 22.709221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577053, 32.860329, 22.485943>,  <32.077011, 33.117882, 22.862946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577053, 32.860329, 22.485943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565390, 33.252506, 22.408092>,  <31.558392, 33.487812, 22.361382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565390, 33.252506, 22.408092>,  <31.577053, 32.860329, 22.485943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565390, 33.252506, 22.408092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453648, -0.186482, -0.871452,
		-0.890704, 0.062884, 0.450214,
		-0.029156, 0.980444, -0.194628,
		31.556643, 33.546638, 22.349705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010691, 32.934978, 22.123436>,  <31.577053, 32.860329, 22.485943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010691, 32.934978, 22.123436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202873, 33.276066, 22.041420>,  <31.318182, 33.480717, 21.992210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202873, 33.276066, 22.041420>,  <31.010691, 32.934978, 22.123436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202873, 33.276066, 22.041420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227193, -0.104798, -0.968195,
		-0.847082, 0.511757, 0.143380,
		0.480454, 0.852715, -0.205040,
		31.347010, 33.531879, 21.979908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517626, 33.385311, 21.652786>,  <31.010691, 32.934978, 22.123436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517626, 33.385311, 21.652786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891027, 33.525169, 21.620987>,  <31.115068, 33.609085, 21.601908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891027, 33.525169, 21.620987>,  <30.517626, 33.385311, 21.652786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891027, 33.525169, 21.620987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092756, 0.021304, -0.995461,
		-0.346363, 0.936640, 0.052319,
		0.933504, 0.349644, -0.079500,
		31.171078, 33.630062, 21.597137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423923, 33.894753, 21.236582>,  <30.517626, 33.385311, 21.652786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423923, 33.894753, 21.236582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813957, 33.810341, 21.209227>,  <31.047977, 33.759693, 21.192814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813957, 33.810341, 21.209227>,  <30.423923, 33.894753, 21.236582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813957, 33.810341, 21.209227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061388, 0.039561, -0.997330,
		0.213172, 0.976679, 0.025621,
		0.975084, -0.211030, -0.068389,
		31.106482, 33.747032, 21.188709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714319, 34.378807, 20.861420>,  <30.423923, 33.894753, 21.236582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714319, 34.378807, 20.861420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965502, 34.069530, 20.825975>,  <31.116211, 33.883965, 20.804708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965502, 34.069530, 20.825975>,  <30.714319, 34.378807, 20.861420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965502, 34.069530, 20.825975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022983, 0.095385, -0.995175,
		0.777910, 0.626962, 0.042128,
		0.627955, -0.773189, -0.088610,
		31.153889, 33.837574, 20.799393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220680, 34.502552, 20.434633>,  <30.714319, 34.378807, 20.861420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220680, 34.502552, 20.434633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208908, 34.104301, 20.399157>,  <31.201845, 33.865353, 20.377871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208908, 34.104301, 20.399157>,  <31.220680, 34.502552, 20.434633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208908, 34.104301, 20.399157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095947, 0.091132, -0.991206,
		0.994951, -0.020660, -0.098210,
		-0.029429, -0.995625, -0.088689,
		31.200079, 33.805614, 20.372549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645233, 34.424824, 19.919338>,  <31.220680, 34.502552, 20.434633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645233, 34.424824, 19.919338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445215, 34.079750, 19.949627>,  <31.325205, 33.872707, 19.967800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445215, 34.079750, 19.949627>,  <31.645233, 34.424824, 19.919338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445215, 34.079750, 19.949627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288724, 0.083642, -0.953752,
		0.816453, -0.498780, -0.290902,
		-0.500043, -0.862684, 0.075720,
		31.295202, 33.820946, 19.972343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852623, 34.033009, 19.376764>,  <31.645233, 34.424824, 19.919338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852623, 34.033009, 19.376764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491173, 33.909550, 19.495558>,  <31.274303, 33.835476, 19.566833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491173, 33.909550, 19.495558>,  <31.852623, 34.033009, 19.376764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491173, 33.909550, 19.495558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331800, 0.065922, -0.941043,
		0.270875, -0.948889, -0.161979,
		-0.903623, -0.308650, 0.296985,
		31.220085, 33.816956, 19.584654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583416, 33.638607, 18.822186>,  <31.852623, 34.033009, 19.376764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583416, 33.638607, 18.822186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257618, 33.733215, 19.034094>,  <31.062140, 33.789978, 19.161240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257618, 33.733215, 19.034094>,  <31.583416, 33.638607, 18.822186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257618, 33.733215, 19.034094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554533, -0.048922, -0.830723,
		-0.170564, -0.970394, 0.171004,
		-0.814494, 0.236519, 0.529771,
		31.013269, 33.804173, 19.193026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031355, 33.154411, 18.726460>,  <31.583416, 33.638607, 18.822186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031355, 33.154411, 18.726460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859531, 33.502556, 18.822744>,  <30.756437, 33.711445, 18.880516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859531, 33.502556, 18.822744>,  <31.031355, 33.154411, 18.726460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859531, 33.502556, 18.822744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466300, 0.014487, -0.884508,
		-0.773332, -0.492194, 0.399628,
		-0.429560, 0.870365, 0.240713,
		30.730663, 33.763664, 18.894958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415455, 33.177204, 18.322523>,  <31.031355, 33.154411, 18.726460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415455, 33.177204, 18.322523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418886, 33.552746, 18.460203>,  <30.420944, 33.778072, 18.542810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418886, 33.552746, 18.460203>,  <30.415455, 33.177204, 18.322523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418886, 33.552746, 18.460203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515728, 0.299055, -0.802864,
		-0.856710, -0.170626, 0.486760,
		0.008578, 0.938857, 0.344199,
		30.421459, 33.834404, 18.563463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771873, 33.424641, 18.063080>,  <30.415455, 33.177204, 18.322523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771873, 33.424641, 18.063080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975546, 33.759941, 18.141125>,  <30.097750, 33.961121, 18.187952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975546, 33.759941, 18.141125>,  <29.771873, 33.424641, 18.063080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975546, 33.759941, 18.141125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465447, 0.458884, -0.756825,
		-0.723943, 0.294547, 0.623818,
		0.509181, 0.838252, 0.195110,
		30.128300, 34.011417, 18.199657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284945, 33.942616, 17.846054>,  <29.771873, 33.424641, 18.063080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284945, 33.942616, 17.846054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652739, 34.099312, 17.832893>,  <29.873415, 34.193329, 17.824997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652739, 34.099312, 17.832893>,  <29.284945, 33.942616, 17.846054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652739, 34.099312, 17.832893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217787, 0.437927, -0.872232,
		-0.327281, 0.809172, 0.487984,
		0.919487, 0.391742, -0.032901,
		29.928585, 34.216835, 17.823023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309023, 34.637123, 17.539566>,  <29.284945, 33.942616, 17.846054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309023, 34.637123, 17.539566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668432, 34.480534, 17.460163>,  <29.884077, 34.386581, 17.412521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668432, 34.480534, 17.460163>,  <29.309023, 34.637123, 17.539566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668432, 34.480534, 17.460163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017569, 0.419817, -0.907439,
		0.438576, 0.818842, 0.370337,
		0.898522, -0.391474, -0.198507,
		29.937988, 34.363091, 17.400610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666813, 35.322132, 17.654224>,  <29.309023, 34.637123, 17.539566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666813, 35.322132, 17.654224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838972, 35.652252, 17.507996>,  <29.942268, 35.850323, 17.420258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838972, 35.652252, 17.507996>,  <29.666813, 35.322132, 17.654224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838972, 35.652252, 17.507996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539940, -0.089160, -0.836968,
		-0.723341, 0.557618, 0.407235,
		0.430399, 0.825296, -0.365573,
		29.968092, 35.899841, 17.398323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032854, 35.736290, 17.412100>,  <29.666813, 35.322132, 17.654224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032854, 35.736290, 17.412100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382526, 35.823799, 17.238689>,  <29.592331, 35.876305, 17.134644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382526, 35.823799, 17.238689>,  <29.032854, 35.736290, 17.412100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382526, 35.823799, 17.238689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390621, -0.213556, -0.895438,
		-0.288480, 0.952120, -0.101230,
		0.874182, 0.218773, -0.433524,
		29.644781, 35.889431, 17.108633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060545, 36.409801, 17.019072>,  <29.032854, 35.736290, 17.412100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060545, 36.409801, 17.019072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284323, 36.110649, 16.876133>,  <29.418591, 35.931156, 16.790371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284323, 36.110649, 16.876133>,  <29.060545, 36.409801, 17.019072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284323, 36.110649, 16.876133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579946, -0.045173, -0.813401,
		0.592185, 0.662294, -0.459002,
		0.559446, -0.747881, -0.357344,
		29.452156, 35.886284, 16.768930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528852, 36.564518, 16.379070>,  <29.060545, 36.409801, 17.019072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528852, 36.564518, 16.379070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363493, 36.202328, 16.417482>,  <29.264277, 35.985016, 16.440529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363493, 36.202328, 16.417482>,  <29.528852, 36.564518, 16.379070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363493, 36.202328, 16.417482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633065, 0.210013, -0.745066,
		0.654470, -0.368801, -0.660041,
		-0.413399, -0.905472, 0.096028,
		29.239473, 35.930687, 16.446291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470659, 36.332417, 15.697000>,  <29.528852, 36.564518, 16.379070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470659, 36.332417, 15.697000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214279, 36.114700, 15.913492>,  <29.060452, 35.984070, 16.043388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214279, 36.114700, 15.913492>,  <29.470659, 36.332417, 15.697000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214279, 36.114700, 15.913492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757456, 0.334332, -0.560787,
		0.124280, -0.769396, -0.626566,
		-0.640949, -0.544290, 0.541233,
		29.021996, 35.951412, 16.075863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228640, 36.280476, 15.724576>,  <29.470659, 36.332417, 15.697000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228640, 36.280476, 15.724576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953379, 36.565426, 15.669494>,  <29.788223, 36.736397, 15.636444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953379, 36.565426, 15.669494>,  <30.228640, 36.280476, 15.724576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953379, 36.565426, 15.669494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722235, 0.690709, -0.036014,
		0.069459, -0.124240, -0.989818,
		-0.688151, 0.712380, -0.137707,
		29.746933, 36.779140, 15.628181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700972, 35.745239, 16.232618>,  <30.228640, 36.280476, 15.724576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700972, 35.745239, 16.232618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314203, 35.804760, 16.315491>,  <30.082142, 35.840473, 16.365213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314203, 35.804760, 16.315491>,  <30.700972, 35.745239, 16.232618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314203, 35.804760, 16.315491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254919, 0.534757, 0.805637,
		0.009091, 0.831801, -0.555000,
		-0.966920, 0.148804, 0.207181,
		30.024128, 35.849400, 16.377645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712994, 36.408184, 16.495619>,  <30.700972, 35.745239, 16.232618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712994, 36.408184, 16.495619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419476, 36.201385, 16.671921>,  <30.243364, 36.077309, 16.777702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419476, 36.201385, 16.671921>,  <30.712994, 36.408184, 16.495619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419476, 36.201385, 16.671921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102527, 0.557063, 0.824117,
		-0.671591, 0.649921, -0.355764,
		-0.733794, -0.516994, 0.440753,
		30.199337, 36.046288, 16.804148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435780, 36.942791, 16.892941>,  <30.712994, 36.408184, 16.495619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435780, 36.942791, 16.892941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276943, 36.608799, 17.045321>,  <30.181643, 36.408401, 17.136749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276943, 36.608799, 17.045321>,  <30.435780, 36.942791, 16.892941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276943, 36.608799, 17.045321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162416, 0.344594, 0.924595,
		-0.903295, 0.429019, -0.001219,
		-0.397089, -0.834984, 0.380950,
		30.157816, 36.358303, 17.159605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017660, 37.186234, 17.340117>,  <30.435780, 36.942791, 16.892941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017660, 37.186234, 17.340117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118977, 36.808533, 17.424242>,  <30.179768, 36.581913, 17.474718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118977, 36.808533, 17.424242>,  <30.017660, 37.186234, 17.340117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118977, 36.808533, 17.424242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293371, 0.282142, 0.913416,
		-0.921833, -0.169661, 0.348480,
		0.253292, -0.944251, 0.210314,
		30.194963, 36.525257, 17.487337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787912, 37.048637, 18.022478>,  <30.017660, 37.186234, 17.340117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787912, 37.048637, 18.022478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061495, 36.762268, 17.966391>,  <30.225645, 36.590446, 17.932737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061495, 36.762268, 17.966391>,  <29.787912, 37.048637, 18.022478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061495, 36.762268, 17.966391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408649, 0.216759, 0.886578,
		-0.604326, -0.663681, 0.440814,
		0.683956, -0.715921, -0.140220,
		30.266682, 36.547493, 17.924324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895683, 36.702908, 18.702368>,  <29.787912, 37.048637, 18.022478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895683, 36.702908, 18.702368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207632, 36.579258, 18.484653>,  <30.394800, 36.505070, 18.354025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207632, 36.579258, 18.484653>,  <29.895683, 36.702908, 18.702368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207632, 36.579258, 18.484653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605487, 0.152085, 0.781189,
		-0.158706, -0.938783, 0.305777,
		0.779870, -0.309124, -0.544284,
		30.441593, 36.486523, 18.321369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247580, 36.235825, 19.060183>,  <29.895683, 36.702908, 18.702368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247580, 36.235825, 19.060183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528574, 36.356270, 18.802240>,  <30.697170, 36.428535, 18.647474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528574, 36.356270, 18.802240>,  <30.247580, 36.235825, 19.060183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528574, 36.356270, 18.802240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659773, 0.064206, 0.748717,
		0.266852, -0.951425, -0.153562,
		0.702488, 0.301112, -0.644858,
		30.739321, 36.446602, 18.608784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845503, 35.829742, 19.163925>,  <30.247580, 36.235825, 19.060183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845503, 35.829742, 19.163925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963211, 36.180733, 19.012432>,  <31.033836, 36.391327, 18.921535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963211, 36.180733, 19.012432>,  <30.845503, 35.829742, 19.163925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963211, 36.180733, 19.012432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617978, 0.127590, 0.775773,
		0.729046, -0.462337, -0.504715,
		0.294271, 0.877477, -0.378733,
		31.051493, 36.443977, 18.898811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471825, 35.834644, 19.310200>,  <30.845503, 35.829742, 19.163925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471825, 35.834644, 19.310200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444342, 36.223392, 19.220085>,  <31.427853, 36.456642, 19.166016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444342, 36.223392, 19.220085>,  <31.471825, 35.834644, 19.310200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444342, 36.223392, 19.220085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729448, 0.202992, 0.653223,
		0.680577, -0.119456, -0.722873,
		-0.068705, 0.971866, -0.225289,
		31.423731, 36.514954, 19.152498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213253, 36.113762, 19.293272>,  <31.471825, 35.834644, 19.310200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213253, 36.113762, 19.293272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950722, 36.412510, 19.336020>,  <31.793203, 36.591759, 19.361668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950722, 36.412510, 19.336020>,  <32.213253, 36.113762, 19.293272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950722, 36.412510, 19.336020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537529, 0.363490, 0.760880,
		0.529435, 0.556827, -0.640033,
		-0.656324, 0.746872, 0.106867,
		31.753824, 36.636570, 19.368080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597092, 36.776550, 19.220589>,  <32.213253, 36.113762, 19.293272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597092, 36.776550, 19.220589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266579, 36.815361, 19.442520>,  <32.068272, 36.838646, 19.575680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266579, 36.815361, 19.442520>,  <32.597092, 36.776550, 19.220589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266579, 36.815361, 19.442520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559350, 0.257069, 0.788063,
		-0.066167, 0.961510, -0.266685,
		-0.826286, 0.097026, 0.554831,
		32.018692, 36.844467, 19.608969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794842, 37.179409, 19.734598>,  <32.597092, 36.776550, 19.220589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794842, 37.179409, 19.734598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430103, 37.083588, 19.867956>,  <32.211262, 37.026093, 19.947971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430103, 37.083588, 19.867956>,  <32.794842, 37.179409, 19.734598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430103, 37.083588, 19.867956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282239, 0.223944, 0.932840,
		-0.298129, 0.944702, -0.136590,
		-0.911844, -0.239556, 0.333396,
		32.156551, 37.011723, 19.967976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540924, 37.828819, 20.083950>,  <32.794842, 37.179409, 19.734598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540924, 37.828819, 20.083950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370647, 37.493725, 20.220760>,  <32.268482, 37.292667, 20.302847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370647, 37.493725, 20.220760>,  <32.540924, 37.828819, 20.083950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370647, 37.493725, 20.220760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314420, 0.217487, 0.924034,
		-0.848486, 0.500890, 0.170820,
		-0.425689, -0.837740, 0.342025,
		32.242939, 37.242401, 20.323368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393143, 38.041813, 20.704407>,  <32.540924, 37.828819, 20.083950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393143, 38.041813, 20.704407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327988, 37.652863, 20.771294>,  <32.288895, 37.419495, 20.811426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327988, 37.652863, 20.771294>,  <32.393143, 38.041813, 20.704407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327988, 37.652863, 20.771294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194219, 0.134567, 0.971685,
		-0.967340, 0.190750, 0.166934,
		-0.162885, -0.972371, 0.167219,
		32.279121, 37.361153, 20.821459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933102, 37.966888, 21.198708>,  <32.393143, 38.041813, 20.704407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933102, 37.966888, 21.198708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104160, 37.605694, 21.215395>,  <32.206795, 37.388977, 21.225407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104160, 37.605694, 21.215395>,  <31.933102, 37.966888, 21.198708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104160, 37.605694, 21.215395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187862, 0.133924, 0.973022,
		-0.884209, -0.408273, 0.226909,
		0.427647, -0.902982, 0.041718,
		32.232456, 37.334801, 21.227911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729437, 37.666840, 21.825989>,  <31.933102, 37.966888, 21.198708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729437, 37.666840, 21.825989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037315, 37.436333, 21.716095>,  <32.222042, 37.298027, 21.650158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037315, 37.436333, 21.716095>,  <31.729437, 37.666840, 21.825989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037315, 37.436333, 21.716095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314759, -0.031850, 0.948637,
		-0.555422, -0.816638, 0.156872,
		0.769697, -0.576271, -0.274734,
		32.268223, 37.263451, 21.633675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691055, 37.013718, 22.225222>,  <31.729437, 37.666840, 21.825989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691055, 37.013718, 22.225222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062794, 37.103504, 22.107967>,  <32.285839, 37.157375, 22.037615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062794, 37.103504, 22.107967>,  <31.691055, 37.013718, 22.225222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062794, 37.103504, 22.107967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317559, -0.080976, 0.944775,
		0.188332, -0.971112, -0.146536,
		0.929348, 0.224465, -0.293135,
		32.341599, 37.170845, 22.020027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055229, 36.409565, 22.414843>,  <31.691055, 37.013718, 22.225222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055229, 36.409565, 22.414843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333866, 36.686653, 22.340118>,  <32.501049, 36.852905, 22.295284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333866, 36.686653, 22.340118>,  <32.055229, 36.409565, 22.414843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333866, 36.686653, 22.340118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433802, -0.199261, 0.878698,
		0.571467, -0.693134, -0.439307,
		0.696593, 0.692719, -0.186811,
		32.542843, 36.894470, 22.284075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686108, 36.083397, 22.612686>,  <32.055229, 36.409565, 22.414843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686108, 36.083397, 22.612686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773964, 36.471638, 22.652058>,  <32.826679, 36.704582, 22.675680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773964, 36.471638, 22.652058>,  <32.686108, 36.083397, 22.612686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773964, 36.471638, 22.652058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366949, -0.175680, 0.913502,
		0.903939, -0.164527, -0.394748,
		0.219645, 0.970602, 0.098431,
		32.839859, 36.762817, 22.681587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275860, 36.032997, 22.949297>,  <32.686108, 36.083397, 22.612686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275860, 36.032997, 22.949297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153973, 36.410587, 22.999992>,  <33.080841, 36.637142, 23.030409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153973, 36.410587, 22.999992>,  <33.275860, 36.032997, 22.949297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153973, 36.410587, 22.999992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244532, -0.051067, 0.968296,
		0.920518, 0.326046, -0.215270,
		-0.304716, 0.943973, 0.126737,
		33.062557, 36.693779, 23.038013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717838, 36.430641, 23.468710>,  <33.275860, 36.032997, 22.949297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717838, 36.430641, 23.468710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370903, 36.629219, 23.454416>,  <33.162743, 36.748363, 23.445841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370903, 36.629219, 23.454416>,  <33.717838, 36.430641, 23.468710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370903, 36.629219, 23.454416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014890, 0.045883, 0.998836,
		0.497502, 0.866857, -0.032404,
		-0.867335, 0.496441, -0.035734,
		33.110703, 36.778152, 23.443695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789471, 37.098709, 23.742712>,  <33.717838, 36.430641, 23.468710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789471, 37.098709, 23.742712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400764, 37.014931, 23.786177>,  <33.167542, 36.964664, 23.812256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400764, 37.014931, 23.786177>,  <33.789471, 37.098709, 23.742712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400764, 37.014931, 23.786177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039541, 0.309452, 0.950092,
		-0.232620, 0.927562, -0.292433,
		-0.971763, -0.209448, 0.108661,
		33.109234, 36.952095, 23.818775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612122, 37.593655, 24.141674>,  <33.789471, 37.098709, 23.742712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612122, 37.593655, 24.141674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312820, 37.332970, 24.191298>,  <33.133240, 37.176559, 24.221071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312820, 37.332970, 24.191298>,  <33.612122, 37.593655, 24.141674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312820, 37.332970, 24.191298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019411, 0.208427, 0.977845,
		-0.663134, 0.729264, -0.168606,
		-0.748249, -0.651716, 0.124059,
		33.088345, 37.137455, 24.228516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166111, 37.963486, 24.586943>,  <33.612122, 37.593655, 24.141674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166111, 37.963486, 24.586943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093689, 37.570210, 24.596333>,  <33.050236, 37.334244, 24.601967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093689, 37.570210, 24.596333>,  <33.166111, 37.963486, 24.586943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093689, 37.570210, 24.596333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027825, 0.028980, 0.999193,
		-0.983080, 0.180253, -0.032604,
		-0.181052, -0.983193, 0.023474,
		33.039371, 37.275253, 24.603374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608215, 37.949661, 25.018812>,  <33.166111, 37.963486, 24.586943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608215, 37.949661, 25.018812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751808, 37.576530, 25.031235>,  <32.837963, 37.352650, 25.038689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751808, 37.576530, 25.031235>,  <32.608215, 37.949661, 25.018812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751808, 37.576530, 25.031235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060381, 0.056415, 0.996580,
		-0.931391, -0.355874, 0.076577,
		0.358977, -0.932829, 0.031056,
		32.859501, 37.296680, 25.040552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114433, 37.524044, 25.426495>,  <32.608215, 37.949661, 25.018812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114433, 37.524044, 25.426495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488869, 37.383339, 25.427698>,  <32.713528, 37.298916, 25.428421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488869, 37.383339, 25.427698>,  <32.114433, 37.524044, 25.426495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488869, 37.383339, 25.427698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039758, -0.097297, 0.994461,
		-0.349519, -0.931020, -0.105063,
		0.936085, -0.351759, 0.003008,
		32.769695, 37.277813, 25.428600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208309, 37.307793, 26.066343>,  <32.114433, 37.524044, 25.426495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208309, 37.307793, 26.066343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593605, 37.262619, 25.968842>,  <32.824783, 37.235516, 25.910341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593605, 37.262619, 25.968842>,  <32.208309, 37.307793, 26.066343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593605, 37.262619, 25.968842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244479, -0.007583, 0.969625,
		-0.111352, -0.993573, 0.020305,
		0.963240, -0.112934, -0.243753,
		32.882576, 37.228741, 25.895716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394787, 36.738407, 26.503750>,  <32.208309, 37.307793, 26.066343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394787, 36.738407, 26.503750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730484, 36.923149, 26.388958>,  <32.931904, 37.033993, 26.320084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730484, 36.923149, 26.388958>,  <32.394787, 36.738407, 26.503750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730484, 36.923149, 26.388958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313572, 0.020096, 0.949352,
		0.444229, -0.886728, -0.127959,
		0.839246, 0.461854, -0.286980,
		32.982258, 37.061707, 26.302864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849693, 36.447079, 26.933935>,  <32.394787, 36.738407, 26.503750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849693, 36.447079, 26.933935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013401, 36.792847, 26.817129>,  <33.111626, 37.000309, 26.747046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013401, 36.792847, 26.817129>,  <32.849693, 36.447079, 26.933935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013401, 36.792847, 26.817129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219394, 0.217420, 0.951102,
		0.885642, -0.453326, -0.100665,
		0.409272, 0.864421, -0.292014,
		33.136181, 37.052174, 26.729525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504398, 36.650391, 27.273888>,  <32.849693, 36.447079, 26.933935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504398, 36.650391, 27.273888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337990, 36.994278, 27.155365>,  <33.238144, 37.200611, 27.084251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337990, 36.994278, 27.155365>,  <33.504398, 36.650391, 27.273888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337990, 36.994278, 27.155365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127280, 0.377690, 0.917142,
		0.900401, 0.343841, -0.266555,
		-0.416026, 0.859723, -0.296308,
		33.213181, 37.252193, 27.066473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005867, 37.098492, 27.390135>,  <33.504398, 36.650391, 27.273888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005867, 37.098492, 27.390135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661022, 37.300861, 27.378744>,  <33.454117, 37.422283, 27.371910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661022, 37.300861, 27.378744>,  <34.005867, 37.098492, 27.390135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661022, 37.300861, 27.378744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217123, 0.419595, 0.881361,
		0.457850, 0.753646, -0.471584,
		-0.862108, 0.505923, -0.028478,
		33.402390, 37.452637, 27.370201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220291, 37.709339, 27.499998>,  <34.005867, 37.098492, 27.390135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220291, 37.709339, 27.499998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837822, 37.691532, 27.615753>,  <33.608341, 37.680847, 27.685205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837822, 37.691532, 27.615753>,  <34.220291, 37.709339, 27.499998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837822, 37.691532, 27.615753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229747, 0.498613, 0.835824,
		-0.181501, 0.865681, -0.466534,
		-0.956177, -0.044518, 0.289386,
		33.550968, 37.678177, 27.702570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107880, 38.352985, 27.879679>,  <34.220291, 37.709339, 27.499998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107880, 38.352985, 27.879679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780746, 38.143024, 27.974018>,  <33.584465, 38.017048, 28.030622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780746, 38.143024, 27.974018>,  <34.107880, 38.352985, 27.879679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780746, 38.143024, 27.974018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022654, 0.438899, 0.898251,
		-0.575007, 0.729278, -0.370838,
		-0.817835, -0.524902, 0.235849,
		33.535397, 37.985554, 28.044773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637161, 38.879055, 28.190454>,  <34.107880, 38.352985, 27.879679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637161, 38.879055, 28.190454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513653, 38.517990, 28.310358>,  <33.439548, 38.301350, 28.382301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513653, 38.517990, 28.310358>,  <33.637161, 38.879055, 28.190454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513653, 38.517990, 28.310358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081147, 0.339011, 0.937276,
		-0.947669, 0.265078, -0.177925,
		-0.308770, -0.902666, 0.299760,
		33.421021, 38.247189, 28.400286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119740, 39.019836, 28.664976>,  <33.637161, 38.879055, 28.190454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119740, 39.019836, 28.664976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211311, 38.637821, 28.740341>,  <33.266254, 38.408611, 28.785561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211311, 38.637821, 28.740341>,  <33.119740, 39.019836, 28.664976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211311, 38.637821, 28.740341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246198, 0.130458, 0.960399,
		-0.941795, -0.266251, -0.205262,
		0.228929, -0.955035, 0.188415,
		33.279991, 38.351311, 28.796865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586029, 38.828167, 29.163565>,  <33.119740, 39.019836, 28.664976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586029, 38.828167, 29.163565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906036, 38.588863, 29.181705>,  <33.098042, 38.445282, 29.192591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906036, 38.588863, 29.181705>,  <32.586029, 38.828167, 29.163565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906036, 38.588863, 29.181705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012479, 0.058983, 0.998181,
		-0.599847, -0.799128, 0.039722,
		0.800017, -0.598260, 0.045353,
		33.146042, 38.409386, 29.195311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432705, 38.194592, 29.508558>,  <32.586029, 38.828167, 29.163565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432705, 38.194592, 29.508558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826782, 38.255356, 29.540342>,  <33.063229, 38.291813, 29.559414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826782, 38.255356, 29.540342>,  <32.432705, 38.194592, 29.508558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826782, 38.255356, 29.540342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086518, 0.040409, 0.995430,
		0.148007, -0.987568, 0.052954,
		0.985195, 0.151913, 0.079462,
		33.122341, 38.300930, 29.564180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626659, 37.857479, 30.187569>,  <32.432705, 38.194592, 29.508558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626659, 37.857479, 30.187569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962849, 38.060513, 30.111713>,  <33.164562, 38.182331, 30.066200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962849, 38.060513, 30.111713>,  <32.626659, 37.857479, 30.187569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962849, 38.060513, 30.111713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083351, 0.224703, 0.970856,
		0.535399, -0.831788, 0.146550,
		0.840476, 0.507581, -0.189636,
		33.214993, 38.212788, 30.054823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010361, 37.762356, 30.762972>,  <32.626659, 37.857479, 30.187569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010361, 37.762356, 30.762972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191433, 38.069466, 30.581598>,  <33.300076, 38.253731, 30.472775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191433, 38.069466, 30.581598>,  <33.010361, 37.762356, 30.762972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191433, 38.069466, 30.581598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114187, 0.454417, 0.883440,
		0.884329, -0.451696, 0.118037,
		0.452685, 0.767774, -0.453432,
		33.327240, 38.299797, 30.445568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752747, 37.822758, 31.009115>,  <33.010361, 37.762356, 30.762972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752747, 37.822758, 31.009115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655357, 38.184364, 30.868563>,  <33.596924, 38.401329, 30.784231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655357, 38.184364, 30.868563>,  <33.752747, 37.822758, 31.009115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655357, 38.184364, 30.868563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278347, 0.412171, 0.867547,
		0.929110, 0.113418, -0.351983,
		-0.243473, 0.904020, -0.351383,
		33.582317, 38.455570, 30.763147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274258, 38.172810, 31.189598>,  <33.752747, 37.822758, 31.009115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274258, 38.172810, 31.189598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965805, 38.423515, 31.144829>,  <33.780735, 38.573940, 31.117968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965805, 38.423515, 31.144829>,  <34.274258, 38.172810, 31.189598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965805, 38.423515, 31.144829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163055, 0.364343, 0.916879,
		0.615448, 0.688780, -0.383153,
		-0.771127, 0.626766, -0.111925,
		33.734467, 38.611546, 31.111252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557728, 38.913853, 31.163908>,  <34.274258, 38.172810, 31.189598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557728, 38.913853, 31.163908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175514, 38.941776, 31.278503>,  <33.946186, 38.958530, 31.347261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175514, 38.941776, 31.278503>,  <34.557728, 38.913853, 31.163908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175514, 38.941776, 31.278503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292438, 0.348975, 0.890335,
		-0.037822, 0.934528, -0.353874,
		-0.955536, 0.069812, 0.286490,
		33.888855, 38.962719, 31.364450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797016, 39.589745, 30.896681>,  <34.557728, 38.913853, 31.163908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797016, 39.589745, 30.896681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191174, 39.524742, 30.917007>,  <35.427670, 39.485741, 30.929203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191174, 39.524742, 30.917007>,  <34.797016, 39.589745, 30.896681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191174, 39.524742, 30.917007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091735, 0.255275, -0.962507,
		0.143443, 0.953114, 0.266455,
		0.985398, -0.162508, 0.050817,
		35.486794, 39.475990, 30.932253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162888, 40.155960, 30.545527>,  <34.797016, 39.589745, 30.896681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162888, 40.155960, 30.545527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435211, 39.862988, 30.542618>,  <35.598606, 39.687206, 30.540873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435211, 39.862988, 30.542618>,  <35.162888, 40.155960, 30.545527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435211, 39.862988, 30.542618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166682, 0.164586, -0.972177,
		0.713245, 0.660653, 0.234133,
		0.680807, -0.732427, -0.007271,
		35.639454, 39.643261, 30.540436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628422, 40.426514, 30.086758>,  <35.162888, 40.155960, 30.545527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628422, 40.426514, 30.086758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713230, 40.035709, 30.095587>,  <35.764114, 39.801228, 30.100883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713230, 40.035709, 30.095587>,  <35.628422, 40.426514, 30.086758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713230, 40.035709, 30.095587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058757, -0.009799, -0.998224,
		0.975497, 0.212944, 0.055329,
		0.212024, -0.977015, 0.022071,
		35.776836, 39.742603, 30.102209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197769, 40.371353, 29.625435>,  <35.628422, 40.426514, 30.086758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197769, 40.371353, 29.625435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043400, 40.002895, 29.645664>,  <35.950779, 39.781822, 29.657803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043400, 40.002895, 29.645664>,  <36.197769, 40.371353, 29.625435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043400, 40.002895, 29.645664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050271, -0.075738, -0.995860,
		0.921159, -0.381786, 0.075536,
		-0.385926, -0.921142, 0.050574,
		35.927624, 39.726551, 29.660837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613651, 39.918167, 29.237480>,  <36.197769, 40.371353, 29.625435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613651, 39.918167, 29.237480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261364, 39.728710, 29.237383>,  <36.049992, 39.615036, 29.237324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261364, 39.728710, 29.237383>,  <36.613651, 39.918167, 29.237480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261364, 39.728710, 29.237383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090851, -0.168427, -0.981518,
		0.464848, -0.864462, 0.191368,
		-0.880717, -0.473643, -0.000244,
		35.997150, 39.586617, 29.237310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706314, 39.352520, 28.835264>,  <36.613651, 39.918167, 29.237480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706314, 39.352520, 28.835264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308960, 39.398346, 28.838436>,  <36.070549, 39.425842, 28.840340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308960, 39.398346, 28.838436>,  <36.706314, 39.352520, 28.835264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308960, 39.398346, 28.838436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003663, 0.037391, -0.999294,
		-0.114784, -0.992711, -0.036724,
		-0.993384, 0.114569, 0.007928,
		36.010944, 39.432716, 28.840815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587624, 38.998428, 28.265614>,  <36.706314, 39.352520, 28.835264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587624, 38.998428, 28.265614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238415, 39.187153, 28.314962>,  <36.028889, 39.300388, 28.344572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238415, 39.187153, 28.314962>,  <36.587624, 38.998428, 28.265614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238415, 39.187153, 28.314962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157596, -0.033541, -0.986934,
		-0.461512, -0.881059, 0.103638,
		-0.873023, 0.471815, 0.123372,
		35.976509, 39.328697, 28.351974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134876, 38.673439, 27.764601>,  <36.587624, 38.998428, 28.265614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134876, 38.673439, 27.764601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945042, 39.012466, 27.859589>,  <35.831139, 39.215881, 27.916582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945042, 39.012466, 27.859589>,  <36.134876, 38.673439, 27.764601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945042, 39.012466, 27.859589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278868, 0.111107, -0.953880,
		-0.834864, -0.518925, 0.183630,
		-0.474589, 0.847568, 0.237471,
		35.802666, 39.266739, 27.930830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404293, 38.673344, 27.397175>,  <36.134876, 38.673439, 27.764601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404293, 38.673344, 27.397175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490810, 39.056953, 27.470369>,  <35.542721, 39.287121, 27.514286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490810, 39.056953, 27.470369>,  <35.404293, 38.673344, 27.397175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490810, 39.056953, 27.470369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262980, 0.237727, -0.935055,
		-0.940243, 0.154127, 0.303625,
		0.216297, 0.959026, 0.182988,
		35.555698, 39.344662, 27.525267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877937, 39.122353, 27.136942>,  <35.404293, 38.673344, 27.397175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877937, 39.122353, 27.136942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189384, 39.371979, 27.163151>,  <35.376251, 39.521755, 27.178875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189384, 39.371979, 27.163151>,  <34.877937, 39.122353, 27.136942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189384, 39.371979, 27.163151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169734, 0.309983, -0.935468,
		-0.604107, 0.717251, 0.347284,
		0.778618, 0.624068, 0.065521,
		35.422970, 39.559200, 27.182808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728622, 39.805759, 26.916246>,  <34.877937, 39.122353, 27.136942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728622, 39.805759, 26.916246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127914, 39.790039, 26.898420>,  <35.367489, 39.780605, 26.887724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127914, 39.790039, 26.898420>,  <34.728622, 39.805759, 26.916246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127914, 39.790039, 26.898420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034220, 0.232926, -0.971892,
		0.048581, 0.971700, 0.231169,
		0.998233, -0.039305, -0.044568,
		35.427383, 39.778248, 26.885050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909313, 40.270756, 26.430775>,  <34.728622, 39.805759, 26.916246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909313, 40.270756, 26.430775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234993, 40.039257, 26.449266>,  <35.430401, 39.900356, 26.460361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234993, 40.039257, 26.449266>,  <34.909313, 40.270756, 26.430775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234993, 40.039257, 26.449266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057994, 0.001841, -0.998315,
		0.577688, 0.815504, 0.035063,
		0.814195, -0.578748, 0.046231,
		35.479252, 39.865631, 26.463135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477936, 40.504723, 25.946299>,  <34.909313, 40.270756, 26.430775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477936, 40.504723, 25.946299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631210, 40.141075, 26.011631>,  <35.723175, 39.922886, 26.050831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631210, 40.141075, 26.011631>,  <35.477936, 40.504723, 25.946299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631210, 40.141075, 26.011631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118388, -0.127031, -0.984808,
		0.916052, 0.396703, 0.058952,
		0.383187, -0.909115, 0.163332,
		35.746166, 39.868340, 26.060631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899284, 40.492126, 25.418598>,  <35.477936, 40.504723, 25.946299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899284, 40.492126, 25.418598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791683, 40.124500, 25.533804>,  <35.727123, 39.903923, 25.602926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791683, 40.124500, 25.533804>,  <35.899284, 40.492126, 25.418598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791683, 40.124500, 25.533804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145293, -0.256891, -0.955457,
		0.952117, -0.298867, -0.064429,
		-0.269003, -0.919068, 0.288013,
		35.710983, 39.848782, 25.620209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256962, 40.077656, 24.951006>,  <35.899284, 40.492126, 25.418598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256962, 40.077656, 24.951006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981567, 39.828758, 25.100029>,  <35.816330, 39.679420, 25.189444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981567, 39.828758, 25.100029>,  <36.256962, 40.077656, 24.951006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981567, 39.828758, 25.100029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147586, -0.382743, -0.911990,
		0.710077, -0.682874, 0.171678,
		-0.688483, -0.622246, 0.372560,
		35.775021, 39.642086, 25.211798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353680, 39.555096, 24.608011>,  <36.256962, 40.077656, 24.951006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353680, 39.555096, 24.608011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992409, 39.457581, 24.749340>,  <35.775646, 39.399071, 24.834137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992409, 39.457581, 24.749340>,  <36.353680, 39.555096, 24.608011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992409, 39.457581, 24.749340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275554, -0.301854, -0.912663,
		0.329144, -0.921658, 0.205453,
		-0.903180, -0.243784, 0.353320,
		35.721455, 39.384445, 24.855335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189648, 38.908478, 24.324417>,  <36.353680, 39.555096, 24.608011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189648, 38.908478, 24.324417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823505, 39.035141, 24.423893>,  <35.603821, 39.111137, 24.483578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823505, 39.035141, 24.423893>,  <36.189648, 38.908478, 24.324417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823505, 39.035141, 24.423893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360885, -0.371346, -0.855491,
		-0.178547, -0.872829, 0.454192,
		-0.915359, 0.316657, 0.248688,
		35.548897, 39.130138, 24.498499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713139, 38.371078, 24.277954>,  <36.189648, 38.908478, 24.324417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713139, 38.371078, 24.277954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478584, 38.693676, 24.247705>,  <35.337852, 38.887234, 24.229557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478584, 38.693676, 24.247705>,  <35.713139, 38.371078, 24.277954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478584, 38.693676, 24.247705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432305, -0.390531, -0.812771,
		-0.685028, -0.443906, 0.577654,
		-0.586386, 0.806494, -0.075622,
		35.302670, 38.935623, 24.225019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152576, 38.127773, 24.553967>,  <35.713139, 38.371078, 24.277954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152576, 38.127773, 24.553967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128807, 38.390053, 24.252895>,  <35.114544, 38.547421, 24.072252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128807, 38.390053, 24.252895>,  <35.152576, 38.127773, 24.553967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128807, 38.390053, 24.252895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341970, -0.721759, -0.601764,
		-0.937830, 0.221633, 0.267122,
		-0.059427, 0.655700, -0.752679,
		35.110977, 38.586761, 24.027092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651150, 37.888985, 23.983177>,  <35.152576, 38.127773, 24.553967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651150, 37.888985, 23.983177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710175, 38.218281, 23.763908>,  <34.745590, 38.415859, 23.632347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710175, 38.218281, 23.763908>,  <34.651150, 37.888985, 23.983177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710175, 38.218281, 23.763908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262906, -0.501654, -0.824150,
		-0.953471, 0.265728, 0.142413,
		0.147558, 0.823245, -0.548174,
		34.754440, 38.465256, 23.599457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186325, 37.746990, 23.446043>,  <34.651150, 37.888985, 23.983177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186325, 37.746990, 23.446043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413094, 38.048058, 23.312122>,  <34.549152, 38.228699, 23.231770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413094, 38.048058, 23.312122>,  <34.186325, 37.746990, 23.446043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413094, 38.048058, 23.312122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099243, -0.341062, -0.934787,
		-0.817775, 0.563173, -0.118657,
		0.566917, 0.752670, -0.334803,
		34.583168, 38.273857, 23.211681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873318, 38.036636, 22.876047>,  <34.186325, 37.746990, 23.446043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873318, 38.036636, 22.876047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261639, 38.123547, 22.835386>,  <34.494633, 38.175694, 22.810989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261639, 38.123547, 22.835386>,  <33.873318, 38.036636, 22.876047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261639, 38.123547, 22.835386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007688, -0.395360, -0.918494,
		-0.239754, 0.892458, -0.382147,
		0.970803, 0.217275, -0.101650,
		34.552879, 38.188728, 22.804892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981304, 38.533176, 22.407055>,  <33.873318, 38.036636, 22.876047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981304, 38.533176, 22.407055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306698, 38.300858, 22.394951>,  <34.501934, 38.161469, 22.387688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306698, 38.300858, 22.394951>,  <33.981304, 38.533176, 22.407055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306698, 38.300858, 22.394951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248915, -0.300674, -0.920672,
		0.525623, 0.756487, -0.389163,
		0.813487, -0.580795, -0.030260,
		34.550743, 38.126617, 22.385874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320957, 38.582005, 21.675171>,  <33.981304, 38.533176, 22.407055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320957, 38.582005, 21.675171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489227, 38.266960, 21.855259>,  <34.590187, 38.077934, 21.963312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489227, 38.266960, 21.855259>,  <34.320957, 38.582005, 21.675171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489227, 38.266960, 21.855259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041125, -0.512311, -0.857815,
		0.906280, 0.342345, -0.247906,
		0.420673, -0.787615, 0.450218,
		34.615429, 38.030674, 21.990324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913532, 38.353542, 21.238201>,  <34.320957, 38.582005, 21.675171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913532, 38.353542, 21.238201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871342, 38.027325, 21.465801>,  <34.846027, 37.831593, 21.602362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871342, 38.027325, 21.465801>,  <34.913532, 38.353542, 21.238201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871342, 38.027325, 21.465801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164521, -0.578619, -0.798832,
		0.980718, 0.009352, 0.195206,
		-0.105479, -0.815544, 0.569001,
		34.839699, 37.782661, 21.636501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481594, 37.916924, 21.078518>,  <34.913532, 38.353542, 21.238201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481594, 37.916924, 21.078518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165424, 37.716419, 21.219355>,  <34.975723, 37.596115, 21.303856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165424, 37.716419, 21.219355>,  <35.481594, 37.916924, 21.078518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165424, 37.716419, 21.219355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039958, -0.531368, -0.846198,
		0.611254, -0.682925, 0.399977,
		-0.790425, -0.501260, 0.352090,
		34.928295, 37.566040, 21.324982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588463, 37.176182, 21.125319>,  <35.481594, 37.916924, 21.078518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588463, 37.176182, 21.125319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196815, 37.249115, 21.089375>,  <34.961826, 37.292873, 21.067808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196815, 37.249115, 21.089375>,  <35.588463, 37.176182, 21.125319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196815, 37.249115, 21.089375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024412, -0.544352, -0.838502,
		-0.201800, -0.818802, 0.537438,
		-0.979123, 0.182330, -0.089861,
		34.903080, 37.303814, 21.062416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335007, 36.593395, 21.007019>,  <35.588463, 37.176182, 21.125319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335007, 36.593395, 21.007019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013340, 36.798130, 20.886126>,  <34.820339, 36.920971, 20.813589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013340, 36.798130, 20.886126>,  <35.335007, 36.593395, 21.007019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013340, 36.798130, 20.886126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077558, -0.413764, -0.907074,
		-0.589328, -0.752876, 0.293036,
		-0.804162, 0.511837, -0.302235,
		34.772091, 36.951679, 20.795456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936024, 36.121407, 20.599812>,  <35.335007, 36.593395, 21.007019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936024, 36.121407, 20.599812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814167, 36.483044, 20.479942>,  <34.741051, 36.700027, 20.408020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814167, 36.483044, 20.479942>,  <34.936024, 36.121407, 20.599812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814167, 36.483044, 20.479942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012884, -0.310687, -0.950425,
		-0.952379, -0.293402, 0.083000,
		-0.304644, 0.904095, -0.299673,
		34.722775, 36.754272, 20.390041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345375, 35.975536, 20.255608>,  <34.936024, 36.121407, 20.599812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345375, 35.975536, 20.255608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453171, 36.328697, 20.101801>,  <34.517849, 36.540596, 20.009516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453171, 36.328697, 20.101801>,  <34.345375, 35.975536, 20.255608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453171, 36.328697, 20.101801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045920, -0.387055, -0.920912,
		-0.961908, 0.265832, -0.063764,
		0.269488, 0.882905, -0.384519,
		34.534016, 36.593571, 19.986444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773582, 36.182941, 19.729242>,  <34.345375, 35.975536, 20.255608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773582, 36.182941, 19.729242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071903, 36.427906, 19.624378>,  <34.250896, 36.574886, 19.561459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071903, 36.427906, 19.624378>,  <33.773582, 36.182941, 19.729242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071903, 36.427906, 19.624378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079569, -0.308828, -0.947784,
		-0.661399, 0.727719, -0.181596,
		0.745802, 0.612414, -0.262162,
		34.295643, 36.611629, 19.545731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555954, 36.734741, 19.230242>,  <33.773582, 36.182941, 19.729242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555954, 36.734741, 19.230242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945950, 36.651981, 19.197750>,  <34.179947, 36.602325, 19.178255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945950, 36.651981, 19.197750>,  <33.555954, 36.734741, 19.230242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945950, 36.651981, 19.197750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140873, -0.292507, -0.945830,
		0.171930, 0.933613, -0.314336,
		0.974985, -0.206898, -0.081230,
		34.238445, 36.589912, 19.173382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752163, 36.988159, 18.515192>,  <33.555954, 36.734741, 19.230242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752163, 36.988159, 18.515192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088844, 36.799824, 18.620909>,  <34.290852, 36.686821, 18.684340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088844, 36.799824, 18.620909>,  <33.752163, 36.988159, 18.515192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088844, 36.799824, 18.620909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162777, -0.245438, -0.955649,
		0.514827, 0.847389, -0.129943,
		0.841699, -0.470842, 0.264293,
		34.341354, 36.658569, 18.700197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282608, 37.215889, 17.959635>,  <33.752163, 36.988159, 18.515192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282608, 37.215889, 17.959635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387657, 36.868584, 18.127991>,  <34.450687, 36.660202, 18.229004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387657, 36.868584, 18.127991>,  <34.282608, 37.215889, 17.959635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387657, 36.868584, 18.127991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093253, -0.411319, -0.906709,
		0.960382, 0.277370, -0.027053,
		0.262621, -0.868264, 0.420889,
		34.466442, 36.608105, 18.254257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724789, 36.886795, 17.509186>,  <34.282608, 37.215889, 17.959635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724789, 36.886795, 17.509186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626480, 36.569675, 17.732279>,  <34.567493, 36.379402, 17.866135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626480, 36.569675, 17.732279>,  <34.724789, 36.886795, 17.509186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626480, 36.569675, 17.732279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001400, -0.575672, -0.817680,
		0.969326, -0.200185, 0.142596,
		-0.245776, -0.792798, 0.557733,
		34.552746, 36.331837, 17.899599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160461, 36.352509, 17.290991>,  <34.724789, 36.886795, 17.509186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160461, 36.352509, 17.290991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837605, 36.175072, 17.446810>,  <34.643890, 36.068611, 17.540300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837605, 36.175072, 17.446810>,  <35.160461, 36.352509, 17.290991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837605, 36.175072, 17.446810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076811, -0.575335, -0.814303,
		0.585335, -0.687182, 0.430307,
		-0.807145, -0.443588, 0.389547,
		34.595463, 36.041996, 17.563673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231091, 35.603016, 17.230436>,  <35.160461, 36.352509, 17.290991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231091, 35.603016, 17.230436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835426, 35.658108, 17.250786>,  <34.598026, 35.691162, 17.262995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835426, 35.658108, 17.250786>,  <35.231091, 35.603016, 17.230436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835426, 35.658108, 17.250786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131330, -0.675045, -0.725993,
		-0.065651, -0.724806, 0.685818,
		-0.989163, 0.137730, 0.050871,
		34.538677, 35.699429, 17.266047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916222, 34.882500, 17.339167>,  <35.231091, 35.603016, 17.230436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916222, 34.882500, 17.339167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681156, 35.164490, 17.180340>,  <34.540115, 35.333683, 17.085043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681156, 35.164490, 17.180340>,  <34.916222, 34.882500, 17.339167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681156, 35.164490, 17.180340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142861, -0.573445, -0.806691,
		-0.796394, -0.417336, 0.437706,
		-0.587662, 0.704976, -0.397068,
		34.504856, 35.375984, 17.061220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136166, 34.315937, 16.970051>,  <34.916222, 34.882500, 17.339167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136166, 34.315937, 16.970051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379932, 34.016636, 17.074911>,  <35.526192, 33.837055, 17.137827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379932, 34.016636, 17.074911>,  <35.136166, 34.315937, 16.970051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379932, 34.016636, 17.074911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361350, 0.556434, 0.748203,
		-0.705715, -0.361241, 0.609484,
		0.609419, -0.748255, 0.262150,
		35.562759, 33.792160, 17.153557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167904, 34.125500, 17.697214>,  <35.136166, 34.315937, 16.970051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167904, 34.125500, 17.697214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522076, 34.030941, 17.537148>,  <35.734577, 33.974205, 17.441107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522076, 34.030941, 17.537148>,  <35.167904, 34.125500, 17.697214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522076, 34.030941, 17.537148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463499, 0.512987, 0.722505,
		0.034480, -0.825202, 0.563784,
		0.885427, -0.236401, -0.400168,
		35.787704, 33.960022, 17.417097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629570, 33.844986, 18.169706>,  <35.167904, 34.125500, 17.697214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629570, 33.844986, 18.169706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876171, 33.992996, 17.891710>,  <36.024132, 34.081802, 17.724913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876171, 33.992996, 17.891710>,  <35.629570, 33.844986, 18.169706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876171, 33.992996, 17.891710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557244, 0.418540, 0.717150,
		0.556246, -0.829399, 0.051833,
		0.616498, 0.370028, -0.694989,
		36.061119, 34.104004, 17.683214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295288, 33.780655, 18.443779>,  <35.629570, 33.844986, 18.169706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295288, 33.780655, 18.443779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345554, 34.051556, 18.153805>,  <36.375713, 34.214096, 17.979820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345554, 34.051556, 18.153805>,  <36.295288, 33.780655, 18.443779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345554, 34.051556, 18.153805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512797, 0.581198, 0.631861,
		0.849263, -0.451148, -0.274258,
		0.125665, 0.677255, -0.724937,
		36.383255, 34.254730, 17.936323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940224, 33.960926, 18.459915>,  <36.295288, 33.780655, 18.443779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940224, 33.960926, 18.459915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774349, 34.285736, 18.295650>,  <36.674824, 34.480621, 18.197092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774349, 34.285736, 18.295650>,  <36.940224, 33.960926, 18.459915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774349, 34.285736, 18.295650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331554, 0.555108, 0.762841,
		0.847411, 0.180184, -0.499428,
		-0.414688, 0.812028, -0.410664,
		36.649944, 34.529343, 18.172451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341148, 34.421028, 18.698109>,  <36.940224, 33.960926, 18.459915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341148, 34.421028, 18.698109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045021, 34.635067, 18.535336>,  <36.867344, 34.763489, 18.437672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045021, 34.635067, 18.535336>,  <37.341148, 34.421028, 18.698109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045021, 34.635067, 18.535336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128603, 0.706876, 0.695548,
		0.659836, 0.462597, -0.592131,
		-0.740322, 0.535098, -0.406931,
		36.822926, 34.795597, 18.413256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649139, 35.093422, 18.637230>,  <37.341148, 34.421028, 18.698109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649139, 35.093422, 18.637230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249508, 35.108845, 18.629723>,  <37.009727, 35.118099, 18.625217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249508, 35.108845, 18.629723>,  <37.649139, 35.093422, 18.637230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249508, 35.108845, 18.629723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014273, 0.711765, 0.702273,
		0.040434, 0.701359, -0.711660,
		-0.999080, 0.038554, -0.018769,
		36.949783, 35.120411, 18.624092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498127, 35.780880, 18.665081>,  <37.649139, 35.093422, 18.637230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498127, 35.780880, 18.665081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150429, 35.616924, 18.775639>,  <36.941811, 35.518551, 18.841972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150429, 35.616924, 18.775639>,  <37.498127, 35.780880, 18.665081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150429, 35.616924, 18.775639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007321, 0.548343, 0.836222,
		-0.494319, 0.728909, -0.473646,
		-0.869250, -0.409893, 0.276392,
		36.889652, 35.493958, 18.858557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068424, 36.367859, 18.813604>,  <37.498127, 35.780880, 18.665081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068424, 36.367859, 18.813604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956181, 36.040127, 19.013588>,  <36.888836, 35.843487, 19.133577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956181, 36.040127, 19.013588>,  <37.068424, 36.367859, 18.813604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956181, 36.040127, 19.013588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080564, 0.498942, 0.862882,
		-0.956436, 0.282409, -0.073998,
		-0.280607, -0.819330, 0.499958,
		36.871998, 35.794327, 19.163576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579609, 36.566254, 19.388731>,  <37.068424, 36.367859, 18.813604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579609, 36.566254, 19.388731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711037, 36.203312, 19.493616>,  <36.789894, 35.985546, 19.556547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711037, 36.203312, 19.493616>,  <36.579609, 36.566254, 19.388731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711037, 36.203312, 19.493616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111847, 0.313052, 0.943127,
		-0.937835, -0.280552, 0.204342,
		0.328566, -0.907353, 0.262212,
		36.809605, 35.931107, 19.572279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281467, 36.544254, 19.946529>,  <36.579609, 36.566254, 19.388731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281467, 36.544254, 19.946529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558189, 36.257568, 19.981674>,  <36.724224, 36.085556, 20.002762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558189, 36.257568, 19.981674>,  <36.281467, 36.544254, 19.946529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558189, 36.257568, 19.981674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073329, 0.190781, 0.978890,
		-0.718352, -0.670758, 0.184539,
		0.691805, -0.716719, 0.087862,
		36.765732, 36.042553, 20.008032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143566, 36.153488, 20.529577>,  <36.281467, 36.544254, 19.946529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143566, 36.153488, 20.529577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535027, 36.097633, 20.469246>,  <36.769901, 36.064121, 20.433046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535027, 36.097633, 20.469246>,  <36.143566, 36.153488, 20.529577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535027, 36.097633, 20.469246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172453, 0.158525, 0.972178,
		-0.111846, -0.977430, 0.179221,
		0.978648, -0.139642, -0.150830,
		36.828621, 36.055740, 20.423996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269196, 35.881641, 21.164125>,  <36.143566, 36.153488, 20.529577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269196, 35.881641, 21.164125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623829, 35.975147, 21.004467>,  <36.836609, 36.031250, 20.908672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623829, 35.975147, 21.004467>,  <36.269196, 35.881641, 21.164125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623829, 35.975147, 21.004467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362956, 0.183362, 0.913587,
		0.286756, -0.954846, 0.077718,
		0.886585, 0.233769, -0.399147,
		36.889805, 36.045277, 20.884724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772430, 35.468945, 21.512535>,  <36.269196, 35.881641, 21.164125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772430, 35.468945, 21.512535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979065, 35.787167, 21.385899>,  <37.103046, 35.978100, 21.309916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979065, 35.787167, 21.385899>,  <36.772430, 35.468945, 21.512535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979065, 35.787167, 21.385899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292383, 0.183625, 0.938506,
		0.804766, -0.577389, -0.137747,
		0.516589, 0.795553, -0.316594,
		37.134041, 36.025833, 21.290920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524261, 35.478439, 21.818037>,  <36.772430, 35.468945, 21.512535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524261, 35.478439, 21.818037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445229, 35.855614, 21.710829>,  <37.397808, 36.081917, 21.646503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445229, 35.855614, 21.710829>,  <37.524261, 35.478439, 21.818037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445229, 35.855614, 21.710829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284824, 0.316835, 0.904705,
		0.937996, 0.102416, -0.331171,
		-0.197583, 0.942935, -0.268019,
		37.385952, 36.138493, 21.630423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933659, 35.873199, 22.271797>,  <37.524261, 35.478439, 21.818037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933659, 35.873199, 22.271797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695534, 36.157429, 22.121761>,  <37.552658, 36.327965, 22.031740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695534, 36.157429, 22.121761>,  <37.933659, 35.873199, 22.271797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695534, 36.157429, 22.121761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030547, 0.486501, 0.873146,
		0.802915, 0.508335, -0.311325,
		-0.595311, 0.710572, -0.375091,
		37.516941, 36.370602, 22.009233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294205, 36.333435, 22.561150>,  <37.933659, 35.873199, 22.271797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294205, 36.333435, 22.561150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929501, 36.461426, 22.458147>,  <37.710678, 36.538219, 22.396345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929501, 36.461426, 22.458147>,  <38.294205, 36.333435, 22.561150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929501, 36.461426, 22.458147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014243, 0.651208, 0.758766,
		0.410478, 0.688144, -0.598302,
		-0.911759, 0.319978, -0.257505,
		37.655972, 36.557419, 22.380896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296150, 37.067635, 22.528242>,  <38.294205, 36.333435, 22.561150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296150, 37.067635, 22.528242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904915, 36.999332, 22.575867>,  <37.670174, 36.958351, 22.604441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904915, 36.999332, 22.575867>,  <38.296150, 37.067635, 22.528242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904915, 36.999332, 22.575867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016369, 0.633260, 0.773766,
		-0.207524, 0.754866, -0.622182,
		-0.978093, -0.170760, 0.119060,
		37.611488, 36.948105, 22.611586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889809, 37.752026, 22.605494>,  <38.296150, 37.067635, 22.528242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889809, 37.752026, 22.605494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651791, 37.481026, 22.778427>,  <37.508980, 37.318424, 22.882187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651791, 37.481026, 22.778427>,  <37.889809, 37.752026, 22.605494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651791, 37.481026, 22.778427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032401, 0.517275, 0.855205,
		-0.803036, 0.522897, -0.285853,
		-0.595050, -0.677499, 0.432333,
		37.473274, 37.277775, 22.908127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256771, 38.068233, 23.041557>,  <37.889809, 37.752026, 22.605494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256771, 38.068233, 23.041557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328529, 37.700256, 23.180994>,  <37.371582, 37.479469, 23.264656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328529, 37.700256, 23.180994>,  <37.256771, 38.068233, 23.041557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328529, 37.700256, 23.180994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116278, 0.332027, 0.936076,
		-0.976882, -0.208458, -0.047407,
		0.179392, -0.919947, 0.348590,
		37.382347, 37.424271, 23.285570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741261, 38.015205, 23.639402>,  <37.256771, 38.068233, 23.041557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741261, 38.015205, 23.639402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997368, 37.716366, 23.710842>,  <37.151031, 37.537064, 23.753706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997368, 37.716366, 23.710842>,  <36.741261, 38.015205, 23.639402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997368, 37.716366, 23.710842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110899, 0.140164, 0.983898,
		-0.760101, -0.649768, 0.006891,
		0.640271, -0.747098, 0.178597,
		37.189449, 37.492237, 23.764421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467613, 37.560097, 24.194368>,  <36.741261, 38.015205, 23.639402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467613, 37.560097, 24.194368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860195, 37.483433, 24.196236>,  <37.095745, 37.437435, 24.197355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860195, 37.483433, 24.196236>,  <36.467613, 37.560097, 24.194368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860195, 37.483433, 24.196236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001552, 0.032292, 0.999477,
		-0.191710, -0.980930, 0.031990,
		0.981450, -0.191659, 0.004668,
		37.154629, 37.425934, 24.197636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639492, 36.942532, 24.682070>,  <36.467613, 37.560097, 24.194368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639492, 36.942532, 24.682070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966030, 37.169434, 24.638624>,  <37.161953, 37.305576, 24.612556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966030, 37.169434, 24.638624>,  <36.639492, 36.942532, 24.682070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966030, 37.169434, 24.638624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044220, 0.126117, 0.991029,
		0.575866, -0.813827, 0.077871,
		0.816347, 0.567257, -0.108614,
		37.210934, 37.339611, 24.606041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000599, 36.660366, 25.116068>,  <36.639492, 36.942532, 24.682070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000599, 36.660366, 25.116068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163013, 37.022808, 25.068569>,  <37.260464, 37.240273, 25.040070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163013, 37.022808, 25.068569>,  <37.000599, 36.660366, 25.116068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163013, 37.022808, 25.068569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357043, -0.037678, 0.933328,
		0.841222, -0.421363, -0.338818,
		0.406036, 0.906109, -0.118749,
		37.284824, 37.294640, 25.032944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679047, 36.672112, 25.577847>,  <37.000599, 36.660366, 25.116068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679047, 36.672112, 25.577847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602238, 37.057686, 25.504145>,  <37.556152, 37.289032, 25.459925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602238, 37.057686, 25.504145>,  <37.679047, 36.672112, 25.577847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602238, 37.057686, 25.504145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351439, 0.242838, 0.904168,
		0.916306, 0.108869, -0.385397,
		-0.192024, 0.963939, -0.184253,
		37.544632, 37.346867, 25.448870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270729, 37.115730, 25.849600>,  <37.679047, 36.672112, 25.577847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270729, 37.115730, 25.849600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002285, 37.403206, 25.776827>,  <37.841217, 37.575691, 25.733164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002285, 37.403206, 25.776827>,  <38.270729, 37.115730, 25.849600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002285, 37.403206, 25.776827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323303, 0.504559, 0.800559,
		0.667148, 0.478444, -0.570969,
		-0.671110, 0.718687, -0.181933,
		37.800953, 37.618813, 25.722246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659748, 37.755379, 25.677866>,  <38.270729, 37.115730, 25.849600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659748, 37.755379, 25.677866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300545, 37.834305, 25.835167>,  <38.085022, 37.881660, 25.929548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300545, 37.834305, 25.835167>,  <38.659748, 37.755379, 25.677866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300545, 37.834305, 25.835167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428843, 0.592371, 0.682049,
		-0.098371, 0.781129, -0.616572,
		-0.898007, 0.197319, 0.393253,
		38.031143, 37.893501, 25.953142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617435, 38.475872, 25.808149>,  <38.659748, 37.755379, 25.677866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617435, 38.475872, 25.808149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326366, 38.330296, 26.040714>,  <38.151726, 38.242950, 26.180254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326366, 38.330296, 26.040714>,  <38.617435, 38.475872, 25.808149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326366, 38.330296, 26.040714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297609, 0.596175, 0.745656,
		-0.617997, 0.715628, -0.325510,
		-0.727674, -0.363938, 0.581412,
		38.108063, 38.221115, 26.215137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313759, 39.051723, 26.127689>,  <38.617435, 38.475872, 25.808149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313759, 39.051723, 26.127689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240471, 38.729740, 26.353424>,  <38.196499, 38.536552, 26.488865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240471, 38.729740, 26.353424>,  <38.313759, 39.051723, 26.127689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240471, 38.729740, 26.353424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296834, 0.501962, 0.812357,
		-0.937187, 0.316357, 0.146967,
		-0.183223, -0.804955, 0.564338,
		38.185505, 38.488255, 26.522726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147957, 39.324287, 26.772579>,  <38.313759, 39.051723, 26.127689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147957, 39.324287, 26.772579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166515, 38.941174, 26.886070>,  <38.177650, 38.711308, 26.954165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166515, 38.941174, 26.886070>,  <38.147957, 39.324287, 26.772579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166515, 38.941174, 26.886070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525183, 0.264999, 0.808677,
		-0.849724, 0.111485, 0.515306,
		0.046400, -0.957782, 0.283726,
		38.180435, 38.653839, 26.971188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860153, 39.234566, 27.538080>,  <38.147957, 39.324287, 26.772579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860153, 39.234566, 27.538080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130165, 38.952450, 27.451450>,  <38.292171, 38.783180, 27.399473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130165, 38.952450, 27.451450>,  <37.860153, 39.234566, 27.538080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130165, 38.952450, 27.451450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547898, 0.282617, 0.787360,
		-0.494109, -0.650151, 0.577200,
		0.675030, -0.705288, -0.216573,
		38.332672, 38.740864, 27.386478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019569, 39.044788, 28.205046>,  <37.860153, 39.234566, 27.538080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019569, 39.044788, 28.205046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308575, 38.877102, 27.985142>,  <38.481976, 38.776489, 27.853199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308575, 38.877102, 27.985142>,  <38.019569, 39.044788, 28.205046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308575, 38.877102, 27.985142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600086, -0.014631, 0.799802,
		-0.343335, -0.907768, 0.240995,
		0.722509, -0.419218, -0.549762,
		38.525326, 38.751335, 27.820213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198887, 38.483253, 28.610704>,  <38.019569, 39.044788, 28.205046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198887, 38.483253, 28.610704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511784, 38.553734, 28.371689>,  <38.699520, 38.596020, 28.228279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511784, 38.553734, 28.371689>,  <38.198887, 38.483253, 28.610704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511784, 38.553734, 28.371689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610278, -0.024080, 0.791821,
		0.125128, -0.984061, -0.126366,
		0.782243, 0.176197, -0.597537,
		38.746456, 38.606594, 28.192429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677483, 37.903374, 28.713737>,  <38.198887, 38.483253, 28.610704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677483, 37.903374, 28.713737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874889, 38.224056, 28.578857>,  <38.993336, 38.416466, 28.497931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874889, 38.224056, 28.578857>,  <38.677483, 37.903374, 28.713737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874889, 38.224056, 28.578857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694058, -0.129386, 0.708197,
		0.524137, -0.583546, -0.620286,
		0.493521, 0.801707, -0.337199,
		39.022945, 38.464569, 28.477697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349289, 37.720539, 28.572954>,  <38.677483, 37.903374, 28.713737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349289, 37.720539, 28.572954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384422, 38.115719, 28.623938>,  <39.405502, 38.352825, 28.654528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384422, 38.115719, 28.623938>,  <39.349289, 37.720539, 28.572954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384422, 38.115719, 28.623938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687933, -0.152698, 0.709529,
		0.720440, 0.025363, -0.693054,
		0.087832, 0.987948, 0.127457,
		39.410770, 38.412102, 28.662174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010601, 37.921177, 28.606129>,  <39.349289, 37.720539, 28.572954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010601, 37.921177, 28.606129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855484, 38.249886, 28.773127>,  <39.762413, 38.447113, 28.873325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855484, 38.249886, 28.773127>,  <40.010601, 37.921177, 28.606129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855484, 38.249886, 28.773127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699925, -0.032187, 0.713491,
		0.599767, 0.568902, -0.562699,
		-0.387795, 0.821775, 0.417493,
		39.739147, 38.496418, 28.898375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603409, 38.281281, 28.811670>,  <40.010601, 37.921177, 28.606129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603409, 38.281281, 28.811670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325020, 38.491871, 29.006994>,  <40.157986, 38.618225, 29.124189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325020, 38.491871, 29.006994>,  <40.603409, 38.281281, 28.811670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325020, 38.491871, 29.006994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691954, 0.309991, 0.652001,
		0.191889, 0.791664, -0.580041,
		-0.695973, 0.526473, 0.488311,
		40.116226, 38.649815, 29.153488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922165, 38.902027, 29.058908>,  <40.603409, 38.281281, 28.811670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922165, 38.902027, 29.058908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614738, 38.886078, 29.314318>,  <40.430283, 38.876507, 29.467564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614738, 38.886078, 29.314318>,  <40.922165, 38.902027, 29.058908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614738, 38.886078, 29.314318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605159, 0.278495, 0.745804,
		-0.207563, 0.959610, -0.189913,
		-0.768570, -0.039874, 0.638522,
		40.384167, 38.874115, 29.505875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738380, 39.568253, 29.481850>,  <40.922165, 38.902027, 29.058908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738380, 39.568253, 29.481850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592361, 39.259693, 29.690346>,  <40.504749, 39.074558, 29.815443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592361, 39.259693, 29.690346>,  <40.738380, 39.568253, 29.481850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592361, 39.259693, 29.690346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606017, 0.228132, 0.762036,
		-0.706742, 0.594059, 0.384200,
		-0.365046, -0.771395, 0.521240,
		40.482849, 39.028275, 29.846718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735336, 39.845917, 30.173786>,  <40.738380, 39.568253, 29.481850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735336, 39.845917, 30.173786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682671, 39.452480, 30.223122>,  <40.651073, 39.216419, 30.252724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682671, 39.452480, 30.223122>,  <40.735336, 39.845917, 30.173786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682671, 39.452480, 30.223122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538865, 0.033419, 0.841729,
		-0.832040, 0.177285, 0.525623,
		-0.131660, -0.983592, 0.123339,
		40.643173, 39.157402, 30.260122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574989, 39.748684, 30.920673>,  <40.735336, 39.845917, 30.173786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574989, 39.748684, 30.920673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725266, 39.409618, 30.770838>,  <40.815430, 39.206177, 30.680937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725266, 39.409618, 30.770838>,  <40.574989, 39.748684, 30.920673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725266, 39.409618, 30.770838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603558, -0.082928, 0.792995,
		-0.703260, -0.524006, 0.480462,
		0.375690, -0.847668, -0.374588,
		40.837971, 39.155319, 30.658461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485596, 39.320805, 31.453266>,  <40.574989, 39.748684, 30.920673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485596, 39.320805, 31.453266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738445, 39.125721, 31.212412>,  <40.890156, 39.008671, 31.067900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738445, 39.125721, 31.212412>,  <40.485596, 39.320805, 31.453266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738445, 39.125721, 31.212412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552478, -0.261194, 0.791546,
		-0.543315, -0.833020, 0.104340,
		0.632121, -0.487705, -0.602136,
		40.928082, 38.979408, 31.031771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531418, 38.640648, 31.618090>,  <40.485596, 39.320805, 31.453266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531418, 38.640648, 31.618090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866150, 38.746807, 31.426558>,  <41.066990, 38.810501, 31.311638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866150, 38.746807, 31.426558>,  <40.531418, 38.640648, 31.618090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866150, 38.746807, 31.426558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546537, -0.354215, 0.758834,
		0.031784, -0.896714, -0.441468,
		0.836831, 0.265397, -0.478829,
		41.117199, 38.826427, 31.282909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033691, 38.190205, 31.920328>,  <40.531418, 38.640648, 31.618090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033691, 38.190205, 31.920328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253193, 38.479435, 31.752502>,  <41.384895, 38.652973, 31.651808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253193, 38.479435, 31.752502>,  <41.033691, 38.190205, 31.920328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253193, 38.479435, 31.752502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701738, -0.125654, 0.701267,
		0.454346, -0.679249, -0.576360,
		0.548757, 0.723071, -0.419564,
		41.417820, 38.696358, 31.626633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804699, 37.894032, 31.927608>,  <41.033691, 38.190205, 31.920328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804699, 37.894032, 31.927608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860111, 38.282654, 31.850780>,  <41.893360, 38.515827, 31.804684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860111, 38.282654, 31.850780>,  <41.804699, 37.894032, 31.927608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860111, 38.282654, 31.850780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854885, -0.019399, 0.518455,
		0.499982, -0.236019, -0.833255,
		0.138530, 0.971555, -0.192070,
		41.901669, 38.574120, 31.793159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543545, 37.984226, 31.885704>,  <41.804699, 37.894032, 31.927608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543545, 37.984226, 31.885704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385773, 38.343578, 31.962997>,  <42.291111, 38.559189, 32.009373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385773, 38.343578, 31.962997>,  <42.543545, 37.984226, 31.885704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385773, 38.343578, 31.962997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622424, 0.106490, 0.775402,
		0.676029, 0.426112, -0.601177,
		-0.394427, 0.898381, 0.193232,
		42.267445, 38.613094, 32.020966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059052, 38.509190, 31.908194>,  <42.543545, 37.984226, 31.885704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059052, 38.509190, 31.908194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761127, 38.686005, 32.108135>,  <42.582371, 38.792095, 32.228100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761127, 38.686005, 32.108135>,  <43.059052, 38.509190, 31.908194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761127, 38.686005, 32.108135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563554, 0.015602, 0.825932,
		0.357297, 0.896859, -0.260735,
		-0.744813, 0.442041, 0.499854,
		42.537685, 38.818619, 32.258091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362648, 38.934414, 32.291542>,  <43.059052, 38.509190, 31.908194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362648, 38.934414, 32.291542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008106, 38.930222, 32.476692>,  <42.795380, 38.927708, 32.587784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008106, 38.930222, 32.476692>,  <43.362648, 38.934414, 32.291542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008106, 38.930222, 32.476692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461651, -0.096216, 0.881828,
		0.035294, 0.995305, 0.090121,
		-0.886359, -0.010481, 0.462880,
		42.742199, 38.927078, 32.615555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353809, 39.511761, 32.745644>,  <43.362648, 38.934414, 32.291542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353809, 39.511761, 32.745644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091114, 39.241386, 32.879391>,  <42.933498, 39.079163, 32.959641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091114, 39.241386, 32.879391>,  <43.353809, 39.511761, 32.745644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091114, 39.241386, 32.879391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447413, 0.007680, 0.894295,
		-0.607055, 0.736919, 0.297379,
		-0.656739, -0.675937, 0.334369,
		42.894093, 39.038605, 32.979702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327744, 39.521423, 33.434799>,  <43.353809, 39.511761, 32.745644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327744, 39.521423, 33.434799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095444, 39.195877, 33.442326>,  <42.956066, 39.000549, 33.446842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095444, 39.195877, 33.442326>,  <43.327744, 39.521423, 33.434799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095444, 39.195877, 33.442326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255110, -0.159988, 0.953584,
		-0.773080, 0.558592, 0.300538,
		-0.580747, -0.813867, 0.018819,
		42.921219, 38.951717, 33.447971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982559, 39.493370, 34.150547>,  <43.327744, 39.521423, 33.434799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982559, 39.493370, 34.150547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988544, 39.118866, 34.010151>,  <42.992134, 38.894165, 33.925915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988544, 39.118866, 34.010151>,  <42.982559, 39.493370, 34.150547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988544, 39.118866, 34.010151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476193, -0.301989, 0.825859,
		-0.879213, -0.179493, 0.441323,
		0.014961, -0.936261, -0.350986,
		42.993034, 38.837986, 33.904854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907288, 39.056965, 34.709984>,  <42.982559, 39.493370, 34.150547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907288, 39.056965, 34.709984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041683, 38.787697, 34.446484>,  <43.122322, 38.626137, 34.288383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041683, 38.787697, 34.446484>,  <42.907288, 39.056965, 34.709984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041683, 38.787697, 34.446484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490187, -0.472251, 0.732595,
		-0.804256, -0.569057, 0.171307,
		0.335988, -0.673167, -0.658755,
		43.142479, 38.585747, 34.248856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719257, 38.423592, 35.011948>,  <42.907288, 39.056965, 34.709984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719257, 38.423592, 35.011948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039520, 38.361610, 34.780449>,  <43.231678, 38.324421, 34.641552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039520, 38.361610, 34.780449>,  <42.719257, 38.423592, 35.011948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039520, 38.361610, 34.780449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404885, -0.572077, 0.713299,
		-0.441610, -0.805431, -0.395300,
		0.800655, -0.154949, -0.578742,
		43.279716, 38.315125, 34.606827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792747, 37.657879, 34.976723>,  <42.719257, 38.423592, 35.011948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792747, 37.657879, 34.976723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158104, 37.781605, 34.870865>,  <43.377319, 37.855839, 34.807350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158104, 37.781605, 34.870865>,  <42.792747, 37.657879, 34.976723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158104, 37.781605, 34.870865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403189, -0.597751, 0.692915,
		0.056135, -0.739607, -0.670694,
		0.913393, 0.309313, -0.264647,
		43.432121, 37.874397, 34.791470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277180, 37.189251, 34.680248>,  <42.792747, 37.657879, 34.976723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277180, 37.189251, 34.680248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444035, 37.453533, 34.929878>,  <43.544147, 37.612103, 35.079655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444035, 37.453533, 34.929878>,  <43.277180, 37.189251, 34.680248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444035, 37.453533, 34.929878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226992, -0.740644, 0.632394,
		0.880041, -0.122134, -0.458924,
		0.417136, 0.660705, 0.624073,
		43.569176, 37.651745, 35.117100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959641, 37.049141, 34.778172>,  <43.277180, 37.189251, 34.680248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959641, 37.049141, 34.778172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944626, 37.257263, 35.119434>,  <43.935616, 37.382137, 35.324192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944626, 37.257263, 35.119434>,  <43.959641, 37.049141, 34.778172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944626, 37.257263, 35.119434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526611, -0.715287, 0.459396,
		0.849277, 0.466526, -0.247147,
		-0.037539, 0.520305, 0.853155,
		43.933365, 37.413353, 35.375381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615887, 36.986038, 35.162189>,  <43.959641, 37.049141, 34.778172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615887, 36.986038, 35.162189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331322, 37.082836, 35.426109>,  <44.160583, 37.140915, 35.584461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331322, 37.082836, 35.426109>,  <44.615887, 36.986038, 35.162189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331322, 37.082836, 35.426109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301362, -0.743095, 0.597487,
		0.634881, 0.623897, 0.455717,
		-0.711411, 0.241998, 0.659796,
		44.117897, 37.155434, 35.624046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801071, 36.875961, 35.856663>,  <44.615887, 36.986038, 35.162189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801071, 36.875961, 35.856663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402462, 36.870903, 35.889587>,  <44.163296, 36.867867, 35.909340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402462, 36.870903, 35.889587>,  <44.801071, 36.875961, 35.856663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402462, 36.870903, 35.889587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064204, -0.746168, 0.662654,
		0.053034, 0.665637, 0.744389,
		-0.996527, -0.012649, 0.082309,
		44.103504, 36.867107, 35.914280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703075, 36.908131, 36.587746>,  <44.801071, 36.875961, 35.856663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703075, 36.908131, 36.587746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377403, 36.765079, 36.404789>,  <44.181999, 36.679249, 36.295017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377403, 36.765079, 36.404789>,  <44.703075, 36.908131, 36.587746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377403, 36.765079, 36.404789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023040, -0.807057, 0.590024,
		-0.580150, 0.469849, 0.665332,
		-0.814184, -0.357632, -0.457389,
		44.133148, 36.657791, 36.267570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202190, 36.601681, 37.065426>,  <44.703075, 36.908131, 36.587746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202190, 36.601681, 37.065426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203785, 36.425972, 36.706089>,  <44.204742, 36.320545, 36.490486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203785, 36.425972, 36.706089>,  <44.202190, 36.601681, 37.065426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203785, 36.425972, 36.706089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062426, -0.896490, 0.438643,
		-0.998042, -0.057828, 0.023850,
		0.003984, -0.439273, -0.898345,
		44.204979, 36.294189, 36.436584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699604, 36.145187, 37.066433>,  <44.202190, 36.601681, 37.065426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699604, 36.145187, 37.066433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038155, 36.075180, 36.865231>,  <44.241283, 36.033176, 36.744507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038155, 36.075180, 36.865231>,  <43.699604, 36.145187, 37.066433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038155, 36.075180, 36.865231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197923, -0.773465, 0.602145,
		-0.494443, -0.609198, -0.620003,
		0.846376, -0.175014, -0.503009,
		44.292068, 36.022675, 36.714329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788193, 35.533360, 36.964851>,  <43.699604, 36.145187, 37.066433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788193, 35.533360, 36.964851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177677, 35.601711, 36.904598>,  <44.411366, 35.642723, 36.868446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177677, 35.601711, 36.904598>,  <43.788193, 35.533360, 36.964851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177677, 35.601711, 36.904598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227514, -0.762447, 0.605733,
		-0.011344, -0.624079, -0.781279,
		0.973709, 0.170881, -0.150636,
		44.469791, 35.652977, 36.859406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078415, 34.890511, 37.039982>,  <43.788193, 35.533360, 36.964851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078415, 34.890511, 37.039982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777527, 34.816730, 36.786957>,  <43.596992, 34.772461, 36.635139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777527, 34.816730, 36.786957>,  <44.078415, 34.890511, 37.039982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777527, 34.816730, 36.786957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062202, 0.935854, -0.346854,
		0.655966, -0.300258, -0.692498,
		-0.752223, -0.184450, -0.632565,
		43.551861, 34.761395, 36.597187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350365, 35.056484, 36.434650>,  <44.078415, 34.890511, 37.039982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350365, 35.056484, 36.434650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951916, 35.089958, 36.423782>,  <43.712845, 35.110043, 36.417263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951916, 35.089958, 36.423782>,  <44.350365, 35.056484, 36.434650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951916, 35.089958, 36.423782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087903, 0.933047, -0.348849,
		-0.003844, -0.349884, -0.936785,
		-0.996122, 0.083687, -0.027169,
		43.653080, 35.115063, 36.415630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115211, 35.337948, 35.756485>,  <44.350365, 35.056484, 36.434650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115211, 35.337948, 35.756485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846844, 35.479961, 36.016891>,  <43.685822, 35.565170, 36.173134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846844, 35.479961, 36.016891>,  <44.115211, 35.337948, 35.756485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846844, 35.479961, 36.016891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071841, 0.904922, -0.419470,
		-0.738042, -0.234662, -0.632636,
		-0.670920, 0.355036, 0.651012,
		43.645569, 35.586472, 36.212196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742950, 35.876461, 35.451038>,  <44.115211, 35.337948, 35.756485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742950, 35.876461, 35.451038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779926, 35.985386, 35.834141>,  <43.802113, 36.050743, 36.064003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779926, 35.985386, 35.834141>,  <43.742950, 35.876461, 35.451038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779926, 35.985386, 35.834141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083132, 0.960629, -0.265107,
		-0.992242, -0.055114, 0.111436,
		0.092438, 0.272314, 0.957758,
		43.807659, 36.067081, 36.121468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116413, 36.235619, 35.573181>,  <43.742950, 35.876461, 35.451038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116413, 36.235619, 35.573181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418865, 36.354427, 35.806435>,  <43.600338, 36.425713, 35.946388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418865, 36.354427, 35.806435>,  <43.116413, 36.235619, 35.573181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418865, 36.354427, 35.806435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161254, 0.948158, -0.273851,
		-0.634244, 0.113034, 0.764825,
		0.756129, 0.297019, 0.583136,
		43.645702, 36.443535, 35.981377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851151, 36.784870, 36.070076>,  <43.116413, 36.235619, 35.573181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851151, 36.784870, 36.070076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245892, 36.837273, 36.032196>,  <43.482735, 36.868713, 36.009468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245892, 36.837273, 36.032196>,  <42.851151, 36.784870, 36.070076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245892, 36.837273, 36.032196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161048, 0.847094, -0.506453,
		0.013871, 0.515043, 0.857052,
		0.986849, 0.131002, -0.094697,
		43.541946, 36.876572, 36.003788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011669, 37.457424, 36.286205>,  <42.851151, 36.784870, 36.070076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011669, 37.457424, 36.286205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350292, 37.373421, 36.090557>,  <43.553467, 37.323017, 35.973167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350292, 37.373421, 36.090557>,  <43.011669, 37.457424, 36.286205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350292, 37.373421, 36.090557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039613, 0.891478, -0.451330,
		0.530828, 0.401451, 0.746364,
		0.846554, -0.210013, -0.489124,
		43.604259, 37.310417, 35.943821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505882, 38.028305, 36.351818>,  <43.011669, 37.457424, 36.286205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505882, 38.028305, 36.351818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593624, 37.828674, 36.016483>,  <43.646267, 37.708897, 35.815285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593624, 37.828674, 36.016483>,  <43.505882, 38.028305, 36.351818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593624, 37.828674, 36.016483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091336, 0.865992, -0.491647,
		0.971361, 0.031274, 0.235542,
		0.219353, -0.499080, -0.838334,
		43.659431, 37.678951, 35.764984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183872, 38.414391, 35.926510>,  <43.505882, 38.028305, 36.351818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183872, 38.414391, 35.926510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953388, 38.186184, 35.692417>,  <43.815098, 38.049259, 35.551960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953388, 38.186184, 35.692417>,  <44.183872, 38.414391, 35.926510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953388, 38.186184, 35.692417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155871, 0.626206, -0.763918,
		0.802304, -0.531395, -0.271896,
		-0.576205, -0.570514, -0.585237,
		43.780525, 38.015030, 35.516846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246971, 38.722221, 35.189339>,  <44.183872, 38.414391, 35.926510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246971, 38.722221, 35.189339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093494, 38.359570, 35.119133>,  <44.001408, 38.141979, 35.077007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093494, 38.359570, 35.119133>,  <44.246971, 38.722221, 35.189339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093494, 38.359570, 35.119133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237238, 0.280457, -0.930087,
		0.892469, -0.315225, -0.322695,
		-0.383689, -0.906629, -0.175516,
		43.978386, 38.087582, 35.066479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559467, 38.517403, 34.457909>,  <44.246971, 38.722221, 35.189339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559467, 38.517403, 34.457909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227856, 38.317917, 34.559101>,  <44.028889, 38.198227, 34.619816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227856, 38.317917, 34.559101>,  <44.559467, 38.517403, 34.457909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227856, 38.317917, 34.559101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407773, 0.229563, -0.883755,
		0.382663, -0.835816, -0.393675,
		-0.829030, -0.498711, 0.252978,
		43.979145, 38.168304, 34.634995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309975, 38.223450, 33.880714>,  <44.559467, 38.517403, 34.457909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309975, 38.223450, 33.880714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972435, 38.242531, 34.094498>,  <43.769913, 38.253979, 34.222767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972435, 38.242531, 34.094498>,  <44.309975, 38.223450, 33.880714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972435, 38.242531, 34.094498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519602, 0.175978, -0.836090,
		-0.133941, -0.983237, -0.123709,
		-0.843844, 0.047707, 0.534463,
		43.719280, 38.256844, 34.254837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823303, 37.898285, 33.496624>,  <44.309975, 38.223450, 33.880714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823303, 37.898285, 33.496624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585499, 38.095886, 33.750401>,  <43.442814, 38.214447, 33.902664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585499, 38.095886, 33.750401>,  <43.823303, 37.898285, 33.496624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585499, 38.095886, 33.750401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679656, 0.112895, -0.724791,
		-0.429676, -0.862098, 0.268637,
		-0.594513, 0.494006, 0.634439,
		43.407146, 38.244087, 33.940731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035034, 37.653126, 33.363430>,  <43.823303, 37.898285, 33.496624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035034, 37.653126, 33.363430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032932, 38.018608, 33.525963>,  <43.031670, 38.237900, 33.623482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032932, 38.018608, 33.525963>,  <43.035034, 37.653126, 33.363430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032932, 38.018608, 33.525963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690650, 0.290542, -0.662260,
		-0.723170, -0.284115, 0.629526,
		-0.005254, 0.913709, 0.406335,
		43.031357, 38.292721, 33.647865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372841, 37.813995, 33.617550>,  <43.035034, 37.653126, 33.363430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372841, 37.813995, 33.617550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577618, 38.144623, 33.523998>,  <42.700485, 38.342999, 33.467865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577618, 38.144623, 33.523998>,  <42.372841, 37.813995, 33.617550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577618, 38.144623, 33.523998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674261, 0.217961, -0.705595,
		-0.532245, 0.518923, 0.668906,
		0.511945, 0.826567, -0.233881,
		42.731201, 38.392593, 33.453835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933556, 38.159451, 33.314632>,  <42.372841, 37.813995, 33.617550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933556, 38.159451, 33.314632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199429, 38.444649, 33.225330>,  <42.358952, 38.615768, 33.171749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199429, 38.444649, 33.225330>,  <41.933556, 38.159451, 33.314632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199429, 38.444649, 33.225330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624755, 0.366546, -0.689438,
		-0.409732, 0.597734, 0.689082,
		0.664681, 0.712992, -0.223252,
		42.398834, 38.658546, 33.158356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624146, 38.846310, 33.297630>,  <41.933556, 38.159451, 33.314632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624146, 38.846310, 33.297630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959080, 38.854904, 33.079124>,  <42.160042, 38.860062, 32.948021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959080, 38.854904, 33.079124>,  <41.624146, 38.846310, 33.297630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959080, 38.854904, 33.079124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523370, 0.320210, -0.789651,
		0.157949, 0.947102, 0.279372,
		0.837339, 0.021490, -0.546262,
		42.210281, 38.861351, 32.915245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479458, 39.361778, 32.822769>,  <41.624146, 38.846310, 33.297630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479458, 39.361778, 32.822769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803890, 39.198997, 32.654705>,  <41.998550, 39.101330, 32.553867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803890, 39.198997, 32.654705>,  <41.479458, 39.361778, 32.822769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803890, 39.198997, 32.654705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375312, 0.188876, -0.907451,
		0.448649, 0.893708, 0.000459,
		0.811083, -0.406954, -0.420158,
		42.047215, 39.076912, 32.528656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714378, 39.829693, 32.311760>,  <41.479458, 39.361778, 32.822769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714378, 39.829693, 32.311760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859959, 39.464981, 32.235649>,  <41.947308, 39.246155, 32.189983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859959, 39.464981, 32.235649>,  <41.714378, 39.829693, 32.311760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859959, 39.464981, 32.235649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361052, 0.050207, -0.931193,
		0.858594, 0.407604, -0.310927,
		0.363947, -0.911777, -0.190274,
		41.969143, 39.191448, 32.178566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943939, 39.855549, 31.675070>,  <41.714378, 39.829693, 32.311760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943939, 39.855549, 31.675070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935150, 39.457279, 31.711164>,  <41.929878, 39.218315, 31.732821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935150, 39.457279, 31.711164>,  <41.943939, 39.855549, 31.675070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935150, 39.457279, 31.711164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464277, -0.069773, -0.882937,
		0.885417, -0.061291, -0.460738,
		-0.021969, -0.995678, 0.090234,
		41.928558, 39.158577, 31.738235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253754, 39.490398, 31.063799>,  <41.943939, 39.855549, 31.675070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253754, 39.490398, 31.063799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013260, 39.198727, 31.194527>,  <41.868965, 39.023724, 31.272963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013260, 39.198727, 31.194527>,  <42.253754, 39.490398, 31.063799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013260, 39.198727, 31.194527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454395, -0.024443, -0.890465,
		0.657300, -0.683882, -0.316642,
		-0.601233, -0.729183, 0.326819,
		41.832890, 38.979973, 31.292572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173737, 38.987625, 30.564150>,  <42.253754, 39.490398, 31.063799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173737, 38.987625, 30.564150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853840, 38.910870, 30.791693>,  <41.661903, 38.864819, 30.928219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853840, 38.910870, 30.791693>,  <42.173737, 38.987625, 30.564150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853840, 38.910870, 30.791693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566851, -0.070737, -0.820778,
		0.197737, -0.978864, -0.052200,
		-0.799738, -0.191888, 0.568857,
		41.613918, 38.853302, 30.962349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772335, 38.401775, 30.237768>,  <42.173737, 38.987625, 30.564150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772335, 38.401775, 30.237768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511307, 38.573746, 30.487349>,  <41.354691, 38.676929, 30.637096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511307, 38.573746, 30.487349>,  <41.772335, 38.401775, 30.237768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511307, 38.573746, 30.487349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742474, -0.198419, -0.639814,
		-0.151269, -0.880791, 0.448691,
		-0.652571, 0.429926, 0.623951,
		41.315536, 38.702724, 30.674534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180943, 37.975552, 30.223745>,  <41.772335, 38.401775, 30.237768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180943, 37.975552, 30.223745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069065, 38.335228, 30.358341>,  <41.001938, 38.551033, 30.439098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069065, 38.335228, 30.358341>,  <41.180943, 37.975552, 30.223745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069065, 38.335228, 30.358341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813318, -0.035670, -0.580725,
		-0.510181, -0.436099, 0.741305,
		-0.279696, 0.899191, 0.336489,
		40.985157, 38.604984, 30.459288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398266, 37.775639, 29.528866>,  <41.180943, 37.975552, 30.223745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398266, 37.775639, 29.528866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326954, 37.487968, 29.260239>,  <41.284168, 37.315365, 29.099062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326954, 37.487968, 29.260239>,  <41.398266, 37.775639, 29.528866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326954, 37.487968, 29.260239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943244, -0.069438, 0.324762,
		-0.280192, 0.691352, -0.665977,
		-0.178281, -0.719174, -0.671569,
		41.273468, 37.272217, 29.058767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613499, 37.141006, 29.811136>,  <41.398266, 37.775639, 29.528866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613499, 37.141006, 29.811136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706245, 37.083698, 30.195992>,  <41.761894, 37.049313, 30.426905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706245, 37.083698, 30.195992>,  <41.613499, 37.141006, 29.811136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706245, 37.083698, 30.195992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699343, -0.662944, -0.267255,
		0.676134, 0.734833, -0.053518,
		0.231867, -0.143272, 0.962139,
		41.775806, 37.040718, 30.484632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335186, 37.272530, 29.866833>,  <41.613499, 37.141006, 29.811136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335186, 37.272530, 29.866833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193001, 37.001080, 30.123930>,  <42.107689, 36.838211, 30.278189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193001, 37.001080, 30.123930>,  <42.335186, 37.272530, 29.866833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193001, 37.001080, 30.123930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728559, -0.631939, -0.264299,
		0.585534, 0.374328, 0.719047,
		-0.355459, -0.678625, 0.642742,
		42.086365, 36.797493, 30.316753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775017, 37.097820, 30.343512>,  <42.335186, 37.272530, 29.866833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775017, 37.097820, 30.343512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570007, 36.756931, 30.301485>,  <42.447002, 36.552399, 30.276268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570007, 36.756931, 30.301485>,  <42.775017, 37.097820, 30.343512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570007, 36.756931, 30.301485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855474, -0.517328, 0.023125,
		-0.074062, -0.078031, 0.994196,
		-0.512521, -0.852222, -0.105069,
		42.416252, 36.501266, 30.269964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929470, 36.692001, 30.908268>,  <42.775017, 37.097820, 30.343512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929470, 36.692001, 30.908268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812366, 36.443085, 30.617874>,  <42.742104, 36.293736, 30.443638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812366, 36.443085, 30.617874>,  <42.929470, 36.692001, 30.908268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812366, 36.443085, 30.617874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870704, -0.487282, 0.066568,
		-0.395182, -0.612628, 0.684484,
		-0.292755, -0.622289, -0.725983,
		42.724541, 36.256397, 30.400080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443172, 36.142433, 30.988943>,  <42.929470, 36.692001, 30.908268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443172, 36.142433, 30.988943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251209, 36.150295, 30.638103>,  <43.136032, 36.155014, 30.427599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251209, 36.150295, 30.638103>,  <43.443172, 36.142433, 30.988943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251209, 36.150295, 30.638103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766362, -0.477264, -0.430010,
		-0.427062, -0.878540, 0.213975,
		-0.479903, 0.019659, -0.877101,
		43.107239, 36.156193, 30.374973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337368, 35.405670, 30.736670>,  <43.443172, 36.142433, 30.988943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337368, 35.405670, 30.736670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374126, 35.691322, 30.459087>,  <43.396183, 35.862713, 30.292538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374126, 35.691322, 30.459087>,  <43.337368, 35.405670, 30.736670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374126, 35.691322, 30.459087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772492, -0.490881, -0.402855,
		-0.628340, -0.499055, -0.596768,
		0.091895, 0.714129, -0.693956,
		43.401695, 35.905560, 30.250900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742409, 35.485664, 31.338062>,  <43.337368, 35.405670, 30.736670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742409, 35.485664, 31.338062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896164, 35.124893, 31.259304>,  <43.988419, 34.908428, 31.212049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896164, 35.124893, 31.259304>,  <43.742409, 35.485664, 31.338062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896164, 35.124893, 31.259304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143533, -0.269078, 0.952363,
		-0.911946, -0.337815, -0.232887,
		0.384387, -0.901930, -0.196897,
		44.011478, 34.854313, 31.200235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439507, 35.053902, 31.765213>,  <43.742409, 35.485664, 31.338062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439507, 35.053902, 31.765213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768574, 34.844505, 31.676512>,  <43.966015, 34.718868, 31.623291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768574, 34.844505, 31.676512>,  <43.439507, 35.053902, 31.765213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768574, 34.844505, 31.676512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043695, -0.330681, 0.942730,
		-0.566841, -0.785243, -0.249167,
		0.822668, -0.523491, -0.221755,
		44.015373, 34.687458, 31.609985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333847, 34.287628, 31.856165>,  <43.439507, 35.053902, 31.765213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333847, 34.287628, 31.856165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678875, 34.472515, 31.938450>,  <43.885891, 34.583447, 31.987822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678875, 34.472515, 31.938450>,  <43.333847, 34.287628, 31.856165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678875, 34.472515, 31.938450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127098, -0.195590, 0.972415,
		0.489706, -0.864925, -0.109964,
		0.862574, 0.462221, 0.205712,
		43.937649, 34.611183, 32.000164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698486, 33.837070, 32.422832>,  <43.333847, 34.287628, 31.856165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698486, 33.837070, 32.422832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812599, 34.219433, 32.450722>,  <43.881065, 34.448849, 32.467457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812599, 34.219433, 32.450722>,  <43.698486, 33.837070, 32.422832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812599, 34.219433, 32.450722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165823, -0.120875, 0.978719,
		0.943990, -0.267649, -0.192994,
		0.285282, 0.955904, 0.069723,
		43.898182, 34.506203, 32.471638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362606, 33.762852, 32.745781>,  <43.698486, 33.837070, 32.422832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362606, 33.762852, 32.745781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202068, 34.127472, 32.781567>,  <44.105747, 34.346245, 32.803036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202068, 34.127472, 32.781567>,  <44.362606, 33.762852, 32.745781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202068, 34.127472, 32.781567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132703, -0.038773, 0.990397,
		0.906262, 0.409364, -0.105403,
		-0.401346, 0.911547, 0.089462,
		44.081665, 34.400936, 32.808407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776382, 34.385544, 33.035187>,  <44.362606, 33.762852, 32.745781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776382, 34.385544, 33.035187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384350, 34.392338, 33.114330>,  <44.149128, 34.396412, 33.161816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384350, 34.392338, 33.114330>,  <44.776382, 34.385544, 33.035187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384350, 34.392338, 33.114330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197913, 0.001627, 0.980218,
		0.016325, 0.999854, -0.004955,
		-0.980084, 0.016982, 0.197858,
		44.090324, 34.397434, 33.173687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993965, 34.868553, 32.658947>,  <44.776382, 34.385544, 33.035187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993965, 34.868553, 32.658947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609932, 34.844685, 32.549637>,  <44.379513, 34.830364, 32.484051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609932, 34.844685, 32.549637>,  <44.993965, 34.868553, 32.658947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609932, 34.844685, 32.549637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010286, 0.968786, -0.247687,
		0.279522, -0.240611, -0.929502,
		-0.960084, -0.059673, -0.273272,
		44.321907, 34.826782, 32.467655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628448, 35.060600, 32.935696>,  <44.993965, 34.868553, 32.658947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628448, 35.060600, 32.935696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586254, 34.928925, 33.311039>,  <45.560936, 34.849918, 33.536243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586254, 34.928925, 33.311039>,  <45.628448, 35.060600, 32.935696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.586254, 34.928925, 33.311039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931641, 0.297253, 0.209013,
		-0.347733, 0.896257, 0.275326,
		-0.105488, -0.329186, 0.938354,
		45.554607, 34.830170, 33.592545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660141, 35.525043, 33.516254>,  <45.628448, 35.060600, 32.935696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660141, 35.525043, 33.516254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.786266, 35.160583, 33.622379>,  <45.861942, 34.941910, 33.686054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.786266, 35.160583, 33.622379>,  <45.660141, 35.525043, 33.516254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.786266, 35.160583, 33.622379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873594, 0.387894, 0.293891,
		-0.370692, 0.139112, 0.918279,
		0.315311, -0.911146, 0.265316,
		45.880859, 34.887241, 33.701973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.866909, 35.435856, 34.238342>,  <45.660141, 35.525043, 33.516254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.866909, 35.435856, 34.238342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084549, 35.202637, 33.997009>,  <46.215134, 35.062706, 33.852211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084549, 35.202637, 33.997009>,  <45.866909, 35.435856, 34.238342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084549, 35.202637, 33.997009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837170, 0.425001, 0.344269,
		0.055692, -0.692409, 0.719352,
		0.544101, -0.583047, -0.603333,
		46.247780, 35.027721, 33.816010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.354202, 35.733753, 34.540569>,  <45.866909, 35.435856, 34.238342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.354202, 35.733753, 34.540569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586361, 35.508778, 34.305012>,  <46.725658, 35.373791, 34.163677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586361, 35.508778, 34.305012>,  <46.354202, 35.733753, 34.540569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.586361, 35.508778, 34.305012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760355, 0.115390, 0.639175,
		-0.291543, -0.818749, 0.494624,
		0.580399, -0.562437, -0.588899,
		46.760479, 35.340046, 34.128342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674248, 35.404301, 35.058590>,  <46.354202, 35.733753, 34.540569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674248, 35.404301, 35.058590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.880222, 35.395153, 34.715820>,  <47.003807, 35.389664, 34.510159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.880222, 35.395153, 34.715820>,  <46.674248, 35.404301, 35.058590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.880222, 35.395153, 34.715820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839438, -0.189156, 0.509475,
		-0.173746, -0.981680, -0.078202,
		0.514934, -0.022873, -0.856925,
		47.034702, 35.388290, 34.458744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.129295, 34.752602, 35.031940>,  <46.674248, 35.404301, 35.058590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.129295, 34.752602, 35.031940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253788, 35.076469, 34.832916>,  <47.328484, 35.270790, 34.713501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.253788, 35.076469, 34.832916>,  <47.129295, 34.752602, 35.031940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.253788, 35.076469, 34.832916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845121, 0.003641, 0.534562,
		0.434633, -0.586869, -0.683139,
		0.311231, 0.809674, -0.497558,
		47.347157, 35.319370, 34.683647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.713604, 34.585789, 34.745579>,  <47.129295, 34.752602, 35.031940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.713604, 34.585789, 34.745579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756229, 34.974380, 34.830311>,  <47.781807, 35.207535, 34.881149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756229, 34.974380, 34.830311>,  <47.713604, 34.585789, 34.745579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.756229, 34.974380, 34.830311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811320, -0.208120, 0.546301,
		0.574807, 0.113646, -0.810359,
		0.106567, 0.971479, 0.211832,
		47.788200, 35.265823, 34.893860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.040577, 32.949120, 24.435101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.646553, 32.881145, 24.423988>,  <34.410137, 32.840359, 24.417320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.646553, 32.881145, 24.423988>,  <35.040577, 32.949120, 24.435101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646553, 32.881145, 24.423988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055191, 0.158762, 0.985773,
		-0.163111, 0.972582, -0.165769,
		-0.985063, -0.169940, -0.027782,
		34.351036, 32.830162, 24.415653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678722, 33.447437, 24.674496>,  <35.040577, 32.949120, 24.435101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678722, 33.447437, 24.674496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.376652, 33.189690, 24.722660>,  <34.195408, 33.035042, 24.751558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.376652, 33.189690, 24.722660>,  <34.678722, 33.447437, 24.674496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376652, 33.189690, 24.722660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180864, 0.381374, 0.906555,
		-0.630075, 0.662832, -0.404548,
		-0.755178, -0.644366, 0.120411,
		34.150097, 32.996380, 24.758783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036388, 33.857334, 24.801481>,  <34.678722, 33.447437, 24.674496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036388, 33.857334, 24.801481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.943733, 33.488132, 24.924383>,  <33.888142, 33.266613, 24.998125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.943733, 33.488132, 24.924383>,  <34.036388, 33.857334, 24.801481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943733, 33.488132, 24.924383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126415, 0.341727, 0.931258,
		-0.964554, 0.176873, -0.195838,
		-0.231637, -0.923005, 0.307255,
		33.874241, 33.211231, 25.016560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426914, 33.948746, 25.181305>,  <34.036388, 33.857334, 24.801481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426914, 33.948746, 25.181305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.561359, 33.597271, 25.316916>,  <33.642025, 33.386387, 25.398283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.561359, 33.597271, 25.316916>,  <33.426914, 33.948746, 25.181305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561359, 33.597271, 25.316916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061510, 0.338723, 0.938874,
		-0.939812, -0.336419, 0.059800,
		0.336111, -0.878686, 0.339029,
		33.662193, 33.333664, 25.418625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977055, 33.735443, 25.765623>,  <33.426914, 33.948746, 25.181305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977055, 33.735443, 25.765623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.315907, 33.525387, 25.798120>,  <33.519218, 33.399353, 25.817619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.315907, 33.525387, 25.798120>,  <32.977055, 33.735443, 25.765623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315907, 33.525387, 25.798120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079541, 0.276477, 0.957723,
		-0.525401, -0.804853, 0.275982,
		0.847129, -0.525140, 0.081243,
		33.570045, 33.367844, 25.822493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939850, 33.181572, 26.348822>,  <32.977055, 33.735443, 25.765623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939850, 33.181572, 26.348822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.323772, 33.267044, 26.276028>,  <33.554127, 33.318329, 26.232351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.323772, 33.267044, 26.276028>,  <32.939850, 33.181572, 26.348822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323772, 33.267044, 26.276028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155051, 0.136817, 0.978387,
		0.233962, -0.967275, 0.098185,
		0.959802, 0.213681, -0.181987,
		33.611713, 33.331146, 26.221432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193298, 32.835331, 26.933283>,  <32.939850, 33.181572, 26.348822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193298, 32.835331, 26.933283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.443203, 33.103539, 26.773245>,  <33.593147, 33.264462, 26.677221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.443203, 33.103539, 26.773245>,  <33.193298, 32.835331, 26.933283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443203, 33.103539, 26.773245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301925, 0.265093, 0.915733,
		0.720076, -0.692918, -0.036825,
		0.624766, 0.670515, -0.400097,
		33.630634, 33.304691, 26.653215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842487, 32.702061, 27.335163>,  <33.193298, 32.835331, 26.933283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842487, 32.702061, 27.335163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.899075, 33.051701, 27.149284>,  <33.933029, 33.261482, 27.037758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.899075, 33.051701, 27.149284>,  <33.842487, 32.702061, 27.335163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899075, 33.051701, 27.149284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418031, 0.372763, 0.828431,
		0.897350, -0.311456, -0.312664,
		0.141470, 0.874095, -0.464697,
		33.941517, 33.313931, 27.009874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568027, 32.797333, 27.270992>,  <33.842487, 32.702061, 27.335163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568027, 32.797333, 27.270992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.390682, 33.154991, 27.245914>,  <34.284275, 33.369587, 27.230867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.390682, 33.154991, 27.245914>,  <34.568027, 32.797333, 27.270992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390682, 33.154991, 27.245914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685736, 0.383400, 0.618684,
		0.577233, 0.231307, -0.783134,
		-0.443360, 0.894148, -0.062695,
		34.257675, 33.423237, 27.227106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114571, 33.283978, 27.234123>,  <34.568027, 32.797333, 27.270992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114571, 33.283978, 27.234123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.799103, 33.512970, 27.323807>,  <34.609821, 33.650364, 27.377617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.799103, 33.512970, 27.323807>,  <35.114571, 33.283978, 27.234123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799103, 33.512970, 27.323807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493581, 0.372119, 0.786069,
		0.366576, 0.730613, -0.576044,
		-0.788670, 0.572478, 0.224207,
		34.562504, 33.684715, 27.391069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348091, 33.960289, 27.192774>,  <35.114571, 33.283978, 27.234123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348091, 33.960289, 27.192774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029057, 33.962463, 27.434044>,  <34.837635, 33.963768, 27.578806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029057, 33.962463, 27.434044>,  <35.348091, 33.960289, 27.192774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029057, 33.962463, 27.434044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531551, 0.479023, 0.698563,
		-0.285135, 0.877786, -0.384955,
		-0.797591, 0.005438, 0.603174,
		34.789780, 33.964096, 27.614996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379044, 34.537560, 27.558704>,  <35.348091, 33.960289, 27.192774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379044, 34.537560, 27.558704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.108776, 34.357948, 27.792574>,  <34.946617, 34.250179, 27.932896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.108776, 34.357948, 27.792574>,  <35.379044, 34.537560, 27.558704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108776, 34.357948, 27.792574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416943, 0.421302, 0.805396,
		-0.607971, 0.787957, -0.097441,
		-0.675669, -0.449030, 0.584673,
		34.906075, 34.223240, 27.967976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927193, 35.093281, 28.008598>,  <35.379044, 34.537560, 27.558704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927193, 35.093281, 28.008598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.950062, 34.731712, 28.178143>,  <34.963783, 34.514771, 28.279869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.950062, 34.731712, 28.178143>,  <34.927193, 35.093281, 28.008598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950062, 34.731712, 28.178143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484678, 0.396301, 0.779765,
		-0.872822, 0.160853, 0.460769,
		0.057176, -0.903920, 0.423862,
		34.967216, 34.460537, 28.305302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637787, 35.110340, 28.755835>,  <34.927193, 35.093281, 28.008598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637787, 35.110340, 28.755835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.863457, 34.780365, 28.742090>,  <34.998859, 34.582378, 28.733845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.863457, 34.780365, 28.742090>,  <34.637787, 35.110340, 28.755835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863457, 34.780365, 28.742090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433792, 0.260746, 0.862459,
		-0.702519, -0.501481, 0.504959,
		0.564173, -0.824941, -0.034359,
		35.032707, 34.532883, 28.731783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596523, 34.798691, 29.465384>,  <34.637787, 35.110340, 28.755835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596523, 34.798691, 29.465384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926941, 34.639450, 29.305803>,  <35.125191, 34.543903, 29.210054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926941, 34.639450, 29.305803>,  <34.596523, 34.798691, 29.465384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926941, 34.639450, 29.305803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490323, 0.158570, 0.856994,
		-0.277913, -0.903530, 0.326187,
		0.826044, -0.398107, -0.398953,
		35.174755, 34.520020, 29.186117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891571, 34.289764, 29.952885>,  <34.596523, 34.798691, 29.465384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891571, 34.289764, 29.952885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.212666, 34.359287, 29.724707>,  <35.405323, 34.401001, 29.587799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.212666, 34.359287, 29.724707>,  <34.891571, 34.289764, 29.952885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212666, 34.359287, 29.724707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595149, -0.173090, 0.784753,
		0.037659, -0.969448, -0.242388,
		0.802733, 0.173810, -0.570447,
		35.453484, 34.411430, 29.553572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479523, 33.841930, 30.247599>,  <34.891571, 34.289764, 29.952885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479523, 33.841930, 30.247599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666828, 34.127686, 30.039604>,  <35.779213, 34.299137, 29.914808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666828, 34.127686, 30.039604>,  <35.479523, 33.841930, 30.247599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666828, 34.127686, 30.039604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721789, 0.030175, 0.691454,
		0.509655, -0.699103, -0.501505,
		0.468265, 0.714384, -0.519984,
		35.807308, 34.341999, 29.883610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229958, 33.674782, 30.345129>,  <35.479523, 33.841930, 30.247599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229958, 33.674782, 30.345129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.235512, 34.056149, 30.224598>,  <36.238842, 34.284969, 30.152279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.235512, 34.056149, 30.224598>,  <36.229958, 33.674782, 30.345129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235512, 34.056149, 30.224598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739641, 0.192999, 0.644735,
		0.672859, -0.231827, -0.702508,
		0.013883, 0.953419, -0.301330,
		36.239677, 34.342175, 30.134199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985687, 33.891815, 30.467188>,  <36.229958, 33.674782, 30.345129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985687, 33.891815, 30.467188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.820057, 34.253658, 30.426733>,  <36.720676, 34.470764, 30.402460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.820057, 34.253658, 30.426733>,  <36.985687, 33.891815, 30.467188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820057, 34.253658, 30.426733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776732, 0.409086, 0.478891,
		0.474581, 0.119741, -0.872029,
		-0.414078, 0.904605, -0.101138,
		36.695835, 34.525040, 30.396391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524460, 34.287079, 30.188177>,  <36.985687, 33.891815, 30.467188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524460, 34.287079, 30.188177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248203, 34.499260, 30.384804>,  <37.082451, 34.626568, 30.502779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248203, 34.499260, 30.384804>,  <37.524460, 34.287079, 30.188177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248203, 34.499260, 30.384804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720652, 0.447774, 0.529301,
		0.060659, 0.719803, -0.691523,
		-0.690638, 0.530454, 0.491566,
		37.041012, 34.658398, 30.532274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770695, 35.021694, 30.324556>,  <37.524460, 34.287079, 30.188177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770695, 35.021694, 30.324556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486374, 34.987461, 30.603823>,  <37.315781, 34.966923, 30.771383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486374, 34.987461, 30.603823>,  <37.770695, 35.021694, 30.324556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486374, 34.987461, 30.603823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693412, 0.081348, 0.715934,
		-0.118064, 0.993005, 0.001520,
		-0.710803, -0.085580, 0.698166,
		37.273132, 34.961788, 30.813272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063198, 35.441570, 30.807114>,  <37.770695, 35.021694, 30.324556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063198, 35.441570, 30.807114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.783405, 35.210724, 30.975714>,  <37.615528, 35.072216, 31.076874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.783405, 35.210724, 30.975714>,  <38.063198, 35.441570, 30.807114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783405, 35.210724, 30.975714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527198, -0.018512, 0.849540,
		-0.482480, 0.816453, 0.317203,
		-0.699482, -0.577115, 0.421501,
		37.573563, 35.037590, 31.102163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445190, 36.040726, 30.447554>,  <38.063198, 35.441570, 30.807114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445190, 36.040726, 30.447554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844955, 36.053871, 30.451580>,  <39.084812, 36.061760, 30.453995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844955, 36.053871, 30.451580>,  <38.445190, 36.040726, 30.447554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844955, 36.053871, 30.451580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011956, -0.057886, -0.998251,
		-0.032228, 0.997782, -0.058245,
		0.999409, 0.032868, 0.010064,
		39.144779, 36.063732, 30.454599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748547, 36.419704, 29.897249>,  <38.445190, 36.040726, 30.447554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748547, 36.419704, 29.897249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.079609, 36.209213, 29.975292>,  <39.278248, 36.082920, 30.022118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.079609, 36.209213, 29.975292>,  <38.748547, 36.419704, 29.897249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079609, 36.209213, 29.975292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027271, -0.309521, -0.950501,
		0.560572, 0.792010, -0.241826,
		0.827657, -0.526229, 0.195108,
		39.327908, 36.051346, 30.033825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178898, 36.565422, 29.331434>,  <38.748547, 36.419704, 29.897249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178898, 36.565422, 29.331434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.325027, 36.228951, 29.490908>,  <39.412704, 36.027065, 29.586592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.325027, 36.228951, 29.490908>,  <39.178898, 36.565422, 29.331434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325027, 36.228951, 29.490908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277465, -0.310421, -0.909204,
		0.888567, 0.442775, 0.119995,
		0.365324, -0.841183, 0.398684,
		39.434624, 35.976597, 29.610514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880600, 36.510628, 29.069921>,  <39.178898, 36.565422, 29.331434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880600, 36.510628, 29.069921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753201, 36.148949, 29.183758>,  <39.676762, 35.931942, 29.252060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753201, 36.148949, 29.183758>,  <39.880600, 36.510628, 29.069921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753201, 36.148949, 29.183758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083159, -0.325720, -0.941802,
		0.944269, -0.276295, 0.178933,
		-0.318497, -0.904195, 0.284591,
		39.657650, 35.877689, 29.269135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289845, 36.046753, 28.687817>,  <39.880600, 36.510628, 29.069921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289845, 36.046753, 28.687817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996296, 35.804001, 28.809885>,  <39.820168, 35.658348, 28.883125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996296, 35.804001, 28.809885>,  <40.289845, 36.046753, 28.687817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996296, 35.804001, 28.809885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010450, -0.459281, -0.888229,
		0.679210, -0.648655, 0.343395,
		-0.733869, -0.606883, 0.305170,
		39.776134, 35.621937, 28.901436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534164, 35.461678, 28.447660>,  <40.289845, 36.046753, 28.687817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534164, 35.461678, 28.447660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139179, 35.414486, 28.489613>,  <39.902187, 35.386173, 28.514784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139179, 35.414486, 28.489613>,  <40.534164, 35.461678, 28.447660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139179, 35.414486, 28.489613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057268, -0.351413, -0.934468,
		0.147101, -0.928758, 0.340250,
		-0.987462, -0.117976, 0.104881,
		39.842941, 35.379093, 28.521076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356289, 34.749332, 28.279083>,  <40.534164, 35.461678, 28.447660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356289, 34.749332, 28.279083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.000149, 34.930691, 28.262533>,  <39.786465, 35.039505, 28.252604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.000149, 34.930691, 28.262533>,  <40.356289, 34.749332, 28.279083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000149, 34.930691, 28.262533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119843, -0.321076, -0.939440,
		-0.439221, -0.831472, 0.340206,
		-0.890350, 0.453393, -0.041378,
		39.733044, 35.066708, 28.250120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829178, 34.285271, 28.007774>,  <40.356289, 34.749332, 28.279083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829178, 34.285271, 28.007774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.674976, 34.647804, 27.938557>,  <39.582455, 34.865326, 27.897026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.674976, 34.647804, 27.938557>,  <39.829178, 34.285271, 28.007774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674976, 34.647804, 27.938557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439296, -0.345200, -0.829371,
		-0.811424, -0.243704, 0.531224,
		-0.385500, 0.906336, -0.173045,
		39.559326, 34.919704, 27.886642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067612, 34.264145, 27.943411>,  <39.829178, 34.285271, 28.007774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067612, 34.264145, 27.943411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195274, 34.583344, 27.738924>,  <39.271870, 34.774864, 27.616232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195274, 34.583344, 27.738924>,  <39.067612, 34.264145, 27.943411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195274, 34.583344, 27.738924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356450, -0.398741, -0.844955,
		-0.878114, 0.451895, 0.157185,
		0.319155, 0.797996, -0.511218,
		39.291019, 34.822742, 27.585558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598858, 34.216255, 27.474442>,  <39.067612, 34.264145, 27.943411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598858, 34.216255, 27.474442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852219, 34.465935, 27.291500>,  <39.004234, 34.615742, 27.181736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852219, 34.465935, 27.291500>,  <38.598858, 34.216255, 27.474442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852219, 34.465935, 27.291500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426361, -0.211711, -0.879429,
		-0.645765, 0.752033, 0.132035,
		0.633406, 0.624199, -0.457353,
		39.042240, 34.653194, 27.154295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198135, 34.528061, 27.003386>,  <38.598858, 34.216255, 27.474442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198135, 34.528061, 27.003386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.571915, 34.620296, 26.894842>,  <38.796181, 34.675636, 26.829716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.571915, 34.620296, 26.894842>,  <38.198135, 34.528061, 27.003386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571915, 34.620296, 26.894842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238164, -0.161824, -0.957648,
		-0.264735, 0.959501, -0.096298,
		0.934448, 0.230588, -0.271359,
		38.852249, 34.689472, 26.813435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068459, 34.980049, 26.545105>,  <38.198135, 34.528061, 27.003386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068459, 34.980049, 26.545105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.433807, 34.828709, 26.484964>,  <38.653015, 34.737904, 26.448879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.433807, 34.828709, 26.484964>,  <38.068459, 34.980049, 26.545105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433807, 34.828709, 26.484964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229658, -0.173868, -0.957615,
		0.336175, 0.909186, -0.245698,
		0.913369, -0.378353, -0.150352,
		38.707817, 34.715202, 26.439859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253727, 35.178520, 25.862688>,  <38.068459, 34.980049, 26.545105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253727, 35.178520, 25.862688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522896, 34.900414, 25.963715>,  <38.684395, 34.733551, 26.024330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522896, 34.900414, 25.963715>,  <38.253727, 35.178520, 25.862688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522896, 34.900414, 25.963715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096933, -0.421371, -0.901693,
		0.733338, 0.582284, -0.350942,
		0.672919, -0.695264, 0.252565,
		38.724770, 34.691833, 26.039484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866745, 35.327480, 25.494289>,  <38.253727, 35.178520, 25.862688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866745, 35.327480, 25.494289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825447, 34.945057, 25.604053>,  <38.800671, 34.715603, 25.669912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825447, 34.945057, 25.604053>,  <38.866745, 35.327480, 25.494289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825447, 34.945057, 25.604053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207268, -0.249148, -0.946026,
		0.972821, -0.154546, -0.172437,
		-0.103242, -0.956055, 0.274409,
		38.794476, 34.658241, 25.686377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104744, 34.938541, 24.949753>,  <38.866745, 35.327480, 25.494289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104744, 34.938541, 24.949753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.930759, 34.634048, 25.142141>,  <38.826366, 34.451351, 25.257574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.930759, 34.634048, 25.142141>,  <39.104744, 34.938541, 24.949753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930759, 34.634048, 25.142141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276701, -0.395303, -0.875883,
		0.856880, -0.514061, -0.038692,
		-0.434963, -0.761233, 0.480969,
		38.800270, 34.405678, 25.286432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296356, 34.355057, 24.515005>,  <39.104744, 34.938541, 24.949753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296356, 34.355057, 24.515005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966438, 34.268539, 24.723978>,  <38.768486, 34.216629, 24.849361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966438, 34.268539, 24.723978>,  <39.296356, 34.355057, 24.515005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966438, 34.268539, 24.723978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432851, -0.352954, -0.829496,
		0.363808, -0.910297, 0.197492,
		-0.824793, -0.216292, 0.522430,
		38.719002, 34.203651, 24.880707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049091, 33.673203, 24.312443>,  <39.296356, 34.355057, 24.515005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049091, 33.673203, 24.312443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717396, 33.813442, 24.486544>,  <38.518379, 33.897587, 24.591003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717396, 33.813442, 24.486544>,  <39.049091, 33.673203, 24.312443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717396, 33.813442, 24.486544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534951, -0.272392, -0.799768,
		-0.161836, -0.896038, 0.413430,
		-0.829238, 0.350597, 0.435254,
		38.468624, 33.918621, 24.617119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557430, 33.125267, 24.356318>,  <39.049091, 33.673203, 24.312443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557430, 33.125267, 24.356318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.351177, 33.467892, 24.364576>,  <38.227425, 33.673466, 24.369532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.351177, 33.467892, 24.364576>,  <38.557430, 33.125267, 24.356318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351177, 33.467892, 24.364576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488559, -0.274134, -0.828348,
		-0.703873, -0.437207, 0.559833,
		-0.515629, 0.856564, 0.020646,
		38.196487, 33.724861, 24.370770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.620514, 32.956711, 24.459455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645485, 33.329857, 24.317547>,  <37.660469, 33.553745, 24.232403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645485, 33.329857, 24.317547>,  <37.620514, 32.956711, 24.459455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645485, 33.329857, 24.317547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699075, -0.212824, -0.682642,
		-0.712317, 0.290629, 0.638858,
		0.062431, 0.932867, -0.354769,
		37.664215, 33.609718, 24.211117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973270, 33.233021, 24.310072>,  <37.620514, 32.956711, 24.459455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973270, 33.233021, 24.310072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.191151, 33.491802, 24.096624>,  <37.321877, 33.647072, 23.968555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.191151, 33.491802, 24.096624>,  <36.973270, 33.233021, 24.310072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191151, 33.491802, 24.096624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624652, -0.111576, -0.772891,
		-0.559567, 0.754319, 0.343347,
		0.544697, 0.646957, -0.533621,
		37.354561, 33.685890, 23.936539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548153, 33.803780, 24.127497>,  <36.973270, 33.233021, 24.310072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548153, 33.803780, 24.127497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840759, 33.791798, 23.855032>,  <37.016323, 33.784607, 23.691553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840759, 33.791798, 23.855032>,  <36.548153, 33.803780, 24.127497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840759, 33.791798, 23.855032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681055, -0.079411, -0.727914,
		-0.032287, 0.996392, -0.078491,
		0.731520, -0.029954, -0.681161,
		37.060215, 33.782810, 23.650684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330856, 34.279846, 23.633215>,  <36.548153, 33.803780, 24.127497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330856, 34.279846, 23.633215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.590355, 34.028938, 23.460865>,  <36.746056, 33.878391, 23.357454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.590355, 34.028938, 23.460865>,  <36.330856, 34.279846, 23.633215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590355, 34.028938, 23.460865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510685, 0.060925, -0.857606,
		0.564203, 0.776414, -0.280813,
		0.648749, -0.627271, -0.430877,
		36.784981, 33.840755, 23.331602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428261, 34.558640, 22.997654>,  <36.330856, 34.279846, 23.633215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428261, 34.558640, 22.997654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537506, 34.176476, 22.952751>,  <36.603054, 33.947178, 22.925810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537506, 34.176476, 22.952751>,  <36.428261, 34.558640, 22.997654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537506, 34.176476, 22.952751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435641, -0.018795, -0.899924,
		0.857686, 0.294685, -0.421349,
		0.273113, -0.955410, -0.112257,
		36.619438, 33.889854, 22.919075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473492, 34.456467, 22.341761>,  <36.428261, 34.558640, 22.997654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473492, 34.456467, 22.341761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.515228, 34.070782, 22.439259>,  <36.540272, 33.839371, 22.497757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.515228, 34.070782, 22.439259>,  <36.473492, 34.456467, 22.341761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515228, 34.070782, 22.439259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380336, -0.265137, -0.886029,
		0.918944, -0.000255, -0.394389,
		0.104341, -0.964211, 0.243743,
		36.546532, 33.781517, 22.512381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859760, 34.141266, 21.779144>,  <36.473492, 34.456467, 22.341761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859760, 34.141266, 21.779144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654617, 33.860474, 21.976810>,  <36.531532, 33.691998, 22.095409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654617, 33.860474, 21.976810>,  <36.859760, 34.141266, 21.779144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654617, 33.860474, 21.976810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090019, -0.528484, -0.844157,
		0.853742, -0.477415, 0.207845,
		-0.512856, -0.701983, 0.494166,
		36.500759, 33.649879, 22.125061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953426, 33.556377, 21.396551>,  <36.859760, 34.141266, 21.779144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953426, 33.556377, 21.396551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.657784, 33.416889, 21.627068>,  <36.480396, 33.333199, 21.765377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.657784, 33.416889, 21.627068>,  <36.953426, 33.556377, 21.396551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657784, 33.416889, 21.627068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369832, -0.504976, -0.779887,
		0.562973, -0.789554, 0.244267,
		-0.739112, -0.348717, 0.576290,
		36.436050, 33.312275, 21.799955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955769, 32.759727, 21.311583>,  <36.953426, 33.556377, 21.396551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955769, 32.759727, 21.311583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595585, 32.906963, 21.404259>,  <36.379475, 32.995304, 21.459864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595585, 32.906963, 21.404259>,  <36.955769, 32.759727, 21.311583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595585, 32.906963, 21.404259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420393, -0.599970, -0.680665,
		-0.111540, -0.710313, 0.694992,
		-0.900460, 0.368092, 0.231690,
		36.325447, 33.017391, 21.473766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550739, 32.277439, 21.445837>,  <36.955769, 32.759727, 21.311583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550739, 32.277439, 21.445837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287651, 32.560207, 21.341793>,  <36.129799, 32.729870, 21.279366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287651, 32.560207, 21.341793>,  <36.550739, 32.277439, 21.445837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287651, 32.560207, 21.341793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354252, -0.595040, -0.721411,
		-0.664759, -0.382344, 0.641801,
		-0.657724, 0.706924, -0.260112,
		36.090332, 32.772285, 21.263760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963512, 31.787230, 21.231176>,  <36.550739, 32.277439, 21.445837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963512, 31.787230, 21.231176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860161, 32.161983, 21.136951>,  <35.798149, 32.386837, 21.080416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860161, 32.161983, 21.136951>,  <35.963512, 31.787230, 21.231176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860161, 32.161983, 21.136951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599112, -0.346686, -0.721716,
		-0.757830, -0.045346, 0.650874,
		-0.258377, 0.936884, -0.235562,
		35.782646, 32.443050, 21.066282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221302, 31.804991, 21.125496>,  <35.963512, 31.787230, 21.231176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221302, 31.804991, 21.125496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.401817, 32.093422, 20.915207>,  <35.510124, 32.266479, 20.789034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.401817, 32.093422, 20.915207>,  <35.221302, 31.804991, 21.125496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401817, 32.093422, 20.915207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585313, -0.205520, -0.784328,
		-0.673609, 0.661670, 0.329309,
		0.451286, 0.721079, -0.525724,
		35.537205, 32.309746, 20.757490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606640, 32.142269, 20.714043>,  <35.221302, 31.804991, 21.125496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606640, 32.142269, 20.714043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.955959, 32.229904, 20.539982>,  <35.165550, 32.282486, 20.435545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.955959, 32.229904, 20.539982>,  <34.606640, 32.142269, 20.714043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955959, 32.229904, 20.539982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361345, -0.307830, -0.880154,
		-0.326783, 0.925874, -0.189660,
		0.873294, 0.219087, -0.435153,
		35.217949, 32.295631, 20.409435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400917, 32.365368, 20.035479>,  <34.606640, 32.142269, 20.714043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400917, 32.365368, 20.035479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791996, 32.296688, 19.987110>,  <35.026646, 32.255482, 19.958090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791996, 32.296688, 19.987110>,  <34.400917, 32.365368, 20.035479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791996, 32.296688, 19.987110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147223, -0.149780, -0.977697,
		0.149756, 0.973697, -0.171718,
		0.977701, -0.171696, -0.120920,
		35.085308, 32.245178, 19.950834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629620, 32.647697, 19.298933>,  <34.400917, 32.365368, 20.035479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629620, 32.647697, 19.298933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940773, 32.413227, 19.389524>,  <35.127464, 32.272545, 19.443880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940773, 32.413227, 19.389524>,  <34.629620, 32.647697, 19.298933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940773, 32.413227, 19.389524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070955, -0.276168, -0.958487,
		0.624387, 0.761663, -0.173235,
		0.777886, -0.586175, 0.226479,
		35.174137, 32.237373, 19.457468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174023, 32.757175, 18.927364>,  <34.629620, 32.647697, 19.298933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174023, 32.757175, 18.927364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.257183, 32.378918, 19.027391>,  <35.307079, 32.151962, 19.087408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.257183, 32.378918, 19.027391>,  <35.174023, 32.757175, 18.927364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257183, 32.378918, 19.027391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011400, -0.253295, -0.967322,
		0.978083, 0.203962, -0.041881,
		0.207905, -0.945643, 0.250069,
		35.319553, 32.095226, 19.102411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746296, 32.578743, 18.431520>,  <35.174023, 32.757175, 18.927364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746296, 32.578743, 18.431520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582264, 32.242672, 18.573471>,  <35.483845, 32.041031, 18.658642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582264, 32.242672, 18.573471>,  <35.746296, 32.578743, 18.431520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582264, 32.242672, 18.573471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072248, -0.357949, -0.930942,
		0.909182, -0.407403, 0.086088,
		-0.410083, -0.840176, 0.354875,
		35.459240, 31.990620, 18.679934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027935, 32.065025, 18.073236>,  <35.746296, 32.578743, 18.431520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027935, 32.065025, 18.073236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691990, 31.913647, 18.228886>,  <35.490425, 31.822821, 18.322275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691990, 31.913647, 18.228886>,  <36.027935, 32.065025, 18.073236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691990, 31.913647, 18.228886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302995, -0.267940, -0.914551,
		0.450367, -0.885996, 0.110366,
		-0.839860, -0.378443, 0.389123,
		35.440033, 31.800114, 18.345623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864841, 31.620840, 17.535276>,  <36.027935, 32.065025, 18.073236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864841, 31.620840, 17.535276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544071, 31.596355, 17.772989>,  <35.351608, 31.581665, 17.915617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544071, 31.596355, 17.772989>,  <35.864841, 31.620840, 17.535276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544071, 31.596355, 17.772989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534267, -0.371666, -0.759225,
		0.267349, -0.926346, 0.265344,
		-0.801924, -0.061213, 0.594281,
		35.303493, 31.577991, 17.951273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591129, 30.868315, 17.659121>,  <35.864841, 31.620840, 17.535276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591129, 30.868315, 17.659121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281326, 31.116722, 17.707247>,  <35.095444, 31.265766, 17.736122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281326, 31.116722, 17.707247>,  <35.591129, 30.868315, 17.659121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281326, 31.116722, 17.707247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403214, -0.338126, -0.850347,
		-0.487400, -0.707111, 0.512284,
		-0.774506, 0.621019, 0.120315,
		35.048973, 31.303028, 17.743341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025520, 30.503624, 17.469204>,  <35.591129, 30.868315, 17.659121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025520, 30.503624, 17.469204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904202, 30.882343, 17.426159>,  <34.831409, 31.109575, 17.400331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904202, 30.882343, 17.426159>,  <35.025520, 30.503624, 17.469204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904202, 30.882343, 17.426159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470701, -0.247052, -0.846999,
		-0.828524, -0.206240, 0.520589,
		-0.303297, 0.946800, -0.107611,
		34.813213, 31.166384, 17.393875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333473, 30.494953, 17.335871>,  <35.025520, 30.503624, 17.469204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333473, 30.494953, 17.335871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476227, 30.836472, 17.184256>,  <34.561878, 31.041382, 17.093287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476227, 30.836472, 17.184256>,  <34.333473, 30.494953, 17.335871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476227, 30.836472, 17.184256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401630, -0.226100, -0.887453,
		-0.843402, 0.468950, 0.262218,
		0.356884, 0.853794, -0.379038,
		34.583290, 31.092609, 17.070545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872978, 30.679693, 16.766661>,  <34.333473, 30.494953, 17.335871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872978, 30.679693, 16.766661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.198959, 30.901382, 16.698910>,  <34.394547, 31.034395, 16.658258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.198959, 30.901382, 16.698910>,  <33.872978, 30.679693, 16.766661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198959, 30.901382, 16.698910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198671, -0.007383, -0.980038,
		-0.544411, 0.832335, 0.104092,
		0.814952, 0.554224, -0.169380,
		34.443443, 31.067650, 16.648096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349831, 30.062538, 16.929724>,  <33.872978, 30.679693, 16.766661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349831, 30.062538, 16.929724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949940, 30.060432, 16.920580>,  <32.710007, 30.059168, 16.915094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949940, 30.060432, 16.920580>,  <33.349831, 30.062538, 16.929724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949940, 30.060432, 16.920580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019681, 0.718594, 0.695152,
		0.012765, 0.695410, -0.718500,
		-0.999725, -0.005267, -0.022859,
		32.650021, 30.058853, 16.913723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111061, 30.805721, 16.845213>,  <33.349831, 30.062538, 16.929724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111061, 30.805721, 16.845213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867947, 30.560274, 17.046831>,  <32.722076, 30.413006, 17.167801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867947, 30.560274, 17.046831>,  <33.111061, 30.805721, 16.845213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867947, 30.560274, 17.046831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088948, 0.683352, 0.724651,
		-0.789100, 0.395602, -0.469915,
		-0.607791, -0.613620, 0.504045,
		32.685608, 30.376188, 17.198044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506584, 31.142607, 16.999598>,  <33.111061, 30.805721, 16.845213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506584, 31.142607, 16.999598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.479607, 30.837933, 17.257368>,  <32.463421, 30.655128, 17.412031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.479607, 30.837933, 17.257368>,  <32.506584, 31.142607, 16.999598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479607, 30.837933, 17.257368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293291, 0.632495, 0.716889,
		-0.953641, -0.140654, -0.266055,
		-0.067446, -0.761686, 0.644426,
		32.459373, 30.609426, 17.450695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005283, 31.321079, 17.422846>,  <32.506584, 31.142607, 16.999598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005283, 31.321079, 17.422846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.155930, 31.030890, 17.653273>,  <32.246315, 30.856775, 17.791529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.155930, 31.030890, 17.653273>,  <32.005283, 31.321079, 17.422846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155930, 31.030890, 17.653273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338190, 0.471258, 0.814582,
		-0.862432, -0.501602, -0.067865,
		0.376614, -0.725473, 0.576065,
		32.268913, 30.813248, 17.826092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423550, 31.082396, 17.848734>,  <32.005283, 31.321079, 17.422846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423550, 31.082396, 17.848734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789749, 31.026768, 17.999741>,  <32.009468, 30.993391, 18.090345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789749, 31.026768, 17.999741>,  <31.423550, 31.082396, 17.848734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789749, 31.026768, 17.999741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291138, 0.418614, 0.860233,
		-0.277667, -0.897453, 0.342753,
		0.915500, -0.139070, 0.377518,
		32.064400, 30.985046, 18.112995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294773, 30.943628, 18.586323>,  <31.423550, 31.082396, 17.848734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294773, 30.943628, 18.586323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.688137, 31.008593, 18.554005>,  <31.924156, 31.047571, 18.534613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.688137, 31.008593, 18.554005>,  <31.294773, 30.943628, 18.586323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688137, 31.008593, 18.554005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019444, 0.348469, 0.937118,
		0.180351, -0.923143, 0.339530,
		0.983410, 0.162408, -0.080796,
		31.983160, 31.057316, 18.529766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433920, 30.883184, 19.199677>,  <31.294773, 30.943628, 18.586323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433920, 30.883184, 19.199677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.764837, 31.068991, 19.073305>,  <31.963387, 31.180475, 18.997482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.764837, 31.068991, 19.073305>,  <31.433920, 30.883184, 19.199677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764837, 31.068991, 19.073305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145307, 0.366303, 0.919080,
		0.542656, -0.806254, 0.235541,
		0.827291, 0.464519, -0.315931,
		32.013023, 31.208345, 18.978525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017956, 30.689367, 19.671703>,  <31.433920, 30.883184, 19.199677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017956, 30.689367, 19.671703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.157551, 31.019199, 19.493591>,  <32.241306, 31.217098, 19.386724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.157551, 31.019199, 19.493591>,  <32.017956, 30.689367, 19.671703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157551, 31.019199, 19.493591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308920, 0.347372, 0.885382,
		0.884748, -0.446541, -0.133503,
		0.348984, 0.824581, -0.445282,
		32.262245, 31.266573, 19.360006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658413, 30.853914, 19.960947>,  <32.017956, 30.689367, 19.671703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658413, 30.853914, 19.960947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.578819, 31.202728, 19.782078>,  <32.531063, 31.412016, 19.674757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.578819, 31.202728, 19.782078>,  <32.658413, 30.853914, 19.960947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578819, 31.202728, 19.782078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521803, 0.480513, 0.704860,
		0.829534, -0.093080, -0.550645,
		-0.198984, 0.872034, -0.447171,
		32.519123, 31.464338, 19.647926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288212, 31.140848, 19.967613>,  <32.658413, 30.853914, 19.960947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288212, 31.140848, 19.967613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024548, 31.437939, 19.920525>,  <32.866348, 31.616194, 19.892271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024548, 31.437939, 19.920525>,  <33.288212, 31.140848, 19.967613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024548, 31.437939, 19.920525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394241, 0.474619, 0.786963,
		0.640374, 0.472326, -0.605665,
		-0.659163, 0.742728, -0.117723,
		32.826797, 31.660757, 19.885208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619469, 31.812244, 19.876732>,  <33.288212, 31.140848, 19.967613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619469, 31.812244, 19.876732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252129, 31.887323, 20.016102>,  <33.031723, 31.932371, 20.099724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252129, 31.887323, 20.016102>,  <33.619469, 31.812244, 19.876732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252129, 31.887323, 20.016102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375579, 0.690896, 0.617741,
		-0.124776, 0.698164, -0.704981,
		-0.918353, 0.187697, 0.348423,
		32.976624, 31.943632, 20.120628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607166, 32.538193, 20.035923>,  <33.619469, 31.812244, 19.876732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607166, 32.538193, 20.035923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.327141, 32.348873, 20.249804>,  <33.159126, 32.235283, 20.378132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.327141, 32.348873, 20.249804>,  <33.607166, 32.538193, 20.035923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327141, 32.348873, 20.249804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264592, 0.523565, 0.809858,
		-0.663256, 0.708427, -0.241296,
		-0.700059, -0.473298, 0.534702,
		33.117123, 32.206882, 20.410213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350197, 33.088795, 20.339046>,  <33.607166, 32.538193, 20.035923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350197, 33.088795, 20.339046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252369, 32.764404, 20.551653>,  <33.193672, 32.569771, 20.679216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252369, 32.764404, 20.551653>,  <33.350197, 33.088795, 20.339046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252369, 32.764404, 20.551653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321729, 0.449236, 0.833473,
		-0.914700, 0.374845, 0.151045,
		-0.244568, -0.810974, 0.531515,
		33.178997, 32.521111, 20.711107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270683, 33.331924, 21.097143>,  <33.350197, 33.088795, 20.339046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270683, 33.331924, 21.097143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336525, 32.938995, 21.132814>,  <33.376030, 32.703239, 21.154217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336525, 32.938995, 21.132814>,  <33.270683, 33.331924, 21.097143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336525, 32.938995, 21.132814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395931, 0.148610, 0.906175,
		-0.903407, -0.113850, 0.413393,
		0.164603, -0.982320, 0.089179,
		33.385906, 32.644299, 21.159569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004566, 33.218330, 21.691399>,  <33.270683, 33.331924, 21.097143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004566, 33.218330, 21.691399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.243176, 32.901253, 21.641129>,  <33.386341, 32.711006, 21.610966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.243176, 32.901253, 21.641129>,  <33.004566, 33.218330, 21.691399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243176, 32.901253, 21.641129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317202, 0.089012, 0.944171,
		-0.737252, -0.603087, 0.304542,
		0.596525, -0.792693, -0.125677,
		33.422134, 32.663445, 21.603426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648834, 32.680153, 22.137514>,  <33.004566, 33.218330, 21.691399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648834, 32.680153, 22.137514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.037395, 32.603703, 22.081167>,  <33.270535, 32.557835, 22.047359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.037395, 32.603703, 22.081167>,  <32.648834, 32.680153, 22.137514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037395, 32.603703, 22.081167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136253, -0.037131, 0.989978,
		-0.194438, -0.980863, -0.010028,
		0.971405, -0.191123, -0.140865,
		33.328815, 32.546364, 22.038908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709244, 32.367043, 22.686268>,  <32.648834, 32.680153, 22.137514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709244, 32.367043, 22.686268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.083763, 32.441883, 22.567379>,  <33.308475, 32.486786, 22.496046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.083763, 32.441883, 22.567379>,  <32.709244, 32.367043, 22.686268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083763, 32.441883, 22.567379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321292, -0.114538, 0.940028,
		0.141837, -0.975641, -0.167356,
		0.936298, 0.187101, -0.297220,
		33.364651, 32.498013, 22.478212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190319, 31.831739, 22.956406>,  <32.709244, 32.367043, 22.686268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190319, 31.831739, 22.956406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.429630, 32.140213, 22.869379>,  <33.573219, 32.325298, 22.817163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.429630, 32.140213, 22.869379>,  <33.190319, 31.831739, 22.956406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429630, 32.140213, 22.869379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480307, -0.127814, 0.867738,
		0.641377, -0.623650, -0.446874,
		0.598282, 0.771184, -0.217567,
		33.609116, 32.371567, 22.804110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876293, 31.596588, 23.155025>,  <33.190319, 31.831739, 22.956406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876293, 31.596588, 23.155025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879883, 31.996567, 23.153116>,  <33.882034, 32.236553, 23.151970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879883, 31.996567, 23.153116>,  <33.876293, 31.596588, 23.155025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879883, 31.996567, 23.153116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398186, 0.000808, 0.917305,
		0.917261, -0.010131, -0.398158,
		0.008972, 0.999948, -0.004775,
		33.882576, 32.296551, 23.151684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451626, 31.755779, 23.431206>,  <33.876293, 31.596588, 23.155025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451626, 31.755779, 23.431206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.252510, 32.099895, 23.475216>,  <34.133041, 32.306366, 23.501621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.252510, 32.099895, 23.475216>,  <34.451626, 31.755779, 23.431206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252510, 32.099895, 23.475216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377464, 0.100683, 0.920534,
		0.780850, 0.499763, -0.374848,
		-0.497790, 0.860291, 0.110024,
		34.103172, 32.357983, 23.508223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927761, 32.160065, 23.884993>,  <34.451626, 31.755779, 23.431206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927761, 32.160065, 23.884993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.576153, 32.348320, 23.915512>,  <34.365189, 32.461273, 23.933823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.576153, 32.348320, 23.915512>,  <34.927761, 32.160065, 23.884993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576153, 32.348320, 23.915512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095887, 0.017747, 0.995234,
		0.467040, 0.882148, -0.060728,
		-0.879022, 0.470637, 0.076298,
		34.312447, 32.489510, 23.938402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.908333, 34.163086, 26.260376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.550617, 34.336117, 26.306194>,  <39.335987, 34.439938, 26.333685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.550617, 34.336117, 26.306194>,  <39.908333, 34.163086, 26.260376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550617, 34.336117, 26.306194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378666, 0.595142, 0.708814,
		0.238448, 0.677260, -0.696033,
		-0.894290, 0.432579, 0.114545,
		39.282330, 34.465889, 26.340557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060192, 34.836597, 26.397715>,  <39.908333, 34.163086, 26.260376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060192, 34.836597, 26.397715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.697277, 34.767014, 26.550846>,  <39.479527, 34.725262, 26.642725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.697277, 34.767014, 26.550846>,  <40.060192, 34.836597, 26.397715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697277, 34.767014, 26.550846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210248, 0.600768, 0.771280,
		-0.364166, 0.780265, -0.508497,
		-0.907292, -0.173963, 0.382829,
		39.425091, 34.714825, 26.665695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894657, 35.453735, 26.573339>,  <40.060192, 34.836597, 26.397715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894657, 35.453735, 26.573339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.648266, 35.208084, 26.770693>,  <39.500431, 35.060696, 26.889105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.648266, 35.208084, 26.770693>,  <39.894657, 35.453735, 26.573339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648266, 35.208084, 26.770693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149922, 0.523474, 0.838748,
		-0.773369, 0.590616, -0.230375,
		-0.615974, -0.614124, 0.493385,
		39.463474, 35.023846, 26.918709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637882, 35.921822, 27.011421>,  <39.894657, 35.453735, 26.573339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637882, 35.921822, 27.011421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.526154, 35.572765, 27.171665>,  <39.459118, 35.363331, 27.267811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.526154, 35.572765, 27.171665>,  <39.637882, 35.921822, 27.011421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526154, 35.572765, 27.171665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000797, 0.417003, 0.908905,
		-0.960199, 0.254192, -0.115780,
		-0.279317, -0.872637, 0.400608,
		39.442360, 35.310974, 27.291847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182858, 36.066578, 27.637785>,  <39.637882, 35.921822, 27.011421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182858, 36.066578, 27.637785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.231228, 35.679562, 27.726545>,  <39.260250, 35.447353, 27.779800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.231228, 35.679562, 27.726545>,  <39.182858, 36.066578, 27.637785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231228, 35.679562, 27.726545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136316, 0.205237, 0.969173,
		-0.983257, -0.147446, -0.107073,
		0.120925, -0.967542, 0.221900,
		39.267506, 35.389297, 27.793116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755409, 35.885155, 28.074287>,  <39.182858, 36.066578, 27.637785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755409, 35.885155, 28.074287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.021431, 35.593147, 28.137260>,  <39.181042, 35.417942, 28.175045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.021431, 35.593147, 28.137260>,  <38.755409, 35.885155, 28.074287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021431, 35.593147, 28.137260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104193, 0.118048, 0.987527,
		-0.739494, -0.673159, 0.002445,
		0.665051, -0.730015, 0.157434,
		39.220947, 35.374142, 28.184490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481659, 35.315098, 28.663277>,  <38.755409, 35.885155, 28.074287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481659, 35.315098, 28.663277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.877861, 35.348190, 28.619345>,  <39.115582, 35.368046, 28.592985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.877861, 35.348190, 28.619345>,  <38.481659, 35.315098, 28.663277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877861, 35.348190, 28.619345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097098, 0.144709, 0.984699,
		0.097356, -0.986010, 0.135302,
		0.990502, 0.082729, -0.109828,
		39.175011, 35.373009, 28.586397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795605, 34.826996, 29.117237>,  <38.481659, 35.315098, 28.663277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795605, 34.826996, 29.117237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109058, 35.068237, 29.057663>,  <39.297131, 35.212982, 29.021919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109058, 35.068237, 29.057663>,  <38.795605, 34.826996, 29.117237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109058, 35.068237, 29.057663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020382, 0.264577, 0.964149,
		0.620891, -0.752502, 0.219624,
		0.783632, 0.603108, -0.148936,
		39.344147, 35.249168, 29.012981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302658, 34.653255, 29.660702>,  <38.795605, 34.826996, 29.117237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302658, 34.653255, 29.660702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389423, 35.029430, 29.555994>,  <39.441483, 35.255135, 29.493170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389423, 35.029430, 29.555994>,  <39.302658, 34.653255, 29.660702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389423, 35.029430, 29.555994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035746, 0.260322, 0.964860,
		0.975537, -0.218645, 0.022850,
		0.216910, 0.940440, -0.261770,
		39.454494, 35.311562, 29.477463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764198, 34.817451, 30.077688>,  <39.302658, 34.653255, 29.660702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764198, 34.817451, 30.077688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.661728, 35.181702, 29.947992>,  <39.600246, 35.400253, 29.870174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.661728, 35.181702, 29.947992>,  <39.764198, 34.817451, 30.077688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661728, 35.181702, 29.947992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060389, 0.349854, 0.934856,
		0.964741, 0.219910, -0.144618,
		-0.256180, 0.910627, -0.324238,
		39.584873, 35.454891, 29.850721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315277, 35.292686, 30.395573>,  <39.764198, 34.817451, 30.077688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315277, 35.292686, 30.395573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992661, 35.504963, 30.291370>,  <39.799091, 35.632328, 30.228849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992661, 35.504963, 30.291370>,  <40.315277, 35.292686, 30.395573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992661, 35.504963, 30.291370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024623, 0.470427, 0.882095,
		0.590670, 0.705029, -0.392484,
		-0.806538, 0.530691, -0.260507,
		39.750698, 35.664169, 30.213219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505096, 35.973244, 30.473492>,  <40.315277, 35.292686, 30.395573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505096, 35.973244, 30.473492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.105751, 35.976410, 30.496140>,  <39.866142, 35.978310, 30.509727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.105751, 35.976410, 30.496140>,  <40.505096, 35.973244, 30.473492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105751, 35.976410, 30.496140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048167, 0.649949, 0.758450,
		-0.030795, 0.759937, -0.649267,
		-0.998365, 0.007917, 0.056619,
		39.806240, 35.978786, 30.513124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144520, 36.632065, 30.460098>,  <40.505096, 35.973244, 30.473492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144520, 36.632065, 30.460098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.914230, 36.405949, 30.696400>,  <39.776058, 36.270279, 30.838181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.914230, 36.405949, 30.696400>,  <40.144520, 36.632065, 30.460098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914230, 36.405949, 30.696400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022826, 0.733337, 0.679482,
		-0.817328, 0.377707, -0.435100,
		-0.575720, -0.565291, 0.590756,
		39.741516, 36.236362, 30.873627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455845, 37.142719, 30.859262>,  <40.144520, 36.632065, 30.460098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455845, 37.142719, 30.859262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.264935, 37.342178, 30.569834>,  <40.150387, 37.461853, 30.396177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.264935, 37.342178, 30.569834>,  <40.455845, 37.142719, 30.859262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264935, 37.342178, 30.569834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375857, 0.628447, 0.681018,
		0.794317, 0.596993, -0.112521,
		-0.477277, 0.498652, -0.723570,
		40.121750, 37.491776, 30.352762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501457, 37.909718, 30.500643>,  <40.455845, 37.142719, 30.859262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501457, 37.909718, 30.500643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.566685, 38.289608, 30.393734>,  <40.605824, 38.517540, 30.329588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.566685, 38.289608, 30.393734>,  <40.501457, 37.909718, 30.500643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566685, 38.289608, 30.393734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806461, -0.027744, -0.590636,
		-0.568356, 0.311861, 0.761390,
		0.163072, 0.949722, -0.267272,
		40.615608, 38.574524, 30.313553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885941, 38.085545, 30.433411>,  <40.501457, 37.909718, 30.500643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885941, 38.085545, 30.433411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.096535, 38.374271, 30.253725>,  <40.222893, 38.547508, 30.145914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.096535, 38.374271, 30.253725>,  <39.885941, 38.085545, 30.433411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096535, 38.374271, 30.253725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631905, -0.021253, -0.774754,
		-0.568779, 0.691755, 0.444932,
		0.526484, 0.721819, -0.449212,
		40.254478, 38.590816, 30.118961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323196, 38.627941, 30.311098>,  <39.885941, 38.085545, 30.433411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323196, 38.627941, 30.311098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635414, 38.699295, 30.071453>,  <39.822742, 38.742107, 29.927666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635414, 38.699295, 30.071453>,  <39.323196, 38.627941, 30.311098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635414, 38.699295, 30.071453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613705, 0.036470, -0.788693,
		-0.118839, 0.983285, 0.137940,
		0.780541, 0.178382, -0.599113,
		39.869576, 38.752811, 29.891720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330791, 39.309166, 30.011255>,  <39.323196, 38.627941, 30.311098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330791, 39.309166, 30.011255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.537041, 39.091988, 29.746122>,  <39.660789, 38.961681, 29.587042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.537041, 39.091988, 29.746122>,  <39.330791, 39.309166, 30.011255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537041, 39.091988, 29.746122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621338, 0.295737, -0.725588,
		0.589978, 0.785972, -0.184863,
		0.515621, -0.542943, -0.662833,
		39.691727, 38.929104, 29.547272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388405, 39.649067, 29.316277>,  <39.330791, 39.309166, 30.011255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388405, 39.649067, 29.316277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477917, 39.274673, 29.207573>,  <39.531624, 39.050037, 29.142351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477917, 39.274673, 29.207573>,  <39.388405, 39.649067, 29.316277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477917, 39.274673, 29.207573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256631, 0.212403, -0.942881,
		0.940247, 0.280736, -0.192673,
		0.223776, -0.935987, -0.271757,
		39.545048, 38.993877, 29.126045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474556, 39.699955, 28.678024>,  <39.388405, 39.649067, 29.316277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474556, 39.699955, 28.678024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.461792, 39.300709, 28.657051>,  <39.454132, 39.061161, 28.644468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.461792, 39.300709, 28.657051>,  <39.474556, 39.699955, 28.678024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461792, 39.300709, 28.657051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383002, 0.060664, -0.921753,
		0.923196, -0.009331, -0.384216,
		-0.031909, -0.998115, -0.052431,
		39.452221, 39.001274, 28.641321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776665, 39.499638, 28.044483>,  <39.474556, 39.699955, 28.678024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776665, 39.499638, 28.044483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560825, 39.185616, 28.166149>,  <39.431320, 38.997204, 28.239149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560825, 39.185616, 28.166149>,  <39.776665, 39.499638, 28.044483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560825, 39.185616, 28.166149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299546, -0.158618, -0.940804,
		0.786830, -0.598771, -0.149570,
		-0.539602, -0.785056, 0.304165,
		39.398945, 38.950100, 28.257399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784557, 39.033539, 27.463163>,  <39.776665, 39.499638, 28.044483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784557, 39.033539, 27.463163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.484230, 38.893944, 27.687477>,  <39.304031, 38.810188, 27.822065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.484230, 38.893944, 27.687477>,  <39.784557, 39.033539, 27.463163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484230, 38.893944, 27.687477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501272, -0.251799, -0.827843,
		0.430110, -0.902666, 0.014119,
		-0.750821, -0.348986, 0.560783,
		39.258984, 38.789249, 27.855711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548328, 38.381977, 27.093615>,  <39.784557, 39.033539, 27.463163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548328, 38.381977, 27.093615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.240273, 38.470989, 27.332733>,  <39.055439, 38.524395, 27.476204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.240273, 38.470989, 27.332733>,  <39.548328, 38.381977, 27.093615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240273, 38.470989, 27.332733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634771, -0.175043, -0.752613,
		-0.062837, -0.959084, 0.276062,
		-0.770141, 0.222528, 0.597799,
		39.009232, 38.537746, 27.512074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062824, 37.740189, 27.128311>,  <39.548328, 38.381977, 27.093615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062824, 37.740189, 27.128311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842903, 38.065350, 27.205145>,  <38.710949, 38.260448, 27.251245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842903, 38.065350, 27.205145>,  <39.062824, 37.740189, 27.128311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842903, 38.065350, 27.205145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699715, -0.322631, -0.637422,
		-0.456195, -0.484860, 0.746189,
		-0.549804, 0.812909, 0.192081,
		38.677963, 38.309223, 27.262770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440784, 37.416782, 27.295874>,  <39.062824, 37.740189, 27.128311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440784, 37.416782, 27.295874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.353924, 37.793949, 27.194874>,  <38.301807, 38.020248, 27.134274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.353924, 37.793949, 27.194874>,  <38.440784, 37.416782, 27.295874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353924, 37.793949, 27.194874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693235, -0.331075, -0.640167,
		-0.687220, 0.036030, 0.725555,
		-0.217148, 0.942916, -0.252499,
		38.288780, 38.076824, 27.119123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720581, 37.540081, 27.333809>,  <38.440784, 37.416782, 27.295874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720581, 37.540081, 27.333809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.871044, 37.803711, 27.073311>,  <37.961323, 37.961891, 26.917011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.871044, 37.803711, 27.073311>,  <37.720581, 37.540081, 27.333809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871044, 37.803711, 27.073311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524237, -0.428159, -0.736109,
		-0.763990, 0.618300, 0.184458,
		0.376158, 0.659079, -0.651245,
		37.983891, 38.001434, 26.877937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134045, 37.827465, 26.965578>,  <37.720581, 37.540081, 27.333809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134045, 37.827465, 26.965578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.444042, 37.936901, 26.737705>,  <37.630039, 38.002563, 26.600983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.444042, 37.936901, 26.737705>,  <37.134045, 37.827465, 26.965578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444042, 37.936901, 26.737705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545420, -0.165781, -0.821604,
		-0.319226, 0.947452, 0.020743,
		0.774991, 0.273591, -0.569681,
		37.676540, 38.018978, 26.566801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890064, 38.357285, 26.442322>,  <37.134045, 37.827465, 26.965578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890064, 38.357285, 26.442322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221207, 38.179966, 26.304836>,  <37.419891, 38.073574, 26.222345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221207, 38.179966, 26.304836>,  <36.890064, 38.357285, 26.442322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221207, 38.179966, 26.304836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441764, -0.137628, -0.886512,
		0.345686, 0.885745, -0.309770,
		0.827856, -0.443300, -0.343714,
		37.469563, 38.046974, 26.201721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557816, 39.097622, 26.604723>,  <36.890064, 38.357285, 26.442322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557816, 39.097622, 26.604723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.242104, 39.338852, 26.558535>,  <36.052677, 39.483589, 26.530823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.242104, 39.338852, 26.558535>,  <36.557816, 39.097622, 26.604723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242104, 39.338852, 26.558535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040950, 0.239331, 0.970074,
		0.612662, 0.760935, -0.213596,
		-0.789283, 0.603074, -0.115469,
		36.005318, 39.519775, 26.523893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709118, 39.847969, 26.956432>,  <36.557816, 39.097622, 26.604723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709118, 39.847969, 26.956432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.313751, 39.801224, 26.917713>,  <36.076530, 39.773178, 26.894482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.313751, 39.801224, 26.917713>,  <36.709118, 39.847969, 26.956432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313751, 39.801224, 26.917713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118101, 0.191905, 0.974282,
		-0.095283, 0.974431, -0.203484,
		-0.988420, -0.116864, -0.096796,
		36.017227, 39.766163, 26.888674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423302, 40.320580, 27.361969>,  <36.709118, 39.847969, 26.956432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423302, 40.320580, 27.361969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.114059, 40.072926, 27.306860>,  <35.928513, 39.924335, 27.273794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.114059, 40.072926, 27.306860>,  <36.423302, 40.320580, 27.361969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114059, 40.072926, 27.306860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282523, 0.141668, 0.948742,
		-0.567878, 0.772403, -0.284444,
		-0.773108, -0.619131, -0.137771,
		35.882126, 39.887188, 27.265528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881386, 40.545372, 27.710649>,  <36.423302, 40.320580, 27.361969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881386, 40.545372, 27.710649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.770950, 40.161766, 27.685148>,  <35.704689, 39.931602, 27.669847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.770950, 40.161766, 27.685148>,  <35.881386, 40.545372, 27.710649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770950, 40.161766, 27.685148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141105, -0.025169, 0.989675,
		-0.950716, 0.282239, -0.128373,
		-0.276094, -0.959014, -0.063754,
		35.688122, 39.874062, 27.666021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382935, 40.445461, 28.286455>,  <35.881386, 40.545372, 27.710649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382935, 40.445461, 28.286455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.484940, 40.082767, 28.152109>,  <35.546143, 39.865150, 28.071501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.484940, 40.082767, 28.152109>,  <35.382935, 40.445461, 28.286455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484940, 40.082767, 28.152109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109822, -0.372261, 0.921608,
		-0.960682, -0.198133, -0.194509,
		0.255009, -0.906733, -0.335865,
		35.561443, 39.810749, 28.051350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860832, 40.027729, 28.511385>,  <35.382935, 40.445461, 28.286455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860832, 40.027729, 28.511385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.157684, 39.765263, 28.456699>,  <35.335796, 39.607784, 28.423887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.157684, 39.765263, 28.456699>,  <34.860832, 40.027729, 28.511385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157684, 39.765263, 28.456699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026971, -0.174576, 0.984274,
		-0.669711, -0.734149, -0.111861,
		0.742132, -0.656163, -0.136716,
		35.380325, 39.568413, 28.415686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735577, 39.418083, 28.802124>,  <34.860832, 40.027729, 28.511385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735577, 39.418083, 28.802124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.135311, 39.432602, 28.803835>,  <35.375153, 39.441315, 28.804861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.135311, 39.432602, 28.803835>,  <34.735577, 39.418083, 28.802124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135311, 39.432602, 28.803835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006392, -0.288755, 0.957382,
		0.035986, -0.956715, -0.288794,
		0.999332, 0.036298, 0.004275,
		35.435112, 39.443493, 28.805117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945465, 38.848518, 29.159658>,  <34.735577, 39.418083, 28.802124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945465, 38.848518, 29.159658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.240269, 39.118649, 29.170591>,  <35.417152, 39.280727, 29.177151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.240269, 39.118649, 29.170591>,  <34.945465, 38.848518, 29.159658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240269, 39.118649, 29.170591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106926, -0.156434, 0.981884,
		0.667369, -0.720736, -0.187503,
		0.737011, 0.675328, 0.027334,
		35.461372, 39.321247, 29.178791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281590, 38.548069, 29.643038>,  <34.945465, 38.848518, 29.159658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281590, 38.548069, 29.643038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.482338, 38.893711, 29.658285>,  <35.602787, 39.101097, 29.667433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.482338, 38.893711, 29.658285>,  <35.281590, 38.548069, 29.643038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482338, 38.893711, 29.658285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157927, -0.134874, 0.978196,
		0.850404, -0.484907, -0.204154,
		0.501869, 0.864103, 0.038118,
		35.632900, 39.152943, 29.669720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904053, 38.443645, 30.000961>,  <35.281590, 38.548069, 29.643038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904053, 38.443645, 30.000961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.883465, 38.840427, 30.047226>,  <35.871113, 39.078495, 30.074986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.883465, 38.840427, 30.047226>,  <35.904053, 38.443645, 30.000961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883465, 38.840427, 30.047226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253609, -0.099037, 0.962224,
		0.965937, 0.078859, -0.246471,
		-0.051471, 0.991954, 0.115663,
		35.868023, 39.138012, 30.081924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478481, 38.716278, 30.378546>,  <35.904053, 38.443645, 30.000961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478481, 38.716278, 30.378546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.211918, 39.005814, 30.450056>,  <36.051979, 39.179535, 30.492962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.211918, 39.005814, 30.450056>,  <36.478481, 38.716278, 30.378546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211918, 39.005814, 30.450056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304724, 0.045579, 0.951350,
		0.680473, 0.688465, -0.250945,
		-0.666408, 0.723836, 0.178776,
		36.011997, 39.222965, 30.503689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748840, 39.237206, 30.746702>,  <36.478481, 38.716278, 30.378546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748840, 39.237206, 30.746702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361813, 39.289619, 30.833080>,  <36.129597, 39.321068, 30.884907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361813, 39.289619, 30.833080>,  <36.748840, 39.237206, 30.746702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361813, 39.289619, 30.833080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240441, 0.215845, 0.946361,
		0.077397, 0.967595, -0.240352,
		-0.967573, 0.131036, 0.215944,
		36.071541, 39.328930, 30.897863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.500961, 39.146435, 22.713102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190907, 38.928955, 22.841825>,  <35.004875, 38.798470, 22.919060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190907, 38.928955, 22.841825>,  <35.500961, 39.146435, 22.713102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190907, 38.928955, 22.841825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085083, 0.594544, 0.799549,
		-0.626041, 0.592377, -0.507111,
		-0.775135, -0.543697, 0.321808,
		34.958366, 38.765846, 22.938368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936165, 39.551315, 22.939560>,  <35.500961, 39.146435, 22.713102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936165, 39.551315, 22.939560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903774, 39.209248, 23.144356>,  <34.884338, 39.004009, 23.267233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903774, 39.209248, 23.144356>,  <34.936165, 39.551315, 22.939560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903774, 39.209248, 23.144356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119540, 0.501638, 0.856779,
		-0.989522, 0.130582, 0.061605,
		-0.080976, -0.855166, 0.511991,
		34.879482, 38.952698, 23.297953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970890, 39.949345, 23.494553>,  <34.936165, 39.551315, 22.939560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970890, 39.949345, 23.494553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960251, 39.558990, 23.581221>,  <34.953869, 39.324780, 23.633221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960251, 39.558990, 23.581221>,  <34.970890, 39.949345, 23.494553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960251, 39.558990, 23.581221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031137, 0.215830, 0.975934,
		-0.999161, 0.032703, 0.024646,
		-0.026597, -0.975883, 0.216668,
		34.952271, 39.266224, 23.646221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478687, 39.892776, 24.085611>,  <34.970890, 39.949345, 23.494553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478687, 39.892776, 24.085611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712959, 39.574524, 24.147505>,  <34.853523, 39.383572, 24.184641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712959, 39.574524, 24.147505>,  <34.478687, 39.892776, 24.085611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712959, 39.574524, 24.147505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150268, 0.294175, 0.943865,
		-0.796490, -0.529553, 0.291852,
		0.585682, -0.795635, 0.154732,
		34.888664, 39.335835, 24.193924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218075, 39.487644, 24.740662>,  <34.478687, 39.892776, 24.085611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218075, 39.487644, 24.740662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607288, 39.421856, 24.675983>,  <34.840816, 39.382381, 24.637177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607288, 39.421856, 24.675983>,  <34.218075, 39.487644, 24.740662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607288, 39.421856, 24.675983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181737, 0.115073, 0.976591,
		-0.142017, -0.979646, 0.141861,
		0.973038, -0.164474, -0.161695,
		34.899200, 39.372513, 24.627476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493065, 39.238575, 25.312326>,  <34.218075, 39.487644, 24.740662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493065, 39.238575, 25.312326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871719, 39.237713, 25.183403>,  <35.098911, 39.237194, 25.106049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871719, 39.237713, 25.183403>,  <34.493065, 39.238575, 25.312326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871719, 39.237713, 25.183403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315195, 0.215239, 0.924297,
		0.067377, -0.976559, 0.204433,
		0.946632, -0.002160, -0.322309,
		35.155708, 39.237064, 25.086710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860249, 38.835510, 25.726818>,  <34.493065, 39.238575, 25.312326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860249, 38.835510, 25.726818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142345, 39.063278, 25.557873>,  <35.311604, 39.199940, 25.456507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142345, 39.063278, 25.557873>,  <34.860249, 38.835510, 25.726818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142345, 39.063278, 25.557873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454884, 0.093516, 0.885627,
		0.543792, -0.816710, -0.193069,
		0.705245, 0.569421, -0.422362,
		35.353920, 39.234104, 25.431164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534527, 38.635307, 26.080570>,  <34.860249, 38.835510, 25.726818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534527, 38.635307, 26.080570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558853, 39.008312, 25.938173>,  <35.573448, 39.232113, 25.852736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558853, 39.008312, 25.938173>,  <35.534527, 38.635307, 26.080570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558853, 39.008312, 25.938173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535367, 0.270536, 0.800120,
		0.842427, -0.239249, -0.482780,
		0.060819, 0.932508, -0.355993,
		35.577099, 39.288063, 25.831375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264095, 38.739334, 26.029465>,  <35.534527, 38.635307, 26.080570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264095, 38.739334, 26.029465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056969, 39.079769, 26.064152>,  <35.932693, 39.284031, 26.084963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056969, 39.079769, 26.064152>,  <36.264095, 38.739334, 26.029465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056969, 39.079769, 26.064152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545914, 0.250685, 0.799459,
		0.658671, 0.461309, -0.594429,
		-0.517812, 0.851088, 0.086716,
		35.901627, 39.335094, 26.090166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893112, 38.556057, 25.714172>,  <36.264095, 38.739334, 26.029465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893112, 38.556057, 25.714172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139507, 38.241253, 25.727842>,  <37.287346, 38.052368, 25.736044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139507, 38.241253, 25.727842>,  <36.893112, 38.556057, 25.714172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139507, 38.241253, 25.727842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144270, -0.155353, -0.977267,
		0.774431, 0.597056, -0.209238,
		0.615989, -0.787013, 0.034173,
		37.324303, 38.005150, 25.738094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350739, 38.569332, 25.109140>,  <36.893112, 38.556057, 25.714172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350739, 38.569332, 25.109140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409088, 38.187798, 25.214149>,  <37.444099, 37.958878, 25.277155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409088, 38.187798, 25.214149>,  <37.350739, 38.569332, 25.109140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409088, 38.187798, 25.214149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005561, -0.266149, -0.963916,
		0.989288, 0.139149, -0.044128,
		0.145873, -0.953835, 0.262524,
		37.452850, 37.901646, 25.292906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897495, 38.361309, 24.713655>,  <37.350739, 38.569332, 25.109140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897495, 38.361309, 24.713655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729317, 38.020054, 24.837187>,  <37.628410, 37.815300, 24.911306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729317, 38.020054, 24.837187>,  <37.897495, 38.361309, 24.713655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729317, 38.020054, 24.837187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004438, -0.342305, -0.939578,
		0.907306, -0.393674, 0.147707,
		-0.420448, -0.853140, 0.308828,
		37.603184, 37.764111, 24.929834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418625, 37.733917, 24.516783>,  <37.897495, 38.361309, 24.713655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418625, 37.733917, 24.516783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034328, 37.626621, 24.545135>,  <37.803749, 37.562244, 24.562147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034328, 37.626621, 24.545135>,  <38.418625, 37.733917, 24.516783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034328, 37.626621, 24.545135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028534, -0.349658, -0.936443,
		0.275972, -0.897657, 0.343585,
		-0.960742, -0.268236, 0.070882,
		37.746105, 37.546150, 24.566401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415150, 37.125908, 24.146248>,  <38.418625, 37.733917, 24.516783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415150, 37.125908, 24.146248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024467, 37.209801, 24.164360>,  <37.790058, 37.260136, 24.175228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024467, 37.209801, 24.164360>,  <38.415150, 37.125908, 24.146248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024467, 37.209801, 24.164360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127855, -0.399412, -0.907813,
		-0.172313, -0.892458, 0.416925,
		-0.976710, 0.209734, 0.045281,
		37.731453, 37.272720, 24.177944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980572, 36.497211, 24.016783>,  <38.415150, 37.125908, 24.146248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980572, 36.497211, 24.016783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741856, 36.807613, 23.935137>,  <37.598625, 36.993855, 23.886148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741856, 36.807613, 23.935137>,  <37.980572, 36.497211, 24.016783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741856, 36.807613, 23.935137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122719, -0.339660, -0.932508,
		-0.792961, -0.531459, 0.297934,
		-0.596786, 0.776005, -0.204117,
		37.562820, 37.040413, 23.873901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402946, 36.176727, 23.606897>,  <37.980572, 36.497211, 24.016783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402946, 36.176727, 23.606897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373352, 36.568668, 23.532684>,  <37.355595, 36.803833, 23.488157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373352, 36.568668, 23.532684>,  <37.402946, 36.176727, 23.606897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373352, 36.568668, 23.532684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279244, -0.198953, -0.939383,
		-0.957366, -0.017691, 0.288336,
		-0.073984, 0.979849, -0.185530,
		37.351158, 36.862621, 23.477026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733734, 36.293617, 23.405878>,  <37.402946, 36.176727, 23.606897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733734, 36.293617, 23.405878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973793, 36.589092, 23.283133>,  <37.117828, 36.766376, 23.209484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973793, 36.589092, 23.283133>,  <36.733734, 36.293617, 23.405878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973793, 36.589092, 23.283133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084997, -0.440354, -0.893792,
		-0.795363, 0.510321, -0.327063,
		0.600144, 0.738688, -0.306866,
		37.153835, 36.810699, 23.191072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378738, 36.602139, 22.860508>,  <36.733734, 36.293617, 23.405878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378738, 36.602139, 22.860508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758675, 36.701553, 22.784586>,  <36.986637, 36.761200, 22.739033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758675, 36.701553, 22.784586>,  <36.378738, 36.602139, 22.860508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758675, 36.701553, 22.784586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032719, -0.524636, -0.850698,
		-0.311007, 0.814240, -0.490191,
		0.949844, 0.248535, -0.189807,
		37.043629, 36.776115, 22.727644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312656, 36.836868, 22.220634>,  <36.378738, 36.602139, 22.860508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312656, 36.836868, 22.220634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703545, 36.767220, 22.269178>,  <36.938076, 36.725430, 22.298306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703545, 36.767220, 22.269178>,  <36.312656, 36.836868, 22.220634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703545, 36.767220, 22.269178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072639, -0.262902, -0.962084,
		0.199422, 0.948981, -0.244264,
		0.977218, -0.174117, 0.121361,
		36.996712, 36.714985, 22.305586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520702, 37.161541, 21.649500>,  <36.312656, 36.836868, 22.220634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520702, 37.161541, 21.649500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814049, 36.918495, 21.771465>,  <36.990055, 36.772667, 21.844645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814049, 36.918495, 21.771465>,  <36.520702, 37.161541, 21.649500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814049, 36.918495, 21.771465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162896, -0.278392, -0.946553,
		0.660030, 0.743839, -0.105185,
		0.733366, -0.607619, 0.304915,
		37.034058, 36.736210, 21.862940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067066, 37.330368, 21.136770>,  <36.520702, 37.161541, 21.649500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067066, 37.330368, 21.136770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144543, 36.978130, 21.309759>,  <37.191029, 36.766788, 21.413553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144543, 36.978130, 21.309759>,  <37.067066, 37.330368, 21.136770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144543, 36.978130, 21.309759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184835, -0.400173, -0.897607,
		0.963494, 0.253794, 0.085255,
		0.193691, -0.880596, 0.432475,
		37.202648, 36.713951, 21.439501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764164, 37.082104, 20.839298>,  <37.067066, 37.330368, 21.136770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764164, 37.082104, 20.839298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562534, 36.772491, 20.992550>,  <37.441555, 36.586723, 21.084501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562534, 36.772491, 20.992550>,  <37.764164, 37.082104, 20.839298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562534, 36.772491, 20.992550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154240, -0.517161, -0.841876,
		0.849774, -0.365276, 0.380075,
		-0.504077, -0.774027, 0.383130,
		37.411312, 36.540283, 21.107489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068966, 36.458965, 20.545544>,  <37.764164, 37.082104, 20.839298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068966, 36.458965, 20.545544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699215, 36.338173, 20.638783>,  <37.477364, 36.265697, 20.694725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699215, 36.338173, 20.638783>,  <38.068966, 36.458965, 20.545544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699215, 36.338173, 20.638783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023532, -0.564727, -0.824942,
		0.380756, -0.768042, 0.514914,
		-0.924376, -0.301985, 0.233096,
		37.421902, 36.247578, 20.708712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.349047, 33.701256, 23.419418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.739363, 33.784225, 23.447155>,  <30.973553, 33.834007, 23.463797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.739363, 33.784225, 23.447155>,  <30.349047, 33.701256, 23.419418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739363, 33.784225, 23.447155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057164, -0.064156, 0.996301,
		0.211109, -0.976145, -0.050745,
		0.975790, 0.207427, 0.069344,
		31.032099, 33.846455, 23.467958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629713, 33.169270, 23.944040>,  <30.349047, 33.701256, 23.419418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629713, 33.169270, 23.944040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.862383, 33.493111, 23.912558>,  <31.001986, 33.687416, 23.893667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.862383, 33.493111, 23.912558>,  <30.629713, 33.169270, 23.944040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862383, 33.493111, 23.912558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015746, 0.085538, 0.996210,
		0.813268, -0.580712, 0.037008,
		0.581677, 0.809603, -0.078709,
		31.036886, 33.735992, 23.888945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273434, 33.035110, 24.352509>,  <30.629713, 33.169270, 23.944040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273434, 33.035110, 24.352509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.250345, 33.432671, 24.314920>,  <31.236492, 33.671207, 24.292368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.250345, 33.432671, 24.314920>,  <31.273434, 33.035110, 24.352509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250345, 33.432671, 24.314920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113488, 0.100048, 0.988489,
		0.991861, 0.046394, -0.118570,
		-0.057722, 0.993900, -0.093969,
		31.233028, 33.730843, 24.286730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774611, 33.294052, 24.834023>,  <31.273434, 33.035110, 24.352509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774611, 33.294052, 24.834023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.543039, 33.612797, 24.764906>,  <31.404097, 33.804043, 24.723436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.543039, 33.612797, 24.764906>,  <31.774611, 33.294052, 24.834023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543039, 33.612797, 24.764906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081908, 0.267676, 0.960021,
		0.811254, 0.541631, -0.220234,
		-0.578928, 0.796860, -0.172789,
		31.369360, 33.851856, 24.713070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152161, 33.801735, 25.097748>,  <31.774611, 33.294052, 24.834023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152161, 33.801735, 25.097748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.779499, 33.945946, 25.079710>,  <31.555901, 34.032471, 25.068888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.779499, 33.945946, 25.079710>,  <32.152161, 33.801735, 25.097748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779499, 33.945946, 25.079710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143837, 0.479944, 0.865428,
		0.333653, 0.799796, -0.499001,
		-0.931658, 0.360527, -0.045094,
		31.500002, 34.054104, 25.066181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252304, 34.528435, 25.315302>,  <32.152161, 33.801735, 25.097748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252304, 34.528435, 25.315302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.865490, 34.436771, 25.359730>,  <31.633402, 34.381775, 25.386387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.865490, 34.436771, 25.359730>,  <32.252304, 34.528435, 25.315302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865490, 34.436771, 25.359730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037972, 0.561034, 0.826921,
		-0.251811, 0.795441, -0.551239,
		-0.967031, -0.229159, 0.111070,
		31.575380, 34.368023, 25.393051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782595, 35.164364, 25.278809>,  <32.252304, 34.528435, 25.315302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782595, 35.164364, 25.278809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.644444, 34.869686, 25.511356>,  <31.561552, 34.692879, 25.650885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.644444, 34.869686, 25.511356>,  <31.782595, 35.164364, 25.278809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644444, 34.869686, 25.511356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285149, 0.507821, 0.812901,
		-0.894094, 0.446536, 0.034678,
		-0.345379, -0.736698, 0.581368,
		31.540831, 34.648678, 25.685766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794176, 35.506359, 25.850676>,  <31.782595, 35.164364, 25.278809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794176, 35.506359, 25.850676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.712034, 35.135586, 25.976292>,  <31.662748, 34.913120, 26.051662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.712034, 35.135586, 25.976292>,  <31.794176, 35.506359, 25.850676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712034, 35.135586, 25.976292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181918, 0.279135, 0.942862,
		-0.961631, 0.250753, 0.111303,
		-0.205356, -0.926934, 0.314042,
		31.650427, 34.857506, 26.070505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316999, 35.551022, 26.422394>,  <31.794176, 35.506359, 25.850676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316999, 35.551022, 26.422394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.513525, 35.204483, 26.458309>,  <31.631439, 34.996559, 26.479858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.513525, 35.204483, 26.458309>,  <31.316999, 35.551022, 26.422394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513525, 35.204483, 26.458309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230251, 0.228612, 0.945897,
		-0.839998, -0.444056, 0.311796,
		0.491312, -0.866343, 0.089789,
		31.660919, 34.944580, 26.485247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123714, 35.159542, 27.137123>,  <31.316999, 35.551022, 26.422394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123714, 35.159542, 27.137123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.454781, 34.979336, 27.003258>,  <31.653421, 34.871212, 26.922937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.454781, 34.979336, 27.003258>,  <31.123714, 35.159542, 27.137123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454781, 34.979336, 27.003258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413216, 0.085678, 0.906594,
		-0.379762, -0.888647, 0.257074,
		0.827667, -0.450517, -0.334665,
		31.703081, 34.844181, 26.902859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330017, 34.626526, 27.709711>,  <31.123714, 35.159542, 27.137123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330017, 34.626526, 27.709711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.677282, 34.672180, 27.516520>,  <31.885641, 34.699574, 27.400604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.677282, 34.672180, 27.516520>,  <31.330017, 34.626526, 27.709711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677282, 34.672180, 27.516520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478548, 0.065313, 0.875629,
		0.131487, -0.991316, 0.002082,
		0.868161, 0.114137, -0.482980,
		31.937731, 34.706421, 27.371626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859846, 34.070232, 27.998034>,  <31.330017, 34.626526, 27.709711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859846, 34.070232, 27.998034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.078510, 34.355827, 27.823044>,  <32.209709, 34.527184, 27.718050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.078510, 34.355827, 27.823044>,  <31.859846, 34.070232, 27.998034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078510, 34.355827, 27.823044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641041, -0.020712, 0.767227,
		0.538729, -0.699852, -0.469018,
		0.546660, 0.713987, -0.437475,
		32.242508, 34.570023, 27.691801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442474, 33.885468, 28.151979>,  <31.859846, 34.070232, 27.998034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442474, 33.885468, 28.151979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.494442, 34.271378, 28.060478>,  <32.525623, 34.502926, 28.005577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.494442, 34.271378, 28.060478>,  <32.442474, 33.885468, 28.151979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494442, 34.271378, 28.060478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690214, 0.077635, 0.719428,
		0.711847, -0.251353, -0.655817,
		0.129916, 0.964777, -0.228752,
		32.533417, 34.560810, 27.991852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139988, 34.083885, 28.304712>,  <32.442474, 33.885468, 28.151979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139988, 34.083885, 28.304712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.972286, 34.446423, 28.283674>,  <32.871666, 34.663944, 28.271051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.972286, 34.446423, 28.283674>,  <33.139988, 34.083885, 28.304712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972286, 34.446423, 28.283674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390642, 0.232391, 0.890726,
		0.819529, 0.352892, -0.451486,
		-0.419251, 0.906345, -0.052597,
		32.846512, 34.718327, 28.267895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542835, 34.347454, 27.770920>,  <33.139988, 34.083885, 28.304712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542835, 34.347454, 27.770920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.876534, 34.164494, 27.647751>,  <34.076752, 34.054718, 27.573851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.876534, 34.164494, 27.647751>,  <33.542835, 34.347454, 27.770920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876534, 34.164494, 27.647751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395771, -0.107893, -0.911989,
		0.383924, 0.882690, -0.271037,
		0.834246, -0.457404, -0.307920,
		34.126808, 34.027271, 27.555374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627823, 34.547909, 27.031523>,  <33.542835, 34.347454, 27.770920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627823, 34.547909, 27.031523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.823986, 34.207512, 27.106686>,  <33.941685, 34.003273, 27.151783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.823986, 34.207512, 27.106686>,  <33.627823, 34.547909, 27.031523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823986, 34.207512, 27.106686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221318, -0.330160, -0.917612,
		0.842922, 0.408418, -0.350254,
		0.490409, -0.850993, 0.187909,
		33.971107, 33.952213, 27.163059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053829, 34.477638, 26.454029>,  <33.627823, 34.547909, 27.031523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053829, 34.477638, 26.454029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.038113, 34.124454, 26.641148>,  <34.028683, 33.912544, 26.753418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.038113, 34.124454, 26.641148>,  <34.053829, 34.477638, 26.454029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038113, 34.124454, 26.641148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100523, -0.469275, -0.877312,
		0.994159, 0.012555, 0.107195,
		-0.039289, -0.882963, 0.467796,
		34.026325, 33.859566, 26.781487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550823, 34.057728, 26.129728>,  <34.053829, 34.477638, 26.454029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550823, 34.057728, 26.129728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.261471, 33.827950, 26.282951>,  <34.087860, 33.690083, 26.374886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.261471, 33.827950, 26.282951>,  <34.550823, 34.057728, 26.129728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261471, 33.827950, 26.282951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025664, -0.576779, -0.816497,
		0.689974, -0.580806, 0.431972,
		-0.723379, -0.574448, 0.383057,
		34.044456, 33.655617, 26.397869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876106, 33.411510, 26.026926>,  <34.550823, 34.057728, 26.129728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876106, 33.411510, 26.026926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.482037, 33.372688, 26.083521>,  <34.245594, 33.349396, 26.117477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.482037, 33.372688, 26.083521>,  <34.876106, 33.411510, 26.026926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482037, 33.372688, 26.083521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075942, -0.492810, -0.866817,
		0.153852, -0.864708, 0.478132,
		-0.985171, -0.097051, 0.141487,
		34.186485, 33.343575, 26.125967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714352, 32.737267, 25.862650>,  <34.876106, 33.411510, 26.026926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714352, 32.737267, 25.862650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.355148, 32.913132, 25.869360>,  <34.139626, 33.018650, 25.873386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.355148, 32.913132, 25.869360>,  <34.714352, 32.737267, 25.862650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355148, 32.913132, 25.869360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260743, -0.501081, -0.825185,
		-0.354398, -0.745395, 0.564613,
		-0.898006, 0.439663, 0.016774,
		34.085747, 33.045033, 25.874392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208622, 32.232174, 25.766973>,  <34.714352, 32.737267, 25.862650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208622, 32.232174, 25.766973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.020683, 32.569508, 25.662642>,  <33.907921, 32.771908, 25.600042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.020683, 32.569508, 25.662642>,  <34.208622, 32.232174, 25.766973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020683, 32.569508, 25.662642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195214, -0.387423, -0.900997,
		-0.860891, -0.372414, 0.346661,
		-0.469848, 0.843333, -0.260828,
		33.879730, 32.822506, 25.584393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514694, 32.034286, 25.414255>,  <34.208622, 32.232174, 25.766973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514694, 32.034286, 25.414255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.629730, 32.401737, 25.305876>,  <33.698753, 32.622208, 25.240849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.629730, 32.401737, 25.305876>,  <33.514694, 32.034286, 25.414255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629730, 32.401737, 25.305876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011071, -0.279693, -0.960025,
		-0.957690, 0.279093, -0.070267,
		0.287590, 0.918629, -0.270949,
		33.716007, 32.677326, 25.224590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039520, 32.267586, 24.824373>,  <33.514694, 32.034286, 25.414255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039520, 32.267586, 24.824373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.390141, 32.459732, 24.812372>,  <33.600513, 32.575020, 24.805172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.390141, 32.459732, 24.812372>,  <33.039520, 32.267586, 24.824373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390141, 32.459732, 24.812372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032900, -0.121991, -0.991986,
		-0.480178, 0.868542, -0.122736,
		0.876554, 0.480368, -0.030003,
		33.653107, 32.603844, 24.803371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142670, 32.603180, 24.162924>,  <33.039520, 32.267586, 24.824373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142670, 32.603180, 24.162924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.521614, 32.664345, 24.275436>,  <33.748981, 32.701046, 24.342945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.521614, 32.664345, 24.275436>,  <33.142670, 32.603180, 24.162924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521614, 32.664345, 24.275436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264965, 0.118685, -0.956926,
		-0.179713, 0.981087, 0.071921,
		0.947363, 0.152915, 0.281283,
		33.805824, 32.710220, 24.359821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227497, 33.159176, 24.007654>,  <33.142670, 32.603180, 24.162924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227497, 33.159176, 24.007654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.586262, 32.983269, 23.989090>,  <33.801521, 32.877724, 23.977951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.586262, 32.983269, 23.989090>,  <33.227497, 33.159176, 24.007654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586262, 32.983269, 23.989090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005063, 0.115160, -0.993334,
		0.442182, 0.890697, 0.105515,
		0.896911, -0.439768, -0.046412,
		33.855335, 32.851337, 23.975166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372318, 33.382011, 23.310699>,  <33.227497, 33.159176, 24.007654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372318, 33.382011, 23.310699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.631432, 33.090797, 23.400454>,  <33.786900, 32.916069, 23.454306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.631432, 33.090797, 23.400454>,  <33.372318, 33.382011, 23.310699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631432, 33.090797, 23.400454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243776, -0.080963, -0.966446,
		0.721770, 0.680747, 0.125030,
		0.647782, -0.728031, 0.224386,
		33.825768, 32.872387, 23.467770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991219, 33.573967, 22.984423>,  <33.372318, 33.382011, 23.310699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991219, 33.573967, 22.984423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.972355, 33.177723, 23.035759>,  <33.961037, 32.939976, 23.066561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.972355, 33.177723, 23.035759>,  <33.991219, 33.573967, 22.984423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972355, 33.177723, 23.035759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117801, -0.133101, -0.984077,
		0.991917, -0.031288, 0.122972,
		-0.047158, -0.990608, 0.128339,
		33.958206, 32.880539, 23.074261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532372, 33.242989, 22.496189>,  <33.991219, 33.573967, 22.984423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532372, 33.242989, 22.496189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.247723, 32.976887, 22.586544>,  <34.076935, 32.817226, 22.640757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.247723, 32.976887, 22.586544>,  <34.532372, 33.242989, 22.496189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247723, 32.976887, 22.586544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161804, -0.157688, -0.974143,
		0.683676, -0.729771, 0.004573,
		-0.711622, -0.665258, 0.225888,
		34.034237, 32.777309, 22.654310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341774, 32.964634, 22.378008>,  <34.532372, 33.242989, 22.496189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341774, 32.964634, 22.378008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.682812, 33.074375, 22.200104>,  <35.887436, 33.140221, 22.093361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.682812, 33.074375, 22.200104>,  <35.341774, 32.964634, 22.378008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682812, 33.074375, 22.200104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328808, 0.379850, 0.864638,
		0.406169, -0.883424, 0.233644,
		0.852592, 0.274365, -0.444761,
		35.938591, 33.156681, 22.066677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868195, 32.736938, 22.824451>,  <35.341774, 32.964634, 22.378008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868195, 32.736938, 22.824451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.040680, 33.018745, 22.598986>,  <36.144169, 33.187828, 22.463707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.040680, 33.018745, 22.598986>,  <35.868195, 32.736938, 22.824451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040680, 33.018745, 22.598986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529608, 0.308139, 0.790294,
		0.730460, -0.639305, -0.240243,
		0.431211, 0.704514, -0.563665,
		36.170044, 33.230099, 22.429886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450439, 32.588135, 22.890135>,  <35.868195, 32.736938, 22.824451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450439, 32.588135, 22.890135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.472054, 32.968945, 22.769648>,  <36.485023, 33.197430, 22.697355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.472054, 32.968945, 22.769648>,  <36.450439, 32.588135, 22.890135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472054, 32.968945, 22.769648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620885, 0.204221, 0.756833,
		0.782037, -0.227918, -0.580061,
		0.054035, 0.952023, -0.301219,
		36.488266, 33.254551, 22.679281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191998, 32.686676, 22.895483>,  <36.450439, 32.588135, 22.890135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191998, 32.686676, 22.895483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000553, 33.037880, 22.893080>,  <36.885689, 33.248600, 22.891638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000553, 33.037880, 22.893080>,  <37.191998, 32.686676, 22.895483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000553, 33.037880, 22.893080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614220, 0.339692, 0.712281,
		0.627430, 0.337212, -0.701869,
		-0.478609, 0.878008, -0.006010,
		36.856972, 33.301281, 22.891277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673538, 33.178944, 22.773224>,  <37.191998, 32.686676, 22.895483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673538, 33.178944, 22.773224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.370869, 33.365677, 22.956316>,  <37.189266, 33.477718, 23.066172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.370869, 33.365677, 22.956316>,  <37.673538, 33.178944, 22.773224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370869, 33.365677, 22.956316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639901, 0.385230, 0.664925,
		0.134078, 0.796030, -0.590219,
		-0.756670, 0.466834, 0.457730,
		37.143867, 33.505726, 23.093636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123444, 33.739620, 22.833408>,  <37.673538, 33.178944, 22.773224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123444, 33.739620, 22.833408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.802639, 33.781063, 23.068710>,  <37.610157, 33.805931, 23.209892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.802639, 33.781063, 23.068710>,  <38.123444, 33.739620, 22.833408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802639, 33.781063, 23.068710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589716, 0.293889, 0.752240,
		-0.094941, 0.950208, -0.296803,
		-0.802011, 0.103611, 0.588255,
		37.562035, 33.812145, 23.245186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258205, 34.362743, 23.217813>,  <38.123444, 33.739620, 22.833408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258205, 34.362743, 23.217813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983620, 34.160851, 23.427197>,  <37.818867, 34.039715, 23.552826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983620, 34.160851, 23.427197>,  <38.258205, 34.362743, 23.217813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983620, 34.160851, 23.427197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413935, 0.320607, 0.851979,
		-0.597849, 0.801531, -0.011158,
		-0.686465, -0.504736, 0.523457,
		37.777679, 34.009430, 23.584234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025372, 34.837013, 23.819473>,  <38.258205, 34.362743, 23.217813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025372, 34.837013, 23.819473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.919392, 34.465740, 23.924000>,  <37.855804, 34.242977, 23.986715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.919392, 34.465740, 23.924000>,  <38.025372, 34.837013, 23.819473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919392, 34.465740, 23.924000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299055, 0.178541, 0.937384,
		-0.916715, 0.326509, 0.230271,
		-0.264951, -0.928178, 0.261315,
		37.839905, 34.187286, 24.002394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546173, 34.827503, 24.493217>,  <38.025372, 34.837013, 23.819473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546173, 34.827503, 24.493217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.724209, 34.470097, 24.469490>,  <37.831032, 34.255653, 24.455254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.724209, 34.470097, 24.469490>,  <37.546173, 34.827503, 24.493217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724209, 34.470097, 24.469490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423321, 0.151572, 0.893211,
		-0.789110, -0.422670, 0.445709,
		0.445090, -0.893519, -0.059318,
		37.857735, 34.202042, 24.451694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380318, 34.360889, 25.123451>,  <37.546173, 34.827503, 24.493217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380318, 34.360889, 25.123451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.726887, 34.228680, 24.973751>,  <37.934830, 34.149353, 24.883930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.726887, 34.228680, 24.973751>,  <37.380318, 34.360889, 25.123451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726887, 34.228680, 24.973751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449785, 0.191202, 0.872431,
		-0.216803, -0.924227, 0.314327,
		0.866424, -0.330525, -0.374250,
		37.986813, 34.129524, 24.861475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694321, 33.983814, 25.631975>,  <37.380318, 34.360889, 25.123451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694321, 33.983814, 25.631975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.020283, 34.006390, 25.401237>,  <38.215858, 34.019936, 25.262794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.020283, 34.006390, 25.401237>,  <37.694321, 33.983814, 25.631975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020283, 34.006390, 25.401237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558979, 0.186567, 0.807920,
		0.153208, -0.980820, 0.120493,
		0.814905, 0.056427, -0.576841,
		38.264755, 34.023319, 25.228186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167885, 33.465591, 25.885775>,  <37.694321, 33.983814, 25.631975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167885, 33.465591, 25.885775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.342384, 33.769318, 25.692640>,  <38.447083, 33.951553, 25.576759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.342384, 33.769318, 25.692640>,  <38.167885, 33.465591, 25.885775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342384, 33.769318, 25.692640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587526, 0.166060, 0.791983,
		0.681544, -0.629179, -0.373673,
		0.436247, 0.759314, -0.482836,
		38.473259, 33.997112, 25.547789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982758, 33.387722, 25.865833>,  <38.167885, 33.465591, 25.885775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982758, 33.387722, 25.865833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.909355, 33.779236, 25.829359>,  <38.865314, 34.014145, 25.807474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.909355, 33.779236, 25.829359>,  <38.982758, 33.387722, 25.865833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909355, 33.779236, 25.829359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525465, 0.176064, 0.832399,
		0.830791, 0.104833, -0.546623,
		-0.183503, 0.978781, -0.091187,
		38.854305, 34.072868, 25.802004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431038, 33.651497, 26.340082>,  <38.982758, 33.387722, 25.865833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431038, 33.651497, 26.340082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.212002, 33.972702, 26.246000>,  <39.080582, 34.165424, 26.189550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.212002, 33.972702, 26.246000>,  <39.431038, 33.651497, 26.340082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212002, 33.972702, 26.246000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514784, 0.544907, 0.661872,
		0.659654, 0.241354, -0.711762,
		-0.547590, 0.803010, -0.235205,
		39.047726, 34.213604, 26.175438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.055672, 35.783096, 20.204378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.672798, 35.868923, 20.282101>,  <37.443073, 35.920418, 20.328735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.672798, 35.868923, 20.282101>,  <38.055672, 35.783096, 20.204378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672798, 35.868923, 20.282101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284799, -0.577895, -0.764805,
		-0.051814, -0.787399, 0.614262,
		-0.957186, 0.214568, 0.194307,
		37.385643, 35.933292, 20.340393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734585, 35.168854, 20.100847>,  <38.055672, 35.783096, 20.204378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734585, 35.168854, 20.100847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.427841, 35.423397, 20.067432>,  <37.243793, 35.576122, 20.047382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.427841, 35.423397, 20.067432>,  <37.734585, 35.168854, 20.100847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427841, 35.423397, 20.067432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205551, -0.366812, -0.907302,
		-0.608012, -0.678600, 0.412096,
		-0.766857, 0.636357, -0.083539,
		37.197784, 35.614304, 20.042370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149323, 34.739552, 19.891527>,  <37.734585, 35.168854, 20.100847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149323, 34.739552, 19.891527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.043530, 35.111061, 19.787664>,  <36.980053, 35.333969, 19.725346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.043530, 35.111061, 19.787664>,  <37.149323, 34.739552, 19.891527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043530, 35.111061, 19.787664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479748, -0.360276, -0.800027,
		-0.836596, -0.087019, 0.540865,
		-0.264478, 0.928778, -0.259658,
		36.964188, 35.389694, 19.709766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331654, 34.806015, 19.741894>,  <37.149323, 34.739552, 19.891527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331654, 34.806015, 19.741894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.541351, 35.081787, 19.541952>,  <36.667171, 35.247250, 19.421988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.541351, 35.081787, 19.541952>,  <36.331654, 34.806015, 19.741894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541351, 35.081787, 19.541952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493578, -0.232322, -0.838098,
		-0.693937, 0.686085, 0.218494,
		0.524245, 0.689431, -0.499853,
		36.698624, 35.288616, 19.391996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804085, 35.101368, 19.327536>,  <36.331654, 34.806015, 19.741894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804085, 35.101368, 19.327536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.162148, 35.192719, 19.174414>,  <36.376984, 35.247528, 19.082541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.162148, 35.192719, 19.174414>,  <35.804085, 35.101368, 19.327536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162148, 35.192719, 19.174414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311444, -0.293953, -0.903656,
		-0.318903, 0.928135, -0.192006,
		0.895156, 0.228380, -0.382804,
		36.430695, 35.261234, 19.059572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682636, 35.161785, 18.580040>,  <35.804085, 35.101368, 19.327536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682636, 35.161785, 18.580040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.081898, 35.138424, 18.586784>,  <36.321453, 35.124409, 18.590830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.081898, 35.138424, 18.586784>,  <35.682636, 35.161785, 18.580040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081898, 35.138424, 18.586784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012428, -0.467567, -0.883871,
		0.059503, 0.882027, -0.467428,
		0.998151, -0.058402, 0.016860,
		36.381344, 35.120903, 18.591843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913677, 35.615837, 17.972752>,  <35.682636, 35.161785, 18.580040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913677, 35.615837, 17.972752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.174992, 35.342239, 18.102592>,  <36.331779, 35.178082, 18.180498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.174992, 35.342239, 18.102592>,  <35.913677, 35.615837, 17.972752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174992, 35.342239, 18.102592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011231, -0.437450, -0.899173,
		0.757024, 0.583775, -0.293463,
		0.653290, -0.683991, 0.324604,
		36.370979, 35.137043, 18.199974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180439, 35.382080, 17.358915>,  <35.913677, 35.615837, 17.972752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180439, 35.382080, 17.358915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335964, 35.116936, 17.614868>,  <36.429279, 34.957851, 17.768440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335964, 35.116936, 17.614868>,  <36.180439, 35.382080, 17.358915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335964, 35.116936, 17.614868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041778, -0.681128, -0.730971,
		0.920371, 0.310941, -0.237136,
		0.388808, -0.662858, 0.639881,
		36.452606, 34.918079, 17.806833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636875, 35.065113, 16.986328>,  <36.180439, 35.382080, 17.358915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636875, 35.065113, 16.986328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.563313, 34.822086, 17.295401>,  <36.519176, 34.676270, 17.480844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.563313, 34.822086, 17.295401>,  <36.636875, 35.065113, 16.986328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563313, 34.822086, 17.295401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014226, -0.784364, -0.620138,
		0.982841, -0.125040, 0.135607,
		-0.183907, -0.607568, 0.772683,
		36.508141, 34.639816, 17.527206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005764, 34.374821, 16.786482>,  <36.636875, 35.065113, 16.986328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005764, 34.374821, 16.786482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.706547, 34.327896, 17.047760>,  <36.527016, 34.299740, 17.204527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.706547, 34.327896, 17.047760>,  <37.005764, 34.374821, 16.786482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706547, 34.327896, 17.047760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390402, -0.718144, -0.576070,
		0.536670, -0.685935, 0.491405,
		-0.748046, -0.117314, 0.653196,
		36.482132, 34.292702, 17.243719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919044, 33.597088, 16.928112>,  <37.005764, 34.374821, 16.786482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919044, 33.597088, 16.928112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.558029, 33.694954, 17.069851>,  <36.341419, 33.753674, 17.154894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.558029, 33.694954, 17.069851>,  <36.919044, 33.597088, 16.928112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558029, 33.694954, 17.069851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401963, -0.773819, -0.489519,
		0.154432, -0.584245, 0.796749,
		-0.902539, 0.244666, 0.354348,
		36.287266, 33.768353, 17.176155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567028, 32.969719, 16.910849>,  <36.919044, 33.597088, 16.928112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567028, 32.969719, 16.910849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264305, 33.221699, 16.980587>,  <36.082672, 33.372887, 17.022430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264305, 33.221699, 16.980587>,  <36.567028, 32.969719, 16.910849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264305, 33.221699, 16.980587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646236, -0.681122, -0.344169,
		-0.098059, -0.373140, 0.922578,
		-0.756811, 0.629952, 0.174347,
		36.037262, 33.410683, 17.032890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977524, 32.562870, 17.267817>,  <36.567028, 32.969719, 16.910849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977524, 32.562870, 17.267817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.830570, 32.874508, 17.064627>,  <35.742397, 33.061493, 16.942713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.830570, 32.874508, 17.064627>,  <35.977524, 32.562870, 17.267817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830570, 32.874508, 17.064627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462437, -0.626886, -0.627029,
		-0.806959, 0.004547, 0.590590,
		-0.367381, 0.779098, -0.507974,
		35.720356, 33.108238, 16.912235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403790, 32.298141, 17.154814>,  <35.977524, 32.562870, 17.267817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403790, 32.298141, 17.154814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484081, 32.575821, 16.878321>,  <35.532257, 32.742428, 16.712425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484081, 32.575821, 16.878321>,  <35.403790, 32.298141, 17.154814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484081, 32.575821, 16.878321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501564, -0.533275, -0.681213,
		-0.841511, 0.483435, 0.241140,
		0.200729, 0.694196, -0.691231,
		35.544300, 32.784081, 16.670952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801533, 32.303341, 16.665815>,  <35.403790, 32.298141, 17.154814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801533, 32.303341, 16.665815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.746517, 31.922991, 16.776749>,  <34.713509, 31.694780, 16.843307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.746517, 31.922991, 16.776749>,  <34.801533, 32.303341, 16.665815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746517, 31.922991, 16.776749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072644, 0.269555, 0.960241,
		-0.987828, 0.152220, 0.032000,
		-0.137542, -0.950878, 0.277332,
		34.705254, 31.637728, 16.859949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495674, 32.434685, 17.363300>,  <34.801533, 32.303341, 16.665815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495674, 32.434685, 17.363300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.595055, 32.047241, 17.359806>,  <34.654682, 31.814775, 17.357710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.595055, 32.047241, 17.359806>,  <34.495674, 32.434685, 17.363300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595055, 32.047241, 17.359806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217911, 0.047102, 0.974831,
		-0.943815, -0.244104, 0.222772,
		0.248453, -0.968605, -0.008738,
		34.669590, 31.756660, 17.357185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063927, 32.076717, 17.806429>,  <34.495674, 32.434685, 17.363300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063927, 32.076717, 17.806429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416176, 31.890568, 17.770794>,  <34.627525, 31.778879, 17.749413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416176, 31.890568, 17.770794>,  <34.063927, 32.076717, 17.806429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416176, 31.890568, 17.770794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161121, 0.117295, 0.979940,
		-0.445585, -0.877310, 0.178273,
		0.880621, -0.465370, -0.089089,
		34.680363, 31.750957, 17.744068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151844, 31.801840, 18.495008>,  <34.063927, 32.076717, 17.806429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151844, 31.801840, 18.495008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512897, 31.719141, 18.344007>,  <34.729530, 31.669521, 18.253407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512897, 31.719141, 18.344007>,  <34.151844, 31.801840, 18.495008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512897, 31.719141, 18.344007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368815, -0.080597, 0.926002,
		-0.221874, -0.975069, 0.003502,
		0.902634, -0.206747, -0.377502,
		34.783688, 31.657118, 18.230757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383060, 31.194466, 18.717051>,  <34.151844, 31.801840, 18.495008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383060, 31.194466, 18.717051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.726051, 31.369791, 18.609262>,  <34.931847, 31.474985, 18.544590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.726051, 31.369791, 18.609262>,  <34.383060, 31.194466, 18.717051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726051, 31.369791, 18.609262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385973, -0.201653, 0.900200,
		0.340230, -0.875910, -0.342090,
		0.857478, 0.438312, -0.269469,
		34.983295, 31.501286, 18.528421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910408, 30.931664, 19.180830>,  <34.383060, 31.194466, 18.717051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910408, 30.931664, 19.180830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.088699, 31.252972, 19.022802>,  <35.195675, 31.445757, 18.927986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.088699, 31.252972, 19.022802>,  <34.910408, 30.931664, 19.180830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088699, 31.252972, 19.022802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298881, 0.282464, 0.911528,
		0.843797, -0.524376, -0.114179,
		0.445732, 0.803271, -0.395068,
		35.222420, 31.493954, 18.904282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464481, 30.941257, 19.549589>,  <34.910408, 30.931664, 19.180830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464481, 30.941257, 19.549589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440891, 31.314184, 19.406868>,  <35.426739, 31.537941, 19.321236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440891, 31.314184, 19.406868>,  <35.464481, 30.941257, 19.549589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440891, 31.314184, 19.406868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147356, 0.361639, 0.920599,
		0.987324, 0.001712, -0.158709,
		-0.058972, 0.932316, -0.356803,
		35.423199, 31.593880, 19.299828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999516, 31.339552, 19.897661>,  <35.464481, 30.941257, 19.549589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999516, 31.339552, 19.897661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.757198, 31.624275, 19.755478>,  <35.611809, 31.795109, 19.670168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.757198, 31.624275, 19.755478>,  <35.999516, 31.339552, 19.897661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757198, 31.624275, 19.755478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117394, 0.521843, 0.844925,
		0.786916, 0.470118, -0.399689,
		-0.605790, 0.711806, -0.355458,
		35.575462, 31.837816, 19.648840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383472, 31.856779, 19.915850>,  <35.999516, 31.339552, 19.897661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383472, 31.856779, 19.915850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.003075, 31.980448, 19.913660>,  <35.774837, 32.054649, 19.912346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.003075, 31.980448, 19.913660>,  <36.383472, 31.856779, 19.915850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003075, 31.980448, 19.913660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178609, 0.563662, 0.806464,
		0.252423, 0.765962, -0.591258,
		-0.950990, 0.309174, -0.005473,
		35.717777, 32.073200, 19.912018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369320, 32.618988, 19.915531>,  <36.383472, 31.856779, 19.915850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369320, 32.618988, 19.915531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.012852, 32.510502, 20.061001>,  <35.798973, 32.445408, 20.148283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.012852, 32.510502, 20.061001>,  <36.369320, 32.618988, 19.915531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012852, 32.510502, 20.061001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157092, 0.567550, 0.808213,
		-0.425606, 0.777385, -0.463177,
		-0.891169, -0.271218, 0.363674,
		35.745502, 32.429138, 20.170103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999546, 33.273243, 20.022141>,  <36.369320, 32.618988, 19.915531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999546, 33.273243, 20.022141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874344, 32.969559, 20.250395>,  <35.799221, 32.787350, 20.387346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874344, 32.969559, 20.250395>,  <35.999546, 33.273243, 20.022141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874344, 32.969559, 20.250395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084289, 0.576249, 0.812916,
		-0.946002, 0.302548, -0.116378,
		-0.313009, -0.759211, 0.570635,
		35.780441, 32.741795, 20.421585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592587, 33.598156, 20.497942>,  <35.999546, 33.273243, 20.022141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592587, 33.598156, 20.497942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634117, 33.248192, 20.687153>,  <35.659035, 33.038216, 20.800680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634117, 33.248192, 20.687153>,  <35.592587, 33.598156, 20.497942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634117, 33.248192, 20.687153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041131, 0.478969, 0.876868,
		-0.993744, -0.071589, 0.085717,
		0.103830, -0.874908, 0.473028,
		35.665264, 32.985718, 20.829062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100502, 33.592781, 21.108328>,  <35.592587, 33.598156, 20.497942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100502, 33.592781, 21.108328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408016, 33.343567, 21.165997>,  <35.592525, 33.194038, 21.200598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408016, 33.343567, 21.165997>,  <35.100502, 33.592781, 21.108328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408016, 33.343567, 21.165997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168524, 0.414852, 0.894146,
		-0.616897, -0.663115, 0.423931,
		0.768790, -0.623039, 0.144170,
		35.638653, 33.156654, 21.209248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107227, 33.281841, 21.776396>,  <35.100502, 33.592781, 21.108328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107227, 33.281841, 21.776396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.492634, 33.219101, 21.689651>,  <35.723877, 33.181458, 21.637606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.492634, 33.219101, 21.689651>,  <35.107227, 33.281841, 21.776396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492634, 33.219101, 21.689651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251412, 0.252583, 0.934341,
		-0.091777, -0.954777, 0.282803,
		0.963519, -0.156851, -0.216862,
		35.781689, 33.172047, 21.624594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633190, 32.655807, 22.066633>,  <35.107227, 33.281841, 21.776396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633190, 32.655807, 22.066633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.258083, 32.608349, 22.197176>,  <34.033020, 32.579872, 22.275501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.258083, 32.608349, 22.197176>,  <34.633190, 32.655807, 22.066633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258083, 32.608349, 22.197176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306002, -0.161946, -0.938156,
		0.164165, -0.979640, 0.115560,
		-0.937770, -0.118651, 0.326358,
		33.976753, 32.572754, 22.295084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485970, 32.080109, 21.744081>,  <34.633190, 32.655807, 22.066633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485970, 32.080109, 21.744081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128773, 32.231735, 21.841135>,  <33.914455, 32.322712, 21.899368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128773, 32.231735, 21.841135>,  <34.485970, 32.080109, 21.744081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128773, 32.231735, 21.841135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358270, -0.272408, -0.892993,
		-0.272408, -0.884366, 0.379066,
		0.892993, -0.379066, -0.242636,
		33.860874, 32.345455, 21.913925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148170, 31.644369, 21.436970>,  <34.485970, 32.080109, 21.744081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148170, 31.644369, 21.436970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887825, 31.938551, 21.512316>,  <33.731617, 32.115059, 21.557524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887825, 31.938551, 21.512316>,  <34.148170, 31.644369, 21.436970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887825, 31.938551, 21.512316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519304, -0.250299, -0.817113,
		-0.553800, -0.629651, 0.544835,
		-0.650867, 0.735453, 0.188364,
		33.692566, 32.159187, 21.568825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532433, 31.416742, 21.383354>,  <34.148170, 31.644369, 21.436970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532433, 31.416742, 21.383354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.419132, 31.797880, 21.339804>,  <33.351151, 32.026562, 21.313673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.419132, 31.797880, 21.339804>,  <33.532433, 31.416742, 21.383354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419132, 31.797880, 21.339804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502017, -0.244041, -0.829713,
		-0.817159, -0.180358, 0.547469,
		-0.283250, 0.952846, -0.108877,
		33.334156, 32.083733, 21.307140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797340, 31.467773, 21.277578>,  <33.532433, 31.416742, 21.383354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797340, 31.467773, 21.277578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.902451, 31.820429, 21.120781>,  <32.965519, 32.032021, 21.026703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.902451, 31.820429, 21.120781>,  <32.797340, 31.467773, 21.277578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902451, 31.820429, 21.120781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611461, -0.162105, -0.774492,
		-0.746367, 0.443208, 0.496491,
		0.262778, 0.881640, -0.391994,
		32.981285, 32.084919, 21.003183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168419, 31.707071, 21.181290>,  <32.797340, 31.467773, 21.277578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168419, 31.707071, 21.181290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.435413, 31.868423, 20.930929>,  <32.595608, 31.965235, 20.780712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.435413, 31.868423, 20.930929>,  <32.168419, 31.707071, 21.181290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435413, 31.868423, 20.930929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549369, -0.300641, -0.779621,
		-0.502655, 0.864234, 0.020932,
		0.667481, 0.403379, -0.625902,
		32.635658, 31.989437, 20.743158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841944, 32.091263, 20.660557>,  <32.168419, 31.707071, 21.181290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841944, 32.091263, 20.660557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.196144, 32.031021, 20.484734>,  <32.408665, 31.994877, 20.379240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.196144, 32.031021, 20.484734>,  <31.841944, 32.091263, 20.660557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196144, 32.031021, 20.484734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464544, -0.267719, -0.844112,
		0.009447, 0.951654, -0.307026,
		0.885500, -0.150601, -0.439556,
		32.461796, 31.985840, 20.352867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902914, 32.781425, 20.786283>,  <31.841944, 32.091263, 20.660557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902914, 32.781425, 20.786283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.663429, 33.101715, 20.778509>,  <31.519737, 33.293888, 20.773844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.663429, 33.101715, 20.778509>,  <31.902914, 32.781425, 20.786283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663429, 33.101715, 20.778509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145731, 0.132764, 0.980376,
		0.787594, 0.584131, -0.196178,
		-0.598714, 0.800727, -0.019438,
		31.483814, 33.341934, 20.772678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282108, 33.256168, 21.038946>,  <31.902914, 32.781425, 20.786283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282108, 33.256168, 21.038946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.915417, 33.404751, 21.097778>,  <31.695402, 33.493900, 21.133078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.915417, 33.404751, 21.097778>,  <32.282108, 33.256168, 21.038946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915417, 33.404751, 21.097778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252281, 0.252769, 0.934057,
		0.309782, 0.893381, -0.325431,
		-0.916728, 0.371454, 0.147080,
		31.640398, 33.516186, 21.141903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463875, 33.944324, 21.332588>,  <32.282108, 33.256168, 21.038946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463875, 33.944324, 21.332588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.089756, 33.852970, 21.440710>,  <31.865286, 33.798157, 21.505583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.089756, 33.852970, 21.440710>,  <32.463875, 33.944324, 21.332588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089756, 33.852970, 21.440710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193498, 0.309483, 0.931009,
		-0.296281, 0.923072, -0.245267,
		-0.935295, -0.228382, 0.270306,
		31.809168, 33.784454, 21.521803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083134, 34.548031, 21.661617>,  <32.463875, 33.944324, 21.332588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083134, 34.548031, 21.661617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856737, 34.235737, 21.767527>,  <31.720898, 34.048359, 21.831072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856737, 34.235737, 21.767527>,  <32.083134, 34.548031, 21.661617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856737, 34.235737, 21.767527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080480, 0.371961, 0.924753,
		-0.820472, 0.502096, -0.273361,
		-0.565994, -0.780734, 0.264775,
		31.686939, 34.001518, 21.846958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476013, 34.856171, 22.070770>,  <32.083134, 34.548031, 21.661617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476013, 34.856171, 22.070770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.500137, 34.466206, 22.156479>,  <31.514612, 34.232227, 22.207905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.500137, 34.466206, 22.156479>,  <31.476013, 34.856171, 22.070770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500137, 34.466206, 22.156479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201079, 0.198397, 0.959274,
		-0.977717, -0.100938, -0.184069,
		0.060308, -0.974910, 0.214273,
		31.518230, 34.173733, 22.220760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863028, 34.666954, 22.517147>,  <31.476013, 34.856171, 22.070770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863028, 34.666954, 22.517147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.156965, 34.400425, 22.567778>,  <31.333328, 34.240509, 22.598156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.156965, 34.400425, 22.567778>,  <30.863028, 34.666954, 22.517147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156965, 34.400425, 22.567778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139319, 0.034352, 0.989651,
		-0.663772, -0.744875, -0.067588,
		0.734845, -0.666320, 0.126577,
		31.377419, 34.200531, 22.605751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495634, 34.249340, 22.891521>,  <30.863028, 34.666954, 22.517147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495634, 34.249340, 22.891521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.878483, 34.151112, 22.952984>,  <31.108192, 34.092175, 22.989862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.878483, 34.151112, 22.952984>,  <30.495634, 34.249340, 22.891521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878483, 34.151112, 22.952984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183660, -0.104216, 0.977450,
		-0.224026, -0.963758, -0.144850,
		0.957121, -0.245578, 0.153657,
		31.165619, 34.077438, 22.999081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.506207, 36.160919, 16.800484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.790176, 35.887886, 16.869869>,  <33.960560, 35.724068, 16.911501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.790176, 35.887886, 16.869869>,  <33.506207, 36.160919, 16.800484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790176, 35.887886, 16.869869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028903, 0.274331, 0.961201,
		-0.703685, -0.677366, 0.214483,
		0.709924, -0.682581, 0.173464,
		34.003155, 35.683113, 16.921909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288952, 35.925507, 17.495787>,  <33.506207, 36.160919, 16.800484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288952, 35.925507, 17.495787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676582, 35.858196, 17.423588>,  <33.909161, 35.817810, 17.380268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676582, 35.858196, 17.423588>,  <33.288952, 35.925507, 17.495787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676582, 35.858196, 17.423588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228632, 0.337014, 0.913317,
		-0.092857, -0.926340, 0.365064,
		0.969075, -0.168273, -0.180497,
		33.967304, 35.807713, 17.369438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542866, 35.496910, 18.022657>,  <33.288952, 35.925507, 17.495787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542866, 35.496910, 18.022657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.858028, 35.699287, 17.882244>,  <34.047127, 35.820713, 17.797997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.858028, 35.699287, 17.882244>,  <33.542866, 35.496910, 18.022657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858028, 35.699287, 17.882244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265655, 0.235007, 0.934986,
		0.555545, -0.829935, 0.050758,
		0.787907, 0.505943, -0.351033,
		34.094402, 35.851070, 17.776934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089722, 35.291729, 18.416712>,  <33.542866, 35.496910, 18.022657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089722, 35.291729, 18.416712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.227165, 35.630737, 18.254902>,  <34.309631, 35.834141, 18.157816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.227165, 35.630737, 18.254902>,  <34.089722, 35.291729, 18.416712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227165, 35.630737, 18.254902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248838, 0.333189, 0.909431,
		0.905546, -0.413149, -0.096410,
		0.343607, 0.847522, -0.404525,
		34.330246, 35.884995, 18.133545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807148, 35.440002, 18.773212>,  <34.089722, 35.291729, 18.416712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807148, 35.440002, 18.773212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.705799, 35.788143, 18.604311>,  <34.644989, 35.997028, 18.502970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.705799, 35.788143, 18.604311>,  <34.807148, 35.440002, 18.773212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705799, 35.788143, 18.604311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211147, 0.475727, 0.853874,
		0.944045, 0.127188, -0.304306,
		-0.253368, 0.870349, -0.422252,
		34.629787, 36.049248, 18.477634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307072, 35.852089, 19.012415>,  <34.807148, 35.440002, 18.773212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307072, 35.852089, 19.012415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.008286, 36.096577, 18.907757>,  <34.829014, 36.243267, 18.844961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.008286, 36.096577, 18.907757>,  <35.307072, 35.852089, 19.012415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008286, 36.096577, 18.907757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003912, 0.389485, 0.921025,
		0.664852, 0.688997, -0.288540,
		-0.746965, 0.611216, -0.261645,
		34.784195, 36.279942, 18.829264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503754, 36.621773, 18.953094>,  <35.307072, 35.852089, 19.012415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503754, 36.621773, 18.953094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.114426, 36.572670, 19.030640>,  <34.880829, 36.543209, 19.077166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.114426, 36.572670, 19.030640>,  <35.503754, 36.621773, 18.953094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114426, 36.572670, 19.030640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109368, 0.494529, 0.862252,
		-0.201720, 0.860448, -0.467908,
		-0.973318, -0.122759, 0.193862,
		34.822430, 36.535843, 19.088799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428955, 37.286362, 19.359499>,  <35.503754, 36.621773, 18.953094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428955, 37.286362, 19.359499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.099735, 37.065533, 19.412868>,  <34.902203, 36.933037, 19.444891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.099735, 37.065533, 19.412868>,  <35.428955, 37.286362, 19.359499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099735, 37.065533, 19.412868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147882, 0.435119, 0.888145,
		-0.548376, 0.711259, -0.439767,
		-0.823052, -0.552071, 0.133426,
		34.852821, 36.899910, 19.452896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003361, 37.713196, 19.682507>,  <35.428955, 37.286362, 19.359499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003361, 37.713196, 19.682507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.831539, 37.361904, 19.766596>,  <34.728447, 37.151127, 19.817049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.831539, 37.361904, 19.766596>,  <35.003361, 37.713196, 19.682507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831539, 37.361904, 19.766596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198959, 0.319113, 0.926597,
		-0.880851, 0.356198, -0.311808,
		-0.429554, -0.878231, 0.210222,
		34.702675, 37.098434, 19.829662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205475, 37.823910, 19.891382>,  <35.003361, 37.713196, 19.682507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205475, 37.823910, 19.891382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.365025, 37.498985, 20.061579>,  <34.460754, 37.304031, 20.163696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.365025, 37.498985, 20.061579>,  <34.205475, 37.823910, 19.891382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365025, 37.498985, 20.061579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163657, 0.393491, 0.904644,
		-0.902284, -0.430474, 0.024012,
		0.398874, -0.812316, 0.425491,
		34.484688, 37.255291, 20.189226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762611, 37.614838, 20.468138>,  <34.205475, 37.823910, 19.891382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762611, 37.614838, 20.468138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.105511, 37.435913, 20.570141>,  <34.311253, 37.328556, 20.631344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.105511, 37.435913, 20.570141>,  <33.762611, 37.614838, 20.468138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105511, 37.435913, 20.570141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163651, 0.232879, 0.958637,
		-0.488200, -0.863525, 0.126432,
		0.857251, -0.447316, 0.255009,
		34.362686, 37.301720, 20.646643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581470, 37.174854, 20.972958>,  <33.762611, 37.614838, 20.468138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581470, 37.174854, 20.972958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.961399, 37.294582, 21.009275>,  <34.189358, 37.366417, 21.031065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.961399, 37.294582, 21.009275>,  <33.581470, 37.174854, 20.972958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961399, 37.294582, 21.009275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181334, 0.290429, 0.939558,
		0.254850, -0.908881, 0.330132,
		0.949826, 0.299311, 0.090795,
		34.246346, 37.384377, 21.036514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349949, 36.551327, 21.398987>,  <33.581470, 37.174854, 20.972958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349949, 36.551327, 21.398987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.013062, 36.756626, 21.465010>,  <32.810928, 36.879807, 21.504623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.013062, 36.756626, 21.465010>,  <33.349949, 36.551327, 21.398987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013062, 36.756626, 21.465010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415207, -0.422193, -0.805827,
		-0.343904, -0.747215, 0.568683,
		-0.842219, 0.513248, 0.165056,
		32.760395, 36.910603, 21.514526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862488, 36.149101, 21.246058>,  <33.349949, 36.551327, 21.398987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862488, 36.149101, 21.246058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.657383, 36.492512, 21.244810>,  <32.534321, 36.698559, 21.244062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.657383, 36.492512, 21.244810>,  <32.862488, 36.149101, 21.246058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657383, 36.492512, 21.244810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430652, -0.260347, -0.864152,
		-0.742710, -0.441757, 0.503222,
		-0.512757, 0.858528, -0.003119,
		32.503555, 36.750069, 21.243874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264107, 36.043957, 20.912504>,  <32.862488, 36.149101, 21.246058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264107, 36.043957, 20.912504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.280785, 36.442371, 20.881100>,  <32.290791, 36.681419, 20.862257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.280785, 36.442371, 20.881100>,  <32.264107, 36.043957, 20.912504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280785, 36.442371, 20.881100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543373, -0.043340, -0.838372,
		-0.838456, 0.077614, 0.539414,
		0.041692, 0.996041, -0.078512,
		32.293293, 36.741184, 20.857546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554728, 36.336117, 20.992956>,  <32.264107, 36.043957, 20.912504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554728, 36.336117, 20.992956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.772625, 36.599823, 20.785639>,  <31.903364, 36.758045, 20.661249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.772625, 36.599823, 20.785639>,  <31.554728, 36.336117, 20.992956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772625, 36.599823, 20.785639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355546, -0.378181, -0.854732,
		-0.759500, 0.649887, 0.028386,
		0.544744, 0.659261, -0.518293,
		31.936049, 36.797600, 20.630150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160471, 36.359146, 20.399395>,  <31.554728, 36.336117, 20.992956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160471, 36.359146, 20.399395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.465868, 36.577011, 20.260590>,  <31.649107, 36.707729, 20.177307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.465868, 36.577011, 20.260590>,  <31.160471, 36.359146, 20.399395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465868, 36.577011, 20.260590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351748, -0.099922, -0.930747,
		-0.541618, 0.832681, 0.115294,
		0.763494, 0.544663, -0.347013,
		31.694916, 36.740410, 20.156487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853796, 37.076839, 20.145967>,  <31.160471, 36.359146, 20.399395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853796, 37.076839, 20.145967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.214411, 36.987854, 19.997513>,  <31.430779, 36.934464, 19.908440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.214411, 36.987854, 19.997513>,  <30.853796, 37.076839, 20.145967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214411, 36.987854, 19.997513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347519, 0.138775, -0.927347,
		0.257806, 0.965014, 0.047800,
		0.901535, -0.222465, -0.371138,
		31.484871, 36.921116, 19.886171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066036, 37.671268, 19.712061>,  <30.853796, 37.076839, 20.145967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066036, 37.671268, 19.712061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.262619, 37.339050, 19.607248>,  <31.380568, 37.139717, 19.544361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.262619, 37.339050, 19.607248>,  <31.066036, 37.671268, 19.712061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262619, 37.339050, 19.607248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472413, -0.001472, -0.881376,
		0.731640, 0.556944, -0.393085,
		0.491455, -0.830549, -0.262031,
		31.410055, 37.089886, 19.528639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080486, 37.764008, 18.976812>,  <31.066036, 37.671268, 19.712061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080486, 37.764008, 18.976812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.210632, 37.391426, 19.041956>,  <31.288719, 37.167877, 19.081041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.210632, 37.391426, 19.041956>,  <31.080486, 37.764008, 18.976812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210632, 37.391426, 19.041956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363070, -0.282089, -0.888035,
		0.873108, 0.229807, -0.429967,
		0.325366, -0.931459, 0.162858,
		31.308243, 37.111988, 19.090813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473747, 37.561211, 18.364456>,  <31.080486, 37.764008, 18.976812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473747, 37.561211, 18.364456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.321119, 37.226566, 18.521677>,  <31.229542, 37.025780, 18.616011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.321119, 37.226566, 18.521677>,  <31.473747, 37.561211, 18.364456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321119, 37.226566, 18.521677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293703, -0.293455, -0.909738,
		0.876437, -0.462571, -0.133740,
		-0.381572, -0.836608, 0.393053,
		31.206648, 36.975582, 18.639593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566109, 36.953442, 17.807970>,  <31.473747, 37.561211, 18.364456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566109, 36.953442, 17.807970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.306868, 36.787479, 18.063412>,  <31.151323, 36.687901, 18.216677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.306868, 36.787479, 18.063412>,  <31.566109, 36.953442, 17.807970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306868, 36.787479, 18.063412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406887, -0.520181, -0.750902,
		0.643745, -0.746501, 0.168310,
		-0.648101, -0.414906, 0.638606,
		31.112438, 36.663006, 18.254993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542412, 36.248108, 17.697727>,  <31.566109, 36.953442, 17.807970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542412, 36.248108, 17.697727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189663, 36.355709, 17.852613>,  <30.978014, 36.420269, 17.945545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189663, 36.355709, 17.852613>,  <31.542412, 36.248108, 17.697727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189663, 36.355709, 17.852613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471476, -0.497347, -0.728256,
		-0.003324, -0.824792, 0.565427,
		-0.881873, 0.269006, 0.387217,
		30.925100, 36.436413, 17.968779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147406, 35.626823, 17.665977>,  <31.542412, 36.248108, 17.697727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147406, 35.626823, 17.665977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.867212, 35.894913, 17.764055>,  <30.699097, 36.055767, 17.822901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.867212, 35.894913, 17.764055>,  <31.147406, 35.626823, 17.665977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867212, 35.894913, 17.764055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673940, -0.508198, -0.536227,
		-0.234786, -0.540864, 0.807677,
		-0.700486, 0.670224, 0.245193,
		30.657066, 36.095982, 17.837612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484186, 35.295967, 17.829794>,  <31.147406, 35.626823, 17.665977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484186, 35.295967, 17.829794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416252, 35.673595, 17.716734>,  <30.375492, 35.900173, 17.648897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416252, 35.673595, 17.716734>,  <30.484186, 35.295967, 17.829794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416252, 35.673595, 17.716734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658229, -0.322128, -0.680417,
		-0.733410, 0.070491, 0.676122,
		-0.169835, 0.944068, -0.282651,
		30.365301, 35.956818, 17.631939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083029, 34.835251, 17.797253>,  <30.484186, 35.295967, 17.829794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083029, 34.835251, 17.797253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.721357, 34.665016, 17.811905>,  <30.504354, 34.562878, 17.820696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.721357, 34.665016, 17.811905>,  <31.083029, 34.835251, 17.797253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721357, 34.665016, 17.811905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139972, -0.214170, 0.966716,
		-0.403573, 0.879210, 0.253217,
		-0.904177, -0.425584, 0.036632,
		30.450104, 34.537342, 17.822895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822786, 35.031384, 18.472792>,  <31.083029, 34.835251, 17.797253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822786, 35.031384, 18.472792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.606697, 34.704819, 18.391176>,  <30.477043, 34.508881, 18.342207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.606697, 34.704819, 18.391176>,  <30.822786, 35.031384, 18.472792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606697, 34.704819, 18.391176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016115, -0.232382, 0.972491,
		-0.841368, 0.528650, 0.112382,
		-0.540223, -0.816412, -0.204037,
		30.444630, 34.459896, 18.329966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387463, 35.041759, 19.028204>,  <30.822786, 35.031384, 18.472792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387463, 35.041759, 19.028204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.374439, 34.670380, 18.880196>,  <30.366625, 34.447552, 18.791391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.374439, 34.670380, 18.880196>,  <30.387463, 35.041759, 19.028204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374439, 34.670380, 18.880196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126550, -0.371065, 0.919944,
		-0.991426, -0.016874, 0.129576,
		-0.032558, -0.928454, -0.370019,
		30.364672, 34.391842, 18.769190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096605, 34.694050, 19.510252>,  <30.387463, 35.041759, 19.028204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096605, 34.694050, 19.510252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.284550, 34.403904, 19.309025>,  <30.397316, 34.229816, 19.188290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.284550, 34.403904, 19.309025>,  <30.096605, 34.694050, 19.510252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284550, 34.403904, 19.309025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268391, -0.425522, 0.864232,
		-0.840949, -0.541089, -0.005256,
		0.469863, -0.725364, -0.503066,
		30.425508, 34.186295, 19.158106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008091, 34.007008, 19.934778>,  <30.096605, 34.694050, 19.510252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008091, 34.007008, 19.934778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.310595, 33.931995, 19.684050>,  <30.492096, 33.886990, 19.533611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.310595, 33.931995, 19.684050>,  <30.008091, 34.007008, 19.934778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310595, 33.931995, 19.684050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454439, -0.538685, 0.709439,
		-0.470697, -0.821372, -0.322167,
		0.756260, -0.187526, -0.626821,
		30.537472, 33.875736, 19.496002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131065, 33.308792, 20.073610>,  <30.008091, 34.007008, 19.934778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131065, 33.308792, 20.073610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.465733, 33.465675, 19.920689>,  <30.666533, 33.559807, 19.828936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.465733, 33.465675, 19.920689>,  <30.131065, 33.308792, 20.073610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465733, 33.465675, 19.920689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522128, -0.360319, 0.773015,
		0.165433, -0.846370, -0.506252,
		0.836669, 0.392210, -0.382304,
		30.716734, 33.583340, 19.805998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557430, 32.711578, 19.929979>,  <30.131065, 33.308792, 20.073610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557430, 32.711578, 19.929979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.752968, 33.058594, 19.966642>,  <30.870291, 33.266804, 19.988640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.752968, 33.058594, 19.966642>,  <30.557430, 32.711578, 19.929979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752968, 33.058594, 19.966642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451901, -0.341699, 0.824031,
		0.746203, -0.361401, -0.559081,
		0.488843, 0.867543, 0.091660,
		30.899620, 33.318855, 19.994141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162817, 32.522877, 20.268461>,  <30.557430, 32.711578, 19.929979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162817, 32.522877, 20.268461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.178587, 32.920395, 20.310068>,  <31.188049, 33.158905, 20.335032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.178587, 32.920395, 20.310068>,  <31.162817, 32.522877, 20.268461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178587, 32.920395, 20.310068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585011, -0.107348, 0.803890,
		0.810067, 0.029160, -0.585613,
		0.039423, 0.993794, 0.104018,
		31.190414, 33.218533, 20.341274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831402, 32.571491, 20.024096>,  <31.162817, 32.522877, 20.268461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831402, 32.571491, 20.024096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.118351, 32.297794, 19.971655>,  <32.290520, 32.133575, 19.940191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.118351, 32.297794, 19.971655>,  <31.831402, 32.571491, 20.024096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118351, 32.297794, 19.971655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394879, -0.244308, -0.885654,
		0.573972, 0.687115, -0.445453,
		0.717374, -0.684241, -0.131102,
		32.333565, 32.092522, 19.932323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889225, 32.532742, 19.244883>,  <31.831402, 32.571491, 20.024096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889225, 32.532742, 19.244883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.118530, 32.226482, 19.361605>,  <32.256115, 32.042725, 19.431639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.118530, 32.226482, 19.361605>,  <31.889225, 32.532742, 19.244883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118530, 32.226482, 19.361605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021235, -0.342131, -0.939412,
		0.819097, 0.544725, -0.179872,
		0.573262, -0.765650, 0.291806,
		32.290508, 31.996788, 19.449146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478539, 32.399654, 18.764334>,  <31.889225, 32.532742, 19.244883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478539, 32.399654, 18.764334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.433323, 32.050163, 18.953577>,  <32.406193, 31.840469, 19.067123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.433323, 32.050163, 18.953577>,  <32.478539, 32.399654, 18.764334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433323, 32.050163, 18.953577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262720, -0.485494, -0.833831,
		0.958228, 0.030042, 0.284423,
		-0.113036, -0.873724, 0.473106,
		32.399410, 31.788046, 19.095509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100475, 31.922157, 18.538906>,  <32.478539, 32.399654, 18.764334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100475, 31.922157, 18.538906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.775181, 31.721918, 18.657600>,  <32.580006, 31.601774, 18.728817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.775181, 31.721918, 18.657600>,  <33.100475, 31.922157, 18.538906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775181, 31.721918, 18.657600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055728, -0.574561, -0.816562,
		0.579262, -0.647520, 0.495150,
		-0.813234, -0.500597, 0.296737,
		32.531212, 31.571739, 18.746622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278122, 31.244272, 18.539482>,  <33.100475, 31.922157, 18.538906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278122, 31.244272, 18.539482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.882019, 31.188675, 18.536257>,  <32.644356, 31.155317, 18.534321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.882019, 31.188675, 18.536257>,  <33.278122, 31.244272, 18.539482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882019, 31.188675, 18.536257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101349, -0.679938, -0.726232,
		0.095458, -0.719976, 0.687403,
		-0.990261, -0.138993, -0.008063,
		32.584942, 31.146976, 18.533838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225277, 30.569447, 18.628901>,  <33.278122, 31.244272, 18.539482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225277, 30.569447, 18.628901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.883987, 30.703753, 18.469267>,  <32.679214, 30.784336, 18.373487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.883987, 30.703753, 18.469267>,  <33.225277, 30.569447, 18.628901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883987, 30.703753, 18.469267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081316, -0.670198, -0.737714,
		-0.515162, -0.661889, 0.544528,
		-0.853227, 0.335764, -0.399083,
		32.628021, 30.804482, 18.349543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870922, 29.943556, 18.594955>,  <33.225277, 30.569447, 18.628901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870922, 29.943556, 18.594955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.677811, 30.197781, 18.353962>,  <32.561943, 30.350315, 18.209366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.677811, 30.197781, 18.353962>,  <32.870922, 29.943556, 18.594955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677811, 30.197781, 18.353962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049174, -0.667211, -0.743244,
		-0.874362, -0.388448, 0.290861,
		-0.482777, 0.635561, -0.602485,
		32.532978, 30.388449, 18.173216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379116, 29.580908, 18.292624>,  <32.870922, 29.943556, 18.594955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379116, 29.580908, 18.292624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.379227, 29.884203, 18.031832>,  <32.379295, 30.066179, 17.875357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.379227, 29.884203, 18.031832>,  <32.379116, 29.580908, 18.292624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379227, 29.884203, 18.031832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220619, -0.635961, -0.739514,
		-0.975360, -0.143633, -0.167459,
		0.000278, 0.758237, -0.651980,
		32.379311, 30.111673, 17.836237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888231, 29.422195, 17.780123>,  <32.379116, 29.580908, 18.292624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888231, 29.422195, 17.780123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.164410, 29.665535, 17.623564>,  <32.330116, 29.811539, 17.529629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.164410, 29.665535, 17.623564>,  <31.888231, 29.422195, 17.780123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164410, 29.665535, 17.623564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064620, -0.590773, -0.804246,
		-0.720490, 0.529997, -0.447209,
		0.690448, 0.608350, -0.391398,
		32.371544, 29.848040, 17.506144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.765022, 34.405869, 31.847963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991539, 34.651890, 31.628502>,  <37.127449, 34.799503, 31.496824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991539, 34.651890, 31.628502>,  <36.765022, 34.405869, 31.847963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991539, 34.651890, 31.628502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641505, -0.089031, -0.761935,
		-0.517477, 0.783443, 0.344142,
		0.566293, 0.615053, -0.548655,
		37.161427, 34.836407, 31.463905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301826, 34.940575, 31.678602>,  <36.765022, 34.405869, 31.847963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301826, 34.940575, 31.678602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.595840, 34.930389, 31.407583>,  <36.772251, 34.924278, 31.244972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.595840, 34.930389, 31.407583>,  <36.301826, 34.940575, 31.678602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595840, 34.930389, 31.407583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677197, 0.021836, -0.735477,
		0.033521, 0.999437, -0.001192,
		0.735037, -0.025461, -0.677548,
		36.816353, 34.922752, 31.204319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032894, 35.257923, 31.142128>,  <36.301826, 34.940575, 31.678602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032894, 35.257923, 31.142128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.338585, 35.081528, 30.953876>,  <36.521999, 34.975689, 30.840925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.338585, 35.081528, 30.953876>,  <36.032894, 35.257923, 31.142128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338585, 35.081528, 30.953876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545199, -0.051884, -0.836700,
		0.344559, 0.896010, -0.280079,
		0.764223, -0.440991, -0.470627,
		36.567852, 34.949230, 30.812689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935768, 35.534107, 30.480755>,  <36.032894, 35.257923, 31.142128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935768, 35.534107, 30.480755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193901, 35.231945, 30.435305>,  <36.348782, 35.050648, 30.408035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193901, 35.231945, 30.435305>,  <35.935768, 35.534107, 30.480755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193901, 35.231945, 30.435305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362799, -0.172182, -0.915822,
		0.672252, 0.632233, -0.385175,
		0.645333, -0.755404, -0.113623,
		36.387501, 35.005325, 30.401218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267250, 35.577358, 29.816881>,  <35.935768, 35.534107, 30.480755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267250, 35.577358, 29.816881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258854, 35.194626, 29.932829>,  <36.253815, 34.964985, 30.002398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258854, 35.194626, 29.932829>,  <36.267250, 35.577358, 29.816881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258854, 35.194626, 29.932829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346131, -0.265050, -0.899968,
		0.937951, -0.119223, -0.325627,
		-0.020989, -0.956835, 0.289871,
		36.252556, 34.907574, 30.019791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550449, 35.110565, 29.272375>,  <36.267250, 35.577358, 29.816881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550449, 35.110565, 29.272375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281036, 34.871052, 29.445724>,  <36.119389, 34.727345, 29.549734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281036, 34.871052, 29.445724>,  <36.550449, 35.110565, 29.272375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281036, 34.871052, 29.445724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346440, -0.262190, -0.900686,
		0.652940, -0.756781, -0.030848,
		-0.673534, -0.598781, 0.433374,
		36.078976, 34.691418, 29.575737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484451, 34.462204, 28.775841>,  <36.550449, 35.110565, 29.272375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484451, 34.462204, 28.775841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169006, 34.434937, 29.020279>,  <35.979740, 34.418575, 29.166943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169006, 34.434937, 29.020279>,  <36.484451, 34.462204, 28.775841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169006, 34.434937, 29.020279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529817, -0.429047, -0.731582,
		0.312058, -0.900706, 0.302238,
		-0.788616, -0.068165, 0.611097,
		35.932423, 34.414486, 29.203608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169899, 33.961712, 28.561504>,  <36.484451, 34.462204, 28.775841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169899, 33.961712, 28.561504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863197, 34.120163, 28.763563>,  <35.679176, 34.215233, 28.884798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863197, 34.120163, 28.763563>,  <36.169899, 33.961712, 28.561504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863197, 34.120163, 28.763563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641074, -0.431507, -0.634686,
		-0.033443, -0.810484, 0.584806,
		-0.766750, 0.396129, 0.505149,
		35.633171, 34.239002, 28.915108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674694, 33.450901, 28.739771>,  <36.169899, 33.961712, 28.561504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674694, 33.450901, 28.739771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.456329, 33.785610, 28.756725>,  <35.325310, 33.986435, 28.766897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.456329, 33.785610, 28.756725>,  <35.674694, 33.450901, 28.739771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456329, 33.785610, 28.756725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698328, -0.426472, -0.574856,
		-0.462948, -0.343417, 0.817156,
		-0.545910, 0.836771, 0.042384,
		35.292557, 34.036640, 28.769440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039249, 33.221870, 28.785677>,  <35.674694, 33.450901, 28.739771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039249, 33.221870, 28.785677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.017078, 33.590187, 28.631241>,  <35.003777, 33.811176, 28.538580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.017078, 33.590187, 28.631241>,  <35.039249, 33.221870, 28.785677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017078, 33.590187, 28.631241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613644, -0.336447, -0.714314,
		-0.787635, 0.197332, 0.583687,
		-0.055423, 0.920795, -0.386089,
		35.000450, 33.866425, 28.515413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276512, 33.511494, 28.780613>,  <35.039249, 33.221870, 28.785677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276512, 33.511494, 28.780613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513355, 33.675236, 28.502953>,  <34.655460, 33.773479, 28.336357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513355, 33.675236, 28.502953>,  <34.276512, 33.511494, 28.780613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513355, 33.675236, 28.502953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704037, -0.156347, -0.692739,
		-0.392102, 0.898881, 0.195625,
		0.592105, 0.409352, -0.694149,
		34.690987, 33.798042, 28.294708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828228, 33.899940, 28.457573>,  <34.276512, 33.511494, 28.780613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828228, 33.899940, 28.457573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.117981, 33.891365, 28.181946>,  <34.291832, 33.886219, 28.016569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.117981, 33.891365, 28.181946>,  <33.828228, 33.899940, 28.457573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117981, 33.891365, 28.181946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689278, -0.041541, -0.723305,
		-0.013120, 0.998907, -0.044867,
		0.724378, -0.021436, -0.689069,
		34.335293, 33.884933, 27.975225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820076, 34.723740, 28.548784>,  <33.828228, 33.899940, 28.457573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820076, 34.723740, 28.548784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442982, 34.845833, 28.602579>,  <33.216724, 34.919090, 28.634855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442982, 34.845833, 28.602579>,  <33.820076, 34.723740, 28.548784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442982, 34.845833, 28.602579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270724, 0.464677, 0.843080,
		0.194844, 0.831208, -0.520701,
		-0.942732, 0.305235, 0.134488,
		33.160164, 34.937405, 28.642925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836548, 35.427830, 28.718472>,  <33.820076, 34.723740, 28.548784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836548, 35.427830, 28.718472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480705, 35.315861, 28.862825>,  <33.267200, 35.248680, 28.949438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480705, 35.315861, 28.862825>,  <33.836548, 35.427830, 28.718472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480705, 35.315861, 28.862825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137090, 0.590071, 0.795627,
		-0.435662, 0.757271, -0.486558,
		-0.889610, -0.279922, 0.360886,
		33.213821, 35.231884, 28.971090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567657, 35.994480, 28.904806>,  <33.836548, 35.427830, 28.718472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567657, 35.994480, 28.904806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333908, 35.729992, 29.092972>,  <33.193657, 35.571297, 29.205872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333908, 35.729992, 29.092972>,  <33.567657, 35.994480, 28.904806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333908, 35.729992, 29.092972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098782, 0.517422, 0.850010,
		-0.805451, 0.543191, -0.237050,
		-0.584373, -0.661224, 0.470415,
		33.158596, 35.531624, 29.234097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130390, 36.410378, 29.350725>,  <33.567657, 35.994480, 28.904806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130390, 36.410378, 29.350725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.123634, 36.047142, 29.518097>,  <33.119583, 35.829201, 29.618519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.123634, 36.047142, 29.518097>,  <33.130390, 36.410378, 29.350725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123634, 36.047142, 29.518097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116235, 0.413867, 0.902886,
		-0.993078, 0.063882, 0.098564,
		-0.016886, -0.908093, 0.418427,
		33.118568, 35.774715, 29.643625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629944, 36.432152, 29.934078>,  <33.130390, 36.410378, 29.350725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629944, 36.432152, 29.934078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902390, 36.143528, 29.983765>,  <33.065857, 35.970352, 30.013577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902390, 36.143528, 29.983765>,  <32.629944, 36.432152, 29.934078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902390, 36.143528, 29.983765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023767, 0.147772, 0.988736,
		-0.731791, -0.676395, 0.083500,
		0.681115, -0.721563, 0.124214,
		33.106724, 35.927059, 30.021029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443180, 36.011040, 30.555904>,  <32.629944, 36.432152, 29.934078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443180, 36.011040, 30.555904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.828690, 35.917339, 30.504881>,  <33.059994, 35.861118, 30.474266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.828690, 35.917339, 30.504881>,  <32.443180, 36.011040, 30.555904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828690, 35.917339, 30.504881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160209, 0.126034, 0.979004,
		-0.213253, -0.963973, 0.158997,
		0.963771, -0.234248, -0.127560,
		33.117821, 35.847065, 30.466612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650425, 35.598152, 31.120190>,  <32.443180, 36.011040, 30.555904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650425, 35.598152, 31.120190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009960, 35.707783, 30.983389>,  <33.225681, 35.773560, 30.901308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009960, 35.707783, 30.983389>,  <32.650425, 35.598152, 31.120190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009960, 35.707783, 30.983389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260597, 0.293186, 0.919854,
		0.352382, -0.915927, 0.192104,
		0.898842, 0.274079, -0.342001,
		33.279613, 35.790005, 30.880789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060863, 35.444183, 31.649254>,  <32.650425, 35.598152, 31.120190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060863, 35.444183, 31.649254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281090, 35.701862, 31.436880>,  <33.413227, 35.856468, 31.309456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281090, 35.701862, 31.436880>,  <33.060863, 35.444183, 31.649254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281090, 35.701862, 31.436880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263585, 0.469320, 0.842770,
		0.792085, -0.603948, 0.088593,
		0.550568, 0.644194, -0.530933,
		33.446259, 35.895119, 31.277601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662205, 35.418217, 31.975819>,  <33.060863, 35.444183, 31.649254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662205, 35.418217, 31.975819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659229, 35.757969, 31.764729>,  <33.657444, 35.961823, 31.638075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659229, 35.757969, 31.764729>,  <33.662205, 35.418217, 31.975819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659229, 35.757969, 31.764729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092870, 0.524871, 0.846100,
		0.995650, 0.055307, 0.074976,
		-0.007443, 0.849383, -0.527724,
		33.656998, 36.012783, 31.606411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078602, 35.804878, 32.323261>,  <33.662205, 35.418217, 31.975819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078602, 35.804878, 32.323261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.853664, 36.049076, 32.100170>,  <33.718704, 36.195595, 31.966314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.853664, 36.049076, 32.100170>,  <34.078602, 35.804878, 32.323261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853664, 36.049076, 32.100170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182647, 0.566119, 0.803834,
		0.806482, 0.553897, -0.206846,
		-0.562341, 0.610498, -0.557732,
		33.684963, 36.232224, 31.932850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409145, 36.405804, 32.530716>,  <34.078602, 35.804878, 32.323261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409145, 36.405804, 32.530716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049995, 36.479885, 32.370960>,  <33.834503, 36.524334, 32.275108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049995, 36.479885, 32.370960>,  <34.409145, 36.405804, 32.530716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049995, 36.479885, 32.370960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211629, 0.613933, 0.760460,
		0.386038, 0.767324, -0.512043,
		-0.897879, 0.185203, -0.399390,
		33.780632, 36.535446, 32.251144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292843, 37.106472, 32.538773>,  <34.409145, 36.405804, 32.530716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292843, 37.106472, 32.538773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.919014, 36.975708, 32.482613>,  <33.694717, 36.897251, 32.448917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.919014, 36.975708, 32.482613>,  <34.292843, 37.106472, 32.538773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919014, 36.975708, 32.482613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331989, 0.659414, 0.674504,
		-0.127920, 0.676982, -0.724798,
		-0.934569, -0.326908, -0.140398,
		33.638641, 36.877636, 32.440495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832996, 37.665596, 32.478973>,  <34.292843, 37.106472, 32.538773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832996, 37.665596, 32.478973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592434, 37.363911, 32.584408>,  <33.448097, 37.182899, 32.647671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592434, 37.363911, 32.584408>,  <33.832996, 37.665596, 32.478973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592434, 37.363911, 32.584408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387922, 0.564081, 0.728923,
		-0.698445, 0.336128, -0.631817,
		-0.601407, -0.754209, 0.263588,
		33.412010, 37.137650, 32.663483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210686, 37.908569, 32.497208>,  <33.832996, 37.665596, 32.478973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210686, 37.908569, 32.497208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192200, 37.590450, 32.738991>,  <33.181110, 37.399578, 32.884060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192200, 37.590450, 32.738991>,  <33.210686, 37.908569, 32.497208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192200, 37.590450, 32.738991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385141, 0.572509, 0.723810,
		-0.921700, -0.199352, -0.332758,
		-0.046213, -0.795294, 0.604460,
		33.178337, 37.351864, 32.920330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711620, 37.801655, 32.058422>,  <33.210686, 37.908569, 32.497208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711620, 37.801655, 32.058422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805851, 37.419029, 32.127102>,  <32.862389, 37.189453, 32.168308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805851, 37.419029, 32.127102>,  <32.711620, 37.801655, 32.058422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805851, 37.419029, 32.127102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626268, -0.284515, -0.725837,
		0.743163, 0.063465, -0.666094,
		0.235579, -0.956569, 0.171695,
		32.876526, 37.132057, 32.178612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840233, 38.461353, 31.884626>,  <32.711620, 37.801655, 32.058422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840233, 38.461353, 31.884626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151550, 38.712364, 31.875927>,  <33.338341, 38.862968, 31.870707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151550, 38.712364, 31.875927>,  <32.840233, 38.461353, 31.884626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151550, 38.712364, 31.875927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057135, 0.036282, -0.997707,
		-0.625294, 0.777752, 0.064091,
		0.778294, 0.627523, -0.021750,
		33.385040, 38.900620, 31.869402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626877, 39.074657, 31.556952>,  <32.840233, 38.461353, 31.884626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626877, 39.074657, 31.556952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020535, 39.022861, 31.508463>,  <33.256729, 38.991783, 31.479370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020535, 39.022861, 31.508463>,  <32.626877, 39.074657, 31.556952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020535, 39.022861, 31.508463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108879, 0.098512, -0.989162,
		0.140027, 0.986675, 0.082851,
		0.984143, -0.129489, -0.121222,
		33.315777, 38.984016, 31.472095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803604, 39.452374, 30.919695>,  <32.626877, 39.074657, 31.556952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803604, 39.452374, 30.919695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.117115, 39.211060, 30.978683>,  <33.305222, 39.066273, 31.014076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.117115, 39.211060, 30.978683>,  <32.803604, 39.452374, 30.919695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117115, 39.211060, 30.978683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039567, -0.188471, -0.981281,
		0.619784, 0.774938, -0.123849,
		0.783774, -0.603282, 0.147473,
		33.352249, 39.030075, 31.022926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265324, 39.645958, 30.383850>,  <32.803604, 39.452374, 30.919695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265324, 39.645958, 30.383850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354908, 39.274895, 30.503380>,  <33.408657, 39.052258, 30.575098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354908, 39.274895, 30.503380>,  <33.265324, 39.645958, 30.383850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354908, 39.274895, 30.503380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066393, -0.291377, -0.954301,
		0.972334, 0.233566, -0.003667,
		0.223960, -0.927656, 0.298823,
		33.422096, 38.996597, 30.593027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706009, 39.439133, 29.850929>,  <33.265324, 39.645958, 30.383850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706009, 39.439133, 29.850929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592964, 39.104984, 30.039515>,  <33.525139, 38.904495, 30.152666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.592964, 39.104984, 30.039515>,  <33.706009, 39.439133, 29.850929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592964, 39.104984, 30.039515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012788, -0.494737, -0.868948,
		0.959149, -0.239546, 0.150502,
		-0.282612, -0.835376, 0.471463,
		33.508179, 38.854370, 30.180954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221569, 38.943394, 29.810986>,  <33.706009, 39.439133, 29.850929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221569, 38.943394, 29.810986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.896309, 38.717937, 29.869081>,  <33.701153, 38.582664, 29.903938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.896309, 38.717937, 29.869081>,  <34.221569, 38.943394, 29.810986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896309, 38.717937, 29.869081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136818, -0.427629, -0.893540,
		0.565747, -0.706710, 0.424843,
		-0.813149, -0.563644, 0.145239,
		33.652363, 38.548843, 29.912653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393627, 38.271740, 29.514137>,  <34.221569, 38.943394, 29.810986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393627, 38.271740, 29.514137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.994675, 38.290230, 29.536354>,  <33.755302, 38.301323, 29.549685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.994675, 38.290230, 29.536354>,  <34.393627, 38.271740, 29.514137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994675, 38.290230, 29.536354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071351, -0.508413, -0.858152,
		-0.011427, -0.859872, 0.510382,
		-0.997386, 0.046222, 0.055543,
		33.695457, 38.304096, 29.553017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171738, 37.618015, 29.360596>,  <34.393627, 38.271740, 29.514137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171738, 37.618015, 29.360596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.863010, 37.864002, 29.295944>,  <33.677776, 38.011593, 29.257153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.863010, 37.864002, 29.295944>,  <34.171738, 37.618015, 29.360596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863010, 37.864002, 29.295944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087880, -0.354924, -0.930756,
		-0.629747, -0.704165, 0.327978,
		-0.771813, 0.614963, -0.161630,
		33.631466, 38.048492, 29.247456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649765, 37.143623, 29.058529>,  <34.171738, 37.618015, 29.360596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649765, 37.143623, 29.058529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576130, 37.528400, 28.977751>,  <33.531948, 37.759266, 28.929283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576130, 37.528400, 28.977751>,  <33.649765, 37.143623, 29.058529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576130, 37.528400, 28.977751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275273, -0.247691, -0.928910,
		-0.943576, -0.115411, 0.310393,
		-0.184088, 0.961941, -0.201946,
		33.520905, 37.816982, 28.917168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936684, 37.109329, 28.860703>,  <33.649765, 37.143623, 29.058529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936684, 37.109329, 28.860703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094841, 37.444996, 28.711327>,  <33.189735, 37.646397, 28.621700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094841, 37.444996, 28.711327>,  <32.936684, 37.109329, 28.860703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094841, 37.444996, 28.711327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314608, -0.258249, -0.913416,
		-0.862953, 0.478644, 0.161901,
		0.395391, 0.839171, -0.373442,
		33.213459, 37.696747, 28.599295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471958, 37.276058, 28.205448>,  <32.936684, 37.109329, 28.860703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471958, 37.276058, 28.205448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.790272, 37.516716, 28.177858>,  <32.981258, 37.661110, 28.161304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.790272, 37.516716, 28.177858>,  <32.471958, 37.276058, 28.205448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790272, 37.516716, 28.177858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074189, -0.016184, -0.997113,
		-0.601021, 0.798602, 0.031757,
		0.795782, 0.601642, -0.068974,
		33.029007, 37.697208, 28.157166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241394, 37.826832, 27.850773>,  <32.471958, 37.276058, 28.205448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241394, 37.826832, 27.850773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638023, 37.792885, 27.811638>,  <32.876003, 37.772518, 27.788157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638023, 37.792885, 27.811638>,  <32.241394, 37.826832, 27.850773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638023, 37.792885, 27.811638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100367, -0.026089, -0.994608,
		0.081856, 0.996051, -0.034387,
		0.991578, -0.084866, -0.097835,
		32.935497, 37.767426, 27.782288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379025, 38.164364, 27.277117>,  <32.241394, 37.826832, 27.850773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379025, 38.164364, 27.277117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707771, 37.940495, 27.319626>,  <32.905022, 37.806171, 27.345131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707771, 37.940495, 27.319626>,  <32.379025, 38.164364, 27.277117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707771, 37.940495, 27.319626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007682, -0.175646, -0.984424,
		0.569624, 0.809884, -0.140059,
		0.821870, -0.559675, 0.106274,
		32.954330, 37.772591, 27.351507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814987, 38.412350, 26.708748>,  <32.379025, 38.164364, 27.277117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814987, 38.412350, 26.708748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915436, 38.038116, 26.808046>,  <32.975704, 37.813576, 26.867626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915436, 38.038116, 26.808046>,  <32.814987, 38.412350, 26.708748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915436, 38.038116, 26.808046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149780, -0.215818, -0.964878,
		0.956296, 0.279488, 0.085933,
		0.251126, -0.935580, 0.248247,
		32.990772, 37.757442, 26.882521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454731, 38.225208, 26.309050>,  <32.814987, 38.412350, 26.708748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454731, 38.225208, 26.309050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320793, 37.868500, 26.430782>,  <33.240429, 37.654472, 26.503822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320793, 37.868500, 26.430782>,  <33.454731, 38.225208, 26.309050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320793, 37.868500, 26.430782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252718, -0.396135, -0.882729,
		0.907750, -0.218670, 0.358012,
		-0.334848, -0.891774, 0.304330,
		33.220337, 37.600967, 26.522081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042839, 37.711071, 26.122473>,  <33.454731, 38.225208, 26.309050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042839, 37.711071, 26.122473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.690838, 37.528938, 26.176535>,  <33.479637, 37.419659, 26.208973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.690838, 37.528938, 26.176535>,  <34.042839, 37.711071, 26.122473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690838, 37.528938, 26.176535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022221, -0.323715, -0.945894,
		0.474448, -0.829386, 0.294988,
		-0.880003, -0.455332, 0.135156,
		33.426838, 37.392338, 26.217081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111526, 37.277016, 25.526840>,  <34.042839, 37.711071, 26.122473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111526, 37.277016, 25.526840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735870, 37.223251, 25.653301>,  <33.510479, 37.190994, 25.729177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735870, 37.223251, 25.653301>,  <34.111526, 37.277016, 25.526840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735870, 37.223251, 25.653301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287053, -0.198569, -0.937108,
		0.188734, -0.970827, 0.147901,
		-0.939138, -0.134408, 0.316155,
		33.454128, 37.182930, 25.748148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938763, 36.664150, 25.339670>,  <34.111526, 37.277016, 25.526840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938763, 36.664150, 25.339670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590946, 36.860489, 25.361439>,  <33.382256, 36.978291, 25.374500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590946, 36.860489, 25.361439>,  <33.938763, 36.664150, 25.339670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590946, 36.860489, 25.361439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197543, -0.244707, -0.949260,
		-0.452625, -0.836174, 0.309747,
		-0.869544, 0.490848, 0.054420,
		33.330082, 37.007744, 25.377766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400826, 36.110226, 25.088474>,  <33.938763, 36.664150, 25.339670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400826, 36.110226, 25.088474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236557, 36.474792, 25.078192>,  <33.137997, 36.693535, 25.072021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.236557, 36.474792, 25.078192>,  <33.400826, 36.110226, 25.088474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236557, 36.474792, 25.078192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336457, -0.177684, -0.924784,
		-0.847435, -0.371132, 0.379624,
		-0.410670, 0.911421, -0.025706,
		33.113358, 36.748219, 25.070480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742172, 36.018219, 24.732859>,  <33.400826, 36.110226, 25.088474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742172, 36.018219, 24.732859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.852947, 36.401253, 24.701021>,  <32.919415, 36.631073, 24.681919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.852947, 36.401253, 24.701021>,  <32.742172, 36.018219, 24.732859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852947, 36.401253, 24.701021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296715, 0.006439, -0.954944,
		-0.913927, 0.288081, 0.285913,
		0.276942, 0.957585, -0.079593,
		32.936031, 36.688530, 24.677143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076401, 36.300812, 24.398493>,  <32.742172, 36.018219, 24.732859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076401, 36.300812, 24.398493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.403721, 36.522789, 24.338589>,  <32.600113, 36.655975, 24.302647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.403721, 36.522789, 24.338589>,  <32.076401, 36.300812, 24.398493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403721, 36.522789, 24.338589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290979, 0.175244, -0.940543,
		-0.495703, 0.813221, 0.304878,
		0.818297, 0.554943, -0.149761,
		32.649208, 36.689270, 24.293661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868561, 36.876530, 23.967402>,  <32.076401, 36.300812, 24.398493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868561, 36.876530, 23.967402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.264442, 36.911221, 23.921865>,  <32.501972, 36.932037, 23.894545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.264442, 36.911221, 23.921865>,  <31.868561, 36.876530, 23.967402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264442, 36.911221, 23.921865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130007, 0.212294, -0.968519,
		-0.059832, 0.973350, 0.221384,
		0.989706, 0.086730, -0.113840,
		32.561356, 36.937241, 23.887712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998119, 37.419994, 23.471169>,  <31.868561, 36.876530, 23.967402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998119, 37.419994, 23.471169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.357918, 37.245281, 23.475687>,  <32.573799, 37.140453, 23.478397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.357918, 37.245281, 23.475687>,  <31.998119, 37.419994, 23.471169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357918, 37.245281, 23.475687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187240, 0.361987, -0.913185,
		0.394770, 0.823523, 0.407389,
		0.899498, -0.436778, 0.011295,
		32.627766, 37.114246, 23.479076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404243, 37.872433, 23.125484>,  <31.998119, 37.419994, 23.471169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404243, 37.872433, 23.125484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.622837, 37.538101, 23.104536>,  <32.753994, 37.337502, 23.091967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.622837, 37.538101, 23.104536>,  <32.404243, 37.872433, 23.125484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622837, 37.538101, 23.104536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120252, 0.140201, -0.982793,
		0.828793, 0.530780, 0.177128,
		0.546480, -0.835833, -0.052370,
		32.786781, 37.287350, 23.088825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006096, 38.040085, 22.694412>,  <32.404243, 37.872433, 23.125484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006096, 38.040085, 22.694412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981274, 37.641487, 22.671995>,  <32.966381, 37.402328, 22.658545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981274, 37.641487, 22.671995>,  <33.006096, 38.040085, 22.694412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981274, 37.641487, 22.671995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088848, 0.050415, -0.994769,
		0.994111, -0.066706, 0.085408,
		-0.062051, -0.996498, -0.056044,
		32.962658, 37.342537, 22.655182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458271, 37.805107, 22.253942>,  <33.006096, 38.040085, 22.694412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458271, 37.805107, 22.253942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.179577, 37.518177, 22.252512>,  <33.012360, 37.346020, 22.251654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.179577, 37.518177, 22.252512>,  <33.458271, 37.805107, 22.253942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179577, 37.518177, 22.252512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155505, 0.155905, -0.975455,
		0.700273, -0.679075, -0.220171,
		-0.696732, -0.717322, -0.003577,
		32.970558, 37.302979, 22.251438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585735, 37.351582, 21.679646>,  <33.458271, 37.805107, 22.253942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585735, 37.351582, 21.679646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197735, 37.327751, 21.773922>,  <32.964935, 37.313454, 21.830488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197735, 37.327751, 21.773922>,  <33.585735, 37.351582, 21.679646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197735, 37.327751, 21.773922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234999, -0.018497, -0.971820,
		0.062266, -0.998052, 0.003939,
		-0.969999, -0.059586, 0.235692,
		32.906734, 37.309875, 21.844629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999260, 36.759712, 21.936892>,  <33.585735, 37.351582, 21.679646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999260, 36.759712, 21.936892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263466, 37.003189, 21.761068>,  <34.421989, 37.149277, 21.655575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263466, 37.003189, 21.761068>,  <33.999260, 36.759712, 21.936892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263466, 37.003189, 21.761068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311601, 0.310408, 0.898082,
		0.683098, -0.730165, 0.015361,
		0.660517, 0.608692, -0.439559,
		34.461620, 37.185795, 21.629200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627586, 36.700191, 22.208189>,  <33.999260, 36.759712, 21.936892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627586, 36.700191, 22.208189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658554, 37.062290, 22.041077>,  <34.677135, 37.279549, 21.940809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658554, 37.062290, 22.041077>,  <34.627586, 36.700191, 22.208189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658554, 37.062290, 22.041077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207512, 0.395232, 0.894835,
		0.975164, -0.155974, -0.157250,
		0.077421, 0.905243, -0.417782,
		34.681782, 37.333862, 21.915743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195347, 36.977554, 22.579792>,  <34.627586, 36.700191, 22.208189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195347, 36.977554, 22.579792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.026047, 37.296288, 22.407318>,  <34.924465, 37.487526, 22.303835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.026047, 37.296288, 22.407318>,  <35.195347, 36.977554, 22.579792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026047, 37.296288, 22.407318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264343, 0.563814, 0.782455,
		0.866592, 0.217195, -0.449272,
		-0.423251, 0.796831, -0.431183,
		34.899071, 37.535336, 22.277964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714874, 37.543514, 22.579971>,  <35.195347, 36.977554, 22.579792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714874, 37.543514, 22.579971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.356705, 37.715748, 22.534689>,  <35.141804, 37.819088, 22.507521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.356705, 37.715748, 22.534689>,  <35.714874, 37.543514, 22.579971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356705, 37.715748, 22.534689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156694, 0.542784, 0.825126,
		0.416733, 0.721097, -0.553491,
		-0.895422, 0.430586, -0.113205,
		35.088078, 37.844925, 22.500727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858376, 38.307285, 22.733349>,  <35.714874, 37.543514, 22.579971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858376, 38.307285, 22.733349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462719, 38.255180, 22.760544>,  <35.225323, 38.223919, 22.776861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462719, 38.255180, 22.760544>,  <35.858376, 38.307285, 22.733349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462719, 38.255180, 22.760544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024703, 0.603538, 0.796951,
		-0.144846, 0.786622, -0.600205,
		-0.989146, -0.130262, 0.067988,
		35.165974, 38.216103, 22.780941>
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
