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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
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
	<4.678003, 15.267509, 15.066032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.280296, 15.226593, 15.078482>,  <4.041672, 15.202043, 15.085951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.280296, 15.226593, 15.078482>,  <4.678003, 15.267509, 15.066032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.280296, 15.226593, 15.078482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075791, 0.879579, 0.469677,
		-0.075419, 0.464625, -0.882290,
		-0.994267, -0.102292, 0.031122,
		3.982016, 15.195906, 15.087818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.295857, 15.829613, 14.660912>,  <4.678003, 15.267509, 15.066032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.295857, 15.829613, 14.660912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089789, 15.691245, 14.974584>,  <3.966148, 15.608225, 15.162786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.089789, 15.691245, 14.974584>,  <4.295857, 15.829613, 14.660912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.089789, 15.691245, 14.974584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071879, 0.894276, 0.441705,
		-0.854068, 0.283920, -0.435842,
		-0.515172, -0.345918, 0.784180,
		3.935237, 15.587470, 15.209838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.939569, 16.439482, 14.854394>,  <4.295857, 15.829613, 14.660912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.939569, 16.439482, 14.854394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.916728, 16.213284, 15.183503>,  <3.903024, 16.077564, 15.380969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.916728, 16.213284, 15.183503>,  <3.939569, 16.439482, 14.854394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.916728, 16.213284, 15.183503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098816, 0.816871, 0.568294,
		-0.993466, 0.113753, 0.009236,
		-0.057100, -0.565493, 0.822774,
		3.899598, 16.043636, 15.430335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.354864, 16.572426, 15.264789>,  <3.939569, 16.439482, 14.854394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.354864, 16.572426, 15.264789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.687590, 16.463345, 15.458166>,  <3.887226, 16.397896, 15.574192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.687590, 16.463345, 15.458166>,  <3.354864, 16.572426, 15.264789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.687590, 16.463345, 15.458166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177245, 0.955887, 0.234232,
		-0.525992, -0.109150, 0.843456,
		0.831815, -0.272702, 0.483443,
		3.937135, 16.381535, 15.603199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.360679, 16.808279, 15.990981>,  <3.354864, 16.572426, 15.264789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.360679, 16.808279, 15.990981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.744495, 16.780746, 15.881772>,  <3.974785, 16.764227, 15.816247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.744495, 16.780746, 15.881772>,  <3.360679, 16.808279, 15.990981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.744495, 16.780746, 15.881772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171510, 0.911894, 0.372872,
		0.223302, -0.404612, 0.886806,
		0.959542, -0.068833, -0.273023,
		4.032358, 16.760098, 15.799865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.752034, 17.044485, 16.497616>,  <3.360679, 16.808279, 15.990981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.752034, 17.044485, 16.497616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.009294, 17.082512, 16.193689>,  <4.163650, 17.105328, 16.011333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.009294, 17.082512, 16.193689>,  <3.752034, 17.044485, 16.497616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.009294, 17.082512, 16.193689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232885, 0.920977, 0.312356,
		0.729468, -0.377842, 0.570186,
		0.643149, 0.095066, -0.759816,
		4.202239, 17.111032, 15.965744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.282094, 17.339315, 16.793217>,  <3.752034, 17.044485, 16.497616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.282094, 17.339315, 16.793217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.319122, 17.445589, 16.409374>,  <4.341338, 17.509354, 16.179070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.319122, 17.445589, 16.409374>,  <4.282094, 17.339315, 16.793217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.319122, 17.445589, 16.409374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261346, 0.923472, 0.280888,
		0.960796, -0.276791, 0.016048,
		0.092567, 0.265682, -0.959606,
		4.346892, 17.525293, 16.121492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.878026, 17.781408, 16.770033>,  <4.282094, 17.339315, 16.793217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.878026, 17.781408, 16.770033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.687054, 17.877010, 16.431818>,  <4.572470, 17.934372, 16.228889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.687054, 17.877010, 16.431818>,  <4.878026, 17.781408, 16.770033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.687054, 17.877010, 16.431818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351588, 0.933864, 0.065446,
		0.805261, -0.266035, -0.529887,
		-0.477432, 0.239003, -0.845539,
		4.543824, 17.948711, 16.178156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.360592, 18.369926, 16.566019>,  <4.878026, 17.781408, 16.770033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.360592, 18.369926, 16.566019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.035342, 18.367567, 16.333197>,  <4.840191, 18.366152, 16.193502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.035342, 18.367567, 16.333197>,  <5.360592, 18.369926, 16.566019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.035342, 18.367567, 16.333197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052534, 0.995124, -0.083474,
		0.579711, -0.098453, -0.808852,
		-0.813127, -0.005899, -0.582056,
		4.791404, 18.365797, 16.158579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.548755, 18.830303, 15.977174>,  <5.360592, 18.369926, 16.566019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.548755, 18.830303, 15.977174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.150409, 18.820633, 16.012199>,  <4.911401, 18.814831, 16.033215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.150409, 18.820633, 16.012199>,  <5.548755, 18.830303, 15.977174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.150409, 18.820633, 16.012199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027777, 0.998808, -0.040127,
		-0.086491, -0.042393, -0.995350,
		-0.995865, -0.024177, 0.087565,
		4.851649, 18.813379, 16.038469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.348316, 19.336552, 15.525331>,  <5.548755, 18.830303, 15.977174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.348316, 19.336552, 15.525331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.057424, 19.274195, 15.792715>,  <4.882889, 19.236780, 15.953145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.057424, 19.274195, 15.792715>,  <5.348316, 19.336552, 15.525331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.057424, 19.274195, 15.792715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113031, 0.933375, 0.340640,
		-0.677024, 0.323280, -0.661157,
		-0.727229, -0.155891, 0.668458,
		4.839255, 19.227428, 15.993253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.941907, 19.892862, 15.504522>,  <5.348316, 19.336552, 15.525331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.941907, 19.892862, 15.504522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.841878, 19.728491, 15.855202>,  <4.781861, 19.629868, 16.065609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.841878, 19.728491, 15.855202>,  <4.941907, 19.892862, 15.504522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.841878, 19.728491, 15.855202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186887, 0.867954, 0.460140,
		-0.950020, 0.278911, -0.140252,
		-0.250071, -0.410930, 0.876699,
		4.766857, 19.605211, 16.118212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.360787, 20.243465, 15.857101>,  <4.941907, 19.892862, 15.504522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.360787, 20.243465, 15.857101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.562210, 20.062393, 16.151451>,  <4.683063, 19.953749, 16.328060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.562210, 20.062393, 16.151451>,  <4.360787, 20.243465, 15.857101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.562210, 20.062393, 16.151451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112610, 0.878867, 0.463586,
		-0.856592, -0.150575, 0.493536,
		0.503557, -0.452682, 0.735874,
		4.713276, 19.926588, 16.372213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.115335, 20.560476, 16.465216>,  <4.360787, 20.243465, 15.857101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.115335, 20.560476, 16.465216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.430870, 20.395943, 16.647881>,  <4.620190, 20.297222, 16.757481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.430870, 20.395943, 16.647881>,  <4.115335, 20.560476, 16.465216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.430870, 20.395943, 16.647881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153621, 0.851398, 0.501520,
		-0.595095, -0.325464, 0.734803,
		0.788836, -0.411334, 0.456664,
		4.667521, 20.272543, 16.784880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.031062, 20.607405, 17.257225>,  <4.115335, 20.560476, 16.465216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.031062, 20.607405, 17.257225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.420459, 20.540134, 17.195221>,  <4.654097, 20.499773, 17.158018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.420459, 20.540134, 17.195221>,  <4.031062, 20.607405, 17.257225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.420459, 20.540134, 17.195221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219918, 0.874448, 0.432408,
		0.062829, -0.455036, 0.888254,
		0.973493, -0.168175, -0.155011,
		4.712507, 20.489681, 17.148718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.280968, 20.765802, 17.930214>,  <4.031062, 20.607405, 17.257225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.280968, 20.765802, 17.930214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.565711, 20.778465, 17.649570>,  <4.736556, 20.786062, 17.481184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.565711, 20.778465, 17.649570>,  <4.280968, 20.765802, 17.930214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.565711, 20.778465, 17.649570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307012, 0.884454, 0.351404,
		0.631667, -0.465552, 0.619886,
		0.711857, 0.031658, -0.701611,
		4.779268, 20.787962, 17.439087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.879799, 20.789862, 18.243534>,  <4.280968, 20.765802, 17.930214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.879799, 20.789862, 18.243534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.987387, 20.939495, 17.888521>,  <5.051939, 21.029276, 17.675512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.987387, 20.939495, 17.888521>,  <4.879799, 20.789862, 18.243534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.987387, 20.939495, 17.888521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397026, 0.796495, 0.456034,
		0.877511, -0.475033, 0.065711,
		0.268969, 0.374086, -0.887533,
		5.068078, 21.051722, 17.622261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.461279, 20.992647, 18.370533>,  <4.879799, 20.789862, 18.243534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.461279, 20.992647, 18.370533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.389795, 21.204117, 18.038614>,  <5.346904, 21.330999, 17.839462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.389795, 21.204117, 18.038614>,  <5.461279, 20.992647, 18.370533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.389795, 21.204117, 18.038614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410042, 0.806664, 0.425627,
		0.894387, -0.264188, -0.360939,
		-0.178711, 0.528675, -0.829798,
		5.336182, 21.362719, 17.789675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.145126, 21.302526, 18.219772>,  <5.461279, 20.992647, 18.370533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.145126, 21.302526, 18.219772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.848439, 21.495293, 18.033176>,  <5.670426, 21.610952, 17.921219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.848439, 21.495293, 18.033176>,  <6.145126, 21.302526, 18.219772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.848439, 21.495293, 18.033176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495903, 0.862325, 0.102350,
		0.451589, -0.155418, -0.878586,
		-0.741720, 0.481913, -0.466488,
		5.625923, 21.639866, 17.893230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.539152, 21.818634, 17.756008>,  <6.145126, 21.302526, 18.219772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.539152, 21.818634, 17.756008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.166862, 21.960186, 17.792929>,  <5.943488, 22.045116, 17.815081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.166862, 21.960186, 17.792929>,  <6.539152, 21.818634, 17.756008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.166862, 21.960186, 17.792929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365090, 0.913841, 0.177772,
		-0.021441, 0.199156, -0.979733,
		-0.930725, 0.353879, 0.092303,
		5.887644, 22.066349, 17.820620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.500472, 22.403303, 17.374926>,  <6.539152, 21.818634, 17.756008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.500472, 22.403303, 17.374926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.204908, 22.427473, 17.643362>,  <6.027570, 22.441975, 17.804424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.204908, 22.427473, 17.643362>,  <6.500472, 22.403303, 17.374926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.204908, 22.427473, 17.643362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368925, 0.869699, 0.327900,
		-0.563835, 0.489871, -0.664919,
		-0.738908, 0.060423, 0.671092,
		5.983236, 22.445601, 17.844690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.194620, 23.015137, 17.259306>,  <6.500472, 22.403303, 17.374926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.194620, 23.015137, 17.259306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.082688, 22.922592, 17.632008>,  <6.015529, 22.867065, 17.855629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.082688, 22.922592, 17.632008>,  <6.194620, 23.015137, 17.259306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.082688, 22.922592, 17.632008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260916, 0.915672, 0.305726,
		-0.923914, 0.328661, -0.195868,
		-0.279830, -0.231359, 0.931755,
		5.998739, 22.853184, 17.911533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.843270, 23.594780, 17.602018>,  <6.194620, 23.015137, 17.259306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.843270, 23.594780, 17.602018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.904277, 23.371397, 17.928175>,  <5.940882, 23.237366, 18.123869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.904277, 23.371397, 17.928175>,  <5.843270, 23.594780, 17.602018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.904277, 23.371397, 17.928175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236335, 0.821715, 0.518585,
		-0.959627, 0.113612, 0.257310,
		0.152518, -0.558460, 0.815390,
		5.950033, 23.203859, 18.172792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.545542, 23.901060, 18.122368>,  <5.843270, 23.594780, 17.602018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.545542, 23.901060, 18.122368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.850254, 23.685028, 18.265482>,  <6.033080, 23.555408, 18.351351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.850254, 23.685028, 18.265482>,  <5.545542, 23.901060, 18.122368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.850254, 23.685028, 18.265482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403912, 0.827739, 0.389490,
		-0.506507, -0.152191, 0.848698,
		0.761778, -0.540079, 0.357784,
		6.078787, 23.523005, 18.372818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.635798, 24.186720, 18.723490>,  <5.545542, 23.901060, 18.122368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.635798, 24.186720, 18.723490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.966248, 23.974920, 18.646395>,  <6.164518, 23.847841, 18.600138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.966248, 23.974920, 18.646395>,  <5.635798, 24.186720, 18.723490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.966248, 23.974920, 18.646395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563006, 0.761510, 0.321135,
		-0.023271, -0.373809, 0.927214,
		0.826125, -0.529499, -0.192736,
		6.214086, 23.816071, 18.588573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.712584, 23.972185, 19.420204>,  <5.635798, 24.186720, 18.723490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.712584, 23.972185, 19.420204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.654885, 23.682804, 19.150150>,  <5.620265, 23.509176, 18.988117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.654885, 23.682804, 19.150150>,  <5.712584, 23.972185, 19.420204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.654885, 23.682804, 19.150150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446002, -0.656575, 0.608270,
		-0.883332, -0.213371, 0.417371,
		-0.144248, -0.723452, -0.675137,
		5.611610, 23.465769, 18.947609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.819314, 23.443981, 19.857922>,  <5.712584, 23.972185, 19.420204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.819314, 23.443981, 19.857922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.792595, 23.245277, 19.511795>,  <5.776564, 23.126055, 19.304119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.792595, 23.245277, 19.511795>,  <5.819314, 23.443981, 19.857922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.792595, 23.245277, 19.511795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477848, -0.777252, 0.409316,
		-0.875899, -0.386148, 0.289294,
		-0.066798, -0.496758, -0.865315,
		5.772556, 23.096251, 19.252201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.315646, 24.021664, 19.802912>,  <5.819314, 23.443981, 19.857922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.315646, 24.021664, 19.802912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.677734, 24.156822, 19.699837>,  <6.894987, 24.237917, 19.637993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.677734, 24.156822, 19.699837>,  <6.315646, 24.021664, 19.802912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.677734, 24.156822, 19.699837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325381, -0.161116, 0.931756,
		0.273320, -0.927291, -0.255790,
		0.905220, 0.337896, -0.257686,
		6.949300, 24.258190, 19.622530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.791895, 23.526093, 20.216888>,  <6.315646, 24.021664, 19.802912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.791895, 23.526093, 20.216888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.923034, 23.894739, 20.133804>,  <7.001718, 24.115927, 20.083954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.923034, 23.894739, 20.133804>,  <6.791895, 23.526093, 20.216888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.923034, 23.894739, 20.133804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237675, 0.132327, 0.962289,
		0.914345, -0.364851, -0.175662,
		0.327847, 0.921615, -0.207709,
		7.021388, 24.171223, 20.071491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.620647, 23.596670, 20.245134>,  <6.791895, 23.526093, 20.216888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.620647, 23.596670, 20.245134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.413096, 23.926981, 20.333553>,  <7.288566, 24.125168, 20.386604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.413096, 23.926981, 20.333553>,  <7.620647, 23.596670, 20.245134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.413096, 23.926981, 20.333553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340893, -0.037251, 0.939364,
		0.783938, 0.562766, -0.262173,
		-0.518876, 0.825776, 0.221045,
		7.257433, 24.174713, 20.399866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.029381, 24.145313, 20.491024>,  <7.620647, 23.596670, 20.245134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.029381, 24.145313, 20.491024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.665199, 24.181108, 20.652550>,  <7.446690, 24.202585, 20.749464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.665199, 24.181108, 20.652550>,  <8.029381, 24.145313, 20.491024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.665199, 24.181108, 20.652550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410641, 0.078811, 0.908385,
		0.049466, 0.992865, -0.108502,
		-0.910454, 0.089490, 0.403812,
		7.392063, 24.207956, 20.773693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.680278, 23.574976, 20.549513>,  <8.029381, 24.145313, 20.491024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.680278, 23.574976, 20.549513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.854066, 23.609993, 20.190945>,  <8.958339, 23.631002, 19.975803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.854066, 23.609993, 20.190945>,  <8.680278, 23.574976, 20.549513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.854066, 23.609993, 20.190945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357262, -0.930371, 0.082298,
		-0.826800, -0.356014, -0.435495,
		0.434471, 0.087542, -0.896421,
		8.984407, 23.636255, 19.922018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.599298, 22.897793, 20.223545>,  <8.680278, 23.574976, 20.549513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.599298, 22.897793, 20.223545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.915726, 23.100960, 20.087173>,  <9.105582, 23.222860, 20.005350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.915726, 23.100960, 20.087173>,  <8.599298, 22.897793, 20.223545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.915726, 23.100960, 20.087173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561093, -0.824472, 0.073620,
		-0.243695, -0.249532, -0.937201,
		0.791067, 0.507917, -0.340931,
		9.153046, 23.253334, 19.984894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.775958, 22.872990, 20.999275>,  <8.599298, 22.897793, 20.223545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.775958, 22.872990, 20.999275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.667547, 22.546579, 21.203489>,  <8.602501, 22.350733, 21.326017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.667547, 22.546579, 21.203489>,  <8.775958, 22.872990, 20.999275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.667547, 22.546579, 21.203489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317317, -0.576480, -0.752981,
		0.908765, -0.042077, 0.415181,
		-0.271027, -0.816027, 0.510533,
		8.586239, 22.301771, 21.356649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.116132, 22.235716, 20.752665>,  <8.775958, 22.872990, 20.999275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.116132, 22.235716, 20.752665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.775869, 22.089373, 20.903679>,  <8.571712, 22.001568, 20.994287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.775869, 22.089373, 20.903679>,  <9.116132, 22.235716, 20.752665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.775869, 22.089373, 20.903679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020030, -0.695054, -0.718679,
		0.525342, -0.618910, 0.583923,
		-0.850656, -0.365856, 0.377537,
		8.520673, 21.979616, 21.016939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.062841, 21.434809, 21.065825>,  <9.116132, 22.235716, 20.752665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.062841, 21.434809, 21.065825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.703941, 21.546314, 20.928867>,  <8.488601, 21.613218, 20.846693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.703941, 21.546314, 20.928867>,  <9.062841, 21.434809, 21.065825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.703941, 21.546314, 20.928867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018900, -0.799020, -0.601007,
		-0.441116, -0.532783, 0.722190,
		-0.897251, 0.278763, -0.342391,
		8.434766, 21.629944, 20.826149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.694799, 20.778536, 20.941561>,  <9.062841, 21.434809, 21.065825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.694799, 20.778536, 20.941561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.445603, 21.040350, 20.770227>,  <8.296085, 21.197437, 20.667427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.445603, 21.040350, 20.770227>,  <8.694799, 20.778536, 20.941561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.445603, 21.040350, 20.770227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290954, -0.702186, -0.649831,
		-0.726108, -0.280211, 0.627892,
		-0.622987, 0.654535, -0.428335,
		8.258706, 21.236710, 20.641727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.126620, 20.373333, 20.669487>,  <8.694799, 20.778536, 20.941561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.126620, 20.373333, 20.669487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.089097, 20.714390, 20.463886>,  <8.066583, 20.919024, 20.340525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.089097, 20.714390, 20.463886>,  <8.126620, 20.373333, 20.669487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.089097, 20.714390, 20.463886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297940, -0.516662, -0.802678,
		-0.949964, 0.077844, 0.302504,
		-0.093808, 0.852644, -0.514003,
		8.060954, 20.970182, 20.309685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.440269, 20.431034, 20.400707>,  <8.126620, 20.373333, 20.669487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.440269, 20.431034, 20.400707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.686079, 20.627680, 20.153913>,  <7.833565, 20.745668, 20.005836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.686079, 20.627680, 20.153913>,  <7.440269, 20.431034, 20.400707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.686079, 20.627680, 20.153913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347154, -0.533773, -0.771084,
		-0.708408, 0.688040, -0.157351,
		0.614527, 0.491616, -0.616985,
		7.870437, 20.775166, 19.968819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.006474, 20.654413, 19.794254>,  <7.440269, 20.431034, 20.400707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.006474, 20.654413, 19.794254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.386315, 20.675232, 19.670612>,  <7.614220, 20.687723, 19.596426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.386315, 20.675232, 19.670612>,  <7.006474, 20.654413, 19.794254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.386315, 20.675232, 19.670612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256728, -0.436662, -0.862216,
		-0.179849, 0.898119, -0.401294,
		0.949602, 0.052045, -0.309106,
		7.671196, 20.690845, 19.577881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.885394, 20.663662, 19.113537>,  <7.006474, 20.654413, 19.794254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.885394, 20.663662, 19.113537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.280703, 20.602833, 19.119047>,  <7.517889, 20.566336, 19.122353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.280703, 20.602833, 19.119047>,  <6.885394, 20.663662, 19.113537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.280703, 20.602833, 19.119047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083830, -0.615750, -0.783470,
		0.127628, 0.773127, -0.621277,
		0.988273, -0.152074, 0.013776,
		7.577185, 20.557211, 19.123180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.178338, 20.890730, 18.503342>,  <6.885394, 20.663662, 19.113537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.178338, 20.890730, 18.503342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.416231, 20.605160, 18.651180>,  <7.558967, 20.433817, 18.739883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.416231, 20.605160, 18.651180>,  <7.178338, 20.890730, 18.503342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.416231, 20.605160, 18.651180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018739, -0.471925, -0.881439,
		0.803704, 0.517296, -0.294048,
		0.594734, -0.713927, 0.369595,
		7.594651, 20.390982, 18.762058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.598307, 20.726545, 17.957878>,  <7.178338, 20.890730, 18.503342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.598307, 20.726545, 17.957878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.687164, 20.406090, 18.180168>,  <7.740478, 20.213816, 18.313541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.687164, 20.406090, 18.180168>,  <7.598307, 20.726545, 17.957878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.687164, 20.406090, 18.180168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116138, -0.544167, -0.830900,
		0.968073, 0.249119, -0.027841,
		0.222143, -0.801138, 0.555725,
		7.753807, 20.165749, 18.346886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.257261, 20.336962, 17.682514>,  <7.598307, 20.726545, 17.957878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.257261, 20.336962, 17.682514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.035466, 20.083179, 17.897926>,  <7.902389, 19.930910, 18.027174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.035466, 20.083179, 17.897926>,  <8.257261, 20.336962, 17.682514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.035466, 20.083179, 17.897926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043880, -0.668510, -0.742408,
		0.831035, -0.388025, 0.398520,
		-0.554487, -0.634454, 0.538528,
		7.869120, 19.892843, 18.059484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.615317, 19.635590, 17.675648>,  <8.257261, 20.336962, 17.682514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.615317, 19.635590, 17.675648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.243981, 19.551159, 17.798044>,  <8.021180, 19.500500, 17.871483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.243981, 19.551159, 17.798044>,  <8.615317, 19.635590, 17.675648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.243981, 19.551159, 17.798044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030840, -0.776585, -0.629257,
		0.370451, -0.593601, 0.714426,
		-0.928340, -0.211076, 0.305993,
		7.965479, 19.487837, 17.889843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.621489, 18.894588, 17.569561>,  <8.615317, 19.635590, 17.675648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.621489, 18.894588, 17.569561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.238191, 18.992090, 17.629358>,  <8.008212, 19.050592, 17.665237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.238191, 18.992090, 17.629358>,  <8.621489, 18.894588, 17.569561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.238191, 18.992090, 17.629358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284201, -0.754178, -0.591984,
		-0.031554, -0.609753, 0.791963,
		-0.958246, 0.243756, 0.149495,
		7.950717, 19.065218, 17.674208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.276762, 18.307837, 17.854189>,  <8.621489, 18.894588, 17.569561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.276762, 18.307837, 17.854189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.002321, 18.539248, 17.677750>,  <7.837656, 18.678095, 17.571886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.002321, 18.539248, 17.677750>,  <8.276762, 18.307837, 17.854189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.002321, 18.539248, 17.677750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293797, -0.775012, -0.559499,
		-0.665541, -0.254282, 0.701709,
		-0.686104, 0.578530, -0.441096,
		7.796490, 18.712807, 17.545422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.613039, 17.960705, 17.861994>,  <8.276762, 18.307837, 17.854189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.613039, 17.960705, 17.861994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.589571, 18.207367, 17.547976>,  <7.575491, 18.355364, 17.359564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.589571, 18.207367, 17.547976>,  <7.613039, 17.960705, 17.861994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.589571, 18.207367, 17.547976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234915, -0.772844, -0.589513,
		-0.970244, 0.149834, 0.190202,
		-0.058668, 0.616653, -0.785046,
		7.571971, 18.392363, 17.312462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.003362, 17.790998, 17.694433>,  <7.613039, 17.960705, 17.861994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.003362, 17.790998, 17.694433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.191631, 17.963867, 17.386747>,  <7.304593, 18.067589, 17.202135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.191631, 17.963867, 17.386747>,  <7.003362, 17.790998, 17.694433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.191631, 17.963867, 17.386747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334930, -0.719048, -0.608927,
		-0.816265, 0.544239, -0.193688,
		0.470673, 0.432174, -0.769216,
		7.332833, 18.093519, 17.155983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.500834, 17.897797, 17.286512>,  <7.003362, 17.790998, 17.694433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.500834, 17.897797, 17.286512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.830452, 17.911377, 17.060310>,  <7.028223, 17.919525, 16.924589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.830452, 17.911377, 17.060310>,  <6.500834, 17.897797, 17.286512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.830452, 17.911377, 17.060310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424915, -0.623163, -0.656594,
		-0.374693, 0.781355, -0.499089,
		0.824046, 0.033951, -0.565504,
		7.077666, 17.921562, 16.890659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.319164, 17.983887, 16.557772>,  <6.500834, 17.897797, 17.286512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.319164, 17.983887, 16.557772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.681352, 17.814222, 16.563612>,  <6.898664, 17.712423, 16.567116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.681352, 17.814222, 16.563612>,  <6.319164, 17.983887, 16.557772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.681352, 17.814222, 16.563612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280429, -0.623750, -0.729586,
		0.318570, 0.656522, -0.683734,
		0.905468, -0.424163, 0.014601,
		6.952992, 17.686974, 16.567991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.429568, 17.946396, 15.859896>,  <6.319164, 17.983887, 16.557772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.429568, 17.946396, 15.859896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.690065, 17.691126, 16.024147>,  <6.846364, 17.537964, 16.122698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.690065, 17.691126, 16.024147>,  <6.429568, 17.946396, 15.859896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.690065, 17.691126, 16.024147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046836, -0.573874, -0.817603,
		0.757423, 0.513226, -0.403621,
		0.651243, -0.638175, 0.410628,
		6.885438, 17.499674, 16.147335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.800659, 17.558401, 15.368697>,  <6.429568, 17.946396, 15.859896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.800659, 17.558401, 15.368697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.897410, 17.312098, 15.668653>,  <6.955461, 17.164314, 15.848627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.897410, 17.312098, 15.668653>,  <6.800659, 17.558401, 15.368697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.897410, 17.312098, 15.668653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112721, -0.785437, -0.608590,
		0.963737, 0.062676, -0.259390,
		0.241879, -0.615760, 0.749890,
		6.969974, 17.127369, 15.893620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.155047, 17.027157, 15.013997>,  <6.800659, 17.558401, 15.368697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.155047, 17.027157, 15.013997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.055216, 16.882397, 15.373272>,  <6.995318, 16.795540, 15.588837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.055216, 16.882397, 15.373272>,  <7.155047, 17.027157, 15.013997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.055216, 16.882397, 15.373272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064866, -0.919207, -0.388396,
		0.966180, -0.155196, 0.205937,
		-0.249577, -0.361902, 0.898186,
		6.980343, 16.773827, 15.642728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.711867, 16.534018, 15.289460>,  <7.155047, 17.027157, 15.013997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.711867, 16.534018, 15.289460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.347979, 16.459114, 15.437699>,  <7.129646, 16.414173, 15.526643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.347979, 16.459114, 15.437699>,  <7.711867, 16.534018, 15.289460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.347979, 16.459114, 15.437699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009172, -0.901377, -0.432938,
		0.415120, -0.390454, 0.821719,
		-0.909721, -0.187258, 0.370598,
		7.075063, 16.402937, 15.548879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.699849, 15.914855, 15.552050>,  <7.711867, 16.534018, 15.289460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.699849, 15.914855, 15.552050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.304688, 15.961195, 15.510814>,  <7.067591, 15.988999, 15.486073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.304688, 15.961195, 15.510814>,  <7.699849, 15.914855, 15.552050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.304688, 15.961195, 15.510814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063085, -0.907499, -0.415290,
		-0.141665, -0.403762, 0.903829,
		-0.987903, 0.115850, -0.103089,
		7.008317, 15.995950, 15.479887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.395535, 15.824265, 15.317944>,  <7.699849, 15.914855, 15.552050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.395535, 15.824265, 15.317944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.158226, 15.604481, 15.553273>,  <8.015841, 15.472610, 15.694471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.158226, 15.604481, 15.553273>,  <8.395535, 15.824265, 15.317944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.158226, 15.604481, 15.553273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803144, -0.453643, 0.386222,
		0.054676, 0.701643, 0.710428,
		-0.593271, -0.549459, 0.588324,
		7.980245, 15.439643, 15.729771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.885539, 15.644857, 15.779854>,  <8.395535, 15.824265, 15.317944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.885539, 15.644857, 15.779854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.640685, 15.329185, 15.799785>,  <8.493773, 15.139781, 15.811743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.640685, 15.329185, 15.799785>,  <8.885539, 15.644857, 15.779854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.640685, 15.329185, 15.799785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777630, -0.589347, 0.219002,
		-0.143467, 0.172805, 0.974451,
		-0.612135, -0.789182, 0.049827,
		8.457045, 15.092430, 15.814733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.606698, 15.438519, 15.710674>,  <8.885539, 15.644857, 15.779854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.606698, 15.438519, 15.710674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.546919, 15.833000, 15.739142>,  <9.511051, 16.069689, 15.756223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.546919, 15.833000, 15.739142>,  <9.606698, 15.438519, 15.710674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.546919, 15.833000, 15.739142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714366, 0.157458, -0.681828,
		-0.683628, -0.051056, -0.728042,
		-0.149447, 0.986205, 0.071170,
		9.502085, 16.128862, 15.760493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.452101, 15.782710, 15.010722>,  <9.606698, 15.438519, 15.710674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.452101, 15.782710, 15.010722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.646193, 16.021479, 15.266296>,  <9.762648, 16.164740, 15.419641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.646193, 16.021479, 15.266296>,  <9.452101, 15.782710, 15.010722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.646193, 16.021479, 15.266296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652060, 0.239814, -0.719241,
		-0.582555, 0.765621, -0.272863,
		0.485229, 0.596920, 0.638935,
		9.791761, 16.200554, 15.457977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.439970, 16.493578, 14.732737>,  <9.452101, 15.782710, 15.010722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.439970, 16.493578, 14.732737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.762478, 16.415258, 14.956018>,  <9.955982, 16.368267, 15.089988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.762478, 16.415258, 14.956018>,  <9.439970, 16.493578, 14.732737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.762478, 16.415258, 14.956018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591511, 0.256098, -0.764545,
		0.006743, 0.946613, 0.322301,
		0.806269, -0.195800, 0.558205,
		10.004358, 16.356518, 15.123480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.851362, 16.988972, 14.546513>,  <9.439970, 16.493578, 14.732737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.851362, 16.988972, 14.546513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.100549, 16.724434, 14.713621>,  <10.250061, 16.565710, 14.813886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.100549, 16.724434, 14.713621>,  <9.851362, 16.988972, 14.546513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.100549, 16.724434, 14.713621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652466, 0.144699, -0.743875,
		0.431508, 0.735991, 0.521649,
		0.622967, -0.661347, 0.417771,
		10.287439, 16.526030, 14.838952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.504379, 17.308903, 14.628428>,  <9.851362, 16.988972, 14.546513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.504379, 17.308903, 14.628428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.527497, 16.914856, 14.563680>,  <10.541368, 16.678427, 14.524831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.527497, 16.914856, 14.563680>,  <10.504379, 17.308903, 14.628428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.527497, 16.914856, 14.563680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570323, 0.165659, -0.804542,
		0.819385, -0.045820, 0.571410,
		0.057795, -0.985118, -0.161871,
		10.544836, 16.619320, 14.515119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.189342, 17.018929, 14.696500>,  <10.504379, 17.308903, 14.628428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.189342, 17.018929, 14.696500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.946826, 16.843212, 14.431340>,  <10.801316, 16.737782, 14.272244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.946826, 16.843212, 14.431340>,  <11.189342, 17.018929, 14.696500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.946826, 16.843212, 14.431340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671579, 0.163602, -0.722645,
		0.425904, -0.883322, 0.195829,
		-0.606290, -0.439292, -0.662899,
		10.764939, 16.711424, 14.232471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.597368, 16.477926, 15.110862>,  <11.189342, 17.018929, 14.696500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.597368, 16.477926, 15.110862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888803, 16.205261, 15.137686>,  <12.063663, 16.041662, 15.153780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888803, 16.205261, 15.137686>,  <11.597368, 16.477926, 15.110862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.888803, 16.205261, 15.137686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140565, 0.244622, 0.959376,
		-0.670375, -0.689562, 0.274046,
		0.728587, -0.681663, 0.067060,
		12.107379, 16.000763, 15.157804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.547788, 16.125952, 15.769426>,  <11.597368, 16.477926, 15.110862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.547788, 16.125952, 15.769426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.927106, 16.082253, 15.650229>,  <12.154696, 16.056032, 15.578710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.927106, 16.082253, 15.650229>,  <11.547788, 16.125952, 15.769426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.927106, 16.082253, 15.650229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301637, 0.018101, 0.953251,
		-0.098749, -0.993849, 0.050120,
		0.948295, -0.109251, -0.297995,
		12.211595, 16.049479, 15.560830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.802352, 15.668327, 16.251173>,  <11.547788, 16.125952, 15.769426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.802352, 15.668327, 16.251173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.133585, 15.820331, 16.086311>,  <12.332325, 15.911532, 15.987394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.133585, 15.820331, 16.086311>,  <11.802352, 15.668327, 16.251173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.133585, 15.820331, 16.086311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419825, 0.066859, 0.905139,
		0.371517, -0.922563, -0.104172,
		0.828083, 0.380008, -0.412155,
		12.382010, 15.934333, 15.962665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.350768, 15.218153, 16.338268>,  <11.802352, 15.668327, 16.251173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.350768, 15.218153, 16.338268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.504830, 15.583302, 16.284130>,  <12.597267, 15.802392, 16.251648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.504830, 15.583302, 16.284130>,  <12.350768, 15.218153, 16.338268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.504830, 15.583302, 16.284130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492305, -0.079195, 0.866813,
		0.780572, -0.400488, -0.479914,
		0.385155, 0.912873, -0.135345,
		12.620377, 15.857164, 16.243526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.129972, 15.119167, 16.404072>,  <12.350768, 15.218153, 16.338268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.129972, 15.119167, 16.404072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.077973, 15.511483, 16.462250>,  <13.046774, 15.746873, 16.497156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.077973, 15.511483, 16.462250>,  <13.129972, 15.119167, 16.404072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.077973, 15.511483, 16.462250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516241, -0.058288, 0.854458,
		0.846520, 0.186162, -0.498746,
		-0.129997, 0.980788, 0.145447,
		13.038975, 15.805719, 16.505884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.674827, 15.354737, 16.743040>,  <13.129972, 15.119167, 16.404072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.674827, 15.354737, 16.743040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455501, 15.683267, 16.806004>,  <13.323905, 15.880384, 16.843782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455501, 15.683267, 16.806004>,  <13.674827, 15.354737, 16.743040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.455501, 15.683267, 16.806004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477921, 0.153294, 0.864924,
		0.686253, 0.549479, -0.476581,
		-0.548314, 0.821324, 0.157409,
		13.291006, 15.929664, 16.853226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.120110, 15.865056, 16.950514>,  <13.674827, 15.354737, 16.743040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.120110, 15.865056, 16.950514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.760018, 15.947501, 17.103931>,  <13.543963, 15.996968, 17.195982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.760018, 15.947501, 17.103931>,  <14.120110, 15.865056, 16.950514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.760018, 15.947501, 17.103931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411966, 0.118008, 0.903525,
		0.140966, 0.971387, -0.191146,
		-0.900229, 0.206112, 0.383543,
		13.489949, 16.009335, 17.218994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.159972, 16.441080, 17.392168>,  <14.120110, 15.865056, 16.950514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.159972, 16.441080, 17.392168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.824034, 16.265102, 17.519358>,  <13.622471, 16.159515, 17.595673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.824034, 16.265102, 17.519358>,  <14.159972, 16.441080, 17.392168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.824034, 16.265102, 17.519358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321306, 0.069237, 0.944441,
		-0.437515, 0.895353, 0.083208,
		-0.839847, -0.439943, 0.317975,
		13.572080, 16.133120, 17.614750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.107047, 16.784538, 18.014071>,  <14.159972, 16.441080, 17.392168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.107047, 16.784538, 18.014071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.844052, 16.486280, 18.057383>,  <13.686255, 16.307325, 18.083370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.844052, 16.486280, 18.057383>,  <14.107047, 16.784538, 18.014071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.844052, 16.486280, 18.057383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184648, -0.020127, 0.982599,
		-0.730490, 0.666040, 0.150915,
		-0.657488, -0.745645, 0.108280,
		13.646806, 16.262587, 18.089867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.712161, 16.946247, 18.646004>,  <14.107047, 16.784538, 18.014071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.712161, 16.946247, 18.646004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.634106, 16.557741, 18.591499>,  <13.587273, 16.324638, 18.558796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.634106, 16.557741, 18.591499>,  <13.712161, 16.946247, 18.646004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.634106, 16.557741, 18.591499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067193, -0.151845, 0.986118,
		-0.978471, 0.183275, 0.094893,
		-0.195139, -0.971264, -0.136261,
		13.575563, 16.266361, 18.550621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.096624, 16.688753, 19.160025>,  <13.712161, 16.946247, 18.646004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.096624, 16.688753, 19.160025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.333708, 16.393280, 19.031624>,  <13.475958, 16.215996, 18.954582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.333708, 16.393280, 19.031624>,  <13.096624, 16.688753, 19.160025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.333708, 16.393280, 19.031624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081326, -0.451409, 0.888603,
		-0.801300, -0.500577, -0.327628,
		0.592709, -0.738683, -0.321004,
		13.511520, 16.171675, 18.935322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.762238, 16.013529, 19.383638>,  <13.096624, 16.688753, 19.160025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.762238, 16.013529, 19.383638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.148147, 15.933366, 19.315466>,  <13.379692, 15.885267, 19.274563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.148147, 15.933366, 19.315466>,  <12.762238, 16.013529, 19.383638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.148147, 15.933366, 19.315466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002297, -0.641393, 0.767209,
		-0.263070, -0.740575, -0.618339,
		0.964774, -0.200409, -0.170433,
		13.437579, 15.873243, 19.264336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.811486, 15.335331, 19.342407>,  <12.762238, 16.013529, 19.383638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.811486, 15.335331, 19.342407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.189803, 15.436073, 19.424425>,  <13.416794, 15.496518, 19.473637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.189803, 15.436073, 19.424425>,  <12.811486, 15.335331, 19.342407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.189803, 15.436073, 19.424425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010098, -0.608249, 0.793682,
		0.324612, -0.752730, -0.572734,
		0.945793, 0.251855, 0.205047,
		13.473541, 15.511630, 19.485939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.225444, 14.695453, 19.480938>,  <12.811486, 15.335331, 19.342407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.225444, 14.695453, 19.480938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455022, 14.974513, 19.652458>,  <13.592769, 15.141950, 19.755371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455022, 14.974513, 19.652458>,  <13.225444, 14.695453, 19.480938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.455022, 14.974513, 19.652458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052092, -0.553679, 0.831099,
		0.817236, -0.454668, -0.354123,
		0.573944, 0.697651, 0.428802,
		13.627205, 15.183808, 19.781099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.804243, 14.281215, 19.749498>,  <13.225444, 14.695453, 19.480938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.804243, 14.281215, 19.749498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.759250, 14.624815, 19.949286>,  <13.732254, 14.830975, 20.069157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.759250, 14.624815, 19.949286>,  <13.804243, 14.281215, 19.749498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.759250, 14.624815, 19.949286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082121, -0.492900, 0.866202,
		0.990254, 0.138450, -0.015099,
		-0.112483, 0.859000, 0.499466,
		13.725505, 14.882515, 20.099125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.318051, 14.260434, 20.197916>,  <13.804243, 14.281215, 19.749498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.318051, 14.260434, 20.197916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.038000, 14.491963, 20.365145>,  <13.869969, 14.630881, 20.465483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.038000, 14.491963, 20.365145>,  <14.318051, 14.260434, 20.197916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.038000, 14.491963, 20.365145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052810, -0.625895, 0.778117,
		0.712061, 0.522703, 0.468775,
		-0.700128, 0.578823, 0.418072,
		13.827962, 14.665610, 20.490566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.357396, 14.038922, 20.905397>,  <14.318051, 14.260434, 20.197916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.357396, 14.038922, 20.905397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.014813, 14.244698, 20.888264>,  <13.809263, 14.368163, 20.877983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.014813, 14.244698, 20.888264>,  <14.357396, 14.038922, 20.905397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.014813, 14.244698, 20.888264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295616, -0.420741, 0.857664,
		0.423193, 0.747215, 0.512423,
		-0.856457, 0.514438, -0.042834,
		13.757876, 14.399029, 20.875414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.352228, 14.423356, 21.520262>,  <14.357396, 14.038922, 20.905397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.352228, 14.423356, 21.520262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.976105, 14.386789, 21.389135>,  <13.750431, 14.364849, 21.310459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.976105, 14.386789, 21.389135>,  <14.352228, 14.423356, 21.520262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.976105, 14.386789, 21.389135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293652, -0.268924, 0.917305,
		-0.172015, 0.958813, 0.226026,
		-0.940308, -0.091417, -0.327816,
		13.694013, 14.359365, 21.290791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.035557, 14.700297, 22.104042>,  <14.352228, 14.423356, 21.520262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.035557, 14.700297, 22.104042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721263, 14.534056, 21.920786>,  <13.532686, 14.434311, 21.810833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721263, 14.534056, 21.920786>,  <14.035557, 14.700297, 22.104042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.721263, 14.534056, 21.920786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320859, -0.359376, 0.876298,
		-0.528837, 0.835537, 0.149025,
		-0.785736, -0.415603, -0.458141,
		13.485542, 14.409375, 21.783344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513297, 14.906868, 22.493876>,  <14.035557, 14.700297, 22.104042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513297, 14.906868, 22.493876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.385858, 14.577647, 22.305799>,  <13.309394, 14.380115, 22.192953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.385858, 14.577647, 22.305799>,  <13.513297, 14.906868, 22.493876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.385858, 14.577647, 22.305799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271863, -0.395857, 0.877147,
		-0.908067, 0.407286, -0.097637,
		-0.318600, -0.823052, -0.470191,
		13.290277, 14.330731, 22.164742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.894610, 14.756630, 22.702663>,  <13.513297, 14.906868, 22.493876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.894610, 14.756630, 22.702663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.971804, 14.382382, 22.584427>,  <13.018120, 14.157834, 22.513485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.971804, 14.382382, 22.584427>,  <12.894610, 14.756630, 22.702663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.971804, 14.382382, 22.584427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410012, -0.350589, 0.842009,
		-0.891430, -0.041298, -0.451273,
		0.192984, -0.935619, -0.295593,
		13.029699, 14.101697, 22.495749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.222992, 14.461485, 22.884995>,  <12.894610, 14.756630, 22.702663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.222992, 14.461485, 22.884995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.490423, 14.173504, 22.810513>,  <12.650882, 14.000715, 22.765823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.490423, 14.173504, 22.810513>,  <12.222992, 14.461485, 22.884995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.490423, 14.173504, 22.810513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379918, -0.545938, 0.746736,
		-0.639271, -0.428508, -0.638525,
		0.668577, -0.719953, -0.186205,
		12.690996, 13.957518, 22.754652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.911011, 13.962420, 23.231726>,  <12.222992, 14.461485, 22.884995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.911011, 13.962420, 23.231726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.270783, 13.796089, 23.177896>,  <12.486648, 13.696291, 23.145599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.270783, 13.796089, 23.177896>,  <11.911011, 13.962420, 23.231726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.270783, 13.796089, 23.177896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176101, -0.626603, 0.759182,
		-0.400011, -0.659134, -0.636815,
		0.899433, -0.415825, -0.134574,
		12.540613, 13.671342, 23.137524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.865512, 13.272876, 23.129129>,  <11.911011, 13.962420, 23.231726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.865512, 13.272876, 23.129129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.241861, 13.306486, 23.260399>,  <12.467670, 13.326653, 23.339161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.241861, 13.306486, 23.260399>,  <11.865512, 13.272876, 23.129129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.241861, 13.306486, 23.260399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190563, -0.669657, 0.717806,
		0.280078, -0.737902, -0.614050,
		0.940873, 0.084026, 0.328173,
		12.524123, 13.331694, 23.358850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.119080, 12.537237, 23.376776>,  <11.865512, 13.272876, 23.129129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.119080, 12.537237, 23.376776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.363889, 12.801560, 23.550562>,  <12.510775, 12.960155, 23.654833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.363889, 12.801560, 23.550562>,  <12.119080, 12.537237, 23.376776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.363889, 12.801560, 23.550562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124052, -0.622789, 0.772493,
		0.781050, -0.418887, -0.463136,
		0.612023, 0.660808, 0.434466,
		12.547496, 12.999803, 23.680902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.629018, 12.158612, 23.619577>,  <12.119080, 12.537237, 23.376776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.629018, 12.158612, 23.619577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.658191, 12.497869, 23.829468>,  <12.675694, 12.701422, 23.955402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.658191, 12.497869, 23.829468>,  <12.629018, 12.158612, 23.619577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.658191, 12.497869, 23.829468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136278, -0.529669, 0.837185,
		0.987982, 0.010452, -0.154212,
		0.072931, 0.848140, 0.524728,
		12.680070, 12.752311, 23.986887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.153571, 12.034616, 24.014149>,  <12.629018, 12.158612, 23.619577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.153571, 12.034616, 24.014149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.962581, 12.327166, 24.208923>,  <12.847986, 12.502696, 24.325788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.962581, 12.327166, 24.208923>,  <13.153571, 12.034616, 24.014149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.962581, 12.327166, 24.208923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233157, -0.428855, 0.872766,
		0.847145, 0.530257, 0.034243,
		-0.477476, 0.731376, 0.486936,
		12.819338, 12.546578, 24.355003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.546737, 12.196749, 24.674314>,  <13.153571, 12.034616, 24.014149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.546737, 12.196749, 24.674314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.181336, 12.342684, 24.746323>,  <12.962096, 12.430245, 24.789528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.181336, 12.342684, 24.746323>,  <13.546737, 12.196749, 24.674314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.181336, 12.342684, 24.746323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066025, -0.303681, 0.950483,
		0.401442, 0.880154, 0.253325,
		-0.913502, 0.364838, 0.180022,
		12.907286, 12.452135, 24.800329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.517092, 12.560869, 25.345192>,  <13.546737, 12.196749, 24.674314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.517092, 12.560869, 25.345192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.145539, 12.442493, 25.256107>,  <12.922607, 12.371469, 25.202656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.145539, 12.442493, 25.256107>,  <13.517092, 12.560869, 25.345192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.145539, 12.442493, 25.256107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090165, -0.402538, 0.910952,
		-0.359235, 0.866247, 0.347227,
		-0.928881, -0.295938, -0.222711,
		12.866875, 12.353712, 25.189295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.292385, 12.637957, 26.000254>,  <13.517092, 12.560869, 25.345192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.292385, 12.637957, 26.000254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.993267, 12.457234, 25.805656>,  <12.813796, 12.348802, 25.688898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.993267, 12.457234, 25.805656>,  <13.292385, 12.637957, 26.000254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.993267, 12.457234, 25.805656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249040, -0.488365, 0.836349,
		-0.615452, 0.746574, 0.252679,
		-0.747795, -0.451805, -0.486492,
		12.768929, 12.321692, 25.659708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.749600, 12.730798, 26.424660>,  <13.292385, 12.637957, 26.000254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.749600, 12.730798, 26.424660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.671634, 12.404799, 26.206379>,  <12.624853, 12.209201, 26.075411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.671634, 12.404799, 26.206379>,  <12.749600, 12.730798, 26.424660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.671634, 12.404799, 26.206379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078494, -0.541625, 0.836947,
		-0.977674, 0.205970, 0.041600,
		-0.194918, -0.814996, -0.545700,
		12.613158, 12.160300, 26.042669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.206806, 12.380063, 26.720732>,  <12.749600, 12.730798, 26.424660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.206806, 12.380063, 26.720732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.410402, 12.107941, 26.509787>,  <12.532560, 11.944667, 26.383219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.410402, 12.107941, 26.509787>,  <12.206806, 12.380063, 26.720732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.410402, 12.107941, 26.509787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216292, -0.694088, 0.686629,
		-0.833155, -0.235423, -0.500429,
		0.508990, -0.680307, -0.527362,
		12.563100, 11.903849, 26.351578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.744746, 11.713161, 26.552490>,  <12.206806, 12.380063, 26.720732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.744746, 11.713161, 26.552490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.127157, 11.599064, 26.525217>,  <12.356604, 11.530606, 26.508852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.127157, 11.599064, 26.525217>,  <11.744746, 11.713161, 26.552490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.127157, 11.599064, 26.525217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143218, -0.656956, 0.740201,
		-0.255929, -0.697888, -0.668919,
		0.956028, -0.285240, -0.068184,
		12.413965, 11.513492, 26.504761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.699621, 11.107271, 26.920244>,  <11.744746, 11.713161, 26.552490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.699621, 11.107271, 26.920244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.094797, 11.155123, 26.880922>,  <12.331903, 11.183833, 26.857328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.094797, 11.155123, 26.880922>,  <11.699621, 11.107271, 26.920244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.094797, 11.155123, 26.880922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151792, -0.622930, 0.767410,
		0.030566, -0.773076, -0.633576,
		0.987940, 0.119628, -0.098306,
		12.391179, 11.191011, 26.851431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.959456, 10.419314, 26.801416>,  <11.699621, 11.107271, 26.920244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.959456, 10.419314, 26.801416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.247611, 10.652217, 26.952160>,  <12.420504, 10.791958, 27.042606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.247611, 10.652217, 26.952160>,  <11.959456, 10.419314, 26.801416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.247611, 10.652217, 26.952160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224421, -0.709813, 0.667684,
		0.656261, -0.396415, -0.642010,
		0.720387, 0.582255, 0.376858,
		12.463727, 10.826894, 27.065218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.547236, 10.030585, 26.839569>,  <11.959456, 10.419314, 26.801416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.547236, 10.030585, 26.839569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593267, 10.328566, 27.102417>,  <12.620886, 10.507354, 27.260126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593267, 10.328566, 27.102417>,  <12.547236, 10.030585, 26.839569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.593267, 10.328566, 27.102417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143746, -0.667040, 0.731023,
		0.982901, 0.010334, -0.183845,
		0.115077, 0.744950, 0.657120,
		12.627790, 10.552051, 27.299553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.085499, 9.834256, 27.343128>,  <12.547236, 10.030585, 26.839569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.085499, 9.834256, 27.343128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.898743, 10.135120, 27.529146>,  <12.786689, 10.315639, 27.640757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.898743, 10.135120, 27.529146>,  <13.085499, 9.834256, 27.343128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.898743, 10.135120, 27.529146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120124, -0.467064, 0.876026,
		0.876119, 0.464871, 0.127715,
		-0.466890, 0.752161, 0.465046,
		12.758676, 10.360768, 27.668659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.450221, 10.095622, 27.954832>,  <13.085499, 9.834256, 27.343128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.450221, 10.095622, 27.954832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.069031, 10.203007, 28.011070>,  <12.840317, 10.267438, 28.044813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.069031, 10.203007, 28.011070>,  <13.450221, 10.095622, 27.954832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.069031, 10.203007, 28.011070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011409, -0.431820, 0.901887,
		0.302833, 0.861080, 0.408451,
		-0.952975, 0.268461, 0.140593,
		12.783138, 10.283545, 28.053247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.509760, 10.099920, 28.665043>,  <13.450221, 10.095622, 27.954832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.509760, 10.099920, 28.665043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.120926, 10.126328, 28.574984>,  <12.887626, 10.142172, 28.520948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.120926, 10.126328, 28.574984>,  <13.509760, 10.099920, 28.665043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.120926, 10.126328, 28.574984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233980, -0.344038, 0.909336,
		-0.017427, 0.936632, 0.349881,
		-0.972085, 0.066018, -0.225149,
		12.829300, 10.146132, 28.507439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.174462, 10.374207, 29.371111>,  <13.509760, 10.099920, 28.665043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.174462, 10.374207, 29.371111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.874596, 10.219819, 29.156065>,  <12.694675, 10.127187, 29.027039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.874596, 10.219819, 29.156065>,  <13.174462, 10.374207, 29.371111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.874596, 10.219819, 29.156065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383442, -0.408791, 0.828168,
		-0.539417, 0.826994, 0.158461,
		-0.749667, -0.385967, -0.537613,
		12.649695, 10.104029, 28.994781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.574879, 10.566958, 29.661476>,  <13.174462, 10.374207, 29.371111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.574879, 10.566958, 29.661476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.539480, 10.229671, 29.449383>,  <12.518241, 10.027298, 29.322126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.539480, 10.229671, 29.449383>,  <12.574879, 10.566958, 29.661476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.539480, 10.229671, 29.449383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366489, -0.467419, 0.804491,
		-0.926204, 0.265520, -0.267666,
		-0.088496, -0.843220, -0.530235,
		12.512931, 9.976705, 29.290312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.856869, 10.349545, 29.697012>,  <12.574879, 10.566958, 29.661476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.856869, 10.349545, 29.697012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.111862, 10.046903, 29.638824>,  <12.264858, 9.865317, 29.603912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.111862, 10.046903, 29.638824>,  <11.856869, 10.349545, 29.697012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.111862, 10.046903, 29.638824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289929, -0.410504, 0.864539,
		-0.713831, -0.508954, -0.481052,
		0.637484, -0.756605, -0.145469,
		12.303107, 9.819921, 29.595184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.538076, 9.609932, 29.686977>,  <11.856869, 10.349545, 29.697012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.538076, 9.609932, 29.686977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.914365, 9.587276, 29.820745>,  <12.140138, 9.573682, 29.901007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.914365, 9.587276, 29.820745>,  <11.538076, 9.609932, 29.686977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.914365, 9.587276, 29.820745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317945, -0.490660, 0.811273,
		0.118137, -0.869509, -0.479582,
		0.940720, -0.056640, 0.334421,
		12.196581, 9.570284, 29.921072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.650209, 8.901450, 29.824669>,  <11.538076, 9.609932, 29.686977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.650209, 8.901450, 29.824669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.884665, 9.147658, 30.035412>,  <12.025338, 9.295383, 30.161858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.884665, 9.147658, 30.035412>,  <11.650209, 8.901450, 29.824669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.884665, 9.147658, 30.035412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372370, -0.372869, 0.849888,
		0.719571, -0.694337, 0.010648,
		0.586139, 0.615520, 0.526856,
		12.060506, 9.332314, 30.193468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.881997, 8.872891, 29.633938>,  <11.650209, 8.901450, 29.824669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.881997, 8.872891, 29.633938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.059166, 8.573371, 29.436710>,  <11.165467, 8.393659, 29.318375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.059166, 8.573371, 29.436710>,  <10.881997, 8.872891, 29.633938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.059166, 8.573371, 29.436710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612517, -0.148874, 0.776311,
		-0.654708, -0.645858, 0.392714,
		0.442922, -0.748802, -0.493068,
		11.192042, 8.348730, 29.288790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.912111, 8.268118, 30.043034>,  <10.881997, 8.872891, 29.633938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.912111, 8.268118, 30.043034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.228915, 8.236852, 29.800840>,  <11.418998, 8.218092, 29.655523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.228915, 8.236852, 29.800840>,  <10.912111, 8.268118, 30.043034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.228915, 8.236852, 29.800840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549872, -0.339581, 0.763103,
		-0.265257, -0.937324, -0.225972,
		0.792010, -0.078163, -0.605484,
		11.466518, 8.213402, 29.619194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.234430, 7.490101, 30.106333>,  <10.912111, 8.268118, 30.043034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.234430, 7.490101, 30.106333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.517201, 7.749391, 29.993155>,  <11.686864, 7.904964, 29.925247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.517201, 7.749391, 29.993155>,  <11.234430, 7.490101, 30.106333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.517201, 7.749391, 29.993155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543178, -0.241347, 0.804182,
		0.453001, -0.722190, -0.522715,
		0.706928, 0.648223, -0.282948,
		11.729280, 7.943857, 29.908270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.907929, 7.127575, 30.165062>,  <11.234430, 7.490101, 30.106333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.907929, 7.127575, 30.165062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.967074, 7.523014, 30.176462>,  <12.002562, 7.760277, 30.183302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.967074, 7.523014, 30.176462>,  <11.907929, 7.127575, 30.165062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.967074, 7.523014, 30.176462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507151, -0.100529, 0.855974,
		0.849078, -0.112114, -0.516233,
		0.147863, 0.988597, 0.028498,
		12.011434, 7.819593, 30.185011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.642506, 7.290353, 30.196156>,  <11.907929, 7.127575, 30.165062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.642506, 7.290353, 30.196156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.409517, 7.567489, 30.366190>,  <12.269724, 7.733771, 30.468210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.409517, 7.567489, 30.366190>,  <12.642506, 7.290353, 30.196156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.409517, 7.567489, 30.366190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521117, -0.083060, 0.849434,
		0.623830, 0.716291, -0.312671,
		-0.582471, 0.692841, 0.425087,
		12.234776, 7.775342, 30.493715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.699959, 7.055572, 29.411158>,  <12.642506, 7.290353, 30.196156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.699959, 7.055572, 29.411158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381513, 7.280761, 29.322378>,  <12.190445, 7.415874, 29.269110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381513, 7.280761, 29.322378>,  <12.699959, 7.055572, 29.411158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.381513, 7.280761, 29.322378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285977, 0.026773, -0.957862,
		-0.533309, -0.826041, -0.182312,
		-0.796114, 0.562974, -0.221951,
		12.142678, 7.449653, 29.255793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.358422, 6.795454, 28.831079>,  <12.699959, 7.055572, 29.411158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.358422, 6.795454, 28.831079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.239137, 7.177214, 28.836618>,  <12.167565, 7.406270, 28.839941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.239137, 7.177214, 28.836618>,  <12.358422, 6.795454, 28.831079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.239137, 7.177214, 28.836618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087940, 0.041918, -0.995244,
		-0.950440, -0.295577, -0.096431,
		-0.298213, 0.954399, 0.013847,
		12.149673, 7.463533, 28.840773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.845735, 6.787466, 28.204134>,  <12.358422, 6.795454, 28.831079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.845735, 6.787466, 28.204134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.027145, 7.130927, 28.299660>,  <12.135992, 7.337003, 28.356976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.027145, 7.130927, 28.299660>,  <11.845735, 6.787466, 28.204134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.027145, 7.130927, 28.299660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181963, 0.173102, -0.967949,
		-0.872470, 0.482446, -0.077736,
		0.453526, 0.858651, 0.238814,
		12.163203, 7.388522, 28.371304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.566103, 7.279024, 27.749611>,  <11.845735, 6.787466, 28.204134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.566103, 7.279024, 27.749611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.925004, 7.419659, 27.856438>,  <12.140345, 7.504040, 27.920534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.925004, 7.419659, 27.856438>,  <11.566103, 7.279024, 27.749611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.925004, 7.419659, 27.856438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234809, 0.132264, -0.963001,
		-0.373902, 0.926765, 0.036119,
		0.897253, 0.351587, 0.267067,
		12.194180, 7.525135, 27.936558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.711975, 7.927254, 27.265211>,  <11.566103, 7.279024, 27.749611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.711975, 7.927254, 27.265211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.072425, 7.831002, 27.409472>,  <12.288694, 7.773250, 27.496029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.072425, 7.831002, 27.409472>,  <11.711975, 7.927254, 27.265211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.072425, 7.831002, 27.409472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415002, 0.237964, -0.878149,
		0.125488, 0.940994, 0.314298,
		0.901125, -0.240632, 0.360653,
		12.342762, 7.758812, 27.517668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.148484, 8.412112, 27.016459>,  <11.711975, 7.927254, 27.265211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.148484, 8.412112, 27.016459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.386176, 8.105768, 27.114721>,  <12.528791, 7.921961, 27.173679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.386176, 8.105768, 27.114721>,  <12.148484, 8.412112, 27.016459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.386176, 8.105768, 27.114721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546782, 0.160672, -0.821714,
		0.589848, 0.622608, 0.514235,
		0.594229, -0.765861, 0.245659,
		12.564445, 7.876010, 27.188419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.813191, 8.708977, 27.168911>,  <12.148484, 8.412112, 27.016459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.813191, 8.708977, 27.168911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.841096, 8.328252, 27.049456>,  <12.857839, 8.099816, 26.977783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.841096, 8.328252, 27.049456>,  <12.813191, 8.708977, 27.168911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.841096, 8.328252, 27.049456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529987, 0.288985, -0.797246,
		0.845132, -0.102658, 0.524608,
		0.069761, -0.951813, -0.298638,
		12.862024, 8.042707, 26.959864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.483495, 8.623251, 26.737547>,  <12.813191, 8.708977, 27.168911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.483495, 8.623251, 26.737547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260706, 8.302418, 26.651340>,  <13.127033, 8.109918, 26.599617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260706, 8.302418, 26.651340>,  <13.483495, 8.623251, 26.737547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.260706, 8.302418, 26.651340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319066, 0.032936, -0.947160,
		0.766798, -0.596305, 0.237573,
		-0.556971, -0.802082, -0.215516,
		13.093615, 8.061793, 26.586685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.997598, 8.313048, 26.325083>,  <13.483495, 8.623251, 26.737547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.997598, 8.313048, 26.325083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.651753, 8.123530, 26.258190>,  <13.444246, 8.009820, 26.218054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.651753, 8.123530, 26.258190>,  <13.997598, 8.313048, 26.325083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.651753, 8.123530, 26.258190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192853, -0.005599, -0.981212,
		0.463956, -0.880618, 0.096214,
		-0.864611, -0.473794, -0.167232,
		13.392370, 7.981392, 26.208021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.121511, 7.707404, 25.990532>,  <13.997598, 8.313048, 26.325083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.121511, 7.707404, 25.990532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.744335, 7.799380, 25.894205>,  <13.518030, 7.854565, 25.836409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.744335, 7.799380, 25.894205>,  <14.121511, 7.707404, 25.990532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.744335, 7.799380, 25.894205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216880, -0.124632, -0.968209,
		-0.252644, -0.965191, 0.067651,
		-0.942939, 0.229940, -0.240819,
		13.461453, 7.868361, 25.821960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.075931, 7.359990, 25.421215>,  <14.121511, 7.707404, 25.990532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.075931, 7.359990, 25.421215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.738676, 7.570296, 25.376156>,  <13.536324, 7.696480, 25.349119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.738676, 7.570296, 25.376156>,  <14.075931, 7.359990, 25.421215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.738676, 7.570296, 25.376156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127715, -0.007688, -0.991781,
		-0.522311, -0.850594, -0.060666,
		-0.843137, 0.525766, -0.112649,
		13.485735, 7.728026, 25.342361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.524545, 7.029529, 24.898014>,  <14.075931, 7.359990, 25.421215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.524545, 7.029529, 24.898014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.466987, 7.424090, 24.929773>,  <13.432451, 7.660827, 24.948830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.466987, 7.424090, 24.929773>,  <13.524545, 7.029529, 24.898014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.466987, 7.424090, 24.929773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047319, 0.087001, -0.995084,
		-0.988461, -0.139431, -0.059195,
		-0.143896, 0.986403, 0.079399,
		13.423818, 7.720011, 24.953592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.942536, 7.174924, 24.327820>,  <13.524545, 7.029529, 24.898014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.942536, 7.174924, 24.327820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141541, 7.514307, 24.400040>,  <13.260944, 7.717938, 24.443371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141541, 7.514307, 24.400040>,  <12.942536, 7.174924, 24.327820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.141541, 7.514307, 24.400040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030509, 0.225123, -0.973852,
		-0.866920, 0.478995, 0.137887,
		0.497512, 0.848459, 0.180550,
		13.290795, 7.768846, 24.454205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.716581, 7.574577, 23.874292>,  <12.942536, 7.174924, 24.327820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.716581, 7.574577, 23.874292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.030106, 7.794433, 23.989904>,  <13.218220, 7.926347, 24.059271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.030106, 7.794433, 23.989904>,  <12.716581, 7.574577, 23.874292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.030106, 7.794433, 23.989904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044308, 0.414742, -0.908859,
		-0.619418, 0.725180, 0.300726,
		0.783810, 0.549639, 0.289030,
		13.265248, 7.959325, 24.076612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.544585, 8.276449, 23.693333>,  <12.716581, 7.574577, 23.874292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.544585, 8.276449, 23.693333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943505, 8.269268, 23.721819>,  <13.182858, 8.264959, 23.738911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943505, 8.269268, 23.721819>,  <12.544585, 8.276449, 23.693333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943505, 8.269268, 23.721819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070841, 0.491008, -0.868270,
		-0.019381, 0.870970, 0.490954,
		0.997299, -0.017952, 0.071216,
		13.242695, 8.263883, 23.743183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.834880, 8.965769, 23.589657>,  <12.544585, 8.276449, 23.693333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.834880, 8.965769, 23.589657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.132095, 8.706992, 23.521118>,  <13.310425, 8.551726, 23.479996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.132095, 8.706992, 23.521118>,  <12.834880, 8.965769, 23.589657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.132095, 8.706992, 23.521118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279319, 0.532442, -0.799054,
		0.608172, 0.545869, 0.576328,
		0.743040, -0.646941, -0.171345,
		13.355007, 8.512910, 23.469715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.483172, 9.381449, 23.404650>,  <12.834880, 8.965769, 23.589657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.483172, 9.381449, 23.404650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.535630, 9.003729, 23.283920>,  <13.567105, 8.777097, 23.211483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.535630, 9.003729, 23.283920>,  <13.483172, 9.381449, 23.404650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.535630, 9.003729, 23.283920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378596, 0.329083, -0.865083,
		0.916224, -0.000818, 0.400666,
		0.131145, -0.944301, -0.301824,
		13.574973, 8.720439, 23.193373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.190980, 9.371849, 23.122040>,  <13.483172, 9.381449, 23.404650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.190980, 9.371849, 23.122040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.015817, 9.050261, 22.961109>,  <13.910719, 8.857307, 22.864550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.015817, 9.050261, 22.961109>,  <14.190980, 9.371849, 23.122040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.015817, 9.050261, 22.961109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138389, 0.381904, -0.913782,
		0.888305, -0.455830, -0.055978,
		-0.437907, -0.803971, -0.402329,
		13.884444, 8.809070, 22.840410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.558831, 9.176537, 22.511982>,  <14.190980, 9.371849, 23.122040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.558831, 9.176537, 22.511982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.232096, 8.956891, 22.441271>,  <14.036055, 8.825104, 22.398844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.232096, 8.956891, 22.441271>,  <14.558831, 9.176537, 22.511982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.232096, 8.956891, 22.441271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061908, 0.221231, -0.973254,
		0.573536, -0.805935, -0.146715,
		-0.816838, -0.549114, -0.176778,
		13.987044, 8.792157, 22.388237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.630521, 8.766503, 21.933956>,  <14.558831, 9.176537, 22.511982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.630521, 8.766503, 21.933956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.233574, 8.814014, 21.947227>,  <13.995406, 8.842522, 21.955191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.233574, 8.814014, 21.947227>,  <14.630521, 8.766503, 21.933956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233574, 8.814014, 21.947227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001102, 0.277573, -0.960704,
		-0.123321, -0.953334, -0.275584,
		-0.992366, 0.118779, 0.033180,
		13.935864, 8.849648, 21.957182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406998, 8.477507, 21.371151>,  <14.630521, 8.766503, 21.933956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.406998, 8.477507, 21.371151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.105342, 8.726487, 21.454893>,  <13.924349, 8.875875, 21.505138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.105342, 8.726487, 21.454893>,  <14.406998, 8.477507, 21.371151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.105342, 8.726487, 21.454893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037363, 0.358944, -0.932611,
		-0.655651, -0.695496, -0.293950,
		-0.754139, 0.622450, 0.209356,
		13.879100, 8.913222, 21.517700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.881984, 8.427383, 20.889206>,  <14.406998, 8.477507, 21.371151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.881984, 8.427383, 20.889206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.813099, 8.786075, 21.052286>,  <13.771768, 9.001289, 21.150135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.813099, 8.786075, 21.052286>,  <13.881984, 8.427383, 20.889206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.813099, 8.786075, 21.052286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043835, 0.406499, -0.912599,
		-0.984084, -0.175033, -0.030697,
		-0.172213, 0.896729, 0.407701,
		13.761436, 9.055094, 21.174597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.540296, 8.744563, 20.450880>,  <13.881984, 8.427383, 20.889206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.540296, 8.744563, 20.450880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622245, 9.064672, 20.676302>,  <13.671414, 9.256737, 20.811556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622245, 9.064672, 20.676302>,  <13.540296, 8.744563, 20.450880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.622245, 9.064672, 20.676302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042487, 0.567954, -0.821963,
		-0.977866, 0.192342, 0.082358,
		0.204874, 0.800270, 0.563555,
		13.683707, 9.304752, 20.845369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.161834, 9.264105, 20.285633>,  <13.540296, 8.744563, 20.450880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.161834, 9.264105, 20.285633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.431203, 9.491966, 20.474100>,  <13.592824, 9.628683, 20.587179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.431203, 9.491966, 20.474100>,  <13.161834, 9.264105, 20.285633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.431203, 9.491966, 20.474100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197349, 0.752749, -0.628030,
		-0.712429, 0.329946, 0.619339,
		0.673423, 0.569653, 0.471166,
		13.633229, 9.662862, 20.615450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.826115, 9.847340, 20.477638>,  <13.161834, 9.264105, 20.285633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.826115, 9.847340, 20.477638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.215275, 9.939628, 20.483727>,  <13.448771, 9.995000, 20.487379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.215275, 9.939628, 20.483727>,  <12.826115, 9.847340, 20.477638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.215275, 9.939628, 20.483727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187624, 0.826220, -0.531186,
		-0.135131, 0.513936, 0.847118,
		0.972901, 0.230719, 0.015221,
		13.507145, 10.008843, 20.488293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.790733, 10.574736, 20.594727>,  <12.826115, 9.847340, 20.477638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.790733, 10.574736, 20.594727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.142375, 10.514430, 20.413864>,  <13.353360, 10.478247, 20.305347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.142375, 10.514430, 20.413864>,  <12.790733, 10.574736, 20.594727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.142375, 10.514430, 20.413864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161386, 0.798463, -0.580010,
		0.448475, 0.582861, 0.677601,
		0.879105, -0.150764, -0.452156,
		13.406106, 10.469201, 20.278217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.157148, 11.232026, 20.665195>,  <12.790733, 10.574736, 20.594727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.157148, 11.232026, 20.665195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.309064, 11.020122, 20.361851>,  <13.400213, 10.892979, 20.179844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.309064, 11.020122, 20.361851>,  <13.157148, 11.232026, 20.665195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.309064, 11.020122, 20.361851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100104, 0.838508, -0.535615,
		0.919641, 0.127505, 0.371487,
		0.379788, -0.529761, -0.758363,
		13.423000, 10.861194, 20.134342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.526754, 11.733569, 20.323936>,  <13.157148, 11.232026, 20.665195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.526754, 11.733569, 20.323936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.530417, 11.440937, 20.051258>,  <13.532616, 11.265358, 19.887651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.530417, 11.440937, 20.051258>,  <13.526754, 11.733569, 20.323936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.530417, 11.440937, 20.051258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223190, 0.666021, -0.711760,
		0.974732, -0.145629, 0.169380,
		0.009158, -0.731579, -0.681695,
		13.533165, 11.221463, 19.846750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.155022, 11.944265, 19.987062>,  <13.526754, 11.733569, 20.323936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.155022, 11.944265, 19.987062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.915594, 11.720626, 19.757586>,  <13.771937, 11.586442, 19.619900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.915594, 11.720626, 19.757586>,  <14.155022, 11.944265, 19.987062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.915594, 11.720626, 19.757586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186510, 0.599209, -0.778565,
		0.779057, -0.573023, -0.254389,
		-0.598568, -0.559101, -0.573693,
		13.736024, 11.552896, 19.585478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.539749, 11.864277, 19.374069>,  <14.155022, 11.944265, 19.987062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.539749, 11.864277, 19.374069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.164229, 11.787747, 19.259491>,  <13.938918, 11.741830, 19.190744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.164229, 11.787747, 19.259491>,  <14.539749, 11.864277, 19.374069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.164229, 11.787747, 19.259491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160128, 0.493865, -0.854668,
		0.304984, -0.848229, -0.433003,
		-0.938799, -0.191324, -0.286446,
		13.882589, 11.730350, 19.173557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.506163, 11.547466, 18.696493>,  <14.539749, 11.864277, 19.374069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.506163, 11.547466, 18.696493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.138625, 11.700342, 18.735804>,  <13.918103, 11.792068, 18.759390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.138625, 11.700342, 18.735804>,  <14.506163, 11.547466, 18.696493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.138625, 11.700342, 18.735804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061326, 0.384310, -0.921165,
		-0.389829, -0.840379, -0.376558,
		-0.918843, 0.382190, 0.098278,
		13.862972, 11.815000, 18.765287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.199654, 11.603732, 18.004082>,  <14.506163, 11.547466, 18.696493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.199654, 11.603732, 18.004082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.985866, 11.863441, 18.220520>,  <13.857593, 12.019267, 18.350384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.985866, 11.863441, 18.220520>,  <14.199654, 11.603732, 18.004082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.985866, 11.863441, 18.220520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009184, 0.635708, -0.771875,
		-0.845137, -0.417514, -0.333804,
		-0.534471, 0.649274, 0.541095,
		13.825524, 12.058224, 18.382849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.701693, 11.605497, 17.441523>,  <14.199654, 11.603732, 18.004082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.701693, 11.605497, 17.441523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.659340, 11.891056, 17.718403>,  <13.633928, 12.062391, 17.884531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.659340, 11.891056, 17.718403>,  <13.701693, 11.605497, 17.441523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.659340, 11.891056, 17.718403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270179, 0.649271, -0.710951,
		-0.956971, -0.262293, 0.124135,
		-0.105881, 0.713897, 0.692199,
		13.627576, 12.105226, 17.926064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.103175, 11.894748, 17.321329>,  <13.701693, 11.605497, 17.441523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.103175, 11.894748, 17.321329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.345673, 12.161932, 17.493979>,  <13.491171, 12.322243, 17.597569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.345673, 12.161932, 17.493979>,  <13.103175, 11.894748, 17.321329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.345673, 12.161932, 17.493979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138570, 0.623149, -0.769730,
		-0.783114, 0.406833, 0.470339,
		0.606243, 0.667961, 0.431622,
		13.527546, 12.362320, 17.623465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.780643, 12.450378, 17.127913>,  <13.103175, 11.894748, 17.321329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.780643, 12.450378, 17.127913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.124043, 12.609270, 17.257643>,  <13.330083, 12.704605, 17.335480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.124043, 12.609270, 17.257643>,  <12.780643, 12.450378, 17.127913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.124043, 12.609270, 17.257643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002421, 0.635575, -0.772036,
		-0.512807, 0.662008, 0.546603,
		0.858501, 0.397229, 0.324324,
		13.381593, 12.728438, 17.354940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.718915, 13.172484, 17.103340>,  <12.780643, 12.450378, 17.127913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.718915, 13.172484, 17.103340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.111323, 13.099847, 17.076155>,  <13.346768, 13.056264, 17.059843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.111323, 13.099847, 17.076155>,  <12.718915, 13.172484, 17.103340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.111323, 13.099847, 17.076155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104660, 0.791006, -0.602789,
		0.163224, 0.584236, 0.795000,
		0.981022, -0.181595, -0.067965,
		13.405630, 13.045368, 17.055765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.058615, 13.749544, 17.220619>,  <12.718915, 13.172484, 17.103340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.058615, 13.749544, 17.220619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.334349, 13.537114, 17.023529>,  <13.499789, 13.409657, 16.905275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.334349, 13.537114, 17.023529>,  <13.058615, 13.749544, 17.220619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.334349, 13.537114, 17.023529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160948, 0.775415, -0.610596,
		0.706337, 0.341602, 0.619996,
		0.689335, -0.531074, -0.492724,
		13.541149, 13.377792, 16.875711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.535010, 14.275213, 16.949905>,  <13.058615, 13.749544, 17.220619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.535010, 14.275213, 16.949905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.604066, 13.947611, 16.731026>,  <13.645499, 13.751049, 16.599699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.604066, 13.947611, 16.731026>,  <13.535010, 14.275213, 16.949905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.604066, 13.947611, 16.731026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185223, 0.572622, -0.798622,
		0.967413, 0.036520, 0.250555,
		0.172639, -0.819006, -0.547198,
		13.655857, 13.701909, 16.566866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.144629, 14.466842, 16.638432>,  <13.535010, 14.275213, 16.949905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.144629, 14.466842, 16.638432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.974176, 14.165791, 16.437647>,  <13.871905, 13.985160, 16.317177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.974176, 14.165791, 16.437647>,  <14.144629, 14.466842, 16.638432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.974176, 14.165791, 16.437647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130697, 0.497823, -0.857374,
		0.895172, -0.430957, -0.113770,
		-0.426129, -0.752628, -0.501961,
		13.846337, 13.940002, 16.287058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.340513, 14.597029, 16.042099>,  <14.144629, 14.466842, 16.638432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.340513, 14.597029, 16.042099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.106918, 14.296318, 15.919598>,  <13.966762, 14.115891, 15.846096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.106918, 14.296318, 15.919598>,  <14.340513, 14.597029, 16.042099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.106918, 14.296318, 15.919598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063676, 0.333686, -0.940531,
		0.809262, -0.568758, -0.146999,
		-0.583986, -0.751776, -0.306256,
		13.931723, 14.070786, 15.827721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.608397, 14.335586, 15.435071>,  <14.340513, 14.597029, 16.042099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.608397, 14.335586, 15.435071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.215245, 14.262002, 15.430861>,  <13.979355, 14.217852, 15.428334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.215245, 14.262002, 15.430861>,  <14.608397, 14.335586, 15.435071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.215245, 14.262002, 15.430861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026799, 0.199236, -0.979585,
		0.182292, -0.962532, -0.200754,
		-0.982879, -0.183950, -0.010524,
		13.920382, 14.206814, 15.427703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.162580, 14.303074, 15.043948>,  <14.608397, 14.335586, 15.435071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.162580, 14.303074, 15.043948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478358, 14.199025, 14.821557>,  <15.667826, 14.136596, 14.688123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478358, 14.199025, 14.821557>,  <15.162580, 14.303074, 15.043948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478358, 14.199025, 14.821557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148169, -0.798226, 0.583850,
		-0.595667, -0.543297, -0.591615,
		0.789447, -0.260121, -0.555977,
		15.715192, 14.120989, 14.654764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.190024, 13.625512, 14.954642>,  <15.162580, 14.303074, 15.043948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.190024, 13.625512, 14.954642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.571909, 13.675866, 14.846807>,  <15.801040, 13.706079, 14.782106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.571909, 13.675866, 14.846807>,  <15.190024, 13.625512, 14.954642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.571909, 13.675866, 14.846807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226749, -0.894489, 0.385324,
		-0.192638, -0.429002, -0.882524,
		0.954712, 0.125884, -0.269588,
		15.858323, 13.713632, 14.765931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.536788, 12.960321, 14.552159>,  <15.190024, 13.625512, 14.954642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.536788, 12.960321, 14.552159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.803857, 13.188212, 14.743836>,  <15.964098, 13.324946, 14.858843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.803857, 13.188212, 14.743836>,  <15.536788, 12.960321, 14.552159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803857, 13.188212, 14.743836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429930, -0.820579, 0.376578,
		0.607762, -0.045412, -0.792820,
		0.667672, 0.569726, 0.479192,
		16.004158, 13.359131, 14.887594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.067741, 12.581540, 14.585717>,  <15.536788, 12.960321, 14.552159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.067741, 12.581540, 14.585717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.179773, 12.845319, 14.864769>,  <16.246992, 13.003586, 15.032200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.179773, 12.845319, 14.864769>,  <16.067741, 12.581540, 14.585717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.179773, 12.845319, 14.864769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448747, -0.732365, 0.512122,
		0.848636, 0.169625, -0.501043,
		0.280078, 0.659446, 0.697629,
		16.263796, 13.043153, 15.074058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778477, 12.463910, 14.738142>,  <16.067741, 12.581540, 14.585717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.778477, 12.463910, 14.738142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621904, 12.618100, 15.072373>,  <16.527960, 12.710614, 15.272912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621904, 12.618100, 15.072373>,  <16.778477, 12.463910, 14.738142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.621904, 12.618100, 15.072373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487077, -0.683607, 0.543541,
		0.780728, 0.619751, 0.079830,
		-0.391432, 0.385474, 0.835578,
		16.504475, 12.733743, 15.323047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.315727, 12.286384, 15.220579>,  <16.778477, 12.463910, 14.738142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.315727, 12.286384, 15.220579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.029903, 12.424892, 15.463726>,  <16.858410, 12.507998, 15.609614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.029903, 12.424892, 15.463726>,  <17.315727, 12.286384, 15.220579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.029903, 12.424892, 15.463726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384666, -0.531285, 0.754829,
		0.584326, 0.773196, 0.246436,
		-0.714559, 0.346271, 0.607866,
		16.815536, 12.528773, 15.646086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.652903, 12.660787, 15.745596>,  <17.315727, 12.286384, 15.220579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.652903, 12.660787, 15.745596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.285759, 12.547057, 15.856371>,  <17.065474, 12.478820, 15.922836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.285759, 12.547057, 15.856371>,  <17.652903, 12.660787, 15.745596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.285759, 12.547057, 15.856371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389468, -0.510741, 0.766458,
		-0.076478, 0.811359, 0.579523,
		-0.917859, -0.284323, 0.276938,
		17.010401, 12.461761, 15.939452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.745800, 12.688824, 16.505623>,  <17.652903, 12.660787, 15.745596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.745800, 12.688824, 16.505623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.417154, 12.467443, 16.451010>,  <17.219967, 12.334614, 16.418242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.417154, 12.467443, 16.451010>,  <17.745800, 12.688824, 16.505623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.417154, 12.467443, 16.451010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213675, -0.521058, 0.826342,
		-0.528481, 0.649761, 0.546368,
		-0.821614, -0.553452, -0.136532,
		17.170670, 12.301407, 16.410049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.350590, 12.712523, 17.160923>,  <17.745800, 12.688824, 16.505623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.350590, 12.712523, 17.160923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.253706, 12.387599, 16.948700>,  <17.195576, 12.192645, 16.821367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.253706, 12.387599, 16.948700>,  <17.350590, 12.712523, 17.160923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.253706, 12.387599, 16.948700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014920, -0.549892, 0.835102,
		-0.970109, 0.194354, 0.145309,
		-0.242210, -0.812308, -0.530556,
		17.181044, 12.143907, 16.789534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.935047, 12.405494, 17.595240>,  <17.350590, 12.712523, 17.160923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.935047, 12.405494, 17.595240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.070463, 12.126669, 17.342417>,  <17.151712, 11.959373, 17.190723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.070463, 12.126669, 17.342417>,  <16.935047, 12.405494, 17.595240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.070463, 12.126669, 17.342417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214850, -0.596711, 0.773160,
		-0.916095, -0.397542, -0.052246,
		0.338540, -0.697062, -0.632056,
		17.172026, 11.917550, 17.152800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646326, 11.782524, 17.859411>,  <16.935047, 12.405494, 17.595240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.646326, 11.782524, 17.859411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.940744, 11.674185, 17.611258>,  <17.117395, 11.609181, 17.462366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.940744, 11.674185, 17.611258>,  <16.646326, 11.782524, 17.859411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.940744, 11.674185, 17.611258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310082, -0.679758, 0.664664,
		-0.601732, -0.681595, -0.416350,
		0.736048, -0.270848, -0.620382,
		17.161558, 11.592931, 17.425142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688740, 11.054034, 17.903919>,  <16.646326, 11.782524, 17.859411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688740, 11.054034, 17.903919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.050222, 11.147959, 17.760714>,  <17.267113, 11.204313, 17.674789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.050222, 11.147959, 17.760714>,  <16.688740, 11.054034, 17.903919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.050222, 11.147959, 17.760714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425622, -0.583387, 0.691741,
		-0.046432, -0.777511, -0.627153,
		0.903709, 0.234812, -0.358014,
		17.321335, 11.218402, 17.653309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.944376, 10.443664, 17.776052>,  <16.688740, 11.054034, 17.903919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.944376, 10.443664, 17.776052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.251598, 10.695414, 17.823345>,  <17.435932, 10.846464, 17.851721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.251598, 10.695414, 17.823345>,  <16.944376, 10.443664, 17.776052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.251598, 10.695414, 17.823345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362027, -0.579028, 0.730522,
		0.528231, -0.518278, -0.672577,
		0.768055, 0.629376, 0.118230,
		17.482016, 10.884226, 17.858814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.582287, 10.020247, 17.787331>,  <16.944376, 10.443664, 17.776052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.582287, 10.020247, 17.787331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605436, 10.369563, 17.980829>,  <17.619326, 10.579153, 18.096930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605436, 10.369563, 17.980829>,  <17.582287, 10.020247, 17.787331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.605436, 10.369563, 17.980829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263754, -0.480719, 0.836268,
		0.962852, 0.079193, -0.258155,
		0.057873, 0.873292, 0.483748,
		17.622799, 10.631551, 18.125954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168884, 9.906637, 18.177744>,  <17.582287, 10.020247, 17.787331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.168884, 9.906637, 18.177744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.011259, 10.232283, 18.348358>,  <17.916683, 10.427670, 18.450727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.011259, 10.232283, 18.348358>,  <18.168884, 9.906637, 18.177744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.011259, 10.232283, 18.348358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175939, -0.388687, 0.904416,
		0.902086, 0.431443, 0.009934,
		-0.394065, 0.814112, 0.426537,
		17.893040, 10.476517, 18.476318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.604992, 10.396813, 18.631453>,  <18.168884, 9.906637, 18.177744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.604992, 10.396813, 18.631453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.217014, 10.369218, 18.724791>,  <17.984228, 10.352661, 18.780794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.217014, 10.369218, 18.724791>,  <18.604992, 10.396813, 18.631453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.217014, 10.369218, 18.724791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239475, -0.440644, 0.865150,
		0.043137, 0.895027, 0.443921,
		-0.969944, -0.068988, 0.233345,
		17.926031, 10.348521, 18.794794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.619135, 9.977668, 19.177732>,  <18.604992, 10.396813, 18.631453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.619135, 9.977668, 19.177732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.238588, 10.100771, 19.183189>,  <18.010260, 10.174633, 19.186462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.238588, 10.100771, 19.183189>,  <18.619135, 9.977668, 19.177732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.238588, 10.100771, 19.183189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118456, -0.406338, 0.906012,
		0.284375, 0.860334, 0.423033,
		-0.951367, 0.307757, 0.013640,
		17.953178, 10.193098, 19.187281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487852, 10.311707, 19.852037>,  <18.619135, 9.977668, 19.177732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.487852, 10.311707, 19.852037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.128000, 10.193578, 19.723385>,  <17.912088, 10.122701, 19.646193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.128000, 10.193578, 19.723385>,  <18.487852, 10.311707, 19.852037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.128000, 10.193578, 19.723385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147588, -0.487581, 0.860513,
		-0.410951, 0.821613, 0.395058,
		-0.899632, -0.295323, -0.321632,
		17.858110, 10.104980, 19.626896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041191, 10.509038, 20.417028>,  <18.487852, 10.311707, 19.852037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.041191, 10.509038, 20.417028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.838276, 10.216266, 20.235067>,  <17.716526, 10.040603, 20.125891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.838276, 10.216266, 20.235067>,  <18.041191, 10.509038, 20.417028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.838276, 10.216266, 20.235067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360420, -0.299287, 0.883473,
		-0.782787, 0.612132, -0.111977,
		-0.507289, -0.731930, -0.454903,
		17.686089, 9.996687, 20.098597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.394306, 10.474079, 20.800472>,  <18.041191, 10.509038, 20.417028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.394306, 10.474079, 20.800472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.386072, 10.129960, 20.596722>,  <17.381132, 9.923489, 20.474470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.386072, 10.129960, 20.596722>,  <17.394306, 10.474079, 20.800472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.386072, 10.129960, 20.596722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431888, -0.451845, 0.780582,
		-0.901692, 0.236062, -0.362251,
		-0.020585, -0.860297, -0.509378,
		17.379896, 9.871871, 20.443909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.668320, 10.343523, 20.711615>,  <17.394306, 10.474079, 20.800472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.668320, 10.343523, 20.711615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.896885, 10.015661, 20.695354>,  <17.034023, 9.818944, 20.685598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.896885, 10.015661, 20.695354>,  <16.668320, 10.343523, 20.711615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896885, 10.015661, 20.695354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525523, -0.403507, 0.749004,
		-0.630327, -0.406629, -0.661317,
		0.571413, -0.819656, -0.040648,
		17.068308, 9.769765, 20.683161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.284277, 9.837096, 20.775751>,  <16.668320, 10.343523, 20.711615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.284277, 9.837096, 20.775751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.617933, 9.644576, 20.883499>,  <16.818127, 9.529064, 20.948147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.617933, 9.644576, 20.883499>,  <16.284277, 9.837096, 20.775751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.617933, 9.644576, 20.883499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523572, -0.537390, 0.661124,
		-0.173442, -0.692504, -0.700254,
		0.834141, -0.481300, 0.269370,
		16.868176, 9.500186, 20.964310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.154030, 9.141236, 20.644999>,  <16.284277, 9.837096, 20.775751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.154030, 9.141236, 20.644999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453569, 9.130470, 20.909876>,  <16.633293, 9.124010, 21.068802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453569, 9.130470, 20.909876>,  <16.154030, 9.141236, 20.644999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453569, 9.130470, 20.909876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567357, -0.542457, 0.619554,
		0.342535, -0.839653, -0.421489,
		0.748850, -0.026916, 0.662193,
		16.678225, 9.122396, 21.108534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.065628, 8.567420, 20.888899>,  <16.154030, 9.141236, 20.644999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.065628, 8.567420, 20.888899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.315025, 8.712751, 21.165810>,  <16.464664, 8.799951, 21.331957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.315025, 8.712751, 21.165810>,  <16.065628, 8.567420, 20.888899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.315025, 8.712751, 21.165810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303525, -0.703521, 0.642598,
		0.720505, -0.610779, -0.328362,
		0.623494, 0.363329, 0.692277,
		16.502073, 8.821750, 21.373493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266167, 7.944123, 21.346807>,  <16.065628, 8.567420, 20.888899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.266167, 7.944123, 21.346807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.335798, 8.282531, 21.548380>,  <16.377577, 8.485576, 21.669323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.335798, 8.282531, 21.548380>,  <16.266167, 7.944123, 21.346807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.335798, 8.282531, 21.548380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116865, -0.490381, 0.863637,
		0.977773, -0.209232, 0.013505,
		0.174078, 0.846020, 0.503933,
		16.388021, 8.536337, 21.699560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.714252, 7.770997, 21.918011>,  <16.266167, 7.944123, 21.346807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.714252, 7.770997, 21.918011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508322, 8.095484, 22.028919>,  <16.384764, 8.290176, 22.095465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508322, 8.095484, 22.028919>,  <16.714252, 7.770997, 21.918011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.508322, 8.095484, 22.028919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159781, -0.408552, 0.898641,
		0.842273, 0.418342, 0.339950,
		-0.514826, 0.811219, 0.277269,
		16.353874, 8.338849, 22.112101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915852, 7.780589, 22.556675>,  <16.714252, 7.770997, 21.918011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.915852, 7.780589, 22.556675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.595009, 8.019420, 22.561131>,  <16.402504, 8.162718, 22.563805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.595009, 8.019420, 22.561131>,  <16.915852, 7.780589, 22.556675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.595009, 8.019420, 22.561131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144472, -0.212117, 0.966506,
		0.579441, 0.773632, 0.256401,
		-0.802107, 0.597076, 0.011141,
		16.354376, 8.198543, 22.564472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.953640, 8.311955, 23.128416>,  <16.915852, 7.780589, 22.556675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.953640, 8.311955, 23.128416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.580946, 8.207673, 23.027302>,  <16.357328, 8.145103, 22.966633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.580946, 8.207673, 23.027302>,  <16.953640, 8.311955, 23.128416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.580946, 8.207673, 23.027302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177444, -0.280485, 0.943314,
		-0.316830, 0.923775, 0.215077,
		-0.931737, -0.260706, -0.252784,
		16.301426, 8.129461, 22.951468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583017, 8.692539, 23.542336>,  <16.953640, 8.311955, 23.128416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.583017, 8.692539, 23.542336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.375912, 8.366557, 23.438210>,  <16.251648, 8.170968, 23.375734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.375912, 8.366557, 23.438210>,  <16.583017, 8.692539, 23.542336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.375912, 8.366557, 23.438210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110249, -0.238182, 0.964943,
		-0.848389, 0.528314, 0.033475,
		-0.517766, -0.814956, -0.260317,
		16.220583, 8.122070, 23.360115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.073898, 8.742009, 23.932930>,  <16.583017, 8.692539, 23.542336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.073898, 8.742009, 23.932930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.095924, 8.356421, 23.828833>,  <16.109140, 8.125068, 23.766375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.095924, 8.356421, 23.828833>,  <16.073898, 8.742009, 23.932930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.095924, 8.356421, 23.828833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006963, -0.261004, 0.965312,
		-0.998459, -0.051342, -0.021084,
		0.055065, -0.963971, -0.260245,
		16.112444, 8.067229, 23.750759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.755177, 8.443032, 24.428391>,  <16.073898, 8.742009, 23.932930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.755177, 8.443032, 24.428391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950581, 8.133938, 24.266285>,  <16.067822, 7.948481, 24.169022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950581, 8.133938, 24.266285>,  <15.755177, 8.443032, 24.428391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.950581, 8.133938, 24.266285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125335, -0.521779, 0.843823,
		-0.863511, -0.361420, -0.351744,
		0.488507, -0.772737, -0.405263,
		16.097134, 7.902117, 24.144707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.345733, 7.870433, 24.680317>,  <15.755177, 8.443032, 24.428391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.345733, 7.870433, 24.680317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.702936, 7.730764, 24.566746>,  <15.917258, 7.646964, 24.498602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.702936, 7.730764, 24.566746>,  <15.345733, 7.870433, 24.680317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.702936, 7.730764, 24.566746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092318, -0.475354, 0.874938,
		-0.440471, -0.807538, -0.392260,
		0.893007, -0.349172, -0.283930,
		15.970839, 7.626013, 24.481567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.248081, 7.070049, 24.817141>,  <15.345733, 7.870433, 24.680317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.248081, 7.070049, 24.817141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.641774, 7.137552, 24.795946>,  <15.877990, 7.178054, 24.783230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.641774, 7.137552, 24.795946>,  <15.248081, 7.070049, 24.817141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.641774, 7.137552, 24.795946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130043, -0.487331, 0.863480,
		0.119899, -0.856755, -0.501593,
		0.984232, 0.168759, -0.052985,
		15.937044, 7.188180, 24.780050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.694910, 6.437084, 25.018345>,  <15.248081, 7.070049, 24.817141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.694910, 6.437084, 25.018345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.955777, 6.737714, 25.057964>,  <16.112297, 6.918092, 25.081736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.955777, 6.737714, 25.057964>,  <15.694910, 6.437084, 25.018345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.955777, 6.737714, 25.057964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194231, -0.291963, 0.936500,
		0.732769, -0.591517, -0.336388,
		0.652169, 0.751575, 0.099050,
		16.151428, 6.963187, 25.087679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.272240, 6.179323, 25.292356>,  <15.694910, 6.437084, 25.018345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.272240, 6.179323, 25.292356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.316290, 6.560880, 25.404043>,  <16.342720, 6.789814, 25.471056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.316290, 6.560880, 25.404043>,  <16.272240, 6.179323, 25.292356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.316290, 6.560880, 25.404043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120742, -0.291684, 0.948863,
		0.986557, -0.070780, -0.147297,
		0.110125, 0.953892, 0.279217,
		16.349327, 6.847048, 25.487808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.845892, 6.242254, 25.785728>,  <16.272240, 6.179323, 25.292356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.845892, 6.242254, 25.785728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646229, 6.583414, 25.846920>,  <16.526430, 6.788109, 25.883635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646229, 6.583414, 25.846920>,  <16.845892, 6.242254, 25.785728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646229, 6.583414, 25.846920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203152, -0.056435, 0.977520,
		0.842359, 0.519017, -0.145098,
		-0.499160, 0.852899, 0.152978,
		16.496481, 6.839283, 25.892813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.319365, 6.741107, 26.160519>,  <16.845892, 6.242254, 25.785728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.319365, 6.741107, 26.160519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.936220, 6.831222, 26.231792>,  <16.706333, 6.885291, 26.274557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.936220, 6.831222, 26.231792>,  <17.319365, 6.741107, 26.160519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.936220, 6.831222, 26.231792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165749, -0.073118, 0.983454,
		0.234588, 0.971545, 0.032696,
		-0.957860, 0.225287, 0.178185,
		16.648863, 6.898808, 26.285248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.313658, 7.153095, 26.778709>,  <17.319365, 6.741107, 26.160519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.313658, 7.153095, 26.778709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932104, 7.040873, 26.736012>,  <16.703173, 6.973540, 26.710394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932104, 7.040873, 26.736012>,  <17.313658, 7.153095, 26.778709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932104, 7.040873, 26.736012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115074, 0.013340, 0.993267,
		-0.277243, 0.959745, -0.045010,
		-0.953884, -0.280556, -0.106744,
		16.645939, 6.956707, 26.703989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.824175, 7.262602, 27.262648>,  <17.313658, 7.153095, 26.778709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.824175, 7.262602, 27.262648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.929934, 7.535499, 27.535307>,  <17.993389, 7.699236, 27.698902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.929934, 7.535499, 27.535307>,  <17.824175, 7.262602, 27.262648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.929934, 7.535499, 27.535307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088696, 0.686602, -0.721603,
		-0.960327, 0.251247, 0.121022,
		0.264395, 0.682241, 0.681647,
		18.009253, 7.740171, 27.739801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.610401, 7.824716, 26.917698>,  <17.824175, 7.262602, 27.262648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.610401, 7.824716, 26.917698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.900278, 7.893188, 27.184687>,  <18.074203, 7.934271, 27.344881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.900278, 7.893188, 27.184687>,  <17.610401, 7.824716, 26.917698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.900278, 7.893188, 27.184687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253666, 0.834356, -0.489391,
		-0.640685, 0.523972, 0.561228,
		0.724691, 0.171181, 0.667473,
		18.117685, 7.944542, 27.384928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.447702, 8.563700, 27.094835>,  <17.610401, 7.824716, 26.917698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.447702, 8.563700, 27.094835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.819979, 8.448391, 27.184914>,  <18.043344, 8.379206, 27.238960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.819979, 8.448391, 27.184914>,  <17.447702, 8.563700, 27.094835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.819979, 8.448391, 27.184914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360042, 0.830725, -0.424578,
		-0.064681, 0.476231, 0.876938,
		0.930691, -0.288272, 0.225195,
		18.099186, 8.361909, 27.252472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734426, 9.073424, 27.327570>,  <17.447702, 8.563700, 27.094835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.734426, 9.073424, 27.327570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069572, 8.874593, 27.237329>,  <18.270660, 8.755294, 27.183186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069572, 8.874593, 27.237329>,  <17.734426, 9.073424, 27.327570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.069572, 8.874593, 27.237329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347735, 0.804598, -0.481355,
		0.420791, 0.324860, 0.846995,
		0.837864, -0.497079, -0.225602,
		18.320932, 8.725469, 27.169649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250992, 9.588768, 27.365330>,  <17.734426, 9.073424, 27.327570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.250992, 9.588768, 27.365330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402182, 9.302364, 27.130566>,  <18.492895, 9.130522, 26.989708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402182, 9.302364, 27.130566>,  <18.250992, 9.588768, 27.365330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.402182, 9.302364, 27.130566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351281, 0.697448, -0.624634,
		0.856584, 0.029926, 0.515140,
		0.377976, -0.716010, -0.586910,
		18.515575, 9.087562, 26.954493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.959526, 9.832850, 27.187218>,  <18.250992, 9.588768, 27.365330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.959526, 9.832850, 27.187218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837614, 9.555001, 26.926569>,  <18.764467, 9.388292, 26.770180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837614, 9.555001, 26.926569>,  <18.959526, 9.832850, 27.187218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.837614, 9.555001, 26.926569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365932, 0.546258, -0.753456,
		0.879320, -0.468087, 0.087696,
		-0.304779, -0.694620, -0.651623,
		18.746180, 9.346615, 26.731083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468254, 9.845537, 26.633696>,  <18.959526, 9.832850, 27.187218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.468254, 9.845537, 26.633696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.162601, 9.666127, 26.448256>,  <18.979210, 9.558481, 26.336990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.162601, 9.666127, 26.448256>,  <19.468254, 9.845537, 26.633696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.162601, 9.666127, 26.448256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306143, 0.380437, -0.872665,
		0.567785, -0.808759, -0.153391,
		-0.764131, -0.448526, -0.463602,
		18.933361, 9.531569, 26.309175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.699095, 9.668365, 25.989201>,  <19.468254, 9.845537, 26.633696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.699095, 9.668365, 25.989201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.304585, 9.672601, 25.923290>,  <19.067879, 9.675142, 25.883745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.304585, 9.672601, 25.923290>,  <19.699095, 9.668365, 25.989201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304585, 9.672601, 25.923290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149016, 0.486892, -0.860657,
		0.071112, -0.873398, -0.481788,
		-0.986274, 0.010591, -0.164774,
		19.008701, 9.675778, 25.873857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.695583, 9.541741, 25.265068>,  <19.699095, 9.668365, 25.989201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.695583, 9.541741, 25.265068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.337646, 9.692523, 25.360703>,  <19.122885, 9.782991, 25.418083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.337646, 9.692523, 25.360703>,  <19.695583, 9.541741, 25.265068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.337646, 9.692523, 25.360703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081471, 0.388697, -0.917757,
		-0.438884, -0.840726, -0.317112,
		-0.894843, 0.376953, 0.239087,
		19.069193, 9.805609, 25.432428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.324959, 9.484415, 24.628941>,  <19.695583, 9.541741, 25.265068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.324959, 9.484415, 24.628941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.114613, 9.742226, 24.850950>,  <18.988405, 9.896912, 24.984156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.114613, 9.742226, 24.850950>,  <19.324959, 9.484415, 24.628941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.114613, 9.742226, 24.850950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230943, 0.519827, -0.822463,
		-0.818615, -0.560684, -0.124511,
		-0.525866, 0.644526, 0.555024,
		18.956852, 9.935583, 25.017458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.681822, 9.629430, 24.242405>,  <19.324959, 9.484415, 24.628941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.681822, 9.629430, 24.242405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.688616, 9.938668, 24.496031>,  <18.692692, 10.124211, 24.648207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.688616, 9.938668, 24.496031>,  <18.681822, 9.629430, 24.242405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.688616, 9.938668, 24.496031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427447, 0.578898, -0.694383,
		-0.903881, -0.259233, 0.340290,
		0.016987, 0.773095, 0.634063,
		18.693712, 10.170597, 24.686249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.088446, 9.921450, 24.225103>,  <18.681822, 9.629430, 24.242405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.088446, 9.921450, 24.225103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.322979, 10.224133, 24.340761>,  <18.463699, 10.405744, 24.410156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.322979, 10.224133, 24.340761>,  <18.088446, 9.921450, 24.225103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.322979, 10.224133, 24.340761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306858, 0.537813, -0.785236,
		-0.749703, 0.371682, 0.547539,
		0.586331, 0.756710, 0.289147,
		18.498878, 10.451146, 24.427505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.674795, 10.625395, 24.182690>,  <18.088446, 9.921450, 24.225103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.674795, 10.625395, 24.182690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.064331, 10.716281, 24.183792>,  <18.298054, 10.770812, 24.184454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.064331, 10.716281, 24.183792>,  <17.674795, 10.625395, 24.182690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.064331, 10.716281, 24.183792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149512, 0.649847, -0.745215,
		-0.171114, 0.725309, 0.666819,
		0.973841, 0.227214, 0.002756,
		18.356483, 10.784445, 24.184618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666481, 11.366700, 24.035507>,  <17.674795, 10.625395, 24.182690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666481, 11.366700, 24.035507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.035479, 11.246655, 23.938398>,  <18.256878, 11.174629, 23.880133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.035479, 11.246655, 23.938398>,  <17.666481, 11.366700, 24.035507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035479, 11.246655, 23.938398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048944, 0.714787, -0.697628,
		0.382897, 0.631675, 0.674075,
		0.922494, -0.300111, -0.242773,
		18.312227, 11.156622, 23.865566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.111732, 11.970583, 23.927681>,  <17.666481, 11.366700, 24.035507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.111732, 11.970583, 23.927681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.282955, 11.669019, 23.728329>,  <18.385689, 11.488080, 23.608717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.282955, 11.669019, 23.728329>,  <18.111732, 11.970583, 23.927681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.282955, 11.669019, 23.728329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165651, 0.607568, -0.776801,
		0.888440, 0.249959, 0.384961,
		0.428059, -0.753911, -0.498382,
		18.411373, 11.442845, 23.578814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.794298, 12.242260, 23.648182>,  <18.111732, 11.970583, 23.927681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.794298, 12.242260, 23.648182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.678320, 11.926449, 23.431820>,  <18.608732, 11.736962, 23.302004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.678320, 11.926449, 23.431820>,  <18.794298, 12.242260, 23.648182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.678320, 11.926449, 23.431820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172259, 0.512899, -0.840989,
		0.941413, -0.337017, -0.012709,
		-0.289946, -0.789528, -0.540904,
		18.591335, 11.689590, 23.269548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.855928, 12.479318, 23.004644>,  <18.794298, 12.242260, 23.648182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.855928, 12.479318, 23.004644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.666168, 12.145433, 22.892788>,  <18.552311, 11.945103, 22.825674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.666168, 12.145433, 22.892788>,  <18.855928, 12.479318, 23.004644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.666168, 12.145433, 22.892788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088986, 0.361507, -0.928113,
		0.875799, -0.415414, -0.245778,
		-0.474402, -0.834711, -0.279642,
		18.523848, 11.895020, 22.808895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.155746, 12.249387, 22.386463>,  <18.855928, 12.479318, 23.004644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.155746, 12.249387, 22.386463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.809002, 12.051079, 22.365450>,  <18.600954, 11.932094, 22.352842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.809002, 12.051079, 22.365450>,  <19.155746, 12.249387, 22.386463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.809002, 12.051079, 22.365450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088576, 0.256856, -0.962382,
		0.490614, -0.829600, -0.266573,
		-0.866863, -0.495771, -0.052534,
		18.548943, 11.902348, 22.349689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.189339, 11.832879, 21.825287>,  <19.155746, 12.249387, 22.386463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.189339, 11.832879, 21.825287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.796318, 11.865490, 21.892160>,  <18.560507, 11.885056, 21.932285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.796318, 11.865490, 21.892160>,  <19.189339, 11.832879, 21.825287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.796318, 11.865490, 21.892160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143845, 0.236779, -0.960856,
		-0.117923, -0.968137, -0.220920,
		-0.982549, 0.081529, 0.167183,
		18.501553, 11.889948, 21.942316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841991, 11.432738, 21.441135>,  <19.189339, 11.832879, 21.825287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841991, 11.432738, 21.441135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.568176, 11.716578, 21.507919>,  <18.403887, 11.886883, 21.547989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.568176, 11.716578, 21.507919>,  <18.841991, 11.432738, 21.441135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.568176, 11.716578, 21.507919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163802, 0.073447, -0.983755,
		-0.710335, -0.700767, 0.065957,
		-0.684539, 0.709599, 0.166959,
		18.362814, 11.929459, 21.558006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275803, 11.294111, 20.994602>,  <18.841991, 11.432738, 21.441135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275803, 11.294111, 20.994602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.218346, 11.676605, 21.096569>,  <18.183872, 11.906101, 21.157749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.218346, 11.676605, 21.096569>,  <18.275803, 11.294111, 20.994602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218346, 11.676605, 21.096569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204029, 0.223440, -0.953125,
		-0.968370, -0.188919, 0.163004,
		-0.143641, 0.956235, 0.254918,
		18.175253, 11.963475, 21.173044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.708763, 11.514348, 20.640224>,  <18.275803, 11.294111, 20.994602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.708763, 11.514348, 20.640224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.875593, 11.863487, 20.741564>,  <17.975691, 12.072970, 20.802366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.875593, 11.863487, 20.741564>,  <17.708763, 11.514348, 20.640224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.875593, 11.863487, 20.741564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020768, 0.287828, -0.957457,
		-0.908634, 0.394071, 0.138174,
		0.417076, 0.872848, 0.253346,
		18.000715, 12.125341, 20.817568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.601332, 11.865802, 20.055653>,  <17.708763, 11.514348, 20.640224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.601332, 11.865802, 20.055653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.816856, 12.140979, 20.250143>,  <17.946171, 12.306086, 20.366838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.816856, 12.140979, 20.250143>,  <17.601332, 11.865802, 20.055653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.816856, 12.140979, 20.250143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178781, 0.470649, -0.864018,
		-0.823238, 0.552470, 0.130600,
		0.538811, 0.687943, 0.486227,
		17.978500, 12.347362, 20.396011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.373627, 12.538091, 19.871733>,  <17.601332, 11.865802, 20.055653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.373627, 12.538091, 19.871733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.754519, 12.562620, 19.991398>,  <17.983053, 12.577338, 20.063196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.754519, 12.562620, 19.991398>,  <17.373627, 12.538091, 19.871733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.754519, 12.562620, 19.991398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238815, 0.461020, -0.854651,
		-0.190330, 0.885268, 0.424352,
		0.952230, 0.061324, 0.299161,
		18.040188, 12.581017, 20.081146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620892, 13.138645, 19.576435>,  <17.373627, 12.538091, 19.871733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620892, 13.138645, 19.576435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.964035, 12.947550, 19.652170>,  <18.169920, 12.832892, 19.697611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.964035, 12.947550, 19.652170>,  <17.620892, 13.138645, 19.576435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.964035, 12.947550, 19.652170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448445, 0.516018, -0.729810,
		0.250957, 0.710979, 0.656909,
		0.857857, -0.477738, 0.189337,
		18.221392, 12.804229, 19.708971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.098682, 13.661195, 19.577509>,  <17.620892, 13.138645, 19.576435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.098682, 13.661195, 19.577509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.327726, 13.336070, 19.534693>,  <18.465153, 13.140995, 19.509003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.327726, 13.336070, 19.534693>,  <18.098682, 13.661195, 19.577509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.327726, 13.336070, 19.534693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579343, 0.493557, -0.648662,
		0.580070, 0.309417, 0.753511,
		0.572609, -0.812811, -0.107039,
		18.499510, 13.092227, 19.502581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.764725, 13.946852, 19.434164>,  <18.098682, 13.661195, 19.577509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.764725, 13.946852, 19.434164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823364, 13.572598, 19.305731>,  <18.858547, 13.348044, 19.228670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823364, 13.572598, 19.305731>,  <18.764725, 13.946852, 19.434164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823364, 13.572598, 19.305731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442206, 0.352337, -0.824811,
		0.884851, -0.021068, 0.465397,
		0.146600, -0.935636, -0.321082,
		18.867344, 13.291906, 19.209406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.606159, 13.889832, 19.247246>,  <18.764725, 13.946852, 19.434164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.606159, 13.889832, 19.247246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.356976, 13.629234, 19.074053>,  <19.207464, 13.472876, 18.970137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.356976, 13.629234, 19.074053>,  <19.606159, 13.889832, 19.247246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.356976, 13.629234, 19.074053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460298, 0.142247, -0.876294,
		0.632492, -0.745198, 0.211268,
		-0.622960, -0.651495, -0.432983,
		19.170088, 13.433785, 18.944159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.977278, 13.460912, 19.051830>,  <19.606159, 13.889832, 19.247246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.977278, 13.460912, 19.051830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.646904, 13.422793, 18.829569>,  <19.448679, 13.399922, 18.696213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.646904, 13.422793, 18.829569>,  <19.977278, 13.460912, 19.051830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.646904, 13.422793, 18.829569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531823, 0.195334, -0.824020,
		0.187073, -0.976095, -0.110646,
		-0.825935, -0.095307, -0.555652,
		19.399122, 13.394204, 18.662874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.133585, 13.152265, 18.387970>,  <19.977278, 13.460912, 19.051830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.133585, 13.152265, 18.387970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767059, 13.292620, 18.310768>,  <19.547144, 13.376833, 18.264446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767059, 13.292620, 18.310768>,  <20.133585, 13.152265, 18.387970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767059, 13.292620, 18.310768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242131, 0.101558, -0.964914,
		-0.318975, -0.930894, -0.178020,
		-0.916312, 0.350888, -0.193004,
		19.492167, 13.397886, 18.252867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.022394, 12.833732, 17.671444>,  <20.133585, 13.152265, 18.387970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.022394, 12.833732, 17.671444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.766972, 13.136929, 17.724653>,  <19.613718, 13.318847, 17.756578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.766972, 13.136929, 17.724653>,  <20.022394, 12.833732, 17.671444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.766972, 13.136929, 17.724653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146056, 0.289079, -0.946098,
		-0.755589, -0.584707, -0.295302,
		-0.638555, 0.757992, 0.133025,
		19.575405, 13.364326, 17.764561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.553791, 12.912945, 16.966274>,  <20.022394, 12.833732, 17.671444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.553791, 12.912945, 16.966274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.553473, 13.259487, 17.166044>,  <19.553282, 13.467413, 17.285906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.553473, 13.259487, 17.166044>,  <19.553791, 12.912945, 16.966274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.553473, 13.259487, 17.166044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152274, 0.493708, -0.856192,
		-0.988338, 0.075369, -0.132315,
		-0.000794, 0.866356, 0.499427,
		19.553234, 13.519394, 17.315872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.088409, 13.342351, 16.636654>,  <19.553791, 12.912945, 16.966274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.088409, 13.342351, 16.636654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.334658, 13.607672, 16.806850>,  <19.482407, 13.766864, 16.908968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.334658, 13.607672, 16.806850>,  <19.088409, 13.342351, 16.636654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.334658, 13.607672, 16.806850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026478, 0.522218, -0.852401,
		-0.787597, 0.536022, 0.303926,
		0.615622, 0.663301, 0.425490,
		19.519344, 13.806662, 16.934498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.860214, 13.887637, 16.330076>,  <19.088409, 13.342351, 16.636654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.860214, 13.887637, 16.330076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.212629, 13.988115, 16.490414>,  <19.424078, 14.048403, 16.586617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.212629, 13.988115, 16.490414>,  <18.860214, 13.887637, 16.330076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.212629, 13.988115, 16.490414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213320, 0.545340, -0.810617,
		-0.422219, 0.799691, 0.426879,
		0.881037, 0.251196, 0.400843,
		19.476940, 14.063475, 16.610666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.879549, 14.632907, 16.148529>,  <18.860214, 13.887637, 16.330076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.879549, 14.632907, 16.148529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.251993, 14.526399, 16.248236>,  <19.475460, 14.462494, 16.308060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.251993, 14.526399, 16.248236>,  <18.879549, 14.632907, 16.148529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.251993, 14.526399, 16.248236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363269, 0.738293, -0.568295,
		-0.032714, 0.619697, 0.784159,
		0.931110, -0.266270, 0.249269,
		19.531326, 14.446518, 16.323017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.247871, 15.249880, 16.390083>,  <18.879549, 14.632907, 16.148529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.247871, 15.249880, 16.390083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536777, 15.002931, 16.265385>,  <19.710121, 14.854761, 16.190565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536777, 15.002931, 16.265385>,  <19.247871, 15.249880, 16.390083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.536777, 15.002931, 16.265385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453638, 0.763128, -0.460269,
		0.522060, 0.191015, 0.831244,
		0.722264, -0.617372, -0.311747,
		19.753456, 14.817719, 16.171860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.773907, 15.593906, 16.686928>,  <19.247871, 15.249880, 16.390083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.773907, 15.593906, 16.686928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.930874, 15.375941, 16.390528>,  <20.025055, 15.245162, 16.212688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.930874, 15.375941, 16.390528>,  <19.773907, 15.593906, 16.686928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930874, 15.375941, 16.390528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520935, 0.795624, -0.309207,
		0.758047, -0.264673, 0.596081,
		0.392418, -0.544913, -0.740998,
		20.048599, 15.212467, 16.168228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.449953, 15.672777, 16.683826>,  <19.773907, 15.593906, 16.686928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.449953, 15.672777, 16.683826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.360588, 15.551746, 16.313198>,  <20.306969, 15.479128, 16.090820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.360588, 15.551746, 16.313198>,  <20.449953, 15.672777, 16.683826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.360588, 15.551746, 16.313198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436564, 0.818861, -0.372666,
		0.871493, -0.487765, -0.050848,
		-0.223411, -0.302577, -0.926571,
		20.293564, 15.460974, 16.035227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.023474, 15.896229, 16.323982>,  <20.449953, 15.672777, 16.683826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.023474, 15.896229, 16.323982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.763723, 15.814713, 16.030922>,  <20.607872, 15.765804, 15.855085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.763723, 15.814713, 16.030922>,  <21.023474, 15.896229, 16.323982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.763723, 15.814713, 16.030922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413236, 0.714209, -0.564926,
		0.638392, -0.669609, -0.379579,
		-0.649378, -0.203788, -0.732652,
		20.568911, 15.753576, 15.811126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.392117, 15.788709, 15.665771>,  <21.023474, 15.896229, 16.323982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.392117, 15.788709, 15.665771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024878, 15.918397, 15.574580>,  <20.804533, 15.996210, 15.519865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024878, 15.918397, 15.574580>,  <21.392117, 15.788709, 15.665771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.024878, 15.918397, 15.574580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396292, 0.741108, -0.541952,
		-0.006754, -0.587912, -0.808897,
		-0.918100, 0.324220, -0.227979,
		20.749447, 16.015663, 15.506186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.413822, 16.078350, 14.922962>,  <21.392117, 15.788709, 15.665771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.413822, 16.078350, 14.922962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.082010, 16.237814, 15.079398>,  <20.882923, 16.333492, 15.173260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.082010, 16.237814, 15.079398>,  <21.413822, 16.078350, 14.922962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.082010, 16.237814, 15.079398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151235, 0.834490, -0.529863,
		-0.537597, -0.380390, -0.752525,
		-0.829528, 0.398661, 0.391091,
		20.833151, 16.357412, 15.196726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.032442, 16.508009, 14.451426>,  <21.413822, 16.078350, 14.922962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.032442, 16.508009, 14.451426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.954554, 16.665400, 14.810817>,  <20.907822, 16.759834, 15.026451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.954554, 16.665400, 14.810817>,  <21.032442, 16.508009, 14.451426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.954554, 16.665400, 14.810817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042168, 0.918522, -0.393114,
		-0.979952, -0.038660, -0.195446,
		-0.194720, 0.393474, 0.898478,
		20.896137, 16.783442, 15.080360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.494110, 16.988836, 14.429467>,  <21.032442, 16.508009, 14.451426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.494110, 16.988836, 14.429467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.739567, 17.110958, 14.720735>,  <20.886841, 17.184231, 14.895495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.739567, 17.110958, 14.720735>,  <20.494110, 16.988836, 14.429467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.739567, 17.110958, 14.720735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012216, 0.925780, -0.377865,
		-0.789488, 0.222979, 0.571829,
		0.613644, 0.305305, 0.728169,
		20.923660, 17.202549, 14.939185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.638079, 17.099209, 13.701295>,  <20.494110, 16.988836, 14.429467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.638079, 17.099209, 13.701295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.349747, 17.196712, 13.441760>,  <20.176748, 17.255215, 13.286039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.349747, 17.196712, 13.441760>,  <20.638079, 17.099209, 13.701295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.349747, 17.196712, 13.441760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044086, 0.950346, 0.308057,
		0.691711, 0.193451, -0.695782,
		-0.720828, 0.243761, -0.648836,
		20.133499, 17.269840, 13.247109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.820190, 17.730938, 13.653753>,  <20.638079, 17.099209, 13.701295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.820190, 17.730938, 13.653753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439960, 17.712473, 13.530937>,  <20.211823, 17.701393, 13.457248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439960, 17.712473, 13.530937>,  <20.820190, 17.730938, 13.653753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439960, 17.712473, 13.530937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162103, 0.917200, 0.363959,
		0.264816, 0.395743, -0.879352,
		-0.950576, -0.046164, -0.307040,
		20.154787, 17.698624, 13.438826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.731558, 18.282076, 13.139681>,  <20.820190, 17.730938, 13.653753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.731558, 18.282076, 13.139681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.414839, 18.173790, 13.358686>,  <20.224808, 18.108818, 13.490089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.414839, 18.173790, 13.358686>,  <20.731558, 18.282076, 13.139681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.414839, 18.173790, 13.358686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033660, 0.875708, 0.481666,
		-0.609856, 0.399812, -0.684271,
		-0.791797, -0.270714, 0.547513,
		20.177299, 18.092575, 13.522941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.367733, 18.076944, 12.895298>,  <20.731558, 18.282076, 13.139681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.367733, 18.076944, 12.895298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747328, 17.998316, 12.993914>,  <21.975084, 17.951138, 13.053082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747328, 17.998316, 12.993914>,  <21.367733, 18.076944, 12.895298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747328, 17.998316, 12.993914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306818, 0.755950, -0.578275,
		-0.072697, 0.624418, 0.777700,
		0.948988, -0.196573, 0.246538,
		22.032024, 17.939344, 13.067875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.694132, 18.754723, 13.119015>,  <21.367733, 18.076944, 12.895298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.694132, 18.754723, 13.119015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.972727, 18.487417, 13.014452>,  <22.139883, 18.327034, 12.951715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.972727, 18.487417, 13.014452>,  <21.694132, 18.754723, 13.119015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.972727, 18.487417, 13.014452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473041, 0.701520, -0.533012,
		0.539573, 0.247580, 0.804714,
		0.696486, -0.668262, -0.261406,
		22.181673, 18.286940, 12.936030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.278322, 19.064514, 13.333282>,  <21.694132, 18.754723, 13.119015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.278322, 19.064514, 13.333282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.365374, 18.810768, 13.036574>,  <22.417604, 18.658520, 12.858550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.365374, 18.810768, 13.036574>,  <22.278322, 19.064514, 13.333282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.365374, 18.810768, 13.036574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496897, 0.726134, -0.475209,
		0.840078, -0.265162, 0.473242,
		0.217629, -0.634365, -0.741767,
		22.430662, 18.620459, 12.814044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.997711, 19.112818, 13.207932>,  <22.278322, 19.064514, 13.333282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.997711, 19.112818, 13.207932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.858339, 18.984961, 12.855473>,  <22.774717, 18.908245, 12.643996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.858339, 18.984961, 12.855473>,  <22.997711, 19.112818, 13.207932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.858339, 18.984961, 12.855473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437429, 0.775967, -0.454457,
		0.829008, -0.543785, -0.130546,
		-0.348427, -0.319644, -0.881150,
		22.753811, 18.889067, 12.591127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.375338, 19.448797, 12.861168>,  <22.997711, 19.112818, 13.207932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.375338, 19.448797, 12.861168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.159676, 19.277252, 12.571233>,  <23.030279, 19.174326, 12.397272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.159676, 19.277252, 12.571233>,  <23.375338, 19.448797, 12.861168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.159676, 19.277252, 12.571233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445576, 0.585078, -0.677603,
		0.714685, -0.688303, -0.124357,
		-0.539155, -0.428862, -0.724837,
		22.997929, 19.148594, 12.353782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.793583, 19.149897, 12.240016>,  <23.375338, 19.448797, 12.861168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.793583, 19.149897, 12.240016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.432184, 19.231281, 12.089126>,  <23.215345, 19.280111, 11.998591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.432184, 19.231281, 12.089126>,  <23.793583, 19.149897, 12.240016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.432184, 19.231281, 12.089126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420151, 0.594318, -0.685755,
		0.084669, -0.778069, -0.622447,
		-0.903496, 0.203460, -0.377227,
		23.161135, 19.292318, 11.975958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.812496, 19.114262, 11.403074>,  <23.793583, 19.149897, 12.240016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.812496, 19.114262, 11.403074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.526817, 19.354370, 11.547073>,  <23.355410, 19.498434, 11.633473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.526817, 19.354370, 11.547073>,  <23.812496, 19.114262, 11.403074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.526817, 19.354370, 11.547073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391541, 0.768948, -0.505385,
		-0.580187, -0.219991, -0.784211,
		-0.714198, 0.600269, 0.359998,
		23.312557, 19.534451, 11.655073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.867369, 19.690304, 10.959650>,  <23.812496, 19.114262, 11.403074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.867369, 19.690304, 10.959650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.604546, 19.838926, 11.222015>,  <23.446852, 19.928101, 11.379435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.604546, 19.838926, 11.222015>,  <23.867369, 19.690304, 10.959650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.604546, 19.838926, 11.222015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222373, 0.926910, -0.302306,
		-0.720297, -0.052774, -0.691656,
		-0.657056, 0.371556, 0.655914,
		23.407429, 19.950394, 11.418790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.343388, 20.225029, 10.667680>,  <23.867369, 19.690304, 10.959650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.343388, 20.225029, 10.667680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.357063, 20.313448, 11.057546>,  <23.365269, 20.366499, 11.291465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.357063, 20.313448, 11.057546>,  <23.343388, 20.225029, 10.667680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.357063, 20.313448, 11.057546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323826, 0.920172, -0.220047,
		-0.945499, 0.323145, -0.040120,
		0.034190, 0.221047, 0.974664,
		23.367321, 20.379763, 11.349945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.051134, 20.939171, 10.704832>,  <23.343388, 20.225029, 10.667680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.051134, 20.939171, 10.704832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.252340, 20.891235, 11.047203>,  <23.373064, 20.862474, 11.252625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.252340, 20.891235, 11.047203>,  <23.051134, 20.939171, 10.704832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.252340, 20.891235, 11.047203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316663, 0.947028, -0.053505,
		-0.804176, 0.297954, 0.514320,
		0.503017, -0.119838, 0.855928,
		23.403246, 20.855284, 11.303982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.890528, 21.449154, 11.166064>,  <23.051134, 20.939171, 10.704832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.890528, 21.449154, 11.166064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.254330, 21.328154, 11.280114>,  <23.472610, 21.255552, 11.348544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.254330, 21.328154, 11.280114>,  <22.890528, 21.449154, 11.166064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.254330, 21.328154, 11.280114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334479, 0.939812, -0.069843,
		-0.246836, 0.158891, 0.955942,
		0.909503, -0.302502, 0.285125,
		23.527180, 21.237402, 11.365652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.037788, 21.820150, 11.780089>,  <22.890528, 21.449154, 11.166064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.037788, 21.820150, 11.780089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.375967, 21.698524, 11.604468>,  <23.578875, 21.625549, 11.499096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.375967, 21.698524, 11.604468>,  <23.037788, 21.820150, 11.780089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.375967, 21.698524, 11.604468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325180, 0.945224, -0.028441,
		0.423652, -0.118726, 0.898011,
		0.845445, -0.304065, -0.439053,
		23.629601, 21.607306, 11.472753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.592213, 22.294874, 12.029734>,  <23.037788, 21.820150, 11.780089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.592213, 22.294874, 12.029734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.810978, 22.109282, 11.750993>,  <23.942238, 21.997925, 11.583748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.810978, 22.109282, 11.750993>,  <23.592213, 22.294874, 12.029734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.810978, 22.109282, 11.750993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600022, 0.797713, -0.060222,
		0.583831, -0.385192, 0.714681,
		0.546914, -0.463984, -0.696853,
		23.975052, 21.970087, 11.541937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.209467, 22.484509, 12.260813>,  <23.592213, 22.294874, 12.029734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.209467, 22.484509, 12.260813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.219847, 22.377249, 11.875602>,  <24.226074, 22.312893, 11.644475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.219847, 22.377249, 11.875602>,  <24.209467, 22.484509, 12.260813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.219847, 22.377249, 11.875602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635636, 0.747953, -0.191136,
		0.771553, -0.607175, 0.189855,
		0.025950, -0.268150, -0.963027,
		24.227633, 22.296804, 11.586694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.947058, 22.523899, 12.089650>,  <24.209467, 22.484509, 12.260813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.947058, 22.523899, 12.089650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747719, 22.555889, 11.744338>,  <24.628115, 22.575083, 11.537150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747719, 22.555889, 11.744338>,  <24.947058, 22.523899, 12.089650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.747719, 22.555889, 11.744338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538165, 0.809211, -0.235702,
		0.679725, -0.582049, -0.446310,
		-0.498349, 0.079976, -0.863280,
		24.598215, 22.579882, 11.485353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433699, 22.800259, 11.635690>,  <24.947058, 22.523899, 12.089650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433699, 22.800259, 11.635690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082218, 22.877409, 11.461020>,  <24.871330, 22.923698, 11.356218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082218, 22.877409, 11.461020>,  <25.433699, 22.800259, 11.635690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.082218, 22.877409, 11.461020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376545, 0.842301, -0.385671,
		0.293425, -0.503317, -0.812757,
		-0.878701, 0.192874, -0.436674,
		24.818607, 22.935272, 11.330018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517462, 22.967768, 10.916833>,  <25.433699, 22.800259, 11.635690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517462, 22.967768, 10.916833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159706, 23.138481, 10.970383>,  <24.945053, 23.240910, 11.002513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.159706, 23.138481, 10.970383>,  <25.517462, 22.967768, 10.916833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.159706, 23.138481, 10.970383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271696, 0.756130, -0.595356,
		-0.355315, -0.496107, -0.792230,
		-0.894389, 0.426785, 0.133875,
		24.891390, 23.266516, 11.010545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367029, 23.260984, 10.219568>,  <25.517462, 22.967768, 10.916833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367029, 23.260984, 10.219568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115393, 23.457190, 10.460780>,  <24.964411, 23.574913, 10.605507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115393, 23.457190, 10.460780>,  <25.367029, 23.260984, 10.219568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115393, 23.457190, 10.460780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228089, 0.858100, -0.460043,
		-0.743116, -0.151864, -0.651703,
		-0.629090, 0.490512, 0.603029,
		24.926666, 23.604343, 10.641689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.082836, 23.703533, 9.746964>,  <25.367029, 23.260984, 10.219568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.082836, 23.703533, 9.746964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050409, 23.870314, 10.109088>,  <25.030954, 23.970381, 10.326362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050409, 23.870314, 10.109088>,  <25.082836, 23.703533, 9.746964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050409, 23.870314, 10.109088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316855, 0.871959, -0.373217,
		-0.945003, 0.256596, -0.202799,
		-0.081066, 0.416949, 0.905308,
		25.026089, 23.995398, 10.380680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.688059, 24.319923, 9.685608>,  <25.082836, 23.703533, 9.746964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.688059, 24.319923, 9.685608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889139, 24.386784, 10.024866>,  <25.009789, 24.426899, 10.228421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889139, 24.386784, 10.024866>,  <24.688059, 24.319923, 9.685608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.889139, 24.386784, 10.024866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455941, 0.782299, -0.424412,
		-0.734444, 0.600058, 0.317054,
		0.502702, 0.167149, 0.848146,
		25.039949, 24.436928, 10.279310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.791851, 25.079292, 9.698525>,  <24.688059, 24.319923, 9.685608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.791851, 25.079292, 9.698525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033831, 24.945728, 9.987673>,  <25.179018, 24.865589, 10.161161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033831, 24.945728, 9.987673>,  <24.791851, 25.079292, 9.698525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.033831, 24.945728, 9.987673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689505, 0.673740, -0.265813,
		-0.398268, 0.659225, 0.637812,
		0.604950, -0.333910, 0.722869,
		25.215315, 24.845554, 10.204534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076025, 25.676855, 9.958122>,  <24.791851, 25.079292, 9.698525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076025, 25.676855, 9.958122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323555, 25.384912, 10.074306>,  <25.472073, 25.209747, 10.144015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323555, 25.384912, 10.074306>,  <25.076025, 25.676855, 9.958122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323555, 25.384912, 10.074306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780709, 0.612338, -0.124642,
		-0.086888, 0.303895, 0.948735,
		0.618824, -0.729856, 0.290458,
		25.509203, 25.165956, 10.161443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.519611, 26.031673, 10.348046>,  <25.076025, 25.676855, 9.958122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.519611, 26.031673, 10.348046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684500, 25.694763, 10.209111>,  <25.783432, 25.492617, 10.125750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684500, 25.694763, 10.209111>,  <25.519611, 26.031673, 10.348046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684500, 25.694763, 10.209111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735084, 0.532704, -0.419377,
		0.538260, -0.082447, 0.838736,
		0.412222, -0.842276, -0.347338,
		25.808167, 25.442080, 10.104910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308271, 26.054403, 10.549059>,  <25.519611, 26.031673, 10.348046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308271, 26.054403, 10.549059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202679, 25.842579, 10.226599>,  <26.139322, 25.715485, 10.033123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202679, 25.842579, 10.226599>,  <26.308271, 26.054403, 10.549059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202679, 25.842579, 10.226599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615946, 0.550624, -0.563405,
		0.742243, -0.645274, 0.180825,
		-0.263984, -0.529561, -0.806150,
		26.123484, 25.683710, 9.984754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981028, 25.975685, 10.234499>,  <26.308271, 26.054403, 10.549059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981028, 25.975685, 10.234499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709616, 25.891470, 9.952996>,  <26.546768, 25.840940, 9.784095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709616, 25.891470, 9.952996>,  <26.981028, 25.975685, 10.234499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709616, 25.891470, 9.952996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603917, 0.385529, -0.697604,
		0.418192, -0.898354, -0.134443,
		-0.678527, -0.210540, -0.703756,
		26.506058, 25.828308, 9.741869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358622, 25.544315, 9.745575>,  <26.981028, 25.975685, 10.234499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358622, 25.544315, 9.745575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078606, 25.782333, 9.587657>,  <26.910595, 25.925144, 9.492907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078606, 25.782333, 9.587657>,  <27.358622, 25.544315, 9.745575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078606, 25.782333, 9.587657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698360, 0.455025, -0.552491,
		-0.149116, -0.662475, -0.734092,
		-0.700042, 0.595046, -0.394794,
		26.868593, 25.960848, 9.469218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616346, 24.978899, 9.259690>,  <27.358622, 25.544315, 9.745575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616346, 24.978899, 9.259690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990540, 24.841820, 9.225222>,  <28.215055, 24.759571, 9.204540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990540, 24.841820, 9.225222>,  <27.616346, 24.978899, 9.259690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990540, 24.841820, 9.225222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346771, 0.937206, 0.037348,
		0.067961, -0.064820, 0.995580,
		0.935484, -0.342700, -0.086172,
		28.271185, 24.739010, 9.199370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467436, 24.566145, 8.762733>,  <27.616346, 24.978899, 9.259690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467436, 24.566145, 8.762733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772949, 24.312027, 8.717065>,  <27.956257, 24.159557, 8.689664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772949, 24.312027, 8.717065>,  <27.467436, 24.566145, 8.762733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772949, 24.312027, 8.717065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377052, -0.582693, 0.719932,
		-0.523892, -0.506826, -0.684590,
		0.763786, -0.635292, -0.114168,
		28.002085, 24.121439, 8.682814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369255, 23.790037, 8.565719>,  <27.467436, 24.566145, 8.762733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369255, 23.790037, 8.565719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696833, 23.806734, 8.794659>,  <27.893379, 23.816751, 8.932023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696833, 23.806734, 8.794659>,  <27.369255, 23.790037, 8.565719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696833, 23.806734, 8.794659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270736, -0.851283, 0.449465,
		0.505994, -0.523044, -0.685853,
		0.818945, 0.041742, 0.572351,
		27.942516, 23.819256, 8.966364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809361, 23.168678, 8.496477>,  <27.369255, 23.790037, 8.565719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809361, 23.168678, 8.496477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812120, 23.347481, 8.854279>,  <27.813776, 23.454762, 9.068959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812120, 23.347481, 8.854279>,  <27.809361, 23.168678, 8.496477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812120, 23.347481, 8.854279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279521, -0.858006, 0.430923,
		0.960115, -0.253005, 0.119029,
		0.006898, 0.447006, 0.894504,
		27.814190, 23.481583, 9.122630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077143, 22.688263, 9.023998>,  <27.809361, 23.168678, 8.496477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077143, 22.688263, 9.023998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879215, 22.964718, 9.234704>,  <27.760458, 23.130592, 9.361127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879215, 22.964718, 9.234704>,  <28.077143, 22.688263, 9.023998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879215, 22.964718, 9.234704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409471, -0.720101, 0.560168,
		0.766477, 0.061488, 0.639322,
		-0.494819, 0.691140, 0.526763,
		27.730770, 23.172060, 9.392733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136381, 22.493807, 9.684659>,  <28.077143, 22.688263, 9.023998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136381, 22.493807, 9.684659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808352, 22.721134, 9.711459>,  <27.611534, 22.857531, 9.727539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808352, 22.721134, 9.711459>,  <28.136381, 22.493807, 9.684659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808352, 22.721134, 9.711459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494031, -0.762194, 0.418323,
		0.288809, 0.309955, 0.905824,
		-0.820075, 0.568321, 0.067000,
		27.562328, 22.891630, 9.731559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966305, 22.425083, 10.379334>,  <28.136381, 22.493807, 9.684659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966305, 22.425083, 10.379334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629637, 22.517656, 10.184179>,  <27.427637, 22.573200, 10.067086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629637, 22.517656, 10.184179>,  <27.966305, 22.425083, 10.379334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629637, 22.517656, 10.184179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459917, -0.780683, 0.423096,
		-0.282968, 0.580494, 0.763515,
		-0.841668, 0.231431, -0.487888,
		27.377136, 22.587086, 10.037813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414837, 22.461506, 10.913250>,  <27.966305, 22.425083, 10.379334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414837, 22.461506, 10.913250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301109, 22.368431, 10.541224>,  <27.232874, 22.312586, 10.318009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301109, 22.368431, 10.541224>,  <27.414837, 22.461506, 10.913250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301109, 22.368431, 10.541224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662271, -0.653779, 0.366019,
		-0.693225, 0.720021, 0.031778,
		-0.284317, -0.232688, -0.930065,
		27.215815, 22.298624, 10.262205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634256, 22.340715, 10.968689>,  <27.414837, 22.461506, 10.913250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634256, 22.340715, 10.968689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769730, 22.164280, 10.636248>,  <26.851013, 22.058418, 10.436783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769730, 22.164280, 10.636248>,  <26.634256, 22.340715, 10.968689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769730, 22.164280, 10.636248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623633, -0.766649, 0.152744,
		-0.704539, 0.466571, -0.534730,
		0.338684, -0.441089, -0.831104,
		26.871334, 22.031954, 10.386916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998680, 21.899815, 10.652058>,  <26.634256, 22.340715, 10.968689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998680, 21.899815, 10.652058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338696, 21.753811, 10.500160>,  <26.542704, 21.666208, 10.409021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338696, 21.753811, 10.500160>,  <25.998680, 21.899815, 10.652058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338696, 21.753811, 10.500160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380273, -0.924132, 0.037051,
		-0.364457, 0.112911, -0.924349,
		0.850037, -0.365009, -0.379744,
		26.593706, 21.644308, 10.386237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798286, 21.606813, 10.083945>,  <25.998680, 21.899815, 10.652058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798286, 21.606813, 10.083945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120275, 21.421417, 10.232102>,  <26.313469, 21.310179, 10.320997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120275, 21.421417, 10.232102>,  <25.798286, 21.606813, 10.083945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120275, 21.421417, 10.232102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384803, -0.883026, -0.268684,
		0.451600, 0.073755, -0.889167,
		0.804974, -0.463492, 0.370394,
		26.361769, 21.282370, 10.343221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929411, 21.024181, 9.564466>,  <25.798286, 21.606813, 10.083945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929411, 21.024181, 9.564466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108564, 20.935137, 9.910839>,  <26.216057, 20.881710, 10.118663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108564, 20.935137, 9.910839>,  <25.929411, 21.024181, 9.564466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108564, 20.935137, 9.910839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352937, -0.933877, -0.057531,
		0.821483, -0.279852, -0.496838,
		0.447886, -0.222613, 0.865934,
		26.242929, 20.868353, 10.170619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850121, 20.183876, 9.581643>,  <25.929411, 21.024181, 9.564466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850121, 20.183876, 9.581643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982668, 20.271847, 9.948647>,  <26.062197, 20.324629, 10.168850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982668, 20.271847, 9.948647>,  <25.850121, 20.183876, 9.581643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982668, 20.271847, 9.948647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148673, -0.948133, 0.280961,
		0.931715, -0.229511, -0.281483,
		0.331367, 0.219926, 0.917512,
		26.082079, 20.337824, 10.223901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199518, 19.567842, 9.788441>,  <25.850121, 20.183876, 9.581643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199518, 19.567842, 9.788441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107407, 19.769226, 10.121548>,  <26.052139, 19.890057, 10.321412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107407, 19.769226, 10.121548>,  <26.199518, 19.567842, 9.788441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107407, 19.769226, 10.121548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264780, -0.855895, 0.444224,
		0.936410, -0.118205, 0.330400,
		-0.230278, 0.503459, 0.832767,
		26.038322, 19.920263, 10.371378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470228, 19.150459, 10.318580>,  <26.199518, 19.567842, 9.788441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470228, 19.150459, 10.318580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235622, 19.394789, 10.531331>,  <26.094858, 19.541386, 10.658982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235622, 19.394789, 10.531331>,  <26.470228, 19.150459, 10.318580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235622, 19.394789, 10.531331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193211, -0.743249, 0.640507,
		0.786556, 0.272902, 0.553944,
		-0.586515, 0.610823, 0.531879,
		26.059668, 19.578035, 10.690895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674919, 19.069422, 11.026816>,  <26.470228, 19.150459, 10.318580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674919, 19.069422, 11.026816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298269, 19.203485, 11.039544>,  <26.072279, 19.283924, 11.047181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298269, 19.203485, 11.039544>,  <26.674919, 19.069422, 11.026816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298269, 19.203485, 11.039544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248783, -0.756390, 0.604963,
		0.226827, 0.561732, 0.795617,
		-0.941624, 0.335158, 0.031821,
		26.015781, 19.304033, 11.049090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384155, 19.055128, 11.725753>,  <26.674919, 19.069422, 11.026816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384155, 19.055128, 11.725753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047050, 19.056229, 11.510441>,  <25.844788, 19.056889, 11.381253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047050, 19.056229, 11.510441>,  <26.384155, 19.055128, 11.725753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.047050, 19.056229, 11.510441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372089, -0.725590, 0.578851,
		-0.388978, 0.688122, 0.612523,
		-0.842761, 0.002753, -0.538281,
		25.794222, 19.057055, 11.348956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873184, 19.085371, 12.189668>,  <26.384155, 19.055128, 11.725753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873184, 19.085371, 12.189668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674164, 18.959385, 11.866374>,  <25.554752, 18.883793, 11.672398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674164, 18.959385, 11.866374>,  <25.873184, 19.085371, 12.189668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674164, 18.959385, 11.866374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546365, -0.609907, 0.574019,
		-0.673743, 0.727194, 0.131374,
		-0.497550, -0.314963, -0.808234,
		25.524899, 18.864897, 11.623904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118383, 19.213753, 12.327306>,  <25.873184, 19.085371, 12.189668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.118383, 19.213753, 12.327306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150393, 18.947039, 12.030930>,  <25.169598, 18.787010, 11.853104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150393, 18.947039, 12.030930>,  <25.118383, 19.213753, 12.327306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.150393, 18.947039, 12.030930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597258, -0.627189, 0.499917,
		-0.798048, 0.402528, -0.448432,
		0.080021, -0.666787, -0.740940,
		25.174398, 18.747002, 11.808648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.527424, 18.886124, 12.395753>,  <25.118383, 19.213753, 12.327306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.527424, 18.886124, 12.395753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764507, 18.653521, 12.172848>,  <24.906757, 18.513958, 12.039104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764507, 18.653521, 12.172848>,  <24.527424, 18.886124, 12.395753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764507, 18.653521, 12.172848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384961, -0.812284, 0.438178,
		-0.707459, -0.045189, -0.705308,
		0.592712, -0.581509, -0.557262,
		24.942320, 18.479069, 12.005669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.112946, 18.379425, 12.163784>,  <24.527424, 18.886124, 12.395753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.112946, 18.379425, 12.163784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.483486, 18.228882, 12.157721>,  <24.705811, 18.138556, 12.154082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.483486, 18.228882, 12.157721>,  <24.112946, 18.379425, 12.163784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.483486, 18.228882, 12.157721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323920, -0.816531, 0.477863,
		-0.192223, -0.437759, -0.878304,
		0.926351, -0.376357, -0.015157,
		24.761391, 18.115974, 12.153173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.992992, 17.730747, 12.182328>,  <24.112946, 18.379425, 12.163784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.992992, 17.730747, 12.182328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381433, 17.708450, 12.275150>,  <24.614498, 17.695072, 12.330844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381433, 17.708450, 12.275150>,  <23.992992, 17.730747, 12.182328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.381433, 17.708450, 12.275150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169071, -0.846942, 0.504087,
		0.168440, -0.528755, -0.831893,
		0.971104, -0.055740, 0.232056,
		24.672764, 17.691729, 12.344767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.186783, 17.098257, 12.011307>,  <23.992992, 17.730747, 12.182328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.186783, 17.098257, 12.011307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474079, 17.189863, 12.274117>,  <24.646458, 17.244827, 12.431803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474079, 17.189863, 12.274117>,  <24.186783, 17.098257, 12.011307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474079, 17.189863, 12.274117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078246, -0.911705, 0.403324,
		0.691381, -0.341094, -0.636905,
		0.718241, 0.229016, 0.657025,
		24.689552, 17.258568, 12.471224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.624086, 16.512194, 12.060390>,  <24.186783, 17.098257, 12.011307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.624086, 16.512194, 12.060390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.694738, 16.717882, 12.396099>,  <24.737129, 16.841295, 12.597525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.694738, 16.717882, 12.396099>,  <24.624086, 16.512194, 12.060390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.694738, 16.717882, 12.396099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282129, -0.790452, 0.543681,
		0.942977, -0.332813, 0.005460,
		0.176628, 0.514219, 0.839274,
		24.747726, 16.872149, 12.647882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.152081, 16.237255, 12.535649>,  <24.624086, 16.512194, 12.060390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.152081, 16.237255, 12.535649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920378, 16.460470, 12.773324>,  <24.781357, 16.594398, 12.915929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920378, 16.460470, 12.773324>,  <25.152081, 16.237255, 12.535649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920378, 16.460470, 12.773324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160569, -0.792766, 0.587997,
		0.799175, 0.245192, 0.548817,
		-0.579256, 0.558036, 0.594188,
		24.746601, 16.627880, 12.951580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.173668, 16.065527, 13.296503>,  <25.152081, 16.237255, 12.535649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.173668, 16.065527, 13.296503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824799, 16.261091, 13.303168>,  <24.615477, 16.378429, 13.307167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824799, 16.261091, 13.303168>,  <25.173668, 16.065527, 13.296503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.824799, 16.261091, 13.303168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346222, -0.640974, 0.685042,
		0.345606, 0.591706, 0.728313,
		-0.872174, 0.488912, 0.016663,
		24.563147, 16.407764, 13.308167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364080, 15.394915, 12.967409>,  <25.173668, 16.065527, 13.296503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364080, 15.394915, 12.967409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646313, 15.591357, 13.171750>,  <25.815653, 15.709223, 13.294354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646313, 15.591357, 13.171750>,  <25.364080, 15.394915, 12.967409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646313, 15.591357, 13.171750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657385, -0.722791, -0.213116,
		0.264577, 0.486197, -0.832833,
		0.705581, 0.491106, 0.510853,
		25.857986, 15.738689, 13.325006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056704, 15.079573, 12.972954>,  <25.364080, 15.394915, 12.967409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056704, 15.079573, 12.972954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150366, 15.264636, 13.314976>,  <26.206562, 15.375674, 13.520189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150366, 15.264636, 13.314976>,  <26.056704, 15.079573, 12.972954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150366, 15.264636, 13.314976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489604, -0.815953, 0.307423,
		0.839917, 0.346654, -0.417578,
		0.234154, 0.462658, 0.855055,
		26.220612, 15.403433, 13.571492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662933, 14.954023, 13.254196>,  <26.056704, 15.079573, 12.972954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662933, 14.954023, 13.254196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477722, 15.042918, 13.597408>,  <26.366596, 15.096255, 13.803336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477722, 15.042918, 13.597408>,  <26.662933, 14.954023, 13.254196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477722, 15.042918, 13.597408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555876, -0.681202, 0.476409,
		0.690368, 0.697549, 0.191878,
		-0.463027, 0.222237, 0.858031,
		26.338814, 15.109590, 13.854817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123369, 15.205486, 13.730975>,  <26.662933, 14.954023, 13.254196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123369, 15.205486, 13.730975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821350, 15.094761, 13.968723>,  <26.640139, 15.028326, 14.111372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821350, 15.094761, 13.968723>,  <27.123369, 15.205486, 13.730975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821350, 15.094761, 13.968723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655455, -0.341802, 0.673461,
		0.016734, 0.898079, 0.439515,
		-0.755049, -0.276812, 0.594370,
		26.594835, 15.011717, 14.147035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256382, 15.397544, 14.373766>,  <27.123369, 15.205486, 13.730975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256382, 15.397544, 14.373766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992369, 15.104975, 14.442327>,  <26.833961, 14.929433, 14.483464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992369, 15.104975, 14.442327>,  <27.256382, 15.397544, 14.373766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992369, 15.104975, 14.442327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591977, -0.365915, 0.718101,
		-0.462516, 0.575436, 0.674501,
		-0.660031, -0.731423, 0.171404,
		26.794359, 14.885548, 14.493749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932270, 15.370815, 15.086349>,  <27.256382, 15.397544, 14.373766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932270, 15.370815, 15.086349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983173, 15.001956, 14.940227>,  <27.013716, 14.780641, 14.852553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983173, 15.001956, 14.940227>,  <26.932270, 15.370815, 15.086349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983173, 15.001956, 14.940227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647800, -0.201630, 0.734643,
		-0.751106, -0.330134, 0.571709,
		0.127257, -0.922148, -0.365306,
		27.021351, 14.725311, 14.830635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<16.480053, 14.035625, 23.453552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.101915, 14.164886, 23.470978>,  <15.875032, 14.242442, 23.481434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.101915, 14.164886, 23.470978>,  <16.480053, 14.035625, 23.453552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.101915, 14.164886, 23.470978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143305, 0.531751, -0.834689,
		-0.292898, -0.782824, -0.548997,
		-0.945344, 0.323152, 0.043566,
		15.818313, 14.261831, 23.484047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217051, 13.867389, 22.790548>,  <16.480053, 14.035625, 23.453552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217051, 13.867389, 22.790548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.996759, 14.161324, 22.948896>,  <15.864584, 14.337685, 23.043905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.996759, 14.161324, 22.948896>,  <16.217051, 13.867389, 22.790548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.996759, 14.161324, 22.948896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094114, 0.416582, -0.904214,
		-0.829361, -0.535234, -0.160266,
		-0.550730, 0.734836, 0.395870,
		15.831540, 14.381774, 23.067657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.712696, 13.991179, 22.297592>,  <16.217051, 13.867389, 22.790548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.712696, 13.991179, 22.297592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.709885, 14.332796, 22.505655>,  <15.708198, 14.537766, 22.630493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.709885, 14.332796, 22.505655>,  <15.712696, 13.991179, 22.297592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.709885, 14.332796, 22.505655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221197, 0.505957, -0.833714,
		-0.975204, -0.120917, 0.185356,
		-0.007028, 0.854041, 0.520158,
		15.707776, 14.589008, 22.661703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.153356, 14.442829, 22.032057>,  <15.712696, 13.991179, 22.297592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.153356, 14.442829, 22.032057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.355784, 14.710913, 22.249205>,  <15.477242, 14.871763, 22.379494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.355784, 14.710913, 22.249205>,  <15.153356, 14.442829, 22.032057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.355784, 14.710913, 22.249205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022079, 0.639283, -0.768654,
		-0.862208, 0.377009, 0.338322,
		0.506073, 0.670210, 0.542871,
		15.507607, 14.911976, 22.412066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.832351, 15.013705, 21.910959>,  <15.153356, 14.442829, 22.032057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.832351, 15.013705, 21.910959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.187644, 15.159903, 22.022284>,  <15.400820, 15.247621, 22.089079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.187644, 15.159903, 22.022284>,  <14.832351, 15.013705, 21.910959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.187644, 15.159903, 22.022284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021874, 0.571487, -0.820319,
		-0.458872, 0.734723, 0.499619,
		0.888233, 0.365493, 0.278311,
		15.454114, 15.269550, 22.105778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.795465, 15.792504, 21.731552>,  <14.832351, 15.013705, 21.910959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.795465, 15.792504, 21.731552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.183408, 15.725649, 21.802481>,  <15.416173, 15.685535, 21.845037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.183408, 15.725649, 21.802481>,  <14.795465, 15.792504, 21.731552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.183408, 15.725649, 21.802481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242133, 0.579275, -0.778339,
		0.027374, 0.797812, 0.602284,
		0.969857, -0.167140, 0.177320,
		15.474365, 15.675507, 21.855677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101954, 16.379105, 21.803793>,  <14.795465, 15.792504, 21.731552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.101954, 16.379105, 21.803793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.368907, 16.116678, 21.662834>,  <15.529078, 15.959223, 21.578259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.368907, 16.116678, 21.662834>,  <15.101954, 16.379105, 21.803793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.368907, 16.116678, 21.662834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049686, 0.511365, -0.857926,
		0.743058, 0.555054, 0.373872,
		0.667380, -0.656065, -0.352395,
		15.569121, 15.919859, 21.557116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.573698, 16.862982, 21.381563>,  <15.101954, 16.379105, 21.803793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.573698, 16.862982, 21.381563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.670989, 16.488859, 21.278765>,  <15.729363, 16.264385, 21.217087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.670989, 16.488859, 21.278765>,  <15.573698, 16.862982, 21.381563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.670989, 16.488859, 21.278765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084067, 0.284281, -0.955048,
		0.966319, 0.210690, 0.147773,
		0.243228, -0.935304, -0.256994,
		15.743958, 16.208267, 21.201666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.272230, 16.840929, 21.103291>,  <15.573698, 16.862982, 21.381563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.272230, 16.840929, 21.103291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.078588, 16.520565, 20.962328>,  <15.962403, 16.328346, 20.877750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.078588, 16.520565, 20.962328>,  <16.272230, 16.840929, 21.103291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.078588, 16.520565, 20.962328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287153, 0.235024, -0.928605,
		0.826551, -0.550735, 0.116207,
		-0.484104, -0.800908, -0.352405,
		15.933357, 16.280293, 20.856606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744516, 16.543312, 20.611774>,  <16.272230, 16.840929, 21.103291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.744516, 16.543312, 20.611774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.383698, 16.392946, 20.526922>,  <16.167206, 16.302727, 20.476011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.383698, 16.392946, 20.526922>,  <16.744516, 16.543312, 20.611774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.383698, 16.392946, 20.526922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139803, 0.210513, -0.967543,
		0.408371, -0.902425, -0.137338,
		-0.902047, -0.375917, -0.212129,
		16.113083, 16.280172, 20.463284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849340, 16.081425, 20.192177>,  <16.744516, 16.543312, 20.611774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.849340, 16.081425, 20.192177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.470783, 16.197718, 20.135870>,  <16.243649, 16.267494, 20.102087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.470783, 16.197718, 20.135870>,  <16.849340, 16.081425, 20.192177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.470783, 16.197718, 20.135870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181757, 0.119045, -0.976111,
		-0.267030, -0.949370, -0.165506,
		-0.946393, 0.290733, -0.140766,
		16.186865, 16.284937, 20.093639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.577885, 15.549033, 19.692430>,  <16.849340, 16.081425, 20.192177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.577885, 15.549033, 19.692430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.318460, 15.850541, 19.650101>,  <16.162806, 16.031446, 19.624702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.318460, 15.850541, 19.650101>,  <16.577885, 15.549033, 19.692430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.318460, 15.850541, 19.650101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155378, -0.004994, -0.987843,
		-0.745135, -0.657118, -0.113880,
		-0.648561, 0.753771, -0.105823,
		16.123892, 16.076672, 19.618353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105555, 15.427629, 18.995934>,  <16.577885, 15.549033, 19.692430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.105555, 15.427629, 18.995934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.112171, 15.815125, 19.094940>,  <16.116142, 16.047625, 19.154345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.112171, 15.815125, 19.094940>,  <16.105555, 15.427629, 18.995934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.112171, 15.815125, 19.094940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104446, 0.244522, -0.964002,
		-0.994393, 0.041800, -0.097136,
		0.016543, 0.968742, 0.247517,
		16.117134, 16.105749, 19.169195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.753901, 15.808176, 18.348152>,  <16.105555, 15.427629, 18.995934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.753901, 15.808176, 18.348152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.945261, 16.101902, 18.540783>,  <16.060076, 16.278137, 18.656361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.945261, 16.101902, 18.540783>,  <15.753901, 15.808176, 18.348152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.945261, 16.101902, 18.540783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284357, 0.389314, -0.876114,
		-0.830828, 0.556071, -0.022561,
		0.478399, 0.734316, 0.481576,
		16.088781, 16.322197, 18.685255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.636786, 16.464432, 17.880606>,  <15.753901, 15.808176, 18.348152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.636786, 16.464432, 17.880606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.941759, 16.563454, 18.119741>,  <16.124743, 16.622868, 18.263224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.941759, 16.563454, 18.119741>,  <15.636786, 16.464432, 17.880606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941759, 16.563454, 18.119741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416094, 0.519994, -0.745970,
		-0.495541, 0.817510, 0.293455,
		0.762433, 0.247554, 0.597840,
		16.170488, 16.637720, 18.299093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.691866, 17.241060, 17.729324>,  <15.636786, 16.464432, 17.880606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.691866, 17.241060, 17.729324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.027056, 17.122540, 17.912628>,  <16.228170, 17.051426, 18.022610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.027056, 17.122540, 17.912628>,  <15.691866, 17.241060, 17.729324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.027056, 17.122540, 17.912628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524622, 0.668597, -0.527020,
		-0.150233, 0.682043, 0.715715,
		0.837975, -0.296304, 0.458260,
		16.278448, 17.033648, 18.050106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.066792, 17.822918, 17.821568>,  <15.691866, 17.241060, 17.729324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.066792, 17.822918, 17.821568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.347172, 17.538395, 17.800749>,  <16.515400, 17.367682, 17.788258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.347172, 17.538395, 17.800749>,  <16.066792, 17.822918, 17.821568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.347172, 17.538395, 17.800749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560497, 0.594519, -0.576533,
		0.441037, 0.374947, 0.815414,
		0.700949, -0.711310, -0.052048,
		16.557457, 17.325003, 17.785135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.643917, 18.247293, 18.013166>,  <16.066792, 17.822918, 17.821568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.643917, 18.247293, 18.013166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.782545, 17.907324, 17.854412>,  <16.865721, 17.703342, 17.759159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.782545, 17.907324, 17.854412>,  <16.643917, 18.247293, 18.013166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.782545, 17.907324, 17.854412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554815, 0.526896, -0.643864,
		0.756354, 0.002944, 0.654156,
		0.346568, -0.849925, -0.396886,
		16.886515, 17.652346, 17.735346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.319904, 18.396690, 17.918131>,  <16.643917, 18.247293, 18.013166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.319904, 18.396690, 17.918131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.234715, 18.096188, 17.668249>,  <17.183601, 17.915886, 17.518320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.234715, 18.096188, 17.668249>,  <17.319904, 18.396690, 17.918131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234715, 18.096188, 17.668249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525934, 0.450696, -0.721295,
		0.823429, -0.482171, 0.299124,
		-0.212973, -0.751255, -0.624707,
		17.170822, 17.870811, 17.480837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.954575, 18.249302, 17.663343>,  <17.319904, 18.396690, 17.918131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.954575, 18.249302, 17.663343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.715464, 18.098566, 17.380316>,  <17.571997, 18.008125, 17.210499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.715464, 18.098566, 17.380316>,  <17.954575, 18.249302, 17.663343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.715464, 18.098566, 17.380316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283519, 0.726207, -0.626291,
		0.749856, -0.574990, -0.327265,
		-0.597773, -0.376842, -0.707571,
		17.536131, 17.985514, 17.168045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.288698, 18.289845, 16.918940>,  <17.954575, 18.249302, 17.663343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.288698, 18.289845, 16.918940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.893538, 18.247557, 16.873560>,  <17.656441, 18.222183, 16.846333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.893538, 18.247557, 16.873560>,  <18.288698, 18.289845, 16.918940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.893538, 18.247557, 16.873560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006356, 0.703363, -0.710802,
		0.154944, -0.702924, -0.694183,
		-0.987903, -0.105722, -0.113450,
		17.597166, 18.215839, 16.839525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.189989, 18.112785, 16.189556>,  <18.288698, 18.289845, 16.918940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.189989, 18.112785, 16.189556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.889748, 18.295506, 16.380524>,  <17.709602, 18.405138, 16.495104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.889748, 18.295506, 16.380524>,  <18.189989, 18.112785, 16.189556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.889748, 18.295506, 16.380524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104459, 0.795487, -0.596899,
		-0.652444, -0.398164, -0.644812,
		-0.750603, 0.456799, 0.477419,
		17.664566, 18.432545, 16.523750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762070, 17.864456, 16.605927>,  <18.189989, 18.112785, 16.189556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.762070, 17.864456, 16.605927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.144661, 17.780678, 16.687197>,  <19.374216, 17.730410, 16.735958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.144661, 17.780678, 16.687197>,  <18.762070, 17.864456, 16.605927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.144661, 17.780678, 16.687197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227669, -0.100128, 0.968577,
		-0.182526, -0.972679, -0.143456,
		0.956479, -0.209451, 0.203173,
		19.431604, 17.717844, 16.748148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.735378, 17.252489, 17.070364>,  <18.762070, 17.864456, 16.605927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.735378, 17.252489, 17.070364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.083212, 17.444141, 17.118124>,  <19.291912, 17.559134, 17.146780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.083212, 17.444141, 17.118124>,  <18.735378, 17.252489, 17.070364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.083212, 17.444141, 17.118124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006461, -0.230743, 0.972993,
		0.493742, -0.846871, -0.197555,
		0.869584, 0.479131, 0.119399,
		19.344088, 17.587881, 17.153944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.045586, 16.793707, 17.489388>,  <18.735378, 17.252489, 17.070364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.045586, 16.793707, 17.489388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.267075, 17.122454, 17.542942>,  <19.399967, 17.319702, 17.575075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.267075, 17.122454, 17.542942>,  <19.045586, 16.793707, 17.489388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.267075, 17.122454, 17.542942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141295, -0.065718, 0.987784,
		0.820626, -0.565876, 0.079736,
		0.553723, 0.821867, 0.133885,
		19.433191, 17.369015, 17.583107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.628277, 16.581539, 17.851698>,  <19.045586, 16.793707, 17.489388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.628277, 16.581539, 17.851698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.566572, 16.974039, 17.897926>,  <19.529551, 17.209539, 17.925663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.566572, 16.974039, 17.897926>,  <19.628277, 16.581539, 17.851698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.566572, 16.974039, 17.897926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126052, -0.096471, 0.987322,
		0.979956, 0.166873, -0.108807,
		-0.154260, 0.981248, 0.115572,
		19.520294, 17.268414, 17.932598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.215702, 16.816629, 18.247244>,  <19.628277, 16.581539, 17.851698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.215702, 16.816629, 18.247244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.916740, 17.074793, 18.310278>,  <19.737364, 17.229691, 18.348099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.916740, 17.074793, 18.310278>,  <20.215702, 16.816629, 18.247244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.916740, 17.074793, 18.310278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157324, -0.058517, 0.985812,
		0.645473, 0.761593, -0.057802,
		-0.747404, 0.645409, 0.157587,
		19.692518, 17.268415, 18.357553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.414986, 17.138847, 18.855536>,  <20.215702, 16.816629, 18.247244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.414986, 17.138847, 18.855536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.042585, 17.275373, 18.803782>,  <19.819145, 17.357288, 18.772728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.042585, 17.275373, 18.803782>,  <20.414986, 17.138847, 18.855536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.042585, 17.275373, 18.803782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147340, -0.027092, 0.988715,
		0.333959, 0.939558, 0.075512,
		-0.931001, 0.341316, -0.129387,
		19.763285, 17.377768, 18.764965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.229164, 17.823299, 19.206841>,  <20.414986, 17.138847, 18.855536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.229164, 17.823299, 19.206841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.887312, 17.623043, 19.151747>,  <19.682201, 17.502890, 19.118690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.887312, 17.623043, 19.151747>,  <20.229164, 17.823299, 19.206841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.887312, 17.623043, 19.151747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209054, 0.088950, 0.973850,
		-0.475297, 0.861074, -0.180680,
		-0.854628, -0.500639, -0.137733,
		19.630924, 17.472851, 19.110426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.830790, 18.116167, 19.635960>,  <20.229164, 17.823299, 19.206841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.830790, 18.116167, 19.635960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.640207, 17.771801, 19.564613>,  <19.525858, 17.565182, 19.521805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.640207, 17.771801, 19.564613>,  <19.830790, 18.116167, 19.635960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.640207, 17.771801, 19.564613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140668, -0.125613, 0.982056,
		-0.867872, 0.492996, -0.061254,
		-0.476455, -0.860916, -0.178365,
		19.497271, 17.513527, 19.511105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.172728, 18.161507, 20.060417>,  <19.830790, 18.116167, 19.635960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.172728, 18.161507, 20.060417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.256216, 17.781292, 19.968403>,  <19.306309, 17.553164, 19.913195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.256216, 17.781292, 19.968403>,  <19.172728, 18.161507, 20.060417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.256216, 17.781292, 19.968403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131593, -0.260372, 0.956499,
		-0.969081, -0.169372, -0.179430,
		0.208723, -0.950536, -0.230033,
		19.318832, 17.496132, 19.899393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.734278, 17.712366, 20.508135>,  <19.172728, 18.161507, 20.060417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.734278, 17.712366, 20.508135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.005413, 17.438818, 20.400167>,  <19.168095, 17.274689, 20.335386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.005413, 17.438818, 20.400167>,  <18.734278, 17.712366, 20.508135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.005413, 17.438818, 20.400167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153046, -0.490337, 0.857990,
		-0.719107, -0.540267, -0.437032,
		0.677836, -0.683872, -0.269919,
		19.208765, 17.233656, 20.319193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.380987, 17.037540, 20.544882>,  <18.734278, 17.712366, 20.508135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.380987, 17.037540, 20.544882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.766773, 16.932104, 20.537680>,  <18.998245, 16.868841, 20.533358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.766773, 16.932104, 20.537680>,  <18.380987, 17.037540, 20.544882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.766773, 16.932104, 20.537680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130797, -0.535571, 0.834299,
		-0.229558, -0.802298, -0.551017,
		0.964466, -0.263592, -0.018006,
		19.056112, 16.853025, 20.532278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.414476, 16.264732, 20.568142>,  <18.380987, 17.037540, 20.544882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.414476, 16.264732, 20.568142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.767231, 16.399704, 20.699850>,  <18.978884, 16.480686, 20.778875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.767231, 16.399704, 20.699850>,  <18.414476, 16.264732, 20.568142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.767231, 16.399704, 20.699850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081792, -0.578315, 0.811703,
		0.464315, -0.742761, -0.482408,
		0.881885, 0.337429, 0.329272,
		19.031797, 16.500933, 20.798632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841879, 15.725494, 20.877403>,  <18.414476, 16.264732, 20.568142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841879, 15.725494, 20.877403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.991741, 16.041815, 21.071009>,  <19.081659, 16.231607, 21.187172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.991741, 16.041815, 21.071009>,  <18.841879, 15.725494, 20.877403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.991741, 16.041815, 21.071009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207375, -0.580283, 0.787571,
		0.903675, -0.194696, -0.381399,
		0.374656, 0.790801, 0.484011,
		19.104137, 16.279055, 21.216211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.456379, 15.452541, 21.254492>,  <18.841879, 15.725494, 20.877403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.456379, 15.452541, 21.254492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.341854, 15.790067, 21.436041>,  <19.273138, 15.992582, 21.544971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.341854, 15.790067, 21.436041>,  <19.456379, 15.452541, 21.254492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.341854, 15.790067, 21.436041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041145, -0.462441, 0.885695,
		0.957252, 0.272261, 0.097685,
		-0.286313, 0.843814, 0.453875,
		19.255960, 16.043211, 21.572203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.820757, 15.578915, 21.855034>,  <19.456379, 15.452541, 21.254492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.820757, 15.578915, 21.855034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.501934, 15.806791, 21.935186>,  <19.310640, 15.943518, 21.983278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.501934, 15.806791, 21.935186>,  <19.820757, 15.578915, 21.855034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.501934, 15.806791, 21.935186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035821, -0.375821, 0.926000,
		0.602841, 0.730896, 0.319957,
		-0.797056, 0.569692, 0.200379,
		19.262817, 15.977699, 21.995300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.943657, 15.725675, 22.540432>,  <19.820757, 15.578915, 21.855034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.943657, 15.725675, 22.540432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.551739, 15.782228, 22.483847>,  <19.316587, 15.816159, 22.449896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.551739, 15.782228, 22.483847>,  <19.943657, 15.725675, 22.540432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.551739, 15.782228, 22.483847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187149, -0.398630, 0.897813,
		0.070544, 0.906148, 0.417036,
		-0.979795, 0.141383, -0.141464,
		19.257801, 15.824642, 22.441408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.646194, 16.087744, 23.158836>,  <19.943657, 15.725675, 22.540432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.646194, 16.087744, 23.158836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.315317, 15.946286, 22.984167>,  <19.116791, 15.861411, 22.879366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.315317, 15.946286, 22.984167>,  <19.646194, 16.087744, 23.158836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.315317, 15.946286, 22.984167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243072, -0.475447, 0.845497,
		-0.506622, 0.805534, 0.307325,
		-0.827194, -0.353646, -0.436675,
		19.067160, 15.840193, 22.853165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171612, 16.178377, 23.692219>,  <19.646194, 16.087744, 23.158836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171612, 16.178377, 23.692219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.024195, 15.906326, 23.438730>,  <18.935745, 15.743095, 23.286638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.024195, 15.906326, 23.438730>,  <19.171612, 16.178377, 23.692219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.024195, 15.906326, 23.438730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308146, -0.553785, 0.773543,
		-0.877054, 0.480361, -0.005487,
		-0.368541, -0.680130, -0.633720,
		18.913633, 15.702288, 23.248613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.095036, 15.752377, 23.902994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.293062, 15.515228, 23.648935>,  <18.411879, 15.372939, 23.496500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.293062, 15.515228, 23.648935>,  <18.095036, 15.752377, 23.902994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.293062, 15.515228, 23.648935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459661, -0.799056, 0.387585,
		-0.737307, 0.100073, -0.668105,
		0.495066, -0.592871, -0.635149,
		18.441582, 15.337367, 23.458391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.572136, 15.313026, 23.757053>,  <18.095036, 15.752377, 23.902994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.572136, 15.313026, 23.757053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.922226, 15.141397, 23.667721>,  <18.132280, 15.038421, 23.614120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.922226, 15.141397, 23.667721>,  <17.572136, 15.313026, 23.757053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.922226, 15.141397, 23.667721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333798, -0.869895, 0.363127,
		-0.350084, -0.243270, -0.904578,
		0.875225, -0.429071, -0.223333,
		18.184793, 15.012676, 23.600721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353188, 14.692032, 23.512751>,  <17.572136, 15.313026, 23.757053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.353188, 14.692032, 23.512751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.741705, 14.622922, 23.578161>,  <17.974815, 14.581456, 23.617409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.741705, 14.622922, 23.578161>,  <17.353188, 14.692032, 23.512751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.741705, 14.622922, 23.578161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234981, -0.804003, 0.546227,
		0.037102, -0.568971, -0.821520,
		0.971292, -0.172775, 0.163528,
		18.033092, 14.571089, 23.627220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.527521, 14.034044, 23.214510>,  <17.353188, 14.692032, 23.512751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.527521, 14.034044, 23.214510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.827528, 14.083997, 23.474319>,  <18.007532, 14.113968, 23.630205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.827528, 14.083997, 23.474319>,  <17.527521, 14.034044, 23.214510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.827528, 14.083997, 23.474319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221925, -0.877573, 0.424988,
		0.623078, -0.462893, -0.630479,
		0.750015, 0.124881, 0.649524,
		18.052532, 14.121461, 23.669176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.945324, 13.454840, 23.288998>,  <17.527521, 14.034044, 23.214510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.945324, 13.454840, 23.288998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.001329, 13.631928, 23.643261>,  <18.034933, 13.738181, 23.855820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.001329, 13.631928, 23.643261>,  <17.945324, 13.454840, 23.288998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.001329, 13.631928, 23.643261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195556, -0.864488, 0.463053,
		0.970646, -0.238029, -0.034462,
		0.140012, 0.442721, 0.885660,
		18.043333, 13.764745, 23.908958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514944, 13.080044, 23.796465>,  <17.945324, 13.454840, 23.288998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514944, 13.080044, 23.796465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.251434, 13.284156, 24.017601>,  <18.093328, 13.406623, 24.150282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.251434, 13.284156, 24.017601>,  <18.514944, 13.080044, 23.796465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.251434, 13.284156, 24.017601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023155, -0.748230, 0.663036,
		0.751983, 0.423991, 0.504731,
		-0.658775, 0.510279, 0.552838,
		18.053802, 13.437240, 24.183453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.558958, 12.731596, 24.447046>,  <18.514944, 13.080044, 23.796465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.558958, 12.731596, 24.447046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.272476, 12.995197, 24.538929>,  <18.100588, 13.153358, 24.594059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.272476, 12.995197, 24.538929>,  <18.558958, 12.731596, 24.447046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.272476, 12.995197, 24.538929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145127, -0.462584, 0.874617,
		0.682634, 0.593068, 0.426944,
		-0.716205, 0.659004, 0.229706,
		18.057615, 13.192899, 24.607841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.658258, 12.963530, 25.103195>,  <18.558958, 12.731596, 24.447046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.658258, 12.963530, 25.103195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.267542, 13.040081, 25.064714>,  <18.033112, 13.086012, 25.041626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.267542, 13.040081, 25.064714>,  <18.658258, 12.963530, 25.103195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.267542, 13.040081, 25.064714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174607, -0.451279, 0.875134,
		0.124068, 0.871620, 0.474221,
		-0.976790, 0.191378, -0.096202,
		17.974504, 13.097494, 25.035854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.374172, 13.457428, 25.645237>,  <18.658258, 12.963530, 25.103195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.374172, 13.457428, 25.645237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.083412, 13.209097, 25.527807>,  <17.908957, 13.060098, 25.457350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.083412, 13.209097, 25.527807>,  <18.374172, 13.457428, 25.645237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.083412, 13.209097, 25.527807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076018, -0.352121, 0.932862,
		-0.682521, 0.700416, 0.208764,
		-0.726902, -0.620828, -0.293574,
		17.865341, 13.022848, 25.439735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.749893, 13.503234, 26.101730>,  <18.374172, 13.457428, 25.645237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.749893, 13.503234, 26.101730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.701294, 13.151052, 25.918411>,  <17.672134, 12.939742, 25.808420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.701294, 13.151052, 25.918411>,  <17.749893, 13.503234, 26.101730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.701294, 13.151052, 25.918411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085635, -0.450699, 0.888559,
		-0.988891, 0.147204, -0.020638,
		-0.121498, -0.880455, -0.458298,
		17.664845, 12.886915, 25.780922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.219580, 13.238787, 26.408401>,  <17.749893, 13.503234, 26.101730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.219580, 13.238787, 26.408401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.362082, 12.914163, 26.223166>,  <17.447582, 12.719388, 26.112024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.362082, 12.914163, 26.223166>,  <17.219580, 13.238787, 26.408401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.362082, 12.914163, 26.223166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183148, -0.546645, 0.817090,
		-0.916264, -0.206278, -0.343381,
		0.356255, -0.811559, -0.463091,
		17.468958, 12.670694, 26.084238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792982, 12.639715, 26.441574>,  <17.219580, 13.238787, 26.408401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792982, 12.639715, 26.441574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.109287, 12.413415, 26.348093>,  <17.299070, 12.277635, 26.292004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.109287, 12.413415, 26.348093>,  <16.792982, 12.639715, 26.441574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.109287, 12.413415, 26.348093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327090, -0.713255, 0.619903,
		-0.517400, -0.413755, -0.749068,
		0.790765, -0.565750, -0.233703,
		17.346518, 12.243690, 26.277983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.541676, 11.965076, 26.396774>,  <16.792982, 12.639715, 26.441574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.541676, 11.965076, 26.396774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.928101, 11.923479, 26.491356>,  <17.159956, 11.898520, 26.548105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.928101, 11.923479, 26.491356>,  <16.541676, 11.965076, 26.396774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.928101, 11.923479, 26.491356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243724, -0.670225, 0.700997,
		0.085579, -0.734836, -0.672824,
		0.966062, -0.103993, 0.236454,
		17.217918, 11.892282, 26.562292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.606199, 11.468911, 26.822998>,  <16.541676, 11.965076, 26.396774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.606199, 11.468911, 26.822998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.999262, 11.533692, 26.859133>,  <17.235100, 11.572561, 26.880814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.999262, 11.533692, 26.859133>,  <16.606199, 11.468911, 26.822998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.999262, 11.533692, 26.859133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045630, -0.683321, 0.728691,
		0.179742, -0.711930, -0.678859,
		0.982655, 0.161953, 0.090336,
		17.294058, 11.582278, 26.886234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.895353, 10.765599, 26.933174>,  <16.606199, 11.468911, 26.822998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.895353, 10.765599, 26.933174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.162769, 11.029694, 27.070080>,  <17.323219, 11.188150, 27.152224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.162769, 11.029694, 27.070080>,  <16.895353, 10.765599, 26.933174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.162769, 11.029694, 27.070080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346363, -0.683701, 0.642328,
		0.658095, -0.310873, -0.685761,
		0.668538, 0.660235, 0.342265,
		17.363331, 11.227764, 27.172760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.599485, 10.387187, 27.047562>,  <16.895353, 10.765599, 26.933174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.599485, 10.387187, 27.047562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.547682, 10.710079, 27.277903>,  <17.516600, 10.903814, 27.416107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.547682, 10.710079, 27.277903>,  <17.599485, 10.387187, 27.047562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547682, 10.710079, 27.277903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190667, -0.549635, 0.813356,
		0.973075, 0.215132, -0.082730,
		-0.129507, 0.807230, 0.575855,
		17.508829, 10.952248, 27.450659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.156862, 10.417482, 27.478365>,  <17.599485, 10.387187, 27.047562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.156862, 10.417482, 27.478365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.888084, 10.646350, 27.666454>,  <17.726818, 10.783670, 27.779308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.888084, 10.646350, 27.666454>,  <18.156862, 10.417482, 27.478365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.888084, 10.646350, 27.666454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250460, -0.421949, 0.871337,
		0.696963, 0.703264, 0.140221,
		-0.671947, 0.572170, 0.470222,
		17.686501, 10.818001, 27.807522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.511148, 10.638960, 28.112051>,  <18.156862, 10.417482, 27.478365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.511148, 10.638960, 28.112051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.120516, 10.694304, 28.177959>,  <17.886137, 10.727509, 28.217505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.120516, 10.694304, 28.177959>,  <18.511148, 10.638960, 28.112051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.120516, 10.694304, 28.177959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098366, -0.393979, 0.913841,
		0.191354, 0.908646, 0.371142,
		-0.976580, 0.138359, 0.164769,
		17.827541, 10.735811, 28.227390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.411987, 10.772914, 28.888247>,  <18.511148, 10.638960, 28.112051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.411987, 10.772914, 28.888247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.039167, 10.669119, 28.787090>,  <17.815475, 10.606842, 28.726397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.039167, 10.669119, 28.787090>,  <18.411987, 10.772914, 28.888247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.039167, 10.669119, 28.787090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100784, -0.484739, 0.868833,
		-0.348038, 0.835281, 0.425647,
		-0.932047, -0.259488, -0.252890,
		17.759554, 10.591272, 28.711224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.950003, 10.893522, 29.469803>,  <18.411987, 10.772914, 28.888247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.950003, 10.893522, 29.469803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.732824, 10.635095, 29.255213>,  <17.602518, 10.480039, 29.126459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.732824, 10.635095, 29.255213>,  <17.950003, 10.893522, 29.469803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.732824, 10.635095, 29.255213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331264, -0.422258, 0.843779,
		-0.771670, 0.635841, 0.015244,
		-0.542946, -0.646069, -0.536475,
		17.569941, 10.441274, 29.094271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.299665, 10.837683, 29.820639>,  <17.950003, 10.893522, 29.469803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.299665, 10.837683, 29.820639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.330835, 10.499886, 29.608690>,  <17.349537, 10.297208, 29.481522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.330835, 10.499886, 29.608690>,  <17.299665, 10.837683, 29.820639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.330835, 10.499886, 29.608690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265684, -0.529855, 0.805398,
		-0.960906, 0.078018, -0.265656,
		0.077924, -0.844492, -0.529869,
		17.354212, 10.246538, 29.449730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.679123, 10.476246, 29.966423>,  <17.299665, 10.837683, 29.820639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.679123, 10.476246, 29.966423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.930504, 10.207144, 29.810244>,  <17.081331, 10.045683, 29.716536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.930504, 10.207144, 29.810244>,  <16.679123, 10.476246, 29.966423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.930504, 10.207144, 29.810244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222022, -0.636221, 0.738871,
		-0.745491, -0.377655, -0.549200,
		0.628450, -0.672755, -0.390449,
		17.119040, 10.005318, 29.693110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122400, 10.865841, 30.054558>,  <16.679123, 10.476246, 29.966423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.122400, 10.865841, 30.054558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.059492, 10.869076, 29.659550>,  <16.021748, 10.871017, 29.422544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.059492, 10.869076, 29.659550>,  <16.122400, 10.865841, 30.054558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.059492, 10.869076, 29.659550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136150, -0.990240, -0.029793,
		-0.978126, -0.139136, 0.154634,
		-0.157270, 0.008088, -0.987522,
		16.012312, 10.871502, 29.363293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.882779, 10.516139, 30.617487>,  <16.122400, 10.865841, 30.054558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.882779, 10.516139, 30.617487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.488187, 10.532989, 30.680836>,  <15.251431, 10.543098, 30.718845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.488187, 10.532989, 30.680836>,  <15.882779, 10.516139, 30.617487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.488187, 10.532989, 30.680836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151804, 0.129159, -0.979935,
		-0.061735, -0.990729, -0.121018,
		-0.986481, 0.042125, 0.158370,
		15.192243, 10.545626, 30.728346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.596758, 10.120954, 30.102604>,  <15.882779, 10.516139, 30.617487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.596758, 10.120954, 30.102604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.327209, 10.391653, 30.221201>,  <15.165481, 10.554072, 30.292360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.327209, 10.391653, 30.221201>,  <15.596758, 10.120954, 30.102604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.327209, 10.391653, 30.221201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322406, 0.091733, -0.942146,
		-0.664795, -0.730477, 0.156372,
		-0.673871, 0.676749, 0.296494,
		15.125048, 10.594678, 30.310148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036162, 10.039347, 29.698458>,  <15.596758, 10.120954, 30.102604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036162, 10.039347, 29.698458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.991880, 10.413918, 29.831633>,  <14.965311, 10.638661, 29.911537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.991880, 10.413918, 29.831633>,  <15.036162, 10.039347, 29.698458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.991880, 10.413918, 29.831633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060254, 0.328055, -0.942735,
		-0.992025, -0.124426, 0.020107,
		-0.110704, 0.936428, 0.332936,
		14.958669, 10.694847, 29.931513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.594942, 10.322540, 29.250124>,  <15.036162, 10.039347, 29.698458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.594942, 10.322540, 29.250124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.732771, 10.653718, 29.427111>,  <14.815468, 10.852425, 29.533302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.732771, 10.653718, 29.427111>,  <14.594942, 10.322540, 29.250124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.732771, 10.653718, 29.427111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102852, 0.501790, -0.858853,
		-0.933109, 0.250428, 0.258059,
		0.344572, 0.827945, 0.442468,
		14.836143, 10.902102, 29.559851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128662, 10.792104, 29.037195>,  <14.594942, 10.322540, 29.250124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128662, 10.792104, 29.037195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.444993, 10.996689, 29.171656>,  <14.634791, 11.119440, 29.252331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.444993, 10.996689, 29.171656>,  <14.128662, 10.792104, 29.037195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.444993, 10.996689, 29.171656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055723, 0.607117, -0.792656,
		-0.609497, 0.608123, 0.508625,
		0.790828, 0.511464, 0.336150,
		14.682241, 11.150128, 29.272501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.897118, 11.481266, 29.006119>,  <14.128662, 10.792104, 29.037195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.897118, 11.481266, 29.006119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.296964, 11.492346, 29.005486>,  <14.536871, 11.498994, 29.005106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.296964, 11.492346, 29.005486>,  <13.897118, 11.481266, 29.006119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.296964, 11.492346, 29.005486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019967, 0.678521, -0.734310,
		-0.019265, 0.734058, 0.678813,
		0.999615, 0.027700, -0.001585,
		14.596848, 11.500656, 29.005011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.107760, 12.152981, 28.970442>,  <13.897118, 11.481266, 29.006119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.107760, 12.152981, 28.970442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.435686, 11.963384, 28.841921>,  <14.632442, 11.849626, 28.764809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.435686, 11.963384, 28.841921>,  <14.107760, 12.152981, 28.970442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.435686, 11.963384, 28.841921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074942, 0.645085, -0.760427,
		0.567706, 0.599329, 0.564371,
		0.819814, -0.473994, -0.321303,
		14.681630, 11.821185, 28.745529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.679109, 12.610525, 28.902805>,  <14.107760, 12.152981, 28.970442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.679109, 12.610525, 28.902805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.748348, 12.313057, 28.644506>,  <14.789892, 12.134576, 28.489527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.748348, 12.313057, 28.644506>,  <14.679109, 12.610525, 28.902805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.748348, 12.313057, 28.644506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070895, 0.663354, -0.744940,
		0.982350, 0.083168, 0.167548,
		0.173099, -0.743670, -0.645749,
		14.800278, 12.089956, 28.450781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.151829, 12.917457, 28.409000>,  <14.679109, 12.610525, 28.902805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.151829, 12.917457, 28.409000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.053865, 12.571062, 28.234604>,  <14.995088, 12.363226, 28.129965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.053865, 12.571062, 28.234604>,  <15.151829, 12.917457, 28.409000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.053865, 12.571062, 28.234604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029829, 0.442745, -0.896151,
		0.969087, -0.232479, -0.082600,
		-0.244907, -0.865985, -0.435993,
		14.980393, 12.311267, 28.103806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.572390, 12.916471, 27.883972>,  <15.151829, 12.917457, 28.409000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.572390, 12.916471, 27.883972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.302142, 12.643416, 27.772583>,  <15.139994, 12.479584, 27.705750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.302142, 12.643416, 27.772583>,  <15.572390, 12.916471, 27.883972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.302142, 12.643416, 27.772583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116698, 0.273933, -0.954642,
		0.727957, -0.677471, -0.105412,
		-0.675619, -0.682638, -0.278471,
		15.099457, 12.438625, 27.689041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.890080, 12.543568, 27.338263>,  <15.572390, 12.916471, 27.883972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.890080, 12.543568, 27.338263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.497253, 12.502091, 27.275280>,  <15.261558, 12.477205, 27.237490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.497253, 12.502091, 27.275280>,  <15.890080, 12.543568, 27.338263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.497253, 12.502091, 27.275280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135808, 0.190207, -0.972305,
		0.130765, -0.976253, -0.172715,
		-0.982068, -0.103687, -0.157456,
		15.202633, 12.470984, 27.228043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.807768, 11.983069, 26.842674>,  <15.890080, 12.543568, 27.338263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.807768, 11.983069, 26.842674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.452376, 12.166636, 26.842421>,  <15.239141, 12.276775, 26.842268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.452376, 12.166636, 26.842421>,  <15.807768, 11.983069, 26.842674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.452376, 12.166636, 26.842421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017150, 0.031818, -0.999347,
		-0.458596, -0.887910, -0.036140,
		-0.888480, 0.458916, -0.000636,
		15.185832, 12.304310, 26.842230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.363977, 11.580219, 26.315207>,  <15.807768, 11.983069, 26.842674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.363977, 11.580219, 26.315207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.218946, 11.950090, 26.361691>,  <15.131927, 12.172013, 26.389582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.218946, 11.950090, 26.361691>,  <15.363977, 11.580219, 26.315207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.218946, 11.950090, 26.361691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061626, 0.100635, -0.993013,
		-0.929913, -0.367208, 0.020496,
		-0.362579, 0.924679, 0.116212,
		15.110171, 12.227494, 26.396555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.019000, 11.663010, 25.622095>,  <15.363977, 11.580219, 26.315207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.019000, 11.663010, 25.622095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.045051, 12.025848, 25.788437>,  <15.060681, 12.243551, 25.888243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.045051, 12.025848, 25.788437>,  <15.019000, 11.663010, 25.622095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.045051, 12.025848, 25.788437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158913, 0.420849, -0.893103,
		-0.985142, -0.007919, 0.171558,
		0.065128, 0.907096, 0.415854,
		15.064589, 12.297977, 25.913193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.551717, 12.100088, 25.267534>,  <15.019000, 11.663010, 25.622095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.551717, 12.100088, 25.267534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.783551, 12.359724, 25.464619>,  <14.922652, 12.515506, 25.582869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.783551, 12.359724, 25.464619>,  <14.551717, 12.100088, 25.267534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.783551, 12.359724, 25.464619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067401, 0.564363, -0.822771,
		-0.812119, 0.510076, 0.283348,
		0.579586, 0.649089, 0.492710,
		14.957427, 12.554451, 25.612432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315784, 12.833900, 25.103601>,  <14.551717, 12.100088, 25.267534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315784, 12.833900, 25.103601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.690322, 12.895137, 25.229980>,  <14.915045, 12.931879, 25.305809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.690322, 12.895137, 25.229980>,  <14.315784, 12.833900, 25.103601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.690322, 12.895137, 25.229980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145395, 0.650037, -0.745864,
		-0.319564, 0.744322, 0.586399,
		0.936344, 0.153092, 0.315949,
		14.971225, 12.941064, 25.324764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.443236, 13.551284, 24.952604>,  <14.315784, 12.833900, 25.103601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.443236, 13.551284, 24.952604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.822123, 13.443803, 25.022554>,  <15.049455, 13.379314, 25.064526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.822123, 13.443803, 25.022554>,  <14.443236, 13.551284, 24.952604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.822123, 13.443803, 25.022554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300207, 0.551961, -0.777956,
		0.112514, 0.789391, 0.603492,
		0.947215, -0.268703, 0.174877,
		15.106287, 13.363192, 25.075018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829855, 14.089211, 25.131468>,  <14.443236, 13.551284, 24.952604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829855, 14.089211, 25.131468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.096289, 13.835164, 24.975027>,  <15.256148, 13.682736, 24.881163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.096289, 13.835164, 24.975027>,  <14.829855, 14.089211, 25.131468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.096289, 13.835164, 24.975027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187414, 0.650041, -0.736426,
		0.721948, 0.417223, 0.552011,
		0.666083, -0.635116, -0.391103,
		15.296114, 13.644629, 24.857697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367996, 14.484153, 25.018457>,  <14.829855, 14.089211, 25.131468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.367996, 14.484153, 25.018457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.426288, 14.156093, 24.797148>,  <15.461263, 13.959256, 24.664362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.426288, 14.156093, 24.797148>,  <15.367996, 14.484153, 25.018457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.426288, 14.156093, 24.797148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219325, 0.572113, -0.790306,
		0.964707, -0.006177, 0.263254,
		0.145729, -0.820151, -0.553276,
		15.470006, 13.910048, 24.631165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.856915, 14.749824, 24.611582>,  <15.367996, 14.484153, 25.018457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.856915, 14.749824, 24.611582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.730392, 14.410010, 24.442707>,  <15.654478, 14.206122, 24.341383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.730392, 14.410010, 24.442707>,  <15.856915, 14.749824, 24.611582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.730392, 14.410010, 24.442707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203782, 0.373800, -0.904846,
		0.926511, -0.372243, 0.054884,
		-0.316307, -0.849535, -0.422187,
		15.635499, 14.155150, 24.316051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.385193, 14.573503, 24.166119>,  <15.856915, 14.749824, 24.611582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.385193, 14.573503, 24.166119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.028597, 14.424470, 24.063021>,  <15.814640, 14.335051, 24.001162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.028597, 14.424470, 24.063021>,  <16.385193, 14.573503, 24.166119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.028597, 14.424470, 24.063021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120557, 0.353305, -0.927708,
		0.436710, -0.858113, -0.270050,
		-0.891488, -0.372582, -0.257743,
		15.761150, 14.312696, 23.985697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.622654, 26.333050, 6.355016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.481050, 26.080019, 6.630558>,  <25.396088, 25.928200, 6.795883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.481050, 26.080019, 6.630558>,  <25.622654, 26.333050, 6.355016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.481050, 26.080019, 6.630558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416645, -0.552752, -0.721714,
		0.837307, -0.542502, -0.067881,
		-0.354011, -0.632579, 0.688854,
		25.374847, 25.890245, 6.837214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292103, 26.549896, 7.078576>,  <25.622654, 26.333050, 6.355016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292103, 26.549896, 7.078576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.329412, 26.898354, 7.271410>,  <25.351797, 27.107428, 7.387111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.329412, 26.898354, 7.271410>,  <25.292103, 26.549896, 7.078576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329412, 26.898354, 7.271410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606934, -0.433579, 0.666063,
		0.789260, 0.230469, -0.569169,
		0.093273, 0.871145, 0.482086,
		25.357395, 27.159697, 7.416036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983114, 26.811180, 6.935610>,  <25.292103, 26.549896, 7.078576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983114, 26.811180, 6.935610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.799454, 26.880512, 7.284123>,  <25.689257, 26.922112, 7.493232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.799454, 26.880512, 7.284123>,  <25.983114, 26.811180, 6.935610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799454, 26.880512, 7.284123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721360, -0.499673, 0.479548,
		0.518478, 0.848695, 0.104391,
		-0.459151, 0.173332, 0.871284,
		25.661709, 26.932512, 7.545509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379232, 27.123615, 7.421679>,  <25.983114, 26.811180, 6.935610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379232, 27.123615, 7.421679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.093349, 26.916468, 7.609723>,  <25.921820, 26.792179, 7.722549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.093349, 26.916468, 7.609723>,  <26.379232, 27.123615, 7.421679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093349, 26.916468, 7.609723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699297, -0.516365, 0.494318,
		-0.013245, 0.682040, 0.731195,
		-0.714708, -0.517870, 0.470109,
		25.878937, 26.761106, 7.750755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500778, 27.205795, 8.204441>,  <26.379232, 27.123615, 7.421679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500778, 27.205795, 8.204441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.301008, 26.873190, 8.107153>,  <26.181147, 26.673626, 8.048780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.301008, 26.873190, 8.107153>,  <26.500778, 27.205795, 8.204441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301008, 26.873190, 8.107153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531542, -0.515784, 0.671885,
		-0.684132, 0.206275, 0.699581,
		-0.499426, -0.831515, -0.243220,
		26.151180, 26.623735, 8.034186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876961, 26.648350, 8.651746>,  <26.500778, 27.205795, 8.204441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876961, 26.648350, 8.651746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.539762, 26.501448, 8.494528>,  <26.337444, 26.413307, 8.400197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.539762, 26.501448, 8.494528>,  <26.876961, 26.648350, 8.651746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539762, 26.501448, 8.494528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037670, -0.769182, 0.637919,
		-0.536601, 0.522956, 0.662251,
		-0.842995, -0.367255, -0.393044,
		26.286863, 26.391272, 8.376615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219826, 26.591021, 9.082434>,  <26.876961, 26.648350, 8.651746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219826, 26.591021, 9.082434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.313818, 26.298628, 8.826169>,  <26.370214, 26.123192, 8.672410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.313818, 26.298628, 8.826169>,  <26.219826, 26.591021, 9.082434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313818, 26.298628, 8.826169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063664, -0.646128, 0.760569,
		-0.969913, -0.219507, -0.105291,
		0.234982, -0.730982, -0.640662,
		26.384314, 26.079332, 8.633970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719549, 26.035385, 9.010269>,  <26.219826, 26.591021, 9.082434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719549, 26.035385, 9.010269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.094839, 25.898487, 8.989860>,  <26.320013, 25.816349, 8.977614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.094839, 25.898487, 8.989860>,  <25.719549, 26.035385, 9.010269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094839, 25.898487, 8.989860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168618, -0.580960, 0.796275,
		-0.302162, -0.738481, -0.602779,
		0.938225, -0.342244, -0.051023,
		26.376307, 25.795815, 8.974552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716393, 25.309618, 9.048294>,  <25.719549, 26.035385, 9.010269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716393, 25.309618, 9.048294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.051075, 25.426418, 9.233620>,  <26.251884, 25.496498, 9.344815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.051075, 25.426418, 9.233620>,  <25.716393, 25.309618, 9.048294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051075, 25.426418, 9.233620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093847, -0.757039, 0.646595,
		0.539551, -0.584491, -0.606016,
		0.836706, 0.291999, 0.463314,
		26.302086, 25.514017, 9.372614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127604, 24.712877, 9.115828>,  <25.716393, 25.309618, 9.048294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127604, 24.712877, 9.115828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.134375, 25.008965, 9.384688>,  <26.138437, 25.186617, 9.546005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.134375, 25.008965, 9.384688>,  <26.127604, 24.712877, 9.115828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134375, 25.008965, 9.384688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440185, -0.598077, 0.669731,
		0.897747, -0.307210, 0.315708,
		0.016930, 0.740220, 0.672152,
		26.139454, 25.231031, 9.586334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114424, 24.274492, 9.721610>,  <26.127604, 24.712877, 9.115828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.114424, 24.274492, 9.721610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.112600, 24.652395, 9.852705>,  <26.111506, 24.879137, 9.931362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.112600, 24.652395, 9.852705>,  <26.114424, 24.274492, 9.721610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112600, 24.652395, 9.852705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452146, -0.294273, 0.842002,
		0.891932, -0.144345, 0.428511,
		-0.004561, 0.944758, 0.327737,
		26.111233, 24.935823, 9.951026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402527, 24.319511, 10.429255>,  <26.114424, 24.274492, 9.721610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402527, 24.319511, 10.429255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.108015, 24.578199, 10.349607>,  <25.931309, 24.733412, 10.301819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.108015, 24.578199, 10.349607>,  <26.402527, 24.319511, 10.429255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108015, 24.578199, 10.349607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548814, -0.398576, 0.734806,
		0.395851, 0.650300, 0.648391,
		-0.736278, 0.646720, -0.199118,
		25.887131, 24.772215, 10.289872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108938, 24.527828, 11.071705>,  <26.402527, 24.319511, 10.429255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108938, 24.527828, 11.071705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.823820, 24.599745, 10.800531>,  <25.652748, 24.642895, 10.637827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.823820, 24.599745, 10.800531>,  <26.108938, 24.527828, 11.071705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823820, 24.599745, 10.800531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652963, -0.522977, 0.547845,
		-0.256045, 0.833169, 0.490175,
		-0.712797, 0.179793, -0.677934,
		25.609982, 24.653683, 10.597151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470312, 24.762791, 11.472009>,  <26.108938, 24.527828, 11.071705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470312, 24.762791, 11.472009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.364616, 24.636169, 11.107597>,  <25.301199, 24.560198, 10.888950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.364616, 24.636169, 11.107597>,  <25.470312, 24.762791, 11.472009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364616, 24.636169, 11.107597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753780, -0.521488, 0.399832,
		-0.601658, 0.792366, -0.100812,
		-0.264241, -0.316552, -0.911028,
		25.285343, 24.541204, 10.834289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.716063, 24.785294, 11.416325>,  <25.470312, 24.762791, 11.472009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.716063, 24.785294, 11.416325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.780899, 24.533665, 11.112220>,  <24.819801, 24.382689, 10.929757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.780899, 24.533665, 11.112220>,  <24.716063, 24.785294, 11.416325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.780899, 24.533665, 11.112220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677415, -0.631159, 0.377819,
		-0.717520, 0.453771, -0.528447,
		0.162091, -0.629071, -0.760261,
		24.829527, 24.344944, 10.884142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.195560, 24.283157, 11.388152>,  <24.716063, 24.785294, 11.416325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.195560, 24.283157, 11.388152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.442598, 24.078093, 11.149572>,  <24.590822, 23.955053, 11.006425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.442598, 24.078093, 11.149572>,  <24.195560, 24.283157, 11.388152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.442598, 24.078093, 11.149572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434220, -0.854565, 0.284907,
		-0.655766, 0.083033, -0.750385,
		0.617596, -0.512664, -0.596449,
		24.627876, 23.924294, 10.970637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.736294, 23.761795, 11.203099>,  <24.195560, 24.283157, 11.388152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.736294, 23.761795, 11.203099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.099031, 23.615337, 11.119607>,  <24.316675, 23.527464, 11.069511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.099031, 23.615337, 11.119607>,  <23.736294, 23.761795, 11.203099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.099031, 23.615337, 11.119607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304116, -0.911355, 0.277392,
		-0.291793, -0.188073, -0.937809,
		0.906847, -0.366143, -0.208731,
		24.371086, 23.505495, 11.056988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.650606, 23.174805, 10.788984>,  <23.736294, 23.761795, 11.203099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.650606, 23.174805, 10.788984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.004593, 23.105976, 10.962061>,  <24.216986, 23.064678, 11.065907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.004593, 23.105976, 10.962061>,  <23.650606, 23.174805, 10.788984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.004593, 23.105976, 10.962061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263110, -0.951446, 0.159761,
		0.384193, -0.255229, -0.887273,
		0.884968, -0.172071, 0.432692,
		24.270082, 23.054356, 11.091868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.895338, 22.638542, 10.404089>,  <23.650606, 23.174805, 10.788984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.895338, 22.638542, 10.404089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.086170, 22.628828, 10.755499>,  <24.200668, 22.622999, 10.966345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.086170, 22.628828, 10.755499>,  <23.895338, 22.638542, 10.404089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.086170, 22.628828, 10.755499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217661, -0.971741, 0.091337,
		0.851481, -0.234795, -0.468883,
		0.477078, -0.024286, 0.878525,
		24.229294, 22.621542, 11.019056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.310549, 22.095934, 10.278873>,  <23.895338, 22.638542, 10.404089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.310549, 22.095934, 10.278873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.292837, 22.135632, 10.676504>,  <24.282209, 22.159451, 10.915083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.292837, 22.135632, 10.676504>,  <24.310549, 22.095934, 10.278873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.292837, 22.135632, 10.676504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257552, -0.962552, 0.084625,
		0.965249, -0.252280, 0.068181,
		-0.044279, 0.099244, 0.994077,
		24.279554, 22.165405, 10.974728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.679550, 21.529705, 10.580831>,  <24.310549, 22.095934, 10.278873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.679550, 21.529705, 10.580831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.433949, 21.673851, 10.861725>,  <24.286587, 21.760340, 11.030261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.433949, 21.673851, 10.861725>,  <24.679550, 21.529705, 10.580831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.433949, 21.673851, 10.861725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202084, -0.931810, 0.301484,
		0.762995, 0.043202, 0.644959,
		-0.614004, 0.360367, 0.702236,
		24.249748, 21.781961, 11.072395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.770061, 21.032539, 11.151499>,  <24.679550, 21.529705, 10.580831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.770061, 21.032539, 11.151499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.433086, 21.219034, 11.259512>,  <24.230902, 21.330931, 11.324320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.433086, 21.219034, 11.259512>,  <24.770061, 21.032539, 11.151499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.433086, 21.219034, 11.259512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381655, -0.870152, 0.311728,
		0.380310, 0.159552, 0.910993,
		-0.842439, 0.466238, 0.270034,
		24.180355, 21.358906, 11.340522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.619543, 20.790733, 11.857305>,  <24.770061, 21.032539, 11.151499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.619543, 20.790733, 11.857305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.279766, 20.935171, 11.703390>,  <24.075901, 21.021833, 11.611041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.279766, 20.935171, 11.703390>,  <24.619543, 20.790733, 11.857305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279766, 20.935171, 11.703390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485179, -0.821176, 0.300452,
		-0.207485, 0.441907, 0.872736,
		-0.849441, 0.361094, -0.384786,
		24.024933, 21.043499, 11.587955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.130545, 20.635508, 12.360907>,  <24.619543, 20.790733, 11.857305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.130545, 20.635508, 12.360907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.898121, 20.702120, 12.042251>,  <23.758667, 20.742086, 11.851057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.898121, 20.702120, 12.042251>,  <24.130545, 20.635508, 12.360907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.898121, 20.702120, 12.042251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464004, -0.871959, 0.156165,
		-0.668632, 0.460386, 0.583932,
		-0.581061, 0.166530, -0.796640,
		23.723803, 20.752079, 11.803259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.444874, 20.636446, 12.555617>,  <24.130545, 20.635508, 12.360907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.444874, 20.636446, 12.555617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.441837, 20.539705, 12.167504>,  <23.440016, 20.481661, 11.934636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.441837, 20.539705, 12.167504>,  <23.444874, 20.636446, 12.555617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.441837, 20.539705, 12.167504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548420, -0.810361, 0.206281,
		-0.836169, 0.533688, -0.126487,
		-0.007590, -0.241853, -0.970283,
		23.439560, 20.467150, 11.876419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.699789, 20.498480, 12.370311>,  <23.444874, 20.636446, 12.555617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.699789, 20.498480, 12.370311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.950449, 20.315981, 12.117599>,  <23.100845, 20.206482, 11.965971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.950449, 20.315981, 12.117599>,  <22.699789, 20.498480, 12.370311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.950449, 20.315981, 12.117599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499847, -0.857290, 0.123316,
		-0.597881, 0.238517, -0.765277,
		0.626651, -0.456250, -0.631779,
		23.138445, 20.179106, 11.928064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.286350, 20.221594, 11.915407>,  <22.699789, 20.498480, 12.370311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.286350, 20.221594, 11.915407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.617388, 20.002750, 11.865189>,  <22.816010, 19.871445, 11.835057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.617388, 20.002750, 11.865189>,  <22.286350, 20.221594, 11.915407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.617388, 20.002750, 11.865189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507241, -0.824695, 0.250169,
		-0.240407, -0.143356, -0.960028,
		0.827593, -0.547108, -0.125547,
		22.865665, 19.838617, 11.827524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.913691, 19.546392, 11.667766>,  <22.286350, 20.221594, 11.915407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.913691, 19.546392, 11.667766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.300890, 19.482344, 11.745064>,  <22.533209, 19.443914, 11.791443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.300890, 19.482344, 11.745064>,  <21.913691, 19.546392, 11.667766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.300890, 19.482344, 11.745064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227941, -0.883130, 0.410031,
		0.105004, -0.440956, -0.891365,
		0.967996, -0.160123, 0.193244,
		22.591290, 19.434307, 11.803037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.058470, 18.877453, 11.442051>,  <21.913691, 19.546392, 11.667766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.058470, 18.877453, 11.442051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.322077, 18.978497, 11.725427>,  <22.480240, 19.039122, 11.895452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.322077, 18.978497, 11.725427>,  <22.058470, 18.877453, 11.442051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.322077, 18.978497, 11.725427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194751, -0.852479, 0.485131,
		0.726477, -0.457679, -0.512602,
		0.659017, 0.252607, 0.708440,
		22.519781, 19.054279, 11.937959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.374720, 18.303644, 11.535569>,  <22.058470, 18.877453, 11.442051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.374720, 18.303644, 11.535569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492027, 18.490187, 11.869396>,  <22.562412, 18.602112, 12.069693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492027, 18.490187, 11.869396>,  <22.374720, 18.303644, 11.535569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.492027, 18.490187, 11.869396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267516, -0.798050, 0.539955,
		0.917839, -0.381613, -0.109286,
		0.293269, 0.466356, 0.834569,
		22.580008, 18.630093, 12.119767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.705589, 17.819881, 11.875030>,  <22.374720, 18.303644, 11.535569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.705589, 17.819881, 11.875030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.612087, 18.080242, 12.163940>,  <22.555986, 18.236460, 12.337287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.612087, 18.080242, 12.163940>,  <22.705589, 17.819881, 11.875030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.612087, 18.080242, 12.163940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361730, -0.747752, 0.556792,
		0.902502, -0.131117, 0.410241,
		-0.233753, 0.650903, 0.722277,
		22.541962, 18.275513, 12.380624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.084349, 17.713572, 12.453615>,  <22.705589, 17.819881, 11.875030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.084349, 17.713572, 12.453615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.721312, 17.842125, 12.561683>,  <22.503490, 17.919256, 12.626523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.721312, 17.842125, 12.561683>,  <23.084349, 17.713572, 12.453615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.721312, 17.842125, 12.561683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094757, -0.783672, 0.613905,
		0.409022, 0.531575, 0.741707,
		-0.907591, 0.321382, 0.270168,
		22.449034, 17.938540, 12.642734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.019386, 17.598259, 13.215280>,  <23.084349, 17.713572, 12.453615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.019386, 17.598259, 13.215280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.650652, 17.637293, 13.065242>,  <22.429411, 17.660713, 12.975220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.650652, 17.637293, 13.065242>,  <23.019386, 17.598259, 13.215280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.650652, 17.637293, 13.065242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322729, -0.729181, 0.603441,
		-0.214624, 0.677328, 0.703679,
		-0.921836, 0.097585, -0.375093,
		22.374102, 17.666569, 12.952714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.528301, 17.167055, 13.343244>,  <23.019386, 17.598259, 13.215280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.528301, 17.167055, 13.343244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.856413, 16.938271, 13.344351>,  <24.053280, 16.801001, 13.345015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.856413, 16.938271, 13.344351>,  <23.528301, 17.167055, 13.343244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.856413, 16.938271, 13.344351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555029, 0.794808, -0.245407,
		0.138163, 0.202837, 0.969416,
		0.820277, -0.571960, 0.002767,
		24.102495, 16.766682, 13.345181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.083023, 17.430231, 13.628715>,  <23.528301, 17.167055, 13.343244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.083023, 17.430231, 13.628715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.284437, 17.155777, 13.418696>,  <24.405285, 16.991104, 13.292686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.284437, 17.155777, 13.418696>,  <24.083023, 17.430231, 13.628715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.284437, 17.155777, 13.418696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695886, 0.682256, -0.224208,
		0.512052, -0.252474, 0.821011,
		0.503533, -0.686136, -0.525044,
		24.435497, 16.949936, 13.261183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.925003, 17.633621, 13.737055>,  <24.083023, 17.430231, 13.628715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.925003, 17.633621, 13.737055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.859320, 17.408543, 13.412979>,  <24.819910, 17.273495, 13.218534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.859320, 17.408543, 13.412979>,  <24.925003, 17.633621, 13.737055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859320, 17.408543, 13.412979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640525, 0.563802, -0.521397,
		0.750175, -0.604564, 0.267842,
		-0.164208, -0.562699, -0.810189,
		24.810057, 17.239733, 13.169923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547401, 17.585026, 13.362295>,  <24.925003, 17.633621, 13.737055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547401, 17.585026, 13.362295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.260908, 17.522062, 13.090345>,  <25.089012, 17.484283, 12.927176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.260908, 17.522062, 13.090345>,  <25.547401, 17.585026, 13.362295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260908, 17.522062, 13.090345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522970, 0.523997, -0.672257,
		0.462071, -0.837048, -0.292985,
		-0.716235, -0.157409, -0.679875,
		25.046038, 17.474840, 12.886383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930862, 17.585608, 12.641409>,  <25.547401, 17.585026, 13.362295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.930862, 17.585608, 12.641409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.545525, 17.646389, 12.552979>,  <25.314322, 17.682858, 12.499922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.545525, 17.646389, 12.552979>,  <25.930862, 17.585608, 12.641409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.545525, 17.646389, 12.552979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267585, 0.485880, -0.832057,
		-0.019021, -0.860715, -0.508732,
		-0.963346, 0.151956, -0.221072,
		25.256521, 17.691977, 12.486658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924004, 17.643005, 11.877291>,  <25.930862, 17.585608, 12.641409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924004, 17.643005, 11.877291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.559784, 17.783253, 11.964897>,  <25.341251, 17.867401, 12.017461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.559784, 17.783253, 11.964897>,  <25.924004, 17.643005, 11.877291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559784, 17.783253, 11.964897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099285, 0.699757, -0.707448,
		-0.401301, -0.622421, -0.671974,
		-0.910549, 0.350616, 0.219016,
		25.286619, 17.888437, 12.030602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645021, 17.700031, 11.282248>,  <25.924004, 17.643005, 11.877291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645021, 17.700031, 11.282248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.423344, 17.945507, 11.507195>,  <25.290337, 18.092793, 11.642162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.423344, 17.945507, 11.507195>,  <25.645021, 17.700031, 11.282248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423344, 17.945507, 11.507195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145078, 0.736476, -0.660723,
		-0.819647, -0.284582, -0.497183,
		-0.554194, 0.613690, 0.562364,
		25.257086, 18.129614, 11.675904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198917, 17.907976, 10.830757>,  <25.645021, 17.700031, 11.282248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198917, 17.907976, 10.830757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.198704, 18.160419, 11.141035>,  <25.198576, 18.311886, 11.327202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.198704, 18.160419, 11.141035>,  <25.198917, 17.907976, 10.830757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198704, 18.160419, 11.141035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181155, 0.762921, -0.620592,
		-0.983454, 0.140190, -0.114736,
		-0.000534, 0.631109, 0.775694,
		25.198544, 18.349752, 11.373743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875082, 18.489029, 10.576413>,  <25.198917, 17.907976, 10.830757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.875082, 18.489029, 10.576413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.085773, 18.616016, 10.891824>,  <25.212189, 18.692207, 11.081070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.085773, 18.616016, 10.891824>,  <24.875082, 18.489029, 10.576413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085773, 18.616016, 10.891824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275444, 0.813844, -0.511653,
		-0.804170, 0.486696, 0.341230,
		0.526727, 0.317466, 0.788526,
		25.243792, 18.711256, 11.128382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.758266, 19.194180, 10.563707>,  <24.875082, 18.489029, 10.576413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.758266, 19.194180, 10.563707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.076801, 19.145414, 10.800684>,  <25.267921, 19.116156, 10.942870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.076801, 19.145414, 10.800684>,  <24.758266, 19.194180, 10.563707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076801, 19.145414, 10.800684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351276, 0.890583, -0.288907,
		-0.492396, 0.438178, 0.752028,
		0.796336, -0.121913, 0.592441,
		25.315702, 19.108841, 10.978416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.783293, 19.783440, 10.904493>,  <24.758266, 19.194180, 10.563707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.783293, 19.783440, 10.904493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.152409, 19.631939, 10.932796>,  <25.373878, 19.541039, 10.949777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.152409, 19.631939, 10.932796>,  <24.783293, 19.783440, 10.904493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.152409, 19.631939, 10.932796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382464, 0.878157, -0.287336,
		0.046695, 0.292212, 0.955213,
		0.922790, -0.378751, 0.070755,
		25.429245, 19.518314, 10.954021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187010, 20.214594, 11.392297>,  <24.783293, 19.783440, 10.904493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187010, 20.214594, 11.392297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.457317, 20.024923, 11.166556>,  <25.619501, 19.911121, 11.031112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.457317, 20.024923, 11.166556>,  <25.187010, 20.214594, 11.392297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457317, 20.024923, 11.166556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257256, 0.869199, -0.422270,
		0.690764, 0.140174, 0.709363,
		0.675769, -0.474177, -0.564351,
		25.660048, 19.882669, 10.997252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850971, 20.542521, 11.535847>,  <25.187010, 20.214594, 11.392297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850971, 20.542521, 11.535847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.910593, 20.363251, 11.183274>,  <25.946365, 20.255690, 10.971730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.910593, 20.363251, 11.183274>,  <25.850971, 20.542521, 11.535847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910593, 20.363251, 11.183274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483140, 0.810754, -0.330537,
		0.862762, -0.376587, 0.337377,
		0.149053, -0.448175, -0.881432,
		25.955309, 20.228798, 10.918844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553089, 20.526365, 11.463020>,  <25.850971, 20.542521, 11.535847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553089, 20.526365, 11.463020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.441439, 20.485546, 11.081094>,  <26.374449, 20.461054, 10.851938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.441439, 20.485546, 11.081094>,  <26.553089, 20.526365, 11.463020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441439, 20.485546, 11.081094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628233, 0.732601, -0.261954,
		0.726232, -0.672965, -0.140377,
		-0.279126, -0.102050, -0.954816,
		26.357700, 20.454931, 10.794649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.132221, 20.486195, 11.065584>,  <26.553089, 20.526365, 11.463020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.132221, 20.486195, 11.065584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.838669, 20.594894, 10.816563>,  <26.662539, 20.660114, 10.667150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.838669, 20.594894, 10.816563>,  <27.132221, 20.486195, 11.065584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838669, 20.594894, 10.816563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546791, 0.780114, -0.304041,
		0.403040, -0.563537, -0.721100,
		-0.733879, 0.271751, -0.622554,
		26.618505, 20.676420, 10.629796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567654, 20.804762, 10.508731>,  <27.132221, 20.486195, 11.065584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567654, 20.804762, 10.508731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.203075, 20.965765, 10.474651>,  <26.984329, 21.062366, 10.454204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.203075, 20.965765, 10.474651>,  <27.567654, 20.804762, 10.508731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203075, 20.965765, 10.474651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405692, 0.844819, -0.348847,
		-0.068435, -0.352519, -0.933299,
		-0.911444, 0.402506, -0.085199,
		26.929642, 21.086517, 10.449092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659254, 21.114876, 9.868971>,  <27.567654, 20.804762, 10.508731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659254, 21.114876, 9.868971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.336672, 21.287457, 10.030700>,  <27.143122, 21.391005, 10.127737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.336672, 21.287457, 10.030700>,  <27.659254, 21.114876, 9.868971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336672, 21.287457, 10.030700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281870, 0.881613, -0.378559,
		-0.519786, -0.191325, -0.832596,
		-0.806456, 0.431454, 0.404322,
		27.094734, 21.416893, 10.151997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285322, 21.404539, 9.287370>,  <27.659254, 21.114876, 9.868971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285322, 21.404539, 9.287370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.164957, 21.594812, 9.617988>,  <27.092739, 21.708977, 9.816359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.164957, 21.594812, 9.617988>,  <27.285322, 21.404539, 9.287370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164957, 21.594812, 9.617988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427594, 0.842009, -0.328913,
		-0.852417, 0.254453, -0.456770,
		-0.300912, 0.475683, 0.826546,
		27.074684, 21.737516, 9.865952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931238, 21.941439, 9.060098>,  <27.285322, 21.404539, 9.287370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931238, 21.941439, 9.060098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.019323, 22.061399, 9.431379>,  <27.072174, 22.133375, 9.654148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.019323, 22.061399, 9.431379>,  <26.931238, 21.941439, 9.060098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019323, 22.061399, 9.431379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392939, 0.843671, -0.365813,
		-0.892807, 0.445285, 0.067945,
		0.220214, 0.299902, 0.928205,
		27.085388, 22.151371, 9.709841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<20.133442, 16.957033, 21.359972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.785393, 16.843864, 21.198557>,  <19.576563, 16.775963, 21.101707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.785393, 16.843864, 21.198557>,  <20.133442, 16.957033, 21.359972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.785393, 16.843864, 21.198557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385463, 0.119519, -0.914950,
		0.307089, -0.951667, 0.005059,
		-0.870123, -0.282921, -0.403536,
		19.524355, 16.758987, 21.077496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320396, 16.672300, 20.603689>,  <20.133442, 16.957033, 21.359972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.320396, 16.672300, 20.603689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.924896, 16.732010, 20.599865>,  <19.687595, 16.767836, 20.597570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.924896, 16.732010, 20.599865>,  <20.320396, 16.672300, 20.603689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.924896, 16.732010, 20.599865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050908, 0.275730, -0.959886,
		-0.140649, -0.949574, -0.280228,
		-0.988750, 0.149273, -0.009560,
		19.628271, 16.776793, 20.596996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015816, 16.312317, 20.039883>,  <20.320396, 16.672300, 20.603689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015816, 16.312317, 20.039883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.750713, 16.597851, 20.130386>,  <19.591652, 16.769171, 20.184689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.750713, 16.597851, 20.130386>,  <20.015816, 16.312317, 20.039883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.750713, 16.597851, 20.130386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015180, 0.314894, -0.949006,
		-0.748683, -0.625523, -0.219533,
		-0.662755, 0.713837, 0.226260,
		19.551888, 16.812002, 20.198265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451488, 16.157726, 19.624361>,  <20.015816, 16.312317, 20.039883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.451488, 16.157726, 19.624361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.427742, 16.544470, 19.723686>,  <19.413494, 16.776516, 19.783281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.427742, 16.544470, 19.723686>,  <19.451488, 16.157726, 19.624361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.427742, 16.544470, 19.723686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070135, 0.244097, -0.967211,
		-0.995770, -0.074835, 0.053320,
		-0.059366, 0.966859, 0.248313,
		19.409931, 16.834528, 19.798180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842505, 16.433659, 19.275005>,  <19.451488, 16.157726, 19.624361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842505, 16.433659, 19.275005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059103, 16.762466, 19.345503>,  <19.189062, 16.959751, 19.387802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059103, 16.762466, 19.345503>,  <18.842505, 16.433659, 19.275005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.059103, 16.762466, 19.345503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248262, 0.356642, -0.900651,
		-0.803211, 0.443945, 0.397197,
		0.541496, 0.822022, 0.176244,
		19.221552, 17.009073, 19.398376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.430105, 16.924673, 18.998486>,  <18.842505, 16.433659, 19.275005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.430105, 16.924673, 18.998486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.790230, 17.094593, 19.036398>,  <19.006306, 17.196545, 19.059145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.790230, 17.094593, 19.036398>,  <18.430105, 16.924673, 18.998486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.790230, 17.094593, 19.036398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086705, 0.388451, -0.917381,
		-0.426520, 0.817712, 0.386560,
		0.900313, 0.424798, 0.094783,
		19.060324, 17.222033, 19.064833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.467386, 17.566162, 18.649540>,  <18.430105, 16.924673, 18.998486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.467386, 17.566162, 18.649540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.861584, 17.516161, 18.695456>,  <19.098103, 17.486160, 18.723005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.861584, 17.516161, 18.695456>,  <18.467386, 17.566162, 18.649540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.861584, 17.516161, 18.695456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152036, 0.349729, -0.924432,
		0.075411, 0.928474, 0.363661,
		0.985494, -0.125001, 0.114788,
		19.157232, 17.478661, 18.729893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.805401, 18.151257, 18.335299>,  <18.467386, 17.566162, 18.649540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.805401, 18.151257, 18.335299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.086660, 17.866884, 18.340353>,  <19.255417, 17.696260, 18.343386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.086660, 17.866884, 18.340353>,  <18.805401, 18.151257, 18.335299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.086660, 17.866884, 18.340353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281388, 0.261896, -0.923164,
		0.652995, 0.652678, 0.384199,
		0.703149, -0.710930, 0.012639,
		19.297606, 17.653605, 18.344145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.478518, 18.517178, 18.137918>,  <18.805401, 18.151257, 18.335299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.478518, 18.517178, 18.137918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.488276, 18.123228, 18.069300>,  <19.494131, 17.886858, 18.028128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.488276, 18.123228, 18.069300>,  <19.478518, 18.517178, 18.137918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.488276, 18.123228, 18.069300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436993, 0.164844, -0.884231,
		0.899134, -0.053392, 0.434404,
		0.024397, -0.984874, -0.171549,
		19.495594, 17.827766, 18.017836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.067722, 18.509565, 17.719158>,  <19.478518, 18.517178, 18.137918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.067722, 18.509565, 17.719158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.883650, 18.158676, 17.664440>,  <19.773207, 17.948143, 17.631609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.883650, 18.158676, 17.664440>,  <20.067722, 18.509565, 17.719158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.883650, 18.158676, 17.664440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220831, 0.036142, -0.974642,
		0.859922, -0.478721, 0.177086,
		-0.460182, -0.877223, -0.136796,
		19.745596, 17.895510, 17.623402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.549934, 18.069729, 17.309900>,  <20.067722, 18.509565, 17.719158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.549934, 18.069729, 17.309900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.169596, 17.953789, 17.266306>,  <19.941393, 17.884224, 17.240150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.169596, 17.953789, 17.266306>,  <20.549934, 18.069729, 17.309900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.169596, 17.953789, 17.266306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134117, -0.068247, -0.988613,
		0.279112, -0.954636, 0.103767,
		-0.950847, -0.289850, -0.108984,
		19.884342, 17.866835, 17.233610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.683537, 17.449501, 17.018351>,  <20.549934, 18.069729, 17.309900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.683537, 17.449501, 17.018351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.304020, 17.545561, 16.936255>,  <20.076309, 17.603197, 16.886997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.304020, 17.545561, 16.936255>,  <20.683537, 17.449501, 17.018351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.304020, 17.545561, 16.936255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158691, -0.199441, -0.966975,
		-0.273156, -0.950026, 0.151118,
		-0.948790, 0.240154, -0.205240,
		20.019382, 17.617607, 16.874683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.259676, 16.920551, 16.711977>,  <20.683537, 17.449501, 17.018351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.259676, 16.920551, 16.711977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.139374, 17.278336, 16.579624>,  <20.067192, 17.493006, 16.500212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.139374, 17.278336, 16.579624>,  <20.259676, 16.920551, 16.711977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.139374, 17.278336, 16.579624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364763, -0.212682, -0.906484,
		-0.881189, -0.393324, -0.262302,
		-0.300756, 0.894462, -0.330883,
		20.049147, 17.546675, 16.480360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.368704, 16.786095, 16.044113>,  <20.259676, 16.920551, 16.711977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.368704, 16.786095, 16.044113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.699293, 16.893415, 15.846140>,  <20.897646, 16.957808, 15.727356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.699293, 16.893415, 15.846140>,  <20.368704, 16.786095, 16.044113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.699293, 16.893415, 15.846140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546856, 0.173712, -0.819007,
		-0.133763, 0.947544, 0.290290,
		0.826472, 0.268300, -0.494934,
		20.947235, 16.973906, 15.697659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.749950, 16.902763, 15.630030>,  <20.368704, 16.786095, 16.044113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.749950, 16.902763, 15.630030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.075556, 16.734348, 15.469975>,  <20.270920, 16.633299, 15.373942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.075556, 16.734348, 15.469975>,  <19.749950, 16.902763, 15.630030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.075556, 16.734348, 15.469975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221475, -0.861827, 0.456293,
		-0.536965, -0.282808, -0.794788,
		0.814014, -0.421039, -0.400136,
		20.319759, 16.608036, 15.349935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.508362, 16.236029, 15.309608>,  <19.749950, 16.902763, 15.630030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.508362, 16.236029, 15.309608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.900061, 16.179071, 15.367290>,  <20.135080, 16.144897, 15.401900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.900061, 16.179071, 15.367290>,  <19.508362, 16.236029, 15.309608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.900061, 16.179071, 15.367290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188557, -0.900968, 0.390773,
		0.074283, -0.409855, -0.909121,
		0.979249, -0.142393, 0.144208,
		20.193836, 16.136354, 15.410553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.705524, 15.586786, 14.905252>,  <19.508362, 16.236029, 15.309608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.705524, 15.586786, 14.905252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.993130, 15.650176, 15.175925>,  <20.165693, 15.688210, 15.338329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.993130, 15.650176, 15.175925>,  <19.705524, 15.586786, 14.905252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.993130, 15.650176, 15.175925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140826, -0.920236, 0.365149,
		0.680577, -0.357842, -0.639347,
		0.719016, 0.158475, 0.676685,
		20.208834, 15.697719, 15.378931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.038240, 14.985800, 14.869468>,  <19.705524, 15.586786, 14.905252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.038240, 14.985800, 14.869468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.112179, 15.137427, 15.232156>,  <20.156542, 15.228404, 15.449768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.112179, 15.137427, 15.232156>,  <20.038240, 14.985800, 14.869468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.112179, 15.137427, 15.232156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183155, -0.893167, 0.410740,
		0.965550, -0.241993, -0.095668,
		0.184844, 0.379068, 0.906719,
		20.167631, 15.251148, 15.504171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.418032, 14.489705, 15.142479>,  <20.038240, 14.985800, 14.869468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.418032, 14.489705, 15.142479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.299459, 14.705585, 15.457655>,  <20.228315, 14.835114, 15.646761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.299459, 14.705585, 15.457655>,  <20.418032, 14.489705, 15.142479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.299459, 14.705585, 15.457655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189822, -0.841856, 0.505219,
		0.936000, 0.000195, 0.352000,
		-0.296432, 0.539702, 0.787940,
		20.210529, 14.867496, 15.694037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.636148, 14.026495, 15.696495>,  <20.418032, 14.489705, 15.142479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.636148, 14.026495, 15.696495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.382875, 14.288784, 15.860987>,  <20.230911, 14.446157, 15.959682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.382875, 14.288784, 15.860987>,  <20.636148, 14.026495, 15.696495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.382875, 14.288784, 15.860987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265993, -0.683288, 0.679975,
		0.726861, 0.321165, 0.607063,
		-0.633183, 0.655722, 0.411228,
		20.192921, 14.485500, 15.984355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834574, 14.135568, 16.477694>,  <20.636148, 14.026495, 15.696495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834574, 14.135568, 16.477694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450319, 14.245825, 16.463837>,  <20.219767, 14.311979, 16.455523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450319, 14.245825, 16.463837>,  <20.834574, 14.135568, 16.477694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.450319, 14.245825, 16.463837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164969, -0.465650, 0.869457,
		0.223529, 0.840946, 0.492793,
		-0.960635, 0.275644, -0.034644,
		20.162128, 14.328518, 16.453444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.664318, 14.412950, 17.125513>,  <20.834574, 14.135568, 16.477694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.664318, 14.412950, 17.125513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.304598, 14.312635, 16.982199>,  <20.088766, 14.252447, 16.896210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.304598, 14.312635, 16.982199>,  <20.664318, 14.412950, 17.125513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.304598, 14.312635, 16.982199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294931, -0.257145, 0.920267,
		-0.322921, 0.933265, 0.157286,
		-0.899299, -0.250785, -0.358286,
		20.034809, 14.237400, 16.874712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.185438, 14.604396, 17.622557>,  <20.664318, 14.412950, 17.125513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.185438, 14.604396, 17.622557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.992605, 14.331139, 17.403133>,  <19.876905, 14.167185, 17.271481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.992605, 14.331139, 17.403133>,  <20.185438, 14.604396, 17.622557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.992605, 14.331139, 17.403133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310401, -0.452330, 0.836091,
		-0.819298, 0.573336, 0.006012,
		-0.482081, -0.683142, -0.548557,
		19.847980, 14.126196, 17.238565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511209, 14.673598, 17.928270>,  <20.185438, 14.604396, 17.622557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.511209, 14.673598, 17.928270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.535782, 14.324353, 17.734818>,  <19.550526, 14.114806, 17.618746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.535782, 14.324353, 17.734818>,  <19.511209, 14.673598, 17.928270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.535782, 14.324353, 17.734818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441936, -0.458255, 0.771165,
		-0.894941, 0.166363, -0.414010,
		0.061429, -0.873113, -0.483633,
		19.554211, 14.062420, 17.589727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.838718, 14.406301, 18.010448>,  <19.511209, 14.673598, 17.928270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.838718, 14.406301, 18.010448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.045664, 14.077820, 17.914146>,  <19.169830, 13.880732, 17.856365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.045664, 14.077820, 17.914146>,  <18.838718, 14.406301, 18.010448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.045664, 14.077820, 17.914146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469203, -0.507482, 0.722710,
		-0.715671, -0.260939, -0.647862,
		0.517362, -0.821202, -0.240757,
		19.200872, 13.831459, 17.841919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339031, 13.845928, 17.968309>,  <18.838718, 14.406301, 18.010448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.339031, 13.845928, 17.968309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709032, 13.708273, 18.032732>,  <18.931032, 13.625680, 18.071384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709032, 13.708273, 18.032732>,  <18.339031, 13.845928, 17.968309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.709032, 13.708273, 18.032732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327864, -0.508705, 0.796068,
		-0.192028, -0.789169, -0.583384,
		0.925003, -0.344138, 0.161055,
		18.986532, 13.605031, 18.081049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.286339, 13.087616, 18.024960>,  <18.339031, 13.845928, 17.968309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.286339, 13.087616, 18.024960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.614090, 13.203311, 18.222935>,  <18.810740, 13.272728, 18.341719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.614090, 13.203311, 18.222935>,  <18.286339, 13.087616, 18.024960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.614090, 13.203311, 18.222935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309399, -0.503698, 0.806574,
		0.482591, -0.814021, -0.323228,
		0.819377, 0.289239, 0.494937,
		18.859903, 13.290082, 18.371416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.413452, 12.512224, 18.328857>,  <18.286339, 13.087616, 18.024960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.413452, 12.512224, 18.328857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.613798, 12.808155, 18.508541>,  <18.734007, 12.985714, 18.616352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.613798, 12.808155, 18.508541>,  <18.413452, 12.512224, 18.328857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.613798, 12.808155, 18.508541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142776, -0.441269, 0.885944,
		0.853667, -0.507876, -0.115387,
		0.500866, 0.739827, 0.449209,
		18.764057, 13.030103, 18.643305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.391048, 11.819822, 17.955870>,  <18.413452, 12.512224, 18.328857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.391048, 11.819822, 17.955870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.132824, 11.515665, 17.927433>,  <17.977890, 11.333171, 17.910370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.132824, 11.515665, 17.927433>,  <18.391048, 11.819822, 17.955870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.132824, 11.515665, 17.927433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374845, 0.396585, -0.837981,
		0.665389, -0.514319, -0.541049,
		-0.645561, -0.760393, -0.071093,
		17.939156, 11.287547, 17.906105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.465658, 11.554882, 17.168436>,  <18.391048, 11.819822, 17.955870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.465658, 11.554882, 17.168436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.107948, 11.458067, 17.319006>,  <17.893322, 11.399978, 17.409348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.107948, 11.458067, 17.319006>,  <18.465658, 11.554882, 17.168436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.107948, 11.458067, 17.319006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429622, 0.228797, -0.873543,
		0.125303, -0.942906, -0.308590,
		-0.894273, -0.242035, 0.376424,
		17.839666, 11.385456, 17.431932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.087353, 11.193480, 16.633993>,  <18.465658, 11.554882, 17.168436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.087353, 11.193480, 16.633993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803349, 11.305753, 16.892326>,  <17.632946, 11.373117, 17.047327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803349, 11.305753, 16.892326>,  <18.087353, 11.193480, 16.633993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.803349, 11.305753, 16.892326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516893, 0.415111, -0.748668,
		-0.478233, -0.865389, -0.149650,
		-0.710011, 0.280685, 0.645833,
		17.590345, 11.389958, 17.086077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.467684, 10.967565, 16.288622>,  <18.087353, 11.193480, 16.633993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.467684, 10.967565, 16.288622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.388174, 11.273086, 16.534254>,  <17.340469, 11.456398, 16.681633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.388174, 11.273086, 16.534254>,  <17.467684, 10.967565, 16.288622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.388174, 11.273086, 16.534254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671018, 0.350616, -0.653302,
		-0.714300, -0.541918, 0.442832,
		-0.198772, 0.763802, 0.614081,
		17.328543, 11.502226, 16.718479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.830276, 11.141243, 16.116327>,  <17.467684, 10.967565, 16.288622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.830276, 11.141243, 16.116327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932833, 11.456049, 16.340780>,  <16.994366, 11.644933, 16.475452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932833, 11.456049, 16.340780>,  <16.830276, 11.141243, 16.116327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932833, 11.456049, 16.340780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563493, 0.593384, -0.574779,
		-0.785328, -0.168827, 0.595615,
		0.256391, 0.787015, 0.561134,
		17.009750, 11.692154, 16.509121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196259, 11.452957, 16.167850>,  <16.830276, 11.141243, 16.116327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196259, 11.452957, 16.167850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.471380, 11.736640, 16.229752>,  <16.636454, 11.906850, 16.266891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.471380, 11.736640, 16.229752>,  <16.196259, 11.452957, 16.167850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.471380, 11.736640, 16.229752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510590, 0.624211, -0.591319,
		-0.515966, 0.327697, 0.791450,
		0.687806, 0.709207, 0.154753,
		16.677721, 11.949402, 16.276178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867447, 12.109258, 16.393080>,  <16.196259, 11.452957, 16.167850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.867447, 12.109258, 16.393080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229212, 12.220391, 16.263559>,  <16.446270, 12.287071, 16.185848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229212, 12.220391, 16.263559>,  <15.867447, 12.109258, 16.393080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229212, 12.220391, 16.263559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421634, 0.698139, -0.578642,
		0.065290, 0.659856, 0.748550,
		0.904412, 0.277835, -0.323799,
		16.500536, 12.303741, 16.166420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.819478, 12.702770, 16.370317>,  <15.867447, 12.109258, 16.393080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.819478, 12.702770, 16.370317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.151121, 12.689378, 16.147083>,  <16.350107, 12.681342, 16.013144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.151121, 12.689378, 16.147083>,  <15.819478, 12.702770, 16.370317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.151121, 12.689378, 16.147083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368522, 0.717935, -0.590560,
		0.420441, 0.695305, 0.582907,
		0.829109, -0.033482, -0.558084,
		16.399855, 12.679334, 15.979658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091831, 13.418697, 16.305229>,  <15.819478, 12.702770, 16.370317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091831, 13.418697, 16.305229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256317, 13.223599, 15.997201>,  <16.355009, 13.106541, 15.812385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256317, 13.223599, 15.997201>,  <16.091831, 13.418697, 16.305229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.256317, 13.223599, 15.997201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143993, 0.799437, -0.583238,
		0.900093, 0.350721, 0.258510,
		0.411216, -0.487745, -0.770069,
		16.379683, 13.077276, 15.766180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726492, 13.716757, 16.069288>,  <16.091831, 13.418697, 16.305229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726492, 13.716757, 16.069288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564846, 13.518263, 15.761928>,  <16.467859, 13.399167, 15.577511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564846, 13.518263, 15.761928>,  <16.726492, 13.716757, 16.069288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.564846, 13.518263, 15.761928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010389, 0.837508, -0.546325,
		0.914650, -0.228759, -0.333292,
		-0.404112, -0.496234, -0.768404,
		16.443611, 13.369392, 15.531406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.879795, 14.090074, 15.484804>,  <16.726492, 13.716757, 16.069288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.879795, 14.090074, 15.484804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.602457, 13.858805, 15.312761>,  <16.436054, 13.720043, 15.209536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.602457, 13.858805, 15.312761>,  <16.879795, 14.090074, 15.484804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.602457, 13.858805, 15.312761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088839, 0.660897, -0.745200,
		0.715111, -0.478468, -0.509592,
		-0.693342, -0.578172, -0.430108,
		16.394453, 13.685353, 15.183729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.143854, 13.933537, 14.803446>,  <16.879795, 14.090074, 15.484804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.143854, 13.933537, 14.803446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.746212, 13.891829, 14.791553>,  <16.507627, 13.866804, 14.784418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.746212, 13.891829, 14.791553>,  <17.143854, 13.933537, 14.803446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746212, 13.891829, 14.791553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045230, 0.648002, -0.760294,
		0.098542, -0.754467, -0.648898,
		-0.994105, -0.104271, -0.029731,
		16.447981, 13.860548, 14.782635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<15.286382, 8.973264, 22.677048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.618073, 8.752986, 22.638851>,  <15.817087, 8.620819, 22.615932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.618073, 8.752986, 22.638851>,  <15.286382, 8.973264, 22.677048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.618073, 8.752986, 22.638851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355072, 0.651001, -0.670911,
		0.431633, 0.522430, 0.735364,
		0.829226, -0.550695, -0.095493,
		15.866840, 8.587777, 22.610203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899620, 9.465152, 22.547436>,  <15.286382, 8.973264, 22.677048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.899620, 9.465152, 22.547436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.028923, 9.116653, 22.399687>,  <16.106504, 8.907555, 22.311037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.028923, 9.116653, 22.399687>,  <15.899620, 9.465152, 22.547436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.028923, 9.116653, 22.399687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420640, 0.481940, -0.768632,
		0.847683, 0.093093, 0.522272,
		0.323258, -0.871245, -0.369373,
		16.125900, 8.855280, 22.288876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.678532, 9.497637, 22.458525>,  <15.899620, 9.465152, 22.547436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.678532, 9.497637, 22.458525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.579407, 9.204167, 22.205444>,  <16.519932, 9.028086, 22.053596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.579407, 9.204167, 22.205444>,  <16.678532, 9.497637, 22.458525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.579407, 9.204167, 22.205444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625156, 0.377812, -0.682962,
		0.740114, -0.564784, 0.365034,
		-0.247812, -0.733674, -0.632702,
		16.505064, 8.984065, 22.015635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329338, 9.362549, 22.238480>,  <16.678532, 9.497637, 22.458525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.329338, 9.362549, 22.238480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.071318, 9.200791, 21.979136>,  <16.916506, 9.103737, 21.823528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.071318, 9.200791, 21.979136>,  <17.329338, 9.362549, 22.238480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.071318, 9.200791, 21.979136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599026, 0.259182, -0.757623,
		0.474422, -0.877092, 0.075056,
		-0.645052, -0.404393, -0.648363,
		16.877802, 9.079473, 21.784626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.784681, 8.992074, 21.775379>,  <17.329338, 9.362549, 22.238480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.784681, 8.992074, 21.775379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.431446, 9.043236, 21.594803>,  <17.219505, 9.073933, 21.486458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.431446, 9.043236, 21.594803>,  <17.784681, 8.992074, 21.775379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.431446, 9.043236, 21.594803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467658, 0.318144, -0.824670,
		0.038143, -0.939374, -0.340765,
		-0.883086, 0.127906, -0.451441,
		17.166521, 9.081608, 21.459370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.958057, 8.873003, 21.149435>,  <17.784681, 8.992074, 21.775379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.958057, 8.873003, 21.149435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.603245, 9.045670, 21.083904>,  <17.390358, 9.149269, 21.044586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.603245, 9.045670, 21.083904>,  <17.958057, 8.873003, 21.149435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.603245, 9.045670, 21.083904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324532, 0.330529, -0.886245,
		-0.328412, -0.839294, -0.433279,
		-0.887031, 0.431667, -0.163828,
		17.337135, 9.175169, 21.034756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748850, 8.690953, 20.471069>,  <17.958057, 8.873003, 21.149435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.748850, 8.690953, 20.471069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.551157, 9.030229, 20.547291>,  <17.432541, 9.233794, 20.593023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.551157, 9.030229, 20.547291>,  <17.748850, 8.690953, 20.471069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.551157, 9.030229, 20.547291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226398, 0.337213, -0.913800,
		-0.839333, -0.408488, -0.358690,
		-0.494231, 0.848189, 0.190553,
		17.402887, 9.284685, 20.604456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.401165, 8.806440, 19.756077>,  <17.748850, 8.690953, 20.471069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.401165, 8.806440, 19.756077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.356134, 9.143683, 19.966408>,  <17.329115, 9.346029, 20.092606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.356134, 9.143683, 19.966408>,  <17.401165, 8.806440, 19.756077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.356134, 9.143683, 19.966408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095049, 0.535902, -0.838913,
		-0.989087, -0.044463, -0.140467,
		-0.112577, 0.843109, 0.525827,
		17.322361, 9.396616, 20.124155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.050240, 9.148620, 19.354965>,  <17.401165, 8.806440, 19.756077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.050240, 9.148620, 19.354965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.216192, 9.430426, 19.585281>,  <17.315763, 9.599509, 19.723471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.216192, 9.430426, 19.585281>,  <17.050240, 9.148620, 19.354965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.216192, 9.430426, 19.585281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282774, 0.501648, -0.817550,
		-0.864819, 0.502005, 0.008907,
		0.414883, 0.704514, 0.575789,
		17.340656, 9.641780, 19.758018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775398, 9.815086, 19.083973>,  <17.050240, 9.148620, 19.354965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.775398, 9.815086, 19.083973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.084307, 9.936612, 19.307148>,  <17.269651, 10.009527, 19.441053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.084307, 9.936612, 19.307148>,  <16.775398, 9.815086, 19.083973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084307, 9.936612, 19.307148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181215, 0.736402, -0.651823,
		-0.608899, 0.604491, 0.513647,
		0.772271, 0.303813, 0.557938,
		17.315989, 10.027756, 19.474529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666370, 10.438784, 19.242546>,  <16.775398, 9.815086, 19.083973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.666370, 10.438784, 19.242546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.062077, 10.384301, 19.221386>,  <17.299501, 10.351612, 19.208691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.062077, 10.384301, 19.221386>,  <16.666370, 10.438784, 19.242546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.062077, 10.384301, 19.221386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076691, 0.792157, -0.605479,
		0.124374, 0.594924, 0.794101,
		0.989267, -0.136206, -0.052898,
		17.358856, 10.343439, 19.205517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.984638, 10.999125, 19.092747>,  <16.666370, 10.438784, 19.242546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.984638, 10.999125, 19.092747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.332375, 10.807041, 19.046017>,  <17.541016, 10.691791, 19.017979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.332375, 10.807041, 19.046017>,  <16.984638, 10.999125, 19.092747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.332375, 10.807041, 19.046017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295917, 0.695100, -0.655187,
		0.395831, 0.535009, 0.746380,
		0.869339, -0.480210, -0.116824,
		17.593176, 10.662978, 19.010969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.426407, 11.466980, 19.143757>,  <16.984638, 10.999125, 19.092747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.426407, 11.466980, 19.143757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.595688, 11.176641, 18.926853>,  <17.697256, 11.002439, 18.796711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.595688, 11.176641, 18.926853>,  <17.426407, 11.466980, 19.143757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.595688, 11.176641, 18.926853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186994, 0.655585, -0.731602,
		0.886528, 0.208219, 0.413175,
		0.423204, -0.725847, -0.542259,
		17.722649, 10.958887, 18.764175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.095507, 11.729218, 18.745956>,  <17.426407, 11.466980, 19.143757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.095507, 11.729218, 18.745956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.944077, 11.413594, 18.552437>,  <17.853218, 11.224219, 18.436325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.944077, 11.413594, 18.552437>,  <18.095507, 11.729218, 18.745956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.944077, 11.413594, 18.552437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075284, 0.494722, -0.865784,
		0.922504, -0.364187, -0.127886,
		-0.378576, -0.789061, -0.483801,
		17.830503, 11.176876, 18.407297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.806654, 12.083500, 18.778532>,  <18.095507, 11.729218, 18.745956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.806654, 12.083500, 18.778532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.846670, 12.450249, 18.933109>,  <18.870680, 12.670299, 19.025856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.846670, 12.450249, 18.933109>,  <18.806654, 12.083500, 18.778532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.846670, 12.450249, 18.933109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088233, -0.378685, 0.921310,
		0.991064, -0.126263, 0.043015,
		0.100039, 0.916873, 0.386441,
		18.876682, 12.725310, 19.049042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.179220, 11.990192, 19.360922>,  <18.806654, 12.083500, 18.778532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.179220, 11.990192, 19.360922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.997534, 12.341315, 19.421774>,  <18.888523, 12.551989, 19.458286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.997534, 12.341315, 19.421774>,  <19.179220, 11.990192, 19.360922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.997534, 12.341315, 19.421774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247354, -0.288308, 0.925038,
		0.855865, 0.382535, 0.348083,
		-0.454214, 0.877807, 0.152131,
		18.861269, 12.604657, 19.467413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.330345, 12.216550, 20.037643>,  <19.179220, 11.990192, 19.360922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.330345, 12.216550, 20.037643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.991615, 12.405320, 19.939522>,  <18.788378, 12.518582, 19.880648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.991615, 12.405320, 19.939522>,  <19.330345, 12.216550, 20.037643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.991615, 12.405320, 19.939522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387668, -0.231893, 0.892154,
		0.364147, 0.850595, 0.379323,
		-0.846824, 0.471926, -0.245305,
		18.737568, 12.546898, 19.865931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.238819, 12.762066, 20.447510>,  <19.330345, 12.216550, 20.037643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.238819, 12.762066, 20.447510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.868443, 12.667406, 20.329777>,  <18.646217, 12.610610, 20.259138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.868443, 12.667406, 20.329777>,  <19.238819, 12.762066, 20.447510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.868443, 12.667406, 20.329777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221816, -0.289985, 0.930971,
		-0.305665, 0.927311, 0.216017,
		-0.925941, -0.236649, -0.294331,
		18.590660, 12.596412, 20.241478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032740, 12.943968, 20.974043>,  <19.238819, 12.762066, 20.447510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.032740, 12.943968, 20.974043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.700907, 12.785522, 20.816622>,  <18.501806, 12.690455, 20.722170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.700907, 12.785522, 20.816622>,  <19.032740, 12.943968, 20.974043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.700907, 12.785522, 20.816622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394393, -0.083264, 0.915162,
		-0.395277, 0.914418, -0.087150,
		-0.829584, -0.396114, -0.393553,
		18.452032, 12.666688, 20.698557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.428720, 13.286631, 21.234644>,  <19.032740, 12.943968, 20.974043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.428720, 13.286631, 21.234644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.296989, 12.931791, 21.105276>,  <18.217951, 12.718887, 21.027655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.296989, 12.931791, 21.105276>,  <18.428720, 13.286631, 21.234644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.296989, 12.931791, 21.105276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239240, -0.252955, 0.937432,
		-0.913405, 0.386095, -0.128925,
		-0.329326, -0.887099, -0.323420,
		18.198193, 12.665662, 21.008249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.935995, 13.135978, 21.618542>,  <18.428720, 13.286631, 21.234644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.935995, 13.135978, 21.618542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.973770, 12.760242, 21.486650>,  <17.996435, 12.534800, 21.407515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.973770, 12.760242, 21.486650>,  <17.935995, 13.135978, 21.618542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.973770, 12.760242, 21.486650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060237, -0.335995, 0.939936,
		-0.993707, -0.068902, -0.088313,
		0.094437, -0.939340, -0.329730,
		18.002102, 12.478439, 21.387732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.492300, 12.722773, 22.049246>,  <17.935995, 13.135978, 21.618542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.492300, 12.722773, 22.049246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.755478, 12.476812, 21.875345>,  <17.913383, 12.329236, 21.771006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.755478, 12.476812, 21.875345>,  <17.492300, 12.722773, 22.049246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.755478, 12.476812, 21.875345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002023, -0.575863, 0.817544,
		-0.753066, -0.538775, -0.377641,
		0.657942, -0.614901, -0.434753,
		17.952862, 12.292342, 21.744919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.283541, 12.101499, 22.304510>,  <17.492300, 12.722773, 22.049246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.283541, 12.101499, 22.304510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.653358, 12.013365, 22.180140>,  <17.875248, 11.960485, 22.105518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.653358, 12.013365, 22.180140>,  <17.283541, 12.101499, 22.304510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.653358, 12.013365, 22.180140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139478, -0.563640, 0.814160,
		-0.354637, -0.796092, -0.490377,
		0.924542, -0.220335, -0.310925,
		17.930721, 11.947265, 22.086863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330568, 11.445605, 22.369568>,  <17.283541, 12.101499, 22.304510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.330568, 11.445605, 22.369568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.714193, 11.557193, 22.350058>,  <17.944368, 11.624146, 22.338352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.714193, 11.557193, 22.350058>,  <17.330568, 11.445605, 22.369568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.714193, 11.557193, 22.350058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140098, -0.317674, 0.937793,
		0.246119, -0.906234, -0.343751,
		0.959061, 0.278968, -0.048776,
		18.001911, 11.640883, 22.335424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737110, 10.941363, 22.666113>,  <17.330568, 11.445605, 22.369568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.737110, 10.941363, 22.666113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.031492, 11.212017, 22.675386>,  <18.208120, 11.374410, 22.680950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.031492, 11.212017, 22.675386>,  <17.737110, 10.941363, 22.666113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.031492, 11.212017, 22.675386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301403, -0.358106, 0.883695,
		0.606242, -0.643370, -0.467490,
		0.735953, 0.676635, 0.023186,
		18.252277, 11.415008, 22.682343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.281242, 10.485447, 22.815506>,  <17.737110, 10.941363, 22.666113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.281242, 10.485447, 22.815506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.378117, 10.864952, 22.896694>,  <18.436241, 11.092655, 22.945408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.378117, 10.864952, 22.896694>,  <18.281242, 10.485447, 22.815506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.378117, 10.864952, 22.896694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391727, -0.287007, 0.874172,
		0.887635, -0.132203, -0.441164,
		0.242185, 0.948762, 0.202970,
		18.450773, 11.149581, 22.957584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032183, 10.549632, 22.948227>,  <18.281242, 10.485447, 22.815506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.032183, 10.549632, 22.948227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.804390, 10.821532, 23.133106>,  <18.667713, 10.984673, 23.244034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.804390, 10.821532, 23.133106>,  <19.032183, 10.549632, 22.948227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.804390, 10.821532, 23.133106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222660, -0.413700, 0.882766,
		0.791271, 0.605634, 0.084242,
		-0.569484, 0.679750, 0.462199,
		18.633545, 11.025457, 23.271767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.488562, 10.751022, 23.450172>,  <19.032183, 10.549632, 22.948227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.488562, 10.751022, 23.450172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.115931, 10.831698, 23.571156>,  <18.892351, 10.880104, 23.643745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.115931, 10.831698, 23.571156>,  <19.488562, 10.751022, 23.450172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.115931, 10.831698, 23.571156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186207, -0.449834, 0.873485,
		0.312230, 0.870040, 0.381500,
		-0.931579, 0.201690, 0.302460,
		18.836456, 10.892205, 23.661894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<12.170041, 13.480633, 24.925875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.366740, 13.188833, 24.735710>,  <12.484759, 13.013754, 24.621611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.366740, 13.188833, 24.735710>,  <12.170041, 13.480633, 24.925875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.366740, 13.188833, 24.735710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263900, 0.645171, -0.717016,
		0.829784, 0.227129, 0.509775,
		0.491747, -0.729498, -0.475413,
		12.514264, 12.969984, 24.593086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.718429, 13.843276, 24.666540>,  <12.170041, 13.480633, 24.925875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.718429, 13.843276, 24.666540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.733231, 13.500707, 24.460562>,  <12.742111, 13.295165, 24.336975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.733231, 13.500707, 24.460562>,  <12.718429, 13.843276, 24.666540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.733231, 13.500707, 24.460562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251285, 0.506716, -0.824678,
		0.967206, -0.098881, 0.233957,
		0.037005, -0.856423, -0.514946,
		12.744332, 13.243779, 24.306078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.251463, 13.895571, 24.278805>,  <12.718429, 13.843276, 24.666540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.251463, 13.895571, 24.278805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.043638, 13.608876, 24.092754>,  <12.918943, 13.436859, 23.981123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.043638, 13.608876, 24.092754>,  <13.251463, 13.895571, 24.278805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.043638, 13.608876, 24.092754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155293, 0.456090, -0.876279,
		0.840203, -0.527512, -0.125662,
		-0.519561, -0.716738, -0.465127,
		12.887770, 13.393855, 23.953217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.675152, 13.752406, 23.610819>,  <13.251463, 13.895571, 24.278805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.675152, 13.752406, 23.610819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.294868, 13.630158, 23.589830>,  <13.066699, 13.556810, 23.577238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.294868, 13.630158, 23.589830>,  <13.675152, 13.752406, 23.610819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.294868, 13.630158, 23.589830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112505, 0.497639, -0.860057,
		0.288960, -0.811759, -0.507493,
		-0.950708, -0.305618, -0.052471,
		13.009656, 13.538473, 23.574089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.897002, 13.530741, 23.053949>,  <13.675152, 13.752406, 23.610819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.897002, 13.530741, 23.053949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.497699, 13.551852, 23.043413>,  <13.258117, 13.564519, 23.037092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.497699, 13.551852, 23.043413>,  <13.897002, 13.530741, 23.053949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.497699, 13.551852, 23.043413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044542, 0.381697, -0.923214,
		-0.038673, -0.922779, -0.383383,
		-0.998259, 0.052779, -0.026341,
		13.198221, 13.567686, 23.035511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.585918, 13.112386, 22.469324>,  <13.897002, 13.530741, 23.053949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.585918, 13.112386, 22.469324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.321423, 13.396549, 22.565725>,  <13.162725, 13.567047, 22.623566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.321423, 13.396549, 22.565725>,  <13.585918, 13.112386, 22.469324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.321423, 13.396549, 22.565725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045022, 0.358264, -0.932534,
		-0.748823, -0.605778, -0.268882,
		-0.661240, 0.710408, 0.241003,
		13.123051, 13.609672, 22.638025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.124414, 12.974147, 21.999197>,  <13.585918, 13.112386, 22.469324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.124414, 12.974147, 21.999197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.080228, 13.350698, 22.126701>,  <13.053716, 13.576628, 22.203203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.080228, 13.350698, 22.126701>,  <13.124414, 12.974147, 21.999197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.080228, 13.350698, 22.126701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059487, 0.326411, -0.943354,
		-0.992098, -0.085247, -0.092057,
		-0.110467, 0.941376, 0.318760,
		13.047088, 13.633110, 22.222330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.893778, 13.330202, 21.421930>,  <13.124414, 12.974147, 21.999197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.893778, 13.330202, 21.421930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.983346, 13.645643, 21.651003>,  <13.037086, 13.834908, 21.788446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.983346, 13.645643, 21.651003>,  <12.893778, 13.330202, 21.421930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.983346, 13.645643, 21.651003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161346, 0.549499, -0.819767,
		-0.961159, 0.275962, -0.004194,
		0.223920, 0.788604, 0.572681,
		13.050522, 13.882224, 21.822807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.445227, 13.830774, 21.236553>,  <12.893778, 13.330202, 21.421930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.445227, 13.830774, 21.236553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.762018, 14.012396, 21.399824>,  <12.952093, 14.121368, 21.497786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.762018, 14.012396, 21.399824>,  <12.445227, 13.830774, 21.236553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.762018, 14.012396, 21.399824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120088, 0.539634, -0.833291,
		-0.598624, 0.708965, 0.372852,
		0.791978, 0.454053, 0.408175,
		12.999612, 14.148612, 21.522276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.409813, 14.468397, 21.046745>,  <12.445227, 13.830774, 21.236553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.409813, 14.468397, 21.046745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.803195, 14.426746, 21.106037>,  <13.039225, 14.401755, 21.141611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.803195, 14.426746, 21.106037>,  <12.409813, 14.468397, 21.046745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.803195, 14.426746, 21.106037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179277, 0.676750, -0.714051,
		-0.025961, 0.728812, 0.684222,
		0.983456, -0.104128, 0.148228,
		13.098232, 14.395508, 21.150505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.640012, 15.110932, 20.845701>,  <12.409813, 14.468397, 21.046745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.640012, 15.110932, 20.845701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.978588, 14.899212, 20.868942>,  <13.181734, 14.772180, 20.882887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.978588, 14.899212, 20.868942>,  <12.640012, 15.110932, 20.845701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.978588, 14.899212, 20.868942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455744, 0.663700, -0.593127,
		0.275380, 0.528528, 0.803009,
		0.846441, -0.529302, 0.058103,
		13.232521, 14.740421, 20.886374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.133618, 15.563616, 21.104210>,  <12.640012, 15.110932, 20.845701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.133618, 15.563616, 21.104210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.328877, 15.281734, 20.898258>,  <13.446033, 15.112604, 20.774687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.328877, 15.281734, 20.898258>,  <13.133618, 15.563616, 21.104210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.328877, 15.281734, 20.898258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311962, 0.691857, -0.651163,
		0.815102, 0.157241, 0.557569,
		0.488148, -0.704705, -0.514881,
		13.475322, 15.070322, 20.743793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.711320, 15.955898, 20.826519>,  <13.133618, 15.563616, 21.104210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.711320, 15.955898, 20.826519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.690138, 15.615939, 20.616808>,  <13.677428, 15.411963, 20.490982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.690138, 15.615939, 20.616808>,  <13.711320, 15.955898, 20.826519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.690138, 15.615939, 20.616808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187894, 0.507158, -0.841123,
		0.980761, -0.143050, 0.132834,
		-0.052955, -0.849899, -0.524279,
		13.674252, 15.360970, 20.459524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.318185, 16.073795, 20.387032>,  <13.711320, 15.955898, 20.826519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.318185, 16.073795, 20.387032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.081412, 15.809227, 20.202797>,  <13.939349, 15.650486, 20.092257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.081412, 15.809227, 20.202797>,  <14.318185, 16.073795, 20.387032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.081412, 15.809227, 20.202797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163957, 0.460694, -0.872284,
		0.789137, -0.591848, -0.164254,
		-0.591930, -0.661421, -0.460588,
		13.903833, 15.610801, 20.064621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.954126, 15.785046, 20.322569>,  <14.318185, 16.073795, 20.387032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.954126, 15.785046, 20.322569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.325468, 15.932237, 20.343552>,  <15.548273, 16.020552, 20.356142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.325468, 15.932237, 20.343552>,  <14.954126, 15.785046, 20.322569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.325468, 15.932237, 20.343552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096860, -0.375747, 0.921646,
		0.358856, -0.850533, -0.384468,
		0.928354, 0.367978, 0.052457,
		15.603974, 16.042629, 20.359289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440225, 15.191876, 20.460793>,  <14.954126, 15.785046, 20.322569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.440225, 15.191876, 20.460793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.622083, 15.528699, 20.576887>,  <15.731197, 15.730793, 20.646544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.622083, 15.528699, 20.576887>,  <15.440225, 15.191876, 20.460793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.622083, 15.528699, 20.576887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199563, -0.413886, 0.888185,
		0.868028, -0.345887, -0.356215,
		0.454644, 0.842057, 0.290239,
		15.758476, 15.781316, 20.663960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.997396, 14.987798, 20.898520>,  <15.440225, 15.191876, 20.460793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.997396, 14.987798, 20.898520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.979519, 15.379926, 20.975437>,  <15.968793, 15.615202, 21.021587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.979519, 15.379926, 20.975437>,  <15.997396, 14.987798, 20.898520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.979519, 15.379926, 20.975437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234734, -0.176794, 0.955847,
		0.971032, 0.087856, -0.222213,
		-0.044691, 0.980319, 0.192295,
		15.966111, 15.674022, 21.033125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.640686, 15.186853, 21.239336>,  <15.997396, 14.987798, 20.898520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.640686, 15.186853, 21.239336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.299994, 15.380284, 21.320038>,  <16.095577, 15.496343, 21.368458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.299994, 15.380284, 21.320038>,  <16.640686, 15.186853, 21.239336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.299994, 15.380284, 21.320038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023080, -0.350046, 0.936448,
		0.523467, 0.802260, 0.286985,
		-0.851733, 0.483577, 0.201754,
		16.044474, 15.525357, 21.380564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727600, 15.420342, 21.971910>,  <16.640686, 15.186853, 21.239336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727600, 15.420342, 21.971910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.334621, 15.485906, 21.936293>,  <16.098833, 15.525244, 21.914923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.334621, 15.485906, 21.936293>,  <16.727600, 15.420342, 21.971910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.334621, 15.485906, 21.936293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135824, -0.301413, 0.943770,
		0.127853, 0.939300, 0.318386,
		-0.982449, 0.163908, -0.089043,
		16.039886, 15.535078, 21.909580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.524399, 15.723344, 22.610905>,  <16.727600, 15.420342, 21.971910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.524399, 15.723344, 22.610905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.196417, 15.568574, 22.442162>,  <15.999628, 15.475712, 22.340916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.196417, 15.568574, 22.442162>,  <16.524399, 15.723344, 22.610905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.196417, 15.568574, 22.442162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304436, -0.329335, 0.893788,
		-0.484762, 0.861294, 0.152246,
		-0.819954, -0.386926, -0.421858,
		15.950431, 15.452497, 22.315605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198298, 15.724019, 23.151951>,  <16.524399, 15.723344, 22.610905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.198298, 15.724019, 23.151951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.007490, 15.466269, 22.912874>,  <15.893006, 15.311620, 22.769428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.007490, 15.466269, 22.912874>,  <16.198298, 15.724019, 23.151951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.007490, 15.466269, 22.912874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112180, -0.629850, 0.768573,
		-0.871705, 0.433672, 0.228164,
		-0.477017, -0.644374, -0.597693,
		15.864385, 15.272957, 22.733566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.710093, 15.490764, 23.595205>,  <16.198298, 15.724019, 23.151951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.710093, 15.490764, 23.595205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.710927, 15.219846, 23.300922>,  <15.711428, 15.057295, 23.124352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.710927, 15.219846, 23.300922>,  <15.710093, 15.490764, 23.595205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.710927, 15.219846, 23.300922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197051, -0.721564, 0.663714,
		-0.980391, 0.143588, -0.134966,
		0.002086, -0.677295, -0.735709,
		15.711553, 15.016657, 23.080210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.017594, 15.236666, 23.639236>,  <15.710093, 15.490764, 23.595205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.017594, 15.236666, 23.639236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.261644, 14.982749, 23.449589>,  <15.408074, 14.830400, 23.335800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.261644, 14.982749, 23.449589>,  <15.017594, 15.236666, 23.639236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.261644, 14.982749, 23.449589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178675, -0.693226, 0.698221,
		-0.771896, -0.341289, -0.536376,
		0.610125, -0.634791, -0.474118,
		15.444682, 14.792312, 23.307354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.596476, 14.647030, 23.612007>,  <15.017594, 15.236666, 23.639236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.596476, 14.647030, 23.612007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.967955, 14.512630, 23.549236>,  <15.190842, 14.431991, 23.511574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.967955, 14.512630, 23.549236>,  <14.596476, 14.647030, 23.612007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.967955, 14.512630, 23.549236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094105, -0.622842, 0.776667,
		-0.358698, -0.706521, -0.610052,
		0.928698, -0.335998, -0.156925,
		15.246564, 14.411831, 23.502159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.512916, 13.878132, 23.692886>,  <14.596476, 14.647030, 23.612007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.512916, 13.878132, 23.692886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.888065, 13.997377, 23.763905>,  <15.113155, 14.068925, 23.806515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.888065, 13.997377, 23.763905>,  <14.512916, 13.878132, 23.692886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.888065, 13.997377, 23.763905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056599, -0.636275, 0.769383,
		0.342331, -0.711535, -0.613618,
		0.937873, 0.298114, 0.177545,
		15.169427, 14.086811, 23.817167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.001937, 13.289879, 23.607773>,  <14.512916, 13.878132, 23.692886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.001937, 13.289879, 23.607773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.168856, 13.562226, 23.848532>,  <15.269007, 13.725635, 23.992987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.168856, 13.562226, 23.848532>,  <15.001937, 13.289879, 23.607773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.168856, 13.562226, 23.848532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132335, -0.700790, 0.700986,
		0.899083, -0.212868, -0.382540,
		0.417298, 0.680868, 0.601898,
		15.294045, 13.766487, 24.029100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.703925, 13.034339, 23.786430>,  <15.001937, 13.289879, 23.607773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.703925, 13.034339, 23.786430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.584305, 13.301561, 24.058981>,  <15.512533, 13.461895, 24.222511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.584305, 13.301561, 24.058981>,  <15.703925, 13.034339, 23.786430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.584305, 13.301561, 24.058981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172733, -0.664357, 0.727182,
		0.938473, 0.335160, 0.083281,
		-0.299050, 0.668055, 0.681374,
		15.494590, 13.501978, 24.263393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.185825, 12.864040, 24.359739>,  <15.703925, 13.034339, 23.786430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.185825, 12.864040, 24.359739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.885981, 13.073487, 24.521681>,  <15.706074, 13.199156, 24.618845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.885981, 13.073487, 24.521681>,  <16.185825, 12.864040, 24.359739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.885981, 13.073487, 24.521681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063558, -0.665795, 0.743423,
		0.658819, 0.531547, 0.532368,
		-0.749612, 0.523617, 0.404854,
		15.661097, 13.230573, 24.643137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.762846, 13.150179, 24.720882>,  <16.185825, 12.864040, 24.359739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.762846, 13.150179, 24.720882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.144287, 13.137255, 24.840616>,  <17.373152, 13.129500, 24.912457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.144287, 13.137255, 24.840616>,  <16.762846, 13.150179, 24.720882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.144287, 13.137255, 24.840616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236278, 0.696496, -0.677544,
		-0.186592, 0.716833, 0.671814,
		0.953601, -0.032311, 0.299333,
		17.430368, 13.127562, 24.930416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976419, 13.769167, 24.898674>,  <16.762846, 13.150179, 24.720882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.976419, 13.769167, 24.898674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.314840, 13.587765, 24.786581>,  <17.517893, 13.478924, 24.719324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.314840, 13.587765, 24.786581>,  <16.976419, 13.769167, 24.898674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.314840, 13.587765, 24.786581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226129, 0.781324, -0.581721,
		0.482767, 0.428796, 0.763590,
		0.846051, -0.453505, -0.280234,
		17.568655, 13.451714, 24.702511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.504942, 14.278748, 25.007336>,  <16.976419, 13.769167, 24.898674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.504942, 14.278748, 25.007336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.697062, 14.017029, 24.773684>,  <17.812334, 13.859998, 24.633492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.697062, 14.017029, 24.773684>,  <17.504942, 14.278748, 25.007336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697062, 14.017029, 24.773684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451112, 0.755415, -0.475233,
		0.752204, -0.035254, 0.657986,
		0.480299, -0.654297, -0.584130,
		17.841150, 13.820740, 24.598444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.306044, 14.360005, 25.009666>,  <17.504942, 14.278748, 25.007336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.306044, 14.360005, 25.009666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.227722, 14.169972, 24.666515>,  <18.180729, 14.055953, 24.460625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.227722, 14.169972, 24.666515>,  <18.306044, 14.360005, 25.009666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.227722, 14.169972, 24.666515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478460, 0.717340, -0.506459,
		0.856000, -0.509628, 0.086848,
		-0.195806, -0.475082, -0.857880,
		18.168980, 14.027448, 24.409151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.865032, 14.481552, 24.556765>,  <18.306044, 14.360005, 25.009666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.865032, 14.481552, 24.556765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.623703, 14.366529, 24.259224>,  <18.478907, 14.297514, 24.080700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.623703, 14.366529, 24.259224>,  <18.865032, 14.481552, 24.556765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623703, 14.366529, 24.259224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415214, 0.683081, -0.600831,
		0.680871, -0.671358, -0.292735,
		-0.603334, -0.287541, -0.743847,
		18.442707, 14.280261, 24.036068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.278128, 14.382671, 24.076511>,  <18.865032, 14.481552, 24.556765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.278128, 14.382671, 24.076511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.922941, 14.435514, 23.900303>,  <18.709829, 14.467220, 23.794577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.922941, 14.435514, 23.900303>,  <19.278128, 14.382671, 24.076511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.922941, 14.435514, 23.900303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353140, 0.809484, -0.469072,
		0.294628, -0.572087, -0.765448,
		-0.887968, 0.132108, -0.440523,
		18.656551, 14.475147, 23.768147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.317276, 14.370971, 23.341339>,  <19.278128, 14.382671, 24.076511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.317276, 14.370971, 23.341339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.981312, 14.568068, 23.432341>,  <18.779734, 14.686326, 23.486942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.981312, 14.568068, 23.432341>,  <19.317276, 14.370971, 23.341339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.981312, 14.568068, 23.432341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326626, 0.793697, -0.513186,
		-0.433438, -0.356721, -0.827576,
		-0.839909, 0.492742, 0.227505,
		18.729340, 14.715890, 23.500591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.143633, 14.622566, 22.690578>,  <19.317276, 14.370971, 23.341339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.143633, 14.622566, 22.690578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.922485, 14.846493, 22.937460>,  <18.789797, 14.980849, 23.085588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.922485, 14.846493, 22.937460>,  <19.143633, 14.622566, 22.690578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.922485, 14.846493, 22.937460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023171, 0.730087, -0.682961,
		-0.832945, -0.391890, -0.390671,
		-0.552870, 0.559817, 0.617204,
		18.756624, 15.014438, 23.122622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.475351, 14.814326, 22.338276>,  <19.143633, 14.622566, 22.690578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.475351, 14.814326, 22.338276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.594252, 15.076653, 22.615850>,  <18.665592, 15.234048, 22.782394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.594252, 15.076653, 22.615850>,  <18.475351, 14.814326, 22.338276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.594252, 15.076653, 22.615850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061573, 0.738441, -0.671501,
		-0.952812, 0.156878, 0.259884,
		0.297252, 0.655816, 0.693936,
		18.683428, 15.273397, 22.824032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.055588, 15.359202, 22.237690>,  <18.475351, 14.814326, 22.338276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.055588, 15.359202, 22.237690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.368631, 15.507348, 22.437830>,  <18.556458, 15.596235, 22.557915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.368631, 15.507348, 22.437830>,  <18.055588, 15.359202, 22.237690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.368631, 15.507348, 22.437830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169721, 0.646365, -0.743913,
		-0.598928, 0.667114, 0.442994,
		0.782611, 0.370365, 0.500350,
		18.603415, 15.618458, 22.587934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.005173, 16.048723, 22.215042>,  <18.055588, 15.359202, 22.237690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.005173, 16.048723, 22.215042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.392649, 15.963456, 22.265959>,  <18.625134, 15.912296, 22.296509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.392649, 15.963456, 22.265959>,  <18.005173, 16.048723, 22.215042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.392649, 15.963456, 22.265959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245798, 0.751082, -0.612747,
		0.035011, 0.624849, 0.779961,
		0.968688, -0.213166, 0.127291,
		18.683256, 15.899507, 22.304146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260973, 16.702448, 22.239986>,  <18.005173, 16.048723, 22.215042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.260973, 16.702448, 22.239986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.572773, 16.470179, 22.146011>,  <18.759853, 16.330816, 22.089626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.572773, 16.470179, 22.146011>,  <18.260973, 16.702448, 22.239986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.572773, 16.470179, 22.146011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256100, 0.637713, -0.726454,
		0.571657, 0.506103, 0.645808,
		0.779500, -0.580674, -0.234940,
		18.806623, 16.295977, 22.075529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.951429, 17.116627, 22.156799>,  <18.260973, 16.702448, 22.239986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.951429, 17.116627, 22.156799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.013998, 16.779753, 21.950399>,  <19.051538, 16.577629, 21.826559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.013998, 16.779753, 21.950399>,  <18.951429, 17.116627, 22.156799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.013998, 16.779753, 21.950399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358986, 0.535180, -0.764664,
		0.920142, -0.065626, 0.386047,
		0.156422, -0.842185, -0.516000,
		19.060925, 16.527098, 21.795599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.619711, 17.304386, 21.805859>,  <18.951429, 17.116627, 22.156799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.619711, 17.304386, 21.805859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.419146, 17.008171, 21.626888>,  <19.298807, 16.830442, 21.519506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.419146, 17.008171, 21.626888>,  <19.619711, 17.304386, 21.805859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.419146, 17.008171, 21.626888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252984, 0.369044, -0.894319,
		0.827396, -0.561615, 0.002301,
		-0.501414, -0.740537, -0.447425,
		19.268721, 16.786011, 21.492661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<11.847264, 23.919350, 19.080877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.128040, 23.679714, 19.234955>,  <12.296506, 23.535933, 19.327400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.128040, 23.679714, 19.234955>,  <11.847264, 23.919350, 19.080877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.128040, 23.679714, 19.234955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406449, 0.107176, 0.907366,
		-0.584876, -0.793477, -0.168268,
		0.701940, -0.599089, 0.385192,
		12.338622, 23.499989, 19.350513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.299138, 23.874016, 18.671692>,  <11.847264, 23.919350, 19.080877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.299138, 23.874016, 18.671692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.941113, 23.945894, 18.834944>,  <10.726297, 23.989021, 18.932894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.941113, 23.945894, 18.834944>,  <11.299138, 23.874016, 18.671692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.941113, 23.945894, 18.834944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380081, 0.171261, -0.908960,
		-0.233234, -0.968699, -0.084990,
		-0.895065, 0.179698, 0.408128,
		10.672593, 23.999804, 18.957382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.607842, 23.513605, 18.303566>,  <11.299138, 23.874016, 18.671692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.607842, 23.513605, 18.303566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.564823, 23.875225, 18.469038>,  <10.539012, 24.092197, 18.568321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.564823, 23.875225, 18.469038>,  <10.607842, 23.513605, 18.303566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.564823, 23.875225, 18.469038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432387, 0.332148, -0.838284,
		-0.895251, -0.269025, 0.355177,
		-0.107548, 0.904048, 0.413679,
		10.532558, 24.146439, 18.593142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.911826, 23.888906, 18.294956>,  <10.607842, 23.513605, 18.303566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.911826, 23.888906, 18.294956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.180014, 24.184431, 18.267744>,  <10.340926, 24.361746, 18.251417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.180014, 24.184431, 18.267744>,  <9.911826, 23.888906, 18.294956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.180014, 24.184431, 18.267744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396847, 0.279634, -0.874252,
		-0.626885, 0.613156, 0.480681,
		0.670468, 0.738813, -0.068031,
		10.381154, 24.406075, 18.247335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.619477, 24.589264, 18.296597>,  <9.911826, 23.888906, 18.294956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.619477, 24.589264, 18.296597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.963949, 24.579485, 18.093512>,  <10.170632, 24.573618, 17.971661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.963949, 24.579485, 18.093512>,  <9.619477, 24.589264, 18.296597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.963949, 24.579485, 18.093512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461936, 0.379136, -0.801792,
		0.212092, 0.925018, 0.315212,
		0.861180, -0.024446, -0.507711,
		10.222303, 24.572151, 17.941198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.912921, 24.346098, 18.254845>,  <9.619477, 24.589264, 18.296597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.912921, 24.346098, 18.254845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.743478, 23.985195, 18.222626>,  <8.641812, 23.768654, 18.203295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.743478, 23.985195, 18.222626>,  <8.912921, 24.346098, 18.254845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.743478, 23.985195, 18.222626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464199, 0.139863, 0.874618,
		-0.777866, 0.407885, -0.478074,
		-0.423608, -0.902257, -0.080545,
		8.616395, 23.714518, 18.198462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.532268, 24.323812, 18.863264>,  <8.912921, 24.346098, 18.254845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.532268, 24.323812, 18.863264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.393152, 23.976694, 18.721294>,  <8.309683, 23.768423, 18.636112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.393152, 23.976694, 18.721294>,  <8.532268, 24.323812, 18.863264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.393152, 23.976694, 18.721294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387178, -0.211839, 0.897339,
		-0.853895, 0.449503, -0.262317,
		-0.347788, -0.867797, -0.354926,
		8.288815, 23.716354, 18.614817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.924567, 24.384909, 19.102352>,  <8.532268, 24.323812, 18.863264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.924567, 24.384909, 19.102352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.051004, 24.010492, 19.040499>,  <8.126867, 23.785843, 19.003387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.051004, 24.010492, 19.040499>,  <7.924567, 24.384909, 19.102352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.051004, 24.010492, 19.040499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405047, -0.280535, 0.870194,
		-0.857917, -0.212430, -0.467816,
		0.316094, -0.936041, -0.154632,
		8.145833, 23.729679, 18.994110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.676267, 24.252523, 18.410105>,  <7.924567, 24.384909, 19.102352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.676267, 24.252523, 18.410105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.006829, 24.097082, 18.247112>,  <8.205167, 24.003819, 18.149317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.006829, 24.097082, 18.247112>,  <7.676267, 24.252523, 18.410105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.006829, 24.097082, 18.247112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378574, 0.919155, -0.108789,
		0.416815, -0.064358, 0.906710,
		0.826406, -0.388602, -0.407482,
		8.254751, 23.980501, 18.124868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.294112, 23.672821, 18.143265>,  <7.676267, 24.252523, 18.410105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.294112, 23.672821, 18.143265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.083751, 23.757856, 18.472685>,  <6.957535, 23.808878, 18.670336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.083751, 23.757856, 18.472685>,  <7.294112, 23.672821, 18.143265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.083751, 23.757856, 18.472685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628891, -0.749090, -0.208231,
		0.572646, -0.627432, 0.527642,
		-0.525903, 0.212586, 0.823549,
		6.925981, 23.821632, 18.719749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.253252, 23.060707, 18.542170>,  <7.294112, 23.672821, 18.143265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.253252, 23.060707, 18.542170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.945987, 23.303356, 18.624086>,  <6.761628, 23.448946, 18.673237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.945987, 23.303356, 18.624086>,  <7.253252, 23.060707, 18.542170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.945987, 23.303356, 18.624086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637138, -0.755790, -0.151118,
		0.063107, -0.246563, 0.967070,
		-0.768162, 0.606620, 0.204790,
		6.715538, 23.485342, 18.685524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.892131, 22.781780, 19.091654>,  <7.253252, 23.060707, 18.542170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.892131, 22.781780, 19.091654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.625822, 23.010986, 18.900488>,  <6.466037, 23.148510, 18.785788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.625822, 23.010986, 18.900488>,  <6.892131, 22.781780, 19.091654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.625822, 23.010986, 18.900488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592449, -0.795331, -0.128265,
		-0.453599, 0.197746, 0.868990,
		-0.665771, 0.573013, -0.477916,
		6.426091, 23.182890, 18.757113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.251066, 22.538666, 19.252434>,  <6.892131, 22.781780, 19.091654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.251066, 22.538666, 19.252434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.166321, 22.733000, 18.913239>,  <6.115474, 22.849600, 18.709723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.166321, 22.733000, 18.913239>,  <6.251066, 22.538666, 19.252434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.166321, 22.733000, 18.913239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577198, -0.762389, -0.292584,
		-0.788643, 0.427468, 0.441944,
		-0.211863, 0.485833, -0.847986,
		6.102762, 22.878750, 18.658842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.541906, 22.401134, 19.077162>,  <6.251066, 22.538666, 19.252434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.541906, 22.401134, 19.077162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.672669, 22.542072, 18.726395>,  <5.751127, 22.626635, 18.515934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.672669, 22.542072, 18.726395>,  <5.541906, 22.401134, 19.077162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.672669, 22.542072, 18.726395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563816, -0.671965, -0.480182,
		-0.758447, 0.651396, -0.021013,
		0.326908, 0.352346, -0.876917,
		5.770741, 22.647776, 18.463320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.999835, 22.584490, 18.735283>,  <5.541906, 22.401134, 19.077162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.999835, 22.584490, 18.735283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.277075, 22.551697, 18.448816>,  <5.443419, 22.532021, 18.276937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.277075, 22.551697, 18.448816>,  <4.999835, 22.584490, 18.735283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.277075, 22.551697, 18.448816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571009, -0.668817, -0.476059,
		-0.439956, 0.738893, -0.510369,
		0.693100, -0.081980, -0.716164,
		5.485005, 22.527103, 18.233967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.655296, 22.569260, 18.050945>,  <4.999835, 22.584490, 18.735283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.655296, 22.569260, 18.050945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.007396, 22.380943, 18.027222>,  <5.218656, 22.267954, 18.012987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.007396, 22.380943, 18.027222>,  <4.655296, 22.569260, 18.050945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.007396, 22.380943, 18.027222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421229, -0.717734, -0.554458,
		0.218465, 0.513045, -0.830095,
		0.880249, -0.470790, -0.059309,
		5.271471, 22.239706, 18.009428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.622542, 22.296089, 17.406742>,  <4.655296, 22.569260, 18.050945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.622542, 22.296089, 17.406742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.941144, 22.096462, 17.543278>,  <5.132304, 21.976686, 17.625198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.941144, 22.096462, 17.543278>,  <4.622542, 22.296089, 17.406742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.941144, 22.096462, 17.543278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243144, -0.781259, -0.574904,
		0.553591, 0.374918, -0.743622,
		0.796504, -0.499069, 0.341339,
		5.180095, 21.946741, 17.645679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.972001, 22.075335, 16.759012>,  <4.622542, 22.296089, 17.406742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.972001, 22.075335, 16.759012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.086228, 21.844761, 17.065262>,  <5.154765, 21.706417, 17.249012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.086228, 21.844761, 17.065262>,  <4.972001, 22.075335, 16.759012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.086228, 21.844761, 17.065262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240365, -0.816433, -0.525034,
		0.927726, -0.034096, -0.371702,
		0.285568, -0.576432, 0.765622,
		5.171899, 21.671831, 17.294949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.158257, 21.429647, 16.423227>,  <4.972001, 22.075335, 16.759012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.158257, 21.429647, 16.423227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.176923, 21.343410, 16.813374>,  <5.188123, 21.291668, 17.047462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.176923, 21.343410, 16.813374>,  <5.158257, 21.429647, 16.423227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.176923, 21.343410, 16.813374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035068, -0.976183, -0.214097,
		0.998295, -0.024213, -0.053115,
		0.046666, -0.215595, 0.975367,
		5.190923, 21.278732, 17.105984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.648733, 20.904295, 16.491724>,  <5.158257, 21.429647, 16.423227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.648733, 20.904295, 16.491724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.409103, 20.882132, 16.811234>,  <5.265325, 20.868834, 17.002939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.409103, 20.882132, 16.811234>,  <5.648733, 20.904295, 16.491724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.409103, 20.882132, 16.811234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088409, -0.986925, -0.134766,
		0.795797, -0.151354, 0.586344,
		-0.599075, -0.055409, 0.798774,
		5.229381, 20.865509, 17.050865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.958380, 20.397839, 16.967697>,  <5.648733, 20.904295, 16.491724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.958380, 20.397839, 16.967697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.559749, 20.424145, 16.987726>,  <5.320570, 20.439928, 16.999743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.559749, 20.424145, 16.987726>,  <5.958380, 20.397839, 16.967697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.559749, 20.424145, 16.987726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076515, -0.963146, -0.257869,
		0.031268, -0.260818, 0.964882,
		-0.996578, 0.065765, 0.050072,
		5.260775, 20.443874, 17.002748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.812721, 19.739271, 17.202974>,  <5.958380, 20.397839, 16.967697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.812721, 19.739271, 17.202974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.477265, 19.893686, 17.049271>,  <5.275991, 19.986336, 16.957048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.477265, 19.893686, 17.049271>,  <5.812721, 19.739271, 17.202974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.477265, 19.893686, 17.049271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355674, -0.922422, -0.150444,
		-0.412525, 0.010501, 0.910886,
		-0.838641, 0.386040, -0.384257,
		5.225672, 20.009499, 16.933994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.282086, 19.356201, 17.401941>,  <5.812721, 19.739271, 17.202974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.282086, 19.356201, 17.401941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.084715, 19.516544, 17.093178>,  <4.966292, 19.612751, 16.907921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.084715, 19.516544, 17.093178>,  <5.282086, 19.356201, 17.401941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.084715, 19.516544, 17.093178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401457, -0.892242, -0.206727,
		-0.771596, 0.207883, 0.601186,
		-0.493428, 0.400860, -0.771906,
		4.936687, 19.636803, 16.861607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.610056, 19.016045, 17.287861>,  <5.282086, 19.356201, 17.401941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.610056, 19.016045, 17.287861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.637664, 19.198807, 16.933128>,  <4.654229, 19.308464, 16.720289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.637664, 19.198807, 16.933128>,  <4.610056, 19.016045, 17.287861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.637664, 19.198807, 16.933128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262897, -0.849200, -0.457979,
		-0.962352, 0.264756, 0.061508,
		0.069020, 0.456907, -0.886833,
		4.658370, 19.335878, 16.667078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.891567, 19.043419, 16.867846>,  <4.610056, 19.016045, 17.287861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.891567, 19.043419, 16.867846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.185638, 19.106758, 16.604197>,  <4.362081, 19.144762, 16.446007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.185638, 19.106758, 16.604197>,  <3.891567, 19.043419, 16.867846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.185638, 19.106758, 16.604197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353969, -0.739570, -0.572488,
		-0.578117, 0.654189, -0.487665,
		0.735178, 0.158347, -0.659120,
		4.406192, 19.154263, 16.406460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.577980, 18.874058, 16.130468>,  <3.891567, 19.043419, 16.867846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.577980, 18.874058, 16.130468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.975520, 18.840059, 16.102079>,  <4.214044, 18.819660, 16.085047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.975520, 18.840059, 16.102079>,  <3.577980, 18.874058, 16.130468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.975520, 18.840059, 16.102079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107756, -0.889965, -0.443115,
		-0.025500, 0.448037, -0.893651,
		0.993850, -0.084997, -0.070973,
		4.273675, 18.814560, 16.080788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.646029, 18.491625, 15.551476>,  <3.577980, 18.874058, 16.130468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.646029, 18.491625, 15.551476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.991520, 18.446577, 15.747960>,  <4.198815, 18.419548, 15.865850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.991520, 18.446577, 15.747960>,  <3.646029, 18.491625, 15.551476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.991520, 18.446577, 15.747960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044543, -0.953835, -0.297008,
		0.501984, 0.278415, -0.818839,
		0.863729, -0.112620, 0.491211,
		4.250639, 18.412790, 15.895324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.013232, 18.166386, 15.097102>,  <3.646029, 18.491625, 15.551476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.013232, 18.166386, 15.097102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.231391, 18.085960, 15.422584>,  <4.362287, 18.037704, 15.617872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.231391, 18.085960, 15.422584>,  <4.013232, 18.166386, 15.097102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.231391, 18.085960, 15.422584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113352, -0.944191, -0.309282,
		0.830477, 0.260917, -0.492168,
		0.545398, -0.201064, 0.813704,
		4.395011, 18.025640, 15.666695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.646974, 17.744780, 14.847976>,  <4.013232, 18.166386, 15.097102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.646974, 17.744780, 14.847976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.535217, 17.669237, 15.224544>,  <4.468163, 17.623911, 15.450484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.535217, 17.669237, 15.224544>,  <4.646974, 17.744780, 14.847976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.535217, 17.669237, 15.224544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180395, -0.973330, -0.141723,
		0.943079, 0.130231, 0.306010,
		-0.279392, -0.188858, 0.941420,
		4.451399, 17.612579, 15.506969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.067875, 17.187851, 14.976618>,  <4.646974, 17.744780, 14.847976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.067875, 17.187851, 14.976618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.811345, 17.152628, 15.281497>,  <4.657426, 17.131495, 15.464424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.811345, 17.152628, 15.281497>,  <5.067875, 17.187851, 14.976618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.811345, 17.152628, 15.281497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005595, -0.992829, -0.119410,
		0.767248, -0.080845, 0.636235,
		-0.641326, -0.088057, 0.762198,
		4.618947, 17.126211, 15.510157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.254136, 16.698750, 15.425549>,  <5.067875, 17.187851, 14.976618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.254136, 16.698750, 15.425549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.862680, 16.711800, 15.506740>,  <4.627807, 16.719629, 15.555454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.862680, 16.711800, 15.506740>,  <5.254136, 16.698750, 15.425549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.862680, 16.711800, 15.506740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045621, -0.997175, -0.059680,
		0.200457, -0.067665, 0.977363,
		-0.978640, 0.032625, 0.202978,
		4.569088, 16.721588, 15.567633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.754895, 16.253345, 15.490757>,  <5.254136, 16.698750, 15.425549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.754895, 16.253345, 15.490757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.139631, 16.149561, 15.525507>,  <6.370472, 16.087290, 15.546357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.139631, 16.149561, 15.525507>,  <5.754895, 16.253345, 15.490757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.139631, 16.149561, 15.525507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127573, 0.706131, 0.696494,
		-0.242058, -0.658832, 0.712284,
		0.961838, -0.259461, 0.086875,
		6.428182, 16.071722, 15.551570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.866871, 16.263395, 16.205627>,  <5.754895, 16.253345, 15.490757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.866871, 16.263395, 16.205627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.222994, 16.299809, 16.027161>,  <6.436667, 16.321655, 15.920080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.222994, 16.299809, 16.027161>,  <5.866871, 16.263395, 16.205627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.222994, 16.299809, 16.027161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253561, 0.714747, 0.651800,
		0.378231, -0.693433, 0.613263,
		0.890308, 0.091032, -0.446167,
		6.490086, 16.327118, 15.893311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.416451, 16.302074, 16.739458>,  <5.866871, 16.263395, 16.205627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.416451, 16.302074, 16.739458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.593539, 16.464832, 16.419849>,  <6.699792, 16.562487, 16.228085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.593539, 16.464832, 16.419849>,  <6.416451, 16.302074, 16.739458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.593539, 16.464832, 16.419849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430557, 0.685185, 0.587488,
		0.786523, -0.604117, 0.128153,
		0.442720, 0.406896, -0.799021,
		6.726356, 16.586901, 16.180143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.233297, 16.271955, 16.865295>,  <6.416451, 16.302074, 16.739458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.233297, 16.271955, 16.865295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.144851, 16.526665, 16.569828>,  <7.091783, 16.679491, 16.392548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.144851, 16.526665, 16.569828>,  <7.233297, 16.271955, 16.865295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.144851, 16.526665, 16.569828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343844, 0.759679, 0.551960,
		0.912622, -0.131939, -0.386928,
		-0.221116, 0.636774, -0.738666,
		7.078516, 16.717697, 16.348228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.749214, 16.790880, 16.842306>,  <7.233297, 16.271955, 16.865295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.749214, 16.790880, 16.842306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.522217, 16.998905, 16.586967>,  <7.386019, 17.123720, 16.433764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.522217, 16.998905, 16.586967>,  <7.749214, 16.790880, 16.842306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.522217, 16.998905, 16.586967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273426, 0.850311, 0.449677,
		0.776654, 0.080647, -0.624743,
		-0.567491, 0.520065, -0.638347,
		7.351970, 17.154924, 16.395464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.189697, 17.242319, 16.498806>,  <7.749214, 16.790880, 16.842306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.189697, 17.242319, 16.498806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.817373, 17.388195, 16.508545>,  <7.593978, 17.475721, 16.514387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.817373, 17.388195, 16.508545>,  <8.189697, 17.242319, 16.498806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.817373, 17.388195, 16.508545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356901, 0.892519, 0.275736,
		0.078830, 0.265347, -0.960925,
		-0.930810, 0.364692, 0.024345,
		7.538130, 17.497602, 16.515848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.180494, 18.003517, 16.228088>,  <8.189697, 17.242319, 16.498806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.180494, 18.003517, 16.228088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.836468, 17.997377, 16.432070>,  <7.630052, 17.993694, 16.554459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.836468, 17.997377, 16.432070>,  <8.180494, 18.003517, 16.228088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.836468, 17.997377, 16.432070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181493, 0.924957, 0.333938,
		-0.476810, 0.379761, -0.792738,
		-0.860066, -0.015349, 0.509952,
		7.578448, 17.992773, 16.585056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.802875, 18.704451, 16.091576>,  <8.180494, 18.003517, 16.228088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.802875, 18.704451, 16.091576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.670902, 18.511858, 16.416370>,  <7.591718, 18.396303, 16.611246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.670902, 18.511858, 16.416370>,  <7.802875, 18.704451, 16.091576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.670902, 18.511858, 16.416370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208530, 0.801728, 0.560132,
		-0.920684, 0.354129, -0.164113,
		-0.329933, -0.481482, 0.811985,
		7.571922, 18.367413, 16.659966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.378589, 19.256201, 16.414572>,  <7.802875, 18.704451, 16.091576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.378589, 19.256201, 16.414572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.473749, 18.972960, 16.680502>,  <7.530846, 18.803015, 16.840061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.473749, 18.972960, 16.680502>,  <7.378589, 19.256201, 16.414572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.473749, 18.972960, 16.680502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196293, 0.705406, 0.681081,
		-0.951248, -0.031529, 0.306812,
		0.237901, -0.708102, 0.664827,
		7.545119, 18.760529, 16.879950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.054215, 19.600552, 16.910360>,  <7.378589, 19.256201, 16.414572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.054215, 19.600552, 16.910360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.282798, 19.321745, 17.083614>,  <7.419948, 19.154461, 17.187567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.282798, 19.321745, 17.083614>,  <7.054215, 19.600552, 16.910360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.282798, 19.321745, 17.083614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198260, 0.629435, 0.751335,
		-0.796323, -0.343482, 0.497885,
		0.571457, -0.697016, 0.433135,
		7.454235, 19.112640, 17.213554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.709052, 19.434261, 17.515013>,  <7.054215, 19.600552, 16.910360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.709052, 19.434261, 17.515013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.087667, 19.320368, 17.575663>,  <7.314837, 19.252031, 17.612053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.087667, 19.320368, 17.575663>,  <6.709052, 19.434261, 17.515013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.087667, 19.320368, 17.575663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020407, 0.521940, 0.852738,
		-0.321944, -0.804056, 0.499847,
		0.946539, -0.284734, 0.151626,
		7.371629, 19.234947, 17.621151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.713264, 19.475897, 18.213413>,  <6.709052, 19.434261, 17.515013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.713264, 19.475897, 18.213413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.099919, 19.489973, 18.111927>,  <7.331913, 19.498419, 18.051035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.099919, 19.489973, 18.111927>,  <6.713264, 19.475897, 18.213413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.099919, 19.489973, 18.111927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215871, 0.421235, 0.880886,
		0.137874, -0.906269, 0.399585,
		0.966639, 0.035192, -0.253715,
		7.389911, 19.500530, 18.035812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.153116, 19.127781, 18.763456>,  <6.713264, 19.475897, 18.213413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.153116, 19.127781, 18.763456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.391940, 19.367764, 18.550451>,  <7.535235, 19.511753, 18.422649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.391940, 19.367764, 18.550451>,  <7.153116, 19.127781, 18.763456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.391940, 19.367764, 18.550451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361188, 0.391670, 0.846249,
		0.716283, -0.697599, 0.017153,
		0.597061, 0.599958, -0.532511,
		7.571058, 19.547750, 18.390697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.762093, 19.204025, 19.165352>,  <7.153116, 19.127781, 18.763456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.762093, 19.204025, 19.165352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.791269, 19.503441, 18.901726>,  <7.808775, 19.683090, 18.743549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.791269, 19.503441, 18.901726>,  <7.762093, 19.204025, 19.165352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.791269, 19.503441, 18.901726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347769, 0.600260, 0.720239,
		0.934739, -0.281738, -0.216535,
		0.072941, 0.748540, -0.659066,
		7.813152, 19.728003, 18.704006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.451805, 19.457546, 19.262671>,  <7.762093, 19.204025, 19.165352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.451805, 19.457546, 19.262671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.210539, 19.745316, 19.124905>,  <8.065779, 19.917976, 19.042244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.210539, 19.745316, 19.124905>,  <8.451805, 19.457546, 19.262671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.210539, 19.745316, 19.124905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329975, 0.618192, 0.713410,
		0.726159, 0.316656, -0.610264,
		-0.603166, 0.719421, -0.344417,
		8.029589, 19.961142, 19.021580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.763983, 20.130854, 19.350080>,  <8.451805, 19.457546, 19.262671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.763983, 20.130854, 19.350080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.399964, 20.274460, 19.267212>,  <8.181553, 20.360624, 19.217491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.399964, 20.274460, 19.267212>,  <8.763983, 20.130854, 19.350080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.399964, 20.274460, 19.267212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271150, 0.893656, 0.357570,
		0.313515, 0.269231, -0.910617,
		-0.910047, 0.359017, -0.207173,
		8.126950, 20.382166, 19.205059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.900640, 20.819613, 19.110712>,  <8.763983, 20.130854, 19.350080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.900640, 20.819613, 19.110712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.526523, 20.791819, 19.249504>,  <8.302052, 20.775143, 19.332779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.526523, 20.791819, 19.249504>,  <8.900640, 20.819613, 19.110712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.526523, 20.791819, 19.249504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118019, 0.863144, 0.490972,
		-0.333607, 0.500154, -0.799095,
		-0.935296, -0.069483, 0.346978,
		8.245934, 20.770973, 19.353598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.594845, 21.498434, 19.148340>,  <8.900640, 20.819613, 19.110712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.594845, 21.498434, 19.148340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.412106, 21.271431, 19.422340>,  <8.302462, 21.135229, 19.586740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.412106, 21.271431, 19.422340>,  <8.594845, 21.498434, 19.148340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.412106, 21.271431, 19.422340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099337, 0.732694, 0.673270,
		-0.883980, 0.375629, -0.278356,
		-0.456849, -0.567506, 0.685000,
		8.275051, 21.101179, 19.627840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.082782, 21.925436, 19.469435>,  <8.594845, 21.498434, 19.148340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.082782, 21.925436, 19.469435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.092912, 21.641848, 19.751348>,  <8.098989, 21.471695, 19.920496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.092912, 21.641848, 19.751348>,  <8.082782, 21.925436, 19.469435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.092912, 21.641848, 19.751348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013855, 0.705191, 0.708882,
		-0.999583, -0.008188, 0.027682,
		0.025326, -0.708970, 0.704784,
		8.100510, 21.429157, 19.962784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.576773, 22.119814, 19.915417>,  <8.082782, 21.925436, 19.469435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.576773, 22.119814, 19.915417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.794024, 21.859758, 20.127958>,  <7.924374, 21.703726, 20.255484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.794024, 21.859758, 20.127958>,  <7.576773, 22.119814, 19.915417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.794024, 21.859758, 20.127958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111020, 0.571664, 0.812942,
		-0.832279, -0.500520, 0.238307,
		0.543126, -0.650138, 0.531352,
		7.956961, 21.664717, 20.287363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.220182, 21.948957, 20.498455>,  <7.576773, 22.119814, 19.915417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.220182, 21.948957, 20.498455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.605229, 21.884003, 20.585173>,  <7.836257, 21.845030, 20.637203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.605229, 21.884003, 20.585173>,  <7.220182, 21.948957, 20.498455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.605229, 21.884003, 20.585173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088441, 0.568083, 0.818205,
		-0.256023, -0.806791, 0.532484,
		0.962616, -0.162385, 0.216796,
		7.894014, 21.835287, 20.650211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.642666, 11.185679, 24.210981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.256596, 11.081247, 24.204338>,  <19.024954, 11.018588, 24.200352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.256596, 11.081247, 24.204338>,  <19.642666, 11.185679, 24.210981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.256596, 11.081247, 24.204338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041749, -0.216397, 0.975412,
		-0.258254, 0.940750, 0.219760,
		-0.965174, -0.261079, -0.016610,
		18.967043, 11.002924, 24.199354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.214083, 11.482512, 24.760283>,  <19.642666, 11.185679, 24.210981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.214083, 11.482512, 24.760283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.987282, 11.161727, 24.685062>,  <18.851202, 10.969255, 24.639931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.987282, 11.161727, 24.685062>,  <19.214083, 11.482512, 24.760283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.987282, 11.161727, 24.685062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137647, -0.317331, 0.938272,
		-0.812134, 0.506118, 0.290315,
		-0.567002, -0.801964, -0.188049,
		18.817181, 10.921138, 24.628647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.781708, 11.298514, 25.384533>,  <19.214083, 11.482512, 24.760283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.781708, 11.298514, 25.384533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.758532, 10.951250, 25.187376>,  <18.744625, 10.742891, 25.069082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.758532, 10.951250, 25.187376>,  <18.781708, 11.298514, 25.384533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.758532, 10.951250, 25.187376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180647, -0.494687, 0.850089,
		-0.981840, -0.039784, 0.185493,
		-0.057941, -0.868160, -0.492890,
		18.741150, 10.690802, 25.039509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260597, 10.830255, 25.630945>,  <18.781708, 11.298514, 25.384533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.260597, 10.830255, 25.630945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.495651, 10.567248, 25.442326>,  <18.636684, 10.409445, 25.329153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.495651, 10.567248, 25.442326>,  <18.260597, 10.830255, 25.630945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.495651, 10.567248, 25.442326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128803, -0.499340, 0.856778,
		-0.798808, -0.564210, -0.208740,
		0.587636, -0.657515, -0.471549,
		18.671942, 10.369994, 25.300861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.871481, 10.229576, 25.724924>,  <18.260597, 10.830255, 25.630945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.871481, 10.229576, 25.724924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.243492, 10.112387, 25.636185>,  <18.466698, 10.042073, 25.582941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.243492, 10.112387, 25.636185>,  <17.871481, 10.229576, 25.724924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.243492, 10.112387, 25.636185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080757, -0.751859, 0.654360,
		-0.358507, -0.590657, -0.722909,
		0.930027, -0.292973, -0.221847,
		18.522501, 10.024495, 25.569630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.728109, 9.552911, 25.611679>,  <17.871481, 10.229576, 25.724924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.728109, 9.552911, 25.611679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.118179, 9.593154, 25.690580>,  <18.352222, 9.617300, 25.737921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.118179, 9.593154, 25.690580>,  <17.728109, 9.552911, 25.611679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118179, 9.593154, 25.690580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061540, -0.732584, 0.677889,
		0.212708, -0.673201, -0.708206,
		0.975176, 0.100609, 0.197255,
		18.410732, 9.623337, 25.749758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.951418, 8.885704, 25.770018>,  <17.728109, 9.552911, 25.611679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.951418, 8.885704, 25.770018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.242773, 9.100164, 25.940659>,  <18.417587, 9.228841, 26.043043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.242773, 9.100164, 25.940659>,  <17.951418, 8.885704, 25.770018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.242773, 9.100164, 25.940659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044596, -0.584211, 0.810376,
		0.683711, -0.609293, -0.401623,
		0.728389, 0.536152, 0.426603,
		18.461290, 9.261010, 26.068640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.397343, 8.430323, 25.861324>,  <17.951418, 8.885704, 25.770018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.397343, 8.430323, 25.861324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.509943, 8.715338, 26.118399>,  <18.577503, 8.886347, 26.272644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.509943, 8.715338, 26.118399>,  <18.397343, 8.430323, 25.861324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.509943, 8.715338, 26.118399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096696, -0.645298, 0.757787,
		0.954677, -0.275462, -0.112751,
		0.281499, 0.712539, 0.642687,
		18.594393, 8.929099, 26.311205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.893856, 8.167360, 26.146376>,  <18.397343, 8.430323, 25.861324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.893856, 8.167360, 26.146376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.756361, 8.455417, 26.387453>,  <18.673864, 8.628250, 26.532101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.756361, 8.455417, 26.387453>,  <18.893856, 8.167360, 26.146376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.756361, 8.455417, 26.387453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061312, -0.657645, 0.750829,
		0.937062, 0.221137, 0.270211,
		-0.343739, 0.720140, 0.602695,
		18.653240, 8.671459, 26.568262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.279903, 8.003897, 26.796906>,  <18.893856, 8.167360, 26.146376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.279903, 8.003897, 26.796906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.997736, 8.251346, 26.935289>,  <18.828436, 8.399815, 27.018320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.997736, 8.251346, 26.935289>,  <19.279903, 8.003897, 26.796906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.997736, 8.251346, 26.935289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100691, -0.570614, 0.815022,
		0.701601, 0.540098, 0.464812,
		-0.705420, 0.618623, 0.345960,
		18.786110, 8.436933, 27.039078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.411903, 8.159462, 27.533314>,  <19.279903, 8.003897, 26.796906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.411903, 8.159462, 27.533314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.020826, 8.206813, 27.463915>,  <18.786180, 8.235224, 27.422276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.020826, 8.206813, 27.463915>,  <19.411903, 8.159462, 27.533314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.020826, 8.206813, 27.463915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208352, -0.651002, 0.729922,
		-0.026541, 0.749789, 0.661145,
		-0.977694, 0.118378, -0.173499,
		18.727518, 8.242326, 27.411865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.063543, 8.250945, 28.247797>,  <19.411903, 8.159462, 27.533314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.063543, 8.250945, 28.247797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.775667, 8.152710, 27.988035>,  <18.602942, 8.093769, 27.832178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.775667, 8.152710, 27.988035>,  <19.063543, 8.250945, 28.247797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.775667, 8.152710, 27.988035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370666, -0.654986, 0.658482,
		-0.587068, 0.714618, 0.380357,
		-0.719692, -0.245589, -0.649407,
		18.559759, 8.079033, 27.793213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.419718, 8.280607, 28.588200>,  <19.063543, 8.250945, 28.247797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.419718, 8.280607, 28.588200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.370350, 8.025719, 28.283905>,  <18.340729, 7.872786, 28.101328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.370350, 8.025719, 28.283905>,  <18.419718, 8.280607, 28.588200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.370350, 8.025719, 28.283905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384424, -0.676037, 0.628643,
		-0.914869, 0.370033, -0.161526,
		-0.123421, -0.637220, -0.760735,
		18.333324, 7.834553, 28.055685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.796885, 8.656505, 28.453800>,  <18.419718, 8.280607, 28.588200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.796885, 8.656505, 28.453800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.916248, 8.466627, 28.122593>,  <17.987867, 8.352700, 27.923868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.916248, 8.466627, 28.122593>,  <17.796885, 8.656505, 28.453800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916248, 8.466627, 28.122593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009894, -0.865963, 0.500011,
		-0.954387, -0.157401, -0.253715,
		0.298409, -0.474694, -0.828020,
		18.005772, 8.324219, 27.874187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866627, 9.032022, 29.169107>,  <17.796885, 8.656505, 28.453800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.866627, 9.032022, 29.169107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.621037, 9.318873, 29.301023>,  <17.473682, 9.490985, 29.380173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.621037, 9.318873, 29.301023>,  <17.866627, 9.032022, 29.169107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.621037, 9.318873, 29.301023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058044, 0.457701, -0.887209,
		-0.787190, -0.525580, -0.322641,
		-0.613973, 0.717130, 0.329791,
		17.436844, 9.534012, 29.399961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386120, 9.239961, 28.641821>,  <17.866627, 9.032022, 29.169107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.386120, 9.239961, 28.641821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.369648, 9.560272, 28.880838>,  <17.359764, 9.752460, 29.024248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.369648, 9.560272, 28.880838>,  <17.386120, 9.239961, 28.641821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.369648, 9.560272, 28.880838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122115, 0.597599, -0.792441,
		-0.991661, 0.040336, -0.122397,
		-0.041180, 0.800780, 0.597542,
		17.357294, 9.800507, 29.060101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.970446, 9.633625, 28.328711>,  <17.386120, 9.239961, 28.641821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.970446, 9.633625, 28.328711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.158752, 9.879776, 28.581594>,  <17.271736, 10.027467, 28.733326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.158752, 9.879776, 28.581594>,  <16.970446, 9.633625, 28.328711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.158752, 9.879776, 28.581594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062445, 0.691545, -0.719630,
		-0.880046, 0.378255, 0.287128,
		0.470766, 0.615377, 0.632211,
		17.299982, 10.064389, 28.771257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.592768, 10.258086, 28.274891>,  <16.970446, 9.633625, 28.328711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.592768, 10.258086, 28.274891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.965467, 10.332275, 28.399754>,  <17.189087, 10.376789, 28.474670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.965467, 10.332275, 28.399754>,  <16.592768, 10.258086, 28.274891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.965467, 10.332275, 28.399754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065576, 0.759607, -0.647068,
		-0.357130, 0.623375, 0.695602,
		0.931750, 0.185473, 0.312157,
		17.244993, 10.387918, 28.493401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.566694, 10.976138, 28.429745>,  <16.592768, 10.258086, 28.274891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.566694, 10.976138, 28.429745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.953876, 10.899843, 28.364403>,  <17.186186, 10.854066, 28.325197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.953876, 10.899843, 28.364403>,  <16.566694, 10.976138, 28.429745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.953876, 10.899843, 28.364403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017530, 0.700221, -0.713711,
		0.250517, 0.687975, 0.681125,
		0.967953, -0.190737, -0.163357,
		17.244263, 10.842622, 28.315395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.776535, 11.593742, 28.293089>,  <16.566694, 10.976138, 28.429745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.776535, 11.593742, 28.293089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.078142, 11.364485, 28.164738>,  <17.259106, 11.226931, 28.087727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.078142, 11.364485, 28.164738>,  <16.776535, 11.593742, 28.293089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.078142, 11.364485, 28.164738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121882, 0.602107, -0.789058,
		0.645447, 0.555854, 0.523855,
		0.754018, -0.573144, -0.320879,
		17.304348, 11.192542, 28.068474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.216621, 12.155392, 28.056932>,  <16.776535, 11.593742, 28.293089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.216621, 12.155392, 28.056932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.305218, 11.798905, 27.898602>,  <17.358376, 11.585013, 27.803604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.305218, 11.798905, 27.898602>,  <17.216621, 12.155392, 28.056932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.305218, 11.798905, 27.898602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186628, 0.437145, -0.879815,
		0.957138, 0.120998, 0.263149,
		0.221490, -0.891215, -0.395826,
		17.371664, 11.531541, 27.779854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.889288, 12.283056, 27.786489>,  <17.216621, 12.155392, 28.056932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.889288, 12.283056, 27.786489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.756390, 11.949759, 27.609711>,  <17.676651, 11.749780, 27.503643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.756390, 11.949759, 27.609711>,  <17.889288, 12.283056, 27.786489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.756390, 11.949759, 27.609711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206955, 0.392743, -0.896059,
		0.920208, -0.389174, 0.041957,
		-0.332245, -0.833244, -0.441947,
		17.656715, 11.699785, 27.477127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.303720, 12.207184, 27.223457>,  <17.889288, 12.283056, 27.786489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.303720, 12.207184, 27.223457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.006321, 11.973572, 27.093153>,  <17.827881, 11.833405, 27.014971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.006321, 11.973572, 27.093153>,  <18.303720, 12.207184, 27.223457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.006321, 11.973572, 27.093153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117770, 0.365167, -0.923463,
		0.658287, -0.724957, -0.202720,
		-0.743497, -0.584029, -0.325763,
		17.783272, 11.798363, 26.995424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.484558, 11.832801, 26.705687>,  <18.303720, 12.207184, 27.223457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.484558, 11.832801, 26.705687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.086670, 11.863736, 26.678698>,  <17.847937, 11.882298, 26.662504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.086670, 11.863736, 26.678698>,  <18.484558, 11.832801, 26.705687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.086670, 11.863736, 26.678698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091936, 0.379178, -0.920745,
		-0.045624, -0.922086, -0.384285,
		-0.994719, 0.077338, -0.067474,
		17.788254, 11.886937, 26.658455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.436657, 11.630279, 26.064264>,  <18.484558, 11.832801, 26.705687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.436657, 11.630279, 26.064264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.085382, 11.805787, 26.140446>,  <17.874619, 11.911092, 26.186155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.085382, 11.805787, 26.140446>,  <18.436657, 11.630279, 26.064264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.085382, 11.805787, 26.140446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011926, 0.418134, -0.908307,
		-0.478174, -0.795389, -0.372432,
		-0.878184, 0.438770, 0.190455,
		17.821928, 11.937418, 26.197582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.910423, 11.510286, 25.532215>,  <18.436657, 11.630279, 26.064264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.910423, 11.510286, 25.532215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.828922, 11.861581, 25.705276>,  <17.780022, 12.072357, 25.809113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.828922, 11.861581, 25.705276>,  <17.910423, 11.510286, 25.532215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.828922, 11.861581, 25.705276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111431, 0.459853, -0.880976,
		-0.972661, -0.131288, -0.191558,
		-0.203750, 0.878236, 0.432652,
		17.767797, 12.125051, 25.835072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.408140, 11.875462, 24.994225>,  <17.910423, 11.510286, 25.532215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.408140, 11.875462, 24.994225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.502920, 12.170056, 25.247663>,  <17.559788, 12.346813, 25.399727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.502920, 12.170056, 25.247663>,  <17.408140, 11.875462, 24.994225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.502920, 12.170056, 25.247663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122985, 0.669660, -0.732414,
		-0.963706, 0.095622, 0.249252,
		0.236949, 0.736486, 0.633595,
		17.574005, 12.391003, 25.437742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860273, 12.379736, 24.888443>,  <17.408140, 11.875462, 24.994225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860273, 12.379736, 24.888443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.181938, 12.563597, 25.039198>,  <17.374937, 12.673913, 25.129652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.181938, 12.563597, 25.039198>,  <16.860273, 12.379736, 24.888443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.181938, 12.563597, 25.039198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002911, 0.631001, -0.775777,
		-0.594405, 0.624946, 0.506088,
		0.804160, 0.459652, 0.376890,
		17.423185, 12.701492, 25.152266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.258730, 12.754457, 25.162584>,  <16.860273, 12.379736, 24.888443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.258730, 12.754457, 25.162584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.893074, 12.914324, 25.135414>,  <15.673680, 13.010243, 25.119112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.893074, 12.914324, 25.135414>,  <16.258730, 12.754457, 25.162584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893074, 12.914324, 25.135414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177416, -0.243750, 0.953472,
		0.364515, 0.883659, 0.293729,
		-0.914140, 0.399667, -0.067925,
		15.618832, 13.034224, 25.115036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.167978, 13.068225, 25.815958>,  <16.258730, 12.754457, 25.162584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.167978, 13.068225, 25.815958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.801947, 13.037361, 25.657631>,  <15.582327, 13.018843, 25.562634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.801947, 13.037361, 25.657631>,  <16.167978, 13.068225, 25.815958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.801947, 13.037361, 25.657631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370209, -0.228479, 0.900412,
		-0.159912, 0.970486, 0.180512,
		-0.915081, -0.077160, -0.395819,
		15.527422, 13.014214, 25.538885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.757977, 13.413383, 26.301386>,  <16.167978, 13.068225, 25.815958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.757977, 13.413383, 26.301386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.527678, 13.165518, 26.088018>,  <15.389500, 13.016798, 25.959997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.527678, 13.165518, 26.088018>,  <15.757977, 13.413383, 26.301386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.527678, 13.165518, 26.088018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434562, -0.320709, 0.841607,
		-0.692585, 0.716353, -0.084636,
		-0.575744, -0.619664, -0.533418,
		15.354956, 12.979619, 25.927994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.132000, 13.546449, 26.394199>,  <15.757977, 13.413383, 26.301386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.132000, 13.546449, 26.394199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.081278, 13.173802, 26.257957>,  <15.050844, 12.950214, 26.176212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.081278, 13.173802, 26.257957>,  <15.132000, 13.546449, 26.394199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.081278, 13.173802, 26.257957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533954, -0.225274, 0.814951,
		-0.835951, 0.285208, -0.468874,
		-0.126806, -0.931616, -0.340606,
		15.043236, 12.894318, 26.155775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472339, 13.373357, 26.580584>,  <15.132000, 13.546449, 26.394199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.472339, 13.373357, 26.580584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.673356, 13.033363, 26.517366>,  <14.793966, 12.829368, 26.479435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.673356, 13.033363, 26.517366>,  <14.472339, 13.373357, 26.580584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673356, 13.033363, 26.517366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363259, -0.373481, 0.853554,
		-0.784534, -0.371537, -0.496455,
		0.502543, -0.849984, -0.158044,
		14.824120, 12.778368, 26.469954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.063550, 12.937468, 26.955170>,  <14.472339, 13.373357, 26.580584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.063550, 12.937468, 26.955170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.392919, 12.719003, 26.893608>,  <14.590540, 12.587924, 26.856670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.392919, 12.719003, 26.893608>,  <14.063550, 12.937468, 26.955170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.392919, 12.719003, 26.893608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163687, -0.488327, 0.857172,
		-0.543312, -0.680619, -0.491498,
		0.823419, -0.546163, -0.153906,
		14.639945, 12.555155, 26.847437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.897445, 12.317622, 27.237627>,  <14.063550, 12.937468, 26.955170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.897445, 12.317622, 27.237627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.296842, 12.336601, 27.226587>,  <14.536480, 12.347989, 27.219963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.296842, 12.336601, 27.226587>,  <13.897445, 12.317622, 27.237627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.296842, 12.336601, 27.226587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048091, -0.513804, 0.856559,
		0.026463, -0.856595, -0.515311,
		0.998492, 0.047448, -0.027598,
		14.596390, 12.350836, 27.218307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.582373, 11.680119, 26.914635>,  <13.897445, 12.317622, 27.237627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.582373, 11.680119, 26.914635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.238316, 11.481668, 26.867283>,  <13.031881, 11.362598, 26.838871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.238316, 11.481668, 26.867283>,  <13.582373, 11.680119, 26.914635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.238316, 11.481668, 26.867283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011807, 0.251397, -0.967812,
		0.509916, -0.831059, -0.222095,
		-0.860144, -0.496125, -0.118379,
		12.980272, 11.332831, 26.831770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.699246, 11.210384, 26.285570>,  <13.582373, 11.680119, 26.914635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.699246, 11.210384, 26.285570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.313974, 11.291826, 26.355803>,  <13.082811, 11.340692, 26.397942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.313974, 11.291826, 26.355803>,  <13.699246, 11.210384, 26.285570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.313974, 11.291826, 26.355803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097352, 0.344619, -0.933681,
		-0.250611, -0.916396, -0.312109,
		-0.963180, 0.203606, 0.175579,
		13.025021, 11.352908, 26.408476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.206027, 10.946696, 25.766588>,  <13.699246, 11.210384, 26.285570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.206027, 10.946696, 25.766588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.010229, 11.244525, 25.948141>,  <12.892751, 11.423223, 26.057072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.010229, 11.244525, 25.948141>,  <13.206027, 10.946696, 25.766588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.010229, 11.244525, 25.948141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107635, 0.464930, -0.878780,
		-0.865338, -0.479012, -0.147439,
		-0.489495, 0.744572, 0.453880,
		12.863380, 11.467896, 26.084305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.654037, 11.077248, 25.351759>,  <13.206027, 10.946696, 25.766588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.654037, 11.077248, 25.351759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.652638, 11.408882, 25.575403>,  <12.651799, 11.607862, 25.709589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.652638, 11.408882, 25.575403>,  <12.654037, 11.077248, 25.351759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.652638, 11.408882, 25.575403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244818, 0.541390, -0.804339,
		-0.969563, -0.139694, 0.201081,
		-0.003498, 0.829085, 0.559111,
		12.651589, 11.657608, 25.743137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.965952, 11.506050, 25.225014>,  <12.654037, 11.077248, 25.351759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.965952, 11.506050, 25.225014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.263660, 11.745178, 25.344126>,  <12.442286, 11.888656, 25.415592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.263660, 11.745178, 25.344126>,  <11.965952, 11.506050, 25.225014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.263660, 11.745178, 25.344126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111874, 0.551150, -0.826872,
		-0.658442, 0.582103, 0.477085,
		0.744270, 0.597821, 0.297778,
		12.486941, 11.924524, 25.433458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.684425, 12.104474, 24.733498>,  <11.965952, 11.506050, 25.225014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.684425, 12.104474, 24.733498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.028769, 12.197070, 24.914751>,  <12.235376, 12.252628, 25.023504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.028769, 12.197070, 24.914751>,  <11.684425, 12.104474, 24.733498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.028769, 12.197070, 24.914751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174743, 0.701872, -0.690536,
		-0.477896, 0.673637, 0.563763,
		0.860860, 0.231491, 0.453135,
		12.287027, 12.266518, 25.050692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.698624, 12.855894, 24.826754>,  <11.684425, 12.104474, 24.733498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.698624, 12.855894, 24.826754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.080281, 12.739358, 24.854267>,  <12.309276, 12.669436, 24.870775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.080281, 12.739358, 24.854267>,  <11.698624, 12.855894, 24.826754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.080281, 12.739358, 24.854267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256675, 0.677983, -0.688809,
		0.154043, 0.674877, 0.721673,
		0.954143, -0.291341, 0.068785,
		12.366524, 12.651956, 24.874903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<15.925555, 5.984359, 26.944864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.951007, 6.373440, 27.034132>,  <15.966278, 6.606888, 27.087692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.951007, 6.373440, 27.034132>,  <15.925555, 5.984359, 26.944864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.951007, 6.373440, 27.034132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025840, 0.225152, -0.973981,
		-0.997639, 0.056207, 0.039461,
		0.063629, 0.972701, 0.223168,
		15.970096, 6.665250, 27.101082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424774, 6.603050, 26.722595>,  <15.925555, 5.984359, 26.944864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.424774, 6.603050, 26.722595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.796222, 6.751194, 26.713659>,  <16.019091, 6.840081, 26.708298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.796222, 6.751194, 26.713659>,  <15.424774, 6.603050, 26.722595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.796222, 6.751194, 26.713659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166677, 0.362611, -0.916915,
		-0.331489, 0.855188, 0.398458,
		0.928619, 0.370361, -0.022339,
		16.074808, 6.862303, 26.706957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.427618, 7.259136, 26.553766>,  <15.424774, 6.603050, 26.722595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.427618, 7.259136, 26.553766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.797105, 7.150423, 26.445780>,  <16.018797, 7.085195, 26.380987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.797105, 7.150423, 26.445780>,  <15.427618, 7.259136, 26.553766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.797105, 7.150423, 26.445780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155187, 0.378827, -0.912364,
		0.350235, 0.884661, 0.307751,
		0.923717, -0.271783, -0.269967,
		16.074221, 7.068888, 26.364790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.704017, 7.774307, 26.031279>,  <15.427618, 7.259136, 26.553766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.704017, 7.774307, 26.031279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.993458, 7.499275, 26.007170>,  <16.167122, 7.334256, 25.992704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.993458, 7.499275, 26.007170>,  <15.704017, 7.774307, 26.031279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.993458, 7.499275, 26.007170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149854, 0.241744, -0.958699,
		0.673752, 0.684686, 0.277963,
		0.723604, -0.687579, -0.060273,
		16.210539, 7.293002, 25.989088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245613, 8.137423, 25.744141>,  <15.704017, 7.774307, 26.031279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.245613, 8.137423, 25.744141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.290573, 7.746737, 25.671045>,  <16.317549, 7.512325, 25.627188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.290573, 7.746737, 25.671045>,  <16.245613, 8.137423, 25.744141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.290573, 7.746737, 25.671045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052406, 0.189474, -0.980486,
		0.992280, 0.100632, 0.072483,
		0.112402, -0.976715, -0.182738,
		16.324293, 7.453722, 25.616224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.804562, 8.054666, 25.187569>,  <16.245613, 8.137423, 25.744141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.804562, 8.054666, 25.187569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.608131, 7.706717, 25.168932>,  <16.490273, 7.497949, 25.157749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.608131, 7.706717, 25.168932>,  <16.804562, 8.054666, 25.187569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.608131, 7.706717, 25.168932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055042, 0.084365, -0.994913,
		0.869376, -0.486013, -0.089309,
		-0.491076, -0.869870, -0.046594,
		16.460808, 7.445756, 25.154953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242651, 7.613814, 24.783373>,  <16.804562, 8.054666, 25.187569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.242651, 7.613814, 24.783373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.856977, 7.510919, 24.757513>,  <16.625574, 7.449182, 24.741997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.856977, 7.510919, 24.757513>,  <17.242651, 7.613814, 24.783373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.856977, 7.510919, 24.757513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043703, 0.086337, -0.995307,
		0.261614, -0.962483, -0.072003,
		-0.964183, -0.257240, -0.064651,
		16.567722, 7.433747, 24.738117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.151127, 7.224336, 24.186846>,  <17.242651, 7.613814, 24.783373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.151127, 7.224336, 24.186846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.778296, 7.338466, 24.276125>,  <16.554596, 7.406943, 24.329693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.778296, 7.338466, 24.276125>,  <17.151127, 7.224336, 24.186846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.778296, 7.338466, 24.276125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157885, 0.234574, -0.959191,
		-0.326037, -0.929282, -0.173593,
		-0.932080, 0.285324, 0.223200,
		16.498672, 7.424063, 24.343084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.762249, 6.867973, 23.695276>,  <17.151127, 7.224336, 24.186846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.762249, 6.867973, 23.695276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.544704, 7.178966, 23.821600>,  <16.414177, 7.365561, 23.897394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.544704, 7.178966, 23.821600>,  <16.762249, 6.867973, 23.695276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.544704, 7.178966, 23.821600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215503, 0.234314, -0.947974,
		-0.811032, -0.583625, 0.040115,
		-0.543862, 0.777482, 0.315809,
		16.381546, 7.412210, 23.916344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.117146, 6.864701, 23.349897>,  <16.762249, 6.867973, 23.695276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.117146, 6.864701, 23.349897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.120071, 7.240333, 23.487347>,  <16.121826, 7.465712, 23.569817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.120071, 7.240333, 23.487347>,  <16.117146, 6.864701, 23.349897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.120071, 7.240333, 23.487347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145583, 0.340970, -0.928733,
		-0.989319, -0.043233, 0.139208,
		0.007314, 0.939079, 0.343622,
		16.122265, 7.522057, 23.590433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.462521, 7.116592, 23.174286>,  <16.117146, 6.864701, 23.349897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.462521, 7.116592, 23.174286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.666995, 7.456476, 23.225948>,  <15.789680, 7.660406, 23.256947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.666995, 7.456476, 23.225948>,  <15.462521, 7.116592, 23.174286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.666995, 7.456476, 23.225948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241707, 0.286337, -0.927140,
		-0.824782, 0.442724, 0.351753,
		0.511187, 0.849710, 0.129156,
		15.820352, 7.711389, 23.264694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040735, 7.688285, 22.976542>,  <15.462521, 7.116592, 23.174286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.040735, 7.688285, 22.976542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.416215, 7.822238, 22.943806>,  <15.641502, 7.902610, 22.924164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.416215, 7.822238, 22.943806>,  <15.040735, 7.688285, 22.976542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.416215, 7.822238, 22.943806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163250, 0.222723, -0.961116,
		-0.303633, 0.915559, 0.263739,
		0.938699, 0.334882, -0.081839,
		15.697824, 7.922703, 22.919254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.462774, 7.832563, 23.248491>,  <15.040735, 7.688285, 22.976542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.462774, 7.832563, 23.248491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.116281, 8.015694, 23.328524>,  <13.908384, 8.125572, 23.376543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.116281, 8.015694, 23.328524>,  <14.462774, 7.832563, 23.248491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.116281, 8.015694, 23.328524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115602, -0.205934, 0.971713,
		0.486080, 0.864862, 0.125462,
		-0.866235, 0.457826, 0.200081,
		13.856410, 8.153042, 23.388548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.502736, 7.980600, 23.916681>,  <14.462774, 7.832563, 23.248491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.502736, 7.980600, 23.916681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.124652, 8.094306, 23.852470>,  <13.897801, 8.162530, 23.813944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.124652, 8.094306, 23.852470>,  <14.502736, 7.980600, 23.916681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.124652, 8.094306, 23.852470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172018, -0.015764, 0.984968,
		0.277462, 0.958616, 0.063799,
		-0.945212, 0.284265, -0.160525,
		13.841088, 8.179585, 23.804314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.376426, 8.566521, 24.412260>,  <14.502736, 7.980600, 23.916681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.376426, 8.566521, 24.412260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.033086, 8.390637, 24.306511>,  <13.827082, 8.285108, 24.243061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.033086, 8.390637, 24.306511>,  <14.376426, 8.566521, 24.412260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.033086, 8.390637, 24.306511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214088, -0.161321, 0.963401,
		-0.466264, 0.883534, 0.044334,
		-0.858350, -0.439708, -0.264372,
		13.775580, 8.258725, 24.227200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.900232, 8.888782, 24.703911>,  <14.376426, 8.566521, 24.412260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.900232, 8.888782, 24.703911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.713080, 8.542308, 24.633698>,  <13.600789, 8.334423, 24.591570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.713080, 8.542308, 24.633698>,  <13.900232, 8.888782, 24.703911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.713080, 8.542308, 24.633698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332660, -0.011407, 0.942978,
		-0.818796, 0.499593, -0.282808,
		-0.467879, -0.866185, -0.175534,
		13.572717, 8.282453, 24.581038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.237527, 9.003094, 25.037773>,  <13.900232, 8.888782, 24.703911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.237527, 9.003094, 25.037773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.276088, 8.606597, 25.001667>,  <13.299224, 8.368699, 24.980003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.276088, 8.606597, 25.001667>,  <13.237527, 9.003094, 25.037773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.276088, 8.606597, 25.001667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453643, -0.124477, 0.882447,
		-0.885954, -0.044121, -0.461669,
		0.096402, -0.991241, -0.090266,
		13.305008, 8.309225, 24.974586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.570962, 8.629888, 25.067619>,  <13.237527, 9.003094, 25.037773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.570962, 8.629888, 25.067619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.853318, 8.371763, 25.184439>,  <13.022732, 8.216888, 25.254530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.853318, 8.371763, 25.184439>,  <12.570962, 8.629888, 25.067619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.853318, 8.371763, 25.184439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503884, -0.167711, 0.847333,
		-0.497815, -0.745282, -0.443548,
		0.705890, -0.645312, 0.292047,
		13.065085, 8.178169, 25.272053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.221532, 8.173809, 25.552761>,  <12.570962, 8.629888, 25.067619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.221532, 8.173809, 25.552761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.600561, 8.070196, 25.627602>,  <12.827979, 8.008028, 25.672506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.600561, 8.070196, 25.627602>,  <12.221532, 8.173809, 25.552761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.600561, 8.070196, 25.627602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280726, -0.395151, 0.874670,
		-0.152636, -0.881338, -0.447152,
		0.947574, -0.259033, 0.187100,
		12.884833, 7.992486, 25.683731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.237338, 7.516685, 25.879744>,  <12.221532, 8.173809, 25.552761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.237338, 7.516685, 25.879744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.589769, 7.668205, 25.993031>,  <12.801228, 7.759117, 26.061003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.589769, 7.668205, 25.993031>,  <12.237338, 7.516685, 25.879744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.589769, 7.668205, 25.993031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155608, -0.333313, 0.929886,
		0.446642, -0.863373, -0.234730,
		0.881077, 0.378800, 0.283220,
		12.854093, 7.781845, 26.077997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.527989, 6.986897, 26.190277>,  <12.237338, 7.516685, 25.879744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.527989, 6.986897, 26.190277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.717665, 7.317258, 26.312279>,  <12.831470, 7.515475, 26.385481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.717665, 7.317258, 26.312279>,  <12.527989, 6.986897, 26.190277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.717665, 7.317258, 26.312279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198273, -0.237357, 0.950973,
		0.857808, -0.511415, 0.051202,
		0.474188, 0.825904, 0.305006,
		12.859921, 7.565029, 26.403780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823918, 6.776241, 26.827873>,  <12.527989, 6.986897, 26.190277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823918, 6.776241, 26.827873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.822113, 7.175652, 26.849499>,  <12.821030, 7.415298, 26.862474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.822113, 7.175652, 26.849499>,  <12.823918, 6.776241, 26.827873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.822113, 7.175652, 26.849499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316428, -0.052713, 0.947151,
		0.948606, -0.012833, 0.316200,
		-0.004513, 0.998527, 0.054065,
		12.820759, 7.475210, 26.865719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371700, 6.911733, 27.357500>,  <12.823918, 6.776241, 26.827873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371700, 6.911733, 27.357500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.101247, 7.204906, 27.327433>,  <12.938974, 7.380811, 27.309393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.101247, 7.204906, 27.327433>,  <13.371700, 6.911733, 27.357500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.101247, 7.204906, 27.327433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174948, -0.060605, 0.982711,
		0.715707, 0.677594, 0.169203,
		-0.676134, 0.732935, -0.075169,
		12.898407, 7.424787, 27.304882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.512178, 7.280784, 27.962095>,  <13.371700, 6.911733, 27.357500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.512178, 7.280784, 27.962095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.157194, 7.412121, 27.832726>,  <12.944203, 7.490923, 27.755104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.157194, 7.412121, 27.832726>,  <13.512178, 7.280784, 27.962095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.157194, 7.412121, 27.832726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328741, 0.040866, 0.943536,
		0.323020, 0.943674, 0.071673,
		-0.887461, 0.328343, -0.323424,
		12.890956, 7.510624, 27.735699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.388190, 7.946290, 28.269207>,  <13.512178, 7.280784, 27.962095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.388190, 7.946290, 28.269207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.026336, 7.809923, 28.166906>,  <12.809223, 7.728104, 28.105526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.026336, 7.809923, 28.166906>,  <13.388190, 7.946290, 28.269207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.026336, 7.809923, 28.166906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344407, 0.231320, 0.909876,
		-0.251030, 0.911190, -0.326674,
		-0.904636, -0.340916, -0.255752,
		12.754945, 7.707648, 28.090181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.917915, 8.457517, 28.423416>,  <13.388190, 7.946290, 28.269207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.917915, 8.457517, 28.423416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.717365, 8.111440, 28.426647>,  <12.597035, 7.903794, 28.428587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.717365, 8.111440, 28.426647>,  <12.917915, 8.457517, 28.423416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.717365, 8.111440, 28.426647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347170, 0.209720, 0.914052,
		-0.792525, 0.455478, -0.405517,
		-0.501376, -0.865192, 0.008080,
		12.566953, 7.851882, 28.429071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.362084, 8.987625, 28.502319>,  <12.917915, 8.457517, 28.423416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.362084, 8.987625, 28.502319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.339007, 9.306923, 28.742144>,  <12.325161, 9.498502, 28.886038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.339007, 9.306923, 28.742144>,  <12.362084, 8.987625, 28.502319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.339007, 9.306923, 28.742144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182557, 0.598872, -0.779760,
		-0.981501, 0.064468, -0.180275,
		-0.057692, 0.798245, 0.599563,
		12.321700, 9.546396, 28.922012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.916168, 9.437016, 28.171690>,  <12.362084, 8.987625, 28.502319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.916168, 9.437016, 28.171690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.152899, 9.637942, 28.423855>,  <12.294937, 9.758498, 28.575153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.152899, 9.637942, 28.423855>,  <11.916168, 9.437016, 28.171690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.152899, 9.637942, 28.423855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108975, 0.725046, -0.680024,
		-0.798665, 0.471156, 0.374361,
		0.591826, 0.502316, 0.630413,
		12.330446, 9.788637, 28.612978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.619709, 10.071476, 28.189831>,  <11.916168, 9.437016, 28.171690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.619709, 10.071476, 28.189831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.003700, 10.112003, 28.294275>,  <12.234095, 10.136319, 28.356941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.003700, 10.112003, 28.294275>,  <11.619709, 10.071476, 28.189831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.003700, 10.112003, 28.294275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117077, 0.701752, -0.702736,
		-0.254433, 0.705181, 0.661804,
		0.959978, 0.101318, 0.261109,
		12.291694, 10.142399, 28.372608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.629978, 10.763591, 28.204372>,  <11.619709, 10.071476, 28.189831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.629978, 10.763591, 28.204372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.989870, 10.597335, 28.151110>,  <12.205805, 10.497581, 28.119152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.989870, 10.597335, 28.151110>,  <11.629978, 10.763591, 28.204372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.989870, 10.597335, 28.151110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184087, 0.638025, -0.747687,
		0.395726, 0.648204, 0.650563,
		0.899729, -0.415640, -0.133157,
		12.259789, 10.472643, 28.111162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.123343, 11.359203, 28.235373>,  <11.629978, 10.763591, 28.204372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.123343, 11.359203, 28.235373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.303839, 11.055513, 28.047773>,  <12.412136, 10.873300, 27.935213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.303839, 11.055513, 28.047773>,  <12.123343, 11.359203, 28.235373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.303839, 11.055513, 28.047773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302462, 0.624554, -0.720034,
		0.839584, 0.183053, 0.511460,
		0.451239, -0.759226, -0.468999,
		12.439210, 10.827745, 27.907074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.780668, 11.592904, 28.070457>,  <12.123343, 11.359203, 28.235373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.780668, 11.592904, 28.070457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.741736, 11.278349, 27.826450>,  <12.718377, 11.089616, 27.680046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.741736, 11.278349, 27.826450>,  <12.780668, 11.592904, 28.070457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.741736, 11.278349, 27.826450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423161, 0.522068, -0.740527,
		0.900812, -0.330210, 0.281957,
		-0.097329, -0.786388, -0.610017,
		12.712538, 11.042433, 27.643446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.372266, 11.677238, 27.613911>,  <12.780668, 11.592904, 28.070457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.372266, 11.677238, 27.613911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.112415, 11.428965, 27.438303>,  <12.956505, 11.280001, 27.332939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.112415, 11.428965, 27.438303>,  <13.372266, 11.677238, 27.613911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.112415, 11.428965, 27.438303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166385, 0.447390, -0.878725,
		0.741822, -0.643890, -0.187364,
		-0.649627, -0.620683, -0.439017,
		12.917527, 11.242760, 27.306599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.155585, 11.659614, 27.330685>,  <13.372266, 11.677238, 27.613911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.155585, 11.659614, 27.330685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.463161, 11.889322, 27.443075>,  <14.647706, 12.027147, 27.510509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.463161, 11.889322, 27.443075>,  <14.155585, 11.659614, 27.330685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.463161, 11.889322, 27.443075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138077, -0.578289, 0.804063,
		0.624235, -0.579478, -0.523962,
		0.768938, 0.574271, 0.280975,
		14.693842, 12.061604, 27.527369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.775517, 11.212827, 27.469038>,  <14.155585, 11.659614, 27.330685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.775517, 11.212827, 27.469038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.854282, 11.557831, 27.655500>,  <14.901541, 11.764833, 27.767378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.854282, 11.557831, 27.655500>,  <14.775517, 11.212827, 27.469038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.854282, 11.557831, 27.655500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399703, -0.504782, 0.765136,
		0.895245, 0.035660, -0.444145,
		0.196911, 0.862510, 0.466157,
		14.913356, 11.816584, 27.795347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.278776, 11.090967, 27.853138>,  <14.775517, 11.212827, 27.469038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.278776, 11.090967, 27.853138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.143561, 11.423362, 28.029861>,  <15.062432, 11.622798, 28.135895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.143561, 11.423362, 28.029861>,  <15.278776, 11.090967, 27.853138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.143561, 11.423362, 28.029861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283385, -0.357782, 0.889767,
		0.897454, 0.425976, -0.114546,
		-0.338037, 0.830986, 0.441808,
		15.042150, 11.672657, 28.162403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781388, 11.237432, 28.324736>,  <15.278776, 11.090967, 27.853138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781388, 11.237432, 28.324736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.440912, 11.393744, 28.464888>,  <15.236627, 11.487531, 28.548979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.440912, 11.393744, 28.464888>,  <15.781388, 11.237432, 28.324736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.440912, 11.393744, 28.464888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167822, -0.429884, 0.887150,
		0.497304, 0.813935, 0.300331,
		-0.851190, 0.390781, 0.350379,
		15.185555, 11.510978, 28.570002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907621, 11.550572, 28.910555>,  <15.781388, 11.237432, 28.324736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.907621, 11.550572, 28.910555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.510975, 11.533269, 28.959261>,  <15.272987, 11.522887, 28.988483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.510975, 11.533269, 28.959261>,  <15.907621, 11.550572, 28.910555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.510975, 11.533269, 28.959261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126529, -0.516345, 0.846982,
		0.026234, 0.855288, 0.517489,
		-0.991616, -0.043258, 0.121764,
		15.213490, 11.520291, 28.995790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.764448, 11.821552, 29.585049>,  <15.907621, 11.550572, 28.910555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.764448, 11.821552, 29.585049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.438597, 11.610070, 29.489674>,  <15.243086, 11.483181, 29.432449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.438597, 11.610070, 29.489674>,  <15.764448, 11.821552, 29.585049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.438597, 11.610070, 29.489674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039927, -0.359014, 0.932478,
		-0.578607, 0.769143, 0.271353,
		-0.814628, -0.528704, -0.238438,
		15.194208, 11.451459, 29.418142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364994, 11.980685, 30.097143>,  <15.764448, 11.821552, 29.585049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.364994, 11.980685, 30.097143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.214400, 11.647775, 29.934380>,  <15.124044, 11.448029, 29.836721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.214400, 11.647775, 29.934380>,  <15.364994, 11.980685, 30.097143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.214400, 11.647775, 29.934380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194263, -0.358538, 0.913078,
		-0.905826, 0.422807, -0.026696,
		-0.376484, -0.832277, -0.406909,
		15.101455, 11.398091, 29.812307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.715424, 11.828745, 30.476423>,  <15.364994, 11.980685, 30.097143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.715424, 11.828745, 30.476423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.843387, 11.488829, 30.308844>,  <14.920164, 11.284879, 30.208296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.843387, 11.488829, 30.308844>,  <14.715424, 11.828745, 30.476423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.843387, 11.488829, 30.308844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284278, -0.507904, 0.813154,
		-0.903795, -0.141037, -0.404059,
		0.319908, -0.849790, -0.418947,
		14.939359, 11.233891, 30.183159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.167060, 11.375432, 30.697044>,  <14.715424, 11.828745, 30.476423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.167060, 11.375432, 30.697044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.480639, 11.157272, 30.578409>,  <14.668787, 11.026377, 30.507229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.480639, 11.157272, 30.578409>,  <14.167060, 11.375432, 30.697044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.480639, 11.157272, 30.578409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111489, -0.593642, 0.796968,
		-0.610738, -0.591712, -0.526190,
		0.783944, -0.545404, -0.296590,
		14.715824, 10.993652, 30.489433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<16.527466, 18.755568, 17.020254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.817713, 18.612930, 16.784857>,  <16.991861, 18.527348, 16.643620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.817713, 18.612930, 16.784857>,  <16.527466, 18.755568, 17.020254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.817713, 18.612930, 16.784857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000056, -0.855212, 0.518278,
		-0.688100, -0.376104, -0.620536,
		0.725616, -0.356593, -0.588492,
		17.035398, 18.505953, 16.608309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.298374, 18.099716, 16.702673>,  <16.527466, 18.755568, 17.020254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.298374, 18.099716, 16.702673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.697735, 18.113760, 16.720396>,  <16.937351, 18.122187, 16.731030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.697735, 18.113760, 16.720396>,  <16.298374, 18.099716, 16.702673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697735, 18.113760, 16.720396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012331, -0.900131, 0.435445,
		0.055172, -0.434202, -0.899124,
		0.998401, 0.035112, 0.044308,
		16.997255, 18.124294, 16.733688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.626858, 17.483921, 16.402422>,  <16.298374, 18.099716, 16.702673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.626858, 17.483921, 16.402422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.898390, 17.648663, 16.645590>,  <17.061310, 17.747507, 16.791491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.898390, 17.648663, 16.645590>,  <16.626858, 17.483921, 16.402422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898390, 17.648663, 16.645590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102435, -0.872915, 0.476997,
		0.727115, -0.261528, -0.634749,
		0.678830, 0.411853, 0.607920,
		17.102039, 17.772219, 16.827967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.089632, 16.955973, 16.538584>,  <16.626858, 17.483921, 16.402422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.089632, 16.955973, 16.538584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.116966, 17.226244, 16.832193>,  <17.133368, 17.388407, 17.008360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.116966, 17.226244, 16.832193>,  <17.089632, 16.955973, 16.538584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.116966, 17.226244, 16.832193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042626, -0.733094, 0.678790,
		0.996751, -0.077674, -0.021296,
		0.068337, 0.675677, 0.734024,
		17.137466, 17.428947, 17.052401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.564699, 16.685841, 17.082834>,  <17.089632, 16.955973, 16.538584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.564699, 16.685841, 17.082834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.366743, 16.978817, 17.269857>,  <17.247969, 17.154604, 17.382071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.366743, 16.978817, 17.269857>,  <17.564699, 16.685841, 17.082834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.366743, 16.978817, 17.269857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210414, -0.623067, 0.753335,
		0.843094, 0.274439, 0.462466,
		-0.494892, 0.732442, 0.467559,
		17.218275, 17.198549, 17.410126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.503178, 16.456720, 17.721037>,  <17.564699, 16.685841, 17.082834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.503178, 16.456720, 17.721037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210884, 16.725069, 17.771564>,  <17.035507, 16.886078, 17.801882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210884, 16.725069, 17.771564>,  <17.503178, 16.456720, 17.721037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.210884, 16.725069, 17.771564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380360, -0.553769, 0.740720,
		0.566881, 0.493223, 0.659831,
		-0.730734, 0.670874, 0.126319,
		16.991663, 16.926331, 17.809460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.434397, 16.496943, 18.444061>,  <17.503178, 16.456720, 17.721037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.434397, 16.496943, 18.444061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.096678, 16.671829, 18.320124>,  <16.894047, 16.776762, 18.245762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.096678, 16.671829, 18.320124>,  <17.434397, 16.496943, 18.444061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.096678, 16.671829, 18.320124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474399, -0.340932, 0.811610,
		0.249216, 0.832229, 0.495264,
		-0.844297, 0.437219, -0.309843,
		16.843390, 16.802996, 18.227171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.216301, 17.014681, 18.977980>,  <17.434397, 16.496943, 18.444061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.216301, 17.014681, 18.977980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.887598, 16.901735, 18.779995>,  <16.690376, 16.833967, 18.661203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.887598, 16.901735, 18.779995>,  <17.216301, 17.014681, 18.977980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.887598, 16.901735, 18.779995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462803, -0.176060, 0.868801,
		-0.332461, 0.943013, 0.013999,
		-0.821756, -0.282364, -0.494963,
		16.641071, 16.817026, 18.631506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677176, 17.382967, 19.205566>,  <17.216301, 17.014681, 18.977980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.677176, 17.382967, 19.205566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.495359, 17.051203, 19.075659>,  <16.386271, 16.852144, 18.997715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.495359, 17.051203, 19.075659>,  <16.677176, 17.382967, 19.205566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.495359, 17.051203, 19.075659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475175, -0.082605, 0.876005,
		-0.753394, 0.552502, -0.356567,
		-0.454540, -0.829408, -0.324769,
		16.358997, 16.802380, 18.978228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.112726, 17.381947, 19.580080>,  <16.677176, 17.382967, 19.205566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.112726, 17.381947, 19.580080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.131994, 17.008247, 19.438740>,  <16.143555, 16.784027, 19.353935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.131994, 17.008247, 19.438740>,  <16.112726, 17.381947, 19.580080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.131994, 17.008247, 19.438740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544266, -0.321180, 0.774996,
		-0.837529, 0.154983, -0.523952,
		0.048172, -0.934250, -0.353349,
		16.146446, 16.727972, 19.332735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.413128, 17.159615, 19.715946>,  <16.112726, 17.381947, 19.580080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.413128, 17.159615, 19.715946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.619414, 16.820494, 19.666515>,  <15.743186, 16.617022, 19.636856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.619414, 16.820494, 19.666515>,  <15.413128, 17.159615, 19.715946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.619414, 16.820494, 19.666515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432899, -0.382325, 0.816349,
		-0.739348, -0.367508, -0.564183,
		0.515716, -0.847800, -0.123577,
		15.774129, 16.566154, 19.629442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.971176, 16.597506, 19.709692>,  <15.413128, 17.159615, 19.715946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.971176, 16.597506, 19.709692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338626, 16.495056, 19.830044>,  <15.559096, 16.433586, 19.902256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338626, 16.495056, 19.830044>,  <14.971176, 16.597506, 19.709692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338626, 16.495056, 19.830044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366669, -0.268793, 0.890676,
		-0.147246, -0.928522, -0.340831,
		0.918625, -0.256121, 0.300882,
		15.614213, 16.418219, 19.920309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.668781, 15.920763, 19.597815>,  <14.971176, 16.597506, 19.709692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.668781, 15.920763, 19.597815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.294075, 15.781546, 19.583208>,  <14.069251, 15.698015, 19.574444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.294075, 15.781546, 19.583208>,  <14.668781, 15.920763, 19.597815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.294075, 15.781546, 19.583208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048832, 0.233323, -0.971172,
		0.346532, -0.907978, -0.235565,
		-0.936766, -0.348045, -0.036515,
		14.013045, 15.677133, 19.572254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.669809, 15.474650, 19.008381>,  <14.668781, 15.920763, 19.597815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.669809, 15.474650, 19.008381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.313692, 15.623909, 19.112797>,  <14.100022, 15.713464, 19.175447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.313692, 15.623909, 19.112797>,  <14.669809, 15.474650, 19.008381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.313692, 15.623909, 19.112797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140802, 0.319583, -0.937039,
		-0.433076, -0.870993, -0.231983,
		-0.890292, 0.373146, 0.261041,
		14.046604, 15.735852, 19.191109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.183558, 15.154931, 18.480879>,  <14.669809, 15.474650, 19.008381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.183558, 15.154931, 18.480879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989234, 15.473986, 18.623856>,  <13.872640, 15.665419, 18.709641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.989234, 15.473986, 18.623856>,  <14.183558, 15.154931, 18.480879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.989234, 15.473986, 18.623856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224624, 0.281275, -0.932967,
		-0.844708, -0.533536, 0.042521,
		-0.485811, 0.797636, 0.357440,
		13.843491, 15.713277, 18.731087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.633117, 15.025113, 18.204880>,  <14.183558, 15.154931, 18.480879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.633117, 15.025113, 18.204880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.597270, 15.402358, 18.332949>,  <13.575762, 15.628705, 18.409790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.597270, 15.402358, 18.332949>,  <13.633117, 15.025113, 18.204880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.597270, 15.402358, 18.332949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450018, 0.248437, -0.857766,
		-0.888511, -0.220953, 0.402153,
		-0.089617, 0.943111, 0.320172,
		13.570385, 15.685291, 18.429001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.933402, 15.169891, 18.059139>,  <13.633117, 15.025113, 18.204880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.933402, 15.169891, 18.059139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.137673, 15.513102, 18.081045>,  <13.260237, 15.719028, 18.094189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.137673, 15.513102, 18.081045>,  <12.933402, 15.169891, 18.059139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.137673, 15.513102, 18.081045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373435, 0.278733, -0.884790,
		-0.774437, 0.431393, 0.462760,
		0.510679, 0.858026, 0.054764,
		13.290877, 15.770510, 18.097475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.447656, 15.715237, 18.047958>,  <12.933402, 15.169891, 18.059139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.447656, 15.715237, 18.047958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.797634, 15.859308, 17.918503>,  <13.007621, 15.945751, 17.840830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.797634, 15.859308, 17.918503>,  <12.447656, 15.715237, 18.047958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.797634, 15.859308, 17.918503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413615, 0.208388, -0.886283,
		-0.251778, 0.909311, 0.331303,
		0.874946, 0.360179, -0.323637,
		13.060118, 15.967361, 17.821411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.270249, 16.344770, 17.652868>,  <12.447656, 15.715237, 18.047958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.270249, 16.344770, 17.652868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.636580, 16.234743, 17.535837>,  <12.856378, 16.168726, 17.465618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.636580, 16.234743, 17.535837>,  <12.270249, 16.344770, 17.652868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.636580, 16.234743, 17.535837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257651, 0.156364, -0.953502,
		0.308027, 0.948624, 0.072330,
		0.915825, -0.275068, -0.292579,
		12.911327, 16.152222, 17.448063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.399465, 16.759466, 17.145887>,  <12.270249, 16.344770, 17.652868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.399465, 16.759466, 17.145887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.699187, 16.514793, 17.044392>,  <12.879021, 16.367990, 16.983494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.699187, 16.514793, 17.044392>,  <12.399465, 16.759466, 17.145887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.699187, 16.514793, 17.044392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208536, 0.145717, -0.967098,
		0.628531, 0.777567, -0.018371,
		0.749307, -0.611682, -0.253739,
		12.923980, 16.331289, 16.968269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.803398, 17.060991, 16.642397>,  <12.399465, 16.759466, 17.145887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.803398, 17.060991, 16.642397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.854950, 16.666544, 16.600517>,  <12.885881, 16.429876, 16.575390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.854950, 16.666544, 16.600517>,  <12.803398, 17.060991, 16.642397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.854950, 16.666544, 16.600517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003137, 0.105987, -0.994363,
		0.991655, 0.127825, 0.016753,
		0.128880, -0.986118, -0.104701,
		12.893614, 16.370708, 16.569107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.160589, 17.003645, 16.035696>,  <12.803398, 17.060991, 16.642397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.160589, 17.003645, 16.035696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.995860, 16.646374, 16.107956>,  <12.897022, 16.432011, 16.151312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.995860, 16.646374, 16.107956>,  <13.160589, 17.003645, 16.035696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.995860, 16.646374, 16.107956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170950, -0.118998, -0.978067,
		0.895085, -0.433673, -0.103682,
		-0.411824, -0.893178, 0.180650,
		12.872313, 16.378420, 16.162151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.412841, 16.553825, 15.481885>,  <13.160589, 17.003645, 16.035696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.412841, 16.553825, 15.481885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.102513, 16.355604, 15.638106>,  <12.916317, 16.236671, 15.731839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.102513, 16.355604, 15.638106>,  <13.412841, 16.553825, 15.481885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.102513, 16.355604, 15.638106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172850, -0.428383, -0.886911,
		0.606820, -0.755588, 0.246690,
		-0.775818, -0.495554, 0.390554,
		12.869768, 16.206938, 15.755273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.375254, 15.856127, 15.133941>,  <13.412841, 16.553825, 15.481885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.375254, 15.856127, 15.133941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011998, 15.912446, 15.291654>,  <12.794044, 15.946238, 15.386282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011998, 15.912446, 15.291654>,  <13.375254, 15.856127, 15.133941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.011998, 15.912446, 15.291654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416396, -0.401731, -0.815614,
		0.043560, -0.904869, 0.423455,
		-0.908139, 0.140797, 0.394284,
		12.739556, 15.954685, 15.409939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.159310, 15.205421, 15.048745>,  <13.375254, 15.856127, 15.133941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.159310, 15.205421, 15.048745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.838900, 15.436972, 15.109753>,  <12.646653, 15.575902, 15.146358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.838900, 15.436972, 15.109753>,  <13.159310, 15.205421, 15.048745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.838900, 15.436972, 15.109753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390169, -0.311626, -0.866405,
		-0.454010, -0.753521, 0.475479,
		-0.801026, 0.578874, 0.152519,
		12.598592, 15.610634, 15.155508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.548461, 14.843535, 14.977926>,  <13.159310, 15.205421, 15.048745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.548461, 14.843535, 14.977926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.523326, 15.230469, 14.879687>,  <12.508245, 15.462628, 14.820744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.523326, 15.230469, 14.879687>,  <12.548461, 14.843535, 14.977926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.523326, 15.230469, 14.879687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362261, -0.251407, -0.897531,
		-0.929956, 0.032572, 0.366225,
		-0.062838, 0.967333, -0.245597,
		12.504475, 15.520669, 14.806008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.969683, 15.278538, 14.751595>,  <12.548461, 14.843535, 14.977926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.969683, 15.278538, 14.751595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.009260, 15.341336, 14.358542>,  <12.033007, 15.379015, 14.122711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.009260, 15.341336, 14.358542>,  <11.969683, 15.278538, 14.751595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.009260, 15.341336, 14.358542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976656, 0.173888, 0.126123,
		0.190668, -0.972170, -0.136126,
		0.098943, 0.156996, -0.982630,
		12.038943, 15.388435, 14.063753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.787766, 14.654308, 14.389860>,  <11.969683, 15.278538, 14.751595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.787766, 14.654308, 14.389860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.584760, 14.824973, 14.689296>,  <11.462955, 14.927372, 14.868958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.584760, 14.824973, 14.689296>,  <11.787766, 14.654308, 14.389860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.584760, 14.824973, 14.689296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294128, -0.902395, 0.314917,
		0.809887, -0.060356, 0.583473,
		-0.507516, 0.426662, 0.748590,
		11.432505, 14.952971, 14.913873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.018086, 14.257216, 14.923320>,  <11.787766, 14.654308, 14.389860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.018086, 14.257216, 14.923320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.670832, 14.444659, 14.988737>,  <11.462479, 14.557125, 15.027987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.670832, 14.444659, 14.988737>,  <12.018086, 14.257216, 14.923320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.670832, 14.444659, 14.988737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408256, -0.861596, 0.301629,
		0.282253, 0.195088, 0.939294,
		-0.868136, 0.468608, 0.163542,
		11.410391, 14.585241, 15.037800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.611938, 14.117156, 15.394890>,  <12.018086, 14.257216, 14.923320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.611938, 14.117156, 15.394890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011429, 14.129946, 15.379285>,  <13.251123, 14.137619, 15.369922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011429, 14.129946, 15.379285>,  <12.611938, 14.117156, 15.394890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.011429, 14.129946, 15.379285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049266, -0.784263, 0.618470,
		-0.010821, -0.619604, -0.784840,
		0.998727, 0.031973, -0.039012,
		13.311047, 14.139538, 15.367581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.917692, 13.430296, 15.521521>,  <12.611938, 14.117156, 15.394890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.917692, 13.430296, 15.521521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.250695, 13.634398, 15.607840>,  <13.450497, 13.756860, 15.659631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.250695, 13.634398, 15.607840>,  <12.917692, 13.430296, 15.521521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250695, 13.634398, 15.607840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120157, -0.546543, 0.828766,
		0.540827, -0.664024, -0.516312,
		0.832508, 0.510258, 0.215797,
		13.500447, 13.787476, 15.672579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.516077, 13.005084, 15.520716>,  <12.917692, 13.430296, 15.521521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.516077, 13.005084, 15.520716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.584603, 13.300361, 15.781706>,  <13.625719, 13.477527, 15.938300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.584603, 13.300361, 15.781706>,  <13.516077, 13.005084, 15.520716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.584603, 13.300361, 15.781706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068906, -0.669621, 0.739499,
		0.982804, -0.081728, -0.165583,
		0.171315, 0.738192, 0.652475,
		13.635998, 13.521818, 15.977448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.064459, 12.685912, 15.873092>,  <13.516077, 13.005084, 15.520716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.064459, 12.685912, 15.873092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.901446, 12.991694, 16.072901>,  <13.803638, 13.175164, 16.192787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.901446, 12.991694, 16.072901>,  <14.064459, 12.685912, 15.873092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.901446, 12.991694, 16.072901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142156, -0.487233, 0.861624,
		0.902059, 0.422149, 0.089891,
		-0.407532, 0.764457, 0.499523,
		13.779187, 13.221031, 16.222757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.499278, 12.635231, 16.470644>,  <14.064459, 12.685912, 15.873092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.499278, 12.635231, 16.470644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.198856, 12.878216, 16.574108>,  <14.018603, 13.024007, 16.636187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.198856, 12.878216, 16.574108>,  <14.499278, 12.635231, 16.470644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.198856, 12.878216, 16.574108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067756, -0.318786, 0.945402,
		0.656754, 0.727574, 0.198267,
		-0.751055, 0.607463, 0.258661,
		13.973540, 13.060454, 16.651707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.733698, 12.998701, 17.048672>,  <14.499278, 12.635231, 16.470644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.733698, 12.998701, 17.048672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.334073, 12.989156, 17.063114>,  <14.094298, 12.983429, 17.071779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.334073, 12.989156, 17.063114>,  <14.733698, 12.998701, 17.048672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.334073, 12.989156, 17.063114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041916, -0.325601, 0.944578,
		-0.010784, 0.945206, 0.326296,
		-0.999063, -0.023863, 0.036108,
		14.034354, 12.981997, 17.073946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.576245, 12.997204, 17.749262>,  <14.733698, 12.998701, 17.048672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.576245, 12.997204, 17.749262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.203479, 12.933350, 17.618999>,  <13.979819, 12.895037, 17.540842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.203479, 12.933350, 17.618999>,  <14.576245, 12.997204, 17.749262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.203479, 12.933350, 17.618999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229021, -0.437217, 0.869707,
		-0.281218, 0.885075, 0.370890,
		-0.931915, -0.159636, -0.325654,
		13.923904, 12.885459, 17.521303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.197204, 13.245290, 18.315908>,  <14.576245, 12.997204, 17.749262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.197204, 13.245290, 18.315908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.995896, 12.969226, 18.107908>,  <13.875113, 12.803588, 17.983109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.995896, 12.969226, 18.107908>,  <14.197204, 13.245290, 18.315908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.995896, 12.969226, 18.107908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282903, -0.437010, 0.853808,
		-0.816510, 0.576804, 0.024685,
		-0.503267, -0.690159, -0.520003,
		13.844916, 12.762178, 17.951908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.457434, 13.211600, 18.625500>,  <14.197204, 13.245290, 18.315908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.457434, 13.211600, 18.625500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.536798, 12.877149, 18.420944>,  <13.584417, 12.676477, 18.298210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.536798, 12.877149, 18.420944>,  <13.457434, 13.211600, 18.625500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.536798, 12.877149, 18.420944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247930, -0.547611, 0.799158,
		-0.948243, -0.031772, -0.315954,
		0.198411, -0.836130, -0.511391,
		13.596322, 12.626309, 18.267527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.982507, 12.823512, 18.978151>,  <13.457434, 13.211600, 18.625500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.982507, 12.823512, 18.978151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.240435, 12.577366, 18.796808>,  <13.395191, 12.429678, 18.688004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.240435, 12.577366, 18.796808>,  <12.982507, 12.823512, 18.978151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.240435, 12.577366, 18.796808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127502, -0.671429, 0.730018,
		-0.753626, -0.412925, -0.511411,
		0.644819, -0.615366, -0.453357,
		13.433881, 12.392756, 18.660801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.632527, 12.191687, 18.791399>,  <12.982507, 12.823512, 18.978151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.632527, 12.191687, 18.791399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.023721, 12.117890, 18.830404>,  <13.258437, 12.073612, 18.853807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.023721, 12.117890, 18.830404>,  <12.632527, 12.191687, 18.791399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.023721, 12.117890, 18.830404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208293, -0.834692, 0.509808,
		-0.012661, -0.518896, -0.854744,
		0.977985, -0.184491, 0.097515,
		13.317116, 12.062543, 18.859659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.623264, 11.495450, 18.871466>,  <12.632527, 12.191687, 18.791399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.623264, 11.495450, 18.871466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.003252, 11.571889, 18.970293>,  <13.231244, 11.617752, 19.029589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.003252, 11.571889, 18.970293>,  <12.623264, 11.495450, 18.871466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.003252, 11.571889, 18.970293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008402, -0.806352, 0.591377,
		0.312233, -0.559713, -0.767614,
		0.949969, 0.191096, 0.247067,
		13.288242, 11.629218, 19.044413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.981282, 10.857274, 18.758238>,  <12.623264, 11.495450, 18.871466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.981282, 10.857274, 18.758238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.201714, 11.067672, 19.017357>,  <13.333973, 11.193911, 19.172829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.201714, 11.067672, 19.017357>,  <12.981282, 10.857274, 18.758238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.201714, 11.067672, 19.017357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231232, -0.842172, 0.487112,
		0.801775, -0.118645, -0.585730,
		0.551079, 0.525994, 0.647798,
		13.367037, 11.225470, 19.211697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.383815, 10.321106, 18.971960>,  <12.981282, 10.857274, 18.758238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.383815, 10.321106, 18.971960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.460039, 10.616729, 19.230412>,  <13.505774, 10.794103, 19.385483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.460039, 10.616729, 19.230412>,  <13.383815, 10.321106, 18.971960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.460039, 10.616729, 19.230412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190590, -0.673519, 0.714176,
		0.962997, -0.012948, -0.269203,
		0.190561, 0.739056, 0.646129,
		13.517207, 10.838446, 19.424250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.053655, 10.297679, 19.146383>,  <13.383815, 10.321106, 18.971960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.053655, 10.297679, 19.146383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862510, 10.469869, 19.452675>,  <13.747823, 10.573182, 19.636450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862510, 10.469869, 19.452675>,  <14.053655, 10.297679, 19.146383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.862510, 10.469869, 19.452675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390383, -0.676819, 0.624114,
		0.786924, 0.597168, 0.155377,
		-0.477862, 0.430473, 0.765729,
		13.719151, 10.599010, 19.682394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.535245, 10.267087, 19.684700>,  <14.053655, 10.297679, 19.146383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.535245, 10.267087, 19.684700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.183908, 10.319215, 19.868670>,  <13.973104, 10.350492, 19.979052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.183908, 10.319215, 19.868670>,  <14.535245, 10.267087, 19.684700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.183908, 10.319215, 19.868670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317736, -0.559670, 0.765384,
		0.357149, 0.818405, 0.450176,
		-0.878344, 0.130319, 0.459923,
		13.920404, 10.358311, 20.006647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.705140, 10.405163, 20.316402>,  <14.535245, 10.267087, 19.684700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.705140, 10.405163, 20.316402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.334224, 10.278693, 20.396568>,  <14.111674, 10.202811, 20.444668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.334224, 10.278693, 20.396568>,  <14.705140, 10.405163, 20.316402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.334224, 10.278693, 20.396568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357382, -0.588382, 0.725317,
		-0.111406, 0.744205, 0.658596,
		-0.927290, -0.316175, 0.200416,
		14.056037, 10.183841, 20.456694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.663420, 10.300069, 21.097525>,  <14.705140, 10.405163, 20.316402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.663420, 10.300069, 21.097525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.354971, 10.093485, 20.948586>,  <14.169902, 9.969535, 20.859222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.354971, 10.093485, 20.948586>,  <14.663420, 10.300069, 21.097525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.354971, 10.093485, 20.948586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087679, -0.665385, 0.741333,
		-0.630622, 0.539011, 0.558376,
		-0.771122, -0.516459, -0.372346,
		14.123634, 9.938547, 20.836882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.111595, 10.264849, 21.575350>,  <14.663420, 10.300069, 21.097525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.111595, 10.264849, 21.575350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.969356, 9.974380, 21.339987>,  <13.884012, 9.800098, 21.198769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.969356, 9.974380, 21.339987>,  <14.111595, 10.264849, 21.575350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.969356, 9.974380, 21.339987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277313, -0.519232, 0.808391,
		-0.892551, 0.450635, -0.016738,
		-0.355598, -0.726172, -0.588408,
		13.862676, 9.756528, 21.163464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.458358, 10.142735, 21.741308>,  <14.111595, 10.264849, 21.575350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.458358, 10.142735, 21.741308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.589163, 9.804871, 21.571789>,  <13.667646, 9.602152, 21.470078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.589163, 9.804871, 21.571789>,  <13.458358, 10.142735, 21.741308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.589163, 9.804871, 21.571789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303316, -0.518543, 0.799445,
		-0.895020, -0.132884, -0.425770,
		0.327013, -0.844663, -0.423801,
		13.687267, 9.551472, 21.444649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.897463, 9.714575, 21.854048>,  <13.458358, 10.142735, 21.741308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.897463, 9.714575, 21.854048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.206710, 9.473526, 21.774918>,  <13.392259, 9.328897, 21.727440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.206710, 9.473526, 21.774918>,  <12.897463, 9.714575, 21.854048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.206710, 9.473526, 21.774918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254885, -0.580794, 0.773118,
		-0.580794, -0.547289, -0.602622,
		-0.773118, 0.602622, 0.197827,
		13.438645, 9.292740, 21.715570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.704997, 9.101702, 22.247669>,  <12.897463, 9.714575, 21.854048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.704997, 9.101702, 22.247669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.079217, 9.005324, 22.144369>,  <13.303749, 8.947497, 22.082390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.079217, 9.005324, 22.144369>,  <12.704997, 9.101702, 22.247669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.079217, 9.005324, 22.144369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004944, -0.722177, 0.691691,
		-0.353162, -0.648387, -0.674441,
		0.935549, -0.240944, -0.258251,
		13.359881, 8.933041, 22.066895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.763330, 8.404335, 22.316772>,  <12.704997, 9.101702, 22.247669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.763330, 8.404335, 22.316772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.147366, 8.515937, 22.324633>,  <13.377787, 8.582898, 22.329350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.147366, 8.515937, 22.324633>,  <12.763330, 8.404335, 22.316772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.147366, 8.515937, 22.324633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135240, -0.524579, 0.840552,
		0.244827, -0.804346, -0.541375,
		0.960088, 0.279006, 0.019651,
		13.435392, 8.599638, 22.330528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.257549, 7.766279, 22.379484>,  <12.763330, 8.404335, 22.316772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.257549, 7.766279, 22.379484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.428497, 8.096205, 22.527557>,  <13.531066, 8.294161, 22.616402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.428497, 8.096205, 22.527557>,  <13.257549, 7.766279, 22.379484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.428497, 8.096205, 22.527557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141572, -0.465463, 0.873672,
		0.892923, -0.320975, -0.315696,
		0.427371, 0.824815, 0.370181,
		13.556708, 8.343649, 22.638611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.775207, 7.527320, 22.792385>,  <13.257549, 7.766279, 22.379484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.775207, 7.527320, 22.792385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.682261, 7.896655, 22.914669>,  <13.626494, 8.118256, 22.988039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.682261, 7.896655, 22.914669>,  <13.775207, 7.527320, 22.792385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.682261, 7.896655, 22.914669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178993, -0.268350, 0.946546,
		0.956017, 0.274662, -0.102916,
		-0.232362, 0.923336, 0.305710,
		13.612553, 8.173656, 23.006382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
