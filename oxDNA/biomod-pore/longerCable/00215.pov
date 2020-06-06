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
	<24.147152, 35.552090, 35.160675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.137537, 35.166679, 35.054058>,  <24.131767, 34.935432, 34.990086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.137537, 35.166679, 35.054058>,  <24.147152, 35.552090, 35.160675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.137537, 35.166679, 35.054058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683509, 0.178730, -0.707722,
		0.729546, -0.199197, 0.654281,
		-0.024037, -0.963523, -0.266545,
		24.130325, 34.877621, 34.974094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.809341, 35.203915, 35.145943>,  <24.147152, 35.552090, 35.160675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.809341, 35.203915, 35.145943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572289, 35.004635, 34.892776>,  <24.430058, 34.885067, 34.740875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572289, 35.004635, 34.892776>,  <24.809341, 35.203915, 35.145943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.572289, 35.004635, 34.892776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623462, 0.213789, -0.752057,
		0.509986, -0.840293, 0.183911,
		-0.592630, -0.498200, -0.632919,
		24.394499, 34.855175, 34.702900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185276, 34.735012, 34.599651>,  <24.809341, 35.203915, 35.145943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.185276, 34.735012, 34.599651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824228, 34.842945, 34.465508>,  <24.607599, 34.907707, 34.385021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824228, 34.842945, 34.465508>,  <25.185276, 34.735012, 34.599651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.824228, 34.842945, 34.465508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403756, 0.260693, -0.876938,
		-0.149203, -0.926945, -0.344255,
		-0.902618, 0.269837, -0.335363,
		24.553442, 34.923897, 34.364899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.048134, 34.349068, 34.007473>,  <25.185276, 34.735012, 34.599651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.048134, 34.349068, 34.007473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.878239, 34.709995, 34.036896>,  <24.776302, 34.926552, 34.054550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.878239, 34.709995, 34.036896>,  <25.048134, 34.349068, 34.007473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.878239, 34.709995, 34.036896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653813, 0.361932, -0.664480,
		-0.626199, -0.234135, -0.743677,
		-0.424738, 0.902323, 0.073561,
		24.750816, 34.980694, 34.058964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046534, 34.543976, 33.302315>,  <25.048134, 34.349068, 34.007473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046534, 34.543976, 33.302315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051634, 34.853638, 33.555458>,  <25.054693, 35.039436, 33.707344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051634, 34.853638, 33.555458>,  <25.046534, 34.543976, 33.302315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.051634, 34.853638, 33.555458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573591, 0.512763, -0.638801,
		-0.819043, 0.371149, -0.437513,
		0.012749, 0.774159, 0.632863,
		25.055458, 35.085884, 33.745316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.865877, 35.174828, 33.057316>,  <25.046534, 34.543976, 33.302315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.865877, 35.174828, 33.057316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151632, 35.235424, 33.330578>,  <25.323086, 35.271782, 33.494534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151632, 35.235424, 33.330578>,  <24.865877, 35.174828, 33.057316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151632, 35.235424, 33.330578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556068, 0.469749, -0.685656,
		-0.424782, 0.869705, 0.251344,
		0.714387, 0.151490, 0.683156,
		25.365948, 35.280872, 33.535526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060930, 35.875298, 33.004551>,  <24.865877, 35.174828, 33.057316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060930, 35.875298, 33.004551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364475, 35.720242, 33.213875>,  <25.546602, 35.627209, 33.339470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364475, 35.720242, 33.213875>,  <25.060930, 35.875298, 33.004551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364475, 35.720242, 33.213875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626733, 0.216296, -0.748614,
		0.177004, 0.896075, 0.407087,
		0.758865, -0.387642, 0.523314,
		25.592134, 35.603951, 33.370869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322990, 36.449009, 33.351624>,  <25.060930, 35.875298, 33.004551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322990, 36.449009, 33.351624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599865, 36.200310, 33.498215>,  <25.765989, 36.051090, 33.586170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599865, 36.200310, 33.498215>,  <25.322990, 36.449009, 33.351624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599865, 36.200310, 33.498215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720870, 0.570946, -0.392897,
		0.035044, 0.536141, 0.843401,
		0.692184, -0.621751, 0.366480,
		25.807520, 36.013786, 33.608158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944065, 36.885963, 33.558357>,  <25.322990, 36.449009, 33.351624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944065, 36.885963, 33.558357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091513, 36.516411, 33.517235>,  <26.179981, 36.294682, 33.492561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091513, 36.516411, 33.517235>,  <25.944065, 36.885963, 33.558357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091513, 36.516411, 33.517235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812106, 0.373876, -0.447997,
		0.452330, 0.081653, 0.888105,
		0.368621, -0.923877, -0.102804,
		26.202099, 36.239246, 33.486393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593540, 37.023525, 33.825981>,  <25.944065, 36.885963, 33.558357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593540, 37.023525, 33.825981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585175, 36.707146, 33.581371>,  <26.580154, 36.517319, 33.434605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585175, 36.707146, 33.581371>,  <26.593540, 37.023525, 33.825981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585175, 36.707146, 33.581371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809195, 0.345832, -0.474977,
		0.587168, -0.504775, 0.632800,
		-0.020914, -0.790950, -0.611523,
		26.578899, 36.469860, 33.397915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309834, 36.802902, 33.704102>,  <26.593540, 37.023525, 33.825981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309834, 36.802902, 33.704102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092556, 36.670887, 33.395294>,  <26.962191, 36.591679, 33.210011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092556, 36.670887, 33.395294>,  <27.309834, 36.802902, 33.704102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092556, 36.670887, 33.395294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720616, 0.288616, -0.630407,
		0.430877, -0.898763, 0.081058,
		-0.543192, -0.330039, -0.772021,
		26.929598, 36.571877, 33.163689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761999, 36.431850, 33.226868>,  <27.309834, 36.802902, 33.704102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761999, 36.431850, 33.226868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441969, 36.588734, 33.045296>,  <27.249950, 36.682865, 32.936352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441969, 36.588734, 33.045296>,  <27.761999, 36.431850, 33.226868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441969, 36.588734, 33.045296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599317, 0.489201, -0.633642,
		-0.026459, -0.779008, -0.626455,
		-0.800075, 0.392210, -0.453929,
		27.201946, 36.706398, 32.909119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719120, 36.759819, 32.584167>,  <27.761999, 36.431850, 33.226868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719120, 36.759819, 32.584167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977877, 36.917919, 32.845032>,  <28.133131, 37.012779, 33.001549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977877, 36.917919, 32.845032>,  <27.719120, 36.759819, 32.584167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977877, 36.917919, 32.845032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565859, 0.324501, -0.757959,
		-0.511207, 0.859348, -0.013736,
		0.646893, 0.395247, 0.652157,
		28.171946, 37.036491, 33.040680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891470, 37.444950, 32.434921>,  <27.719120, 36.759819, 32.584167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891470, 37.444950, 32.434921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238699, 37.313507, 32.583767>,  <28.447037, 37.234642, 32.673077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238699, 37.313507, 32.583767>,  <27.891470, 37.444950, 32.434921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238699, 37.313507, 32.583767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443784, 0.177697, -0.878339,
		0.222502, 0.927601, 0.300082,
		0.868072, -0.328604, 0.372116,
		28.499121, 37.214928, 32.695400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140242, 37.123375, 32.296909>,  <27.891470, 37.444950, 32.434921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140242, 37.123375, 32.296909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280195, 36.748798, 32.307171>,  <27.364166, 36.524052, 32.313328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280195, 36.748798, 32.307171>,  <27.140242, 37.123375, 32.296909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280195, 36.748798, 32.307171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811448, -0.289272, 0.507812,
		-0.468117, -0.198488, -0.861086,
		0.349882, -0.936442, 0.025650,
		27.385160, 36.467865, 32.314865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518087, 36.657719, 32.001717>,  <27.140242, 37.123375, 32.296909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518087, 36.657719, 32.001717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777416, 36.484406, 32.252136>,  <26.933014, 36.380417, 32.402390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777416, 36.484406, 32.252136>,  <26.518087, 36.657719, 32.001717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777416, 36.484406, 32.252136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735304, -0.143025, 0.662475,
		-0.197499, -0.889836, -0.411322,
		0.648324, -0.433284, 0.626053,
		26.971912, 36.354420, 32.439953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328381, 35.929588, 32.195889>,  <26.518087, 36.657719, 32.001717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328381, 35.929588, 32.195889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533199, 36.098454, 32.495110>,  <26.656092, 36.199772, 32.674644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533199, 36.098454, 32.495110>,  <26.328381, 35.929588, 32.195889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533199, 36.098454, 32.495110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731426, -0.242319, 0.637415,
		0.450359, -0.873535, 0.184699,
		0.512048, 0.422159, 0.748056,
		26.686813, 36.225101, 32.719528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642929, 35.414108, 32.662037>,  <26.328381, 35.929588, 32.195889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642929, 35.414108, 32.662037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605698, 35.732857, 32.900810>,  <26.583359, 35.924107, 33.044075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605698, 35.732857, 32.900810>,  <26.642929, 35.414108, 32.662037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605698, 35.732857, 32.900810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674910, -0.491273, 0.550588,
		0.732006, -0.351626, 0.583547,
		-0.093080, 0.796875, 0.596931,
		26.577774, 35.971920, 33.079891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658846, 35.062881, 33.312920>,  <26.642929, 35.414108, 32.662037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658846, 35.062881, 33.312920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505667, 35.429077, 33.362274>,  <26.413759, 35.648796, 33.391888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505667, 35.429077, 33.362274>,  <26.658846, 35.062881, 33.312920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505667, 35.429077, 33.362274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581401, -0.342652, 0.737945,
		0.717861, 0.210857, 0.663486,
		-0.382946, 0.915494, 0.123384,
		26.390783, 35.703724, 33.399288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700457, 35.169399, 34.005833>,  <26.658846, 35.062881, 33.312920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700457, 35.169399, 34.005833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431814, 35.424221, 33.854511>,  <26.270630, 35.577114, 33.763718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431814, 35.424221, 33.854511>,  <26.700457, 35.169399, 34.005833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431814, 35.424221, 33.854511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651513, -0.264652, 0.710977,
		0.352812, 0.723963, 0.592790,
		-0.671605, 0.637053, -0.378299,
		26.230333, 35.615337, 33.741020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531494, 35.773251, 34.442471>,  <26.700457, 35.169399, 34.005833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531494, 35.773251, 34.442471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231129, 35.634579, 34.217636>,  <26.050909, 35.551376, 34.082733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231129, 35.634579, 34.217636>,  <26.531494, 35.773251, 34.442471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231129, 35.634579, 34.217636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527604, -0.196982, 0.826337,
		-0.397197, 0.917066, -0.034994,
		-0.750912, -0.346682, -0.562088,
		26.005856, 35.530575, 34.049011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926847, 36.003368, 34.766411>,  <26.531494, 35.773251, 34.442471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926847, 36.003368, 34.766411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831724, 35.690895, 34.535515>,  <25.774651, 35.503410, 34.396976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831724, 35.690895, 34.535515>,  <25.926847, 36.003368, 34.766411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831724, 35.690895, 34.535515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643874, -0.318169, 0.695842,
		-0.727236, 0.537147, -0.427318,
		-0.237810, -0.781180, -0.577239,
		25.760382, 35.456543, 34.362343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112368, 35.725117, 35.515015>,  <25.926847, 36.003368, 34.766411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112368, 35.725117, 35.515015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469011, 35.562061, 35.593876>,  <26.682997, 35.464230, 35.641193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469011, 35.562061, 35.593876>,  <26.112368, 35.725117, 35.515015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469011, 35.562061, 35.593876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424561, -0.903962, 0.051003,
		0.157432, -0.129180, -0.979044,
		0.891607, -0.407634, 0.197157,
		26.736494, 35.439770, 35.653023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166185, 35.138687, 35.029320>,  <26.112368, 35.725117, 35.515015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166185, 35.138687, 35.029320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392910, 35.094704, 35.355911>,  <26.528944, 35.068314, 35.551865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392910, 35.094704, 35.355911>,  <26.166185, 35.138687, 35.029320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392910, 35.094704, 35.355911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221619, -0.974872, 0.022555,
		0.793481, -0.193731, -0.576937,
		0.566810, -0.109963, 0.816477,
		26.562954, 35.061714, 35.600853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476410, 34.505264, 34.956150>,  <26.166185, 35.138687, 35.029320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476410, 34.505264, 34.956150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489090, 34.598724, 35.344872>,  <26.496698, 34.654800, 35.578106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489090, 34.598724, 35.344872>,  <26.476410, 34.505264, 34.956150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489090, 34.598724, 35.344872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387717, -0.893284, 0.227417,
		0.921233, -0.383994, 0.062272,
		0.031700, 0.233648, 0.971804,
		26.498600, 34.668819, 35.636414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849424, 33.970009, 35.271572>,  <26.476410, 34.505264, 34.956150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849424, 33.970009, 35.271572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616570, 34.139439, 35.549191>,  <26.476856, 34.241096, 35.715759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616570, 34.139439, 35.549191>,  <26.849424, 33.970009, 35.271572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616570, 34.139439, 35.549191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196200, -0.901543, 0.385651,
		0.789064, 0.088330, 0.607928,
		-0.582137, 0.423579, 0.694044,
		26.441929, 34.266514, 35.757404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145437, 33.931915, 35.541302>,  <26.849424, 33.970009, 35.271572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145437, 33.931915, 35.541302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835045, 33.715118, 35.670357>,  <25.648809, 33.585041, 35.747787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835045, 33.715118, 35.670357>,  <26.145437, 33.931915, 35.541302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835045, 33.715118, 35.670357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622237, -0.741562, 0.250813,
		0.103314, 0.395381, 0.912688,
		-0.775982, -0.541996, 0.322634,
		25.602251, 33.552521, 35.767147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245390, 33.845463, 36.248592>,  <26.145437, 33.931915, 35.541302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245390, 33.845463, 36.248592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060425, 33.556660, 36.042728>,  <25.949446, 33.383377, 35.919212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060425, 33.556660, 36.042728>,  <26.245390, 33.845463, 36.248592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060425, 33.556660, 36.042728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713874, -0.647430, 0.266869,
		-0.525886, -0.243996, 0.814806,
		-0.462415, -0.722012, -0.514657,
		25.921700, 33.340057, 35.888332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998943, 33.282730, 36.699726>,  <26.245390, 33.845463, 36.248592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998943, 33.282730, 36.699726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096571, 33.151844, 36.334572>,  <26.155148, 33.073311, 36.115479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096571, 33.151844, 36.334572>,  <25.998943, 33.282730, 36.699726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096571, 33.151844, 36.334572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702544, -0.589236, 0.399039,
		-0.668477, -0.738736, 0.086067,
		0.244071, -0.327215, -0.912886,
		26.169792, 33.053680, 36.060707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029659, 32.565823, 36.695545>,  <25.998943, 33.282730, 36.699726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029659, 32.565823, 36.695545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305130, 32.721939, 36.451122>,  <26.470411, 32.815609, 36.304466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305130, 32.721939, 36.451122>,  <26.029659, 32.565823, 36.695545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305130, 32.721939, 36.451122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689377, -0.613616, 0.385013,
		-0.224688, -0.686401, -0.691643,
		0.688676, 0.390295, -0.611061,
		26.511732, 32.839027, 36.267803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329735, 32.083931, 36.244228>,  <26.029659, 32.565823, 36.695545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.329735, 32.083931, 36.244228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578232, 32.374565, 36.361618>,  <26.727331, 32.548946, 36.432053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578232, 32.374565, 36.361618>,  <26.329735, 32.083931, 36.244228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578232, 32.374565, 36.361618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574893, -0.677097, 0.459389,
		0.532498, -0.116674, -0.838351,
		0.621244, 0.726586, 0.293478,
		26.764605, 32.592541, 36.449661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968048, 31.850182, 36.226795>,  <26.329735, 32.083931, 36.244228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968048, 31.850182, 36.226795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058071, 32.165600, 36.455723>,  <27.112085, 32.354851, 36.593079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058071, 32.165600, 36.455723>,  <26.968048, 31.850182, 36.226795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058071, 32.165600, 36.455723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670157, -0.551661, 0.496549,
		0.707275, 0.271790, -0.652604,
		0.225059, 0.788543, 0.572318,
		27.125589, 32.402164, 36.627419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680748, 31.956329, 36.073357>,  <26.968048, 31.850182, 36.226795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680748, 31.956329, 36.073357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577370, 32.117378, 36.424606>,  <27.515343, 32.214008, 36.635357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577370, 32.117378, 36.424606>,  <27.680748, 31.956329, 36.073357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577370, 32.117378, 36.424606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600786, -0.644841, 0.472479,
		0.756481, 0.649674, -0.075233,
		-0.258444, 0.402620, 0.878125,
		27.499836, 32.238163, 36.688046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242691, 31.821894, 36.440910>,  <27.680748, 31.956329, 36.073357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242691, 31.821894, 36.440910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936352, 31.863283, 36.694767>,  <27.752548, 31.888117, 36.847080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936352, 31.863283, 36.694767>,  <28.242691, 31.821894, 36.440910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936352, 31.863283, 36.694767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350934, -0.759766, 0.547358,
		0.538818, 0.641910, 0.545552,
		-0.765846, 0.103473, 0.634643,
		27.706598, 31.894325, 36.885159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049631, 31.290075, 36.827114>,  <28.242691, 31.821894, 36.440910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049631, 31.290075, 36.827114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115572, 31.490732, 37.166801>,  <28.155136, 31.611126, 37.370613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115572, 31.490732, 37.166801>,  <28.049631, 31.290075, 36.827114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115572, 31.490732, 37.166801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639841, 0.709639, -0.294984,
		-0.750618, -0.494738, 0.437958,
		0.164852, 0.501644, 0.849222,
		28.165028, 31.641226, 37.421570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353254, 31.278391, 37.268631>,  <28.049631, 31.290075, 36.827114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353254, 31.278391, 37.268631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605204, 31.579182, 37.346386>,  <27.756374, 31.759657, 37.393040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605204, 31.579182, 37.346386>,  <27.353254, 31.278391, 37.268631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605204, 31.579182, 37.346386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750360, 0.653771, -0.097682,
		-0.200540, -0.084333, 0.976049,
		0.629875, 0.751978, 0.194387,
		27.794167, 31.804775, 37.404701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990381, 31.880671, 37.754986>,  <27.353254, 31.278391, 37.268631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990381, 31.880671, 37.754986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296158, 32.037163, 37.550022>,  <27.479624, 32.131058, 37.427044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296158, 32.037163, 37.550022>,  <26.990381, 31.880671, 37.754986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296158, 32.037163, 37.550022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624211, 0.647920, -0.436533,
		0.161216, 0.653558, 0.739508,
		0.764441, 0.391232, -0.512413,
		27.525490, 32.154533, 37.396297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005993, 32.548546, 37.919949>,  <26.990381, 31.880671, 37.754986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005993, 32.548546, 37.919949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143785, 32.454723, 37.556339>,  <27.226461, 32.398430, 37.338173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143785, 32.454723, 37.556339>,  <27.005993, 32.548546, 37.919949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143785, 32.454723, 37.556339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650165, 0.638881, -0.411237,
		0.677213, 0.732677, 0.067583,
		0.344481, -0.234555, -0.909020,
		27.247129, 32.384357, 37.283634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043892, 33.194244, 37.620228>,  <27.005993, 32.548546, 37.919949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043892, 33.194244, 37.620228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077114, 32.935661, 37.316864>,  <27.097048, 32.780510, 37.134846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077114, 32.935661, 37.316864>,  <27.043892, 33.194244, 37.620228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077114, 32.935661, 37.316864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395924, 0.676995, -0.620421,
		0.914519, 0.351804, -0.199720,
		0.083057, -0.646461, -0.758413,
		27.102032, 32.741722, 37.089340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586618, 33.382133, 37.139584>,  <27.043892, 33.194244, 37.620228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586618, 33.382133, 37.139584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263739, 33.214207, 36.973606>,  <27.070011, 33.113449, 36.874020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263739, 33.214207, 36.973606>,  <27.586618, 33.382133, 37.139584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263739, 33.214207, 36.973606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102805, 0.792214, -0.601522,
		0.581254, -0.442891, -0.682636,
		-0.807202, -0.419815, -0.414946,
		27.021578, 33.088261, 36.849121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900595, 32.660774, 36.843414>,  <27.586618, 33.382133, 37.139584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900595, 32.660774, 36.843414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138842, 32.812382, 37.126705>,  <28.281790, 32.903347, 37.296680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138842, 32.812382, 37.126705>,  <27.900595, 32.660774, 36.843414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138842, 32.812382, 37.126705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554317, 0.444161, -0.703885,
		-0.581352, 0.811828, 0.054453,
		0.595619, 0.379021, 0.708224,
		28.317528, 32.926086, 37.339172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251413, 33.249550, 36.619762>,  <27.900595, 32.660774, 36.843414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251413, 33.249550, 36.619762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479391, 33.081524, 36.902241>,  <28.616179, 32.980709, 37.071728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479391, 33.081524, 36.902241>,  <28.251413, 33.249550, 36.619762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479391, 33.081524, 36.902241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818631, 0.216292, -0.532035,
		0.070743, 0.881344, 0.467150,
		0.569946, -0.420061, 0.706194,
		28.650375, 32.955505, 37.114098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908020, 33.703346, 36.772861>,  <28.251413, 33.249550, 36.619762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908020, 33.703346, 36.772861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959700, 33.311409, 36.833797>,  <28.990707, 33.076244, 36.870361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959700, 33.311409, 36.833797>,  <28.908020, 33.703346, 36.772861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959700, 33.311409, 36.833797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761879, -0.000247, -0.647719,
		0.634703, 0.199751, 0.746493,
		0.129198, -0.979847, 0.152343,
		28.998459, 33.017456, 36.879501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622959, 33.604347, 36.902035>,  <28.908020, 33.703346, 36.772861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622959, 33.604347, 36.902035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448589, 33.265881, 36.779415>,  <29.343967, 33.062801, 36.705841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448589, 33.265881, 36.779415>,  <29.622959, 33.604347, 36.902035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448589, 33.265881, 36.779415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735043, -0.138196, -0.663788,
		0.519309, -0.514691, 0.682210,
		-0.435925, -0.846165, -0.306553,
		29.317812, 33.012032, 36.687450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245918, 33.865437, 36.697666>,  <29.622959, 33.604347, 36.902035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245918, 33.865437, 36.697666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929359, 34.083572, 36.587177>,  <29.739424, 34.214455, 36.520882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929359, 34.083572, 36.587177>,  <30.245918, 33.865437, 36.697666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929359, 34.083572, 36.587177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576925, 0.815688, -0.042536,
		0.202117, -0.193024, -0.960151,
		-0.791395, 0.545338, -0.276225,
		29.691940, 34.247173, 36.504311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320253, 34.252186, 36.145340>,  <30.245918, 33.865437, 36.697666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320253, 34.252186, 36.145340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019503, 34.469364, 36.294945>,  <29.839052, 34.599670, 36.384708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019503, 34.469364, 36.294945>,  <30.320253, 34.252186, 36.145340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019503, 34.469364, 36.294945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597703, 0.800764, 0.039105,
		-0.278265, 0.252952, -0.926598,
		-0.751878, 0.542948, 0.374015,
		29.793940, 34.632248, 36.407150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183468, 34.878563, 35.762054>,  <30.320253, 34.252186, 36.145340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183468, 34.878563, 35.762054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089567, 34.956459, 36.142994>,  <30.033228, 35.003197, 36.371559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089567, 34.956459, 36.142994>,  <30.183468, 34.878563, 35.762054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089567, 34.956459, 36.142994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745353, 0.664957, 0.047757,
		-0.623972, 0.721048, -0.301245,
		-0.234750, 0.194735, 0.952350,
		30.019142, 35.014881, 36.428699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155567, 35.514008, 35.922810>,  <30.183468, 34.878563, 35.762054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155567, 35.514008, 35.922810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190737, 35.411366, 36.307812>,  <30.211838, 35.349781, 36.538815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190737, 35.411366, 36.307812>,  <30.155567, 35.514008, 35.922810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190737, 35.411366, 36.307812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650920, 0.746223, 0.139481,
		-0.754038, 0.614253, 0.232638,
		0.087923, -0.256602, 0.962510,
		30.217113, 35.334385, 36.596565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888435, 36.022575, 36.368542>,  <30.155567, 35.514008, 35.922810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888435, 36.022575, 36.368542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200584, 35.811325, 36.502468>,  <30.387875, 35.684574, 36.582825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200584, 35.811325, 36.502468>,  <29.888435, 36.022575, 36.368542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200584, 35.811325, 36.502468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515887, 0.846338, 0.132564,
		-0.353381, 0.069280, 0.932911,
		0.780374, -0.528122, 0.334820,
		30.434696, 35.652889, 36.602913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241505, 36.187092, 37.063850>,  <29.888435, 36.022575, 36.368542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241505, 36.187092, 37.063850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515337, 36.048126, 36.807522>,  <30.679636, 35.964745, 36.653725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515337, 36.048126, 36.807522>,  <30.241505, 36.187092, 37.063850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515337, 36.048126, 36.807522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595806, 0.773166, 0.217323,
		0.419958, -0.530579, 0.736289,
		0.684581, -0.347418, -0.640819,
		30.720711, 35.943901, 36.615276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950808, 36.475018, 37.266518>,  <30.241505, 36.187092, 37.063850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950808, 36.475018, 37.266518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998945, 36.371437, 36.883171>,  <31.027828, 36.309288, 36.653164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998945, 36.371437, 36.883171>,  <30.950808, 36.475018, 37.266518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998945, 36.371437, 36.883171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532988, 0.831298, -0.157693,
		0.837521, -0.491819, 0.238062,
		0.120345, -0.258955, -0.958363,
		31.035049, 36.293751, 36.595661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676182, 36.378059, 37.102612>,  <30.950808, 36.475018, 37.266518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676182, 36.378059, 37.102612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442255, 36.500443, 36.802113>,  <31.301899, 36.573872, 36.621811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442255, 36.500443, 36.802113>,  <31.676182, 36.378059, 37.102612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442255, 36.500443, 36.802113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528331, 0.846425, -0.066567,
		0.615512, -0.435839, -0.656650,
		-0.584817, 0.305956, -0.751252,
		31.266809, 36.592228, 36.576736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075752, 36.667618, 36.523514>,  <31.676182, 36.378059, 37.102612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075752, 36.667618, 36.523514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710390, 36.830276, 36.516335>,  <31.491173, 36.927872, 36.512028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710390, 36.830276, 36.516335>,  <32.075752, 36.667618, 36.523514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710390, 36.830276, 36.516335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406025, 0.907108, -0.110901,
		-0.028821, -0.108583, -0.993670,
		-0.913407, 0.406651, -0.017943,
		31.436367, 36.952271, 36.510952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930216, 37.043514, 35.897018>,  <32.075752, 36.667618, 36.523514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930216, 37.043514, 35.897018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723854, 37.240425, 36.177448>,  <31.600037, 37.358570, 36.345707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723854, 37.240425, 36.177448>,  <31.930216, 37.043514, 35.897018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723854, 37.240425, 36.177448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474227, 0.845673, -0.244839,
		-0.713408, 0.206155, -0.669738,
		-0.515904, 0.492278, 0.701074,
		31.569082, 37.388107, 36.387772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615623, 37.067989, 36.197182>,  <31.930216, 37.043514, 35.897018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615623, 37.067989, 36.197182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806313, 37.306511, 35.938831>,  <32.920727, 37.449623, 35.783821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806313, 37.306511, 35.938831>,  <32.615623, 37.067989, 36.197182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806313, 37.306511, 35.938831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877169, -0.274616, 0.393904,
		0.057520, -0.754324, -0.653977,
		0.476724, 0.596306, -0.645874,
		32.949329, 37.485401, 35.745068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111729, 36.647629, 35.830719>,  <32.615623, 37.067989, 36.197182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111729, 36.647629, 35.830719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246140, 37.023003, 35.798634>,  <33.326786, 37.248226, 35.779381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246140, 37.023003, 35.798634>,  <33.111729, 36.647629, 35.830719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246140, 37.023003, 35.798634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916482, -0.306149, 0.257552,
		0.217137, -0.160060, -0.962929,
		0.336024, 0.938432, -0.080216,
		33.346947, 37.304531, 35.774570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693790, 36.568062, 35.378796>,  <33.111729, 36.647629, 35.830719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693790, 36.568062, 35.378796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739613, 36.911533, 35.578613>,  <33.767105, 37.117619, 35.698502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739613, 36.911533, 35.578613>,  <33.693790, 36.568062, 35.378796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739613, 36.911533, 35.578613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956504, -0.231143, 0.177969,
		0.268284, 0.457424, -0.847813,
		0.114559, 0.858683, 0.499540,
		33.773979, 37.169140, 35.728474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251236, 36.908073, 35.061543>,  <33.693790, 36.568062, 35.378796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251236, 36.908073, 35.061543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218285, 37.028851, 35.441448>,  <34.198513, 37.101315, 35.669392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218285, 37.028851, 35.441448>,  <34.251236, 36.908073, 35.061543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218285, 37.028851, 35.441448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896439, -0.393943, 0.202993,
		0.435443, 0.868125, -0.238217,
		-0.082379, 0.301939, 0.949761,
		34.193569, 37.119431, 35.726376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644875, 37.458752, 35.336132>,  <34.251236, 36.908073, 35.061543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644875, 37.458752, 35.336132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605263, 37.184650, 35.624748>,  <34.581497, 37.020187, 35.797916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605263, 37.184650, 35.624748>,  <34.644875, 37.458752, 35.336132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605263, 37.184650, 35.624748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991839, -0.126490, 0.015998,
		0.080304, 0.717234, 0.692190,
		-0.099029, -0.685256, 0.721538,
		34.575554, 36.979073, 35.841209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164768, 37.624866, 35.852116>,  <34.644875, 37.458752, 35.336132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164768, 37.624866, 35.852116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059689, 37.241367, 35.895554>,  <34.996643, 37.011269, 35.921616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059689, 37.241367, 35.895554>,  <35.164768, 37.624866, 35.852116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059689, 37.241367, 35.895554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964124, -0.256372, 0.068840,
		-0.038161, 0.122781, 0.991700,
		-0.262697, -0.958748, 0.108592,
		34.980881, 36.953743, 35.928131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416225, 37.270149, 36.570080>,  <35.164768, 37.624866, 35.852116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416225, 37.270149, 36.570080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378418, 37.053745, 36.235806>,  <35.355736, 36.923901, 36.035240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378418, 37.053745, 36.235806>,  <35.416225, 37.270149, 36.570080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378418, 37.053745, 36.235806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995011, -0.078258, -0.061871,
		-0.031926, -0.837365, 0.545711,
		-0.094515, -0.541013, -0.835687,
		35.350063, 36.891441, 35.985100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684532, 37.079044, 36.903881>,  <35.416225, 37.270149, 36.570080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684532, 37.079044, 36.903881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675659, 37.189468, 36.519527>,  <34.670338, 37.255722, 36.288914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675659, 37.189468, 36.519527>,  <34.684532, 37.079044, 36.903881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675659, 37.189468, 36.519527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929255, 0.348830, 0.121667,
		0.368773, 0.895606, 0.248791,
		-0.022180, 0.276058, -0.960885,
		34.669006, 37.272285, 36.231262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364113, 37.778248, 36.793652>,  <34.684532, 37.079044, 36.903881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364113, 37.778248, 36.793652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329975, 37.601643, 36.436378>,  <34.309494, 37.495678, 36.222015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329975, 37.601643, 36.436378>,  <34.364113, 37.778248, 36.793652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329975, 37.601643, 36.436378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807890, 0.555321, -0.197312,
		0.583121, 0.704758, -0.404086,
		-0.085340, -0.441514, -0.893187,
		34.304375, 37.469189, 36.168423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022320, 38.236980, 36.387875>,  <34.364113, 37.778248, 36.793652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022320, 38.236980, 36.387875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944355, 37.904400, 36.179760>,  <33.897575, 37.704853, 36.054890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944355, 37.904400, 36.179760>,  <34.022320, 38.236980, 36.387875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944355, 37.904400, 36.179760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881359, 0.381233, -0.279049,
		0.430368, 0.404172, -0.807111,
		-0.194914, -0.831448, -0.520291,
		33.885880, 37.654964, 36.023674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709621, 38.496674, 35.707985>,  <34.022320, 38.236980, 36.387875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709621, 38.496674, 35.707985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591297, 38.114922, 35.691689>,  <33.520302, 37.885872, 35.681911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591297, 38.114922, 35.691689>,  <33.709621, 38.496674, 35.707985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591297, 38.114922, 35.691689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879837, 0.288822, -0.377450,
		0.371998, -0.075806, -0.925133,
		-0.295811, -0.954377, -0.040744,
		33.502552, 37.828609, 35.679466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514137, 38.372379, 34.981739>,  <33.709621, 38.496674, 35.707985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514137, 38.372379, 34.981739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335594, 38.107582, 35.222580>,  <33.228470, 37.948704, 35.367085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335594, 38.107582, 35.222580>,  <33.514137, 38.372379, 34.981739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335594, 38.107582, 35.222580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893566, 0.365810, -0.260235,
		-0.047983, -0.654180, -0.754815,
		-0.446359, -0.661991, 0.602106,
		33.201687, 37.908985, 35.403214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969158, 38.321362, 34.318813>,  <33.514137, 38.372379, 34.981739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969158, 38.321362, 34.318813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121815, 38.497520, 34.643871>,  <34.213409, 38.603218, 34.838905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121815, 38.497520, 34.643871>,  <33.969158, 38.321362, 34.318813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121815, 38.497520, 34.643871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395230, 0.717012, -0.574184,
		-0.835548, 0.540317, 0.099585,
		0.381645, 0.440399, 0.812648,
		34.236309, 38.629639, 34.887665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578964, 38.930443, 34.426674>,  <33.969158, 38.321362, 34.318813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578964, 38.930443, 34.426674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965057, 38.935387, 34.531116>,  <34.196712, 38.938351, 34.593781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965057, 38.935387, 34.531116>,  <33.578964, 38.930443, 34.426674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965057, 38.935387, 34.531116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148589, 0.795869, -0.586953,
		-0.215057, 0.605343, 0.766362,
		0.965232, 0.012355, 0.261104,
		34.254627, 38.939095, 34.609447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754272, 39.667686, 34.557777>,  <33.578964, 38.930443, 34.426674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754272, 39.667686, 34.557777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089634, 39.465244, 34.476852>,  <34.290852, 39.343777, 34.428299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089634, 39.465244, 34.476852>,  <33.754272, 39.667686, 34.557777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089634, 39.465244, 34.476852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312600, 0.750565, -0.582180,
		0.446495, 0.424861, 0.787487,
		0.838406, -0.506109, -0.202312,
		34.341156, 39.313412, 34.416161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191746, 40.205395, 34.394672>,  <33.754272, 39.667686, 34.557777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191746, 40.205395, 34.394672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426422, 39.905895, 34.271275>,  <34.567226, 39.726196, 34.197235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426422, 39.905895, 34.271275>,  <34.191746, 40.205395, 34.394672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426422, 39.905895, 34.271275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279645, 0.544828, -0.790545,
		0.759996, 0.377536, 0.529029,
		0.586689, -0.748752, -0.308491,
		34.602428, 39.681271, 34.178726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822060, 40.461823, 34.319916>,  <34.191746, 40.205395, 34.394672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822060, 40.461823, 34.319916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803120, 40.136719, 34.087646>,  <34.791756, 39.941658, 33.948284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803120, 40.136719, 34.087646>,  <34.822060, 40.461823, 34.319916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803120, 40.136719, 34.087646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290769, 0.544938, -0.786445,
		0.955621, -0.206077, 0.210524,
		-0.047346, -0.812758, -0.580675,
		34.788918, 39.892891, 33.913445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527710, 40.385479, 34.000160>,  <34.822060, 40.461823, 34.319916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527710, 40.385479, 34.000160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253613, 40.198277, 33.776947>,  <35.089153, 40.085953, 33.643017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253613, 40.198277, 33.776947>,  <35.527710, 40.385479, 34.000160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253613, 40.198277, 33.776947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386057, 0.416297, -0.823199,
		0.617574, -0.779528, -0.104587,
		-0.685246, -0.468010, -0.558036,
		35.048038, 40.057873, 33.609535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885094, 40.003170, 33.496777>,  <35.527710, 40.385479, 34.000160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885094, 40.003170, 33.496777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519470, 40.059059, 33.344471>,  <35.300098, 40.092594, 33.253086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519470, 40.059059, 33.344471>,  <35.885094, 40.003170, 33.496777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519470, 40.059059, 33.344471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392359, 0.066768, -0.917386,
		-0.102762, -0.987936, -0.115853,
		-0.914054, 0.139728, -0.380764,
		35.245255, 40.100979, 33.230240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127937, 39.591423, 32.940620>,  <35.885094, 40.003170, 33.496777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127937, 39.591423, 32.940620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790581, 39.787758, 32.853195>,  <35.588165, 39.905560, 32.800739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790581, 39.787758, 32.853195>,  <36.127937, 39.591423, 32.940620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790581, 39.787758, 32.853195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203666, -0.084377, -0.975398,
		-0.497200, -0.867157, -0.028804,
		-0.843393, 0.490834, -0.218563,
		35.537563, 39.935009, 32.787628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762596, 39.198429, 32.495464>,  <36.127937, 39.591423, 32.940620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762596, 39.198429, 32.495464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644417, 39.576988, 32.443237>,  <35.573509, 39.804123, 32.411903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644417, 39.576988, 32.443237>,  <35.762596, 39.198429, 32.495464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644417, 39.576988, 32.443237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449759, 0.017213, -0.892984,
		-0.842868, -0.322555, -0.430735,
		-0.295451, 0.946394, -0.130563,
		35.555782, 39.860905, 32.404068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756466, 39.297928, 31.830086>,  <35.762596, 39.198429, 32.495464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756466, 39.297928, 31.830086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754093, 39.682079, 31.941540>,  <35.752670, 39.912571, 32.008411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754093, 39.682079, 31.941540>,  <35.756466, 39.297928, 31.830086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754093, 39.682079, 31.941540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625002, 0.221068, -0.748666,
		-0.780600, 0.169710, -0.601549,
		-0.005927, 0.960379, 0.278635,
		35.752316, 39.970192, 32.025131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586418, 39.718269, 31.248444>,  <35.756466, 39.297928, 31.830086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586418, 39.718269, 31.248444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767815, 39.982559, 31.487707>,  <35.876652, 40.141132, 31.631266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767815, 39.982559, 31.487707>,  <35.586418, 39.718269, 31.248444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767815, 39.982559, 31.487707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427122, 0.427937, -0.796516,
		-0.782248, 0.616700, -0.088142,
		0.453492, 0.660720, 0.598159,
		35.903862, 40.180775, 31.667154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406239, 40.408310, 31.057707>,  <35.586418, 39.718269, 31.248444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406239, 40.408310, 31.057707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743134, 40.485527, 31.259054>,  <35.945271, 40.531857, 31.379862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743134, 40.485527, 31.259054>,  <35.406239, 40.408310, 31.057707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743134, 40.485527, 31.259054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315087, 0.581366, -0.750156,
		-0.437452, 0.790410, 0.428821,
		0.842233, 0.193041, 0.503368,
		35.995804, 40.543438, 31.410065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629158, 41.035355, 30.830788>,  <35.406239, 40.408310, 31.057707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629158, 41.035355, 30.830788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954960, 40.901138, 31.020098>,  <36.150440, 40.820606, 31.133684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954960, 40.901138, 31.020098>,  <35.629158, 41.035355, 30.830788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954960, 40.901138, 31.020098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579113, 0.519049, -0.628663,
		-0.034708, 0.786130, 0.617086,
		0.814508, -0.335543, 0.473273,
		36.199314, 40.800476, 31.162079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021919, 41.629475, 30.923161>,  <35.629158, 41.035355, 30.830788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021919, 41.629475, 30.923161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266663, 41.313866, 30.945328>,  <36.413509, 41.124500, 30.958628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266663, 41.313866, 30.945328>,  <36.021919, 41.629475, 30.923161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266663, 41.313866, 30.945328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751164, 0.557694, -0.353171,
		0.247753, 0.257719, 0.933916,
		0.611859, -0.789023, 0.055419,
		36.450222, 41.077160, 30.961954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660618, 41.888493, 31.134035>,  <36.021919, 41.629475, 30.923161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660618, 41.888493, 31.134035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754105, 41.553528, 30.936401>,  <36.810196, 41.352551, 30.817822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754105, 41.553528, 30.936401>,  <36.660618, 41.888493, 31.134035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754105, 41.553528, 30.936401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746957, 0.479947, -0.460115,
		0.622440, -0.261521, 0.737682,
		0.233719, -0.837411, -0.494083,
		36.824219, 41.302303, 30.788176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274918, 41.975670, 30.881268>,  <36.660618, 41.888493, 31.134035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274918, 41.975670, 30.881268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274590, 41.629158, 30.681444>,  <37.274391, 41.421249, 30.561550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274590, 41.629158, 30.681444>,  <37.274918, 41.975670, 30.881268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274590, 41.629158, 30.681444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755667, 0.326650, -0.567686,
		0.654956, -0.377968, 0.654350,
		-0.000824, -0.866279, -0.499559,
		37.274342, 41.369274, 30.531576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864578, 41.614136, 31.107130>,  <37.274918, 41.975670, 30.881268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864578, 41.614136, 31.107130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747543, 41.485374, 30.746958>,  <37.677322, 41.408119, 30.530855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747543, 41.485374, 30.746958>,  <37.864578, 41.614136, 31.107130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747543, 41.485374, 30.746958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843093, 0.357473, -0.401755,
		0.451204, -0.876695, 0.166798,
		-0.292590, -0.321899, -0.900428,
		37.659767, 41.388805, 30.476830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427891, 41.281376, 30.665100>,  <37.864578, 41.614136, 31.107130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427891, 41.281376, 30.665100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170044, 41.433575, 30.399864>,  <38.015335, 41.524895, 30.240723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170044, 41.433575, 30.399864>,  <38.427891, 41.281376, 30.665100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170044, 41.433575, 30.399864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764398, 0.306336, -0.567321,
		-0.012735, -0.872571, -0.488320,
		-0.644618, 0.380496, -0.663091,
		37.976658, 41.547722, 30.200937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780647, 41.188744, 29.977325>,  <38.427891, 41.281376, 30.665100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780647, 41.188744, 29.977325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488605, 41.444771, 29.881615>,  <38.313381, 41.598389, 29.824188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488605, 41.444771, 29.881615>,  <38.780647, 41.188744, 29.977325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488605, 41.444771, 29.881615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588428, 0.410875, -0.696372,
		-0.347414, -0.649223, -0.676619,
		-0.730107, 0.640071, -0.239278,
		38.269573, 41.636791, 29.809832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764820, 41.199585, 29.162466>,  <38.780647, 41.188744, 29.977325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764820, 41.199585, 29.162466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617989, 41.526463, 29.340206>,  <38.529892, 41.722588, 29.446850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617989, 41.526463, 29.340206>,  <38.764820, 41.199585, 29.162466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617989, 41.526463, 29.340206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552119, 0.575862, -0.602949,
		-0.748611, 0.024007, -0.662574,
		-0.367077, 0.817194, 0.444352,
		38.507866, 41.771622, 29.473511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775578, 41.665157, 28.674585>,  <38.764820, 41.199585, 29.162466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775578, 41.665157, 28.674585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739941, 41.906460, 28.991608>,  <38.718559, 42.051243, 29.181822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739941, 41.906460, 28.991608>,  <38.775578, 41.665157, 28.674585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739941, 41.906460, 28.991608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533708, 0.700758, -0.473386,
		-0.840962, 0.380816, -0.384398,
		-0.089097, 0.603256, 0.792555,
		38.713211, 42.087437, 29.229374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509815, 42.309311, 28.413809>,  <38.775578, 41.665157, 28.674585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509815, 42.309311, 28.413809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700871, 42.397366, 28.754021>,  <38.815502, 42.450199, 28.958147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700871, 42.397366, 28.754021>,  <38.509815, 42.309311, 28.413809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700871, 42.397366, 28.754021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444623, 0.774403, -0.450123,
		-0.757742, 0.593161, 0.272006,
		0.477637, 0.220138, 0.850530,
		38.844162, 42.463406, 29.009180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491390, 42.998089, 28.441759>,  <38.509815, 42.309311, 28.413809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491390, 42.998089, 28.441759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773952, 42.910900, 28.711124>,  <38.943489, 42.858585, 28.872744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773952, 42.910900, 28.711124>,  <38.491390, 42.998089, 28.441759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773952, 42.910900, 28.711124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538660, 0.782752, -0.311682,
		-0.459175, 0.582912, 0.670352,
		0.706402, -0.217975, 0.673412,
		38.985874, 42.845509, 28.913147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748821, 43.654968, 28.659845>,  <38.491390, 42.998089, 28.441759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748821, 43.654968, 28.659845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031872, 43.389420, 28.756618>,  <39.201702, 43.230091, 28.814682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031872, 43.389420, 28.756618>,  <38.748821, 43.654968, 28.659845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031872, 43.389420, 28.756618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697536, 0.710961, -0.089320,
		-0.112707, 0.231962, 0.966173,
		0.707631, -0.663873, 0.241932,
		39.244160, 43.190258, 28.829199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236828, 44.069988, 28.980938>,  <38.748821, 43.654968, 28.659845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236828, 44.069988, 28.980938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435932, 43.749187, 28.848862>,  <39.555397, 43.556705, 28.769615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435932, 43.749187, 28.848862>,  <39.236828, 44.069988, 28.980938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435932, 43.749187, 28.848862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794899, 0.574138, -0.196216,
		0.346940, -0.164799, 0.923295,
		0.497763, -0.802002, -0.330190,
		39.585262, 43.508587, 28.749805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902245, 44.014286, 29.343367>,  <39.236828, 44.069988, 28.980938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902245, 44.014286, 29.343367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924686, 43.825096, 28.991652>,  <39.938152, 43.711582, 28.780622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924686, 43.825096, 28.991652>,  <39.902245, 44.014286, 29.343367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924686, 43.825096, 28.991652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888841, 0.424795, -0.171790,
		0.454769, -0.771908, 0.444233,
		0.056102, -0.472977, -0.879287,
		39.941517, 43.683205, 28.727865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612026, 43.774570, 29.275488>,  <39.902245, 44.014286, 29.343367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612026, 43.774570, 29.275488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490471, 43.714447, 28.899178>,  <40.417538, 43.678375, 28.673391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490471, 43.714447, 28.899178>,  <40.612026, 43.774570, 29.275488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490471, 43.714447, 28.899178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904804, 0.263655, -0.334389,
		0.298301, -0.952835, 0.055877,
		-0.303885, -0.150307, -0.940777,
		40.399303, 43.669353, 28.616945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155510, 43.534908, 28.988249>,  <40.612026, 43.774570, 29.275488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155510, 43.534908, 28.988249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942081, 43.646770, 28.668976>,  <40.814026, 43.713886, 28.477411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942081, 43.646770, 28.668976>,  <41.155510, 43.534908, 28.988249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942081, 43.646770, 28.668976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831133, 0.348104, -0.433637,
		0.156583, -0.894773, -0.418167,
		-0.533572, 0.279652, -0.798182,
		40.782009, 43.730667, 28.429522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502926, 43.248192, 28.415186>,  <41.155510, 43.534908, 28.988249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502926, 43.248192, 28.415186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281509, 43.517101, 28.218559>,  <41.148659, 43.678448, 28.100584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281509, 43.517101, 28.218559>,  <41.502926, 43.248192, 28.415186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281509, 43.517101, 28.218559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784761, 0.223448, -0.578118,
		-0.278815, -0.705775, -0.651263,
		-0.553545, 0.672274, -0.491564,
		41.115444, 43.718784, 28.071091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548401, 43.132034, 27.687584>,  <41.502926, 43.248192, 28.415186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548401, 43.132034, 27.687584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434238, 43.515396, 27.687555>,  <41.365742, 43.745415, 27.687538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434238, 43.515396, 27.687555>,  <41.548401, 43.132034, 27.687584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434238, 43.515396, 27.687555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683469, 0.203484, -0.701045,
		-0.671871, -0.200134, -0.713117,
		-0.285411, 0.958405, -0.000070,
		41.348614, 43.802917, 27.687534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439976, 43.359814, 26.949852>,  <41.548401, 43.132034, 27.687584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439976, 43.359814, 26.949852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498142, 43.694679, 27.160757>,  <41.533043, 43.895599, 27.287300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498142, 43.694679, 27.160757>,  <41.439976, 43.359814, 26.949852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498142, 43.694679, 27.160757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717001, 0.278046, -0.639219,
		-0.681736, 0.471001, -0.559816,
		0.145418, 0.837167, 0.527262,
		41.541767, 43.945827, 27.318935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232422, 43.910004, 26.545057>,  <41.439976, 43.359814, 26.949852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232422, 43.910004, 26.545057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458195, 44.103821, 26.812382>,  <41.593658, 44.220112, 26.972776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458195, 44.103821, 26.812382>,  <41.232422, 43.910004, 26.545057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458195, 44.103821, 26.812382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536755, 0.399655, -0.743081,
		-0.627145, 0.778138, -0.034501,
		0.564431, 0.484538, 0.668311,
		41.627525, 44.249184, 27.012875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256302, 44.714684, 26.432184>,  <41.232422, 43.910004, 26.545057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256302, 44.714684, 26.432184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577385, 44.630459, 26.655373>,  <41.770035, 44.579926, 26.789286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577385, 44.630459, 26.655373>,  <41.256302, 44.714684, 26.432184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577385, 44.630459, 26.655373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585739, 0.454285, -0.671218,
		-0.112144, 0.865614, 0.487991,
		0.802704, -0.210562, 0.557970,
		41.818195, 44.567291, 26.822763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598000, 45.278633, 26.525997>,  <41.256302, 44.714684, 26.432184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598000, 45.278633, 26.525997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889561, 45.008362, 26.570099>,  <42.064499, 44.846199, 26.596560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889561, 45.008362, 26.570099>,  <41.598000, 45.278633, 26.525997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889561, 45.008362, 26.570099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531645, 0.457179, -0.712981,
		0.431343, 0.578309, 0.692461,
		0.728902, -0.675682, 0.110254,
		42.108231, 44.805656, 26.603174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080250, 45.710018, 26.660748>,  <41.598000, 45.278633, 26.525997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080250, 45.710018, 26.660748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243877, 45.360638, 26.555117>,  <42.342056, 45.151009, 26.491737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243877, 45.360638, 26.555117>,  <42.080250, 45.710018, 26.660748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243877, 45.360638, 26.555117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579249, 0.472180, -0.664468,
		0.705075, 0.118848, 0.699103,
		0.409073, -0.873454, -0.264079,
		42.366600, 45.098602, 26.475893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812935, 45.815338, 26.581938>,  <42.080250, 45.710018, 26.660748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812935, 45.815338, 26.581938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770748, 45.483356, 26.362827>,  <42.745434, 45.284168, 26.231361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770748, 45.483356, 26.362827>,  <42.812935, 45.815338, 26.581938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770748, 45.483356, 26.362827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673754, 0.345503, -0.653210,
		0.731390, -0.437960, 0.522743,
		-0.105470, -0.829951, -0.547775,
		42.739105, 45.234371, 26.198494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482075, 45.597794, 26.406456>,  <42.812935, 45.815338, 26.581938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482075, 45.597794, 26.406456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252178, 45.426674, 26.127413>,  <43.114239, 45.324001, 25.959988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252178, 45.426674, 26.127413>,  <43.482075, 45.597794, 26.406456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252178, 45.426674, 26.127413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752274, 0.059341, -0.656173,
		0.322109, -0.901922, 0.287718,
		-0.574743, -0.427802, -0.697607,
		43.079754, 45.298332, 25.918131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887169, 45.187622, 26.056911>,  <43.482075, 45.597794, 26.406456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887169, 45.187622, 26.056911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576859, 45.234123, 25.808830>,  <43.390671, 45.262024, 25.659981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576859, 45.234123, 25.808830>,  <43.887169, 45.187622, 26.056911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576859, 45.234123, 25.808830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623784, -0.006995, -0.781566,
		-0.095196, -0.993195, -0.067089,
		-0.775778, 0.116251, -0.620205,
		43.344124, 45.268997, 25.622768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893181, 44.693115, 25.557680>,  <43.887169, 45.187622, 26.056911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893181, 44.693115, 25.557680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679356, 44.978191, 25.375994>,  <43.551060, 45.149239, 25.266981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679356, 44.978191, 25.375994>,  <43.893181, 44.693115, 25.557680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679356, 44.978191, 25.375994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638915, -0.011004, -0.769199,
		-0.553199, -0.701392, -0.449466,
		-0.534564, 0.712691, -0.454217,
		43.518986, 45.191998, 25.239729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744148, 44.461075, 24.801250>,  <43.893181, 44.693115, 25.557680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744148, 44.461075, 24.801250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663151, 44.852715, 24.793587>,  <43.614552, 45.087696, 24.788988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663151, 44.852715, 24.793587>,  <43.744148, 44.461075, 24.801250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663151, 44.852715, 24.793587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564188, 0.100650, -0.819489,
		-0.800430, -0.176752, -0.572775,
		-0.202496, 0.979096, -0.019158,
		43.602402, 45.146442, 24.787840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518898, 44.625164, 24.100569>,  <43.744148, 44.461075, 24.801250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518898, 44.625164, 24.100569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601063, 44.990791, 24.240450>,  <43.650360, 45.210167, 24.324379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601063, 44.990791, 24.240450>,  <43.518898, 44.625164, 24.100569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601063, 44.990791, 24.240450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652808, 0.138245, -0.744802,
		-0.729142, 0.381281, -0.568311,
		0.205413, 0.914064, 0.349703,
		43.662685, 45.265011, 24.345362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517696, 45.094757, 23.581047>,  <43.518898, 44.625164, 24.100569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517696, 45.094757, 23.581047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747036, 45.276283, 23.853903>,  <43.884640, 45.385201, 24.017616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747036, 45.276283, 23.853903>,  <43.517696, 45.094757, 23.581047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747036, 45.276283, 23.853903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674748, 0.210721, -0.707327,
		-0.464739, 0.865821, -0.185395,
		0.573352, 0.453817, 0.682142,
		43.919041, 45.412430, 24.058546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645855, 45.831776, 23.455452>,  <43.517696, 45.094757, 23.581047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645855, 45.831776, 23.455452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949425, 45.712128, 23.686819>,  <44.131565, 45.640339, 23.825640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949425, 45.712128, 23.686819>,  <43.645855, 45.831776, 23.455452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949425, 45.712128, 23.686819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640639, 0.183774, -0.745526,
		0.116702, 0.936352, 0.331097,
		0.758922, -0.299118, 0.578417,
		44.177101, 45.622391, 23.860344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242836, 46.300747, 23.367071>,  <43.645855, 45.831776, 23.455452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242836, 46.300747, 23.367071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424442, 45.974609, 23.510782>,  <44.533405, 45.778927, 23.597008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424442, 45.974609, 23.510782>,  <44.242836, 46.300747, 23.367071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424442, 45.974609, 23.510782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818843, 0.222869, -0.528986,
		0.351235, 0.534359, 0.768827,
		0.454016, -0.815346, 0.359276,
		44.560646, 45.730007, 23.618565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932426, 46.415600, 23.572371>,  <44.242836, 46.300747, 23.367071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932426, 46.415600, 23.572371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888046, 46.036430, 23.452951>,  <44.861420, 45.808929, 23.381300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888046, 46.036430, 23.452951>,  <44.932426, 46.415600, 23.572371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888046, 46.036430, 23.452951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758092, 0.113525, -0.642191,
		0.642641, -0.297576, 0.706018,
		-0.110949, -0.947924, -0.298545,
		44.854763, 45.752052, 23.363388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386379, 46.322277, 23.029833>,  <44.932426, 46.415600, 23.572371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386379, 46.322277, 23.029833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276955, 46.110271, 23.350893>,  <45.211300, 45.983067, 23.543530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276955, 46.110271, 23.350893>,  <45.386379, 46.322277, 23.029833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276955, 46.110271, 23.350893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169929, 0.847988, 0.502037,
		-0.946724, 0.000946, -0.322043,
		-0.273564, -0.530015, 0.802650,
		45.194885, 45.951267, 23.591688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688850, 47.012817, 23.032110>,  <45.386379, 46.322277, 23.029833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688850, 47.012817, 23.032110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048462, 46.838726, 23.051363>,  <46.264229, 46.734272, 23.062914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048462, 46.838726, 23.051363>,  <45.688850, 47.012817, 23.032110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048462, 46.838726, 23.051363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437462, 0.887922, -0.142202,
		0.019153, 0.148900, 0.988667,
		0.899033, -0.435227, 0.048132,
		46.318172, 46.708157, 23.065802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006550, 47.358997, 23.559978>,  <45.688850, 47.012817, 23.032110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006550, 47.358997, 23.559978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253571, 47.199360, 23.288876>,  <46.401783, 47.103577, 23.126215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253571, 47.199360, 23.288876>,  <46.006550, 47.358997, 23.559978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253571, 47.199360, 23.288876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322967, 0.914377, -0.244145,
		0.717161, -0.068120, 0.693571,
		0.617554, -0.399091, -0.677756,
		46.438835, 47.079632, 23.085548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662209, 46.784649, 23.901043>,  <46.006550, 47.358997, 23.559978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662209, 46.784649, 23.901043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897030, 46.876305, 24.211618>,  <46.037922, 46.931297, 24.397964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897030, 46.876305, 24.211618>,  <45.662209, 46.784649, 23.901043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897030, 46.876305, 24.211618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771887, 0.130689, -0.622182,
		-0.244039, 0.964580, -0.100148,
		0.587056, 0.229140, 0.776441,
		46.073147, 46.945045, 24.444551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931015, 46.147152, 24.044712>,  <45.662209, 46.784649, 23.901043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.931015, 46.147152, 24.044712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094475, 45.932590, 23.749342>,  <46.192551, 45.803852, 23.572121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.094475, 45.932590, 23.749342>,  <45.931015, 46.147152, 24.044712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094475, 45.932590, 23.749342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905866, -0.337134, -0.256412,
		-0.111407, 0.773697, -0.623684,
		0.408651, -0.536408, -0.738425,
		46.217072, 45.771667, 23.527815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.401646, 46.447342, 23.675091>,  <45.931015, 46.147152, 24.044712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.401646, 46.447342, 23.675091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720043, 46.531548, 23.902096>,  <46.911083, 46.582069, 24.038300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720043, 46.531548, 23.902096>,  <46.401646, 46.447342, 23.675091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.720043, 46.531548, 23.902096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391763, -0.535544, 0.748141,
		0.461421, -0.817850, -0.343821,
		0.795998, 0.210512, 0.567514,
		46.958843, 46.594700, 24.072350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680466, 45.740749, 23.984133>,  <46.401646, 46.447342, 23.675091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680466, 45.740749, 23.984133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.735214, 46.077126, 24.193544>,  <46.768063, 46.278950, 24.319191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.735214, 46.077126, 24.193544>,  <46.680466, 45.740749, 23.984133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.735214, 46.077126, 24.193544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418899, -0.429786, 0.799880,
		0.897658, -0.328789, 0.293443,
		0.136874, 0.840941, 0.523530,
		46.776276, 46.329407, 24.350603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.224602, 45.576691, 24.500574>,  <46.680466, 45.740749, 23.984133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.224602, 45.576691, 24.500574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.958397, 45.861649, 24.589640>,  <46.798672, 46.032623, 24.643080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.958397, 45.861649, 24.589640>,  <47.224602, 45.576691, 24.500574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.958397, 45.861649, 24.589640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232078, -0.481049, 0.845418,
		0.709386, 0.510963, 0.485477,
		-0.665515, 0.712397, 0.222666,
		46.758743, 46.075367, 24.656439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.286430, 45.849602, 25.114988>,  <47.224602, 45.576691, 24.500574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.286430, 45.849602, 25.114988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895195, 45.875923, 25.035986>,  <46.660454, 45.891716, 24.988585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895195, 45.875923, 25.035986>,  <47.286430, 45.849602, 25.114988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895195, 45.875923, 25.035986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201668, -0.534925, 0.820479,
		-0.051657, 0.842333, 0.536476,
		-0.978091, 0.065806, -0.197504,
		46.601768, 45.895664, 24.976734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.826035, 45.974594, 25.767925>,  <47.286430, 45.849602, 25.114988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.826035, 45.974594, 25.767925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598495, 45.774086, 25.507114>,  <46.461971, 45.653782, 25.350628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598495, 45.774086, 25.507114>,  <46.826035, 45.974594, 25.767925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.598495, 45.774086, 25.507114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375568, -0.546985, 0.748169,
		-0.731686, 0.670473, 0.122887,
		-0.568844, -0.501272, -0.652030,
		46.427841, 45.623703, 25.311506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107330, 46.004585, 26.024559>,  <46.826035, 45.974594, 25.767925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107330, 46.004585, 26.024559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136616, 45.704346, 25.761885>,  <46.154186, 45.524200, 25.604280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136616, 45.704346, 25.761885>,  <46.107330, 46.004585, 26.024559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136616, 45.704346, 25.761885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378495, -0.630106, 0.678017,
		-0.922703, 0.198911, -0.330234,
		0.073217, -0.750600, -0.656688,
		46.158581, 45.479164, 25.564878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468029, 45.644913, 26.081699>,  <46.107330, 46.004585, 26.024559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468029, 45.644913, 26.081699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.718323, 45.377270, 25.921320>,  <45.868500, 45.216686, 25.825092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.718323, 45.377270, 25.921320>,  <45.468029, 45.644913, 26.081699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.718323, 45.377270, 25.921320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437802, -0.726668, 0.529418,
		-0.645591, -0.155738, -0.747635,
		0.625733, -0.669104, -0.400948,
		45.906044, 45.176540, 25.801035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041382, 45.150017, 25.756687>,  <45.468029, 45.644913, 26.081699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041382, 45.150017, 25.756687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392967, 44.973412, 25.828779>,  <45.603920, 44.867447, 25.872034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392967, 44.973412, 25.828779>,  <45.041382, 45.150017, 25.756687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392967, 44.973412, 25.828779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472630, -0.756153, 0.452608,
		-0.063550, -0.483010, -0.873306,
		0.878967, -0.441514, 0.180232,
		45.656658, 44.840958, 25.882849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965672, 44.439468, 25.544996>,  <45.041382, 45.150017, 25.756687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965672, 44.439468, 25.544996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272388, 44.447849, 25.801617>,  <45.456417, 44.452877, 25.955589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272388, 44.447849, 25.801617>,  <44.965672, 44.439468, 25.544996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272388, 44.447849, 25.801617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459503, -0.679959, 0.571413,
		0.448201, -0.732951, -0.511760,
		0.766794, 0.020952, 0.641552,
		45.502426, 44.454136, 25.994081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995033, 43.812634, 25.764629>,  <44.965672, 44.439468, 25.544996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995033, 43.812634, 25.764629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230217, 43.980209, 26.041410>,  <45.371326, 44.080753, 26.207479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230217, 43.980209, 26.041410>,  <44.995033, 43.812634, 25.764629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230217, 43.980209, 26.041410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379565, -0.612520, 0.693361,
		0.714311, -0.670307, -0.201120,
		0.587955, 0.418937, 0.691955,
		45.406605, 44.105892, 26.248997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360695, 43.242989, 26.161045>,  <44.995033, 43.812634, 25.764629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360695, 43.242989, 26.161045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386314, 43.571991, 26.387100>,  <45.401688, 43.769394, 26.522734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386314, 43.571991, 26.387100>,  <45.360695, 43.242989, 26.161045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386314, 43.571991, 26.387100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157445, -0.550878, 0.819600,
		0.985448, -0.141473, 0.094216,
		0.064050, 0.822507, 0.565136,
		45.405529, 43.818745, 26.556641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532177, 42.957775, 26.846989>,  <45.360695, 43.242989, 26.161045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532177, 42.957775, 26.846989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411613, 43.333961, 26.909815>,  <45.339275, 43.559673, 26.947510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411613, 43.333961, 26.909815>,  <45.532177, 42.957775, 26.846989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.411613, 43.333961, 26.909815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258503, -0.239155, 0.935939,
		0.917785, 0.241497, 0.315197,
		-0.301408, 0.940470, 0.157065,
		45.321190, 43.616104, 26.956934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.762897, 43.117157, 27.558884>,  <45.532177, 42.957775, 26.846989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.762897, 43.117157, 27.558884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457272, 43.350159, 27.447971>,  <45.273895, 43.489960, 27.381424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457272, 43.350159, 27.447971>,  <45.762897, 43.117157, 27.558884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457272, 43.350159, 27.447971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570609, -0.409665, 0.711744,
		0.301004, 0.702040, 0.645396,
		-0.764069, 0.582507, -0.277279,
		45.228050, 43.524910, 27.364788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.451057, 43.292629, 28.136816>,  <45.762897, 43.117157, 27.558884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.451057, 43.292629, 28.136816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160103, 43.384563, 27.878176>,  <44.985531, 43.439724, 27.722992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160103, 43.384563, 27.878176>,  <45.451057, 43.292629, 28.136816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160103, 43.384563, 27.878176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677621, -0.389365, 0.623879,
		-0.108375, 0.891948, 0.438956,
		-0.727382, 0.229833, -0.646600,
		44.941887, 43.453514, 27.684196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958725, 43.583828, 28.546999>,  <45.451057, 43.292629, 28.136816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958725, 43.583828, 28.546999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750393, 43.508831, 28.213871>,  <44.625393, 43.463833, 28.013994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750393, 43.508831, 28.213871>,  <44.958725, 43.583828, 28.546999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750393, 43.508831, 28.213871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655230, -0.537534, 0.530783,
		-0.547187, 0.822133, 0.157109,
		-0.520826, -0.187495, -0.832818,
		44.594147, 43.452583, 27.964025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210564, 43.853134, 28.655930>,  <44.958725, 43.583828, 28.546999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210564, 43.853134, 28.655930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233932, 43.564426, 28.380064>,  <44.247955, 43.391201, 28.214544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233932, 43.564426, 28.380064>,  <44.210564, 43.853134, 28.655930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233932, 43.564426, 28.380064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724251, -0.506108, 0.468312,
		-0.687057, 0.472130, -0.552310,
		0.058425, -0.721767, -0.689665,
		44.251461, 43.347897, 28.173164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484325, 43.854343, 28.655338>,  <44.210564, 43.853134, 28.655930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484325, 43.854343, 28.655338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650478, 43.521168, 28.509096>,  <43.750172, 43.321262, 28.421350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650478, 43.521168, 28.509096>,  <43.484325, 43.854343, 28.655338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650478, 43.521168, 28.509096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798986, -0.526210, 0.291075,
		-0.434834, 0.171206, -0.884086,
		0.415381, -0.832942, -0.365605,
		43.775093, 43.271286, 28.399414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897636, 43.574650, 28.350571>,  <43.484325, 43.854343, 28.655338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897636, 43.574650, 28.350571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175598, 43.289448, 28.387955>,  <43.342373, 43.118324, 28.410385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175598, 43.289448, 28.387955>,  <42.897636, 43.574650, 28.350571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175598, 43.289448, 28.387955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711123, -0.662044, 0.236650,
		-0.106859, -0.230908, -0.967090,
		0.694900, -0.713007, 0.093459,
		43.384068, 43.075546, 28.415993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502991, 43.011215, 28.096710>,  <42.897636, 43.574650, 28.350571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502991, 43.011215, 28.096710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791233, 42.850342, 28.322622>,  <42.964180, 42.753819, 28.458170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791233, 42.850342, 28.322622>,  <42.502991, 43.011215, 28.096710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791233, 42.850342, 28.322622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643840, -0.690417, 0.329839,
		0.257279, -0.601312, -0.756460,
		0.720609, -0.402179, 0.564779,
		43.007416, 42.729687, 28.492056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375835, 42.224838, 28.111523>,  <42.502991, 43.011215, 28.096710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375835, 42.224838, 28.111523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620956, 42.304302, 28.417467>,  <42.768028, 42.351982, 28.601034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620956, 42.304302, 28.417467>,  <42.375835, 42.224838, 28.111523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620956, 42.304302, 28.417467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603721, -0.506831, 0.615340,
		0.509901, -0.838841, -0.190648,
		0.612799, 0.198664, 0.764860,
		42.804794, 42.363903, 28.646925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354073, 41.689518, 28.513092>,  <42.375835, 42.224838, 28.111523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354073, 41.689518, 28.513092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491920, 41.983894, 28.746204>,  <42.574631, 42.160519, 28.886072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491920, 41.983894, 28.746204>,  <42.354073, 41.689518, 28.513092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491920, 41.983894, 28.746204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674285, -0.237871, 0.699112,
		0.653130, -0.633888, 0.414256,
		0.344619, 0.735937, 0.582781,
		42.595306, 42.204674, 28.921040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512714, 41.341896, 29.176672>,  <42.354073, 41.689518, 28.513092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512714, 41.341896, 29.176672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484123, 41.727966, 29.277336>,  <42.466969, 41.959606, 29.337734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484123, 41.727966, 29.277336>,  <42.512714, 41.341896, 29.176672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484123, 41.727966, 29.277336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623348, -0.240188, 0.744142,
		0.778671, -0.103683, 0.618806,
		-0.071475, 0.965173, 0.251658,
		42.462681, 42.017517, 29.352833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606010, 41.322544, 29.895412>,  <42.512714, 41.341896, 29.176672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606010, 41.322544, 29.895412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412071, 41.657391, 29.794100>,  <42.295708, 41.858299, 29.733313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412071, 41.657391, 29.794100>,  <42.606010, 41.322544, 29.895412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412071, 41.657391, 29.794100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672519, -0.171703, 0.719886,
		0.559142, 0.519373, 0.646229,
		-0.484849, 0.837120, -0.253282,
		42.266617, 41.908527, 29.718115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605221, 41.868195, 30.468449>,  <42.606010, 41.322544, 29.895412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605221, 41.868195, 30.468449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284847, 41.950924, 30.243689>,  <42.092625, 42.000561, 30.108833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284847, 41.950924, 30.243689>,  <42.605221, 41.868195, 30.468449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284847, 41.950924, 30.243689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589005, -0.103483, 0.801476,
		0.107616, 0.972890, 0.204702,
		-0.800932, 0.206823, -0.561901,
		42.044567, 42.012970, 30.075119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237305, 42.312141, 30.928732>,  <42.605221, 41.868195, 30.468449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237305, 42.312141, 30.928732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968849, 42.220211, 30.646809>,  <41.807777, 42.165054, 30.477654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968849, 42.220211, 30.646809>,  <42.237305, 42.312141, 30.928732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968849, 42.220211, 30.646809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718990, -0.029864, 0.694378,
		-0.180634, 0.972773, -0.145198,
		-0.671137, -0.229824, -0.704809,
		41.767509, 42.151264, 30.435366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695644, 42.773968, 31.094212>,  <42.237305, 42.312141, 30.928732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695644, 42.773968, 31.094212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548332, 42.477768, 30.869345>,  <41.459946, 42.300049, 30.734425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548332, 42.477768, 30.869345>,  <41.695644, 42.773968, 31.094212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548332, 42.477768, 30.869345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811887, -0.038475, 0.582546,
		-0.453004, 0.670955, -0.587032,
		-0.368276, -0.740499, -0.562169,
		41.437851, 42.255619, 30.700693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953617, 42.896465, 31.170918>,  <41.695644, 42.773968, 31.094212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953617, 42.896465, 31.170918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027264, 42.522175, 31.050571>,  <41.071449, 42.297600, 30.978363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027264, 42.522175, 31.050571>,  <40.953617, 42.896465, 31.170918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027264, 42.522175, 31.050571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671862, -0.343231, 0.656349,
		-0.717429, 0.081298, -0.691871,
		0.184112, -0.935726, -0.300865,
		41.082497, 42.241459, 30.960312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256245, 42.655945, 31.116041>,  <40.953617, 42.896465, 31.170918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256245, 42.655945, 31.116041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512730, 42.350800, 31.149237>,  <40.666618, 42.167713, 31.169155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512730, 42.350800, 31.149237>,  <40.256245, 42.655945, 31.116041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512730, 42.350800, 31.149237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518342, -0.350838, 0.779894,
		-0.565838, -0.543093, -0.620385,
		0.641209, -0.762865, 0.082990,
		40.705093, 42.121941, 31.174133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811520, 42.213665, 31.208101>,  <40.256245, 42.655945, 31.116041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811520, 42.213665, 31.208101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158398, 42.071659, 31.347782>,  <40.366524, 41.986458, 31.431591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158398, 42.071659, 31.347782>,  <39.811520, 42.213665, 31.208101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158398, 42.071659, 31.347782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491529, -0.497813, 0.714550,
		-0.079835, -0.791296, -0.606198,
		0.867194, -0.355010, 0.349202,
		40.418556, 41.965157, 31.452543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795372, 41.477650, 31.144068>,  <39.811520, 42.213665, 31.208101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795372, 41.477650, 31.144068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062862, 41.552338, 31.431942>,  <40.223354, 41.597149, 31.604666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062862, 41.552338, 31.431942>,  <39.795372, 41.477650, 31.144068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062862, 41.552338, 31.431942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493269, -0.612843, 0.617341,
		0.556323, -0.767828, -0.317719,
		0.668723, 0.186720, 0.719684,
		40.263481, 41.608353, 31.647846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840298, 40.894390, 31.493589>,  <39.795372, 41.477650, 31.144068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840298, 40.894390, 31.493589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011848, 41.144650, 31.754246>,  <40.114777, 41.294804, 31.910641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011848, 41.144650, 31.754246>,  <39.840298, 40.894390, 31.493589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011848, 41.144650, 31.754246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487761, -0.446789, 0.749980,
		0.760367, -0.639491, 0.113550,
		0.428873, 0.625645, 0.651642,
		40.140511, 41.332344, 31.949738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138081, 40.492722, 31.957159>,  <39.840298, 40.894390, 31.493589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138081, 40.492722, 31.957159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067928, 40.848209, 32.126595>,  <40.025837, 41.061501, 32.228256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067928, 40.848209, 32.126595>,  <40.138081, 40.492722, 31.957159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067928, 40.848209, 32.126595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396615, -0.457578, 0.795813,
		0.901076, -0.028430, 0.432729,
		-0.175382, 0.888715, 0.423588,
		40.015312, 41.114822, 32.253670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304050, 40.332256, 32.660549>,  <40.138081, 40.492722, 31.957159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304050, 40.332256, 32.660549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078434, 40.662453, 32.652245>,  <39.943066, 40.860569, 32.647263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078434, 40.662453, 32.652245>,  <40.304050, 40.332256, 32.660549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078434, 40.662453, 32.652245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551185, -0.357650, 0.753845,
		0.614863, 0.436643, 0.656724,
		-0.564038, 0.825488, -0.020766,
		39.909222, 40.910099, 32.646015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123669, 40.337463, 33.374985>,  <40.304050, 40.332256, 32.660549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123669, 40.337463, 33.374985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841579, 40.576008, 33.221619>,  <39.672325, 40.719135, 33.129597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841579, 40.576008, 33.221619>,  <40.123669, 40.337463, 33.374985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841579, 40.576008, 33.221619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632669, -0.285277, 0.719963,
		0.319978, 0.750313, 0.578484,
		-0.705226, 0.596362, -0.383417,
		39.630013, 40.754917, 33.106594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809875, 40.601570, 33.929405>,  <40.123669, 40.337463, 33.374985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809875, 40.601570, 33.929405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543480, 40.671810, 33.639404>,  <39.383644, 40.713955, 33.465405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543480, 40.671810, 33.639404>,  <39.809875, 40.601570, 33.929405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543480, 40.671810, 33.639404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743599, -0.078952, 0.663948,
		0.059350, 0.981290, 0.183158,
		-0.665987, 0.175602, -0.725001,
		39.343685, 40.724491, 33.421906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352894, 41.069897, 34.249943>,  <39.809875, 40.601570, 33.929405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352894, 41.069897, 34.249943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148441, 40.896797, 33.952896>,  <39.025768, 40.792938, 33.774670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148441, 40.896797, 33.952896>,  <39.352894, 41.069897, 34.249943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148441, 40.896797, 33.952896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732793, -0.232121, 0.639636,
		-0.449177, 0.871120, -0.198469,
		-0.511131, -0.432746, -0.742614,
		38.995102, 40.766972, 33.730110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631218, 41.328667, 34.257259>,  <39.352894, 41.069897, 34.249943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631218, 41.328667, 34.257259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615265, 40.976196, 34.068817>,  <38.605694, 40.764713, 33.955750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615265, 40.976196, 34.068817>,  <38.631218, 41.328667, 34.257259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615265, 40.976196, 34.068817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716797, -0.303250, 0.627886,
		-0.696140, 0.362732, -0.619528,
		-0.039883, -0.881172, -0.471109,
		38.603302, 40.711845, 33.927483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853287, 41.084286, 34.246498>,  <38.631218, 41.328667, 34.257259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853287, 41.084286, 34.246498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062706, 40.753418, 34.164829>,  <38.188358, 40.554897, 34.115829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062706, 40.753418, 34.164829>,  <37.853287, 41.084286, 34.246498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062706, 40.753418, 34.164829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694626, -0.553165, 0.459894,
		-0.493351, -0.098954, -0.864183,
		0.523544, -0.827173, -0.204168,
		38.219769, 40.505264, 34.103577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335686, 40.624859, 34.074993>,  <37.853287, 41.084286, 34.246498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335686, 40.624859, 34.074993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646046, 40.380699, 34.138737>,  <37.832260, 40.234203, 34.176983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646046, 40.380699, 34.138737>,  <37.335686, 40.624859, 34.074993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646046, 40.380699, 34.138737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589542, -0.611667, 0.527545,
		-0.224541, -0.503269, -0.834447,
		0.775901, -0.610397, 0.159354,
		37.878815, 40.197578, 34.186543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124359, 39.908501, 33.925533>,  <37.335686, 40.624859, 34.074993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124359, 39.908501, 33.925533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435875, 39.876152, 34.174351>,  <37.622784, 39.856743, 34.323643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435875, 39.876152, 34.174351>,  <37.124359, 39.908501, 33.925533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435875, 39.876152, 34.174351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470048, -0.731891, 0.493346,
		0.415374, -0.676606, -0.608004,
		0.778794, -0.080868, 0.622046,
		37.669514, 39.851891, 34.360966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386696, 39.182571, 33.903378>,  <37.124359, 39.908501, 33.925533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386696, 39.182571, 33.903378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516964, 39.328617, 34.252232>,  <37.595123, 39.416245, 34.461544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516964, 39.328617, 34.252232>,  <37.386696, 39.182571, 33.903378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516964, 39.328617, 34.252232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367846, -0.800823, 0.472622,
		0.870993, -0.474732, -0.126497,
		0.325670, 0.365119, 0.872139,
		37.614666, 39.438152, 34.513874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658993, 38.649185, 34.267921>,  <37.386696, 39.182571, 33.903378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658993, 38.649185, 34.267921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582657, 38.916729, 34.555309>,  <37.536854, 39.077255, 34.727741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582657, 38.916729, 34.555309>,  <37.658993, 38.649185, 34.267921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582657, 38.916729, 34.555309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429878, -0.714956, 0.551401,
		0.882487, -0.203625, 0.423973,
		-0.190843, 0.668861, 0.718473,
		37.525402, 39.117386, 34.770851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834473, 38.192768, 34.877853>,  <37.658993, 38.649185, 34.267921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834473, 38.192768, 34.877853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614750, 38.512581, 34.975029>,  <37.482918, 38.704468, 35.033333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614750, 38.512581, 34.975029>,  <37.834473, 38.192768, 34.877853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614750, 38.512581, 34.975029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623751, -0.585778, 0.517492,
		0.556057, 0.132729, 0.820477,
		-0.549304, 0.799529, 0.242937,
		37.449959, 38.752441, 35.047909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568462, 38.237335, 34.802452>,  <37.834473, 38.192768, 34.877853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568462, 38.237335, 34.802452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372211, 38.006851, 34.540989>,  <38.254459, 37.868561, 34.384109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372211, 38.006851, 34.540989>,  <38.568462, 38.237335, 34.802452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372211, 38.006851, 34.540989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833614, -0.091956, -0.544639,
		0.253718, -0.812113, 0.525452,
		-0.490627, -0.576209, -0.653658,
		38.225025, 37.833988, 34.344891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963501, 37.727703, 34.759434>,  <38.568462, 38.237335, 34.802452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963501, 37.727703, 34.759434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735214, 37.689995, 34.433147>,  <38.598244, 37.667370, 34.237373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735214, 37.689995, 34.433147>,  <38.963501, 37.727703, 34.759434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735214, 37.689995, 34.433147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815017, -0.186200, -0.548705,
		-0.100161, -0.977979, 0.183098,
		-0.570715, -0.094269, -0.815719,
		38.563999, 37.661713, 34.188431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358875, 37.191521, 34.386463>,  <38.963501, 37.727703, 34.759434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358875, 37.191521, 34.386463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108063, 37.354599, 34.120945>,  <38.957577, 37.452446, 33.961636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108063, 37.354599, 34.120945>,  <39.358875, 37.191521, 34.386463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108063, 37.354599, 34.120945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692153, -0.099409, -0.714872,
		-0.357437, -0.907690, -0.219856,
		-0.627026, 0.407696, -0.663794,
		38.919956, 37.476906, 33.921806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332283, 36.772804, 33.743481>,  <39.358875, 37.191521, 34.386463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332283, 36.772804, 33.743481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205284, 37.123821, 33.599747>,  <39.129086, 37.334431, 33.513508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205284, 37.123821, 33.599747>,  <39.332283, 36.772804, 33.743481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205284, 37.123821, 33.599747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603153, -0.105522, -0.790615,
		-0.731714, -0.467749, -0.495788,
		-0.317493, 0.877540, -0.359336,
		39.110035, 37.387085, 33.491947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219887, 36.719002, 33.037663>,  <39.332283, 36.772804, 33.743481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219887, 36.719002, 33.037663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276646, 37.113121, 33.075710>,  <39.310699, 37.349594, 33.098537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276646, 37.113121, 33.075710>,  <39.219887, 36.719002, 33.037663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276646, 37.113121, 33.075710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731579, -0.039650, -0.680603,
		-0.666827, 0.166162, -0.726451,
		0.141894, 0.985301, 0.095121,
		39.319214, 37.408710, 33.104248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404003, 36.801640, 32.435078>,  <39.219887, 36.719002, 33.037663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404003, 36.801640, 32.435078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493423, 37.145451, 32.618923>,  <39.547077, 37.351738, 32.729229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493423, 37.145451, 32.618923>,  <39.404003, 36.801640, 32.435078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493423, 37.145451, 32.618923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651520, 0.218947, -0.726350,
		-0.724946, 0.461824, -0.511051,
		0.223553, 0.859524, 0.459612,
		39.560490, 37.403309, 32.756805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427998, 37.188648, 31.872520>,  <39.404003, 36.801640, 32.435078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427998, 37.188648, 31.872520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636116, 37.366707, 32.164036>,  <39.760986, 37.473541, 32.338943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636116, 37.366707, 32.164036>,  <39.427998, 37.188648, 31.872520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636116, 37.366707, 32.164036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737720, 0.195598, -0.646150,
		-0.430183, 0.873832, -0.226627,
		0.520299, 0.445150, 0.728787,
		39.792206, 37.500252, 32.382671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608150, 37.835209, 31.646297>,  <39.427998, 37.188648, 31.872520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608150, 37.835209, 31.646297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900234, 37.745323, 31.904383>,  <40.075485, 37.691391, 32.059235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900234, 37.745323, 31.904383>,  <39.608150, 37.835209, 31.646297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900234, 37.745323, 31.904383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661026, -0.006410, -0.750336,
		0.172749, 0.974403, 0.143863,
		0.730207, -0.224717, 0.645213,
		40.119297, 37.677910, 32.097946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146297, 38.251072, 31.453636>,  <39.608150, 37.835209, 31.646297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146297, 38.251072, 31.453636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341606, 37.963387, 31.651356>,  <40.458790, 37.790775, 31.769987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341606, 37.963387, 31.651356>,  <40.146297, 38.251072, 31.453636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341606, 37.963387, 31.651356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724123, 0.017764, -0.689442,
		0.487074, 0.694565, 0.529471,
		0.488268, -0.719211, 0.494297,
		40.488087, 37.747623, 31.799644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823151, 38.527550, 31.574034>,  <40.146297, 38.251072, 31.453636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823151, 38.527550, 31.574034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883247, 38.133732, 31.610014>,  <40.919304, 37.897442, 31.631601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883247, 38.133732, 31.610014>,  <40.823151, 38.527550, 31.574034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883247, 38.133732, 31.610014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792853, 0.065636, -0.605867,
		0.590602, 0.162343, 0.790464,
		0.150241, -0.984549, 0.089950,
		40.928318, 37.838367, 31.636999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555080, 38.425117, 31.611204>,  <40.823151, 38.527550, 31.574034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555080, 38.425117, 31.611204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434696, 38.051224, 31.535639>,  <41.362465, 37.826885, 31.490299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434696, 38.051224, 31.535639>,  <41.555080, 38.425117, 31.611204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434696, 38.051224, 31.535639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699075, -0.081510, -0.710387,
		0.648627, -0.345863, 0.677983,
		-0.300959, -0.934738, -0.188915,
		41.344410, 37.770802, 31.478964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227612, 38.072765, 31.366030>,  <41.555080, 38.425117, 31.611204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227612, 38.072765, 31.366030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928371, 37.835331, 31.247375>,  <41.748825, 37.692871, 31.176182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928371, 37.835331, 31.247375>,  <42.227612, 38.072765, 31.366030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928371, 37.835331, 31.247375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487505, -0.188352, -0.852562,
		0.450198, -0.782418, 0.430284,
		-0.748104, -0.593588, -0.296637,
		41.703941, 37.657253, 31.158384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375645, 37.391129, 31.354111>,  <42.227612, 38.072765, 31.366030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375645, 37.391129, 31.354111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106098, 37.506886, 31.082186>,  <41.944370, 37.576340, 30.919031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106098, 37.506886, 31.082186>,  <42.375645, 37.391129, 31.354111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106098, 37.506886, 31.082186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728153, 0.104133, -0.677458,
		-0.125263, -0.951528, -0.280898,
		-0.673871, 0.289397, -0.679815,
		41.903938, 37.593704, 30.878241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626823, 37.094170, 30.685123>,  <42.375645, 37.391129, 31.354111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626823, 37.094170, 30.685123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383980, 37.400890, 30.601761>,  <42.238274, 37.584923, 30.551743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383980, 37.400890, 30.601761>,  <42.626823, 37.094170, 30.685123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383980, 37.400890, 30.601761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663389, 0.344735, -0.664133,
		-0.437411, -0.541459, -0.717979,
		-0.607113, 0.766798, -0.208408,
		42.201847, 37.630928, 30.539238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837215, 37.110161, 30.066366>,  <42.626823, 37.094170, 30.685123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837215, 37.110161, 30.066366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661507, 37.465202, 30.121794>,  <42.556080, 37.678226, 30.155050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661507, 37.465202, 30.121794>,  <42.837215, 37.110161, 30.066366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661507, 37.465202, 30.121794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685519, 0.430879, -0.586862,
		-0.580607, -0.162799, -0.797741,
		-0.439271, 0.887603, 0.138570,
		42.529724, 37.731483, 30.163364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815144, 37.359982, 29.444229>,  <42.837215, 37.110161, 30.066366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815144, 37.359982, 29.444229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789593, 37.672859, 29.692131>,  <42.774261, 37.860584, 29.840872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789593, 37.672859, 29.692131>,  <42.815144, 37.359982, 29.444229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789593, 37.672859, 29.692131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653011, 0.502375, -0.566742,
		-0.754650, 0.368504, -0.542870,
		-0.063877, 0.782192, 0.619754,
		42.770428, 37.907516, 29.878057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016026, 37.805882, 28.969894>,  <42.815144, 37.359982, 29.444229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016026, 37.805882, 28.969894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988625, 38.002583, 29.317108>,  <42.972183, 38.120605, 29.525436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988625, 38.002583, 29.317108>,  <43.016026, 37.805882, 28.969894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988625, 38.002583, 29.317108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633059, 0.693894, -0.343144,
		-0.771067, 0.526010, -0.358845,
		-0.068504, 0.491757, 0.868034,
		42.968075, 38.150108, 29.577518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656387, 38.544418, 28.959074>,  <43.016026, 37.805882, 28.969894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656387, 38.544418, 28.959074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908478, 38.533123, 29.269432>,  <43.059734, 38.526348, 29.455647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908478, 38.533123, 29.269432>,  <42.656387, 38.544418, 28.959074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908478, 38.533123, 29.269432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373738, 0.886971, -0.271296,
		-0.680537, 0.460960, 0.569548,
		0.630229, -0.028234, 0.775895,
		43.097546, 38.524654, 29.502201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652905, 39.188503, 29.216837>,  <42.656387, 38.544418, 28.959074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652905, 39.188503, 29.216837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995964, 39.048714, 29.367737>,  <43.201797, 38.964840, 29.458277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995964, 39.048714, 29.367737>,  <42.652905, 39.188503, 29.216837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995964, 39.048714, 29.367737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472264, 0.825569, -0.308874,
		-0.203502, 0.443065, 0.873087,
		0.857644, -0.349471, 0.377248,
		43.253258, 38.943871, 29.480911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961544, 39.699379, 29.603334>,  <42.652905, 39.188503, 29.216837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961544, 39.699379, 29.603334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247768, 39.440182, 29.498960>,  <43.419502, 39.284664, 29.436337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247768, 39.440182, 29.498960>,  <42.961544, 39.699379, 29.603334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247768, 39.440182, 29.498960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437563, 0.706946, -0.555667,
		0.544532, 0.283437, 0.789397,
		0.715558, -0.647990, -0.260933,
		43.462437, 39.245785, 29.420681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598541, 40.070518, 29.707161>,  <42.961544, 39.699379, 29.603334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598541, 40.070518, 29.707161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696995, 39.780418, 29.449966>,  <43.756065, 39.606358, 29.295650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696995, 39.780418, 29.449966>,  <43.598541, 40.070518, 29.707161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696995, 39.780418, 29.449966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468949, 0.669685, -0.575855,
		0.848237, -0.159791, 0.504936,
		0.246132, -0.725251, -0.642986,
		43.770836, 39.562843, 29.257071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323605, 40.201504, 29.489305>,  <43.598541, 40.070518, 29.707161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323605, 40.201504, 29.489305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157745, 39.972385, 29.206470>,  <44.058231, 39.834915, 29.036770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157745, 39.972385, 29.206470>,  <44.323605, 40.201504, 29.489305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157745, 39.972385, 29.206470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377392, 0.598815, -0.706396,
		0.828036, -0.559754, -0.032129,
		-0.414647, -0.572796, -0.707087,
		44.033352, 39.800545, 28.994345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.828625, 40.106495, 28.881893>,  <44.323605, 40.201504, 29.489305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.828625, 40.106495, 28.881893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471115, 40.027042, 28.721037>,  <44.256611, 39.979370, 28.624523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471115, 40.027042, 28.721037>,  <44.828625, 40.106495, 28.881893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471115, 40.027042, 28.721037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215236, 0.596674, -0.773081,
		0.393502, -0.777514, -0.490539,
		-0.893773, -0.198628, -0.402141,
		44.202984, 39.967453, 28.600395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016445, 39.996620, 28.157494>,  <44.828625, 40.106495, 28.881893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016445, 39.996620, 28.157494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622681, 40.059769, 28.188517>,  <44.386421, 40.097656, 28.207130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622681, 40.059769, 28.188517>,  <45.016445, 39.996620, 28.157494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622681, 40.059769, 28.188517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049531, 0.671896, -0.738988,
		-0.168774, -0.723625, -0.669240,
		-0.984410, 0.157870, 0.077556,
		44.327358, 40.107128, 28.211782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789146, 39.758621, 27.511293>,  <45.016445, 39.996620, 28.157494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789146, 39.758621, 27.511293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510853, 39.998238, 27.669840>,  <44.343876, 40.142006, 27.764967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510853, 39.998238, 27.669840>,  <44.789146, 39.758621, 27.511293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510853, 39.998238, 27.669840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015887, 0.564511, -0.825273,
		-0.718124, -0.567873, -0.402266,
		-0.695734, 0.599039, 0.396367,
		44.302132, 40.177948, 27.788750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380260, 39.882526, 27.047829>,  <44.789146, 39.758621, 27.511293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380260, 39.882526, 27.047829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273167, 40.181705, 27.290773>,  <44.208912, 40.361214, 27.436541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273167, 40.181705, 27.290773>,  <44.380260, 39.882526, 27.047829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273167, 40.181705, 27.290773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043595, 0.620325, -0.783133,
		-0.962506, -0.236148, -0.133474,
		-0.267733, 0.747951, 0.607361,
		44.192848, 40.406090, 27.472982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679276, 40.136536, 26.799629>,  <44.380260, 39.882526, 27.047829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679276, 40.136536, 26.799629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914631, 40.400349, 26.986740>,  <44.055843, 40.558636, 27.099007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914631, 40.400349, 26.986740>,  <43.679276, 40.136536, 26.799629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914631, 40.400349, 26.986740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018759, 0.567230, -0.823346,
		-0.808359, 0.493225, 0.321381,
		0.588391, 0.659530, 0.467778,
		44.091148, 40.598209, 27.127073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505180, 40.718147, 26.376709>,  <43.679276, 40.136536, 26.799629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505180, 40.718147, 26.376709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822697, 40.838768, 26.587975>,  <44.013206, 40.911140, 26.714733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822697, 40.838768, 26.587975>,  <43.505180, 40.718147, 26.376709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822697, 40.838768, 26.587975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290432, 0.575056, -0.764827,
		-0.534362, 0.760510, 0.368893,
		0.793792, 0.301556, 0.528165,
		44.060833, 40.929234, 26.746424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586494, 41.420189, 26.158129>,  <43.505180, 40.718147, 26.376709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586494, 41.420189, 26.158129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955177, 41.339367, 26.290567>,  <44.176388, 41.290874, 26.370031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955177, 41.339367, 26.290567>,  <43.586494, 41.420189, 26.158129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955177, 41.339367, 26.290567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387825, 0.494508, -0.777852,
		-0.006560, 0.845361, 0.534155,
		0.921710, -0.202056, 0.331096,
		44.231689, 41.278751, 26.389896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871788, 42.062103, 26.223602>,  <43.586494, 41.420189, 26.158129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871788, 42.062103, 26.223602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158672, 41.784077, 26.203609>,  <44.330803, 41.617260, 26.191614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158672, 41.784077, 26.203609>,  <43.871788, 42.062103, 26.223602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158672, 41.784077, 26.203609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443716, 0.510806, -0.736338,
		0.537332, 0.505931, 0.674765,
		0.717211, -0.695062, -0.049982,
		44.373837, 41.575558, 26.188614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480614, 42.437283, 26.254612>,  <43.871788, 42.062103, 26.223602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480614, 42.437283, 26.254612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588005, 42.091248, 26.085127>,  <44.652439, 41.883625, 25.983435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588005, 42.091248, 26.085127>,  <44.480614, 42.437283, 26.254612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588005, 42.091248, 26.085127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668666, 0.483995, -0.564477,
		0.693401, -0.131773, 0.708401,
		0.268480, -0.865092, -0.423714,
		44.668549, 41.831718, 25.958012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247387, 42.490192, 26.081768>,  <44.480614, 42.437283, 26.254612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247387, 42.490192, 26.081768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078426, 42.201088, 25.862974>,  <44.977051, 42.027626, 25.731697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078426, 42.201088, 25.862974>,  <45.247387, 42.490192, 26.081768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.078426, 42.201088, 25.862974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404933, 0.389426, -0.827270,
		0.810931, -0.570931, 0.128178,
		-0.422398, -0.722762, -0.546987,
		44.951706, 41.984261, 25.698877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848831, 42.410007, 25.643934>,  <45.247387, 42.490192, 26.081768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848831, 42.410007, 25.643934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551334, 42.211929, 25.464321>,  <45.372837, 42.093082, 25.356552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551334, 42.211929, 25.464321>,  <45.848831, 42.410007, 25.643934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551334, 42.211929, 25.464321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376689, 0.244458, -0.893502,
		0.552229, -0.833679, 0.004722,
		-0.743740, -0.495197, -0.449034,
		45.328213, 42.063370, 25.329611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.070183, 41.927681, 25.289110>,  <45.848831, 42.410007, 25.643934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.070183, 41.927681, 25.289110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.725269, 42.016117, 25.106865>,  <45.518322, 42.069180, 24.997519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.725269, 42.016117, 25.106865>,  <46.070183, 41.927681, 25.289110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.725269, 42.016117, 25.106865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490487, 0.140697, -0.860016,
		-0.126035, -0.965052, -0.229761,
		-0.862286, 0.221087, -0.455613,
		45.466583, 42.082443, 24.970181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.050308, 41.509693, 24.679859>,  <46.070183, 41.927681, 25.289110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.050308, 41.509693, 24.679859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777763, 41.788040, 24.589073>,  <45.614235, 41.955048, 24.534601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777763, 41.788040, 24.589073>,  <46.050308, 41.509693, 24.679859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777763, 41.788040, 24.589073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436480, 0.137376, -0.889164,
		-0.587560, -0.704910, -0.397335,
		-0.681365, 0.695866, -0.226963,
		45.573353, 41.996799, 24.520985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665306, 41.289291, 24.145369>,  <46.050308, 41.509693, 24.679859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665306, 41.289291, 24.145369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.604595, 41.683350, 24.113245>,  <45.568169, 41.919785, 24.093971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.604595, 41.683350, 24.113245>,  <45.665306, 41.289291, 24.145369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604595, 41.683350, 24.113245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373893, -0.017987, -0.927297,
		-0.914968, -0.170770, -0.365610,
		-0.151778, 0.985147, -0.080308,
		45.559063, 41.978893, 24.089153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503391, 41.360752, 23.461653>,  <45.665306, 41.289291, 24.145369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503391, 41.360752, 23.461653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603413, 41.727905, 23.584915>,  <45.663425, 41.948196, 23.658873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603413, 41.727905, 23.584915>,  <45.503391, 41.360752, 23.461653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603413, 41.727905, 23.584915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393954, 0.194280, -0.898363,
		-0.884463, 0.346035, -0.313025,
		0.250051, 0.917886, 0.308156,
		45.678429, 42.003273, 23.677362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166870, 41.902473, 23.068733>,  <45.503391, 41.360752, 23.461653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166870, 41.902473, 23.068733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515125, 42.062241, 23.183596>,  <45.724079, 42.158100, 23.252514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515125, 42.062241, 23.183596>,  <45.166870, 41.902473, 23.068733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515125, 42.062241, 23.183596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250470, 0.142479, -0.957582,
		-0.423392, 0.905628, 0.024004,
		0.870634, 0.399421, 0.287158,
		45.776314, 42.182068, 23.269743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560127, 41.899155, 22.512333>,  <45.166870, 41.902473, 23.068733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560127, 41.899155, 22.512333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571587, 41.771400, 22.133457>,  <44.578465, 41.694748, 21.906132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571587, 41.771400, 22.133457>,  <44.560127, 41.899155, 22.512333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571587, 41.771400, 22.133457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370199, -0.883590, 0.286743,
		-0.928511, 0.342434, -0.143552,
		0.028651, -0.319387, -0.947191,
		44.580181, 41.675583, 21.849300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856026, 41.650631, 22.288870>,  <44.560127, 41.899155, 22.512333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856026, 41.650631, 22.288870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097538, 41.456573, 22.035860>,  <44.242443, 41.340137, 21.884054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097538, 41.456573, 22.035860>,  <43.856026, 41.650631, 22.288870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097538, 41.456573, 22.035860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331571, -0.874423, 0.354182,
		-0.724924, -0.004120, -0.688817,
		0.603776, -0.485147, -0.632524,
		44.278671, 41.311028, 21.846104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400478, 41.078552, 21.943035>,  <43.856026, 41.650631, 22.288870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400478, 41.078552, 21.943035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778648, 40.966354, 21.876699>,  <44.005550, 40.899036, 21.836899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778648, 40.966354, 21.876699>,  <43.400478, 41.078552, 21.943035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778648, 40.966354, 21.876699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204319, -0.906748, 0.368865,
		-0.253837, -0.314849, -0.914569,
		0.945421, -0.280495, -0.165837,
		44.062275, 40.882206, 21.826948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433407, 40.362625, 21.696520>,  <43.400478, 41.078552, 21.943035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433407, 40.362625, 21.696520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806194, 40.415485, 21.831556>,  <44.029869, 40.447201, 21.912579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806194, 40.415485, 21.831556>,  <43.433407, 40.362625, 21.696520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806194, 40.415485, 21.831556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060362, -0.861633, 0.503930,
		0.357473, -0.490025, -0.795040,
		0.931971, 0.132152, 0.337589,
		44.085785, 40.455132, 21.932833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756630, 39.687534, 21.761642>,  <43.433407, 40.362625, 21.696520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756630, 39.687534, 21.761642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999096, 39.890030, 22.007011>,  <44.144577, 40.011528, 22.154232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999096, 39.890030, 22.007011>,  <43.756630, 39.687534, 21.761642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999096, 39.890030, 22.007011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031105, -0.755590, 0.654306,
		0.794730, -0.415699, -0.442266,
		0.606166, 0.506240, 0.613420,
		44.180946, 40.041901, 22.191038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227127, 39.275200, 22.039255>,  <43.756630, 39.687534, 21.761642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227127, 39.275200, 22.039255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242912, 39.551838, 22.327738>,  <44.252384, 39.717819, 22.500828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242912, 39.551838, 22.327738>,  <44.227127, 39.275200, 22.039255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242912, 39.551838, 22.327738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112711, -0.714083, 0.690929,
		0.992844, -0.108555, 0.049770,
		0.039463, 0.691594, 0.721208,
		44.254753, 39.759315, 22.544100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682804, 39.009319, 22.656668>,  <44.227127, 39.275200, 22.039255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682804, 39.009319, 22.656668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457352, 39.313347, 22.786039>,  <44.322079, 39.495766, 22.863663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457352, 39.313347, 22.786039>,  <44.682804, 39.009319, 22.656668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457352, 39.313347, 22.786039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248509, -0.529441, 0.811132,
		0.787757, 0.376805, 0.487295,
		-0.563633, 0.760072, 0.323431,
		44.288261, 39.541370, 22.883068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736622, 38.982296, 23.407438>,  <44.682804, 39.009319, 22.656668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736622, 38.982296, 23.407438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416996, 39.213699, 23.341921>,  <44.225220, 39.352543, 23.302610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416996, 39.213699, 23.341921>,  <44.736622, 38.982296, 23.407438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416996, 39.213699, 23.341921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469984, -0.431085, 0.770247,
		0.374987, 0.692455, 0.616353,
		-0.799062, 0.578509, -0.163791,
		44.177277, 39.387253, 23.292784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581589, 39.305542, 24.122410>,  <44.736622, 38.982296, 23.407438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581589, 39.305542, 24.122410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259842, 39.305588, 23.884758>,  <44.066792, 39.305614, 23.742167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259842, 39.305588, 23.884758>,  <44.581589, 39.305542, 24.122410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259842, 39.305588, 23.884758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566235, -0.302962, 0.766546,
		-0.179908, 0.953003, 0.243760,
		-0.804370, 0.000117, -0.594129,
		44.018532, 39.305622, 23.706520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058002, 39.658924, 24.509016>,  <44.581589, 39.305542, 24.122410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058002, 39.658924, 24.509016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863560, 39.446911, 24.231091>,  <43.746895, 39.319702, 24.064335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863560, 39.446911, 24.231091>,  <44.058002, 39.658924, 24.509016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863560, 39.446911, 24.231091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694417, -0.248421, 0.675331,
		-0.530553, 0.810774, -0.247303,
		-0.486106, -0.530031, -0.694816,
		43.717728, 39.287903, 24.022646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421661, 39.703026, 24.696062>,  <44.058002, 39.658924, 24.509016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421661, 39.703026, 24.696062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376354, 39.394753, 24.445234>,  <43.349171, 39.209789, 24.294737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376354, 39.394753, 24.445234>,  <43.421661, 39.703026, 24.696062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376354, 39.394753, 24.445234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746122, -0.350792, 0.565903,
		-0.656104, 0.531968, -0.535292,
		-0.113266, -0.770685, -0.627069,
		43.342373, 39.163548, 24.257114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697849, 39.689682, 24.481485>,  <43.421661, 39.703026, 24.696062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697849, 39.689682, 24.481485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847530, 39.319740, 24.454287>,  <42.937340, 39.097775, 24.437967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847530, 39.319740, 24.454287>,  <42.697849, 39.689682, 24.481485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847530, 39.319740, 24.454287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756122, -0.346740, 0.555022,
		-0.536890, -0.156276, -0.829052,
		0.374202, -0.924851, -0.067998,
		42.959793, 39.042286, 24.433887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086296, 39.293591, 24.494051>,  <42.697849, 39.689682, 24.481485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086296, 39.293591, 24.494051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383892, 39.049603, 24.603165>,  <42.562450, 38.903210, 24.668633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383892, 39.049603, 24.603165>,  <42.086296, 39.293591, 24.494051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383892, 39.049603, 24.603165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573354, -0.373127, 0.729411,
		-0.343134, -0.699080, -0.627332,
		0.743992, -0.609970, 0.272788,
		42.607090, 38.866611, 24.684999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799820, 38.593441, 24.454483>,  <42.086296, 39.293591, 24.494051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799820, 38.593441, 24.454483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123302, 38.561573, 24.687597>,  <42.317394, 38.542450, 24.827465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123302, 38.561573, 24.687597>,  <41.799820, 38.593441, 24.454483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123302, 38.561573, 24.687597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523556, -0.549090, 0.651452,
		0.268098, -0.831957, -0.485768,
		0.808710, -0.079674, 0.582786,
		42.365917, 38.537670, 24.862432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785942, 37.973839, 24.684765>,  <41.799820, 38.593441, 24.454483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785942, 37.973839, 24.684765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033394, 38.147259, 24.946857>,  <42.181866, 38.251312, 25.104113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033394, 38.147259, 24.946857>,  <41.785942, 37.973839, 24.684765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033394, 38.147259, 24.946857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280547, -0.657096, 0.699656,
		0.733886, -0.616653, -0.284869,
		0.618631, 0.433549, 0.655233,
		42.218983, 38.277325, 25.143427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265537, 37.394753, 25.009371>,  <41.785942, 37.973839, 24.684765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265537, 37.394753, 25.009371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266479, 37.705524, 25.261206>,  <42.267044, 37.891987, 25.412306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266479, 37.705524, 25.261206>,  <42.265537, 37.394753, 25.009371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266479, 37.705524, 25.261206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186330, -0.618220, 0.763600,
		0.982484, -0.119111, 0.143308,
		0.002357, 0.776928, 0.629585,
		42.267185, 37.938602, 25.450081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475113, 37.137215, 25.721994>,  <42.265537, 37.394753, 25.009371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475113, 37.137215, 25.721994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338566, 37.493507, 25.842037>,  <42.256638, 37.707283, 25.914062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338566, 37.493507, 25.842037>,  <42.475113, 37.137215, 25.721994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338566, 37.493507, 25.842037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219759, -0.386072, 0.895910,
		0.913879, 0.239884, 0.327539,
		-0.341368, 0.890732, 0.300106,
		42.236156, 37.760727, 25.932070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782272, 37.359791, 26.403124>,  <42.475113, 37.137215, 25.721994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782272, 37.359791, 26.403124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434883, 37.552444, 26.356159>,  <42.226452, 37.668037, 26.327980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434883, 37.552444, 26.356159>,  <42.782272, 37.359791, 26.403124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434883, 37.552444, 26.356159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281592, -0.284353, 0.916433,
		0.408002, 0.828957, 0.382577,
		-0.868470, 0.481637, -0.117411,
		42.174343, 37.696934, 26.320936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661736, 37.543324, 27.074661>,  <42.782272, 37.359791, 26.403124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661736, 37.543324, 27.074661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.314808, 37.596405, 26.882769>,  <42.106651, 37.628254, 26.767633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.314808, 37.596405, 26.882769>,  <42.661736, 37.543324, 27.074661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314808, 37.596405, 26.882769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496695, -0.293402, 0.816829,
		-0.032360, 0.946734, 0.320386,
		-0.867322, 0.132702, -0.479733,
		42.054611, 37.636215, 26.738850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305542, 37.894180, 27.567020>,  <42.661736, 37.543324, 27.074661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305542, 37.894180, 27.567020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048515, 37.720959, 27.314173>,  <41.894299, 37.617023, 27.162464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048515, 37.720959, 27.314173>,  <42.305542, 37.894180, 27.567020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048515, 37.720959, 27.314173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567832, -0.284776, 0.772314,
		-0.514468, 0.855198, -0.062917,
		-0.642565, -0.433057, -0.632117,
		41.855747, 37.591042, 27.124538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754620, 38.206203, 27.775476>,  <42.305542, 37.894180, 27.567020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754620, 38.206203, 27.775476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627377, 37.867458, 27.605007>,  <41.551029, 37.664211, 27.502726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627377, 37.867458, 27.605007>,  <41.754620, 38.206203, 27.775476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627377, 37.867458, 27.605007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510244, -0.225931, 0.829823,
		-0.799035, 0.481427, -0.360238,
		-0.318110, -0.846867, -0.426172,
		41.531944, 37.613400, 27.477156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079288, 38.144402, 27.916885>,  <41.754620, 38.206203, 27.775476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079288, 38.144402, 27.916885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192501, 37.769154, 27.837061>,  <41.260429, 37.544006, 27.789165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192501, 37.769154, 27.837061>,  <41.079288, 38.144402, 27.916885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192501, 37.769154, 27.837061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600296, -0.335546, 0.725984,
		-0.748022, -0.085682, -0.658120,
		0.283034, -0.938119, -0.199562,
		41.277412, 37.487717, 27.777193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581097, 37.772091, 28.189386>,  <41.079288, 38.144402, 27.916885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581097, 37.772091, 28.189386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848694, 37.481506, 28.126528>,  <41.009254, 37.307156, 28.088812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848694, 37.481506, 28.126528>,  <40.581097, 37.772091, 28.189386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848694, 37.481506, 28.126528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337464, -0.485259, 0.806624,
		-0.662240, -0.486597, -0.569791,
		0.668997, -0.726462, -0.157148,
		41.049393, 37.263569, 28.079384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280148, 37.124641, 28.506407>,  <40.581097, 37.772091, 28.189386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280148, 37.124641, 28.506407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659546, 37.024849, 28.428314>,  <40.887184, 36.964973, 28.381458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659546, 37.024849, 28.428314>,  <40.280148, 37.124641, 28.506407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659546, 37.024849, 28.428314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107055, -0.832455, 0.543653,
		-0.298153, -0.494752, -0.816288,
		0.948496, -0.249480, -0.195233,
		40.944096, 36.950005, 28.369743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205803, 36.403069, 28.282034>,  <40.280148, 37.124641, 28.506407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205803, 36.403069, 28.282034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551846, 36.508625, 28.452660>,  <40.759472, 36.571960, 28.555035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551846, 36.508625, 28.452660>,  <40.205803, 36.403069, 28.282034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551846, 36.508625, 28.452660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252206, -0.506247, 0.824686,
		0.433575, -0.821020, -0.371400,
		0.865104, 0.263894, 0.426562,
		40.811378, 36.587791, 28.580627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359577, 35.811783, 28.665615>,  <40.205803, 36.403069, 28.282034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359577, 35.811783, 28.665615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582432, 36.105446, 28.820856>,  <40.716145, 36.281643, 28.914000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582432, 36.105446, 28.820856>,  <40.359577, 35.811783, 28.665615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582432, 36.105446, 28.820856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147491, -0.372442, 0.916261,
		0.817221, -0.567720, -0.099219,
		0.557133, 0.734153, 0.388101,
		40.749573, 36.325691, 28.937286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843472, 35.423782, 28.980856>,  <40.359577, 35.811783, 28.665615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843472, 35.423782, 28.980856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808037, 35.792671, 29.131403>,  <40.786777, 36.014004, 29.221731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808037, 35.792671, 29.131403>,  <40.843472, 35.423782, 28.980856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808037, 35.792671, 29.131403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389437, -0.379845, 0.839081,
		0.916783, -0.072243, 0.392797,
		-0.088584, 0.922225, 0.376369,
		40.781460, 36.069340, 29.244314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124214, 35.372890, 29.638765>,  <40.843472, 35.423782, 28.980856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124214, 35.372890, 29.638765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867409, 35.679440, 29.647631>,  <40.713326, 35.863369, 29.652950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867409, 35.679440, 29.647631>,  <41.124214, 35.372890, 29.638765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867409, 35.679440, 29.647631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377880, -0.341451, 0.860592,
		0.667101, 0.544138, 0.508813,
		-0.642016, 0.766371, 0.022163,
		40.674805, 35.909351, 29.654280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206646, 35.523544, 30.414848>,  <41.124214, 35.372890, 29.638765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206646, 35.523544, 30.414848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876068, 35.694546, 30.268301>,  <40.677719, 35.797146, 30.180372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876068, 35.694546, 30.268301>,  <41.206646, 35.523544, 30.414848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876068, 35.694546, 30.268301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548515, -0.464663, 0.695140,
		0.126937, 0.775455, 0.618511,
		-0.826449, 0.427502, -0.366366,
		40.628132, 35.822796, 30.158392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726936, 35.743088, 30.978113>,  <41.206646, 35.523544, 30.414848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726936, 35.743088, 30.978113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484459, 35.696365, 30.663435>,  <40.338974, 35.668331, 30.474628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484459, 35.696365, 30.663435>,  <40.726936, 35.743088, 30.978113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484459, 35.696365, 30.663435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713211, -0.357882, 0.602702,
		-0.351942, 0.926432, 0.133639,
		-0.606190, -0.116803, -0.786696,
		40.302601, 35.661324, 30.427425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086929, 36.009277, 31.193800>,  <40.726936, 35.743088, 30.978113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086929, 36.009277, 31.193800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014790, 35.786636, 30.869411>,  <39.971504, 35.653053, 30.674778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014790, 35.786636, 30.869411>,  <40.086929, 36.009277, 31.193800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014790, 35.786636, 30.869411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663667, -0.539665, 0.517985,
		-0.725961, 0.631633, -0.272067,
		-0.180351, -0.556599, -0.810969,
		39.960686, 35.619656, 30.626122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325291, 35.971146, 31.170593>,  <40.086929, 36.009277, 31.193800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325291, 35.971146, 31.170593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443233, 35.673412, 30.930920>,  <39.514000, 35.494770, 30.787115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443233, 35.673412, 30.930920>,  <39.325291, 35.971146, 31.170593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443233, 35.673412, 30.930920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795494, -0.538617, 0.277634,
		-0.529383, 0.394780, -0.750935,
		0.294862, -0.744339, -0.599180,
		39.531693, 35.450111, 30.751165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762074, 35.710896, 31.001709>,  <39.325291, 35.971146, 31.170593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762074, 35.710896, 31.001709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028717, 35.423901, 30.920874>,  <39.188705, 35.251705, 30.872372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028717, 35.423901, 30.920874>,  <38.762074, 35.710896, 31.001709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028717, 35.423901, 30.920874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597840, -0.676552, 0.429959,
		-0.445213, -0.165800, -0.879941,
		0.666612, -0.717488, -0.202088,
		39.228703, 35.208652, 30.860247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401360, 35.274658, 30.657530>,  <38.762074, 35.710896, 31.001709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401360, 35.274658, 30.657530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696548, 35.056019, 30.815836>,  <38.873661, 34.924835, 30.910820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696548, 35.056019, 30.815836>,  <38.401360, 35.274658, 30.657530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696548, 35.056019, 30.815836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673636, -0.561781, 0.480226,
		-0.040156, -0.620995, -0.782785,
		0.737972, -0.546596, 0.395765,
		38.917938, 34.892040, 30.934565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294018, 34.567245, 30.471109>,  <38.401360, 35.274658, 30.657530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294018, 34.567245, 30.471109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530865, 34.501816, 30.786739>,  <38.672974, 34.462559, 30.976118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530865, 34.501816, 30.786739>,  <38.294018, 34.567245, 30.471109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530865, 34.501816, 30.786739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705882, -0.577649, 0.409942,
		0.388752, -0.799728, -0.457501,
		0.592118, -0.163576, 0.789075,
		38.708500, 34.452744, 31.023462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176800, 33.840630, 30.678604>,  <38.294018, 34.567245, 30.471109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176800, 33.840630, 30.678604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350872, 34.021385, 30.990095>,  <38.455315, 34.129837, 31.176989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350872, 34.021385, 30.990095>,  <38.176800, 33.840630, 30.678604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350872, 34.021385, 30.990095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607101, -0.491428, 0.624442,
		0.664864, -0.744512, 0.060479,
		0.435183, 0.451886, 0.778726,
		38.481426, 34.156952, 31.223713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491871, 33.399654, 31.204264>,  <38.176800, 33.840630, 30.678604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491871, 33.399654, 31.204264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395855, 33.726078, 31.414570>,  <38.338245, 33.921932, 31.540754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395855, 33.726078, 31.414570>,  <38.491871, 33.399654, 31.204264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395855, 33.726078, 31.414570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464708, -0.572107, 0.675825,
		0.852307, -0.082103, 0.516558,
		-0.240039, 0.816059, 0.525765,
		38.323845, 33.970894, 31.572300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328373, 33.087570, 31.818478>,  <38.491871, 33.399654, 31.204264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328373, 33.087570, 31.818478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229385, 33.463848, 31.911299>,  <38.169994, 33.689617, 31.966991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229385, 33.463848, 31.911299>,  <38.328373, 33.087570, 31.818478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229385, 33.463848, 31.911299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500252, -0.329160, 0.800875,
		0.829765, 0.082103, 0.552042,
		-0.247464, 0.940698, 0.232053,
		38.155148, 33.746056, 31.980915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632702, 33.227032, 32.422733>,  <38.328373, 33.087570, 31.818478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632702, 33.227032, 32.422733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303749, 33.451832, 32.387306>,  <38.106377, 33.586712, 32.366051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303749, 33.451832, 32.387306>,  <38.632702, 33.227032, 32.422733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303749, 33.451832, 32.387306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342952, -0.365484, 0.865335,
		0.453946, 0.742012, 0.493306,
		-0.822385, 0.561996, -0.088565,
		38.057034, 33.620430, 32.360737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544151, 33.464531, 33.099026>,  <38.632702, 33.227032, 32.422733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544151, 33.464531, 33.099026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198875, 33.509453, 32.902130>,  <37.991711, 33.536404, 32.783993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198875, 33.509453, 32.902130>,  <38.544151, 33.464531, 33.099026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198875, 33.509453, 32.902130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501161, -0.308769, 0.808393,
		-0.061205, 0.944484, 0.322806,
		-0.863187, 0.112300, -0.492237,
		37.939919, 33.543144, 32.754459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550285, 32.779083, 33.165638>,  <38.544151, 33.464531, 33.099026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550285, 32.779083, 33.165638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534969, 33.017563, 33.486404>,  <38.525780, 33.160652, 33.678864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534969, 33.017563, 33.486404>,  <38.550285, 32.779083, 33.165638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534969, 33.017563, 33.486404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981513, -0.173041, 0.081786,
		0.187526, -0.783964, 0.591806,
		-0.038289, 0.596203, 0.801920,
		38.523483, 33.196423, 33.726982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160255, 32.338284, 33.732529>,  <38.550285, 32.779083, 33.165638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160255, 32.338284, 33.732529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150120, 32.725449, 33.832531>,  <38.144039, 32.957748, 33.892532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150120, 32.725449, 33.832531>,  <38.160255, 32.338284, 33.732529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150120, 32.725449, 33.832531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956287, -0.096352, 0.276100,
		0.291329, -0.232084, 0.928043,
		-0.025340, 0.967912, 0.250009,
		38.142517, 33.015823, 33.907536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872841, 32.277290, 34.459423>,  <38.160255, 32.338284, 33.732529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872841, 32.277290, 34.459423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805622, 32.634705, 34.292881>,  <37.765289, 32.849152, 34.192955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805622, 32.634705, 34.292881>,  <37.872841, 32.277290, 34.459423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805622, 32.634705, 34.292881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979275, -0.102880, 0.174462,
		0.113053, 0.437044, 0.892307,
		-0.168048, 0.893537, -0.416356,
		37.755207, 32.902767, 34.167973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487274, 32.691269, 34.932758>,  <37.872841, 32.277290, 34.459423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487274, 32.691269, 34.932758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438393, 32.866699, 34.576618>,  <37.409061, 32.971958, 34.362934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438393, 32.866699, 34.576618>,  <37.487274, 32.691269, 34.932758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438393, 32.866699, 34.576618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895364, 0.338345, 0.289561,
		0.428239, 0.832570, 0.351337,
		-0.122207, 0.438576, -0.890346,
		37.401730, 32.998272, 34.309513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271263, 33.403717, 35.086159>,  <37.487274, 32.691269, 34.932758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271263, 33.403717, 35.086159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137718, 33.342789, 34.714066>,  <37.057590, 33.306232, 34.490810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137718, 33.342789, 34.714066>,  <37.271263, 33.403717, 35.086159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137718, 33.342789, 34.714066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931633, 0.203558, 0.301037,
		0.143501, 0.967141, -0.209873,
		-0.333867, -0.152326, -0.930231,
		37.037560, 33.297092, 34.434998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560219, 33.551579, 35.234207>,  <37.271263, 33.403717, 35.086159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560219, 33.551579, 35.234207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579308, 33.491898, 34.839146>,  <36.590763, 33.456089, 34.602108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579308, 33.491898, 34.839146>,  <36.560219, 33.551579, 35.234207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579308, 33.491898, 34.839146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927527, 0.360335, -0.099253,
		0.370695, 0.920814, -0.121188,
		0.047726, -0.149198, -0.987655,
		36.593624, 33.447140, 34.542850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303844, 34.177063, 34.674061>,  <36.560219, 33.551579, 35.234207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303844, 34.177063, 34.674061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257851, 33.798500, 34.553333>,  <36.230255, 33.571362, 34.480896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257851, 33.798500, 34.553333>,  <36.303844, 34.177063, 34.674061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257851, 33.798500, 34.553333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949036, 0.194416, -0.248059,
		0.293443, 0.257912, -0.920529,
		-0.114988, -0.946406, -0.301817,
		36.223354, 33.514580, 34.462788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925747, 34.157658, 33.998943>,  <36.303844, 34.177063, 34.674061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925747, 34.157658, 33.998943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890018, 33.797207, 34.168644>,  <35.868580, 33.580936, 34.270462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890018, 33.797207, 34.168644>,  <35.925747, 34.157658, 33.998943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890018, 33.797207, 34.168644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991702, 0.040924, -0.121867,
		0.092456, -0.431613, -0.897308,
		-0.089321, -0.901130, 0.424248,
		35.863224, 33.526867, 34.295918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593315, 33.817677, 33.567543>,  <35.925747, 34.157658, 33.998943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593315, 33.817677, 33.567543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499744, 33.644001, 33.915512>,  <35.443604, 33.539795, 34.124294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499744, 33.644001, 33.915512>,  <35.593315, 33.817677, 33.567543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499744, 33.644001, 33.915512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970250, 0.161679, -0.180209,
		-0.062404, -0.886196, -0.459089,
		-0.233926, -0.434185, 0.869921,
		35.429565, 33.513744, 34.176487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972160, 34.007996, 33.568127>,  <35.593315, 33.817677, 33.567543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972160, 34.007996, 33.568127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958942, 33.800117, 33.909611>,  <34.951012, 33.675392, 34.114502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958942, 33.800117, 33.909611>,  <34.972160, 34.007996, 33.568127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958942, 33.800117, 33.909611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950528, 0.280320, 0.133856,
		-0.308877, -0.807055, -0.503246,
		-0.033041, -0.519695, 0.853713,
		34.949032, 33.644211, 34.165726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281803, 33.591999, 33.586159>,  <34.972160, 34.007996, 33.568127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281803, 33.591999, 33.586159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437016, 33.667397, 33.947025>,  <34.530144, 33.712635, 34.163544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437016, 33.667397, 33.947025>,  <34.281803, 33.591999, 33.586159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437016, 33.667397, 33.947025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887218, 0.341434, 0.310268,
		-0.249547, -0.920812, 0.299720,
		0.388033, 0.188491, 0.902165,
		34.553425, 33.723946, 34.217674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833717, 33.357224, 34.182812>,  <34.281803, 33.591999, 33.586159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833717, 33.357224, 34.182812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066097, 33.644958, 34.335155>,  <34.205524, 33.817600, 34.426563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066097, 33.644958, 34.335155>,  <33.833717, 33.357224, 34.182812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066097, 33.644958, 34.335155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779566, 0.357193, 0.514481,
		0.234043, -0.595794, 0.768280,
		0.580949, 0.719335, 0.380862,
		34.240383, 33.860760, 34.449413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692532, 33.372955, 34.879219>,  <33.833717, 33.357224, 34.182812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692532, 33.372955, 34.879219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839096, 33.731792, 34.780449>,  <33.927036, 33.947094, 34.721188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839096, 33.731792, 34.780449>,  <33.692532, 33.372955, 34.879219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839096, 33.731792, 34.780449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650718, 0.436754, 0.621137,
		0.665062, -0.066912, 0.743784,
		0.366412, 0.897089, -0.246928,
		33.949020, 34.000919, 34.706371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022617, 33.691883, 35.432457>,  <33.692532, 33.372955, 34.879219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022617, 33.691883, 35.432457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855114, 33.931572, 35.159527>,  <33.754612, 34.075386, 34.995770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855114, 33.931572, 35.159527>,  <34.022617, 33.691883, 35.432457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855114, 33.931572, 35.159527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649513, 0.327479, 0.686215,
		0.634642, 0.730543, 0.252065,
		-0.418763, 0.599220, -0.682329,
		33.729485, 34.111340, 34.954826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045364, 34.380001, 35.697895>,  <34.022617, 33.691883, 35.432457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045364, 34.380001, 35.697895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760784, 34.401184, 35.417599>,  <33.590034, 34.413895, 35.249420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760784, 34.401184, 35.417599>,  <34.045364, 34.380001, 35.697895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760784, 34.401184, 35.417599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652271, 0.321293, 0.686523,
		0.261497, 0.945498, -0.194043,
		-0.711451, 0.052955, -0.700738,
		33.547348, 34.417072, 35.207378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682739, 34.962029, 35.861397>,  <34.045364, 34.380001, 35.697895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682739, 34.962029, 35.861397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473938, 34.690056, 35.655407>,  <33.348656, 34.526871, 35.531811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473938, 34.690056, 35.655407>,  <33.682739, 34.962029, 35.861397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473938, 34.690056, 35.655407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617156, -0.115669, 0.778292,
		-0.588754, 0.724093, -0.359246,
		-0.522002, -0.679934, -0.514979,
		33.317337, 34.486076, 35.500912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096806, 35.123253, 36.136032>,  <33.682739, 34.962029, 35.861397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096806, 35.123253, 36.136032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034695, 34.774334, 35.950565>,  <32.997429, 34.564983, 35.839283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034695, 34.774334, 35.950565>,  <33.096806, 35.123253, 36.136032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034695, 34.774334, 35.950565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796908, -0.166776, 0.580622,
		-0.583804, 0.459657, -0.669245,
		-0.155273, -0.872296, -0.463669,
		32.988113, 34.512646, 35.811466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321384, 35.104305, 36.014362>,  <33.096806, 35.123253, 36.136032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321384, 35.104305, 36.014362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433380, 34.721661, 35.982117>,  <32.500576, 34.492073, 35.962769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433380, 34.721661, 35.982117>,  <32.321384, 35.104305, 36.014362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433380, 34.721661, 35.982117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819144, -0.281850, 0.499563,
		-0.500609, -0.073838, -0.862519,
		0.279987, -0.956613, -0.080613,
		32.517376, 34.434677, 35.957932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735569, 34.735828, 35.794209>,  <32.321384, 35.104305, 36.014362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735569, 34.735828, 35.794209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993767, 34.467407, 35.940102>,  <32.148685, 34.306355, 36.027637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993767, 34.467407, 35.940102>,  <31.735569, 34.735828, 35.794209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993767, 34.467407, 35.940102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688531, -0.304593, 0.658140,
		-0.330553, -0.675952, -0.658653,
		0.645492, -0.671053, 0.364729,
		32.187416, 34.266090, 36.049522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492073, 34.062374, 35.824703>,  <31.735569, 34.735828, 35.794209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492073, 34.062374, 35.824703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747513, 34.145916, 36.120968>,  <31.900776, 34.196041, 36.298725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747513, 34.145916, 36.120968>,  <31.492073, 34.062374, 35.824703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747513, 34.145916, 36.120968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728169, -0.147335, 0.669375,
		0.248927, -0.966784, 0.057994,
		0.638597, 0.208855, 0.740658,
		31.939093, 34.208572, 36.343166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322681, 33.639256, 36.332909>,  <31.492073, 34.062374, 35.824703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322681, 33.639256, 36.332909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543131, 33.903656, 36.536610>,  <31.675400, 34.062298, 36.658833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543131, 33.903656, 36.536610>,  <31.322681, 33.639256, 36.332909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543131, 33.903656, 36.536610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801922, 0.250900, 0.542190,
		0.230615, -0.707199, 0.668346,
		0.551124, 0.660999, 0.509257,
		31.708467, 34.101955, 36.689384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937914, 33.681026, 36.882332>,  <31.322681, 33.639256, 36.332909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937914, 33.681026, 36.882332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194790, 33.983456, 36.932838>,  <31.348915, 34.164913, 36.963142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194790, 33.983456, 36.932838>,  <30.937914, 33.681026, 36.882332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194790, 33.983456, 36.932838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697178, 0.507622, 0.506224,
		0.318646, -0.413125, 0.853108,
		0.642190, 0.756074, 0.126270,
		31.387447, 34.210278, 36.970718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010647, 33.713112, 37.640404>,  <30.937914, 33.681026, 36.882332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010647, 33.713112, 37.640404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658144, 33.525932, 37.613857>,  <30.446642, 33.413624, 37.597927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658144, 33.525932, 37.613857>,  <31.010647, 33.713112, 37.640404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658144, 33.525932, 37.613857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239580, 0.321237, 0.916192,
		-0.407414, 0.823303, -0.395205,
		-0.881258, -0.467953, -0.066371,
		30.393766, 33.385548, 37.593945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626133, 34.125271, 37.540447>,  <31.010647, 33.713112, 37.640404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626133, 34.125271, 37.540447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714706, 33.793167, 37.335846>,  <31.767851, 33.593906, 37.213085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714706, 33.793167, 37.335846>,  <31.626133, 34.125271, 37.540447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714706, 33.793167, 37.335846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565044, 0.536738, -0.626608,
		0.794790, -0.150268, 0.587987,
		0.221435, -0.830260, -0.511502,
		31.781137, 33.544090, 37.182396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387310, 34.015594, 37.540497>,  <31.626133, 34.125271, 37.540447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387310, 34.015594, 37.540497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197891, 33.848782, 37.230186>,  <32.084240, 33.748695, 37.043999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197891, 33.848782, 37.230186>,  <32.387310, 34.015594, 37.540497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197891, 33.848782, 37.230186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568108, 0.528456, -0.630863,
		0.673056, -0.739471, -0.013331,
		-0.473550, -0.417033, -0.775780,
		32.055824, 33.723671, 36.997452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877502, 33.897270, 37.066475>,  <32.387310, 34.015594, 37.540497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877502, 33.897270, 37.066475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568542, 33.853981, 36.816135>,  <32.383167, 33.828007, 36.665932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568542, 33.853981, 36.816135>,  <32.877502, 33.897270, 37.066475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568542, 33.853981, 36.816135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609482, 0.150929, -0.778301,
		0.178694, -0.982602, -0.050613,
		-0.772399, -0.108230, -0.625848,
		32.336823, 33.821514, 36.628380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156296, 33.505871, 36.526031>,  <32.877502, 33.897270, 37.066475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156296, 33.505871, 36.526031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840065, 33.689678, 36.364132>,  <32.650326, 33.799965, 36.266991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840065, 33.689678, 36.364132>,  <33.156296, 33.505871, 36.526031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840065, 33.689678, 36.364132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550172, 0.242795, -0.798975,
		-0.268876, -0.854336, -0.444765,
		-0.790580, 0.459523, -0.404749,
		32.602890, 33.827534, 36.242706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969566, 33.249725, 35.872498>,  <33.156296, 33.505871, 36.526031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969566, 33.249725, 35.872498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834423, 33.625774, 35.890518>,  <32.753338, 33.851402, 35.901329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834423, 33.625774, 35.890518>,  <32.969566, 33.249725, 35.872498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834423, 33.625774, 35.890518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546175, 0.234818, -0.804086,
		-0.766515, -0.247060, -0.592804,
		-0.337859, 0.940118, 0.045053,
		32.733067, 33.907810, 35.904034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811958, 33.379395, 35.182899>,  <32.969566, 33.249725, 35.872498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811958, 33.379395, 35.182899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860912, 33.725109, 35.378048>,  <32.890285, 33.932537, 35.495136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860912, 33.725109, 35.378048>,  <32.811958, 33.379395, 35.182899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860912, 33.725109, 35.378048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575289, 0.338788, -0.744490,
		-0.808742, 0.371785, -0.455753,
		0.122387, 0.864291, 0.487876,
		32.897629, 33.984398, 35.524410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777790, 34.047356, 34.764477>,  <32.811958, 33.379395, 35.182899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777790, 34.047356, 34.764477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955235, 34.330669, 34.984127>,  <33.061699, 34.500660, 35.115917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955235, 34.330669, 34.984127>,  <32.777790, 34.047356, 34.764477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955235, 34.330669, 34.984127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658719, 0.157784, -0.735659,
		-0.607702, 0.688064, -0.396568,
		0.443608, 0.708288, 0.549127,
		33.088318, 34.543156, 35.148865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706528, 34.657547, 34.293060>,  <32.777790, 34.047356, 34.764477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706528, 34.657547, 34.293060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988522, 34.591408, 34.568932>,  <33.157719, 34.551723, 34.734455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988522, 34.591408, 34.568932>,  <32.706528, 34.657547, 34.293060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988522, 34.591408, 34.568932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669267, -0.166681, -0.724085,
		0.234681, 0.972048, -0.006847,
		0.704987, -0.165347, 0.689677,
		33.200016, 34.541805, 34.775833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304253, 35.063442, 34.194733>,  <32.706528, 34.657547, 34.293060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304253, 35.063442, 34.194733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426922, 34.751495, 34.413002>,  <33.500523, 34.564327, 34.543964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426922, 34.751495, 34.413002>,  <33.304253, 35.063442, 34.194733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426922, 34.751495, 34.413002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784811, -0.117190, -0.608554,
		0.538538, 0.614879, 0.576108,
		0.306672, -0.779866, 0.545675,
		33.518925, 34.517536, 34.576706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967129, 35.204098, 34.530392>,  <33.304253, 35.063442, 34.194733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967129, 35.204098, 34.530392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936260, 34.809086, 34.475491>,  <33.917740, 34.572079, 34.442551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936260, 34.809086, 34.475491>,  <33.967129, 35.204098, 34.530392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936260, 34.809086, 34.475491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813062, 0.017345, -0.581918,
		0.577040, -0.156500, 0.801581,
		-0.077167, -0.987526, -0.137253,
		33.913109, 34.512829, 34.434315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629036, 34.946957, 34.555782>,  <33.967129, 35.204098, 34.530392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629036, 34.946957, 34.555782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427826, 34.668526, 34.350868>,  <34.307098, 34.501465, 34.227921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427826, 34.668526, 34.350868>,  <34.629036, 34.946957, 34.555782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427826, 34.668526, 34.350868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655403, 0.079156, -0.751120,
		0.563390, -0.713587, 0.416395,
		-0.503029, -0.696080, -0.512283,
		34.276917, 34.459702, 34.197182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953400, 34.456791, 35.092270>,  <34.629036, 34.946957, 34.555782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953400, 34.456791, 35.092270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700165, 34.174458, 34.965145>,  <34.548225, 34.005058, 34.888870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700165, 34.174458, 34.965145>,  <34.953400, 34.456791, 35.092270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700165, 34.174458, 34.965145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773687, -0.563862, -0.288908,
		0.024718, -0.428791, 0.903066,
		-0.633085, -0.705832, -0.317812,
		34.510239, 33.962708, 34.869801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124012, 33.862724, 35.426041>,  <34.953400, 34.456791, 35.092270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124012, 33.862724, 35.426041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948574, 33.806145, 35.071045>,  <34.843311, 33.772198, 34.858047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948574, 33.806145, 35.071045>,  <35.124012, 33.862724, 35.426041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948574, 33.806145, 35.071045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808774, -0.492683, -0.321166,
		-0.391820, -0.858635, 0.330488,
		-0.438591, -0.141451, -0.887485,
		34.816998, 33.763710, 34.804798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259079, 33.230957, 35.244026>,  <35.124012, 33.862724, 35.426041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259079, 33.230957, 35.244026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198597, 33.402054, 34.887558>,  <35.162308, 33.504711, 34.673679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198597, 33.402054, 34.887558>,  <35.259079, 33.230957, 35.244026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198597, 33.402054, 34.887558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795295, -0.482772, -0.366657,
		-0.587064, -0.764179, -0.267182,
		-0.151204, 0.427740, -0.891166,
		35.153236, 33.530376, 34.620209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041756, 32.680454, 34.814426>,  <35.259079, 33.230957, 35.244026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041756, 32.680454, 34.814426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250751, 33.000214, 34.695789>,  <35.376148, 33.192070, 34.624607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250751, 33.000214, 34.695789>,  <35.041756, 32.680454, 34.814426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250751, 33.000214, 34.695789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821282, -0.565319, -0.076884,
		-0.229128, -0.203412, -0.951905,
		0.522491, 0.799399, -0.296589,
		35.407497, 33.240032, 34.606812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691002, 32.298969, 34.790585>,  <35.041756, 32.680454, 34.814426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691002, 32.298969, 34.790585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752430, 32.669548, 34.653118>,  <35.789288, 32.891895, 34.570641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752430, 32.669548, 34.653118>,  <35.691002, 32.298969, 34.790585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752430, 32.669548, 34.653118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944482, -0.239856, -0.224551,
		-0.290465, -0.290099, -0.911851,
		0.153571, 0.926451, -0.343663,
		35.798500, 32.947483, 34.550018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113445, 32.272591, 34.231464>,  <35.691002, 32.298969, 34.790585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113445, 32.272591, 34.231464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148258, 32.667511, 34.284615>,  <36.169144, 32.904465, 34.316505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148258, 32.667511, 34.284615>,  <36.113445, 32.272591, 34.231464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148258, 32.667511, 34.284615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862870, -0.008049, -0.505362,
		-0.497877, 0.158632, -0.852616,
		0.087029, 0.987305, 0.132871,
		36.174366, 32.963703, 34.324474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232506, 32.570740, 33.561295>,  <36.113445, 32.272591, 34.231464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232506, 32.570740, 33.561295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362457, 32.826141, 33.840370>,  <36.440426, 32.979382, 34.007816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362457, 32.826141, 33.840370>,  <36.232506, 32.570740, 33.561295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362457, 32.826141, 33.840370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896123, 0.028019, -0.442921,
		-0.302356, 0.769108, -0.563076,
		0.324877, 0.638505, 0.697687,
		36.459919, 33.017693, 34.049675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671616, 32.987160, 33.237251>,  <36.232506, 32.570740, 33.561295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671616, 32.987160, 33.237251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771473, 33.097034, 33.608677>,  <36.831387, 33.162960, 33.831532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771473, 33.097034, 33.608677>,  <36.671616, 32.987160, 33.237251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771473, 33.097034, 33.608677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961523, 0.043246, -0.271298,
		-0.114678, 0.960561, -0.253322,
		0.249643, 0.274687, 0.928561,
		36.846367, 33.179440, 33.887245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208199, 33.574627, 33.246212>,  <36.671616, 32.987160, 33.237251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208199, 33.574627, 33.246212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233398, 33.413322, 33.611378>,  <37.248520, 33.316540, 33.830479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233398, 33.413322, 33.611378>,  <37.208199, 33.574627, 33.246212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233398, 33.413322, 33.611378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994631, 0.100616, -0.024199,
		-0.082095, 0.909538, 0.407433,
		0.063004, -0.403259, 0.912915,
		37.252300, 33.292343, 33.885254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461197, 34.080982, 33.747330>,  <37.208199, 33.574627, 33.246212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461197, 34.080982, 33.747330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549889, 33.719330, 33.893414>,  <37.603104, 33.502338, 33.981064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549889, 33.719330, 33.893414>,  <37.461197, 34.080982, 33.747330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549889, 33.719330, 33.893414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916743, 0.320916, 0.237897,
		-0.332292, 0.282053, 0.900016,
		0.221730, -0.904134, 0.365208,
		37.616409, 33.448090, 34.002975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013161, 34.246948, 34.201572>,  <37.461197, 34.080982, 33.747330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013161, 34.246948, 34.201572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058826, 33.859085, 34.115105>,  <38.086227, 33.626366, 34.063225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058826, 33.859085, 34.115105>,  <38.013161, 34.246948, 34.201572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058826, 33.859085, 34.115105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993343, 0.114780, 0.009741,
		0.015366, -0.215838, 0.976308,
		0.114163, -0.969659, -0.216165,
		38.093075, 33.568188, 34.050255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568966, 34.098141, 34.657768>,  <38.013161, 34.246948, 34.201572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568966, 34.098141, 34.657768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552914, 33.799763, 34.391846>,  <38.543282, 33.620735, 34.232292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552914, 33.799763, 34.391846>,  <38.568966, 34.098141, 34.657768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552914, 33.799763, 34.391846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991979, 0.050075, -0.116063,
		0.119866, -0.664127, 0.737948,
		-0.040128, -0.745941, -0.664802,
		38.540874, 33.575981, 34.192406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968460, 33.396103, 34.813778>,  <38.568966, 34.098141, 34.657768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968460, 33.396103, 34.813778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948700, 33.473598, 34.421856>,  <38.936844, 33.520096, 34.186703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948700, 33.473598, 34.421856>,  <38.968460, 33.396103, 34.813778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948700, 33.473598, 34.421856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998711, -0.001863, -0.050719,
		-0.011652, -0.981051, -0.193401,
		-0.049398, 0.193743, -0.979808,
		38.933880, 33.531723, 34.127914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312073, 32.850010, 34.396530>,  <38.968460, 33.396103, 34.813778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312073, 32.850010, 34.396530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342915, 33.215878, 34.237820>,  <39.361420, 33.435398, 34.142593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342915, 33.215878, 34.237820>,  <39.312073, 32.850010, 34.396530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342915, 33.215878, 34.237820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996532, -0.083180, 0.001904,
		-0.031262, -0.395548, -0.917913,
		0.077105, 0.914671, -0.396777,
		39.366047, 33.490280, 34.118786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840809, 32.849941, 33.843670>,  <39.312073, 32.850010, 34.396530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840809, 32.849941, 33.843670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858852, 33.207531, 34.022003>,  <39.869678, 33.422085, 34.129005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858852, 33.207531, 34.022003>,  <39.840809, 32.849941, 33.843670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858852, 33.207531, 34.022003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998654, -0.051784, 0.002800,
		0.025590, 0.445112, -0.895109,
		0.045106, 0.893977, 0.445838,
		39.872383, 33.475723, 34.155754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245789, 33.356228, 33.396702>,  <39.840809, 32.849941, 33.843670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245789, 33.356228, 33.396702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256340, 33.449303, 33.785580>,  <40.262672, 33.505146, 34.018906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256340, 33.449303, 33.785580>,  <40.245789, 33.356228, 33.396702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256340, 33.449303, 33.785580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999110, -0.038164, -0.017978,
		0.032919, 0.971803, -0.233486,
		0.026381, 0.232686, 0.972194,
		40.264256, 33.519108, 34.077236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589520, 34.011848, 33.614170>,  <40.245789, 33.356228, 33.396702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589520, 34.011848, 33.614170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622719, 33.722389, 33.888233>,  <40.642639, 33.548714, 34.052670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622719, 33.722389, 33.888233>,  <40.589520, 34.011848, 33.614170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622719, 33.722389, 33.888233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983983, -0.049331, -0.171300,
		0.157761, 0.688402, 0.707965,
		0.082999, -0.723650, 0.685158,
		40.647617, 33.505295, 34.093781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006653, 34.206745, 34.258888>,  <40.589520, 34.011848, 33.614170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006653, 34.206745, 34.258888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033424, 33.813873, 34.188644>,  <41.049488, 33.578148, 34.146496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033424, 33.813873, 34.188644>,  <41.006653, 34.206745, 34.258888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033424, 33.813873, 34.188644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996800, 0.058107, 0.054903,
		-0.043720, -0.178725, 0.982927,
		0.066927, -0.982182, -0.175612,
		41.053501, 33.519218, 34.135960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582478, 34.604546, 34.181904>,  <41.006653, 34.206745, 34.258888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582478, 34.604546, 34.181904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784756, 34.288013, 34.044460>,  <41.906124, 34.098095, 33.961994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784756, 34.288013, 34.044460>,  <41.582478, 34.604546, 34.181904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784756, 34.288013, 34.044460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455392, 0.583131, -0.672738,
		0.732728, 0.183722, 0.655252,
		0.505695, -0.791330, -0.343611,
		41.936462, 34.050613, 33.941376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211575, 34.771580, 34.253593>,  <41.582478, 34.604546, 34.181904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211575, 34.771580, 34.253593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171223, 34.521633, 33.943920>,  <42.147011, 34.371666, 33.758114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171223, 34.521633, 33.943920>,  <42.211575, 34.771580, 34.253593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171223, 34.521633, 33.943920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281028, 0.728570, -0.624667,
		0.954383, -0.280582, 0.102110,
		-0.100875, -0.624868, -0.774186,
		42.140961, 34.334171, 33.711662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803589, 34.811817, 33.827538>,  <42.211575, 34.771580, 34.253593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803589, 34.811817, 33.827538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461205, 34.730782, 33.637260>,  <42.255772, 34.682159, 33.523094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461205, 34.730782, 33.637260>,  <42.803589, 34.811817, 33.827538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461205, 34.730782, 33.637260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073693, 0.862843, -0.500070,
		0.511758, -0.463097, -0.723633,
		-0.855963, -0.202588, -0.475694,
		42.204414, 34.670006, 33.494553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273472, 34.885521, 33.286823>,  <42.803589, 34.811817, 33.827538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273472, 34.885521, 33.286823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382549, 35.242470, 33.430664>,  <43.447994, 35.456638, 33.516968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382549, 35.242470, 33.430664>,  <43.273472, 34.885521, 33.286823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382549, 35.242470, 33.430664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934930, -0.333987, 0.119823,
		0.227030, 0.303531, -0.925379,
		0.272695, 0.892368, 0.359606,
		43.464359, 35.510181, 33.538548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955235, 34.744427, 33.501881>,  <43.273472, 34.885521, 33.286823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955235, 34.744427, 33.501881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925179, 35.135189, 33.581894>,  <43.907143, 35.369644, 33.629902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925179, 35.135189, 33.581894>,  <43.955235, 34.744427, 33.501881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925179, 35.135189, 33.581894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930806, -0.003246, 0.365499,
		0.357707, 0.213660, -0.909063,
		-0.075142, 0.976903, 0.200037,
		43.902637, 35.428261, 33.641907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450684, 35.053459, 33.155571>,  <43.955235, 34.744427, 33.501881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450684, 35.053459, 33.155571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.360065, 35.245144, 33.494755>,  <44.305695, 35.360153, 33.698265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.360065, 35.245144, 33.494755>,  <44.450684, 35.053459, 33.155571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360065, 35.245144, 33.494755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924691, -0.167671, 0.341807,
		0.305976, 0.861534, -0.405138,
		-0.226549, 0.479213, 0.847957,
		44.292099, 35.388908, 33.749142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.109840, 35.282547, 33.458340>,  <44.450684, 35.053459, 33.155571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.109840, 35.282547, 33.458340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869541, 35.309311, 33.776993>,  <44.725361, 35.325371, 33.968185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869541, 35.309311, 33.776993>,  <45.109840, 35.282547, 33.458340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869541, 35.309311, 33.776993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754047, -0.283569, 0.592454,
		0.265541, 0.956615, 0.119901,
		-0.600751, 0.066910, 0.796631,
		44.689316, 35.329384, 34.015984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.319603, 35.819592, 33.983879>,  <45.109840, 35.282547, 33.458340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.319603, 35.819592, 33.983879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154507, 35.464062, 34.063511>,  <45.055450, 35.250744, 34.111290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154507, 35.464062, 34.063511>,  <45.319603, 35.819592, 33.983879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154507, 35.464062, 34.063511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789482, -0.240091, 0.564866,
		-0.454272, 0.390311, 0.800809,
		-0.412740, -0.888827, 0.199077,
		45.030685, 35.197414, 34.123234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464020, 35.737206, 34.675835>,  <45.319603, 35.819592, 33.983879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464020, 35.737206, 34.675835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425808, 35.373539, 34.513706>,  <45.402882, 35.155338, 34.416428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425808, 35.373539, 34.513706>,  <45.464020, 35.737206, 34.675835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425808, 35.373539, 34.513706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843081, -0.290384, 0.452648,
		-0.529233, -0.298477, 0.794244,
		-0.095531, -0.909169, -0.405321,
		45.397148, 35.100788, 34.392109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328354, 35.109776, 35.072536>,  <45.464020, 35.737206, 34.675835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.328354, 35.109776, 35.072536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551208, 35.063808, 34.743565>,  <45.684921, 35.036228, 34.546181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551208, 35.063808, 34.743565>,  <45.328354, 35.109776, 35.072536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551208, 35.063808, 34.743565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716235, -0.434693, 0.545939,
		-0.420240, -0.893217, -0.159880,
		0.557141, -0.114913, -0.822428,
		45.718349, 35.029335, 34.496838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490593, 34.430817, 34.891239>,  <45.328354, 35.109776, 35.072536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490593, 34.430817, 34.891239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.752548, 34.714848, 34.787773>,  <45.909721, 34.885265, 34.725693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.752548, 34.714848, 34.787773>,  <45.490593, 34.430817, 34.891239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.752548, 34.714848, 34.787773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676060, -0.397507, 0.620429,
		0.337735, -0.581182, -0.740380,
		0.654888, 0.710081, -0.258662,
		45.949013, 34.927872, 34.710175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268024, 34.279190, 34.694584>,  <45.490593, 34.430817, 34.891239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268024, 34.279190, 34.694584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283382, 34.630688, 34.884880>,  <46.292599, 34.841587, 34.999058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283382, 34.630688, 34.884880>,  <46.268024, 34.279190, 34.694584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.283382, 34.630688, 34.884880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615451, -0.395869, 0.681547,
		0.787239, 0.266628, -0.556025,
		0.038393, 0.878747, 0.475741,
		46.294899, 34.894310, 35.027603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.016823, 34.372089, 34.911297>,  <46.268024, 34.279190, 34.694584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.016823, 34.372089, 34.911297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.775967, 34.590580, 35.144215>,  <46.631451, 34.721676, 35.283966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.775967, 34.590580, 35.144215>,  <47.016823, 34.372089, 34.911297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.775967, 34.590580, 35.144215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359281, -0.465925, 0.808598,
		0.712980, 0.696097, 0.084305,
		-0.602143, 0.546226, 0.582290,
		46.595325, 34.754448, 35.318901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.388840, 34.494469, 35.523109>,  <47.016823, 34.372089, 34.911297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.388840, 34.494469, 35.523109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998013, 34.508282, 35.607159>,  <46.763515, 34.516571, 35.657589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998013, 34.508282, 35.607159>,  <47.388840, 34.494469, 35.523109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.998013, 34.508282, 35.607159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130375, -0.683178, 0.718519,
		0.168365, 0.729434, 0.663007,
		-0.977065, 0.034534, 0.210124,
		46.704895, 34.518642, 35.670197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.832905, 34.464676, 34.946522>,  <47.388840, 34.494469, 35.523109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.832905, 34.464676, 34.946522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.607117, 34.792450, 34.906719>,  <47.471645, 34.989113, 34.882839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.607117, 34.792450, 34.906719>,  <47.832905, 34.464676, 34.946522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.607117, 34.792450, 34.906719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822276, -0.547633, 0.154791,
		0.072347, 0.169197, 0.982923,
		-0.564472, 0.819433, -0.099507,
		47.437775, 35.038280, 34.876865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.880592, 40.528255, 25.801409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972389, 40.780453, 26.098007>,  <39.027466, 40.931770, 26.275967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.972389, 40.780453, 26.098007>,  <38.880592, 40.528255, 25.801409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972389, 40.780453, 26.098007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238822, -0.702063, 0.670874,
		0.943557, -0.331043, -0.010541,
		0.229489, 0.630490, 0.741496,
		39.041237, 40.969601, 26.320456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176945, 40.144154, 26.333767>,  <38.880592, 40.528255, 25.801409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176945, 40.144154, 26.333767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.068733, 40.481934, 26.518686>,  <39.003807, 40.684601, 26.629639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.068733, 40.481934, 26.518686>,  <39.176945, 40.144154, 26.333767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068733, 40.481934, 26.518686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433842, -0.535616, 0.724497,
		0.859416, -0.004570, 0.511256,
		-0.270526, 0.844449, 0.462300,
		38.987576, 40.735268, 26.657377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385494, 40.080376, 27.120277>,  <39.176945, 40.144154, 26.333767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385494, 40.080376, 27.120277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.107685, 40.365223, 27.079258>,  <38.940998, 40.536133, 27.054646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.107685, 40.365223, 27.079258>,  <39.385494, 40.080376, 27.120277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107685, 40.365223, 27.079258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409367, -0.273930, 0.870276,
		0.591650, 0.646411, 0.481771,
		-0.694528, 0.712120, -0.102548,
		38.899326, 40.578857, 27.048494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361729, 40.345112, 27.800812>,  <39.385494, 40.080376, 27.120277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361729, 40.345112, 27.800812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.020119, 40.462429, 27.628941>,  <38.815151, 40.532818, 27.525818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.020119, 40.462429, 27.628941>,  <39.361729, 40.345112, 27.800812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020119, 40.462429, 27.628941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516729, -0.382528, 0.765940,
		0.060278, 0.876158, 0.478240,
		-0.854024, 0.293290, -0.429678,
		38.763912, 40.550415, 27.500036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951855, 40.789780, 28.302029>,  <39.361729, 40.345112, 27.800812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951855, 40.789780, 28.302029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.686012, 40.632172, 28.048084>,  <38.526508, 40.537605, 27.895718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.686012, 40.632172, 28.048084>,  <38.951855, 40.789780, 28.302029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686012, 40.632172, 28.048084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462979, -0.449740, 0.763796,
		-0.586475, 0.801549, 0.116475,
		-0.664603, -0.394022, -0.634862,
		38.486629, 40.513966, 27.857626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294666, 41.027077, 28.581741>,  <38.951855, 40.789780, 28.302029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294666, 41.027077, 28.581741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228638, 40.710812, 28.345909>,  <38.189018, 40.521053, 28.204411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228638, 40.710812, 28.345909>,  <38.294666, 41.027077, 28.581741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228638, 40.710812, 28.345909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790647, -0.251268, 0.558338,
		-0.589599, 0.558316, -0.583658,
		-0.165074, -0.790663, -0.589578,
		38.179115, 40.473614, 28.169035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542820, 40.901108, 28.535074>,  <38.294666, 41.027077, 28.581741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542820, 40.901108, 28.535074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704975, 40.548504, 28.438242>,  <37.802269, 40.336941, 28.380142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704975, 40.548504, 28.438242>,  <37.542820, 40.901108, 28.535074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704975, 40.548504, 28.438242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682299, -0.468012, 0.561633,
		-0.608381, -0.062509, -0.791180,
		0.405389, -0.881508, -0.242080,
		37.826591, 40.284050, 28.365618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956474, 40.472237, 28.365747>,  <37.542820, 40.901108, 28.535074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956474, 40.472237, 28.365747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246365, 40.200977, 28.414555>,  <37.420300, 40.038219, 28.443840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246365, 40.200977, 28.414555>,  <36.956474, 40.472237, 28.365747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246365, 40.200977, 28.414555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594684, -0.526147, 0.607882,
		-0.348035, -0.513109, -0.784596,
		0.724722, -0.678151, 0.122020,
		37.463779, 39.997532, 28.451160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597515, 39.886696, 28.217312>,  <36.956474, 40.472237, 28.365747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597515, 39.886696, 28.217312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924397, 39.836914, 28.442413>,  <37.120525, 39.807045, 28.577475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924397, 39.836914, 28.442413>,  <36.597515, 39.886696, 28.217312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924397, 39.836914, 28.442413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476140, -0.695973, 0.537506,
		0.324763, -0.707200, -0.628010,
		0.817202, -0.124458, 0.562752,
		37.169556, 39.799576, 28.611238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677830, 39.199699, 28.305359>,  <36.597515, 39.886696, 28.217312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677830, 39.199699, 28.305359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884117, 39.346855, 28.614861>,  <37.007889, 39.435150, 28.800562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884117, 39.346855, 28.614861>,  <36.677830, 39.199699, 28.305359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884117, 39.346855, 28.614861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372507, -0.717007, 0.589186,
		0.771542, -0.592080, -0.232730,
		0.515715, 0.367888, 0.773755,
		37.038830, 39.457222, 28.846987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086540, 38.707008, 28.616539>,  <36.677830, 39.199699, 28.305359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086540, 38.707008, 28.616539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957447, 38.966625, 28.892101>,  <36.879990, 39.122395, 29.057438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957447, 38.966625, 28.892101>,  <37.086540, 38.707008, 28.616539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957447, 38.966625, 28.892101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423603, -0.749936, 0.508091,
		0.846406, -0.127843, 0.516966,
		-0.322735, 0.649040, 0.688905,
		36.860626, 39.161339, 29.098772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237968, 38.360142, 29.259787>,  <37.086540, 38.707008, 28.616539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237968, 38.360142, 29.259787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980682, 38.645901, 29.370003>,  <36.826313, 38.817356, 29.436132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980682, 38.645901, 29.370003>,  <37.237968, 38.360142, 29.259787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980682, 38.645901, 29.370003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470605, -0.652708, 0.593720,
		0.603996, 0.252217, 0.756026,
		-0.643210, 0.714394, 0.275538,
		36.787720, 38.860218, 29.452663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197983, 38.414410, 30.048641>,  <37.237968, 38.360142, 29.259787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197983, 38.414410, 30.048641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856541, 38.566795, 29.906525>,  <36.651676, 38.658226, 29.821255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856541, 38.566795, 29.906525>,  <37.197983, 38.414410, 30.048641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856541, 38.566795, 29.906525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520838, -0.611589, 0.595556,
		0.009592, 0.693417, 0.720473,
		-0.853602, 0.380962, -0.355292,
		36.600460, 38.681084, 29.799936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896767, 38.733231, 30.642511>,  <37.197983, 38.414410, 30.048641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896767, 38.733231, 30.642511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620663, 38.643402, 30.367382>,  <36.454998, 38.589504, 30.202305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620663, 38.643402, 30.367382>,  <36.896767, 38.733231, 30.642511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620663, 38.643402, 30.367382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401397, -0.672072, 0.622253,
		-0.602010, 0.705609, 0.373764,
		-0.690264, -0.224575, -0.687824,
		36.413582, 38.576031, 30.161036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277321, 38.635433, 31.063711>,  <36.896767, 38.733231, 30.642511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277321, 38.635433, 31.063711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196686, 38.460850, 30.712971>,  <36.148304, 38.356098, 30.502527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196686, 38.460850, 30.712971>,  <36.277321, 38.635433, 31.063711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196686, 38.460850, 30.712971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557768, -0.684740, 0.469068,
		-0.805143, 0.583639, -0.105406,
		-0.201590, -0.436459, -0.876849,
		36.136208, 38.329910, 30.449917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545258, 38.545853, 31.037106>,  <36.277321, 38.635433, 31.063711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545258, 38.545853, 31.037106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684475, 38.280045, 30.772596>,  <35.768005, 38.120560, 30.613892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684475, 38.280045, 30.772596>,  <35.545258, 38.545853, 31.037106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684475, 38.280045, 30.772596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568618, -0.710446, 0.414656,
		-0.745345, 0.231694, -0.625123,
		0.348044, -0.664518, -0.661273,
		35.788887, 38.080688, 30.574215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962002, 38.148716, 30.949196>,  <35.545258, 38.545853, 31.037106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962002, 38.148716, 30.949196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.246548, 37.931576, 30.770636>,  <35.417274, 37.801292, 30.663500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.246548, 37.931576, 30.770636>,  <34.962002, 38.148716, 30.949196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246548, 37.931576, 30.770636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469459, -0.839690, 0.272999,
		-0.523036, 0.015365, -0.852172,
		0.711366, -0.542848, -0.446401,
		35.459957, 37.768723, 30.636715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644131, 37.849167, 30.428976>,  <34.962002, 38.148716, 30.949196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644131, 37.849167, 30.428976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956467, 37.631996, 30.552599>,  <35.143867, 37.501694, 30.626774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956467, 37.631996, 30.552599>,  <34.644131, 37.849167, 30.428976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956467, 37.631996, 30.552599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604389, -0.781708, 0.153773,
		0.158106, -0.306865, -0.938529,
		0.780843, -0.542924, 0.309058,
		35.190720, 37.469120, 30.645317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499966, 37.082207, 30.293335>,  <34.644131, 37.849167, 30.428976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499966, 37.082207, 30.293335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.808365, 37.084499, 30.548061>,  <34.993404, 37.085876, 30.700897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.808365, 37.084499, 30.548061>,  <34.499966, 37.082207, 30.293335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808365, 37.084499, 30.548061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373615, -0.805721, 0.459592,
		0.515734, -0.592267, -0.619063,
		0.770993, 0.005736, 0.636817,
		35.039661, 37.086220, 30.739107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600361, 36.439827, 30.309402>,  <34.499966, 37.082207, 30.293335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600361, 36.439827, 30.309402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770153, 36.597580, 30.635416>,  <34.872028, 36.692230, 30.831024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770153, 36.597580, 30.635416>,  <34.600361, 36.439827, 30.309402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770153, 36.597580, 30.635416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454061, -0.686067, 0.568454,
		0.783356, -0.611373, -0.112149,
		0.424479, 0.394379, 0.815036,
		34.897495, 36.715893, 30.879927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961796, 35.840710, 30.740440>,  <34.600361, 36.439827, 30.309402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961796, 35.840710, 30.740440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.880386, 36.150524, 30.979996>,  <34.831543, 36.336414, 31.123730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.880386, 36.150524, 30.979996>,  <34.961796, 35.840710, 30.740440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880386, 36.150524, 30.979996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292408, -0.631859, 0.717810,
		0.934386, -0.029032, 0.355077,
		-0.203519, 0.774539, 0.598890,
		34.819332, 36.382885, 31.159662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540028, 35.564911, 31.172611>,  <34.961796, 35.840710, 30.740440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540028, 35.564911, 31.172611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671799, 35.188511, 31.141649>,  <35.750862, 34.962669, 31.123072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671799, 35.188511, 31.141649>,  <35.540028, 35.564911, 31.172611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671799, 35.188511, 31.141649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709161, 0.300718, -0.637698,
		0.623353, 0.155182, 0.766387,
		0.329426, -0.941003, -0.077405,
		35.770626, 34.906212, 31.118427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272663, 35.605801, 31.199474>,  <35.540028, 35.564911, 31.172611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272663, 35.605801, 31.199474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182041, 35.249836, 31.041113>,  <36.127666, 35.036259, 30.946096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182041, 35.249836, 31.041113>,  <36.272663, 35.605801, 31.199474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182041, 35.249836, 31.041113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753050, 0.097754, -0.650661,
		0.617729, -0.445544, 0.647998,
		-0.226553, -0.889907, -0.395903,
		36.114075, 34.982864, 30.922342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857780, 35.241348, 31.322599>,  <36.272663, 35.605801, 31.199474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857780, 35.241348, 31.322599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654354, 35.086563, 31.014933>,  <36.532299, 34.993694, 30.830332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654354, 35.086563, 31.014933>,  <36.857780, 35.241348, 31.322599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654354, 35.086563, 31.014933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801096, 0.114781, -0.587427,
		0.315596, -0.914925, 0.251617,
		-0.508571, -0.386959, -0.769167,
		36.501781, 34.970474, 30.784182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398506, 34.957504, 30.889816>,  <36.857780, 35.241348, 31.322599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398506, 34.957504, 30.889816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077938, 34.954758, 30.650593>,  <36.885597, 34.953110, 30.507059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077938, 34.954758, 30.650593>,  <37.398506, 34.957504, 30.889816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077938, 34.954758, 30.650593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572621, 0.279922, -0.770551,
		0.172697, -0.959998, -0.220407,
		-0.801424, -0.006862, -0.598057,
		36.837509, 34.952698, 30.471176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565598, 34.413719, 30.288412>,  <37.398506, 34.957504, 30.889816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565598, 34.413719, 30.288412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293907, 34.681301, 30.167648>,  <37.130894, 34.841850, 30.095190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293907, 34.681301, 30.167648>,  <37.565598, 34.413719, 30.288412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293907, 34.681301, 30.167648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504730, 0.127117, -0.853867,
		-0.532820, -0.732353, -0.423983,
		-0.679228, 0.668955, -0.301910,
		37.090137, 34.881989, 30.077076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469311, 34.343811, 29.507093>,  <37.565598, 34.413719, 30.288412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469311, 34.343811, 29.507093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.333187, 34.708149, 29.600521>,  <37.251511, 34.926750, 29.656578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.333187, 34.708149, 29.600521>,  <37.469311, 34.343811, 29.507093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333187, 34.708149, 29.600521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309252, 0.342993, -0.886972,
		-0.888004, -0.229614, -0.398404,
		-0.340311, 0.910842, 0.233571,
		37.231094, 34.981403, 29.670593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056614, 34.553631, 28.921812>,  <37.469311, 34.343811, 29.507093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056614, 34.553631, 28.921812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192928, 34.862164, 29.136814>,  <37.274715, 35.047283, 29.265816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.192928, 34.862164, 29.136814>,  <37.056614, 34.553631, 28.921812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192928, 34.862164, 29.136814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388892, 0.404867, -0.827554,
		-0.855936, 0.491052, -0.161991,
		0.340787, 0.771331, 0.537507,
		37.295166, 35.093563, 29.298065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793209, 35.018627, 28.526623>,  <37.056614, 34.553631, 28.921812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793209, 35.018627, 28.526623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.069721, 35.205574, 28.747059>,  <37.235630, 35.317741, 28.879320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.069721, 35.205574, 28.747059>,  <36.793209, 35.018627, 28.526623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069721, 35.205574, 28.747059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378103, 0.415958, -0.827053,
		-0.615769, 0.780093, 0.110830,
		0.691279, 0.467368, 0.551090,
		37.277103, 35.345783, 28.912386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712406, 35.787098, 28.359915>,  <36.793209, 35.018627, 28.526623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712406, 35.787098, 28.359915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071709, 35.681335, 28.500324>,  <37.287292, 35.617878, 28.584570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071709, 35.681335, 28.500324>,  <36.712406, 35.787098, 28.359915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071709, 35.681335, 28.500324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431900, 0.383565, -0.816297,
		0.081194, 0.884854, 0.458738,
		0.898259, -0.264408, 0.351025,
		37.341187, 35.602013, 28.605631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126781, 36.373901, 28.068954>,  <36.712406, 35.787098, 28.359915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126781, 36.373901, 28.068954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.414703, 36.132061, 28.205391>,  <37.587456, 35.986958, 28.287252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.414703, 36.132061, 28.205391>,  <37.126781, 36.373901, 28.068954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414703, 36.132061, 28.205391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658063, 0.437883, -0.612546,
		0.220984, 0.665374, 0.713052,
		0.719805, -0.604596, 0.341092,
		37.630646, 35.950684, 28.307718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628426, 36.835945, 28.207401>,  <37.126781, 36.373901, 28.068954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628426, 36.835945, 28.207401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814156, 36.487030, 28.146057>,  <37.925594, 36.277679, 28.109251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814156, 36.487030, 28.146057>,  <37.628426, 36.835945, 28.207401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814156, 36.487030, 28.146057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717454, 0.471981, -0.512340,
		0.519290, 0.127865, 0.844978,
		0.464324, -0.872287, -0.153358,
		37.953453, 36.225346, 28.100050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377613, 36.989468, 28.340002>,  <37.628426, 36.835945, 28.207401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377613, 36.989468, 28.340002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303333, 36.689075, 28.086535>,  <38.258766, 36.508839, 27.934454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303333, 36.689075, 28.086535>,  <38.377613, 36.989468, 28.340002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303333, 36.689075, 28.086535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489847, 0.488287, -0.722237,
		0.851801, -0.444521, 0.277193,
		-0.185700, -0.750984, -0.633670,
		38.247623, 36.463779, 27.896433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028831, 36.759117, 28.007187>,  <38.377613, 36.989468, 28.340002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028831, 36.759117, 28.007187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740704, 36.642872, 27.755259>,  <38.567825, 36.573124, 27.604101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740704, 36.642872, 27.755259>,  <39.028831, 36.759117, 28.007187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740704, 36.642872, 27.755259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532174, 0.350831, -0.770525,
		0.444889, -0.890202, -0.098054,
		-0.720323, -0.290616, -0.629823,
		38.524605, 36.555687, 27.566311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436676, 36.619102, 27.391474>,  <39.028831, 36.759117, 28.007187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436676, 36.619102, 27.391474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.058945, 36.636436, 27.261023>,  <38.832306, 36.646835, 27.182753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.058945, 36.636436, 27.261023>,  <39.436676, 36.619102, 27.391474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058945, 36.636436, 27.261023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328905, 0.147258, -0.932811,
		0.007602, -0.988148, -0.153314,
		-0.944332, 0.043334, -0.326126,
		38.775646, 36.649437, 27.163185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494343, 36.410515, 26.712439>,  <39.436676, 36.619102, 27.391474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494343, 36.410515, 26.712439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.153072, 36.618889, 26.723167>,  <38.948311, 36.743912, 26.729605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.153072, 36.618889, 26.723167>,  <39.494343, 36.410515, 26.712439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153072, 36.618889, 26.723167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293201, 0.521464, -0.801317,
		-0.431418, -0.675801, -0.597639,
		-0.853177, 0.520931, 0.026823,
		38.897118, 36.775169, 26.731215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271542, 36.436523, 26.024956>,  <39.494343, 36.410515, 26.712439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271542, 36.436523, 26.024956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.073090, 36.736862, 26.199352>,  <38.954018, 36.917065, 26.303989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.073090, 36.736862, 26.199352>,  <39.271542, 36.436523, 26.024956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073090, 36.736862, 26.199352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165707, 0.574805, -0.801337,
		-0.852288, -0.325322, -0.409598,
		-0.496131, 0.750843, 0.435991,
		38.924252, 36.962116, 26.330151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113796, 36.744572, 25.431662>,  <39.271542, 36.436523, 26.024956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113796, 36.744572, 25.431662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.992321, 37.006229, 25.708752>,  <38.919437, 37.163223, 25.875006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.992321, 37.006229, 25.708752>,  <39.113796, 36.744572, 25.431662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992321, 37.006229, 25.708752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117707, 0.695733, -0.708591,
		-0.945474, -0.296726, -0.134285,
		-0.303684, 0.654148, 0.692724,
		38.901215, 37.202473, 25.916569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483307, 37.105125, 25.097761>,  <39.113796, 36.744572, 25.431662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483307, 37.105125, 25.097761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.665234, 37.335735, 25.369278>,  <38.774391, 37.474102, 25.532188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.665234, 37.335735, 25.369278>,  <38.483307, 37.105125, 25.097761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665234, 37.335735, 25.369278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074182, 0.735010, -0.673986,
		-0.887490, 0.356894, 0.291527,
		0.454817, 0.576529, 0.678790,
		38.801678, 37.508694, 25.572914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276802, 37.711964, 24.933058>,  <38.483307, 37.105125, 25.097761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276802, 37.711964, 24.933058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568821, 37.798252, 25.192442>,  <38.744030, 37.850025, 25.348072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568821, 37.798252, 25.192442>,  <38.276802, 37.711964, 24.933058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568821, 37.798252, 25.192442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023298, 0.940465, -0.339091,
		-0.683004, 0.262659, 0.681553,
		0.730042, 0.215722, 0.648461,
		38.787834, 37.862968, 25.386980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.196732, 38.795616, 25.315470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.548134, 38.607254, 25.347664>,  <38.758976, 38.494236, 25.366982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.548134, 38.607254, 25.347664>,  <38.196732, 38.795616, 25.315470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548134, 38.607254, 25.347664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467163, 0.811522, -0.350984,
		0.099965, 0.345941, 0.932916,
		0.878502, -0.470910, 0.080488,
		38.811684, 38.465981, 25.371811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601639, 39.289223, 25.625259>,  <38.196732, 38.795616, 25.315470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601639, 39.289223, 25.625259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.855347, 39.039383, 25.443020>,  <39.007572, 38.889481, 25.333675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.855347, 39.039383, 25.443020>,  <38.601639, 39.289223, 25.625259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855347, 39.039383, 25.443020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450650, 0.777539, -0.438576,
		0.628181, 0.072862, 0.774648,
		0.634274, -0.624600, -0.455600,
		39.045628, 38.852001, 25.306339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334496, 39.503948, 25.671797>,  <38.601639, 39.289223, 25.625259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334496, 39.503948, 25.671797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354153, 39.266968, 25.350155>,  <39.365948, 39.124779, 25.157169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354153, 39.266968, 25.350155>,  <39.334496, 39.503948, 25.671797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354153, 39.266968, 25.350155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433746, 0.737861, -0.517133,
		0.899694, -0.323362, 0.293236,
		0.049146, -0.592451, -0.804106,
		39.368896, 39.089233, 25.108923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951736, 39.605068, 25.461323>,  <39.334496, 39.503948, 25.671797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951736, 39.605068, 25.461323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.763386, 39.480743, 25.131067>,  <39.650375, 39.406151, 24.932915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.763386, 39.480743, 25.131067>,  <39.951736, 39.605068, 25.461323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763386, 39.480743, 25.131067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458737, 0.713141, -0.530085,
		0.753553, -0.628351, -0.193217,
		-0.470870, -0.310812, -0.825637,
		39.622124, 39.387501, 24.883377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434830, 39.507660, 24.996441>,  <39.951736, 39.605068, 25.461323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434830, 39.507660, 24.996441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.104862, 39.546650, 24.773726>,  <39.906883, 39.570042, 24.640097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.104862, 39.546650, 24.773726>,  <40.434830, 39.507660, 24.996441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104862, 39.546650, 24.773726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386533, 0.815993, -0.429823,
		0.412438, -0.569785, -0.710803,
		-0.824916, 0.097473, -0.556787,
		39.857388, 39.575893, 24.606689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689243, 39.586994, 24.440750>,  <40.434830, 39.507660, 24.996441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689243, 39.586994, 24.440750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.315113, 39.721569, 24.396986>,  <40.090633, 39.802315, 24.370728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.315113, 39.721569, 24.396986>,  <40.689243, 39.586994, 24.440750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315113, 39.721569, 24.396986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340392, 0.771541, -0.537455,
		-0.096405, -0.539940, -0.836165,
		-0.935328, 0.336437, -0.109411,
		40.034515, 39.822498, 24.364162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596252, 39.645252, 23.679258>,  <40.689243, 39.586994, 24.440750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596252, 39.645252, 23.679258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.345577, 39.890587, 23.871542>,  <40.195171, 40.037788, 23.986912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.345577, 39.890587, 23.871542>,  <40.596252, 39.645252, 23.679258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345577, 39.890587, 23.871542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411033, 0.784250, -0.464762,
		-0.662050, -0.093675, -0.743582,
		-0.626691, 0.613333, 0.480709,
		40.157570, 40.074585, 24.015755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487785, 40.082146, 23.078886>,  <40.596252, 39.645252, 23.679258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487785, 40.082146, 23.078886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.326271, 40.281971, 23.385452>,  <40.229362, 40.401867, 23.569391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.326271, 40.281971, 23.385452>,  <40.487785, 40.082146, 23.078886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326271, 40.281971, 23.385452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194457, 0.865472, -0.461677,
		-0.893946, -0.037386, -0.446612,
		-0.403790, 0.499561, 0.766415,
		40.205135, 40.431839, 23.615377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965542, 40.410767, 22.847246>,  <40.487785, 40.082146, 23.078886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965542, 40.410767, 22.847246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.098896, 40.596375, 23.175524>,  <40.178909, 40.707737, 23.372490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.098896, 40.596375, 23.175524>,  <39.965542, 40.410767, 22.847246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098896, 40.596375, 23.175524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285677, 0.779851, -0.556974,
		-0.898465, 0.420143, 0.127435,
		0.333389, 0.464017, 0.820695,
		40.198914, 40.735580, 23.421732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651943, 41.222980, 22.840624>,  <39.965542, 40.410767, 22.847246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651943, 41.222980, 22.840624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.994610, 41.200928, 23.045788>,  <40.200211, 41.187695, 23.168886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.994610, 41.200928, 23.045788>,  <39.651943, 41.222980, 22.840624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994610, 41.200928, 23.045788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364247, 0.768714, -0.525741,
		-0.365296, 0.637213, 0.678615,
		0.856670, -0.055132, 0.512911,
		40.251610, 41.184387, 23.199661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862286, 41.956543, 22.967083>,  <39.651943, 41.222980, 22.840624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862286, 41.956543, 22.967083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.184925, 41.726788, 23.022902>,  <40.378510, 41.588932, 23.056393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.184925, 41.726788, 23.022902>,  <39.862286, 41.956543, 22.967083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184925, 41.726788, 23.022902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578281, 0.717900, -0.387571,
		0.122438, 0.393311, 0.911217,
		0.806598, -0.574392, 0.139546,
		40.426903, 41.554470, 23.064766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387302, 42.425545, 23.192844>,  <39.862286, 41.956543, 22.967083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387302, 42.425545, 23.192844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.596348, 42.094006, 23.112959>,  <40.721775, 41.895081, 23.065027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.596348, 42.094006, 23.112959>,  <40.387302, 42.425545, 23.192844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596348, 42.094006, 23.112959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779455, 0.559409, -0.281977,
		0.345437, -0.008302, 0.938405,
		0.522611, -0.828850, -0.199712,
		40.753132, 41.845352, 23.053045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010147, 42.463646, 23.560768>,  <40.387302, 42.425545, 23.192844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010147, 42.463646, 23.560768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.069500, 42.199444, 23.266363>,  <41.105110, 42.040924, 23.089720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.069500, 42.199444, 23.266363>,  <41.010147, 42.463646, 23.560768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069500, 42.199444, 23.266363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854579, 0.460179, -0.240684,
		0.497671, -0.593269, 0.632736,
		0.148381, -0.660505, -0.736014,
		41.114014, 42.001293, 23.045559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692444, 42.386955, 23.603291>,  <41.010147, 42.463646, 23.560768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692444, 42.386955, 23.603291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.595360, 42.260548, 23.236418>,  <41.537109, 42.184704, 23.016294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.595360, 42.260548, 23.236418>,  <41.692444, 42.386955, 23.603291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595360, 42.260548, 23.236418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749796, 0.538796, -0.384065,
		0.615546, -0.780916, 0.106179,
		-0.242714, -0.316022, -0.917181,
		41.522545, 42.165741, 22.961264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381054, 42.308395, 23.289776>,  <41.692444, 42.386955, 23.603291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381054, 42.308395, 23.289776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.131981, 42.257084, 22.981020>,  <41.982536, 42.226299, 22.795767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.131981, 42.257084, 22.981020>,  <42.381054, 42.308395, 23.289776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131981, 42.257084, 22.981020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751250, 0.177897, -0.635591,
		0.218847, -0.975653, -0.014406,
		-0.622679, -0.128275, -0.771892,
		41.945179, 42.218601, 22.749453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739742, 41.891754, 22.861479>,  <42.381054, 42.308395, 23.289776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739742, 41.891754, 22.861479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.463856, 42.090748, 22.651031>,  <42.298325, 42.210144, 22.524763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.463856, 42.090748, 22.651031>,  <42.739742, 41.891754, 22.861479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463856, 42.090748, 22.651031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681377, 0.200101, -0.704048,
		-0.244972, -0.844082, -0.476985,
		-0.689720, 0.497479, -0.526119,
		42.256939, 42.239990, 22.493196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836777, 41.847500, 22.120733>,  <42.739742, 41.891754, 22.861479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836777, 41.847500, 22.120733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.624748, 42.186138, 22.139914>,  <42.497532, 42.389320, 22.151423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.624748, 42.186138, 22.139914>,  <42.836777, 41.847500, 22.120733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624748, 42.186138, 22.139914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411529, 0.306287, -0.858389,
		-0.741396, -0.435274, -0.510753,
		-0.530072, 0.846596, 0.047952,
		42.465725, 42.440117, 22.154299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710228, 42.022926, 21.388508>,  <42.836777, 41.847500, 22.120733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710228, 42.022926, 21.388508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.657017, 42.360641, 21.596151>,  <42.625092, 42.563271, 21.720737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.657017, 42.360641, 21.596151>,  <42.710228, 42.022926, 21.388508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657017, 42.360641, 21.596151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409261, 0.523819, -0.747074,
		-0.902668, 0.113073, -0.415217,
		-0.133025, 0.844292, 0.519111,
		42.617111, 42.613930, 21.751884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489876, 42.465359, 20.889643>,  <42.710228, 42.022926, 21.388508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489876, 42.465359, 20.889643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.634010, 42.699417, 21.180231>,  <42.720490, 42.839851, 21.354584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.634010, 42.699417, 21.180231>,  <42.489876, 42.465359, 20.889643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634010, 42.699417, 21.180231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541449, 0.502972, -0.673686,
		-0.759600, 0.636100, -0.135589,
		0.360334, 0.585146, 0.726473,
		42.742111, 42.874962, 21.398172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486729, 43.131496, 20.678530>,  <42.489876, 42.465359, 20.889643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486729, 43.131496, 20.678530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.762680, 43.135212, 20.968075>,  <42.928253, 43.137440, 21.141802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.762680, 43.135212, 20.968075>,  <42.486729, 43.131496, 20.678530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762680, 43.135212, 20.968075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685136, 0.314534, -0.657006,
		-0.233782, 0.949201, 0.210628,
		0.689880, 0.009287, 0.723864,
		42.969643, 43.137997, 21.185234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888153, 43.796440, 20.609098>,  <42.486729, 43.131496, 20.678530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888153, 43.796440, 20.609098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.118950, 43.558773, 20.833260>,  <43.257427, 43.416172, 20.967756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.118950, 43.558773, 20.833260>,  <42.888153, 43.796440, 20.609098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118950, 43.558773, 20.833260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812493, 0.347576, -0.468024,
		0.083300, 0.725368, 0.683302,
		0.576989, -0.594164, 0.560404,
		43.292046, 43.380524, 21.001381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305256, 44.239250, 20.343746>,  <42.888153, 43.796440, 20.609098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305256, 44.239250, 20.343746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.335522, 44.226032, 20.742380>,  <42.353683, 44.218102, 20.981560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.335522, 44.226032, 20.742380>,  <42.305256, 44.239250, 20.343746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335522, 44.226032, 20.742380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532432, 0.846382, -0.012364,
		-0.843084, 0.531550, 0.081636,
		0.075668, -0.033041, 0.996585,
		42.358223, 44.216118, 21.041355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041504, 44.877918, 20.785475>,  <42.305256, 44.239250, 20.343746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041504, 44.877918, 20.785475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.342999, 44.670013, 20.946339>,  <42.523895, 44.545269, 21.042858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.342999, 44.670013, 20.946339>,  <42.041504, 44.877918, 20.785475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342999, 44.670013, 20.946339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592190, 0.802512, -0.072705,
		-0.284950, 0.292956, 0.912678,
		0.753734, -0.519762, 0.402161,
		42.569118, 44.514084, 21.066986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470505, 45.306763, 21.279030>,  <42.041504, 44.877918, 20.785475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470505, 45.306763, 21.279030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.730118, 45.022659, 21.170006>,  <42.885883, 44.852196, 21.104591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.730118, 45.022659, 21.170006>,  <42.470505, 45.306763, 21.279030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730118, 45.022659, 21.170006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729444, 0.682740, -0.042167,
		0.216036, -0.171448, 0.961215,
		0.649030, -0.710262, -0.272558,
		42.924828, 44.809582, 21.088238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047722, 45.814774, 21.501825>,  <42.470505, 45.306763, 21.279030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047722, 45.814774, 21.501825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.821430, 46.141655, 21.457777>,  <42.685654, 46.337784, 21.431349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.821430, 46.141655, 21.457777>,  <43.047722, 45.814774, 21.501825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821430, 46.141655, 21.457777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823707, -0.553882, 0.121328,
		0.038156, 0.159346, 0.986485,
		-0.565730, 0.817205, -0.110121,
		42.651711, 46.386818, 21.424740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614735, 45.605091, 22.085274>,  <43.047722, 45.814774, 21.501825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614735, 45.605091, 22.085274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.411888, 45.918983, 22.227839>,  <42.290180, 46.107319, 22.313377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.411888, 45.918983, 22.227839>,  <42.614735, 45.605091, 22.085274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411888, 45.918983, 22.227839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252429, -0.530625, 0.809145,
		0.824082, 0.320363, 0.467178,
		-0.507117, 0.784732, 0.356410,
		42.259754, 46.154404, 22.334761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909294, 45.731613, 22.700230>,  <42.614735, 45.605091, 22.085274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909294, 45.731613, 22.700230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.551006, 45.906281, 22.733732>,  <42.336033, 46.011082, 22.753834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.551006, 45.906281, 22.733732>,  <42.909294, 45.731613, 22.700230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551006, 45.906281, 22.733732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173940, -0.517498, 0.837819,
		0.409190, 0.735880, 0.539485,
		-0.895717, 0.436665, 0.083756,
		42.282291, 46.037281, 22.758860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821598, 45.899120, 23.401087>,  <42.909294, 45.731613, 22.700230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821598, 45.899120, 23.401087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.456753, 45.864006, 23.240911>,  <42.237846, 45.842937, 23.144806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.456753, 45.864006, 23.240911>,  <42.821598, 45.899120, 23.401087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456753, 45.864006, 23.240911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308997, -0.494704, 0.812273,
		-0.269403, 0.864616, 0.424099,
		-0.912109, -0.087784, -0.400439,
		42.183121, 45.837669, 23.120779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431179, 45.920700, 23.971491>,  <42.821598, 45.899120, 23.401087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431179, 45.920700, 23.971491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.185123, 45.783836, 23.687370>,  <42.037491, 45.701717, 23.516899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.185123, 45.783836, 23.687370>,  <42.431179, 45.920700, 23.971491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185123, 45.783836, 23.687370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445512, -0.592443, 0.671216,
		-0.650476, 0.729340, 0.211999,
		-0.615142, -0.342162, -0.710300,
		42.000580, 45.681187, 23.474281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835926, 46.074711, 24.278811>,  <42.431179, 45.920700, 23.971491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835926, 46.074711, 24.278811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.765182, 45.794998, 24.001762>,  <41.722736, 45.627171, 23.835533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.765182, 45.794998, 24.001762>,  <41.835926, 46.074711, 24.278811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765182, 45.794998, 24.001762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399717, -0.592039, 0.699798,
		-0.899415, 0.400619, -0.174807,
		-0.176860, -0.699282, -0.692622,
		41.712124, 45.585213, 23.793976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213501, 45.790092, 24.438795>,  <41.835926, 46.074711, 24.278811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213501, 45.790092, 24.438795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.394199, 45.521687, 24.203623>,  <41.502621, 45.360641, 24.062519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.394199, 45.521687, 24.203623>,  <41.213501, 45.790092, 24.438795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394199, 45.521687, 24.203623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341146, -0.738849, 0.581139,
		-0.824345, -0.061957, -0.562687,
		0.451746, -0.671017, -0.587930,
		41.529724, 45.320381, 24.027245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816944, 45.230473, 24.417719>,  <41.213501, 45.790092, 24.438795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816944, 45.230473, 24.417719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.149849, 45.060844, 24.274883>,  <41.349590, 44.959068, 24.189182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.149849, 45.060844, 24.274883>,  <40.816944, 45.230473, 24.417719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149849, 45.060844, 24.274883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281441, -0.878127, 0.386891,
		-0.477638, -0.221494, -0.850178,
		0.832258, -0.424068, -0.357090,
		41.399525, 44.933624, 24.167757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677254, 44.724018, 23.944271>,  <40.816944, 45.230473, 24.417719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677254, 44.724018, 23.944271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.047703, 44.623550, 24.056847>,  <41.269974, 44.563271, 24.124392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.047703, 44.623550, 24.056847>,  <40.677254, 44.724018, 23.944271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047703, 44.623550, 24.056847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342382, -0.872862, 0.347688,
		0.158329, -0.418362, -0.894374,
		0.926124, -0.251169, 0.281439,
		41.325539, 44.548199, 24.141279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859478, 44.039608, 23.751963>,  <40.677254, 44.724018, 23.944271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859478, 44.039608, 23.751963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.080032, 44.115070, 24.077017>,  <41.212364, 44.160347, 24.272049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.080032, 44.115070, 24.077017>,  <40.859478, 44.039608, 23.751963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080032, 44.115070, 24.077017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367202, -0.819776, 0.439466,
		0.749088, -0.540718, -0.382741,
		0.551389, 0.188655, 0.812637,
		41.245449, 44.171665, 24.320808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300312, 43.433449, 23.883087>,  <40.859478, 44.039608, 23.751963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300312, 43.433449, 23.883087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.245804, 43.625679, 24.229607>,  <41.213097, 43.741016, 24.437519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.245804, 43.625679, 24.229607>,  <41.300312, 43.433449, 23.883087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245804, 43.625679, 24.229607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166396, -0.873137, 0.458196,
		0.976597, -0.081709, 0.198951,
		-0.136273, 0.480578, 0.866299,
		41.204922, 43.769852, 24.489496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634331, 42.975269, 24.428925>,  <41.300312, 43.433449, 23.883087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634331, 42.975269, 24.428925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409672, 43.238941, 24.628939>,  <41.274876, 43.397144, 24.748947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409672, 43.238941, 24.628939>,  <41.634331, 42.975269, 24.428925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409672, 43.238941, 24.628939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215530, -0.700060, 0.680781,
		0.798812, 0.274585, 0.535258,
		-0.561645, 0.659181, 0.500035,
		41.241177, 43.436695, 24.778950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749580, 42.806000, 25.209242>,  <41.634331, 42.975269, 24.428925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749580, 42.806000, 25.209242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.405514, 42.999897, 25.145809>,  <41.199074, 43.116234, 25.107750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.405514, 42.999897, 25.145809>,  <41.749580, 42.806000, 25.209242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405514, 42.999897, 25.145809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488612, -0.694076, 0.528694,
		0.146212, 0.532247, 0.833867,
		-0.860163, 0.484739, -0.158581,
		41.147465, 43.145317, 25.098234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400696, 42.954433, 25.960196>,  <41.749580, 42.806000, 25.209242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400696, 42.954433, 25.960196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.133026, 42.959103, 25.662991>,  <40.972424, 42.961903, 25.484669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.133026, 42.959103, 25.662991>,  <41.400696, 42.954433, 25.960196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133026, 42.959103, 25.662991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472031, -0.778913, 0.412893,
		-0.573923, 0.627024, 0.526740,
		-0.669178, 0.011669, -0.743010,
		40.932274, 42.962605, 25.440088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860233, 42.660843, 26.178251>,  <41.400696, 42.954433, 25.960196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860233, 42.660843, 26.178251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.714546, 42.653831, 25.805792>,  <40.627132, 42.649624, 25.582315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.714546, 42.653831, 25.805792>,  <40.860233, 42.660843, 26.178251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714546, 42.653831, 25.805792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652761, -0.708324, 0.268664,
		-0.664266, 0.705670, 0.246539,
		-0.364217, -0.017533, -0.931149,
		40.605282, 42.648571, 25.526447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231651, 42.884830, 26.274548>,  <40.860233, 42.660843, 26.178251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231651, 42.884830, 26.274548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.228378, 42.675037, 25.933996>,  <40.226414, 42.549160, 25.729666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.228378, 42.675037, 25.933996>,  <40.231651, 42.884830, 26.274548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228378, 42.675037, 25.933996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751700, -0.558258, 0.351134,
		-0.659455, 0.642855, -0.389689,
		-0.008181, -0.524486, -0.851380,
		40.225925, 42.517693, 25.678583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591846, 42.965057, 25.987810>,  <40.231651, 42.884830, 26.274548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591846, 42.965057, 25.987810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.754425, 42.629566, 25.842846>,  <39.851971, 42.428272, 25.755867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.754425, 42.629566, 25.842846>,  <39.591846, 42.965057, 25.987810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754425, 42.629566, 25.842846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748367, -0.533155, 0.394580,
		-0.524159, 0.110828, -0.844378,
		0.406454, -0.838727, -0.362397,
		39.876358, 42.377949, 25.734123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930756, 42.491272, 25.900423>,  <39.591846, 42.965057, 25.987810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930756, 42.491272, 25.900423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.223156, 42.231674, 25.816093>,  <39.398598, 42.075916, 25.765495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.223156, 42.231674, 25.816093>,  <38.930756, 42.491272, 25.900423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223156, 42.231674, 25.816093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576706, -0.752723, 0.317520,
		-0.364759, -0.110526, -0.924519,
		0.731000, -0.648993, -0.210822,
		39.442455, 42.036976, 25.752848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629391, 41.907330, 25.604937>,  <38.930756, 42.491272, 25.900423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629391, 41.907330, 25.604937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985619, 41.815041, 25.761730>,  <39.199356, 41.759666, 25.855806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985619, 41.815041, 25.761730>,  <38.629391, 41.907330, 25.604937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985619, 41.815041, 25.761730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433764, -0.690123, 0.579292,
		0.136863, -0.685929, -0.714682,
		0.890572, -0.230720, 0.391983,
		39.252789, 41.745823, 25.879326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508751, 41.204449, 25.644442>,  <38.629391, 41.907330, 25.604937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508751, 41.204449, 25.644442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.804363, 41.285286, 25.901499>,  <38.981731, 41.333790, 26.055733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.804363, 41.285286, 25.901499>,  <38.508751, 41.204449, 25.644442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804363, 41.285286, 25.901499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282439, -0.773105, 0.567923,
		0.611603, -0.601221, -0.514271,
		0.739033, 0.202093, 0.642642,
		39.026073, 41.345913, 26.094292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.587986, 36.024891, 26.845278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.891617, 36.167076, 27.063435>,  <38.073795, 36.252388, 27.194328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.891617, 36.167076, 27.063435>,  <37.587986, 36.024891, 26.845278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891617, 36.167076, 27.063435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246912, -0.617971, 0.746422,
		0.602364, -0.701253, -0.381317,
		0.759073, 0.355466, 0.545391,
		38.119339, 36.273716, 27.227053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035419, 35.408939, 27.206656>,  <37.587986, 36.024891, 26.845278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035419, 35.408939, 27.206656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.117657, 35.736595, 27.420845>,  <38.167000, 35.933189, 27.549358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.117657, 35.736595, 27.420845>,  <38.035419, 35.408939, 27.206656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117657, 35.736595, 27.420845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046428, -0.538383, 0.841420,
		0.977535, -0.197854, -0.072658,
		0.205596, 0.819144, 0.535475,
		38.179337, 35.982338, 27.581488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586933, 35.192410, 27.715954>,  <38.035419, 35.408939, 27.206656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586933, 35.192410, 27.715954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.387878, 35.514244, 27.845572>,  <38.268448, 35.707344, 27.923342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.387878, 35.514244, 27.845572>,  <38.586933, 35.192410, 27.715954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387878, 35.514244, 27.845572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334657, -0.522756, 0.784048,
		0.800228, 0.281726, 0.529401,
		-0.497634, 0.804585, 0.324042,
		38.238586, 35.755619, 27.942783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625294, 35.141499, 28.503521>,  <38.586933, 35.192410, 27.715954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625294, 35.141499, 28.503521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.337719, 35.417625, 28.471050>,  <38.165173, 35.583302, 28.451569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.337719, 35.417625, 28.471050>,  <38.625294, 35.141499, 28.503521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337719, 35.417625, 28.471050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433061, -0.353512, 0.829148,
		0.543680, 0.631259, 0.553103,
		-0.718936, 0.690319, -0.081176,
		38.122040, 35.624722, 28.446697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480068, 35.316227, 29.144506>,  <38.625294, 35.141499, 28.503521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480068, 35.316227, 29.144506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.140259, 35.438026, 28.972187>,  <37.936371, 35.511105, 28.868795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.140259, 35.438026, 28.972187>,  <38.480068, 35.316227, 29.144506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140259, 35.438026, 28.972187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508661, -0.256244, 0.821950,
		0.139893, 0.917399, 0.372572,
		-0.849526, 0.304498, -0.430799,
		37.885403, 35.529377, 28.842947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209248, 35.930065, 29.580986>,  <38.480068, 35.316227, 29.144506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209248, 35.930065, 29.580986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.924919, 35.734612, 29.378613>,  <37.754322, 35.617340, 29.257189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.924919, 35.734612, 29.378613>,  <38.209248, 35.930065, 29.580986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924919, 35.734612, 29.378613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517616, -0.123623, 0.846635,
		-0.476240, 0.863686, -0.165051,
		-0.710823, -0.488634, -0.505932,
		37.711674, 35.588020, 29.226833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550831, 36.282600, 29.637457>,  <38.209248, 35.930065, 29.580986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550831, 36.282600, 29.637457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.465080, 35.901134, 29.553007>,  <37.413631, 35.672256, 29.502338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.465080, 35.901134, 29.553007>,  <37.550831, 36.282600, 29.637457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465080, 35.901134, 29.553007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581827, -0.048936, 0.811839,
		-0.784551, 0.296875, -0.544375,
		-0.214375, -0.953662, -0.211123,
		37.400768, 35.615036, 29.489670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728794, 36.160263, 29.813164>,  <37.550831, 36.282600, 29.637457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728794, 36.160263, 29.813164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.885067, 35.794071, 29.774679>,  <36.978832, 35.574356, 29.751589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.885067, 35.794071, 29.774679>,  <36.728794, 36.160263, 29.813164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885067, 35.794071, 29.774679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619345, -0.338743, 0.708283,
		-0.681012, -0.217127, -0.699341,
		0.390684, -0.915483, -0.096211,
		37.002274, 35.519424, 29.745815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194176, 35.681320, 29.667677>,  <36.728794, 36.160263, 29.813164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194176, 35.681320, 29.667677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475582, 35.422100, 29.784367>,  <36.644424, 35.266567, 29.854380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475582, 35.422100, 29.784367>,  <36.194176, 35.681320, 29.667677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475582, 35.422100, 29.784367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604871, -0.330504, 0.724499,
		-0.373095, -0.686150, -0.624499,
		0.703514, -0.648048, 0.291723,
		36.686638, 35.227684, 29.871883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850563, 34.993988, 29.563602>,  <36.194176, 35.681320, 29.667677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850563, 34.993988, 29.563602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.139004, 34.955437, 29.838041>,  <36.312069, 34.932308, 30.002705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.139004, 34.955437, 29.838041>,  <35.850563, 34.993988, 29.563602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139004, 34.955437, 29.838041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664445, -0.376764, 0.645416,
		0.196294, -0.921282, -0.335720,
		0.721097, -0.096376, 0.686098,
		36.355331, 34.926525, 30.043871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861664, 34.274635, 29.842045>,  <35.850563, 34.993988, 29.563602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861664, 34.274635, 29.842045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.049755, 34.497112, 30.116135>,  <36.162609, 34.630600, 30.280588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.049755, 34.497112, 30.116135>,  <35.861664, 34.274635, 29.842045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049755, 34.497112, 30.116135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517433, -0.455227, 0.724590,
		0.714944, -0.695283, 0.073730,
		0.470232, 0.556192, 0.685225,
		36.190826, 34.663971, 30.321703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742668, 33.875534, 30.390522>,  <35.861664, 34.274635, 29.842045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742668, 33.875534, 30.390522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.880192, 34.216274, 30.548578>,  <35.962708, 34.420719, 30.643412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.880192, 34.216274, 30.548578>,  <35.742668, 33.875534, 30.390522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880192, 34.216274, 30.548578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385280, -0.255777, 0.886644,
		0.856360, -0.457079, 0.240263,
		0.343813, 0.851855, 0.395140,
		35.983337, 34.471832, 30.667120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168335, 33.698536, 30.974655>,  <35.742668, 33.875534, 30.390522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168335, 33.698536, 30.974655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.024052, 34.069355, 31.015593>,  <35.937481, 34.291847, 31.040155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.024052, 34.069355, 31.015593>,  <36.168335, 33.698536, 30.974655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024052, 34.069355, 31.015593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443575, -0.267040, 0.855530,
		0.820447, 0.263196, 0.507537,
		-0.360704, 0.927048, 0.102345,
		35.915840, 34.347469, 31.046297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294453, 33.906662, 31.728258>,  <36.168335, 33.698536, 30.974655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294453, 33.906662, 31.728258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.002716, 34.159424, 31.623377>,  <35.827675, 34.311081, 31.560448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.002716, 34.159424, 31.623377>,  <36.294453, 33.906662, 31.728258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002716, 34.159424, 31.623377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510845, -0.248081, 0.823099,
		0.455073, 0.734269, 0.503743,
		-0.729346, 0.631905, -0.262203,
		35.783913, 34.348995, 31.544716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797424, 33.980099, 32.232208>,  <36.294453, 33.906662, 31.728258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797424, 33.980099, 32.232208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132847, 33.844612, 32.402901>,  <37.334099, 33.763321, 32.505314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132847, 33.844612, 32.402901>,  <36.797424, 33.980099, 32.232208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132847, 33.844612, 32.402901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518270, 0.737454, -0.433080,
		-0.167998, 0.584321, 0.793943,
		0.838554, -0.338720, 0.426727,
		37.384415, 33.742996, 32.530918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127899, 34.522552, 32.403553>,  <36.797424, 33.980099, 32.232208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127899, 34.522552, 32.403553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.405201, 34.235954, 32.372494>,  <37.571583, 34.063995, 32.353859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.405201, 34.235954, 32.372494>,  <37.127899, 34.522552, 32.403553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405201, 34.235954, 32.372494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583096, 0.620952, -0.523848,
		0.423547, 0.317888, 0.848266,
		0.693258, -0.716495, -0.077643,
		37.613178, 34.021008, 32.349201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679562, 34.907726, 32.260735>,  <37.127899, 34.522552, 32.403553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679562, 34.907726, 32.260735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846336, 34.554337, 32.175285>,  <37.946400, 34.342300, 32.124016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846336, 34.554337, 32.175285>,  <37.679562, 34.907726, 32.260735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846336, 34.554337, 32.175285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625882, 0.449482, -0.637368,
		0.659117, 0.132042, 0.740358,
		0.416937, -0.883476, -0.213619,
		37.971416, 34.289295, 32.111198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471272, 35.092709, 32.256283>,  <37.679562, 34.907726, 32.260735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471272, 35.092709, 32.256283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.428001, 34.741005, 32.070724>,  <38.402039, 34.529984, 31.959389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.428001, 34.741005, 32.070724>,  <38.471272, 35.092709, 32.256283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428001, 34.741005, 32.070724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730324, 0.246310, -0.637149,
		0.674482, -0.407717, 0.615501,
		-0.108172, -0.879260, -0.463897,
		38.395550, 34.477226, 31.931555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080845, 34.594894, 32.298443>,  <38.471272, 35.092709, 32.256283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080845, 34.594894, 32.298443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.898026, 34.477631, 31.962545>,  <38.788334, 34.407272, 31.761007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.898026, 34.477631, 31.962545>,  <39.080845, 34.594894, 32.298443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898026, 34.477631, 31.962545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833490, 0.188401, -0.519422,
		0.310481, -0.937317, 0.158236,
		-0.457052, -0.293159, -0.839739,
		38.760910, 34.389683, 31.710623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483353, 34.120991, 32.022900>,  <39.080845, 34.594894, 32.298443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483353, 34.120991, 32.022900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.241257, 34.252869, 31.733074>,  <39.096001, 34.331997, 31.559179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.241257, 34.252869, 31.733074>,  <39.483353, 34.120991, 32.022900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241257, 34.252869, 31.733074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795342, 0.212228, -0.567794,
		-0.033430, -0.919923, -0.390672,
		-0.605238, 0.329699, -0.724559,
		39.059685, 34.351780, 31.515707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954266, 34.334492, 31.479734>,  <39.483353, 34.120991, 32.022900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954266, 34.334492, 31.479734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636978, 34.495724, 31.297163>,  <39.446606, 34.592464, 31.187620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636978, 34.495724, 31.297163>,  <39.954266, 34.334492, 31.479734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636978, 34.495724, 31.297163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590551, 0.326435, -0.738031,
		-0.148493, -0.854966, -0.496975,
		-0.793221, 0.403082, -0.456428,
		39.399014, 34.616650, 31.160234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952877, 34.160248, 30.778080>,  <39.954266, 34.334492, 31.479734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952877, 34.160248, 30.778080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.736443, 34.496632, 30.777035>,  <39.606583, 34.698463, 30.776407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.736443, 34.496632, 30.777035>,  <39.952877, 34.160248, 30.778080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736443, 34.496632, 30.777035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553731, 0.353935, -0.753732,
		-0.632935, -0.409282, -0.657177,
		-0.541087, 0.840963, -0.002615,
		39.574116, 34.748920, 30.776251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051300, 34.365452, 30.159376>,  <39.952877, 34.160248, 30.778080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051300, 34.365452, 30.159376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.908386, 34.683620, 30.355190>,  <39.822636, 34.874523, 30.472679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.908386, 34.683620, 30.355190>,  <40.051300, 34.365452, 30.159376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908386, 34.683620, 30.355190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537204, 0.603769, -0.588961,
		-0.764041, 0.052553, -0.643024,
		-0.357286, 0.795425, 0.489536,
		39.801201, 34.922249, 30.502050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812950, 34.830502, 29.611984>,  <40.051300, 34.365452, 30.159376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812950, 34.830502, 29.611984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.863121, 35.050472, 29.942282>,  <39.893223, 35.182453, 30.140461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.863121, 35.050472, 29.942282>,  <39.812950, 34.830502, 29.611984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863121, 35.050472, 29.942282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550343, 0.653949, -0.519109,
		-0.825464, 0.519554, -0.220620,
		0.125431, 0.549922, 0.825744,
		39.900749, 35.215450, 30.190004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562836, 35.471600, 29.421724>,  <39.812950, 34.830502, 29.611984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562836, 35.471600, 29.421724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.808231, 35.535698, 29.731035>,  <39.955467, 35.574158, 29.916622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.808231, 35.535698, 29.731035>,  <39.562836, 35.471600, 29.421724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808231, 35.535698, 29.731035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469527, 0.713308, -0.520323,
		-0.634965, 0.682285, 0.362362,
		0.613484, 0.160248, 0.773277,
		39.992275, 35.583771, 29.963018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472626, 36.222511, 29.566778>,  <39.562836, 35.471600, 29.421724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472626, 36.222511, 29.566778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820965, 36.088654, 29.710800>,  <40.029968, 36.008339, 29.797215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820965, 36.088654, 29.710800>,  <39.472626, 36.222511, 29.566778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820965, 36.088654, 29.710800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491033, 0.558442, -0.668602,
		0.022673, 0.759049, 0.650638,
		0.870846, -0.334644, 0.360057,
		40.082218, 35.988262, 29.818817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848492, 36.857502, 29.697971>,  <39.472626, 36.222511, 29.566778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848492, 36.857502, 29.697971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135796, 36.579380, 29.687756>,  <40.308178, 36.412506, 29.681625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135796, 36.579380, 29.687756>,  <39.848492, 36.857502, 29.697971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135796, 36.579380, 29.687756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533183, 0.573632, -0.621822,
		0.447006, 0.433014, 0.782742,
		0.718263, -0.695302, -0.025542,
		40.351276, 36.370789, 29.680094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399624, 37.202824, 29.852625>,  <39.848492, 36.857502, 29.697971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399624, 37.202824, 29.852625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.527184, 36.870399, 29.670351>,  <40.603718, 36.670944, 29.560987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.527184, 36.870399, 29.670351>,  <40.399624, 37.202824, 29.852625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527184, 36.870399, 29.670351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479305, 0.556182, -0.678917,
		0.817663, -0.001908, 0.575694,
		0.318895, -0.831059, -0.455684,
		40.622852, 36.621082, 29.533646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584019, 37.190155, 30.642221>,  <40.399624, 37.202824, 29.852625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584019, 37.190155, 30.642221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.930447, 37.274433, 30.823561>,  <41.138306, 37.325001, 30.932365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.930447, 37.274433, 30.823561>,  <40.584019, 37.190155, 30.642221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930447, 37.274433, 30.823561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464538, 0.004097, 0.885543,
		0.184727, -0.977542, 0.101426,
		0.866072, 0.210700, 0.453349,
		41.190269, 37.337643, 30.959566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694324, 36.698219, 31.166796>,  <40.584019, 37.190155, 30.642221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694324, 36.698219, 31.166796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.921127, 37.011673, 31.268324>,  <41.057209, 37.199745, 31.329241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.921127, 37.011673, 31.268324>,  <40.694324, 36.698219, 31.166796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921127, 37.011673, 31.268324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422345, 0.012025, 0.906355,
		0.707197, -0.621109, 0.337781,
		0.567007, 0.783632, 0.253818,
		41.091228, 37.246761, 31.344469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111877, 36.579304, 31.750843>,  <40.694324, 36.698219, 31.166796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111877, 36.579304, 31.750843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.028252, 36.969482, 31.723162>,  <40.978077, 37.203590, 31.706553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.028252, 36.969482, 31.723162>,  <41.111877, 36.579304, 31.750843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028252, 36.969482, 31.723162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369690, -0.013321, 0.929060,
		0.905330, 0.219813, 0.363399,
		-0.209060, 0.975451, -0.069203,
		40.965534, 37.262119, 31.702400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109047, 36.855049, 32.514767>,  <41.111877, 36.579304, 31.750843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109047, 36.855049, 32.514767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.903793, 37.108700, 32.283398>,  <40.780643, 37.260891, 32.144577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.903793, 37.108700, 32.283398>,  <41.109047, 36.855049, 32.514767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903793, 37.108700, 32.283398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627628, 0.182474, 0.756826,
		0.585473, 0.751388, 0.304364,
		-0.513132, 0.634129, -0.578426,
		40.749855, 37.298939, 32.109871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965187, 37.429794, 33.050751>,  <41.109047, 36.855049, 32.514767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965187, 37.429794, 33.050751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.690884, 37.484959, 32.764893>,  <40.526302, 37.518059, 32.593380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.690884, 37.484959, 32.764893>,  <40.965187, 37.429794, 33.050751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690884, 37.484959, 32.764893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647990, 0.331423, 0.685761,
		0.331423, 0.933348, -0.137912,
		-0.685761, 0.137912, -0.714641,
		40.485157, 37.526333, 32.550499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593670, 37.969658, 33.318096>,  <40.965187, 37.429794, 33.050751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593670, 37.969658, 33.318096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351494, 37.825211, 33.034397>,  <40.206188, 37.738541, 32.864178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351494, 37.825211, 33.034397>,  <40.593670, 37.969658, 33.318096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351494, 37.825211, 33.034397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794895, 0.229816, 0.561539,
		-0.039786, 0.903757, -0.426193,
		-0.605441, -0.361120, -0.709249,
		40.169861, 37.716873, 32.821621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049675, 38.472458, 33.230381>,  <40.593670, 37.969658, 33.318096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049675, 38.472458, 33.230381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.893120, 38.132095, 33.090221>,  <39.799187, 37.927879, 33.006126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.893120, 38.132095, 33.090221>,  <40.049675, 38.472458, 33.230381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893120, 38.132095, 33.090221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878836, 0.232712, 0.416523,
		-0.272880, 0.470964, -0.838886,
		-0.391386, -0.850904, -0.350398,
		39.775703, 37.876823, 32.985104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398998, 38.656452, 33.242786>,  <40.049675, 38.472458, 33.230381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398998, 38.656452, 33.242786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.386780, 38.258312, 33.206261>,  <39.379448, 38.019428, 33.184345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.386780, 38.258312, 33.206261>,  <39.398998, 38.656452, 33.242786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386780, 38.258312, 33.206261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869742, -0.018557, 0.493158,
		-0.492561, 0.094486, -0.865134,
		-0.030543, -0.995353, -0.091319,
		39.377617, 37.959705, 33.178864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743584, 38.532372, 32.952641>,  <39.398998, 38.656452, 33.242786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743584, 38.532372, 32.952641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.863419, 38.189701, 33.120617>,  <38.935322, 37.984100, 33.221401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.863419, 38.189701, 33.120617>,  <38.743584, 38.532372, 32.952641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863419, 38.189701, 33.120617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876050, -0.072681, 0.476711,
		-0.377865, -0.510707, -0.772267,
		0.299589, -0.856677, 0.419942,
		38.953297, 37.932697, 33.246601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090240, 38.079197, 33.016769>,  <38.743584, 38.532372, 32.952641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090240, 38.079197, 33.016769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328873, 37.928982, 33.300476>,  <38.472054, 37.838852, 33.470699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328873, 37.928982, 33.300476>,  <38.090240, 38.079197, 33.016769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328873, 37.928982, 33.300476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800020, -0.208123, 0.562719,
		-0.063709, -0.903136, -0.424602,
		0.596581, -0.375540, 0.709267,
		38.507847, 37.816319, 33.513256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826199, 37.455708, 33.112373>,  <38.090240, 38.079197, 33.016769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826199, 37.455708, 33.112373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.048134, 37.545242, 33.432884>,  <38.181293, 37.598965, 33.625191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.048134, 37.545242, 33.432884>,  <37.826199, 37.455708, 33.112373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048134, 37.545242, 33.432884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747994, -0.287435, 0.598236,
		0.364223, -0.931278, 0.007948,
		0.554840, 0.223836, 0.801281,
		38.214584, 37.612392, 33.673267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704117, 36.923801, 33.574814>,  <37.826199, 37.455708, 33.112373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704117, 36.923801, 33.574814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.863209, 37.208057, 33.806950>,  <37.958664, 37.378613, 33.946232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.863209, 37.208057, 33.806950>,  <37.704117, 36.923801, 33.574814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863209, 37.208057, 33.806950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663193, -0.214417, 0.717077,
		0.634021, -0.670082, 0.386013,
		0.397733, 0.710644, 0.580339,
		37.982529, 37.421249, 33.981052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.067505, 38.570667, 28.496962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978146, 38.868149, 28.748991>,  <43.924530, 39.046638, 28.900209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978146, 38.868149, 28.748991>,  <44.067505, 38.570667, 28.496962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978146, 38.868149, 28.748991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200068, -0.667633, 0.717104,
		0.953974, 0.034142, 0.297939,
		-0.223397, 0.743707, 0.630074,
		43.911125, 39.091259, 28.938013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404072, 38.399784, 29.123568>,  <44.067505, 38.570667, 28.496962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.404072, 38.399784, 29.123568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110619, 38.659355, 29.204235>,  <43.934547, 38.815098, 29.252636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110619, 38.659355, 29.204235>,  <44.404072, 38.399784, 29.123568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110619, 38.659355, 29.204235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390786, -0.645676, 0.656040,
		0.555938, 0.402484, 0.727283,
		-0.733634, 0.648929, 0.201671,
		43.890530, 38.854034, 29.264736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304928, 38.312187, 29.886152>,  <44.404072, 38.399784, 29.123568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304928, 38.312187, 29.886152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981407, 38.501747, 29.746866>,  <43.787296, 38.615482, 29.663294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981407, 38.501747, 29.746866>,  <44.304928, 38.312187, 29.886152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981407, 38.501747, 29.746866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579535, -0.541726, 0.608828,
		0.099890, 0.694224, 0.712794,
		-0.808802, 0.473904, -0.348214,
		43.738766, 38.643917, 29.642403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920795, 38.457150, 30.506544>,  <44.304928, 38.312187, 29.886152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920795, 38.457150, 30.506544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683266, 38.491837, 30.186581>,  <43.540749, 38.512650, 29.994602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683266, 38.491837, 30.186581>,  <43.920795, 38.457150, 30.506544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683266, 38.491837, 30.186581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732889, -0.468560, 0.493279,
		-0.332030, 0.879165, 0.341795,
		-0.593826, 0.086714, -0.799907,
		43.505119, 38.517849, 29.946608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200317, 38.661327, 30.729946>,  <43.920795, 38.457150, 30.506544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200317, 38.661327, 30.729946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126968, 38.535374, 30.357447>,  <43.082958, 38.459801, 30.133947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126968, 38.535374, 30.357447>,  <43.200317, 38.661327, 30.729946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126968, 38.535374, 30.357447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911914, -0.299305, 0.280767,
		-0.367137, 0.900702, -0.232265,
		-0.183369, -0.314886, -0.931248,
		43.071957, 38.440907, 30.078072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655743, 38.975063, 30.589172>,  <43.200317, 38.661327, 30.729946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655743, 38.975063, 30.589172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689999, 38.644436, 30.366661>,  <42.710552, 38.446060, 30.233154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689999, 38.644436, 30.366661>,  <42.655743, 38.975063, 30.589172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689999, 38.644436, 30.366661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949482, -0.236893, 0.205829,
		-0.301911, 0.510549, -0.805102,
		0.085637, -0.826572, -0.556278,
		42.715691, 38.396465, 30.199778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908310, 38.908005, 30.401211>,  <42.655743, 38.975063, 30.589172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908310, 38.908005, 30.401211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100395, 38.564297, 30.330729>,  <42.215649, 38.358070, 30.288439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100395, 38.564297, 30.330729>,  <41.908310, 38.908005, 30.401211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100395, 38.564297, 30.330729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708137, -0.498328, 0.500211,
		-0.517625, -0.115429, -0.847785,
		0.480214, -0.859270, -0.176208,
		42.244461, 38.306515, 30.277866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328327, 38.462688, 30.148558>,  <41.908310, 38.908005, 30.401211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328327, 38.462688, 30.148558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619770, 38.211082, 30.256985>,  <41.794636, 38.060120, 30.322041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619770, 38.211082, 30.256985>,  <41.328327, 38.462688, 30.148558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619770, 38.211082, 30.256985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659004, -0.535917, 0.527736,
		-0.186683, -0.563146, -0.804994,
		0.728603, -0.629014, 0.271069,
		41.838352, 38.022377, 30.338305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998207, 37.888046, 29.956760>,  <41.328327, 38.462688, 30.148558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998207, 37.888046, 29.956760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279758, 37.803062, 30.227882>,  <41.448689, 37.752071, 30.390554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279758, 37.803062, 30.227882>,  <40.998207, 37.888046, 29.956760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279758, 37.803062, 30.227882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655614, -0.561538, 0.504823,
		0.273359, -0.799711, -0.534544,
		0.703879, -0.212457, 0.677803,
		41.490921, 37.739326, 30.431223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281841, 37.345982, 29.490957>,  <40.998207, 37.888046, 29.956760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281841, 37.345982, 29.490957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119488, 37.021297, 29.322960>,  <41.022076, 36.826488, 29.222162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119488, 37.021297, 29.322960>,  <41.281841, 37.345982, 29.490957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119488, 37.021297, 29.322960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585990, 0.121516, -0.801155,
		0.701339, -0.571285, 0.426330,
		-0.405881, -0.811706, -0.419991,
		40.997723, 36.777786, 29.196962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893852, 37.036472, 29.218126>,  <41.281841, 37.345982, 29.490957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893852, 37.036472, 29.218126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577637, 36.889950, 29.021812>,  <41.387905, 36.802036, 28.904024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577637, 36.889950, 29.021812>,  <41.893852, 37.036472, 29.218126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577637, 36.889950, 29.021812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443014, 0.211256, -0.871269,
		0.422829, -0.906197, -0.004729,
		-0.790540, -0.366303, -0.490783,
		41.340473, 36.780060, 28.874577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170574, 36.790508, 28.591162>,  <41.893852, 37.036472, 29.218126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170574, 36.790508, 28.591162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779282, 36.799561, 28.508657>,  <41.544506, 36.804993, 28.459154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779282, 36.799561, 28.508657>,  <42.170574, 36.790508, 28.591162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779282, 36.799561, 28.508657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207294, 0.150704, -0.966601,
		0.009206, -0.988320, -0.152116,
		-0.978235, 0.022634, -0.206260,
		41.485809, 36.806351, 28.446779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071720, 36.383335, 27.993931>,  <42.170574, 36.790508, 28.591162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071720, 36.383335, 27.993931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751167, 36.622368, 28.004375>,  <41.558834, 36.765785, 28.010643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751167, 36.622368, 28.004375>,  <42.071720, 36.383335, 27.993931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751167, 36.622368, 28.004375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171413, 0.271260, -0.947120,
		-0.573060, -0.754532, -0.319816,
		-0.801386, 0.597577, 0.026112,
		41.510750, 36.801640, 28.012209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661171, 36.286934, 27.400690>,  <42.071720, 36.383335, 27.993931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661171, 36.286934, 27.400690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570087, 36.657421, 27.520872>,  <41.515438, 36.879715, 27.592981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570087, 36.657421, 27.520872>,  <41.661171, 36.286934, 27.400690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570087, 36.657421, 27.520872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120064, 0.332912, -0.935283,
		-0.966299, -0.176897, -0.187012,
		-0.227707, 0.926217, 0.300453,
		41.501774, 36.935287, 27.611008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188583, 36.520283, 26.843727>,  <41.661171, 36.286934, 27.400690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188583, 36.520283, 26.843727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305069, 36.851692, 27.035036>,  <41.374958, 37.050537, 27.149820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305069, 36.851692, 27.035036>,  <41.188583, 36.520283, 26.843727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305069, 36.851692, 27.035036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159479, 0.450899, -0.878212,
		-0.943272, 0.332019, -0.000826,
		0.291211, 0.828525, 0.478271,
		41.392433, 37.100250, 27.178518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958614, 37.069057, 26.352415>,  <41.188583, 36.520283, 26.843727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958614, 37.069057, 26.352415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227280, 37.228699, 26.602083>,  <41.388477, 37.324482, 26.751884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227280, 37.228699, 26.602083>,  <40.958614, 37.069057, 26.352415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227280, 37.228699, 26.602083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337720, 0.584932, -0.737428,
		-0.659404, 0.706098, 0.258093,
		0.671664, 0.399100, 0.624169,
		41.428780, 37.348427, 26.789333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881744, 37.709454, 26.218103>,  <40.958614, 37.069057, 26.352415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881744, 37.709454, 26.218103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242828, 37.714874, 26.390121>,  <41.459476, 37.718124, 26.493332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242828, 37.714874, 26.390121>,  <40.881744, 37.709454, 26.218103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242828, 37.714874, 26.390121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349970, 0.558300, -0.752211,
		-0.250287, 0.829528, 0.499239,
		0.902706, 0.013550, 0.430045,
		41.513641, 37.718941, 26.519135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183205, 38.527664, 26.277826>,  <40.881744, 37.709454, 26.218103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183205, 38.527664, 26.277826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475468, 38.255062, 26.261364>,  <41.650826, 38.091499, 26.251486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475468, 38.255062, 26.261364>,  <41.183205, 38.527664, 26.277826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475468, 38.255062, 26.261364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416449, 0.492629, -0.764125,
		0.541032, 0.541171, 0.643754,
		0.730654, -0.681506, -0.041158,
		41.694664, 38.050610, 26.249016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709530, 38.891922, 26.174408>,  <41.183205, 38.527664, 26.277826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709530, 38.891922, 26.174408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838013, 38.524017, 26.084190>,  <41.915104, 38.303276, 26.030060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838013, 38.524017, 26.084190>,  <41.709530, 38.891922, 26.174408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838013, 38.524017, 26.084190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556293, 0.376000, -0.741054,
		0.766395, 0.112564, 0.632430,
		0.321210, -0.919757, -0.225546,
		41.934376, 38.248089, 26.016527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382401, 38.982807, 26.223755>,  <41.709530, 38.891922, 26.174408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382401, 38.982807, 26.223755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325092, 38.655712, 26.000767>,  <42.290707, 38.459454, 25.866974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325092, 38.655712, 26.000767>,  <42.382401, 38.982807, 26.223755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325092, 38.655712, 26.000767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602849, 0.374612, -0.704442,
		0.784886, -0.436995, 0.439305,
		-0.143269, -0.817742, -0.557470,
		42.282112, 38.410389, 25.833527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013729, 38.756756, 26.048779>,  <42.382401, 38.982807, 26.223755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013729, 38.756756, 26.048779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764362, 38.614773, 25.770109>,  <42.614742, 38.529583, 25.602907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764362, 38.614773, 25.770109>,  <43.013729, 38.756756, 26.048779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764362, 38.614773, 25.770109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595838, 0.361279, -0.717255,
		0.506292, -0.862253, -0.013728,
		-0.623415, -0.354961, -0.696675,
		42.577339, 38.508286, 25.561106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496838, 38.458282, 25.603458>,  <43.013729, 38.756756, 26.048779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496838, 38.458282, 25.603458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162964, 38.480686, 25.384308>,  <42.962639, 38.494129, 25.252817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162964, 38.480686, 25.384308>,  <43.496838, 38.458282, 25.603458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162964, 38.480686, 25.384308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550730, 0.088158, -0.830015,
		0.001810, -0.994531, -0.104430,
		-0.834681, 0.056011, -0.547878,
		42.912560, 38.497490, 25.219944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545818, 38.020584, 25.047003>,  <43.496838, 38.458282, 25.603458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545818, 38.020584, 25.047003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258533, 38.272121, 24.927855>,  <43.086163, 38.423042, 24.856365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258533, 38.272121, 24.927855>,  <43.545818, 38.020584, 25.047003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258533, 38.272121, 24.927855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503067, 0.173527, -0.846647,
		-0.480716, -0.757925, -0.440979,
		-0.718217, 0.628839, -0.297870,
		43.043068, 38.460773, 24.838493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.476727, 44.626404, 27.392897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.677212, 44.383209, 27.639193>,  <40.797501, 44.237293, 27.786970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.677212, 44.383209, 27.639193>,  <40.476727, 44.626404, 27.392897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677212, 44.383209, 27.639193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853682, -0.463754, 0.236979,
		0.141471, -0.644422, -0.751469,
		0.501211, -0.607990, 0.615740,
		40.827576, 44.200813, 27.823914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172562, 44.074818, 27.350113>,  <40.476727, 44.626404, 27.392897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172562, 44.074818, 27.350113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358555, 43.974072, 27.689610>,  <40.470150, 43.913624, 27.893307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358555, 43.974072, 27.689610>,  <40.172562, 44.074818, 27.350113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358555, 43.974072, 27.689610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821307, -0.480633, 0.307322,
		0.330529, -0.839974, -0.430342,
		0.464980, -0.251864, 0.848739,
		40.498047, 43.898514, 27.944231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866508, 43.509506, 27.473940>,  <40.172562, 44.074818, 27.350113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866508, 43.509506, 27.473940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070148, 43.546234, 27.816257>,  <40.192333, 43.568272, 28.021648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070148, 43.546234, 27.816257>,  <39.866508, 43.509506, 27.473940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070148, 43.546234, 27.816257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700429, -0.533652, 0.473936,
		0.500215, -0.840705, -0.207367,
		0.509102, 0.091824, 0.855794,
		40.222878, 43.573780, 28.072996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032280, 42.801292, 27.754440>,  <39.866508, 43.509506, 27.473940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032280, 42.801292, 27.754440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.000935, 43.080868, 28.038792>,  <39.982128, 43.248611, 28.209402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.000935, 43.080868, 28.038792>,  <40.032280, 42.801292, 27.754440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000935, 43.080868, 28.038792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568883, -0.616927, 0.543850,
		0.818676, -0.361786, 0.445960,
		-0.078367, 0.698936, 0.710878,
		39.977425, 43.290550, 28.252054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169182, 42.371822, 28.421640>,  <40.032280, 42.801292, 27.754440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169182, 42.371822, 28.421640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.000648, 42.722992, 28.512611>,  <39.899529, 42.933693, 28.567194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.000648, 42.722992, 28.512611>,  <40.169182, 42.371822, 28.421640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000648, 42.722992, 28.512611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649608, -0.467144, 0.599822,
		0.632841, 0.104986, 0.767131,
		-0.421333, 0.877926, 0.227428,
		39.874249, 42.986370, 28.580839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183811, 42.321743, 29.131552>,  <40.169182, 42.371822, 28.421640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183811, 42.321743, 29.131552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.913136, 42.608162, 29.063011>,  <39.750729, 42.780014, 29.021887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.913136, 42.608162, 29.063011>,  <40.183811, 42.321743, 29.131552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913136, 42.608162, 29.063011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649688, -0.471229, 0.596530,
		0.346398, 0.514993, 0.784086,
		-0.676693, 0.716048, -0.171352,
		39.710129, 42.822975, 29.011606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835239, 42.413094, 29.729084>,  <40.183811, 42.321743, 29.131552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835239, 42.413094, 29.729084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.570049, 42.595146, 29.491322>,  <39.410934, 42.704376, 29.348665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.570049, 42.595146, 29.491322>,  <39.835239, 42.413094, 29.729084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570049, 42.595146, 29.491322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738645, -0.526967, 0.420368,
		-0.121910, 0.717750, 0.685546,
		-0.662979, 0.455128, -0.594405,
		39.371155, 42.731686, 29.313000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347836, 42.706749, 30.167377>,  <39.835239, 42.413094, 29.729084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347836, 42.706749, 30.167377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.183056, 42.628811, 29.811325>,  <39.084187, 42.582050, 29.597694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.183056, 42.628811, 29.811325>,  <39.347836, 42.706749, 30.167377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183056, 42.628811, 29.811325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792459, -0.405590, 0.455527,
		-0.449784, 0.893047, 0.012678,
		-0.411949, -0.194842, -0.890132,
		39.059471, 42.570358, 29.544285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601002, 42.878170, 30.308874>,  <39.347836, 42.706749, 30.167377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601002, 42.878170, 30.308874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.631447, 42.651279, 29.980860>,  <38.649715, 42.515144, 29.784052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.631447, 42.651279, 29.980860>,  <38.601002, 42.878170, 30.308874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631447, 42.651279, 29.980860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868632, -0.441531, 0.224785,
		-0.489576, 0.695199, -0.526320,
		0.076116, -0.567228, -0.820036,
		38.654282, 42.481110, 29.734850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004696, 42.839828, 30.019888>,  <38.601002, 42.878170, 30.308874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004696, 42.839828, 30.019888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.137177, 42.499874, 29.855938>,  <38.216667, 42.295902, 29.757568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.137177, 42.499874, 29.855938>,  <38.004696, 42.839828, 30.019888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137177, 42.499874, 29.855938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883862, -0.431509, 0.180525,
		-0.330291, 0.302483, -0.894099,
		0.331205, -0.849885, -0.409876,
		38.236538, 42.244907, 29.732975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376408, 42.517159, 29.658915>,  <38.004696, 42.839828, 30.019888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376408, 42.517159, 29.658915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665012, 42.242546, 29.694906>,  <37.838177, 42.077778, 29.716501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665012, 42.242546, 29.694906>,  <37.376408, 42.517159, 29.658915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665012, 42.242546, 29.694906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687030, -0.693682, 0.216322,
		-0.086096, -0.217896, -0.972167,
		0.721510, -0.686532, 0.089978,
		37.881466, 42.036587, 29.721899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149296, 41.839554, 29.224739>,  <37.376408, 42.517159, 29.658915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149296, 41.839554, 29.224739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.412804, 41.764648, 29.516207>,  <37.570908, 41.719704, 29.691088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.412804, 41.764648, 29.516207>,  <37.149296, 41.839554, 29.224739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412804, 41.764648, 29.516207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542340, -0.789465, 0.287422,
		0.521434, -0.584530, -0.621635,
		0.658767, -0.187266, 0.728669,
		37.610435, 41.708469, 29.734808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220978, 41.078426, 29.286547>,  <37.149296, 41.839554, 29.224739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220978, 41.078426, 29.286547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.347809, 41.184761, 29.650700>,  <37.423908, 41.248562, 29.869190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.347809, 41.184761, 29.650700>,  <37.220978, 41.078426, 29.286547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347809, 41.184761, 29.650700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652575, -0.635392, 0.412824,
		0.688192, -0.724988, -0.027989,
		0.317076, 0.265837, 0.910381,
		37.442932, 41.264511, 29.923815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191288, 40.491142, 29.633335>,  <37.220978, 41.078426, 29.286547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191288, 40.491142, 29.633335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.199699, 40.766541, 29.923309>,  <37.204746, 40.931778, 30.097294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.199699, 40.766541, 29.923309>,  <37.191288, 40.491142, 29.633335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199699, 40.766541, 29.923309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520157, -0.611697, 0.596039,
		0.853811, -0.389615, 0.345262,
		0.021030, 0.688496, 0.724935,
		37.206009, 40.973091, 30.140789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784977, 39.896870, 29.802582>,  <37.191288, 40.491142, 29.633335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784977, 39.896870, 29.802582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545082, 39.757782, 29.514301>,  <37.401146, 39.674328, 29.341333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545082, 39.757782, 29.514301>,  <37.784977, 39.896870, 29.802582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545082, 39.757782, 29.514301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549486, 0.475773, -0.686808,
		0.581709, -0.807916, -0.094267,
		-0.599732, -0.347724, -0.720700,
		37.365162, 39.653465, 29.298092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224789, 39.579395, 29.352131>,  <37.784977, 39.896870, 29.802582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224789, 39.579395, 29.352131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.905777, 39.680294, 29.132923>,  <37.714371, 39.740833, 29.001398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.905777, 39.680294, 29.132923>,  <38.224789, 39.579395, 29.352131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905777, 39.680294, 29.132923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601993, 0.273347, -0.750257,
		-0.039449, -0.928253, -0.369851,
		-0.797526, 0.252245, -0.548019,
		37.666519, 39.755966, 28.968517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461361, 39.193256, 28.640772>,  <38.224789, 39.579395, 29.352131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461361, 39.193256, 28.640772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154148, 39.441120, 28.576084>,  <37.969822, 39.589840, 28.537271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154148, 39.441120, 28.576084>,  <38.461361, 39.193256, 28.640772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154148, 39.441120, 28.576084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458103, 0.355121, -0.814880,
		-0.447519, -0.699936, -0.556612,
		-0.768029, 0.619660, -0.161719,
		37.923740, 39.627018, 28.527569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204578, 39.115429, 27.966022>,  <38.461361, 39.193256, 28.640772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204578, 39.115429, 27.966022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074444, 39.479630, 28.068115>,  <37.996365, 39.698151, 28.129372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074444, 39.479630, 28.068115>,  <38.204578, 39.115429, 27.966022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074444, 39.479630, 28.068115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395093, 0.376113, -0.838117,
		-0.859103, -0.171829, -0.482096,
		-0.325336, 0.910502, 0.255232,
		37.976845, 39.752781, 28.144686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914391, 39.386448, 27.378464>,  <38.204578, 39.115429, 27.966022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914391, 39.386448, 27.378464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.984108, 39.707188, 27.607082>,  <38.025936, 39.899632, 27.744253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.984108, 39.707188, 27.607082>,  <37.914391, 39.386448, 27.378464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984108, 39.707188, 27.607082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438508, 0.456497, -0.774159,
		-0.881665, 0.385556, -0.272053,
		0.174290, 0.801846, 0.571547,
		38.036396, 39.947742, 27.778547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616344, 40.039734, 27.066181>,  <37.914391, 39.386448, 27.378464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616344, 40.039734, 27.066181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.912331, 40.153770, 27.309875>,  <38.089924, 40.222195, 27.456091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.912331, 40.153770, 27.309875>,  <37.616344, 40.039734, 27.066181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912331, 40.153770, 27.309875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415261, 0.518902, -0.747194,
		-0.529155, 0.805892, 0.265583,
		0.739969, 0.285095, 0.609234,
		38.134323, 40.239300, 27.492645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677185, 40.694443, 26.765154>,  <37.616344, 40.039734, 27.066181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677185, 40.694443, 26.765154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.991425, 40.663975, 27.010767>,  <38.179966, 40.645695, 27.158134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.991425, 40.663975, 27.010767>,  <37.677185, 40.694443, 26.765154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991425, 40.663975, 27.010767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545310, 0.554150, -0.628932,
		-0.292363, 0.828925, 0.476872,
		0.785596, -0.076167, 0.614034,
		38.227104, 40.641125, 27.194977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921955, 41.387066, 26.930298>,  <37.677185, 40.694443, 26.765154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921955, 41.387066, 26.930298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240944, 41.152115, 26.985487>,  <38.432335, 41.011147, 27.018600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.240944, 41.152115, 26.985487>,  <37.921955, 41.387066, 26.930298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240944, 41.152115, 26.985487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547354, 0.608060, -0.575036,
		0.253865, 0.534093, 0.806410,
		0.797469, -0.587373, 0.137973,
		38.480186, 40.975903, 27.026878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544437, 41.777584, 27.212017>,  <37.921955, 41.387066, 26.930298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544437, 41.777584, 27.212017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.708344, 41.444656, 27.062710>,  <38.806686, 41.244900, 26.973125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.708344, 41.444656, 27.062710>,  <38.544437, 41.777584, 27.212017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708344, 41.444656, 27.062710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682588, 0.551228, -0.479814,
		0.605117, -0.058178, 0.794008,
		0.409765, -0.832324, -0.373269,
		38.831272, 41.194958, 26.950729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304974, 41.801804, 27.255529>,  <38.544437, 41.777584, 27.212017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304974, 41.801804, 27.255529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213280, 41.546288, 26.961756>,  <39.158264, 41.392979, 26.785492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213280, 41.546288, 26.961756>,  <39.304974, 41.801804, 27.255529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213280, 41.546288, 26.961756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601318, 0.500395, -0.622914,
		0.765422, -0.584419, 0.269413,
		-0.229230, -0.638795, -0.734435,
		39.144512, 41.354649, 26.741425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845444, 41.846283, 26.923450>,  <39.304974, 41.801804, 27.255529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845444, 41.846283, 26.923450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.602707, 41.669712, 26.659061>,  <39.457066, 41.563770, 26.500429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.602707, 41.669712, 26.659061>,  <39.845444, 41.846283, 26.923450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602707, 41.669712, 26.659061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531427, 0.393044, -0.750401,
		0.591041, -0.806632, -0.003927,
		-0.606841, -0.441431, -0.660972,
		39.420654, 41.537285, 26.460770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305588, 41.378876, 26.502522>,  <39.845444, 41.846283, 26.923450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305588, 41.378876, 26.502522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.974422, 41.495502, 26.310879>,  <39.775723, 41.565479, 26.195892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.974422, 41.495502, 26.310879>,  <40.305588, 41.378876, 26.502522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974422, 41.495502, 26.310879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559282, 0.493132, -0.666352,
		0.041975, -0.819639, -0.571341,
		-0.827914, 0.291570, -0.479108,
		39.726048, 41.582973, 26.167147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472263, 41.273514, 25.853895>,  <40.305588, 41.378876, 26.502522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472263, 41.273514, 25.853895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154217, 41.515324, 25.834530>,  <39.963390, 41.660412, 25.822910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154217, 41.515324, 25.834530>,  <40.472263, 41.273514, 25.853895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154217, 41.515324, 25.834530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487399, 0.589471, -0.644179,
		-0.360887, -0.535790, -0.763342,
		-0.795112, 0.604527, -0.048411,
		39.915684, 41.696682, 25.820007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341778, 41.305511, 25.132504>,  <40.472263, 41.273514, 25.853895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341778, 41.305511, 25.132504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205364, 41.634895, 25.313879>,  <40.123516, 41.832527, 25.422705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205364, 41.634895, 25.313879>,  <40.341778, 41.305511, 25.132504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205364, 41.634895, 25.313879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466345, 0.567017, -0.678980,
		-0.816222, -0.020096, -0.577389,
		-0.341034, 0.823461, 0.453440,
		40.103054, 41.881935, 25.449911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797508, 41.191650, 24.648237>,  <40.341778, 41.305511, 25.132504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797508, 41.191650, 24.648237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.923771, 40.944698, 24.360016>,  <39.999531, 40.796528, 24.187084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.923771, 40.944698, 24.360016>,  <39.797508, 41.191650, 24.648237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923771, 40.944698, 24.360016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488925, -0.756636, 0.434112,
		-0.813209, 0.215263, -0.540696,
		0.315662, -0.617384, -0.720551,
		40.018471, 40.759483, 24.143850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193611, 40.781532, 24.546719>,  <39.797508, 41.191650, 24.648237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193611, 40.781532, 24.546719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483337, 40.577629, 24.361023>,  <39.657173, 40.455288, 24.249605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483337, 40.577629, 24.361023>,  <39.193611, 40.781532, 24.546719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483337, 40.577629, 24.361023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412233, -0.859905, 0.301044,
		-0.552660, -0.026676, -0.832980,
		0.724314, -0.509757, -0.464238,
		39.700630, 40.424702, 24.221752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843647, 40.306644, 24.119576>,  <39.193611, 40.781532, 24.546719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843647, 40.306644, 24.119576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.212292, 40.168053, 24.189537>,  <39.433479, 40.084896, 24.231514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.212292, 40.168053, 24.189537>,  <38.843647, 40.306644, 24.119576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212292, 40.168053, 24.189537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385837, -0.866722, 0.316107,
		0.042070, -0.358811, -0.932461,
		0.921607, -0.346480, 0.174905,
		39.488773, 40.064110, 24.242008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753426, 39.627975, 23.941790>,  <38.843647, 40.306644, 24.119576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753426, 39.627975, 23.941790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.088676, 39.616554, 24.159679>,  <39.289825, 39.609703, 24.290413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.088676, 39.616554, 24.159679>,  <38.753426, 39.627975, 23.941790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088676, 39.616554, 24.159679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220117, -0.931415, 0.289854,
		0.499089, -0.362838, -0.786930,
		0.838128, -0.028553, 0.544726,
		39.340115, 39.607986, 24.323097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174374, 39.051205, 23.748236>,  <38.753426, 39.627975, 23.941790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174374, 39.051205, 23.748236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.308594, 39.155979, 24.110186>,  <39.389126, 39.218845, 24.327356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.308594, 39.155979, 24.110186>,  <39.174374, 39.051205, 23.748236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308594, 39.155979, 24.110186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252930, -0.900243, 0.354387,
		0.907434, -0.347783, -0.235821,
		0.335546, 0.261936, 0.904875,
		39.409256, 39.234562, 24.381649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533936, 38.491421, 23.993725>,  <39.174374, 39.051205, 23.748236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533936, 38.491421, 23.993725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441940, 38.668007, 24.340645>,  <39.386742, 38.773960, 24.548798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441940, 38.668007, 24.340645>,  <39.533936, 38.491421, 23.993725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441940, 38.668007, 24.340645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157088, -0.896345, 0.414594,
		0.960432, -0.040892, 0.275497,
		-0.229987, 0.441467, 0.867302,
		39.372944, 38.800446, 24.600836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790829, 37.983147, 24.551277>,  <39.533936, 38.491421, 23.993725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790829, 37.983147, 24.551277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.584469, 38.246658, 24.770311>,  <39.460651, 38.404766, 24.901731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.584469, 38.246658, 24.770311>,  <39.790829, 37.983147, 24.551277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584469, 38.246658, 24.770311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194995, -0.712748, 0.673770,
		0.834159, 0.240822, 0.496168,
		-0.515902, 0.658782, 0.547587,
		39.429699, 38.444294, 24.934587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988857, 37.999329, 25.238531>,  <39.790829, 37.983147, 24.551277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988857, 37.999329, 25.238531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.610802, 38.127628, 25.263323>,  <39.383968, 38.204609, 25.278198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.610802, 38.127628, 25.263323>,  <39.988857, 37.999329, 25.238531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610802, 38.127628, 25.263323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197877, -0.713053, 0.672607,
		0.259931, 0.623441, 0.737399,
		-0.945135, 0.320746, 0.061980,
		39.327263, 38.223850, 25.281918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886562, 38.094322, 25.987400>,  <39.988857, 37.999329, 25.238531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886562, 38.094322, 25.987400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.550610, 38.034424, 25.778719>,  <39.349037, 37.998486, 25.653511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.550610, 38.034424, 25.778719>,  <39.886562, 38.094322, 25.987400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550610, 38.034424, 25.778719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250029, -0.746391, 0.616755,
		-0.481746, 0.648443, 0.589442,
		-0.839884, -0.149741, -0.521701,
		39.298645, 37.989502, 25.622210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417065, 38.182110, 26.469683>,  <39.886562, 38.094322, 25.987400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417065, 38.182110, 26.469683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224182, 37.970940, 26.190031>,  <39.108452, 37.844238, 26.022240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224182, 37.970940, 26.190031>,  <39.417065, 38.182110, 26.469683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224182, 37.970940, 26.190031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478824, -0.509467, 0.714962,
		-0.733627, 0.679515, -0.007116,
		-0.482202, -0.527923, -0.699127,
		39.079521, 37.812561, 25.980293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751308, 38.241001, 26.693571>,  <39.417065, 38.182110, 26.469683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751308, 38.241001, 26.693571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.797184, 37.911552, 26.471405>,  <38.824707, 37.713882, 26.338104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.797184, 37.911552, 26.471405>,  <38.751308, 38.241001, 26.693571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797184, 37.911552, 26.471405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394162, -0.550940, 0.735597,
		-0.911857, 0.134562, -0.387827,
		0.114686, -0.823625, -0.555417,
		38.831589, 37.664463, 26.304779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139977, 37.878006, 26.952814>,  <38.751308, 38.241001, 26.693571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139977, 37.878006, 26.952814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.368393, 37.608822, 26.764755>,  <38.505444, 37.447311, 26.651920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.368393, 37.608822, 26.764755>,  <38.139977, 37.878006, 26.952814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368393, 37.608822, 26.764755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364145, -0.720928, 0.589628,
		-0.735741, -0.165496, -0.656732,
		0.571037, -0.672959, -0.470151,
		38.539703, 37.406933, 26.623711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771011, 37.335732, 26.838587>,  <38.139977, 37.878006, 26.952814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771011, 37.335732, 26.838587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.132244, 37.165432, 26.816023>,  <38.348984, 37.063251, 26.802485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.132244, 37.165432, 26.816023>,  <37.771011, 37.335732, 26.838587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132244, 37.165432, 26.816023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333290, -0.777606, 0.533148,
		-0.270850, -0.462676, -0.844140,
		0.903082, -0.425746, -0.056410,
		38.403168, 37.037708, 26.799099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547539, 36.698490, 26.588051>,  <37.771011, 37.335732, 26.838587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547539, 36.698490, 26.588051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.902672, 36.690590, 26.771946>,  <38.115753, 36.685848, 26.882282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.902672, 36.690590, 26.771946>,  <37.547539, 36.698490, 26.588051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902672, 36.690590, 26.771946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290016, -0.799695, 0.525717,
		0.357266, -0.600081, -0.715726,
		0.887836, -0.019752, 0.459737,
		38.169022, 36.684666, 26.909866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.609707, 37.862640, 24.231604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.399303, 38.196960, 24.294548>,  <43.273064, 38.397552, 24.332314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.399303, 38.196960, 24.294548>,  <43.609707, 37.862640, 24.231604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399303, 38.196960, 24.294548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378072, 0.395530, -0.837029,
		-0.761826, -0.380790, -0.524042,
		-0.526007, 0.835796, 0.157359,
		43.241501, 38.447701, 24.341755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413528, 38.068867, 23.517410>,  <43.609707, 37.862640, 24.231604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413528, 38.068867, 23.517410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.356422, 38.399857, 23.734631>,  <43.322159, 38.598450, 23.864964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.356422, 38.399857, 23.734631>,  <43.413528, 38.068867, 23.517410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356422, 38.399857, 23.734631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245911, 0.561122, -0.790361,
		-0.958721, 0.020707, -0.283594,
		-0.142765, 0.827474, 0.543051,
		43.313595, 38.648098, 23.897547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097927, 38.605705, 23.089617>,  <43.413528, 38.068867, 23.517410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097927, 38.605705, 23.089617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.280647, 38.821415, 23.372606>,  <43.390278, 38.950840, 23.542400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.280647, 38.821415, 23.372606>,  <43.097927, 38.605705, 23.089617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280647, 38.821415, 23.372606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373410, 0.605601, -0.702718,
		-0.807403, 0.585179, 0.075268,
		0.456799, 0.539271, 0.707476,
		43.417686, 38.983196, 23.584848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896427, 39.215767, 22.890579>,  <43.097927, 38.605705, 23.089617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896427, 39.215767, 22.890579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.213867, 39.256046, 23.130602>,  <43.404331, 39.280212, 23.274614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.213867, 39.256046, 23.130602>,  <42.896427, 39.215767, 22.890579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213867, 39.256046, 23.130602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408216, 0.643189, -0.647817,
		-0.451182, 0.759057, 0.469326,
		0.793596, 0.100697, 0.600055,
		43.451946, 39.286255, 23.310617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118877, 39.997746, 22.982021>,  <42.896427, 39.215767, 22.890579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118877, 39.997746, 22.982021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.445034, 39.792740, 23.089697>,  <43.640728, 39.669735, 23.154303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.445034, 39.792740, 23.089697>,  <43.118877, 39.997746, 22.982021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445034, 39.792740, 23.089697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572112, 0.642365, -0.509957,
		0.088442, 0.569822, 0.816995,
		0.815393, -0.512514, 0.269190,
		43.689651, 39.638985, 23.170454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552872, 40.521027, 23.374846>,  <43.118877, 39.997746, 22.982021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552872, 40.521027, 23.374846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.773933, 40.228153, 23.215607>,  <43.906570, 40.052429, 23.120064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.773933, 40.228153, 23.215607>,  <43.552872, 40.521027, 23.374846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773933, 40.228153, 23.215607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554394, 0.679632, -0.480362,
		0.622272, 0.044771, 0.781519,
		0.552652, -0.732186, -0.398095,
		43.939728, 40.008499, 23.096178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242058, 40.754223, 23.282606>,  <43.552872, 40.521027, 23.374846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242058, 40.754223, 23.282606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.231300, 40.439739, 23.035654>,  <44.224846, 40.251049, 22.887484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.231300, 40.439739, 23.035654>,  <44.242058, 40.754223, 23.282606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231300, 40.439739, 23.035654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381640, 0.562747, -0.733258,
		0.923920, -0.255336, 0.284914,
		-0.026893, -0.786206, -0.617379,
		44.223232, 40.203876, 22.850441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840366, 40.759480, 22.976995>,  <44.242058, 40.754223, 23.282606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840366, 40.759480, 22.976995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.612259, 40.538410, 22.733898>,  <44.475395, 40.405769, 22.588039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.612259, 40.538410, 22.733898>,  <44.840366, 40.759480, 22.976995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612259, 40.538410, 22.733898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328098, 0.525017, -0.785308,
		0.753092, -0.647235, -0.118069,
		-0.570267, -0.552670, -0.607742,
		44.441177, 40.372608, 22.551575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241734, 40.593304, 22.462030>,  <44.840366, 40.759480, 22.976995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241734, 40.593304, 22.462030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.881485, 40.552509, 22.293043>,  <44.665337, 40.528034, 22.191650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.881485, 40.552509, 22.293043>,  <45.241734, 40.593304, 22.462030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881485, 40.552509, 22.293043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254750, 0.663681, -0.703299,
		0.352110, -0.741030, -0.571745,
		-0.900622, -0.101987, -0.422466,
		44.611298, 40.521912, 22.166304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282269, 40.595207, 21.751976>,  <45.241734, 40.593304, 22.462030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282269, 40.595207, 21.751976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.893261, 40.685299, 21.775541>,  <44.659855, 40.739353, 21.789680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.893261, 40.685299, 21.775541>,  <45.282269, 40.595207, 21.751976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893261, 40.685299, 21.775541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130747, 0.737780, -0.662258,
		-0.192626, -0.636358, -0.746956,
		-0.972523, 0.225230, 0.058914,
		44.601505, 40.752869, 21.793215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021599, 40.655125, 21.074152>,  <45.282269, 40.595207, 21.751976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021599, 40.655125, 21.074152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.782150, 40.864498, 21.316694>,  <44.638481, 40.990124, 21.462219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.782150, 40.864498, 21.316694>,  <45.021599, 40.655125, 21.074152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782150, 40.864498, 21.316694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208681, 0.832737, -0.512836,
		-0.773370, -0.180462, -0.607727,
		-0.598624, 0.523433, 0.606355,
		44.602562, 41.021526, 21.498600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709328, 41.146667, 20.587517>,  <45.021599, 40.655125, 21.074152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709328, 41.146667, 20.587517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.658955, 41.300278, 20.953396>,  <44.628731, 41.392445, 21.172922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.658955, 41.300278, 20.953396>,  <44.709328, 41.146667, 20.587517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658955, 41.300278, 20.953396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311036, 0.890829, -0.331180,
		-0.942018, 0.242798, -0.231625,
		-0.125929, 0.384022, 0.914696,
		44.621178, 41.415485, 21.227804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221298, 41.710579, 20.540823>,  <44.709328, 41.146667, 20.587517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221298, 41.710579, 20.540823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.463558, 41.766060, 20.854242>,  <44.608913, 41.799347, 21.042294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.463558, 41.766060, 20.854242>,  <44.221298, 41.710579, 20.540823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463558, 41.766060, 20.854242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292603, 0.876882, -0.381395,
		-0.739980, 0.460261, 0.490500,
		0.605651, 0.138703, 0.783548,
		44.645252, 41.807671, 21.089306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167496, 42.337166, 20.856659>,  <44.221298, 41.710579, 20.540823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167496, 42.337166, 20.856659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.545547, 42.206806, 20.847567>,  <44.772377, 42.128590, 20.842112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.545547, 42.206806, 20.847567>,  <44.167496, 42.337166, 20.856659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545547, 42.206806, 20.847567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222144, 0.692130, -0.686737,
		0.239544, 0.644006, 0.726550,
		0.945130, -0.325902, -0.022733,
		44.829086, 42.109035, 20.840746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738247, 42.898769, 21.030487>,  <44.167496, 42.337166, 20.856659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738247, 42.898769, 21.030487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.871243, 42.603176, 20.796103>,  <44.951042, 42.425819, 20.655472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.871243, 42.603176, 20.796103>,  <44.738247, 42.898769, 21.030487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871243, 42.603176, 20.796103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242738, 0.667432, -0.703997,
		0.911332, 0.091839, 0.401296,
		0.332493, -0.738985, -0.585960,
		44.970989, 42.381481, 20.620314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120693, 42.657799, 21.553417>,  <44.738247, 42.898769, 21.030487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120693, 42.657799, 21.553417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.862236, 42.919006, 21.395393>,  <43.707161, 43.075729, 21.300579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.862236, 42.919006, 21.395393>,  <44.120693, 42.657799, 21.553417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862236, 42.919006, 21.395393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725428, -0.364611, 0.583792,
		0.237182, 0.663800, 0.709305,
		-0.646141, 0.653015, -0.395060,
		43.668392, 43.114910, 21.276875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840458, 43.088680, 22.147652>,  <44.120693, 42.657799, 21.553417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840458, 43.088680, 22.147652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.569637, 43.110020, 21.854052>,  <43.407146, 43.122826, 21.677893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.569637, 43.110020, 21.854052>,  <43.840458, 43.088680, 22.147652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569637, 43.110020, 21.854052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719863, -0.255317, 0.645454,
		-0.152966, 0.965384, 0.211269,
		-0.677052, 0.053352, -0.733999,
		43.366520, 43.126026, 21.633852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268291, 43.497589, 22.420860>,  <43.840458, 43.088680, 22.147652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268291, 43.497589, 22.420860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.095253, 43.316914, 22.108747>,  <42.991428, 43.208508, 21.921480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.095253, 43.316914, 22.108747>,  <43.268291, 43.497589, 22.420860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095253, 43.316914, 22.108747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737040, -0.321278, 0.594603,
		-0.519261, 0.832322, -0.193927,
		-0.432597, -0.451687, -0.780282,
		42.965473, 43.181408, 21.874662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484276, 43.688686, 22.461075>,  <43.268291, 43.497589, 22.420860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484276, 43.688686, 22.461075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.523834, 43.363060, 22.232157>,  <42.547569, 43.167686, 22.094807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.523834, 43.363060, 22.232157>,  <42.484276, 43.688686, 22.461075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523834, 43.363060, 22.232157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808373, -0.401109, 0.430864,
		-0.580302, 0.420014, -0.697737,
		0.098899, -0.814064, -0.572293,
		42.553505, 43.118839, 22.060469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828484, 43.522045, 22.158579>,  <42.484276, 43.688686, 22.461075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828484, 43.522045, 22.158579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.024467, 43.173409, 22.152075>,  <42.142059, 42.964226, 22.148172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.024467, 43.173409, 22.152075>,  <41.828484, 43.522045, 22.158579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024467, 43.173409, 22.152075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734036, -0.422553, 0.531638,
		-0.470244, -0.248545, -0.846815,
		0.489961, -0.871593, -0.016262,
		42.171455, 42.911930, 22.147198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381840, 43.063770, 21.841017>,  <41.828484, 43.522045, 22.158579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381840, 43.063770, 21.841017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.644333, 42.848022, 22.052086>,  <41.801830, 42.718575, 22.178726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.644333, 42.848022, 22.052086>,  <41.381840, 43.063770, 21.841017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644333, 42.848022, 22.052086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750677, -0.537516, 0.384135,
		0.076439, -0.648193, -0.757630,
		0.656232, -0.539373, 0.527671,
		41.841202, 42.686211, 22.210386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068523, 42.396545, 21.813452>,  <41.381840, 43.063770, 21.841017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068523, 42.396545, 21.813452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.315445, 42.388657, 22.128044>,  <41.463596, 42.383923, 22.316799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.315445, 42.388657, 22.128044>,  <41.068523, 42.396545, 21.813452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315445, 42.388657, 22.128044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630584, -0.610173, 0.479639,
		0.470429, -0.792023, -0.389096,
		0.617301, -0.019722, 0.786480,
		41.500637, 42.382740, 22.363989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275974, 41.641792, 21.755896>,  <41.068523, 42.396545, 21.813452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275974, 41.641792, 21.755896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.332043, 41.799145, 22.119347>,  <41.365685, 41.893559, 22.337418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.332043, 41.799145, 22.119347>,  <41.275974, 41.641792, 21.755896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332043, 41.799145, 22.119347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578724, -0.712058, 0.397559,
		0.803387, -0.581569, 0.127851,
		0.140171, 0.393384, 0.908626,
		41.374092, 41.917160, 22.391935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430630, 41.100288, 22.165413>,  <41.275974, 41.641792, 21.755896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430630, 41.100288, 22.165413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321232, 41.380184, 22.429401>,  <41.255592, 41.548122, 22.587795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.321232, 41.380184, 22.429401>,  <41.430630, 41.100288, 22.165413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321232, 41.380184, 22.429401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624400, -0.651070, 0.431546,
		0.731659, -0.294061, 0.614982,
		-0.273496, 0.699739, 0.659973,
		41.239182, 41.590107, 22.627394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438484, 40.773300, 22.863214>,  <41.430630, 41.100288, 22.165413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438484, 40.773300, 22.863214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.216473, 41.102993, 22.908077>,  <41.083263, 41.300808, 22.934996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.216473, 41.102993, 22.908077>,  <41.438484, 40.773300, 22.863214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216473, 41.102993, 22.908077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595200, -0.487705, 0.638655,
		0.581100, 0.287718, 0.761276,
		-0.555031, 0.824234, 0.112156,
		41.049965, 41.350262, 22.941725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502739, 40.929455, 23.534117>,  <41.438484, 40.773300, 22.863214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502739, 40.929455, 23.534117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.168076, 41.096684, 23.392567>,  <40.967278, 41.197021, 23.307636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.168076, 41.096684, 23.392567>,  <41.502739, 40.929455, 23.534117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168076, 41.096684, 23.392567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538171, -0.507265, 0.673093,
		0.101889, 0.753593, 0.649397,
		-0.836655, 0.418067, -0.353877,
		40.917080, 41.222103, 23.286404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281990, 41.222389, 24.057289>,  <41.502739, 40.929455, 23.534117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281990, 41.222389, 24.057289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.973709, 41.175304, 23.806797>,  <40.788742, 41.147053, 23.656502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.973709, 41.175304, 23.806797>,  <41.281990, 41.222389, 24.057289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973709, 41.175304, 23.806797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455796, -0.584937, 0.670894,
		-0.445276, 0.802492, 0.397160,
		-0.770700, -0.117708, -0.626231,
		40.742500, 41.139992, 23.618927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666611, 41.148884, 24.503998>,  <41.281990, 41.222389, 24.057289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666611, 41.148884, 24.503998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.502819, 41.051785, 24.152225>,  <40.404545, 40.993523, 23.941162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.502819, 41.051785, 24.152225>,  <40.666611, 41.148884, 24.503998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502819, 41.051785, 24.152225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725368, -0.498009, 0.475213,
		-0.553323, 0.832501, 0.027840,
		-0.409480, -0.242752, -0.879430,
		40.379974, 40.978958, 23.888397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302349, 41.844757, 24.562027>,  <40.666611, 41.148884, 24.503998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302349, 41.844757, 24.562027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.281265, 42.043671, 24.908422>,  <40.268616, 42.163017, 25.116259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.281265, 42.043671, 24.908422>,  <40.302349, 41.844757, 24.562027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281265, 42.043671, 24.908422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444758, 0.788124, -0.425501,
		-0.894099, 0.362728, -0.262710,
		-0.052707, 0.497282, 0.865987,
		40.265453, 42.192856, 25.168219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179859, 42.543442, 24.322683>,  <40.302349, 41.844757, 24.562027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179859, 42.543442, 24.322683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.312389, 42.602055, 24.695511>,  <40.391907, 42.637222, 24.919207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.312389, 42.602055, 24.695511>,  <40.179859, 42.543442, 24.322683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312389, 42.602055, 24.695511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376729, 0.885158, -0.273076,
		-0.865043, 0.441614, 0.238069,
		0.331323, 0.146535, 0.932069,
		40.411785, 42.646015, 24.975132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034061, 43.194138, 24.563503>,  <40.179859, 42.543442, 24.322683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034061, 43.194138, 24.563503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.309242, 43.118061, 24.843660>,  <40.474350, 43.072414, 25.011755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.309242, 43.118061, 24.843660>,  <40.034061, 43.194138, 24.563503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309242, 43.118061, 24.843660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335700, 0.938998, -0.074756,
		-0.643451, 0.286551, 0.709830,
		0.687951, -0.190188, 0.700394,
		40.515629, 43.061005, 25.053780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022354, 43.832546, 24.948599>,  <40.034061, 43.194138, 24.563503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022354, 43.832546, 24.948599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.359634, 43.622288, 24.993708>,  <40.562000, 43.496132, 25.020773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.359634, 43.622288, 24.993708>,  <40.022354, 43.832546, 24.948599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359634, 43.622288, 24.993708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537575, 0.826642, -0.166362,
		-0.005773, 0.200899, 0.979595,
		0.843196, -0.525646, 0.112770,
		40.612595, 43.464596, 25.027538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488186, 44.246639, 25.372431>,  <40.022354, 43.832546, 24.948599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488186, 44.246639, 25.372431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.721859, 43.984337, 25.181135>,  <40.862064, 43.826954, 25.066357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.721859, 43.984337, 25.181135>,  <40.488186, 44.246639, 25.372431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721859, 43.984337, 25.181135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605379, 0.744531, -0.281406,
		0.540599, -0.125124, 0.831924,
		0.584182, -0.655757, -0.478240,
		40.897114, 43.787609, 25.037663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206944, 44.340981, 25.641306>,  <40.488186, 44.246639, 25.372431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206944, 44.340981, 25.641306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.212597, 44.158909, 25.285191>,  <41.215988, 44.049667, 25.071522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.212597, 44.158909, 25.285191>,  <41.206944, 44.340981, 25.641306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212597, 44.158909, 25.285191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646465, 0.683418, -0.339149,
		0.762812, -0.570748, 0.303914,
		0.014132, -0.455177, -0.890289,
		41.216835, 44.022354, 25.018105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939976, 44.285416, 25.392244>,  <41.206944, 44.340981, 25.641306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939976, 44.285416, 25.392244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704540, 44.279896, 25.068920>,  <41.563278, 44.276585, 24.874926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.704540, 44.279896, 25.068920>,  <41.939976, 44.285416, 25.392244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704540, 44.279896, 25.068920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588850, 0.677749, -0.440355,
		0.553908, -0.735164, -0.390794,
		-0.588593, -0.013797, -0.808312,
		41.527962, 44.275757, 24.826427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614643, 44.099815, 25.528639>,  <41.939976, 44.285416, 25.392244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614643, 44.099815, 25.528639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.665070, 44.439186, 25.734268>,  <42.695324, 44.642811, 25.857647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.665070, 44.439186, 25.734268>,  <42.614643, 44.099815, 25.528639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665070, 44.439186, 25.734268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220298, -0.481327, 0.848406,
		0.967252, -0.220202, 0.126231,
		0.126062, 0.848431, 0.514075,
		42.702888, 44.693714, 25.888491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011726, 43.969402, 26.202467>,  <42.614643, 44.099815, 25.528639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011726, 43.969402, 26.202467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.791904, 44.300060, 26.250872>,  <42.660011, 44.498455, 26.279915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.791904, 44.300060, 26.250872>,  <43.011726, 43.969402, 26.202467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791904, 44.300060, 26.250872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328455, -0.346958, 0.878486,
		0.768181, 0.443033, 0.462190,
		-0.549558, 0.826645, 0.121010,
		42.627037, 44.548054, 26.287174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986843, 43.882820, 26.957384>,  <43.011726, 43.969402, 26.202467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986843, 43.882820, 26.957384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.734810, 44.169971, 26.838957>,  <42.583591, 44.342262, 26.767900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.734810, 44.169971, 26.838957>,  <42.986843, 43.882820, 26.957384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734810, 44.169971, 26.838957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518234, -0.104792, 0.848795,
		0.578302, 0.688241, 0.438054,
		-0.630079, 0.717874, -0.296068,
		42.545788, 44.385334, 26.750135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918911, 44.288410, 27.530596>,  <42.986843, 43.882820, 26.957384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918911, 44.288410, 27.530596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.588486, 44.336029, 27.310249>,  <42.390232, 44.364601, 27.178041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.588486, 44.336029, 27.310249>,  <42.918911, 44.288410, 27.530596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588486, 44.336029, 27.310249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560339, -0.068790, 0.825402,
		0.060371, 0.990502, 0.123534,
		-0.826060, 0.119051, -0.550864,
		42.340668, 44.371746, 27.144991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438484, 44.725529, 27.955812>,  <42.918911, 44.288410, 27.530596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438484, 44.725529, 27.955812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.193356, 44.591488, 27.669552>,  <42.046280, 44.511063, 27.497795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.193356, 44.591488, 27.669552>,  <42.438484, 44.725529, 27.955812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193356, 44.591488, 27.669552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662907, -0.274936, 0.696394,
		-0.430121, 0.901175, -0.053655,
		-0.612822, -0.335102, -0.715651,
		42.009510, 44.490955, 27.454857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769985, 45.076534, 27.941565>,  <42.438484, 44.725529, 27.955812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769985, 45.076534, 27.941565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.700245, 44.722755, 27.768429>,  <41.658401, 44.510487, 27.664547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.700245, 44.722755, 27.768429>,  <41.769985, 45.076534, 27.941565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700245, 44.722755, 27.768429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770102, -0.151458, 0.619680,
		-0.613633, 0.441373, -0.654710,
		-0.174350, -0.884449, -0.432842,
		41.647942, 44.457420, 27.638577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011574, 45.031357, 27.818056>,  <41.769985, 45.076534, 27.941565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011574, 45.031357, 27.818056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.147530, 44.656078, 27.791918>,  <41.229103, 44.430912, 27.776234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.147530, 44.656078, 27.791918>,  <41.011574, 45.031357, 27.818056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147530, 44.656078, 27.791918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716061, -0.303207, 0.628746,
		-0.609699, -0.166910, -0.774860,
		0.339887, -0.938193, -0.065348,
		41.249496, 44.374619, 27.772314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<46.513283, 42.769020, 23.827894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.207729, 42.659809, 23.593992>,  <46.024399, 42.594280, 23.453651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.207729, 42.659809, 23.593992>,  <46.513283, 42.769020, 23.827894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.207729, 42.659809, 23.593992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609677, 0.008204, 0.792607,
		-0.211608, 0.961971, -0.172726,
		-0.763882, -0.273029, -0.584755,
		45.978565, 42.577900, 23.418566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983448, 43.263248, 23.995949>,  <46.513283, 42.769020, 23.827894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983448, 43.263248, 23.995949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.884453, 42.889111, 23.894852>,  <45.825058, 42.664627, 23.834194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.884453, 42.889111, 23.894852>,  <45.983448, 43.263248, 23.995949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884453, 42.889111, 23.894852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481897, -0.107473, 0.869612,
		-0.840551, 0.337012, -0.424142,
		-0.247486, -0.935346, -0.252742,
		45.810207, 42.608505, 23.819029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265018, 43.262569, 24.046190>,  <45.983448, 43.263248, 23.995949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265018, 43.262569, 24.046190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.372478, 42.878929, 24.081854>,  <45.436954, 42.648743, 24.103252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.372478, 42.878929, 24.081854>,  <45.265018, 43.262569, 24.046190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372478, 42.878929, 24.081854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594528, -0.092276, 0.798763,
		-0.757869, -0.267591, -0.595003,
		0.268646, -0.959104, 0.089158,
		45.453072, 42.591198, 24.108601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649284, 42.898197, 24.228081>,  <45.265018, 43.262569, 24.046190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649284, 42.898197, 24.228081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.922188, 42.621796, 24.323610>,  <45.085930, 42.455956, 24.380928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.922188, 42.621796, 24.323610>,  <44.649284, 42.898197, 24.228081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922188, 42.621796, 24.323610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582481, -0.316316, 0.748772,
		-0.441865, -0.649963, -0.618307,
		0.682254, -0.691009, 0.238823,
		45.126865, 42.414494, 24.395258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278633, 42.383751, 24.606678>,  <44.649284, 42.898197, 24.228081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278633, 42.383751, 24.606678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.651466, 42.266064, 24.691208>,  <44.875164, 42.195450, 24.741926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.651466, 42.266064, 24.691208>,  <44.278633, 42.383751, 24.606678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651466, 42.266064, 24.691208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347313, -0.560039, 0.752151,
		-0.102948, -0.774462, -0.624188,
		0.932081, -0.294221, 0.211325,
		44.931091, 42.177799, 24.754606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244991, 41.743019, 24.669230>,  <44.278633, 42.383751, 24.606678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244991, 41.743019, 24.669230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.583302, 41.821114, 24.867844>,  <44.786289, 41.867970, 24.987011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.583302, 41.821114, 24.867844>,  <44.244991, 41.743019, 24.669230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583302, 41.821114, 24.867844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307861, -0.581499, 0.753047,
		0.435758, -0.789773, -0.431711,
		0.845776, 0.195239, 0.496533,
		44.837036, 41.879684, 25.016804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592506, 41.071411, 24.864910>,  <44.244991, 41.743019, 24.669230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592506, 41.071411, 24.864910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.689018, 41.353577, 25.131495>,  <44.746925, 41.522877, 25.291445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.689018, 41.353577, 25.131495>,  <44.592506, 41.071411, 24.864910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689018, 41.353577, 25.131495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069886, -0.672338, 0.736938,
		0.967936, -0.224383, -0.112922,
		0.241278, 0.705417, 0.666462,
		44.761402, 41.565201, 25.331432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048485, 40.772110, 25.310442>,  <44.592506, 41.071411, 24.864910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048485, 40.772110, 25.310442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.905376, 41.084991, 25.514465>,  <44.819511, 41.272720, 25.636879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.905376, 41.084991, 25.514465>,  <45.048485, 40.772110, 25.310442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.905376, 41.084991, 25.514465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211662, -0.599925, 0.771550,
		0.909505, 0.168078, 0.380198,
		-0.357771, 0.782202, 0.510059,
		44.798046, 41.319653, 25.667482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259102, 40.643089, 26.038422>,  <45.048485, 40.772110, 25.310442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259102, 40.643089, 26.038422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.984707, 40.930168, 26.086306>,  <44.820068, 41.102417, 26.115036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.984707, 40.930168, 26.086306>,  <45.259102, 40.643089, 26.038422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.984707, 40.930168, 26.086306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242826, -0.380907, 0.892158,
		0.685900, 0.582939, 0.435573,
		-0.685986, 0.717699, 0.119711,
		44.778912, 41.145477, 26.122219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343761, 40.796925, 26.721760>,  <45.259102, 40.643089, 26.038422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343761, 40.796925, 26.721760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.981991, 40.938431, 26.626381>,  <44.764927, 41.023335, 26.569153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.981991, 40.938431, 26.626381>,  <45.343761, 40.796925, 26.721760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.981991, 40.938431, 26.626381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348094, -0.288781, 0.891872,
		0.246652, 0.889639, 0.384325,
		-0.904430, 0.353764, -0.238449,
		44.710663, 41.044559, 26.554846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164825, 41.287907, 27.290792>,  <45.343761, 40.796925, 26.721760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164825, 41.287907, 27.290792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.823700, 41.173412, 27.116083>,  <44.619022, 41.104713, 27.011257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.823700, 41.173412, 27.116083>,  <45.164825, 41.287907, 27.290792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823700, 41.173412, 27.116083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348350, -0.311291, 0.884167,
		-0.389048, 0.906182, 0.165762,
		-0.852815, -0.286240, -0.436775,
		44.567856, 41.087540, 26.985050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648136, 41.630772, 27.697287>,  <45.164825, 41.287907, 27.290792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648136, 41.630772, 27.697287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.508377, 41.295925, 27.528929>,  <44.424522, 41.095016, 27.427914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.508377, 41.295925, 27.528929>,  <44.648136, 41.630772, 27.697287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508377, 41.295925, 27.528929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305880, -0.322689, 0.895717,
		-0.885640, 0.441705, -0.143312,
		-0.349398, -0.837119, -0.420895,
		44.403557, 41.044788, 27.402660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272690, 42.213810, 27.904226>,  <44.648136, 41.630772, 27.697287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272690, 42.213810, 27.904226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.095020, 42.550655, 28.026569>,  <43.988419, 42.752762, 28.099976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.095020, 42.550655, 28.026569>,  <44.272690, 42.213810, 27.904226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095020, 42.550655, 28.026569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533749, 0.522905, -0.664592,
		-0.719598, -0.131945, -0.681740,
		-0.444175, 0.842117, 0.305856,
		43.961769, 42.803291, 28.118326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149925, 42.569809, 27.189341>,  <44.272690, 42.213810, 27.904226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149925, 42.569809, 27.189341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.144939, 42.828743, 27.494184>,  <44.141949, 42.984104, 27.677090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.144939, 42.828743, 27.494184>,  <44.149925, 42.569809, 27.189341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144939, 42.828743, 27.494184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431425, 0.691056, -0.579926,
		-0.902063, 0.321566, -0.287885,
		-0.012460, 0.647330, 0.762108,
		44.141201, 43.022942, 27.722816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909019, 43.208748, 26.899624>,  <44.149925, 42.569809, 27.189341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909019, 43.208748, 26.899624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.111679, 43.302738, 27.231428>,  <44.233276, 43.359131, 27.430511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.111679, 43.302738, 27.231428>,  <43.909019, 43.208748, 26.899624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.111679, 43.302738, 27.231428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498066, 0.705575, -0.504079,
		-0.703728, 0.668544, 0.240449,
		0.506653, 0.234975, 0.829511,
		44.263676, 43.373230, 27.480282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044872, 43.922852, 26.824266>,  <43.909019, 43.208748, 26.899624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044872, 43.922852, 26.824266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.314266, 43.785450, 27.086082>,  <44.475903, 43.703007, 27.243172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.314266, 43.785450, 27.086082>,  <44.044872, 43.922852, 26.824266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314266, 43.785450, 27.086082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668885, 0.660123, -0.341805,
		-0.314667, 0.668013, 0.674347,
		0.673482, -0.343506, 0.654542,
		44.516312, 43.682400, 27.282446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322048, 44.403786, 27.309389>,  <44.044872, 43.922852, 26.824266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322048, 44.403786, 27.309389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.602966, 44.121548, 27.271631>,  <44.771519, 43.952206, 27.248976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.602966, 44.121548, 27.271631>,  <44.322048, 44.403786, 27.309389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602966, 44.121548, 27.271631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551464, 0.623086, -0.554663,
		0.450187, 0.337482, 0.826703,
		0.702296, -0.705599, -0.094396,
		44.813656, 43.909866, 27.243313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869133, 44.807640, 27.185595>,  <44.322048, 44.403786, 27.309389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869133, 44.807640, 27.185595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.008743, 44.441113, 27.107059>,  <45.092510, 44.221195, 27.059938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.008743, 44.441113, 27.107059>,  <44.869133, 44.807640, 27.185595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008743, 44.441113, 27.107059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651462, 0.387857, -0.652046,
		0.673631, 0.099673, 0.732316,
		0.349025, -0.916315, -0.196339,
		45.113449, 44.166218, 27.048159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583900, 44.896580, 27.283119>,  <44.869133, 44.807640, 27.185595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583900, 44.896580, 27.283119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.511940, 44.564762, 27.071648>,  <45.468765, 44.365673, 26.944765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.511940, 44.564762, 27.071648>,  <45.583900, 44.896580, 27.283119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511940, 44.564762, 27.071648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637161, 0.311198, -0.705111,
		0.749441, -0.463703, 0.472565,
		-0.179901, -0.829540, -0.528678,
		45.457970, 44.315899, 26.913044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.177528, 44.669773, 27.093878>,  <45.583900, 44.896580, 27.283119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.177528, 44.669773, 27.093878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.940872, 44.481899, 26.831776>,  <45.798878, 44.369175, 26.674515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.940872, 44.481899, 26.831776>,  <46.177528, 44.669773, 27.093878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940872, 44.481899, 26.831776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513738, 0.406734, -0.755407,
		0.621317, -0.783559, 0.000654,
		-0.591640, -0.469684, -0.655255,
		45.763382, 44.340996, 26.635199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.590195, 44.319038, 26.594831>,  <46.177528, 44.669773, 27.093878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.590195, 44.319038, 26.594831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.233841, 44.394821, 26.429701>,  <46.020027, 44.440289, 26.330622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.233841, 44.394821, 26.429701>,  <46.590195, 44.319038, 26.594831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233841, 44.394821, 26.429701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449723, 0.495531, -0.743100,
		0.063785, -0.847677, -0.526665,
		-0.890888, 0.189454, -0.412827,
		45.966576, 44.451656, 26.305853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.810959, 44.286427, 26.003901>,  <46.590195, 44.319038, 26.594831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.810959, 44.286427, 26.003901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.452095, 44.459103, 25.966482>,  <46.236778, 44.562710, 25.944031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.452095, 44.459103, 25.966482>,  <46.810959, 44.286427, 26.003901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452095, 44.459103, 25.966482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380663, 0.648194, -0.659500,
		-0.224066, -0.627284, -0.745861,
		-0.897157, 0.431694, -0.093546,
		46.182949, 44.588612, 25.938419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.705826, 44.360825, 25.266705>,  <46.810959, 44.286427, 26.003901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.705826, 44.360825, 25.266705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.438011, 44.612980, 25.423845>,  <46.277321, 44.764271, 25.518129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.438011, 44.612980, 25.423845>,  <46.705826, 44.360825, 25.266705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438011, 44.612980, 25.423845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179644, 0.650623, -0.737846,
		-0.720726, -0.423443, -0.548862,
		-0.669538, 0.630385, 0.392852,
		46.237148, 44.802097, 25.541700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239780, 44.455040, 24.793457>,  <46.705826, 44.360825, 25.266705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239780, 44.455040, 24.793457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.212128, 44.777203, 25.028925>,  <46.195538, 44.970501, 25.170206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.212128, 44.777203, 25.028925>,  <46.239780, 44.455040, 24.793457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.212128, 44.777203, 25.028925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027753, 0.591407, -0.805895,
		-0.997222, -0.039372, -0.063235,
		-0.069127, 0.805411, 0.588672,
		46.191391, 45.018826, 25.205526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862701, 44.853554, 24.404472>,  <46.239780, 44.455040, 24.793457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862701, 44.853554, 24.404472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.043697, 45.087448, 24.673796>,  <46.152294, 45.227783, 24.835390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.043697, 45.087448, 24.673796>,  <45.862701, 44.853554, 24.404472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043697, 45.087448, 24.673796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118884, 0.708729, -0.695392,
		-0.883811, 0.394701, 0.251175,
		0.452487, 0.584734, 0.673306,
		46.179443, 45.262867, 24.875788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102596, 44.734074, 24.245142>,  <45.862701, 44.853554, 24.404472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102596, 44.734074, 24.245142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.953602, 45.047112, 24.045622>,  <44.864204, 45.234936, 23.925911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.953602, 45.047112, 24.045622>,  <45.102596, 44.734074, 24.245142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953602, 45.047112, 24.045622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742393, 0.071240, 0.666166,
		0.556873, 0.618442, 0.554456,
		-0.372486, 0.782594, -0.498799,
		44.841858, 45.281891, 23.895983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108109, 45.283169, 24.692122>,  <45.102596, 44.734074, 24.245142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108109, 45.283169, 24.692122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.825191, 45.381046, 24.426832>,  <44.655441, 45.439774, 24.267658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.825191, 45.381046, 24.426832>,  <45.108109, 45.283169, 24.692122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825191, 45.381046, 24.426832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663363, 0.094503, 0.742307,
		0.244315, 0.964983, 0.095480,
		-0.707291, 0.244695, -0.663223,
		44.613003, 45.454456, 24.227865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774872, 45.805630, 24.947794>,  <45.108109, 45.283169, 24.692122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774872, 45.805630, 24.947794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.498684, 45.709320, 24.674948>,  <44.332973, 45.651535, 24.511240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.498684, 45.709320, 24.674948>,  <44.774872, 45.805630, 24.947794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498684, 45.709320, 24.674948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723351, 0.235525, 0.649070,
		0.004376, 0.941571, -0.336787,
		-0.690467, -0.240775, -0.682116,
		44.291542, 45.637089, 24.470312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084747, 46.282230, 24.911770>,  <44.774872, 45.805630, 24.947794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084747, 46.282230, 24.911770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.948879, 45.941448, 24.752369>,  <43.867359, 45.736980, 24.656729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.948879, 45.941448, 24.752369>,  <44.084747, 46.282230, 24.911770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948879, 45.941448, 24.752369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809801, 0.049405, 0.584620,
		-0.478381, 0.521284, -0.706693,
		-0.339667, -0.851952, -0.398502,
		43.846977, 45.685863, 24.632818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389294, 46.403885, 24.821449>,  <44.084747, 46.282230, 24.911770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389294, 46.403885, 24.821449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.462292, 46.010899, 24.836746>,  <43.506092, 45.775108, 24.845924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.462292, 46.010899, 24.836746>,  <43.389294, 46.403885, 24.821449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462292, 46.010899, 24.836746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782359, -0.121548, 0.610852,
		-0.595491, -0.141397, -0.790821,
		0.182495, -0.982463, 0.038242,
		43.517040, 45.716160, 24.848219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716301, 46.091541, 24.686390>,  <43.389294, 46.403885, 24.821449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716301, 46.091541, 24.686390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.957279, 45.824444, 24.861290>,  <43.101864, 45.664185, 24.966230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.957279, 45.824444, 24.861290>,  <42.716301, 46.091541, 24.686390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957279, 45.824444, 24.861290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766895, -0.332426, 0.548967,
		-0.221216, -0.666043, -0.712355,
		0.602441, -0.667742, 0.437247,
		43.138012, 45.624123, 24.992464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370804, 45.485767, 24.724010>,  <42.716301, 46.091541, 24.686390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370804, 45.485767, 24.724010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.642250, 45.440952, 25.014372>,  <42.805119, 45.414062, 25.188589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.642250, 45.440952, 25.014372>,  <42.370804, 45.485767, 24.724010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642250, 45.440952, 25.014372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625373, -0.606463, 0.491031,
		0.385220, -0.787179, -0.481616,
		0.678612, -0.112035, 0.725902,
		42.845833, 45.407341, 25.232143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352768, 44.815361, 25.005505>,  <42.370804, 45.485767, 24.724010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352768, 44.815361, 25.005505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.561291, 44.977596, 25.305836>,  <42.686405, 45.074936, 25.486034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.561291, 44.977596, 25.305836>,  <42.352768, 44.815361, 25.005505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561291, 44.977596, 25.305836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536599, -0.528339, 0.657966,
		0.663554, -0.745893, -0.057786,
		0.521303, 0.405588, 0.750827,
		42.717682, 45.099274, 25.531084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562153, 44.425529, 24.520254>,  <42.352768, 44.815361, 25.005505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562153, 44.425529, 24.520254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.178169, 44.447899, 24.410458>,  <41.947777, 44.461319, 24.344580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.178169, 44.447899, 24.410458>,  <42.562153, 44.425529, 24.520254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178169, 44.447899, 24.410458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244508, 0.645456, -0.723604,
		0.136708, -0.761748, -0.633286,
		-0.959962, 0.055922, -0.274493,
		41.890182, 44.464676, 24.328110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599625, 44.506226, 23.805037>,  <42.562153, 44.425529, 24.520254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599625, 44.506226, 23.805037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.230511, 44.620361, 23.908613>,  <42.009045, 44.688843, 23.970760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.230511, 44.620361, 23.908613>,  <42.599625, 44.506226, 23.805037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230511, 44.620361, 23.908613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051749, 0.757707, -0.650540,
		-0.381830, -0.586907, -0.713965,
		-0.922783, 0.285342, 0.258944,
		41.953674, 44.705963, 23.986296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177528, 44.510616, 23.149523>,  <42.599625, 44.506226, 23.805037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177528, 44.510616, 23.149523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.993221, 44.745239, 23.415949>,  <41.882637, 44.886013, 23.575804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.993221, 44.745239, 23.415949>,  <42.177528, 44.510616, 23.149523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993221, 44.745239, 23.415949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250402, 0.634071, -0.731609,
		-0.851465, -0.503885, -0.145282,
		-0.460766, 0.586561, 0.666064,
		41.854992, 44.921207, 23.615768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474194, 44.644657, 22.909798>,  <42.177528, 44.510616, 23.149523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474194, 44.644657, 22.909798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.566704, 44.933533, 23.170549>,  <41.622211, 45.106857, 23.327000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.566704, 44.933533, 23.170549>,  <41.474194, 44.644657, 22.909798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566704, 44.933533, 23.170549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042725, 0.676939, -0.734798,
		-0.971949, 0.142092, 0.187417,
		0.231279, 0.722194, 0.651879,
		41.636086, 45.150192, 23.366114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065502, 45.229561, 22.687773>,  <41.474194, 44.644657, 22.909798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065502, 45.229561, 22.687773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.354752, 45.380440, 22.919228>,  <41.528301, 45.470966, 23.058100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.354752, 45.380440, 22.919228>,  <41.065502, 45.229561, 22.687773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354752, 45.380440, 22.919228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194108, 0.692995, -0.694319,
		-0.662885, 0.614395, 0.427904,
		0.723122, 0.377194, 0.578636,
		41.571690, 45.493599, 23.092819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997723, 45.924831, 22.555010>,  <41.065502, 45.229561, 22.687773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997723, 45.924831, 22.555010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.349075, 45.907444, 22.745401>,  <41.559887, 45.897011, 22.859636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.349075, 45.907444, 22.745401>,  <40.997723, 45.924831, 22.555010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349075, 45.907444, 22.745401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336629, 0.763216, -0.551527,
		-0.339303, 0.644679, 0.685027,
		0.878382, -0.043465, 0.475979,
		41.612591, 45.894405, 22.888195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135498, 46.609314, 23.004007>,  <40.997723, 45.924831, 22.555010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135498, 46.609314, 23.004007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.471279, 46.418304, 22.900249>,  <41.672749, 46.303699, 22.837996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.471279, 46.418304, 22.900249>,  <41.135498, 46.609314, 23.004007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471279, 46.418304, 22.900249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325323, 0.823940, -0.463991,
		0.435291, 0.305114, 0.847011,
		0.839456, -0.477524, -0.259393,
		41.723114, 46.275047, 22.822432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600784, 47.129902, 22.968941>,  <41.135498, 46.609314, 23.004007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600784, 47.129902, 22.968941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.800259, 46.847523, 22.767761>,  <41.919941, 46.678097, 22.647053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.800259, 46.847523, 22.767761>,  <41.600784, 47.129902, 22.968941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800259, 46.847523, 22.767761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308459, 0.686796, -0.658152,
		0.810042, 0.173071, 0.560249,
		0.498683, -0.705945, -0.502948,
		41.949863, 46.635738, 22.616877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277916, 47.344692, 22.673384>,  <41.600784, 47.129902, 22.968941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277916, 47.344692, 22.673384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.220745, 47.029598, 22.433702>,  <42.186443, 46.840542, 22.289894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.220745, 47.029598, 22.433702>,  <42.277916, 47.344692, 22.673384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220745, 47.029598, 22.433702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079206, 0.594376, -0.800278,
		0.986559, -0.161843, -0.022560,
		-0.142928, -0.787734, -0.599205,
		42.177868, 46.793278, 22.253941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.966866, 36.977711, 31.833895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258099, 36.716156, 31.751608>,  <34.432838, 36.559223, 31.702236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258099, 36.716156, 31.751608>,  <33.966866, 36.977711, 31.833895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258099, 36.716156, 31.751608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589896, 0.750536, -0.297857,
		0.349163, 0.095514, 0.932181,
		0.728085, -0.653890, -0.205716,
		34.476524, 36.519989, 31.689894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609905, 37.271538, 32.036003>,  <33.966866, 36.977711, 31.833895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609905, 37.271538, 32.036003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.702358, 36.977280, 31.781315>,  <34.757828, 36.800724, 31.628502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.702358, 36.977280, 31.781315>,  <34.609905, 37.271538, 32.036003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702358, 36.977280, 31.781315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725417, 0.566412, -0.391083,
		0.648343, -0.371496, 0.664562,
		0.231130, -0.735641, -0.636719,
		34.771698, 36.756588, 31.590300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320030, 37.291382, 31.958981>,  <34.609905, 37.271538, 32.036003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320030, 37.291382, 31.958981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195004, 37.093063, 31.634886>,  <35.119987, 36.974072, 31.440428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195004, 37.093063, 31.634886>,  <35.320030, 37.291382, 31.958981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195004, 37.093063, 31.634886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738765, 0.409295, -0.535448,
		0.597100, -0.765939, 0.238346,
		-0.312567, -0.495797, -0.810239,
		35.101234, 36.944324, 31.391813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943676, 37.058678, 31.635120>,  <35.320030, 37.291382, 31.958981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943676, 37.058678, 31.635120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661526, 37.059826, 31.351589>,  <35.492237, 37.060516, 31.181471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661526, 37.059826, 31.351589>,  <35.943676, 37.058678, 31.635120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661526, 37.059826, 31.351589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680898, 0.280726, -0.676440,
		0.197042, -0.959784, -0.199975,
		-0.705374, 0.002876, -0.708830,
		35.449913, 37.060688, 31.138941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298538, 36.914707, 30.981819>,  <35.943676, 37.058678, 31.635120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298538, 36.914707, 30.981819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951389, 37.093216, 30.894514>,  <35.743099, 37.200321, 30.842131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951389, 37.093216, 30.894514>,  <36.298538, 36.914707, 30.981819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951389, 37.093216, 30.894514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449143, 0.517111, -0.728606,
		-0.212288, -0.730369, -0.649226,
		-0.867873, 0.446270, -0.218264,
		35.691029, 37.227097, 30.829035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388481, 36.970798, 30.338356>,  <36.298538, 36.914707, 30.981819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388481, 36.970798, 30.338356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089924, 37.229874, 30.399538>,  <35.910789, 37.385319, 30.436247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089924, 37.229874, 30.399538>,  <36.388481, 36.970798, 30.338356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089924, 37.229874, 30.399538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432116, 0.646461, -0.628779,
		-0.506132, -0.403224, -0.762392,
		-0.746396, 0.647687, 0.152955,
		35.866005, 37.424179, 30.445425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294174, 37.207928, 29.754810>,  <36.388481, 36.970798, 30.338356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294174, 37.207928, 29.754810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141891, 37.475204, 30.010490>,  <36.050522, 37.635571, 30.163898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141891, 37.475204, 30.010490>,  <36.294174, 37.207928, 29.754810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141891, 37.475204, 30.010490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302650, 0.743225, -0.596674,
		-0.873763, -0.033705, -0.485182,
		-0.380710, 0.668192, 0.639201,
		36.027679, 37.675663, 30.202251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017948, 37.692001, 29.320112>,  <36.294174, 37.207928, 29.754810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017948, 37.692001, 29.320112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.030052, 37.900753, 29.661104>,  <36.037315, 38.026005, 29.865700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.030052, 37.900753, 29.661104>,  <36.017948, 37.692001, 29.320112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030052, 37.900753, 29.661104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254553, 0.820727, -0.511478,
		-0.966585, 0.232477, -0.108015,
		0.030256, 0.521882, 0.852481,
		36.039127, 38.057320, 29.916849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551571, 38.362442, 29.220297>,  <36.017948, 37.692001, 29.320112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551571, 38.362442, 29.220297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824581, 38.406338, 29.509327>,  <35.988388, 38.432674, 29.682745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824581, 38.406338, 29.509327>,  <35.551571, 38.362442, 29.220297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824581, 38.406338, 29.509327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327941, 0.837566, -0.436965,
		-0.653155, 0.535202, 0.535674,
		0.682527, 0.109737, 0.722575,
		36.029339, 38.439259, 29.726099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476547, 39.132812, 29.414711>,  <35.551571, 38.362442, 29.220297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476547, 39.132812, 29.414711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828548, 39.002441, 29.552912>,  <36.039749, 38.924221, 29.635832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828548, 39.002441, 29.552912>,  <35.476547, 39.132812, 29.414711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828548, 39.002441, 29.552912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448069, 0.810987, -0.376210,
		-0.157581, 0.485874, 0.859706,
		0.880001, -0.325924, 0.345502,
		36.092548, 38.904663, 29.656563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854164, 39.723690, 29.703974>,  <35.476547, 39.132812, 29.414711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854164, 39.723690, 29.703974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158653, 39.469444, 29.652548>,  <36.341347, 39.316895, 29.621693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158653, 39.469444, 29.652548>,  <35.854164, 39.723690, 29.703974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158653, 39.469444, 29.652548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527696, 0.722366, -0.446905,
		0.376931, 0.272352, 0.885295,
		0.761223, -0.635619, -0.128563,
		36.387020, 39.278759, 29.613979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473175, 40.041756, 29.971945>,  <35.854164, 39.723690, 29.703974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473175, 40.041756, 29.971945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584778, 39.771458, 29.699028>,  <36.651741, 39.609280, 29.535278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.584778, 39.771458, 29.699028>,  <36.473175, 40.041756, 29.971945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584778, 39.771458, 29.699028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638041, 0.661451, -0.394190,
		0.717676, -0.325349, 0.615702,
		0.279008, -0.675744, -0.682294,
		36.668480, 39.568733, 29.494339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211060, 40.153679, 30.282160>,  <36.473175, 40.041756, 29.971945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211060, 40.153679, 30.282160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094955, 40.501854, 30.441200>,  <37.025291, 40.710758, 30.536625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094955, 40.501854, 30.441200>,  <37.211060, 40.153679, 30.282160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094955, 40.501854, 30.441200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452110, -0.490930, 0.744704,
		0.843412, 0.036400, 0.536032,
		-0.290261, 0.870438, 0.397600,
		37.007877, 40.762985, 30.560480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347912, 40.136604, 30.993484>,  <37.211060, 40.153679, 30.282160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347912, 40.136604, 30.993484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.080353, 40.433670, 31.006268>,  <36.919815, 40.611908, 31.013937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.080353, 40.433670, 31.006268>,  <37.347912, 40.136604, 30.993484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080353, 40.433670, 31.006268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310493, -0.318196, 0.895738,
		0.675401, 0.589238, 0.443433,
		-0.668901, 0.742665, 0.031956,
		36.879684, 40.656471, 31.015854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297382, 40.314293, 31.702520>,  <37.347912, 40.136604, 30.993484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297382, 40.314293, 31.702520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963860, 40.464531, 31.540688>,  <36.763744, 40.554672, 31.443588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963860, 40.464531, 31.540688>,  <37.297382, 40.314293, 31.702520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963860, 40.464531, 31.540688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511905, -0.251674, 0.821348,
		0.206671, 0.891958, 0.402117,
		-0.833811, 0.375595, -0.404584,
		36.713715, 40.577209, 31.419312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972851, 40.543198, 32.214577>,  <37.297382, 40.314293, 31.702520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972851, 40.543198, 32.214577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675873, 40.560207, 31.947155>,  <36.497684, 40.570415, 31.786703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675873, 40.560207, 31.947155>,  <36.972851, 40.543198, 32.214577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675873, 40.560207, 31.947155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669829, -0.061892, 0.739931,
		-0.009910, 0.997176, 0.074438,
		-0.742449, 0.042528, -0.668551,
		36.453136, 40.572968, 31.746590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434074, 41.016369, 32.439869>,  <36.972851, 40.543198, 32.214577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434074, 41.016369, 32.439869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258400, 40.755188, 32.193047>,  <36.152996, 40.598480, 32.044952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258400, 40.755188, 32.193047>,  <36.434074, 41.016369, 32.439869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258400, 40.755188, 32.193047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677302, -0.210602, 0.704917,
		-0.590235, 0.727526, -0.349755,
		-0.439187, -0.652957, -0.617059,
		36.126644, 40.559299, 32.007927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651539, 41.205093, 32.321842>,  <36.434074, 41.016369, 32.439869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651539, 41.205093, 32.321842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667301, 40.817307, 32.225025>,  <35.676758, 40.584637, 32.166935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667301, 40.817307, 32.225025>,  <35.651539, 41.205093, 32.321842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667301, 40.817307, 32.225025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824024, -0.168538, 0.540907,
		-0.565184, 0.178135, -0.805503,
		0.039403, -0.969465, -0.242042,
		35.679123, 40.526466, 32.152412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996975, 41.050831, 32.297707>,  <35.651539, 41.205093, 32.321842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996975, 41.050831, 32.297707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175114, 40.694809, 32.336639>,  <35.281998, 40.481197, 32.359997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175114, 40.694809, 32.336639>,  <34.996975, 41.050831, 32.297707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175114, 40.694809, 32.336639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709833, -0.284719, 0.644261,
		-0.545715, -0.356006, -0.758587,
		0.445345, -0.890053, 0.097330,
		35.308716, 40.427792, 32.365837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426544, 40.649326, 32.472664>,  <34.996975, 41.050831, 32.297707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426544, 40.649326, 32.472664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756001, 40.449390, 32.579834>,  <34.953674, 40.329430, 32.644135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756001, 40.449390, 32.579834>,  <34.426544, 40.649326, 32.472664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756001, 40.449390, 32.579834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477756, -0.356994, 0.802686,
		-0.305566, -0.789124, -0.532834,
		0.823637, -0.499838, 0.267923,
		35.003090, 40.299438, 32.660210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077690, 40.033127, 32.714931>,  <34.426544, 40.649326, 32.472664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077690, 40.033127, 32.714931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447475, 40.045555, 32.866936>,  <34.669346, 40.053013, 32.958138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447475, 40.045555, 32.866936>,  <34.077690, 40.033127, 32.714931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447475, 40.045555, 32.866936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312490, -0.509320, 0.801837,
		0.218460, -0.860016, -0.461137,
		0.924460, 0.031068, 0.380013,
		34.724812, 40.054874, 32.980938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276772, 39.357906, 32.834293>,  <34.077690, 40.033127, 32.714931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276772, 39.357906, 32.834293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.521893, 39.566322, 33.071949>,  <34.668964, 39.691372, 33.214542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.521893, 39.566322, 33.071949>,  <34.276772, 39.357906, 32.834293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521893, 39.566322, 33.071949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271411, -0.567336, 0.777474,
		0.742167, -0.637691, -0.206249,
		0.612800, 0.521038, 0.594135,
		34.705734, 39.722633, 33.250191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617249, 38.777908, 33.228981>,  <34.276772, 39.357906, 32.834293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617249, 38.777908, 33.228981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708195, 39.116001, 33.422428>,  <34.762760, 39.318859, 33.538494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708195, 39.116001, 33.422428>,  <34.617249, 38.777908, 33.228981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708195, 39.116001, 33.422428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071692, -0.480744, 0.873925,
		0.971167, -0.233370, -0.048707,
		0.227364, 0.845236, 0.483614,
		34.776405, 39.369572, 33.567513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291847, 38.682304, 33.731762>,  <34.617249, 38.777908, 33.228981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291847, 38.682304, 33.731762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064579, 38.977230, 33.877941>,  <34.928219, 39.154186, 33.965649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.064579, 38.977230, 33.877941>,  <35.291847, 38.682304, 33.731762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064579, 38.977230, 33.877941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114751, -0.510740, 0.852043,
		0.814869, 0.442173, 0.374796,
		-0.568174, 0.737311, 0.365446,
		34.894127, 39.198425, 33.987576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508736, 38.724270, 34.393486>,  <35.291847, 38.682304, 33.731762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508736, 38.724270, 34.393486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.152054, 38.905315, 34.393974>,  <34.938046, 39.013943, 34.394268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.152054, 38.905315, 34.393974>,  <35.508736, 38.724270, 34.393486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152054, 38.905315, 34.393974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283382, -0.560398, 0.778234,
		0.352927, 0.693609, 0.627973,
		-0.891705, 0.452616, 0.001223,
		34.884544, 39.041100, 34.394341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448441, 38.855480, 35.054005>,  <35.508736, 38.724270, 34.393486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448441, 38.855480, 35.054005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093384, 38.826817, 34.872040>,  <34.880348, 38.809620, 34.762859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093384, 38.826817, 34.872040>,  <35.448441, 38.855480, 35.054005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093384, 38.826817, 34.872040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300619, -0.658163, 0.690253,
		-0.348873, 0.749457, 0.562673,
		-0.887646, -0.071660, -0.454916,
		34.827091, 38.805317, 34.735565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020920, 38.648170, 35.174850>,  <35.448441, 38.855480, 35.054005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020920, 38.648170, 35.174850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357857, 38.674362, 35.388832>,  <36.560020, 38.690079, 35.517220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357857, 38.674362, 35.388832>,  <36.020920, 38.648170, 35.174850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357857, 38.674362, 35.388832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446008, 0.472519, -0.760133,
		-0.302548, 0.878884, 0.368818,
		0.842343, 0.065480, 0.534950,
		36.610561, 38.694008, 35.549316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297630, 39.250690, 35.034344>,  <36.020920, 38.648170, 35.174850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297630, 39.250690, 35.034344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612862, 39.078968, 35.210812>,  <36.802002, 38.975933, 35.316692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612862, 39.078968, 35.210812>,  <36.297630, 39.250690, 35.034344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612862, 39.078968, 35.210812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603198, 0.681555, -0.414288,
		-0.122822, 0.592602, 0.796076,
		0.788078, -0.429308, 0.441166,
		36.849285, 38.950176, 35.343163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714138, 39.710182, 35.452793>,  <36.297630, 39.250690, 35.034344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714138, 39.710182, 35.452793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959301, 39.416637, 35.335632>,  <37.106400, 39.240513, 35.265335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959301, 39.416637, 35.335632>,  <36.714138, 39.710182, 35.452793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959301, 39.416637, 35.335632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669234, 0.679206, -0.301338,
		0.420082, -0.011328, 0.907416,
		0.612909, -0.733860, -0.292903,
		37.143173, 39.196480, 35.247761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353565, 39.933353, 35.791351>,  <36.714138, 39.710182, 35.452793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353565, 39.933353, 35.791351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.412270, 39.672832, 35.493553>,  <37.447491, 39.516521, 35.314877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.412270, 39.672832, 35.493553>,  <37.353565, 39.933353, 35.791351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412270, 39.672832, 35.493553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681793, 0.611904, -0.400913,
		0.716673, -0.448752, 0.533856,
		0.146758, -0.651303, -0.744491,
		37.456299, 39.477440, 35.270206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138721, 39.955135, 35.553284>,  <37.353565, 39.933353, 35.791351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138721, 39.955135, 35.553284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977036, 39.776932, 35.233749>,  <37.880024, 39.670010, 35.042030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.977036, 39.776932, 35.233749>,  <38.138721, 39.955135, 35.553284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977036, 39.776932, 35.233749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647056, 0.478006, -0.593994,
		0.646477, -0.756989, 0.095053,
		-0.404211, -0.445508, -0.798834,
		37.855770, 39.643280, 34.994099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636116, 39.555367, 35.196281>,  <38.138721, 39.955135, 35.553284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636116, 39.555367, 35.196281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345646, 39.675766, 34.949032>,  <38.171364, 39.748005, 34.800682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345646, 39.675766, 34.949032>,  <38.636116, 39.555367, 35.196281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345646, 39.675766, 34.949032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686223, 0.372348, -0.624864,
		0.042074, -0.877929, -0.476940,
		-0.726174, 0.300996, -0.618121,
		38.127792, 39.766064, 34.763596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868645, 39.415119, 34.561798>,  <38.636116, 39.555367, 35.196281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868645, 39.415119, 34.561798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.563202, 39.652557, 34.460178>,  <38.379936, 39.795021, 34.399204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.563202, 39.652557, 34.460178>,  <38.868645, 39.415119, 34.561798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563202, 39.652557, 34.460178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548252, 0.388254, -0.740729,
		-0.341059, -0.704911, -0.621915,
		-0.763609, 0.593599, -0.254051,
		38.334118, 39.830635, 34.383965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997379, 39.512115, 33.803055>,  <38.868645, 39.415119, 34.561798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997379, 39.512115, 33.803055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.726627, 39.797276, 33.876377>,  <38.564175, 39.968372, 33.920372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.726627, 39.797276, 33.876377>,  <38.997379, 39.512115, 33.803055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726627, 39.797276, 33.876377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396928, 0.563219, -0.724730,
		-0.619904, -0.417795, -0.664203,
		-0.676880, 0.712904, 0.183307,
		38.523563, 40.011147, 33.931370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560574, 39.692963, 33.141804>,  <38.997379, 39.512115, 33.803055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560574, 39.692963, 33.141804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.574474, 39.998356, 33.399761>,  <38.582813, 40.181591, 33.554535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.574474, 39.998356, 33.399761>,  <38.560574, 39.692963, 33.141804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574474, 39.998356, 33.399761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402493, 0.579944, -0.708282,
		-0.914763, 0.284175, -0.287146,
		0.034747, 0.763485, 0.644890,
		38.584900, 40.227402, 33.593227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209305, 40.310371, 32.823940>,  <38.560574, 39.692963, 33.141804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209305, 40.310371, 32.823940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.473846, 40.432423, 33.098022>,  <38.632572, 40.505653, 33.262474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.473846, 40.432423, 33.098022>,  <38.209305, 40.310371, 32.823940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473846, 40.432423, 33.098022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383182, 0.647883, -0.658346,
		-0.644812, 0.697959, 0.311561,
		0.661354, 0.305125, 0.685208,
		38.672253, 40.523960, 33.303585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405552, 40.968700, 32.560078>,  <38.209305, 40.310371, 32.823940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405552, 40.968700, 32.560078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.705948, 40.907551, 32.817024>,  <38.886185, 40.870861, 32.971191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.705948, 40.907551, 32.817024>,  <38.405552, 40.968700, 32.560078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705948, 40.907551, 32.817024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545996, 0.690870, -0.473906,
		-0.371347, 0.706632, 0.602306,
		0.750992, -0.152873, 0.642371,
		38.931244, 40.861691, 33.009735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763912, 41.581078, 32.615040>,  <38.405552, 40.968700, 32.560078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763912, 41.581078, 32.615040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.039223, 41.337727, 32.773106>,  <39.204411, 41.191715, 32.867947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.039223, 41.337727, 32.773106>,  <38.763912, 41.581078, 32.615040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039223, 41.337727, 32.773106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707132, 0.440994, -0.552710,
		0.161990, 0.659850, 0.733728,
		0.688275, -0.608376, 0.395165,
		39.245705, 41.155212, 32.891655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290401, 42.021614, 32.704132>,  <38.763912, 41.581078, 32.615040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290401, 42.021614, 32.704132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.481506, 41.670273, 32.697842>,  <39.596169, 41.459469, 32.694069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.481506, 41.670273, 32.697842>,  <39.290401, 42.021614, 32.704132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481506, 41.670273, 32.697842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732108, 0.407980, -0.545500,
		0.485556, 0.249105, 0.837963,
		0.477759, -0.878350, -0.015726,
		39.624832, 41.406769, 32.693123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026802, 42.235424, 32.836544>,  <39.290401, 42.021614, 32.704132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026802, 42.235424, 32.836544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.019978, 41.871883, 32.669838>,  <40.015884, 41.653759, 32.569813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.019978, 41.871883, 32.669838>,  <40.026802, 42.235424, 32.836544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019978, 41.871883, 32.669838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696723, 0.288161, -0.656917,
		0.717137, -0.301577, 0.628304,
		-0.017058, -0.908854, -0.416766,
		40.014858, 41.599228, 32.544807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744152, 42.099720, 32.795227>,  <40.026802, 42.235424, 32.836544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744152, 42.099720, 32.795227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.542767, 41.877655, 32.530407>,  <40.421936, 41.744415, 32.371513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.542767, 41.877655, 32.530407>,  <40.744152, 42.099720, 32.795227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542767, 41.877655, 32.530407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673974, 0.227114, -0.702978,
		0.540629, -0.800133, 0.259822,
		-0.503467, -0.555164, -0.662053,
		40.391727, 41.711105, 32.331791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264175, 41.829933, 32.451782>,  <40.744152, 42.099720, 32.795227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264175, 41.829933, 32.451782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.958206, 41.765114, 32.202423>,  <40.774624, 41.726223, 32.052807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.958206, 41.765114, 32.202423>,  <41.264175, 41.829933, 32.451782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958206, 41.765114, 32.202423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553668, 0.329150, -0.764927,
		0.329150, -0.930269, -0.162052,
		0.764927, 0.162052, 0.623399,
		40.728729, 41.716499, 32.015404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530739, 41.451832, 31.873138>,  <41.264175, 41.829933, 32.451782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530739, 41.451832, 31.873138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.190266, 41.613705, 31.739441>,  <40.985981, 41.710827, 31.659222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.190266, 41.613705, 31.739441>,  <41.530739, 41.451832, 31.873138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190266, 41.613705, 31.739441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420381, 0.144328, -0.895795,
		-0.314268, -0.902997, -0.292969,
		-0.851185, 0.404679, -0.334245,
		40.934910, 41.735107, 31.639168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499893, 41.108620, 31.302212>,  <41.530739, 41.451832, 31.873138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499893, 41.108620, 31.302212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.257534, 41.425812, 31.276688>,  <41.112118, 41.616127, 31.261374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.257534, 41.425812, 31.276688>,  <41.499893, 41.108620, 31.302212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257534, 41.425812, 31.276688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374248, 0.213334, -0.902456,
		-0.702018, -0.570674, -0.426030,
		-0.605895, 0.792982, -0.063809,
		41.075768, 41.663708, 31.257545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260666, 40.992428, 30.606873>,  <41.499893, 41.108620, 31.302212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260666, 40.992428, 30.606873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.192024, 41.374870, 30.701878>,  <41.150841, 41.604336, 30.758881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.192024, 41.374870, 30.701878>,  <41.260666, 40.992428, 30.606873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192024, 41.374870, 30.701878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455309, 0.290767, -0.841515,
		-0.873639, -0.036266, -0.485221,
		-0.171605, 0.956106, 0.237513,
		41.140541, 41.661701, 30.773132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008648, 41.285992, 29.942934>,  <41.260666, 40.992428, 30.606873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008648, 41.285992, 29.942934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.156548, 41.586262, 30.161943>,  <41.245285, 41.766422, 30.293348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.156548, 41.586262, 30.161943>,  <41.008648, 41.285992, 29.942934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156548, 41.586262, 30.161943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530108, 0.313523, -0.787838,
		-0.763068, 0.581547, -0.282013,
		0.369747, 0.750671, 0.547522,
		41.267471, 41.811462, 30.326200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796131, 41.861546, 29.590952>,  <41.008648, 41.285992, 29.942934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796131, 41.861546, 29.590952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.108486, 41.935741, 29.829548>,  <41.295898, 41.980259, 29.972706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.108486, 41.935741, 29.829548>,  <40.796131, 41.861546, 29.590952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108486, 41.935741, 29.829548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463277, 0.468569, -0.752208,
		-0.419026, 0.863733, 0.279968,
		0.780892, 0.185492, 0.596491,
		41.342754, 41.991390, 30.008495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077011, 42.516834, 29.436228>,  <40.796131, 41.861546, 29.590952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077011, 42.516834, 29.436228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.372635, 42.313820, 29.613407>,  <41.550007, 42.192013, 29.719715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.372635, 42.313820, 29.613407>,  <41.077011, 42.516834, 29.436228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372635, 42.313820, 29.613407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643541, 0.337576, -0.686948,
		0.199121, 0.792749, 0.576107,
		0.739057, -0.507535, 0.442948,
		41.594353, 42.161560, 29.746292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628971, 43.016785, 29.446014>,  <41.077011, 42.516834, 29.436228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628971, 43.016785, 29.446014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.804996, 42.669598, 29.538084>,  <41.910614, 42.461285, 29.593327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.804996, 42.669598, 29.538084>,  <41.628971, 43.016785, 29.446014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804996, 42.669598, 29.538084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857675, 0.330356, -0.394028,
		0.265962, 0.370814, 0.889810,
		0.440065, -0.867964, 0.230176,
		41.937016, 42.409210, 29.607138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334126, 43.316303, 29.499441>,  <41.628971, 43.016785, 29.446014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334126, 43.316303, 29.499441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.364536, 42.920433, 29.450829>,  <42.382782, 42.682911, 29.421661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.364536, 42.920433, 29.450829>,  <42.334126, 43.316303, 29.499441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364536, 42.920433, 29.450829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905272, 0.119606, -0.407647,
		0.417973, -0.079023, 0.905016,
		0.076031, -0.989672, -0.121529,
		42.387344, 42.623531, 29.414370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990810, 43.005096, 29.783833>,  <42.334126, 43.316303, 29.499441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990810, 43.005096, 29.783833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.869633, 42.735939, 29.513889>,  <42.796925, 42.574444, 29.351923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.869633, 42.735939, 29.513889>,  <42.990810, 43.005096, 29.783833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869633, 42.735939, 29.513889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865759, 0.101679, -0.490022,
		0.398353, -0.732716, 0.551763,
		-0.302945, -0.672896, -0.674859,
		42.778748, 42.534069, 29.311432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512169, 42.549980, 29.740047>,  <42.990810, 43.005096, 29.783833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512169, 42.549980, 29.740047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.301640, 42.529930, 29.400524>,  <43.175323, 42.517899, 29.196810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.301640, 42.529930, 29.400524>,  <43.512169, 42.549980, 29.740047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301640, 42.529930, 29.400524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820106, 0.233679, -0.522323,
		0.224527, -0.971021, -0.081887,
		-0.526322, -0.050120, -0.848807,
		43.143745, 42.514893, 29.145882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926064, 42.213364, 29.248634>,  <43.512169, 42.549980, 29.740047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926064, 42.213364, 29.248634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.662457, 42.382431, 28.999781>,  <43.504292, 42.483871, 28.850468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.662457, 42.382431, 28.999781>,  <43.926064, 42.213364, 29.248634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662457, 42.382431, 28.999781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742880, 0.236447, -0.626276,
		-0.117606, -0.874896, -0.469815,
		-0.659013, 0.422670, -0.622135,
		43.464752, 42.509232, 28.813141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255257, 42.107956, 28.639160>,  <43.926064, 42.213364, 29.248634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255257, 42.107956, 28.639160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.969738, 42.374176, 28.551947>,  <43.798428, 42.533909, 28.499619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.969738, 42.374176, 28.551947>,  <44.255257, 42.107956, 28.639160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969738, 42.374176, 28.551947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615599, 0.447779, -0.648485,
		-0.333971, -0.597104, -0.729335,
		-0.713794, 0.665553, -0.218031,
		43.755600, 42.573841, 28.486538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123199, 41.438396, 28.203421>,  <44.255257, 42.107956, 28.639160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123199, 41.438396, 28.203421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.143463, 41.118019, 27.964783>,  <44.155621, 40.925793, 27.821600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.143463, 41.118019, 27.964783>,  <44.123199, 41.438396, 28.203421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143463, 41.118019, 27.964783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371229, -0.569659, 0.733264,
		-0.927158, 0.184329, -0.326191,
		0.050656, -0.800944, -0.596593,
		44.158661, 40.877735, 27.785805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422920, 40.983799, 28.355850>,  <44.123199, 41.438396, 28.203421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422920, 40.983799, 28.355850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.676216, 40.736996, 28.168957>,  <43.828194, 40.588913, 28.056820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.676216, 40.736996, 28.168957>,  <43.422920, 40.983799, 28.355850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676216, 40.736996, 28.168957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420375, -0.781082, 0.461732,
		-0.649842, -0.095972, -0.753986,
		0.633238, -0.617009, -0.467235,
		43.866188, 40.551891, 28.028786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071373, 40.357380, 28.192331>,  <43.422920, 40.983799, 28.355850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071373, 40.357380, 28.192331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.463749, 40.280079, 28.200451>,  <43.699173, 40.233696, 28.205322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.463749, 40.280079, 28.200451>,  <43.071373, 40.357380, 28.192331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463749, 40.280079, 28.200451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175237, -0.834624, 0.522202,
		-0.083976, -0.515805, -0.852580,
		0.980939, -0.193256, 0.020300,
		43.758030, 40.222103, 28.206541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096676, 39.641914, 28.070683>,  <43.071373, 40.357380, 28.192331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096676, 39.641914, 28.070683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.447491, 39.739456, 28.236254>,  <43.657978, 39.797981, 28.335596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.447491, 39.739456, 28.236254>,  <43.096676, 39.641914, 28.070683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447491, 39.739456, 28.236254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058193, -0.801330, 0.595385,
		0.476883, -0.546263, -0.688607,
		0.877038, 0.243857, 0.413929,
		43.710602, 39.812614, 28.360432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549355, 38.923264, 28.166702>,  <43.096676, 39.641914, 28.070683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549355, 38.923264, 28.166702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.693470, 39.194149, 28.423321>,  <43.779938, 39.356678, 28.577291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.693470, 39.194149, 28.423321>,  <43.549355, 38.923264, 28.166702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693470, 39.194149, 28.423321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011027, -0.690777, 0.722984,
		0.932777, -0.253406, -0.256344,
		0.360285, 0.677209, 0.641546,
		43.801556, 39.397312, 28.615786>
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
