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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<0.809276, 2.461003, 4.044546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.715805, 2.734802, 3.768326>,  <0.659723, 2.899082, 3.602594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.715805, 2.734802, 3.768326>,  <0.809276, 2.461003, 4.044546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.715805, 2.734802, 3.768326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780725, 0.555404, 0.286346,
		0.579537, -0.472217, -0.664189,
		-0.233676, 0.684497, -0.690550,
		0.645702, 2.940151, 3.561161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.460591, 2.622865, 3.898978>,  <0.809276, 2.461003, 4.044546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.460591, 2.622865, 3.898978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.222549, 2.917267, 3.769890>,  <1.079724, 3.093908, 3.692437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.222549, 2.917267, 3.769890>,  <1.460591, 2.622865, 3.898978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.222549, 2.917267, 3.769890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713328, 0.668720, 0.209706,
		0.370154, -0.105409, -0.922971,
		-0.595104, 0.736004, -0.322721,
		1.044018, 3.138068, 3.673074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.886461, 3.033808, 3.461824>,  <1.460591, 2.622865, 3.898978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.886461, 3.033808, 3.461824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.599457, 3.298981, 3.547333>,  <1.427254, 3.458085, 3.598638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.599457, 3.298981, 3.547333>,  <1.886461, 3.033808, 3.461824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.599457, 3.298981, 3.547333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691381, 0.715130, 0.102866,
		-0.084682, 0.221606, -0.971452,
		-0.717510, 0.662933, 0.213772,
		1.384204, 3.497861, 3.611465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.070536, 3.767239, 3.158799>,  <1.886461, 3.033808, 3.461824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.070536, 3.767239, 3.158799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.790976, 3.798889, 3.443130>,  <1.623239, 3.817879, 3.613729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.790976, 3.798889, 3.443130>,  <2.070536, 3.767239, 3.158799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.790976, 3.798889, 3.443130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391326, 0.874207, 0.287447,
		-0.598667, 0.479062, -0.641948,
		-0.698901, 0.079126, 0.710828,
		1.581305, 3.822627, 3.656379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.750879, 4.475007, 3.113411>,  <2.070536, 3.767239, 3.158799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.750879, 4.475007, 3.113411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.705118, 4.328896, 3.482948>,  <1.677662, 4.241229, 3.704670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.705118, 4.328896, 3.482948>,  <1.750879, 4.475007, 3.113411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.705118, 4.328896, 3.482948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337990, 0.860160, 0.381952,
		-0.934171, 0.355946, 0.025056,
		-0.114402, -0.365278, 0.923842,
		1.670798, 4.219312, 3.760101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.298277, 4.928847, 3.575755>,  <1.750879, 4.475007, 3.113411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.298277, 4.928847, 3.575755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.545507, 4.720947, 3.811668>,  <1.693846, 4.596208, 3.953216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.545507, 4.720947, 3.811668>,  <1.298277, 4.928847, 3.575755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.545507, 4.720947, 3.811668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301666, 0.849622, 0.432596,
		-0.725934, -0.089460, 0.681921,
		0.618076, -0.519749, 0.589783,
		1.730930, 4.565022, 3.988603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.232554, 5.322225, 4.143005>,  <1.298277, 4.928847, 3.575755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.232554, 5.322225, 4.143005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.549910, 5.104458, 4.251923>,  <1.740323, 4.973798, 4.317273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.549910, 5.104458, 4.251923>,  <1.232554, 5.322225, 4.143005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.549910, 5.104458, 4.251923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337788, 0.765893, 0.547089,
		-0.506394, -0.342077, 0.791548,
		0.793388, -0.544418, 0.272294,
		1.787926, 4.941133, 4.333611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.368142, 5.303350, 4.987716>,  <1.232554, 5.322225, 4.143005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.368142, 5.303350, 4.987716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.711037, 5.220196, 4.799278>,  <1.916773, 5.170303, 4.686216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.711037, 5.220196, 4.799278>,  <1.368142, 5.303350, 4.987716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.711037, 5.220196, 4.799278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481881, 0.646330, 0.591649,
		0.181486, -0.734194, 0.654234,
		0.857236, -0.207887, -0.471093,
		1.968208, 5.157830, 4.657950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.817036, 1.851142, 5.345734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.025944, 1.512756, 5.302689>,  <3.151289, 1.309725, 5.276862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.025944, 1.512756, 5.302689>,  <2.817036, 1.851142, 5.345734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.025944, 1.512756, 5.302689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725446, -0.374398, -0.577541,
		0.448289, 0.379699, -0.809237,
		0.522269, -0.845964, -0.107613,
		3.182625, 1.258967, 5.270405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.371235, 1.458486, 4.897997>,  <2.817036, 1.851142, 5.345734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.371235, 1.458486, 4.897997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.669884, 1.201057, 4.965370>,  <2.849074, 1.046600, 5.005794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.669884, 1.201057, 4.965370>,  <2.371235, 1.458486, 4.897997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.669884, 1.201057, 4.965370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516827, -0.720564, -0.462252,
		0.418859, 0.258077, -0.870605,
		0.746624, -0.643571, 0.168433,
		2.893871, 1.007986, 5.015900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.557871, 1.057325, 4.241488>,  <2.371235, 1.458486, 4.897997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.557871, 1.057325, 4.241488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.663843, 0.842644, 4.561928>,  <2.727427, 0.713835, 4.754192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.663843, 0.842644, 4.561928>,  <2.557871, 1.057325, 4.241488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.663843, 0.842644, 4.561928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562513, -0.760798, -0.323674,
		0.783192, -0.364878, -0.503462,
		0.264931, -0.536703, 0.801100,
		2.743323, 0.681633, 4.802258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.744891, 0.349061, 4.007452>,  <2.557871, 1.057325, 4.241488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.744891, 0.349061, 4.007452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.680110, 0.313332, 4.400551>,  <2.641242, 0.291894, 4.636410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.680110, 0.313332, 4.400551>,  <2.744891, 0.349061, 4.007452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.680110, 0.313332, 4.400551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474373, -0.866228, -0.156907,
		0.865299, -0.491600, 0.097914,
		-0.161951, -0.089324, 0.982748,
		2.631525, 0.286534, 4.695375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.122613, -0.224769, 4.298186>,  <2.744891, 0.349061, 4.007452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.122613, -0.224769, 4.298186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.753467, -0.116241, 4.407516>,  <2.531980, -0.051125, 4.473114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.753467, -0.116241, 4.407516>,  <3.122613, -0.224769, 4.298186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.753467, -0.116241, 4.407516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359204, -0.862360, -0.356801,
		0.138899, -0.427459, 0.893301,
		-0.922865, 0.271318, 0.273326,
		2.476608, -0.034846, 4.489514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.861696, -0.751947, 4.635426>,  <3.122613, -0.224769, 4.298186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.861696, -0.751947, 4.635426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.522512, -0.556694, 4.552780>,  <2.319001, -0.439542, 4.503193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.522512, -0.556694, 4.552780>,  <2.861696, -0.751947, 4.635426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.522512, -0.556694, 4.552780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377024, -0.829422, -0.412205,
		-0.372581, -0.271635, 0.887355,
		-0.847960, 0.488133, -0.206614,
		2.268124, -0.410254, 4.490796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.353480, -1.161013, 4.881920>,  <2.861696, -0.751947, 4.635426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.353480, -1.161013, 4.881920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.153333, -0.925446, 4.628052>,  <2.033244, -0.784105, 4.475731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.153333, -0.925446, 4.628052>,  <2.353480, -1.161013, 4.881920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.153333, -0.925446, 4.628052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531506, -0.787589, -0.311778,
		-0.683471, 0.181327, 0.707098,
		-0.500369, 0.588918, -0.634671,
		2.003222, -0.748770, 4.437650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.635378, -1.216273, 4.990849>,  <2.353480, -1.161013, 4.881920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.635378, -1.216273, 4.990849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.667976, -1.106026, 4.607727>,  <1.687535, -1.039877, 4.377853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.667976, -1.106026, 4.607727>,  <1.635378, -1.216273, 4.990849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.667976, -1.106026, 4.607727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640887, -0.721487, -0.262145,
		-0.763297, 0.635210, 0.117842,
		0.081495, 0.275618, -0.957807,
		1.692425, -1.023340, 4.320385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
