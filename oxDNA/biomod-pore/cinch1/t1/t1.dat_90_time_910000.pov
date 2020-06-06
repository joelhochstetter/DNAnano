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
	<43.412067, 32.173759, 23.620165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136932, 32.418201, 23.463482>,  <42.971851, 32.564865, 23.369473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136932, 32.418201, 23.463482>,  <43.412067, 32.173759, 23.620165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136932, 32.418201, 23.463482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247031, -0.310349, -0.917965,
		-0.682538, -0.728173, 0.062508,
		-0.687836, 0.611104, -0.391706,
		42.930580, 32.601532, 23.345970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087429, 31.656799, 23.309015>,  <43.412067, 32.173759, 23.620165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087429, 31.656799, 23.309015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116528, 32.000668, 23.106758>,  <43.133987, 32.206989, 22.985403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116528, 32.000668, 23.106758>,  <43.087429, 31.656799, 23.309015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116528, 32.000668, 23.106758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038651, -0.509035, -0.859877,
		-0.996601, 0.043013, -0.070260,
		0.072751, 0.859670, -0.505642,
		43.138351, 32.258568, 22.955065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510902, 31.673626, 22.751381>,  <43.087429, 31.656799, 23.309015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510902, 31.673626, 22.751381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853271, 31.870457, 22.687820>,  <43.058693, 31.988556, 22.649685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853271, 31.870457, 22.687820>,  <42.510902, 31.673626, 22.751381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853271, 31.870457, 22.687820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053932, -0.390567, -0.918994,
		-0.514279, 0.778020, -0.360835,
		0.855926, 0.492079, -0.158900,
		43.110050, 32.018082, 22.640150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457874, 32.037388, 22.121004>,  <42.510902, 31.673626, 22.751381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457874, 32.037388, 22.121004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831749, 31.911858, 22.187798>,  <43.056072, 31.836540, 22.227875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831749, 31.911858, 22.187798>,  <42.457874, 32.037388, 22.121004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831749, 31.911858, 22.187798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046883, -0.574463, -0.817187,
		0.352378, 0.755981, -0.551653,
		0.934682, -0.313822, 0.166985,
		43.112152, 31.817711, 22.237894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448620, 32.716534, 21.846947>,  <42.457874, 32.037388, 22.121004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448620, 32.716534, 21.846947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351082, 33.059608, 22.028015>,  <42.292557, 33.265453, 22.136656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351082, 33.059608, 22.028015>,  <42.448620, 32.716534, 21.846947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351082, 33.059608, 22.028015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001625, 0.467120, -0.884193,
		-0.969812, -0.214873, -0.115299,
		-0.243847, 0.857688, 0.452669,
		42.277927, 33.316914, 22.163816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192020, 33.295795, 21.303579>,  <42.448620, 32.716534, 21.846947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192020, 33.295795, 21.303579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848843, 33.495518, 21.255196>,  <41.642937, 33.615353, 21.226166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848843, 33.495518, 21.255196>,  <42.192020, 33.295795, 21.303579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848843, 33.495518, 21.255196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030022, 0.283771, 0.958422,
		0.512870, 0.818639, -0.258449,
		-0.857942, 0.499304, -0.120961,
		41.591461, 33.645309, 21.218908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253532, 34.010033, 21.557718>,  <42.192020, 33.295795, 21.303579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253532, 34.010033, 21.557718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867569, 33.906685, 21.576469>,  <41.635990, 33.844677, 21.587719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867569, 33.906685, 21.576469>,  <42.253532, 34.010033, 21.557718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867569, 33.906685, 21.576469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041554, 0.326518, 0.944277,
		-0.259274, 0.909194, -0.325796,
		-0.964909, -0.258365, 0.046877,
		41.578094, 33.829174, 21.590532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898502, 34.616272, 21.887457>,  <42.253532, 34.010033, 21.557718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898502, 34.616272, 21.887457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663170, 34.295952, 21.932320>,  <41.521969, 34.103760, 21.959238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663170, 34.295952, 21.932320>,  <41.898502, 34.616272, 21.887457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663170, 34.295952, 21.932320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052023, 0.175898, 0.983033,
		-0.806945, 0.572514, -0.145147,
		-0.588331, -0.800805, 0.112156,
		41.486671, 34.055710, 21.965967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316780, 34.838650, 22.239618>,  <41.898502, 34.616272, 21.887457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316780, 34.838650, 22.239618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277393, 34.444244, 22.293396>,  <41.253761, 34.207600, 22.325663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277393, 34.444244, 22.293396>,  <41.316780, 34.838650, 22.239618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277393, 34.444244, 22.293396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084953, 0.142937, 0.986079,
		-0.991508, 0.085670, -0.097839,
		-0.098463, -0.986017, 0.134445,
		41.247856, 34.148438, 22.333729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716637, 34.716293, 22.633112>,  <41.316780, 34.838650, 22.239618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716637, 34.716293, 22.633112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970364, 34.413391, 22.695351>,  <41.122601, 34.231651, 22.732695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970364, 34.413391, 22.695351>,  <40.716637, 34.716293, 22.633112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970364, 34.413391, 22.695351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094722, 0.123623, 0.987798,
		-0.767249, -0.641315, 0.006687,
		0.634316, -0.757253, 0.155596,
		41.160660, 34.186214, 22.742029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309597, 34.286011, 23.064999>,  <40.716637, 34.716293, 22.633112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309597, 34.286011, 23.064999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673111, 34.126049, 23.112633>,  <40.891220, 34.030071, 23.141212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673111, 34.126049, 23.112633>,  <40.309597, 34.286011, 23.064999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673111, 34.126049, 23.112633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138110, -0.018979, 0.990235,
		-0.393739, -0.916361, -0.072478,
		0.908788, -0.399904, 0.119086,
		40.945747, 34.006077, 23.148359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229343, 33.726395, 23.534687>,  <40.309597, 34.286011, 23.064999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229343, 33.726395, 23.534687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602005, 33.868031, 23.567272>,  <40.825603, 33.953011, 23.586824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602005, 33.868031, 23.567272>,  <40.229343, 33.726395, 23.534687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602005, 33.868031, 23.567272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076444, -0.028170, 0.996676,
		0.355205, -0.934788, 0.000823,
		0.931657, 0.354087, 0.081465,
		40.881504, 33.974258, 23.591711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458454, 33.417366, 24.095692>,  <40.229343, 33.726395, 23.534687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458454, 33.417366, 24.095692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724453, 33.712196, 24.047512>,  <40.884052, 33.889095, 24.018604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724453, 33.712196, 24.047512>,  <40.458454, 33.417366, 24.095692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724453, 33.712196, 24.047512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093205, 0.241922, 0.965809,
		0.741010, -0.631030, 0.229575,
		0.664994, 0.737072, -0.120451,
		40.923950, 33.933319, 24.011377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901566, 33.327621, 24.569180>,  <40.458454, 33.417366, 24.095692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901566, 33.327621, 24.569180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997448, 33.699795, 24.458309>,  <41.054977, 33.923100, 24.391787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997448, 33.699795, 24.458309>,  <40.901566, 33.327621, 24.569180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997448, 33.699795, 24.458309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140752, 0.249178, 0.958175,
		0.960587, -0.268697, -0.071231,
		0.239710, 0.930436, -0.277177,
		41.069363, 33.978928, 24.375156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468193, 33.449413, 24.939060>,  <40.901566, 33.327621, 24.569180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468193, 33.449413, 24.939060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335106, 33.818874, 24.862999>,  <41.255253, 34.040550, 24.817362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335106, 33.818874, 24.862999>,  <41.468193, 33.449413, 24.939060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335106, 33.818874, 24.862999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134923, 0.246193, 0.959784,
		0.933323, 0.293686, -0.206536,
		-0.332723, 0.923654, -0.190153,
		41.235291, 34.095970, 24.805954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919479, 33.940002, 25.149374>,  <41.468193, 33.449413, 24.939060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919479, 33.940002, 25.149374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567574, 34.130058, 25.155910>,  <41.356430, 34.244091, 25.159832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567574, 34.130058, 25.155910>,  <41.919479, 33.940002, 25.149374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567574, 34.130058, 25.155910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173658, 0.289164, 0.941396,
		0.442566, 0.831041, -0.336906,
		-0.879760, 0.475136, 0.016343,
		41.303646, 34.272598, 25.160814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025066, 34.543999, 25.571814>,  <41.919479, 33.940002, 25.149374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025066, 34.543999, 25.571814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625484, 34.535637, 25.555576>,  <41.385735, 34.530621, 25.545834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625484, 34.535637, 25.555576>,  <42.025066, 34.543999, 25.571814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625484, 34.535637, 25.555576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045577, 0.508963, 0.859581,
		0.002694, 0.860534, -0.509385,
		-0.998957, -0.020901, -0.040592,
		41.325798, 34.529366, 25.543398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763966, 35.272701, 25.646692>,  <42.025066, 34.543999, 25.571814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763966, 35.272701, 25.646692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463795, 35.029289, 25.749882>,  <41.283691, 34.883244, 25.811794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463795, 35.029289, 25.749882>,  <41.763966, 35.272701, 25.646692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463795, 35.029289, 25.749882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192902, 0.574955, 0.795120,
		-0.632178, 0.546916, -0.548848,
		-0.750427, -0.608531, 0.257973,
		41.238667, 34.846729, 25.827274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220932, 35.738251, 25.857023>,  <41.763966, 35.272701, 25.646692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220932, 35.738251, 25.857023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124313, 35.389057, 26.026516>,  <41.066341, 35.179539, 26.128212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124313, 35.389057, 26.026516>,  <41.220932, 35.738251, 25.857023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124313, 35.389057, 26.026516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213886, 0.473818, 0.854253,
		-0.946523, 0.115715, -0.301171,
		-0.241550, -0.872987, 0.423730,
		41.051849, 35.127159, 26.153635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585346, 35.849998, 26.291111>,  <41.220932, 35.738251, 25.857023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585346, 35.849998, 26.291111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730640, 35.500221, 26.419739>,  <40.817818, 35.290356, 26.496916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730640, 35.500221, 26.419739>,  <40.585346, 35.849998, 26.291111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730640, 35.500221, 26.419739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308324, 0.212876, 0.927157,
		-0.879201, -0.435925, -0.192288,
		0.363237, -0.874445, 0.321567,
		40.839611, 35.237888, 26.516209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068756, 35.653023, 26.744400>,  <40.585346, 35.849998, 26.291111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068756, 35.653023, 26.744400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385380, 35.439350, 26.863113>,  <40.575356, 35.311146, 26.934341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385380, 35.439350, 26.863113>,  <40.068756, 35.653023, 26.744400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385380, 35.439350, 26.863113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242485, 0.171225, 0.954926,
		-0.560919, -0.827849, 0.006005,
		0.791563, -0.534180, 0.296784,
		40.622849, 35.279095, 26.952148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853481, 35.219162, 27.219206>,  <40.068756, 35.653023, 26.744400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853481, 35.219162, 27.219206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243431, 35.203262, 27.306881>,  <40.477402, 35.193722, 27.359486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243431, 35.203262, 27.306881>,  <39.853481, 35.219162, 27.219206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243431, 35.203262, 27.306881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203552, 0.240775, 0.948996,
		-0.090496, -0.969767, 0.226634,
		0.974873, -0.039749, 0.219187,
		40.535892, 35.191338, 27.372637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871483, 34.941711, 27.849613>,  <39.853481, 35.219162, 27.219206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871483, 34.941711, 27.849613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243168, 35.087433, 27.824806>,  <40.466179, 35.174866, 27.809921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243168, 35.087433, 27.824806>,  <39.871483, 34.941711, 27.849613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243168, 35.087433, 27.824806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008647, 0.146339, 0.989197,
		0.369441, -0.919712, 0.132830,
		0.929214, 0.364301, -0.062017,
		40.521931, 35.196724, 27.806202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244736, 34.542522, 28.265314>,  <39.871483, 34.941711, 27.849613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244736, 34.542522, 28.265314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410419, 34.905685, 28.239563>,  <40.509830, 35.123581, 28.224113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410419, 34.905685, 28.239563>,  <40.244736, 34.542522, 28.265314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410419, 34.905685, 28.239563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019023, 0.079350, 0.996665,
		0.909985, -0.411599, 0.050138,
		0.414205, 0.907904, -0.064377,
		40.534679, 35.178055, 28.220249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800259, 34.530144, 28.764881>,  <40.244736, 34.542522, 28.265314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800259, 34.530144, 28.764881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756699, 34.923790, 28.708809>,  <40.730560, 35.159977, 28.675165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756699, 34.923790, 28.708809>,  <40.800259, 34.530144, 28.764881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756699, 34.923790, 28.708809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023015, 0.143477, 0.989386,
		0.993786, 0.104521, -0.038274,
		-0.108904, 0.984119, -0.140180,
		40.724026, 35.219025, 28.666756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034809, 34.789383, 29.367273>,  <40.800259, 34.530144, 28.764881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034809, 34.789383, 29.367273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795509, 35.078102, 29.228073>,  <40.651932, 35.251335, 29.144552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795509, 35.078102, 29.228073>,  <41.034809, 34.789383, 29.367273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795509, 35.078102, 29.228073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058325, 0.393915, 0.917295,
		0.799188, 0.569064, -0.193559,
		-0.598245, 0.721802, -0.348002,
		40.616035, 35.294643, 29.123672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357609, 35.330181, 29.370010>,  <41.034809, 34.789383, 29.367273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357609, 35.330181, 29.370010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970242, 35.426311, 29.396580>,  <40.737823, 35.483990, 29.412521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970242, 35.426311, 29.396580>,  <41.357609, 35.330181, 29.370010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970242, 35.426311, 29.396580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176205, 0.471155, 0.864271,
		0.176412, 0.848679, -0.498621,
		-0.968416, 0.240328, 0.066424,
		40.679718, 35.498409, 29.416508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249542, 35.835571, 29.964901>,  <41.357609, 35.330181, 29.370010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249542, 35.835571, 29.964901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862984, 35.799614, 29.868576>,  <40.631046, 35.778038, 29.810781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862984, 35.799614, 29.868576>,  <41.249542, 35.835571, 29.964901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862984, 35.799614, 29.868576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249987, 0.546683, 0.799152,
		0.059809, 0.832500, -0.550787,
		-0.966400, -0.089893, -0.240811,
		40.573063, 35.772648, 29.796333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052582, 36.515530, 29.968182>,  <41.249542, 35.835571, 29.964901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052582, 36.515530, 29.968182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743294, 36.269646, 30.030479>,  <40.557720, 36.122116, 30.067858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743294, 36.269646, 30.030479>,  <41.052582, 36.515530, 29.968182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743294, 36.269646, 30.030479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356221, 0.624240, 0.695291,
		-0.524625, 0.482136, -0.701650,
		-0.773224, -0.614710, 0.155745,
		40.511326, 36.085232, 30.077204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480164, 36.898224, 29.842531>,  <41.052582, 36.515530, 29.968182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480164, 36.898224, 29.842531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469479, 36.598083, 30.106731>,  <40.463066, 36.417999, 30.265251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469479, 36.598083, 30.106731>,  <40.480164, 36.898224, 29.842531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469479, 36.598083, 30.106731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094037, 0.659691, 0.745631,
		-0.995210, -0.042191, -0.088185,
		-0.026716, -0.750352, 0.660498,
		40.461464, 36.372978, 30.304880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876057, 37.137386, 30.346737>,  <40.480164, 36.898224, 29.842531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876057, 37.137386, 30.346737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161499, 36.923691, 30.528000>,  <40.332764, 36.795475, 30.636757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161499, 36.923691, 30.528000>,  <39.876057, 37.137386, 30.346737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161499, 36.923691, 30.528000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006786, 0.641562, 0.767041,
		-0.700511, -0.550443, 0.454199,
		0.713609, -0.534239, 0.453157,
		40.375584, 36.763420, 30.663946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678017, 36.873192, 30.916578>,  <39.876057, 37.137386, 30.346737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678017, 36.873192, 30.916578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066807, 36.962856, 30.944920>,  <40.300079, 37.016655, 30.961924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066807, 36.962856, 30.944920>,  <39.678017, 36.873192, 30.916578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066807, 36.962856, 30.944920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212000, 0.705490, 0.676269,
		0.101605, -0.672336, 0.733240,
		0.971973, 0.224159, 0.070854,
		40.358398, 37.030106, 30.966175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041443, 36.999001, 30.587233>,  <39.678017, 36.873192, 30.916578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041443, 36.999001, 30.587233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742844, 37.265133, 30.590710>,  <38.563683, 37.424812, 30.592796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742844, 37.265133, 30.590710>,  <39.041443, 36.999001, 30.587233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742844, 37.265133, 30.590710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077046, 0.099411, -0.992059,
		-0.660908, -0.739904, -0.125471,
		-0.746501, 0.665327, 0.008695,
		38.518894, 37.464729, 30.593319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005508, 37.058334, 29.939339>,  <39.041443, 36.999001, 30.587233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005508, 37.058334, 29.939339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675888, 37.270710, 30.018372>,  <38.478115, 37.398136, 30.065792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675888, 37.270710, 30.018372>,  <39.005508, 37.058334, 29.939339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675888, 37.270710, 30.018372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241029, -0.012961, -0.970432,
		-0.512679, -0.847311, 0.138652,
		-0.824054, 0.530939, 0.197581,
		38.428673, 37.429993, 30.077646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348427, 36.686153, 29.883909>,  <39.005508, 37.058334, 29.939339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348427, 36.686153, 29.883909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397442, 37.069469, 29.780628>,  <38.426849, 37.299458, 29.718658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397442, 37.069469, 29.780628>,  <38.348427, 36.686153, 29.883909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397442, 37.069469, 29.780628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259919, -0.220098, -0.940212,
		-0.957824, 0.182324, 0.222107,
		0.122538, 0.958288, -0.258205,
		38.434204, 37.356956, 29.703167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765381, 36.770805, 29.436243>,  <38.348427, 36.686153, 29.883909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765381, 36.770805, 29.436243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044743, 37.038708, 29.335320>,  <38.212360, 37.199448, 29.274765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044743, 37.038708, 29.335320>,  <37.765381, 36.770805, 29.436243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044743, 37.038708, 29.335320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305571, -0.039747, -0.951340,
		-0.647194, 0.741516, 0.176898,
		0.698403, 0.669756, -0.252310,
		38.254265, 37.239635, 29.259626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496792, 37.340851, 29.026358>,  <37.765381, 36.770805, 29.436243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496792, 37.340851, 29.026358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884678, 37.281227, 28.948959>,  <38.117409, 37.245453, 28.902521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884678, 37.281227, 28.948959>,  <37.496792, 37.340851, 29.026358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884678, 37.281227, 28.948959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216600, -0.158645, -0.963284,
		0.112887, 0.976019, -0.186126,
		0.969712, -0.149057, -0.193496,
		38.175591, 37.236511, 28.890911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704769, 37.690811, 28.408314>,  <37.496792, 37.340851, 29.026358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704769, 37.690811, 28.408314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005051, 37.427265, 28.427658>,  <38.185219, 37.269138, 28.439264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005051, 37.427265, 28.427658>,  <37.704769, 37.690811, 28.408314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005051, 37.427265, 28.427658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193055, -0.288798, -0.937724,
		0.631797, 0.694620, -0.343999,
		0.750708, -0.658862, 0.048362,
		38.230263, 37.229607, 28.442167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963387, 37.769905, 27.780766>,  <37.704769, 37.690811, 28.408314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963387, 37.769905, 27.780766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122391, 37.425850, 27.908611>,  <38.217793, 37.219418, 27.985319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122391, 37.425850, 27.908611>,  <37.963387, 37.769905, 27.780766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122391, 37.425850, 27.908611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064296, -0.321353, -0.944774,
		0.915342, 0.396108, -0.072438,
		0.397511, -0.860134, 0.319616,
		38.241646, 37.167809, 28.004496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635353, 37.604492, 27.344727>,  <37.963387, 37.769905, 27.780766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635353, 37.604492, 27.344727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456081, 37.278927, 27.492603>,  <38.348518, 37.083588, 27.581329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456081, 37.278927, 27.492603>,  <38.635353, 37.604492, 27.344727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456081, 37.278927, 27.492603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066147, -0.382227, -0.921698,
		0.891491, -0.437543, 0.117469,
		-0.448183, -0.813916, 0.369694,
		38.321625, 37.034752, 27.603512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044876, 37.038864, 27.147789>,  <38.635353, 37.604492, 27.344727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044876, 37.038864, 27.147789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677299, 36.898483, 27.219776>,  <38.456753, 36.814255, 27.262968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677299, 36.898483, 27.219776>,  <39.044876, 37.038864, 27.147789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677299, 36.898483, 27.219776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006071, -0.468837, -0.883264,
		0.394355, -0.810572, 0.432962,
		-0.918938, -0.350948, 0.179968,
		38.401619, 36.793198, 27.273766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158722, 36.342606, 26.863184>,  <39.044876, 37.038864, 27.147789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158722, 36.342606, 26.863184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764629, 36.400311, 26.900093>,  <38.528175, 36.434933, 26.922237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764629, 36.400311, 26.900093>,  <39.158722, 36.342606, 26.863184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764629, 36.400311, 26.900093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147933, -0.445560, -0.882945,
		-0.086262, -0.883552, 0.460319,
		-0.985228, 0.144260, 0.092272,
		38.469059, 36.443588, 26.927774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782967, 35.678642, 26.636757>,  <39.158722, 36.342606, 26.863184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782967, 35.678642, 26.636757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471714, 35.929638, 26.625618>,  <38.284962, 36.080235, 26.618935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471714, 35.929638, 26.625618>,  <38.782967, 35.678642, 26.636757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471714, 35.929638, 26.625618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385310, -0.511882, -0.767797,
		-0.496036, -0.586717, 0.640087,
		-0.778129, 0.627487, -0.027844,
		38.238277, 36.117886, 26.617264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161667, 35.255547, 26.646090>,  <38.782967, 35.678642, 26.636757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161667, 35.255547, 26.646090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047825, 35.604542, 26.487217>,  <37.979519, 35.813938, 26.391893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047825, 35.604542, 26.487217>,  <38.161667, 35.255547, 26.646090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047825, 35.604542, 26.487217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341235, -0.479385, -0.808547,
		-0.895855, -0.094587, 0.434163,
		-0.284609, 0.872493, -0.397183,
		37.962440, 35.866291, 26.368063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467644, 35.122734, 26.378826>,  <38.161667, 35.255547, 26.646090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467644, 35.122734, 26.378826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618977, 35.448566, 26.202953>,  <37.709778, 35.644066, 26.097429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618977, 35.448566, 26.202953>,  <37.467644, 35.122734, 26.378826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618977, 35.448566, 26.202953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238074, -0.373383, -0.896608,
		-0.894529, 0.443896, 0.052667,
		0.378336, 0.814581, -0.439682,
		37.732479, 35.692940, 26.071049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022869, 35.265293, 25.843266>,  <37.467644, 35.122734, 26.378826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022869, 35.265293, 25.843266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339443, 35.487011, 25.740204>,  <37.529388, 35.620041, 25.678368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339443, 35.487011, 25.740204>,  <37.022869, 35.265293, 25.843266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339443, 35.487011, 25.740204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145683, -0.238319, -0.960198,
		-0.593636, 0.797472, -0.107863,
		0.791437, 0.554295, -0.257652,
		37.576874, 35.653301, 25.662909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921822, 35.576740, 25.277163>,  <37.022869, 35.265293, 25.843266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921822, 35.576740, 25.277163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314472, 35.649441, 25.253925>,  <37.550064, 35.693062, 25.239983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314472, 35.649441, 25.253925>,  <36.921822, 35.576740, 25.277163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314472, 35.649441, 25.253925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015220, -0.228897, -0.973332,
		-0.190201, 0.956333, -0.221925,
		0.981627, 0.181751, -0.058092,
		37.608959, 35.703964, 25.236498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081333, 35.976944, 24.655563>,  <36.921822, 35.576740, 25.277163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081333, 35.976944, 24.655563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403275, 35.759953, 24.751827>,  <37.596439, 35.629757, 24.809586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403275, 35.759953, 24.751827>,  <37.081333, 35.976944, 24.655563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403275, 35.759953, 24.751827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065491, -0.321850, -0.944523,
		0.589843, 0.775968, -0.223516,
		0.804858, -0.542482, 0.240660,
		37.644733, 35.597206, 24.824024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449558, 36.131424, 24.146019>,  <37.081333, 35.976944, 24.655563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449558, 36.131424, 24.146019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648003, 35.808693, 24.274334>,  <37.767071, 35.615055, 24.351322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648003, 35.808693, 24.274334>,  <37.449558, 36.131424, 24.146019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648003, 35.808693, 24.274334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057897, -0.337895, -0.939401,
		0.866326, 0.484620, -0.120921,
		0.496112, -0.806827, 0.320785,
		37.796837, 35.566647, 24.370569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125473, 35.946217, 23.683149>,  <37.449558, 36.131424, 24.146019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125473, 35.946217, 23.683149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062263, 35.601547, 23.876045>,  <38.024338, 35.394745, 23.991783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062263, 35.601547, 23.876045>,  <38.125473, 35.946217, 23.683149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062263, 35.601547, 23.876045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227064, -0.506999, -0.831501,
		0.960974, -0.021898, 0.275772,
		-0.158024, -0.861669, 0.482240,
		38.014854, 35.343048, 24.020718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710419, 35.610107, 23.692839>,  <38.125473, 35.946217, 23.683149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710419, 35.610107, 23.692839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443665, 35.313976, 23.726730>,  <38.283611, 35.136299, 23.747065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443665, 35.313976, 23.726730>,  <38.710419, 35.610107, 23.692839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443665, 35.313976, 23.726730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459330, -0.497952, -0.735567,
		0.586749, -0.451623, 0.672132,
		-0.666889, -0.740324, 0.084728,
		38.243599, 35.091881, 23.752150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087467, 34.911118, 23.828009>,  <38.710419, 35.610107, 23.692839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087467, 34.911118, 23.828009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724556, 34.804214, 23.698135>,  <38.506809, 34.740074, 23.620211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724556, 34.804214, 23.698135>,  <39.087467, 34.911118, 23.828009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724556, 34.804214, 23.698135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420117, -0.541747, -0.728019,
		0.018673, -0.796921, 0.603795,
		-0.907278, -0.267259, -0.324684,
		38.452374, 34.724037, 23.600731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200077, 34.244614, 23.542372>,  <39.087467, 34.911118, 23.828009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200077, 34.244614, 23.542372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854523, 34.331650, 23.360668>,  <38.647190, 34.383869, 23.251646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854523, 34.331650, 23.360668>,  <39.200077, 34.244614, 23.542372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854523, 34.331650, 23.360668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284823, -0.532793, -0.796874,
		-0.415414, -0.817795, 0.398301,
		-0.863891, 0.217587, -0.454256,
		38.595356, 34.396927, 23.224392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066807, 33.679707, 23.136684>,  <39.200077, 34.244614, 23.542372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066807, 33.679707, 23.136684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799538, 33.934986, 22.983715>,  <38.639175, 34.088154, 22.891933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799538, 33.934986, 22.983715>,  <39.066807, 33.679707, 23.136684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799538, 33.934986, 22.983715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118037, -0.416566, -0.901410,
		-0.734580, -0.647440, 0.203009,
		-0.668176, 0.638195, -0.382424,
		38.599083, 34.126446, 22.868988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688824, 33.357853, 22.758814>,  <39.066807, 33.679707, 23.136684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688824, 33.357853, 22.758814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621159, 33.719898, 22.602783>,  <38.580559, 33.937126, 22.509165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621159, 33.719898, 22.602783>,  <38.688824, 33.357853, 22.758814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621159, 33.719898, 22.602783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165452, -0.364085, -0.916552,
		-0.971601, -0.219588, -0.088162,
		-0.169165, 0.905110, -0.390076,
		38.570408, 33.991432, 22.485760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066769, 33.320564, 22.229448>,  <38.688824, 33.357853, 22.758814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066769, 33.320564, 22.229448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252163, 33.656189, 22.115498>,  <38.363400, 33.857563, 22.047127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252163, 33.656189, 22.115498>,  <38.066769, 33.320564, 22.229448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252163, 33.656189, 22.115498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053655, -0.294329, -0.954197,
		-0.884481, 0.457538, -0.091396,
		0.463482, 0.839065, -0.284877,
		38.391209, 33.907909, 22.030035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649067, 33.703403, 21.683395>,  <38.066769, 33.320564, 22.229448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649067, 33.703403, 21.683395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041397, 33.780975, 21.675625>,  <38.276794, 33.827518, 21.670961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041397, 33.780975, 21.675625>,  <37.649067, 33.703403, 21.683395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041397, 33.780975, 21.675625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039804, -0.296886, -0.954083,
		-0.190795, 0.935013, -0.298912,
		0.980823, 0.193932, -0.019427,
		38.335644, 33.839153, 21.669796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703720, 33.921673, 21.043135>,  <37.649067, 33.703403, 21.683395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703720, 33.921673, 21.043135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061928, 33.787537, 21.160152>,  <38.276852, 33.707054, 21.230364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061928, 33.787537, 21.160152>,  <37.703720, 33.921673, 21.043135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061928, 33.787537, 21.160152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109558, -0.471013, -0.875296,
		0.431317, 0.815899, -0.385064,
		0.895523, -0.335344, 0.292545,
		38.330585, 33.686932, 21.247915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243683, 34.553410, 21.102369>,  <37.703720, 33.921673, 21.043135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243683, 34.553410, 21.102369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900539, 34.407135, 21.246788>,  <36.694653, 34.319370, 21.333439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900539, 34.407135, 21.246788>,  <37.243683, 34.553410, 21.102369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900539, 34.407135, 21.246788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362512, 0.928608, 0.079195,
		-0.364233, -0.062946, -0.929178,
		-0.857857, -0.365684, 0.361048,
		36.643181, 34.297428, 21.355103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670460, 34.800266, 20.617527>,  <37.243683, 34.553410, 21.102369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670460, 34.800266, 20.617527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559658, 34.739807, 20.997089>,  <36.493176, 34.703533, 21.224827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559658, 34.739807, 20.997089>,  <36.670460, 34.800266, 20.617527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559658, 34.739807, 20.997089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337733, 0.939853, 0.051111,
		-0.899557, -0.306319, -0.311394,
		-0.277008, -0.151146, 0.948905,
		36.476555, 34.694462, 21.281761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080360, 34.985584, 20.648739>,  <36.670460, 34.800266, 20.617527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080360, 34.985584, 20.648739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230839, 35.025448, 21.017204>,  <36.321125, 35.049366, 21.238283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230839, 35.025448, 21.017204>,  <36.080360, 34.985584, 20.648739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230839, 35.025448, 21.017204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398160, 0.915108, 0.063605,
		-0.836628, -0.390699, 0.383938,
		0.376195, 0.099655, 0.921166,
		36.343697, 35.055344, 21.293554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615543, 35.443687, 21.059681>,  <36.080360, 34.985584, 20.648739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615543, 35.443687, 21.059681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986168, 35.495358, 21.200989>,  <36.208542, 35.526360, 21.285772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986168, 35.495358, 21.200989>,  <35.615543, 35.443687, 21.059681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986168, 35.495358, 21.200989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191435, 0.970394, 0.147272,
		-0.323785, -0.204084, 0.923858,
		0.926561, 0.129174, 0.353268,
		36.264137, 35.534111, 21.306969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362587, 35.796574, 20.456291>,  <35.615543, 35.443687, 21.059681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362587, 35.796574, 20.456291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389767, 35.590801, 20.114357>,  <35.406075, 35.467339, 19.909195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389767, 35.590801, 20.114357>,  <35.362587, 35.796574, 20.456291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389767, 35.590801, 20.114357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321071, -0.822513, 0.469453,
		-0.944614, 0.242564, -0.221057,
		0.067950, -0.514427, -0.854838,
		35.410152, 35.436474, 19.857906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792366, 35.281181, 20.383217>,  <35.362587, 35.796574, 20.456291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792366, 35.281181, 20.383217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107780, 35.131374, 20.188095>,  <35.297028, 35.041489, 20.071022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107780, 35.131374, 20.188095>,  <34.792366, 35.281181, 20.383217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107780, 35.131374, 20.188095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250776, -0.920055, 0.301015,
		-0.561541, -0.115031, -0.819414,
		0.788532, -0.374521, -0.487802,
		35.344341, 35.019016, 20.041754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254036, 35.648300, 20.405125>,  <34.792366, 35.281181, 20.383217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254036, 35.648300, 20.405125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897133, 35.722782, 20.569660>,  <33.682991, 35.767471, 20.668381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897133, 35.722782, 20.569660>,  <34.254036, 35.648300, 20.405125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897133, 35.722782, 20.569660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182043, -0.982036, 0.049659,
		0.413197, -0.030573, 0.910128,
		-0.892260, 0.186202, 0.411339,
		33.629456, 35.778645, 20.693062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242504, 35.271202, 21.078987>,  <34.254036, 35.648300, 20.405125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242504, 35.271202, 21.078987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855747, 35.347099, 21.010738>,  <33.623692, 35.392639, 20.969790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855747, 35.347099, 21.010738>,  <34.242504, 35.271202, 21.078987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855747, 35.347099, 21.010738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207608, -0.973720, 0.093641,
		-0.148371, 0.125963, 0.980877,
		-0.966895, 0.189744, -0.170622,
		33.565678, 35.404022, 20.959551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978928, 34.912266, 21.561880>,  <34.242504, 35.271202, 21.078987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978928, 34.912266, 21.561880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670170, 34.969971, 21.314213>,  <33.484917, 35.004593, 21.165613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670170, 34.969971, 21.314213>,  <33.978928, 34.912266, 21.561880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670170, 34.969971, 21.314213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262841, -0.959198, 0.104183,
		-0.578875, 0.243161, 0.778317,
		-0.771893, 0.144265, -0.619168,
		33.438602, 35.013248, 21.128462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460388, 34.584557, 21.857010>,  <33.978928, 34.912266, 21.561880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460388, 34.584557, 21.857010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379810, 34.611866, 21.466164>,  <33.331463, 34.628254, 21.231655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379810, 34.611866, 21.466164>,  <33.460388, 34.584557, 21.857010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379810, 34.611866, 21.466164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327049, -0.945006, 0.001390,
		-0.923288, 0.319846, 0.212694,
		-0.201442, 0.068278, -0.977118,
		33.319378, 34.632351, 21.173029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763004, 34.388748, 21.725557>,  <33.460388, 34.584557, 21.857010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763004, 34.388748, 21.725557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900593, 34.342384, 21.352837>,  <32.983147, 34.314568, 21.129204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900593, 34.342384, 21.352837>,  <32.763004, 34.388748, 21.725557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900593, 34.342384, 21.352837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448324, -0.892207, -0.054512,
		-0.825040, 0.436499, -0.358856,
		0.343968, -0.115909, -0.931800,
		33.003784, 34.307613, 21.073298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260311, 34.071526, 21.410814>,  <32.763004, 34.388748, 21.725557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260311, 34.071526, 21.410814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521339, 34.014301, 21.113174>,  <32.677956, 33.979969, 20.934591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521339, 34.014301, 21.113174>,  <32.260311, 34.071526, 21.410814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521339, 34.014301, 21.113174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482727, -0.835431, -0.262735,
		-0.584056, 0.530650, -0.614239,
		0.652574, -0.143057, -0.744098,
		32.717113, 33.971386, 20.889946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816530, 33.872089, 20.789454>,  <32.260311, 34.071526, 21.410814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816530, 33.872089, 20.789454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195656, 33.770744, 20.712040>,  <32.423130, 33.709938, 20.665592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195656, 33.770744, 20.712040>,  <31.816530, 33.872089, 20.789454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195656, 33.770744, 20.712040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307492, -0.886846, -0.344895,
		-0.084248, 0.386406, -0.918473,
		0.947814, -0.253366, -0.193531,
		32.480000, 33.694733, 20.653980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777485, 33.726070, 20.070610>,  <31.816530, 33.872089, 20.789454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777485, 33.726070, 20.070610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096870, 33.568638, 20.252842>,  <32.288502, 33.474178, 20.362181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096870, 33.568638, 20.252842>,  <31.777485, 33.726070, 20.070610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096870, 33.568638, 20.252842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333956, -0.919176, -0.208780,
		0.500928, 0.014560, -0.865366,
		0.798464, -0.393578, 0.455579,
		32.336411, 33.450565, 20.389515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996796, 33.186565, 19.606730>,  <31.777485, 33.726070, 20.070610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996796, 33.186565, 19.606730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177792, 33.090317, 19.950207>,  <32.286388, 33.032570, 20.156294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177792, 33.090317, 19.950207>,  <31.996796, 33.186565, 19.606730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177792, 33.090317, 19.950207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230643, -0.961725, -0.147951,
		0.861428, -0.131106, -0.490667,
		0.452489, -0.240618, 0.858695,
		32.313538, 33.018131, 20.207815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164383, 32.475727, 19.557571>,  <31.996796, 33.186565, 19.606730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164383, 32.475727, 19.557571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221710, 32.534321, 19.949081>,  <32.256107, 32.569477, 20.183987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221710, 32.534321, 19.949081>,  <32.164383, 32.475727, 19.557571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221710, 32.534321, 19.949081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012026, -0.989170, 0.146282,
		0.989603, -0.009194, -0.143531,
		0.143321, 0.146487, 0.978775,
		32.264706, 32.578266, 20.242714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742092, 32.031918, 19.745558>,  <32.164383, 32.475727, 19.557571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742092, 32.031918, 19.745558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541260, 32.094913, 20.085701>,  <32.420761, 32.132713, 20.289787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541260, 32.094913, 20.085701>,  <32.742092, 32.031918, 19.745558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541260, 32.094913, 20.085701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027581, -0.979862, 0.197761,
		0.864381, 0.122746, 0.487626,
		-0.502081, 0.157492, 0.850359,
		32.390636, 32.142162, 20.340809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066849, 31.761221, 20.270826>,  <32.742092, 32.031918, 19.745558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066849, 31.761221, 20.270826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694378, 31.762577, 20.416645>,  <32.470894, 31.763391, 20.504137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694378, 31.762577, 20.416645>,  <33.066849, 31.761221, 20.270826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694378, 31.762577, 20.416645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114911, -0.946253, 0.302325,
		0.345978, 0.323409, 0.880741,
		-0.931179, 0.003391, 0.364546,
		32.415024, 31.763594, 20.526009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188396, 31.503004, 20.882326>,  <33.066849, 31.761221, 20.270826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188396, 31.503004, 20.882326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804901, 31.442310, 20.786156>,  <32.574806, 31.405893, 20.728453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804901, 31.442310, 20.786156>,  <33.188396, 31.503004, 20.882326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804901, 31.442310, 20.786156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091332, -0.965222, 0.244958,
		-0.269234, 0.212891, 0.939250,
		-0.958735, -0.151734, -0.240427,
		32.517281, 31.396790, 20.714027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034451, 30.991116, 21.289919>,  <33.188396, 31.503004, 20.882326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034451, 30.991116, 21.289919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694103, 30.966728, 21.081184>,  <32.489895, 30.952095, 20.955944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694103, 30.966728, 21.081184>,  <33.034451, 30.991116, 21.289919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694103, 30.966728, 21.081184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130199, -0.937792, 0.321860,
		-0.508998, 0.341802, 0.789996,
		-0.850864, -0.060969, -0.521836,
		32.438843, 30.948437, 20.924633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590027, 30.636763, 21.718378>,  <33.034451, 30.991116, 21.289919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590027, 30.636763, 21.718378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456306, 30.595787, 21.343624>,  <32.376076, 30.571201, 21.118773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456306, 30.595787, 21.343624>,  <32.590027, 30.636763, 21.718378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456306, 30.595787, 21.343624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110397, -0.982976, 0.146870,
		-0.935980, 0.152527, 0.317297,
		-0.334297, -0.102438, -0.936884,
		32.356018, 30.565056, 21.062559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069057, 30.176888, 21.742939>,  <32.590027, 30.636763, 21.718378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069057, 30.176888, 21.742939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169907, 30.150776, 21.356743>,  <32.230415, 30.135109, 21.125025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169907, 30.150776, 21.356743>,  <32.069057, 30.176888, 21.742939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169907, 30.150776, 21.356743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054166, -0.995206, 0.081430,
		-0.966178, -0.072827, -0.247378,
		0.252122, -0.065277, -0.965491,
		32.245544, 30.131193, 21.067095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659637, 29.614756, 21.417915>,  <32.069057, 30.176888, 21.742939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659637, 29.614756, 21.417915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948027, 29.655758, 21.143780>,  <32.121059, 29.680359, 20.979298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948027, 29.655758, 21.143780>,  <31.659637, 29.614756, 21.417915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948027, 29.655758, 21.143780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004532, -0.988280, -0.152586,
		-0.692947, 0.113117, -0.712060,
		0.720974, 0.102507, -0.685338,
		32.164318, 29.686510, 20.938179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500984, 29.130686, 20.884079>,  <31.659637, 29.614756, 21.417915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500984, 29.130686, 20.884079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889414, 29.201637, 20.820145>,  <32.122471, 29.244209, 20.781784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889414, 29.201637, 20.820145>,  <31.500984, 29.130686, 20.884079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889414, 29.201637, 20.820145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130832, -0.955263, -0.265246,
		-0.199736, 0.236662, -0.950840,
		0.971076, 0.177379, -0.159837,
		32.180737, 29.254850, 20.772194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659182, 28.701693, 20.304344>,  <31.500984, 29.130686, 20.884079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659182, 28.701693, 20.304344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017181, 28.770367, 20.469025>,  <32.231983, 28.811571, 20.567833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017181, 28.770367, 20.469025>,  <31.659182, 28.701693, 20.304344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017181, 28.770367, 20.469025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295610, -0.919474, -0.259194,
		0.334049, 0.353682, -0.873682,
		0.895001, 0.171686, 0.411702,
		32.285683, 28.821873, 20.592535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013203, 28.311262, 19.891182>,  <31.659182, 28.701693, 20.304344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013203, 28.311262, 19.891182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271400, 28.375454, 20.189869>,  <32.426319, 28.413969, 20.369081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271400, 28.375454, 20.189869>,  <32.013203, 28.311262, 19.891182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271400, 28.375454, 20.189869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370554, -0.920704, -0.122452,
		0.667855, 0.355741, -0.653773,
		0.645492, 0.160478, 0.746717,
		32.465050, 28.423597, 20.413883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664986, 28.074026, 19.693316>,  <32.013203, 28.311262, 19.891182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664986, 28.074026, 19.693316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668259, 28.052940, 20.092747>,  <32.670223, 28.040289, 20.332405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668259, 28.052940, 20.092747>,  <32.664986, 28.074026, 19.693316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668259, 28.052940, 20.092747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464286, -0.884245, -0.050484,
		0.885648, 0.464038, 0.017241,
		0.008181, -0.052716, 0.998576,
		32.670712, 28.037125, 20.392319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392433, 27.978661, 19.990341>,  <32.664986, 28.074026, 19.693316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392433, 27.978661, 19.990341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143860, 27.854736, 20.278183>,  <32.994717, 27.780382, 20.450888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143860, 27.854736, 20.278183>,  <33.392433, 27.978661, 19.990341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143860, 27.854736, 20.278183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456868, -0.889459, 0.011604,
		0.636465, 0.335976, 0.694285,
		-0.621437, -0.309811, 0.719606,
		32.957428, 27.761793, 20.494064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843929, 27.531754, 20.380764>,  <33.392433, 27.978661, 19.990341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843929, 27.531754, 20.380764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480209, 27.440022, 20.519661>,  <33.261978, 27.384981, 20.602999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480209, 27.440022, 20.519661>,  <33.843929, 27.531754, 20.380764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480209, 27.440022, 20.519661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319516, -0.919364, 0.229518,
		0.266606, 0.319651, 0.909255,
		-0.909302, -0.229331, 0.347242,
		33.207420, 27.371222, 20.623833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987873, 27.137512, 20.975780>,  <33.843929, 27.531754, 20.380764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987873, 27.137512, 20.975780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635071, 27.018787, 20.829372>,  <33.423389, 26.947552, 20.741528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635071, 27.018787, 20.829372>,  <33.987873, 27.137512, 20.975780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635071, 27.018787, 20.829372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270853, -0.954901, 0.121669,
		-0.385627, 0.008174, 0.922619,
		-0.882004, -0.296813, -0.366021,
		33.370468, 26.929743, 20.719566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949032, 26.482418, 21.279577>,  <33.987873, 27.137512, 20.975780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949032, 26.482418, 21.279577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657249, 26.457779, 21.007080>,  <33.482178, 26.442995, 20.843582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657249, 26.457779, 21.007080>,  <33.949032, 26.482418, 21.279577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657249, 26.457779, 21.007080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050161, -0.998073, 0.036534,
		-0.682181, -0.007522, 0.731144,
		-0.729460, -0.061598, -0.681244,
		33.438412, 26.439299, 20.802708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576214, 26.008795, 21.574797>,  <33.949032, 26.482418, 21.279577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576214, 26.008795, 21.574797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466808, 26.005112, 21.190067>,  <33.401165, 26.002901, 20.959230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466808, 26.005112, 21.190067>,  <33.576214, 26.008795, 21.574797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466808, 26.005112, 21.190067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022129, -0.999629, 0.015862,
		-0.961613, 0.025623, 0.273211,
		-0.273516, -0.009208, -0.961823,
		33.384754, 26.002350, 20.901520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968742, 25.666079, 21.550358>,  <33.576214, 26.008795, 21.574797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968742, 25.666079, 21.550358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120232, 25.625740, 21.182358>,  <33.211124, 25.601538, 20.961557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120232, 25.625740, 21.182358>,  <32.968742, 25.666079, 21.550358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120232, 25.625740, 21.182358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185015, -0.982231, 0.031504,
		-0.906830, 0.158283, -0.390648,
		0.378720, -0.100844, -0.920001,
		33.233849, 25.595488, 20.906357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455051, 25.274830, 21.158146>,  <32.968742, 25.666079, 21.550358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455051, 25.274830, 21.158146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792305, 25.241409, 20.945679>,  <32.994659, 25.221357, 20.818199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792305, 25.241409, 20.945679>,  <32.455051, 25.274830, 21.158146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792305, 25.241409, 20.945679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128218, -0.990598, -0.047710,
		-0.522186, 0.108332, -0.845923,
		0.843138, -0.083549, -0.531166,
		33.045246, 25.216345, 20.786329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290825, 24.755070, 20.706305>,  <32.455051, 25.274830, 21.158146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290825, 24.755070, 20.706305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690475, 24.771687, 20.704681>,  <32.930267, 24.781656, 20.703709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690475, 24.771687, 20.704681>,  <32.290825, 24.755070, 20.706305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690475, 24.771687, 20.704681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040384, -0.986691, -0.157513,
		-0.010546, 0.157211, -0.987509,
		0.999129, 0.041541, -0.004057,
		32.990215, 24.784149, 20.703465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421635, 24.424622, 20.081747>,  <32.290825, 24.755070, 20.706305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421635, 24.424622, 20.081747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759178, 24.414845, 20.296154>,  <32.961704, 24.408978, 20.424797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759178, 24.414845, 20.296154>,  <32.421635, 24.424622, 20.081747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759178, 24.414845, 20.296154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136350, -0.956402, -0.258270,
		0.518959, 0.291028, -0.803731,
		0.843854, -0.024443, 0.536015,
		33.012333, 24.407511, 20.456959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844784, 24.002649, 19.674231>,  <32.421635, 24.424622, 20.081747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844784, 24.002649, 19.674231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003723, 24.022709, 20.040749>,  <33.099087, 24.034744, 20.260660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003723, 24.022709, 20.040749>,  <32.844784, 24.002649, 19.674231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003723, 24.022709, 20.040749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184581, -0.982466, -0.026270,
		0.898914, 0.179570, -0.399636,
		0.397346, 0.050151, 0.916298,
		33.122929, 24.037754, 20.315638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527584, 23.714073, 19.616934>,  <32.844784, 24.002649, 19.674231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527584, 23.714073, 19.616934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384697, 23.673042, 19.988281>,  <33.298965, 23.648424, 20.211090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384697, 23.673042, 19.988281>,  <33.527584, 23.714073, 19.616934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384697, 23.673042, 19.988281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223137, -0.974543, -0.021819,
		0.906975, 0.199360, 0.371014,
		-0.357219, -0.102576, 0.928371,
		33.277531, 23.642269, 20.266792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032192, 23.257248, 19.981335>,  <33.527584, 23.714073, 19.616934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032192, 23.257248, 19.981335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728783, 23.246044, 20.241753>,  <33.546738, 23.239323, 20.398003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728783, 23.246044, 20.241753>,  <34.032192, 23.257248, 19.981335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728783, 23.246044, 20.241753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071269, -0.996648, 0.040159,
		0.647738, 0.076861, 0.757976,
		-0.758523, -0.028008, 0.651045,
		33.501225, 23.237642, 20.437065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274166, 22.964632, 20.555334>,  <34.032192, 23.257248, 19.981335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274166, 22.964632, 20.555334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877571, 22.915134, 20.571518>,  <33.639614, 22.885435, 20.581228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877571, 22.915134, 20.571518>,  <34.274166, 22.964632, 20.555334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877571, 22.915134, 20.571518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128020, -0.983205, 0.130075,
		0.023684, 0.134147, 0.990678,
		-0.991489, -0.123746, 0.040460,
		33.580124, 22.878010, 20.583656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153908, 22.464237, 21.121439>,  <34.274166, 22.964632, 20.555334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153908, 22.464237, 21.121439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827671, 22.461113, 20.890007>,  <33.631931, 22.459238, 20.751148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827671, 22.461113, 20.890007>,  <34.153908, 22.464237, 21.121439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827671, 22.461113, 20.890007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012679, -0.999428, 0.031363,
		-0.578494, 0.032916, 0.815023,
		-0.815588, -0.007810, -0.578580,
		33.582996, 22.458771, 20.716433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623653, 21.950544, 21.471161>,  <34.153908, 22.464237, 21.121439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623653, 21.950544, 21.471161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528427, 22.004120, 21.086372>,  <33.471291, 22.036264, 20.855499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528427, 22.004120, 21.086372>,  <33.623653, 21.950544, 21.471161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528427, 22.004120, 21.086372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095288, -0.982447, -0.160370,
		-0.966564, -0.129843, 0.221123,
		-0.238065, 0.133937, -0.961970,
		33.457008, 22.044302, 20.797781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169823, 21.444038, 21.409678>,  <33.623653, 21.950544, 21.471161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169823, 21.444038, 21.409678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301392, 21.531044, 21.042091>,  <33.380333, 21.583246, 20.821539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301392, 21.531044, 21.042091>,  <33.169823, 21.444038, 21.409678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301392, 21.531044, 21.042091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029097, -0.974985, -0.220357,
		-0.943908, 0.045742, -0.327025,
		0.328924, 0.217512, -0.918966,
		33.400070, 21.596298, 20.766401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749802, 21.020704, 20.953173>,  <33.169823, 21.444038, 21.409678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749802, 21.020704, 20.953173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065407, 21.113995, 20.725819>,  <33.254772, 21.169970, 20.589407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065407, 21.113995, 20.725819>,  <32.749802, 21.020704, 20.953173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065407, 21.113995, 20.725819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128521, -0.967333, -0.218518,
		-0.600780, 0.099364, -0.793215,
		0.789015, 0.233226, -0.568384,
		33.302113, 21.183962, 20.555304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723194, 20.590881, 20.217112>,  <32.749802, 21.020704, 20.953173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723194, 20.590881, 20.217112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099335, 20.713490, 20.276157>,  <33.325020, 20.787054, 20.311584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099335, 20.713490, 20.276157>,  <32.723194, 20.590881, 20.217112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099335, 20.713490, 20.276157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333224, -0.917307, -0.217966,
		0.068598, 0.254153, -0.964728,
		0.940349, 0.306518, 0.147616,
		33.381439, 20.805445, 20.320442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061066, 20.128269, 19.889355>,  <32.723194, 20.590881, 20.217112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061066, 20.128269, 19.889355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375706, 20.293308, 20.073105>,  <33.564487, 20.392332, 20.183355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375706, 20.293308, 20.073105>,  <33.061066, 20.128269, 19.889355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375706, 20.293308, 20.073105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495154, -0.865976, -0.070066,
		0.368899, 0.282575, -0.885474,
		0.786598, 0.412598, 0.459376,
		33.611687, 20.417088, 20.210918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709667, 19.974104, 19.536739>,  <33.061066, 20.128269, 19.889355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709667, 19.974104, 19.536739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810429, 20.044643, 19.917358>,  <33.870888, 20.086967, 20.145729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810429, 20.044643, 19.917358>,  <33.709667, 19.974104, 19.536739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810429, 20.044643, 19.917358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636022, -0.771251, -0.025442,
		0.729396, 0.611615, -0.306445,
		0.251907, 0.176348, 0.951548,
		33.886002, 20.097548, 20.202824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396564, 19.952129, 19.535873>,  <33.709667, 19.974104, 19.536739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396564, 19.952129, 19.535873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291729, 19.880241, 19.915138>,  <34.228828, 19.837109, 20.142696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291729, 19.880241, 19.915138>,  <34.396564, 19.952129, 19.535873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291729, 19.880241, 19.915138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598375, -0.801101, 0.013558,
		0.757136, 0.570909, 0.317502,
		-0.262091, -0.179720, 0.948161,
		34.213100, 19.826324, 20.199587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985725, 19.692137, 19.882782>,  <34.396564, 19.952129, 19.535873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985725, 19.692137, 19.882782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683762, 19.578308, 20.119133>,  <34.502583, 19.510012, 20.260942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683762, 19.578308, 20.119133>,  <34.985725, 19.692137, 19.882782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683762, 19.578308, 20.119133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499926, -0.832835, 0.237610,
		0.424485, 0.474768, 0.770979,
		-0.754908, -0.284571, 0.590875,
		34.457291, 19.492937, 20.296396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222889, 19.480225, 20.554451>,  <34.985725, 19.692137, 19.882782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222889, 19.480225, 20.554451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900681, 19.263554, 20.458351>,  <34.707355, 19.133551, 20.400692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900681, 19.263554, 20.458351>,  <35.222889, 19.480225, 20.554451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900681, 19.263554, 20.458351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555132, -0.831648, 0.013788,
		-0.207270, -0.122262, 0.970614,
		-0.805523, -0.541677, -0.240247,
		34.659023, 19.101051, 20.386276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069252, 18.951214, 21.032652>,  <35.222889, 19.480225, 20.554451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069252, 18.951214, 21.032652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930405, 18.826492, 20.678864>,  <34.847095, 18.751659, 20.466591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930405, 18.826492, 20.678864>,  <35.069252, 18.951214, 21.032652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930405, 18.826492, 20.678864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469122, -0.874366, 0.124130,
		-0.812054, -0.371835, 0.449785,
		-0.347121, -0.311804, -0.884469,
		34.826267, 18.732950, 20.413523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620686, 18.441442, 21.064960>,  <35.069252, 18.951214, 21.032652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620686, 18.441442, 21.064960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879196, 18.397701, 20.762867>,  <35.034302, 18.371456, 20.581612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879196, 18.397701, 20.762867>,  <34.620686, 18.441442, 21.064960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879196, 18.397701, 20.762867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419044, -0.776259, 0.470982,
		-0.637757, -0.620858, -0.455852,
		0.646272, -0.109351, -0.755231,
		35.073078, 18.364897, 20.536297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636536, 17.832521, 21.019749>,  <34.620686, 18.441442, 21.064960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636536, 17.832521, 21.019749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961983, 17.893917, 20.795441>,  <35.157249, 17.930754, 20.660856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961983, 17.893917, 20.795441>,  <34.636536, 17.832521, 21.019749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961983, 17.893917, 20.795441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415757, -0.827824, 0.376635,
		-0.406411, -0.539582, -0.737348,
		0.813619, 0.153489, -0.560772,
		35.206070, 17.939964, 20.627209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540829, 18.243870, 21.811193>,  <34.636536, 17.832521, 21.019749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540829, 18.243870, 21.811193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367256, 18.072121, 22.128014>,  <34.263111, 17.969072, 22.318106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367256, 18.072121, 22.128014>,  <34.540829, 18.243870, 21.811193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367256, 18.072121, 22.128014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661658, 0.748555, 0.043299,
		-0.611485, -0.505278, -0.608917,
		-0.433930, -0.429371, 0.792051,
		34.237076, 17.943310, 22.365629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004395, 18.658096, 21.896162>,  <34.540829, 18.243870, 21.811193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004395, 18.658096, 21.896162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925739, 18.448879, 22.227886>,  <33.878548, 18.323349, 22.426922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925739, 18.448879, 22.227886>,  <34.004395, 18.658096, 21.896162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925739, 18.448879, 22.227886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672457, 0.687489, 0.274154,
		-0.713538, -0.503770, -0.486909,
		-0.196634, -0.523044, 0.829313,
		33.866749, 18.291965, 22.476681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319408, 18.524639, 21.961847>,  <34.004395, 18.658096, 21.896162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319408, 18.524639, 21.961847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476707, 18.552185, 22.328587>,  <33.571087, 18.568712, 22.548630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476707, 18.552185, 22.328587>,  <33.319408, 18.524639, 21.961847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476707, 18.552185, 22.328587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686433, 0.685412, 0.242942,
		-0.611689, -0.724892, 0.316809,
		0.393251, 0.068863, 0.916849,
		33.594685, 18.572844, 22.603642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690334, 18.477903, 22.337358>,  <33.319408, 18.524639, 21.961847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690334, 18.477903, 22.337358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983215, 18.644138, 22.553196>,  <33.158943, 18.743879, 22.682699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983215, 18.644138, 22.553196>,  <32.690334, 18.477903, 22.337358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983215, 18.644138, 22.553196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639647, 0.691719, 0.335225,
		-0.233932, -0.590604, 0.772310,
		0.732207, 0.415586, 0.539593,
		33.202877, 18.768814, 22.715075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365368, 18.752501, 22.963251>,  <32.690334, 18.477903, 22.337358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365368, 18.752501, 22.963251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697781, 18.957417, 22.876591>,  <32.897228, 19.080366, 22.824594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697781, 18.957417, 22.876591>,  <32.365368, 18.752501, 22.963251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697781, 18.957417, 22.876591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489935, 0.858595, 0.150924,
		0.263331, -0.019280, 0.964513,
		0.831036, 0.512292, -0.216649,
		32.947090, 19.111105, 22.811596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348782, 19.282373, 23.402201>,  <32.365368, 18.752501, 22.963251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348782, 19.282373, 23.402201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614571, 19.402649, 23.128540>,  <32.774044, 19.474813, 22.964344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614571, 19.402649, 23.128540>,  <32.348782, 19.282373, 23.402201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614571, 19.402649, 23.128540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179136, 0.952879, 0.244810,
		0.725524, -0.040114, 0.687027,
		0.664474, 0.300687, -0.684151,
		32.813911, 19.492855, 22.923294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775307, 19.727617, 23.671680>,  <32.348782, 19.282373, 23.402201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775307, 19.727617, 23.671680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768948, 19.842117, 23.288471>,  <32.765133, 19.910818, 23.058546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768948, 19.842117, 23.288471>,  <32.775307, 19.727617, 23.671680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768948, 19.842117, 23.288471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283412, 0.917558, 0.278864,
		0.958866, 0.275950, 0.066535,
		-0.015903, 0.286250, -0.958023,
		32.764175, 19.927992, 23.001064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286636, 20.254604, 23.661161>,  <32.775307, 19.727617, 23.671680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286636, 20.254604, 23.661161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063866, 20.321732, 23.335789>,  <32.930202, 20.362009, 23.140566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063866, 20.321732, 23.335789>,  <33.286636, 20.254604, 23.661161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063866, 20.321732, 23.335789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117823, 0.953506, 0.277389,
		0.822162, 0.250327, -0.511260,
		-0.556927, 0.167820, -0.813430,
		32.896786, 20.372078, 23.091759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437233, 20.861797, 23.529329>,  <33.286636, 20.254604, 23.661161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437233, 20.861797, 23.529329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105473, 20.794926, 23.316109>,  <32.906418, 20.754803, 23.188177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105473, 20.794926, 23.316109>,  <33.437233, 20.861797, 23.529329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105473, 20.794926, 23.316109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321824, 0.922923, 0.211287,
		0.456641, 0.346791, -0.819278,
		-0.829403, -0.167181, -0.533050,
		32.856651, 20.744772, 23.156193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406372, 21.379061, 23.002800>,  <33.437233, 20.861797, 23.529329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406372, 21.379061, 23.002800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034897, 21.242668, 23.061142>,  <32.812012, 21.160833, 23.096148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034897, 21.242668, 23.061142>,  <33.406372, 21.379061, 23.002800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034897, 21.242668, 23.061142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355851, 0.930054, -0.091484,
		-0.104461, -0.136863, -0.985067,
		-0.928686, -0.340980, 0.145857,
		32.756290, 21.140373, 23.104898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915394, 21.701786, 22.536535>,  <33.406372, 21.379061, 23.002800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915394, 21.701786, 22.536535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667809, 21.557777, 22.815754>,  <32.519257, 21.471373, 22.983286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667809, 21.557777, 22.815754>,  <32.915394, 21.701786, 22.536535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667809, 21.557777, 22.815754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487778, 0.872790, 0.017626,
		-0.615594, -0.329582, -0.715835,
		-0.618964, -0.360019, 0.698047,
		32.482121, 21.449772, 23.025167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276848, 21.914278, 22.317640>,  <32.915394, 21.701786, 22.536535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276848, 21.914278, 22.317640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246532, 21.861412, 22.712971>,  <32.228344, 21.829693, 22.950169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246532, 21.861412, 22.712971>,  <32.276848, 21.914278, 22.317640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246532, 21.861412, 22.712971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322215, 0.941246, 0.101160,
		-0.943628, -0.310786, -0.113920,
		-0.075788, -0.132164, 0.988326,
		32.223797, 21.821762, 23.009468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536345, 22.058981, 22.504616>,  <32.276848, 21.914278, 22.317640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536345, 22.058981, 22.504616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716108, 22.090534, 22.860550>,  <31.823967, 22.109467, 23.074110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716108, 22.090534, 22.860550>,  <31.536345, 22.058981, 22.504616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716108, 22.090534, 22.860550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358157, 0.928443, 0.098580,
		-0.818385, -0.363003, 0.445504,
		0.449410, 0.078884, 0.889836,
		31.850931, 22.114199, 23.127501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077478, 22.173380, 23.118435>,  <31.536345, 22.058981, 22.504616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077478, 22.173380, 23.118435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437082, 22.335175, 23.185574>,  <31.652845, 22.432251, 23.225857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437082, 22.335175, 23.185574>,  <31.077478, 22.173380, 23.118435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437082, 22.335175, 23.185574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415744, 0.908735, 0.036858,
		-0.137618, -0.102916, 0.985124,
		0.899010, 0.404487, 0.167845,
		31.706785, 22.456520, 23.235928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785847, 22.793474, 23.388294>,  <31.077478, 22.173380, 23.118435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785847, 22.793474, 23.388294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172888, 22.893063, 23.371502>,  <31.405111, 22.952816, 23.361427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172888, 22.893063, 23.371502>,  <30.785847, 22.793474, 23.388294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172888, 22.893063, 23.371502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217741, 0.907012, 0.360442,
		0.127817, -0.339623, 0.931837,
		0.967601, 0.248970, -0.041981,
		31.463167, 22.967754, 23.358908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916290, 23.165661, 23.990709>,  <30.785847, 22.793474, 23.388294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916290, 23.165661, 23.990709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197256, 23.277832, 23.729031>,  <31.365835, 23.345135, 23.572023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197256, 23.277832, 23.729031>,  <30.916290, 23.165661, 23.990709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197256, 23.277832, 23.729031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158676, 0.957679, 0.240151,
		0.693855, -0.064880, 0.717186,
		0.702416, 0.280430, -0.654195,
		31.407980, 23.361961, 23.532772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255116, 23.664036, 24.356632>,  <30.916290, 23.165661, 23.990709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255116, 23.664036, 24.356632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367884, 23.745651, 23.981636>,  <31.435545, 23.794621, 23.756638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367884, 23.745651, 23.981636>,  <31.255116, 23.664036, 24.356632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367884, 23.745651, 23.981636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175928, 0.949564, 0.259573,
		0.943169, -0.238112, 0.231811,
		0.281926, 0.204039, -0.937489,
		31.452459, 23.806864, 23.700388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784088, 24.078848, 24.456270>,  <31.255116, 23.664036, 24.356632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784088, 24.078848, 24.456270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669140, 24.137459, 24.077652>,  <31.600170, 24.172625, 23.850481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669140, 24.137459, 24.077652>,  <31.784088, 24.078848, 24.456270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669140, 24.137459, 24.077652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045203, 0.985054, 0.166210,
		0.956752, 0.090551, -0.276452,
		-0.287371, 0.146525, -0.946545,
		31.582928, 24.181416, 23.793688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156063, 24.627707, 24.237324>,  <31.784088, 24.078848, 24.456270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156063, 24.627707, 24.237324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846849, 24.627602, 23.983578>,  <31.661322, 24.627539, 23.831329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846849, 24.627602, 23.983578>,  <32.156063, 24.627707, 24.237324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846849, 24.627602, 23.983578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046956, 0.997280, 0.056809,
		0.632626, 0.073703, -0.770942,
		-0.773033, -0.000261, -0.634366,
		31.614939, 24.627523, 23.793268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384323, 25.153099, 23.732214>,  <32.156063, 24.627707, 24.237324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384323, 25.153099, 23.732214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993746, 25.137772, 23.647274>,  <31.759399, 25.128576, 23.596310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993746, 25.137772, 23.647274>,  <32.384323, 25.153099, 23.732214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993746, 25.137772, 23.647274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018614, 0.965482, -0.259804,
		0.214976, -0.257636, -0.942024,
		-0.976442, -0.038317, -0.212351,
		31.700813, 25.126276, 23.583569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319969, 25.463762, 23.043964>,  <32.384323, 25.153099, 23.732214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319969, 25.463762, 23.043964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956758, 25.499599, 23.207649>,  <31.738831, 25.521101, 23.305861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956758, 25.499599, 23.207649>,  <32.319969, 25.463762, 23.043964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956758, 25.499599, 23.207649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046137, 0.992308, -0.114879,
		-0.416356, -0.085433, -0.905179,
		-0.908031, 0.089593, 0.409211,
		31.684349, 25.526478, 23.330412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873638, 25.900034, 22.601828>,  <32.319969, 25.463762, 23.043964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873638, 25.900034, 22.601828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697392, 25.943199, 22.958302>,  <31.591644, 25.969099, 23.172186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697392, 25.943199, 22.958302>,  <31.873638, 25.900034, 22.601828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697392, 25.943199, 22.958302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025211, 0.993844, -0.107879,
		-0.897342, -0.025066, -0.440624,
		-0.440616, 0.107913, 0.891186,
		31.565207, 25.975573, 23.225657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343622, 26.525648, 22.522263>,  <31.873638, 25.900034, 22.601828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343622, 26.525648, 22.522263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440445, 26.478077, 22.907440>,  <31.498539, 26.449533, 23.138548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440445, 26.478077, 22.907440>,  <31.343622, 26.525648, 22.522263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440445, 26.478077, 22.907440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040403, 0.992834, 0.112465,
		-0.969421, 0.011683, 0.245126,
		0.242055, -0.118930, 0.962946,
		31.513062, 26.442398, 23.196323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807049, 26.830202, 22.819120>,  <31.343622, 26.525648, 22.522263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807049, 26.830202, 22.819120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081755, 26.816345, 23.109543>,  <31.246578, 26.808031, 23.283796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081755, 26.816345, 23.109543>,  <30.807049, 26.830202, 22.819120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081755, 26.816345, 23.109543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208874, 0.947330, 0.242769,
		-0.696223, -0.318379, 0.643357,
		0.686764, -0.034641, 0.726055,
		31.287785, 26.805952, 23.327360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495470, 27.259281, 23.304111>,  <30.807049, 26.830202, 22.819120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495470, 27.259281, 23.304111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869358, 27.277710, 23.445065>,  <31.093691, 27.288767, 23.529636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869358, 27.277710, 23.445065>,  <30.495470, 27.259281, 23.304111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869358, 27.277710, 23.445065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129506, 0.967538, 0.217023,
		-0.330946, -0.248492, 0.910344,
		0.934721, 0.046072, 0.352384,
		31.149775, 27.291533, 23.550779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420437, 27.698204, 23.943497>,  <30.495470, 27.259281, 23.304111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420437, 27.698204, 23.943497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795727, 27.703854, 23.805202>,  <31.020901, 27.707243, 23.722227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795727, 27.703854, 23.805202>,  <30.420437, 27.698204, 23.943497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795727, 27.703854, 23.805202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079745, 0.963443, 0.255769,
		0.336708, -0.267540, 0.902801,
		0.938226, 0.014125, -0.345734,
		31.077194, 27.708092, 23.701483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876694, 28.149246, 24.471546>,  <30.420437, 27.698204, 23.943497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876694, 28.149246, 24.471546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083862, 28.120636, 24.130573>,  <31.208164, 28.103470, 23.925989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083862, 28.120636, 24.130573>,  <30.876694, 28.149246, 24.471546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083862, 28.120636, 24.130573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201494, 0.978660, 0.040310,
		0.831358, -0.192638, 0.521281,
		0.517922, -0.071523, -0.852433,
		31.239239, 28.099178, 23.874844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575724, 28.459934, 24.606960>,  <30.876694, 28.149246, 24.471546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575724, 28.459934, 24.606960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482906, 28.475124, 24.218174>,  <31.427216, 28.484238, 23.984903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482906, 28.475124, 24.218174>,  <31.575724, 28.459934, 24.606960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482906, 28.475124, 24.218174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262097, 0.964721, -0.024880,
		0.936729, -0.260523, -0.233809,
		-0.232042, 0.037975, -0.971964,
		31.413294, 28.486517, 23.926584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078545, 28.913841, 24.310186>,  <31.575724, 28.459934, 24.606960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078545, 28.913841, 24.310186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803911, 28.905216, 24.019493>,  <31.639132, 28.900042, 23.845078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803911, 28.905216, 24.019493>,  <32.078545, 28.913841, 24.310186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803911, 28.905216, 24.019493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021416, 0.999726, -0.009427,
		0.726736, 0.009092, -0.686857,
		-0.686583, -0.021560, -0.726732,
		31.597937, 28.898748, 23.801474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214294, 29.417976, 23.927475>,  <32.078545, 28.913841, 24.310186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214294, 29.417976, 23.927475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866343, 29.321678, 23.755268>,  <31.657570, 29.263899, 23.651943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866343, 29.321678, 23.755268>,  <32.214294, 29.417976, 23.927475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866343, 29.321678, 23.755268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178709, 0.967326, -0.179841,
		0.459747, -0.079503, -0.884484,
		-0.869883, -0.240747, -0.430517,
		31.605377, 29.249454, 23.626114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179523, 29.659081, 23.135975>,  <32.214294, 29.417976, 23.927475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179523, 29.659081, 23.135975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817057, 29.649158, 23.304852>,  <31.599577, 29.643206, 23.406178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817057, 29.649158, 23.304852>,  <32.179523, 29.659081, 23.135975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817057, 29.649158, 23.304852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072301, 0.992669, -0.096855,
		-0.416693, -0.118292, -0.901318,
		-0.906168, -0.024807, 0.422191,
		31.545206, 29.641716, 23.431509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783731, 30.026957, 22.689837>,  <32.179523, 29.659081, 23.135975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783731, 30.026957, 22.689837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608379, 30.015663, 23.049175>,  <31.503168, 30.008888, 23.264778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608379, 30.015663, 23.049175>,  <31.783731, 30.026957, 22.689837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608379, 30.015663, 23.049175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107994, 0.993920, -0.021464,
		-0.892279, -0.106426, -0.438761,
		-0.438378, -0.028232, 0.898347,
		31.476866, 30.007195, 23.318680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311850, 30.496120, 22.625868>,  <31.783731, 30.026957, 22.689837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311850, 30.496120, 22.625868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324116, 30.454304, 23.023487>,  <31.331476, 30.429214, 23.262058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324116, 30.454304, 23.023487>,  <31.311850, 30.496120, 22.625868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324116, 30.454304, 23.023487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095522, 0.990270, 0.101196,
		-0.994955, 0.091850, 0.040353,
		0.030665, -0.104540, 0.994048,
		31.333315, 30.422941, 23.321701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714136, 30.976387, 22.879625>,  <31.311850, 30.496120, 22.625868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714136, 30.976387, 22.879625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975222, 30.920452, 23.177460>,  <31.131872, 30.886890, 23.356161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975222, 30.920452, 23.177460>,  <30.714136, 30.976387, 22.879625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975222, 30.920452, 23.177460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069056, 0.967744, 0.242285,
		-0.754450, -0.209561, 0.622004,
		0.652714, -0.139839, 0.744586,
		31.171036, 30.878500, 23.400835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442148, 31.300598, 23.519953>,  <30.714136, 30.976387, 22.879625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442148, 31.300598, 23.519953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841389, 31.282047, 23.536179>,  <31.080933, 31.270916, 23.545914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841389, 31.282047, 23.536179>,  <30.442148, 31.300598, 23.519953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841389, 31.282047, 23.536179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030050, 0.941146, 0.336662,
		-0.053789, -0.334804, 0.940752,
		0.998100, -0.046378, 0.040562,
		31.140820, 31.268133, 23.548347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576561, 31.654942, 24.199667>,  <30.442148, 31.300598, 23.519953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576561, 31.654942, 24.199667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902662, 31.663731, 23.968193>,  <31.098324, 31.669004, 23.829308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902662, 31.663731, 23.968193>,  <30.576561, 31.654942, 24.199667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902662, 31.663731, 23.968193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111930, 0.974458, 0.194688,
		0.568184, -0.223493, 0.791972,
		0.815254, 0.021974, -0.578686,
		31.147238, 31.670322, 23.794586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943462, 32.081158, 24.622404>,  <30.576561, 31.654942, 24.199667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943462, 32.081158, 24.622404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112114, 32.078617, 24.259705>,  <31.213305, 32.077091, 24.042086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112114, 32.078617, 24.259705>,  <30.943462, 32.081158, 24.622404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112114, 32.078617, 24.259705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018097, 0.999835, 0.001408,
		0.906588, -0.017003, 0.421674,
		0.421628, -0.006354, -0.906747,
		31.238602, 32.076710, 23.987680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606041, 32.470554, 24.718836>,  <30.943462, 32.081158, 24.622404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606041, 32.470554, 24.718836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488176, 32.459690, 24.336750>,  <31.417458, 32.453171, 24.107498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488176, 32.459690, 24.336750>,  <31.606041, 32.470554, 24.718836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488176, 32.459690, 24.336750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094459, 0.993873, -0.057399,
		0.950921, -0.107142, -0.290292,
		-0.294663, -0.027162, -0.955215,
		31.399776, 32.451542, 24.050186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836384, 33.108395, 24.412773>,  <31.606041, 32.470554, 24.718836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836384, 33.108395, 24.412773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598534, 33.015778, 24.104797>,  <31.455824, 32.960209, 23.920012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598534, 33.015778, 24.104797>,  <31.836384, 33.108395, 24.412773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598534, 33.015778, 24.104797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073973, 0.937818, -0.339153,
		0.800591, -0.258625, -0.540526,
		-0.594628, -0.231538, -0.769940,
		31.420145, 32.946316, 23.873816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152477, 33.521091, 23.950064>,  <31.836384, 33.108395, 24.412773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152477, 33.521091, 23.950064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791945, 33.437469, 23.798328>,  <31.575624, 33.387295, 23.707287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791945, 33.437469, 23.798328>,  <32.152477, 33.521091, 23.950064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791945, 33.437469, 23.798328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027477, 0.846445, -0.531767,
		0.432257, -0.489722, -0.757183,
		-0.901332, -0.209055, -0.379338,
		31.521545, 33.374752, 23.684526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252872, 33.608494, 23.327955>,  <32.152477, 33.521091, 23.950064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252872, 33.608494, 23.327955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858648, 33.648582, 23.382545>,  <31.622114, 33.672634, 23.415300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858648, 33.648582, 23.382545>,  <32.252872, 33.608494, 23.327955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858648, 33.648582, 23.382545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000990, 0.802584, -0.596539,
		-0.169319, -0.588060, -0.790896,
		-0.985561, 0.100223, 0.136475,
		31.562981, 33.678650, 23.423489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811785, 33.633106, 22.670198>,  <32.252872, 33.608494, 23.327955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811785, 33.633106, 22.670198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606661, 33.812439, 22.963055>,  <31.483587, 33.920036, 23.138769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606661, 33.812439, 22.963055>,  <31.811785, 33.633106, 22.670198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606661, 33.812439, 22.963055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294832, 0.708973, -0.640649,
		-0.806289, -0.544388, -0.231385,
		-0.512807, 0.448329, 0.732141,
		31.452818, 33.946938, 23.182697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150023, 33.670841, 22.465158>,  <31.811785, 33.633106, 22.670198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150023, 33.670841, 22.465158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156418, 33.953941, 22.747669>,  <31.160255, 34.123802, 22.917175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156418, 33.953941, 22.747669>,  <31.150023, 33.670841, 22.465158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156418, 33.953941, 22.747669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471849, 0.628108, -0.618740,
		-0.881535, -0.323364, 0.343995,
		0.015987, 0.707754, 0.706278,
		31.161215, 34.166267, 22.959553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454414, 34.080280, 22.500574>,  <31.150023, 33.670841, 22.465158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454414, 34.080280, 22.500574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710882, 34.318474, 22.694195>,  <30.864763, 34.461388, 22.810368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710882, 34.318474, 22.694195>,  <30.454414, 34.080280, 22.500574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710882, 34.318474, 22.694195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447776, 0.802563, -0.394194,
		-0.623215, 0.035999, 0.781221,
		0.641170, 0.595480, 0.484050,
		30.903233, 34.497116, 22.839409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042629, 34.565022, 22.673971>,  <30.454414, 34.080280, 22.500574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042629, 34.565022, 22.673971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410196, 34.722767, 22.677280>,  <30.630737, 34.817413, 22.679266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410196, 34.722767, 22.677280>,  <30.042629, 34.565022, 22.673971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410196, 34.722767, 22.677280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379166, 0.888908, -0.257053,
		-0.108724, 0.233074, 0.966362,
		0.918919, 0.394360, 0.008272,
		30.685871, 34.841076, 22.679762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261066, 34.348270, 22.500935>,  <30.042629, 34.565022, 22.673971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261066, 34.348270, 22.500935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901810, 34.310455, 22.672703>,  <28.686255, 34.287766, 22.775764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901810, 34.310455, 22.672703>,  <29.261066, 34.348270, 22.500935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901810, 34.310455, 22.672703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110531, -0.993795, 0.012395,
		0.425584, 0.058596, 0.903020,
		-0.898143, -0.094537, 0.429420,
		28.632366, 34.282093, 22.801529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363068, 33.894852, 22.962940>,  <29.261066, 34.348270, 22.500935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363068, 33.894852, 22.962940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965252, 33.876438, 22.925480>,  <28.726562, 33.865391, 22.903004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965252, 33.876438, 22.925480>,  <29.363068, 33.894852, 22.962940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965252, 33.876438, 22.925480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038281, -0.995820, 0.082931,
		-0.097077, 0.078894, 0.992145,
		-0.994541, -0.046031, -0.093651,
		28.666889, 33.862629, 22.897385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193821, 33.341938, 23.407938>,  <29.363068, 33.894852, 22.962940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193821, 33.341938, 23.407938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861855, 33.378952, 23.187874>,  <28.662674, 33.401161, 23.055836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861855, 33.378952, 23.187874>,  <29.193821, 33.341938, 23.407938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861855, 33.378952, 23.187874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156302, -0.985220, 0.070075,
		-0.535543, 0.144147, 0.832115,
		-0.829918, 0.092533, -0.550158,
		28.612879, 33.406712, 23.022827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705526, 33.040287, 23.731304>,  <29.193821, 33.341938, 23.407938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705526, 33.040287, 23.731304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581802, 33.039143, 23.350922>,  <28.507568, 33.038456, 23.122692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581802, 33.039143, 23.350922>,  <28.705526, 33.040287, 23.731304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581802, 33.039143, 23.350922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233261, -0.969217, 0.078784,
		-0.921909, 0.246190, 0.299122,
		-0.309310, -0.002858, -0.950957,
		28.489010, 33.038284, 23.065634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042498, 32.736851, 23.720877>,  <28.705526, 33.040287, 23.731304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042498, 32.736851, 23.720877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161970, 32.691566, 23.341831>,  <28.233654, 32.664398, 23.114403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161970, 32.691566, 23.341831>,  <28.042498, 32.736851, 23.720877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161970, 32.691566, 23.341831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295534, -0.955103, 0.020951,
		-0.907441, 0.273794, -0.318729,
		0.298682, -0.113207, -0.947614,
		28.251575, 32.657604, 23.057547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494337, 32.425636, 23.298206>,  <28.042498, 32.736851, 23.720877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494337, 32.425636, 23.298206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828621, 32.355473, 23.090046>,  <28.029192, 32.313374, 22.965149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828621, 32.355473, 23.090046>,  <27.494337, 32.425636, 23.298206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828621, 32.355473, 23.090046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216000, -0.976231, -0.017811,
		-0.504908, 0.127291, -0.853736,
		0.835710, -0.175414, -0.520402,
		28.079334, 32.302849, 22.933926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331741, 31.888266, 22.867273>,  <27.494337, 32.425636, 23.298206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331741, 31.888266, 22.867273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730789, 31.891441, 22.894676>,  <27.970219, 31.893347, 22.911118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730789, 31.891441, 22.894676>,  <27.331741, 31.888266, 22.867273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730789, 31.891441, 22.894676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001581, -0.995725, 0.092354,
		0.068949, -0.092026, -0.993366,
		0.997619, 0.007938, 0.068509,
		28.030075, 31.893824, 22.915230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519691, 31.410297, 22.327503>,  <27.331741, 31.888266, 22.867273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519691, 31.410297, 22.327503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812517, 31.449387, 22.597179>,  <27.988213, 31.472839, 22.758986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812517, 31.449387, 22.597179>,  <27.519691, 31.410297, 22.327503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812517, 31.449387, 22.597179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107678, -0.993816, 0.027128,
		0.672673, 0.052736, -0.738059,
		0.732063, 0.097721, 0.674191,
		28.032137, 31.478703, 22.799437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870365, 30.888025, 22.317835>,  <27.519691, 31.410297, 22.327503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870365, 30.888025, 22.317835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040073, 31.006332, 22.660183>,  <28.141899, 31.077316, 22.865593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040073, 31.006332, 22.660183>,  <27.870365, 30.888025, 22.317835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040073, 31.006332, 22.660183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047948, -0.951167, 0.304931,
		0.904266, -0.088336, -0.417733,
		0.424270, 0.295768, 0.855872,
		28.167355, 31.095062, 22.916945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460278, 30.492962, 22.361099>,  <27.870365, 30.888025, 22.317835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460278, 30.492962, 22.361099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341993, 30.606144, 22.726063>,  <28.271023, 30.674053, 22.945042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341993, 30.606144, 22.726063>,  <28.460278, 30.492962, 22.361099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341993, 30.606144, 22.726063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130196, -0.934275, 0.331932,
		0.946364, 0.216948, 0.239436,
		-0.295711, 0.282954, 0.912410,
		28.253281, 30.691031, 22.999786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967674, 30.340662, 22.805756>,  <28.460278, 30.492962, 22.361099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967674, 30.340662, 22.805756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616488, 30.343475, 22.997223>,  <28.405775, 30.345163, 23.112103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.616488, 30.343475, 22.997223>,  <28.967674, 30.340662, 22.805756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616488, 30.343475, 22.997223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177708, -0.923658, 0.339523,
		0.444513, 0.383154, 0.809692,
		-0.877968, 0.007034, 0.478668,
		28.353098, 30.345585, 23.140823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042175, 30.124231, 23.518223>,  <28.967674, 30.340662, 22.805756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042175, 30.124231, 23.518223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652390, 30.055439, 23.460476>,  <28.418518, 30.014164, 23.425829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652390, 30.055439, 23.460476>,  <29.042175, 30.124231, 23.518223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652390, 30.055439, 23.460476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093525, -0.895384, 0.435363,
		-0.204136, 0.410745, 0.888604,
		-0.974465, -0.171980, -0.144365,
		28.360050, 30.003845, 23.417166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753809, 30.018826, 24.085299>,  <29.042175, 30.124231, 23.518223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753809, 30.018826, 24.085299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484125, 29.841019, 23.849384>,  <28.322315, 29.734335, 23.707836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484125, 29.841019, 23.849384>,  <28.753809, 30.018826, 24.085299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484125, 29.841019, 23.849384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175575, -0.872159, 0.456631,
		-0.717368, 0.204312, 0.666063,
		-0.674208, -0.444517, -0.589787,
		28.281862, 29.707664, 23.672449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379259, 29.573675, 24.502411>,  <28.753809, 30.018826, 24.085299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379259, 29.573675, 24.502411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344297, 29.420940, 24.134377>,  <28.323320, 29.329300, 23.913555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344297, 29.420940, 24.134377>,  <28.379259, 29.573675, 24.502411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344297, 29.420940, 24.134377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045225, -0.924191, 0.379243,
		-0.995146, -0.008464, 0.098045,
		-0.087402, -0.381837, -0.920088,
		28.318077, 29.306389, 23.858351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876585, 29.048775, 24.569857>,  <28.379259, 29.573675, 24.502411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876585, 29.048775, 24.569857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087894, 28.964828, 24.240765>,  <28.214680, 28.914461, 24.043310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087894, 28.964828, 24.240765>,  <27.876585, 29.048775, 24.569857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087894, 28.964828, 24.240765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077078, -0.953118, 0.292618,
		-0.845568, -0.217997, -0.487332,
		0.528275, -0.209865, -0.822729,
		28.246376, 28.901869, 23.993946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507977, 28.479492, 24.220964>,  <27.876585, 29.048775, 24.569857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507977, 28.479492, 24.220964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892916, 28.462040, 24.113647>,  <28.123878, 28.451569, 24.049257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892916, 28.462040, 24.113647>,  <27.507977, 28.479492, 24.220964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892916, 28.462040, 24.113647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029845, -0.964104, 0.263844,
		-0.270175, -0.261917, -0.926502,
		0.962349, -0.043633, -0.268293,
		28.181620, 28.448950, 24.033159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450415, 27.777502, 23.829479>,  <27.507977, 28.479492, 24.220964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450415, 27.777502, 23.829479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835278, 27.868717, 23.889153>,  <28.066195, 27.923447, 23.924957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835278, 27.868717, 23.889153>,  <27.450415, 27.777502, 23.829479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835278, 27.868717, 23.889153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237166, -0.970364, -0.046321,
		0.134199, 0.079950, -0.987724,
		0.962155, 0.228039, 0.149184,
		28.123924, 27.937128, 23.933908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840841, 27.254677, 23.507936>,  <27.450415, 27.777502, 23.829479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840841, 27.254677, 23.507936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155262, 27.421814, 23.690159>,  <28.343914, 27.522097, 23.799492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155262, 27.421814, 23.690159>,  <27.840841, 27.254677, 23.507936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155262, 27.421814, 23.690159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477018, -0.878727, -0.017106,
		0.393160, 0.230754, -0.890044,
		0.786052, 0.417842, 0.455554,
		28.391077, 27.547167, 23.826826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444786, 27.153244, 23.161028>,  <27.840841, 27.254677, 23.507936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444786, 27.153244, 23.161028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600716, 27.227413, 23.521839>,  <28.694273, 27.271914, 23.738327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600716, 27.227413, 23.521839>,  <28.444786, 27.153244, 23.161028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600716, 27.227413, 23.521839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382288, -0.923714, 0.024669,
		0.837791, 0.335218, -0.430970,
		0.389823, 0.185422, 0.902029,
		28.717663, 27.283039, 23.792448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154118, 26.941515, 23.194439>,  <28.444786, 27.153244, 23.161028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154118, 26.941515, 23.194439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077888, 26.961372, 23.586605>,  <29.032150, 26.973286, 23.821905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077888, 26.961372, 23.586605>,  <29.154118, 26.941515, 23.194439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077888, 26.961372, 23.586605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329196, -0.937659, 0.111465,
		0.924831, 0.343992, 0.162350,
		-0.190572, 0.049641, 0.980417,
		29.020718, 26.976265, 23.880730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661598, 26.541729, 23.449919>,  <29.154118, 26.941515, 23.194439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661598, 26.541729, 23.449919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387350, 26.553146, 23.740879>,  <29.222801, 26.559996, 23.915455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387350, 26.553146, 23.740879>,  <29.661598, 26.541729, 23.449919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387350, 26.553146, 23.740879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074895, -0.991163, 0.109485,
		0.724095, 0.129544, 0.677425,
		-0.685621, 0.028542, 0.727399,
		29.181664, 26.561708, 23.959099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023006, 26.194481, 24.062920>,  <29.661598, 26.541729, 23.449919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023006, 26.194481, 24.062920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626030, 26.164280, 24.101620>,  <29.387844, 26.146158, 24.124840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626030, 26.164280, 24.101620>,  <30.023006, 26.194481, 24.062920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626030, 26.164280, 24.101620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065493, -0.992547, -0.102769,
		0.103789, -0.095656, 0.989989,
		-0.992441, -0.075504, 0.096751,
		29.328299, 26.141628, 24.130646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917938, 25.604509, 24.497656>,  <30.023006, 26.194481, 24.062920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917938, 25.604509, 24.497656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567541, 25.664425, 24.314266>,  <29.357302, 25.700375, 24.204233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567541, 25.664425, 24.314266>,  <29.917938, 25.604509, 24.497656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567541, 25.664425, 24.314266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131833, -0.988716, -0.071140,
		-0.463956, -0.001876, 0.885857,
		-0.875994, 0.149791, -0.458473,
		29.304743, 25.709362, 24.176723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611881, 24.949251, 24.585722>,  <29.917938, 25.604509, 24.497656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611881, 24.949251, 24.585722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376492, 25.128239, 24.316360>,  <29.235258, 25.235632, 24.154743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376492, 25.128239, 24.316360>,  <29.611881, 24.949251, 24.585722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376492, 25.128239, 24.316360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189747, -0.886059, -0.422961,
		-0.785937, -0.121124, 0.606326,
		-0.588471, 0.447469, -0.673404,
		29.199949, 25.262480, 24.114340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001543, 24.557552, 24.536274>,  <29.611881, 24.949251, 24.585722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001543, 24.557552, 24.536274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057236, 24.738617, 24.183975>,  <29.090652, 24.847256, 23.972597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057236, 24.738617, 24.183975>,  <29.001543, 24.557552, 24.536274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057236, 24.738617, 24.183975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141900, -0.871109, -0.470142,
		-0.980040, 0.190437, -0.057055,
		0.139233, 0.452662, -0.880745,
		29.099005, 24.874416, 23.919752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414028, 24.377268, 24.169670>,  <29.001543, 24.557552, 24.536274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414028, 24.377268, 24.169670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686140, 24.506271, 23.906395>,  <28.849407, 24.583673, 23.748430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686140, 24.506271, 23.906395>,  <28.414028, 24.377268, 24.169670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686140, 24.506271, 23.906395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238094, -0.752058, -0.614589,
		-0.693204, 0.574802, -0.434822,
		0.680279, 0.322507, -0.658187,
		28.890224, 24.603024, 23.708939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135971, 24.278957, 23.392208>,  <28.414028, 24.377268, 24.169670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135971, 24.278957, 23.392208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533752, 24.283840, 23.433990>,  <28.772421, 24.286770, 23.459059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533752, 24.283840, 23.433990>,  <28.135971, 24.278957, 23.392208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533752, 24.283840, 23.433990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061192, -0.874942, -0.480346,
		0.085528, 0.484074, -0.870837,
		0.994455, 0.012206, 0.104454,
		28.832088, 24.287502, 23.465326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370745, 24.137089, 22.694510>,  <28.135971, 24.278957, 23.392208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370745, 24.137089, 22.694510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694841, 24.054111, 22.913773>,  <28.889299, 24.004324, 23.045330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694841, 24.054111, 22.913773>,  <28.370745, 24.137089, 22.694510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694841, 24.054111, 22.913773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144274, -0.835894, -0.529590,
		0.568063, 0.508180, -0.647347,
		0.810241, -0.207445, 0.548157,
		28.937914, 23.991879, 23.078220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838261, 24.004074, 22.173515>,  <28.370745, 24.137089, 22.694510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838261, 24.004074, 22.173515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998230, 23.846298, 22.504448>,  <29.094212, 23.751633, 22.703009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998230, 23.846298, 22.504448>,  <28.838261, 24.004074, 22.173515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998230, 23.846298, 22.504448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233976, -0.828819, -0.508247,
		0.886181, 0.396836, -0.239175,
		0.399923, -0.394438, 0.827333,
		29.118206, 23.727966, 22.752647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392416, 23.663214, 21.902115>,  <28.838261, 24.004074, 22.173515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392416, 23.663214, 21.902115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375341, 23.505516, 22.269321>,  <29.365097, 23.410898, 22.489645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375341, 23.505516, 22.269321>,  <29.392416, 23.663214, 21.902115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375341, 23.505516, 22.269321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303307, -0.880600, -0.364072,
		0.951936, 0.262899, 0.157166,
		-0.042686, -0.394243, 0.918014,
		29.362535, 23.387243, 22.544725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126608, 23.369068, 22.079327>,  <29.392416, 23.663214, 21.902115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126608, 23.369068, 22.079327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797985, 23.203705, 22.236370>,  <29.600811, 23.104486, 22.330595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797985, 23.203705, 22.236370>,  <30.126608, 23.369068, 22.079327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797985, 23.203705, 22.236370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338398, -0.907797, -0.247773,
		0.458839, -0.070701, 0.885702,
		-0.821556, -0.413408, 0.392607,
		29.551517, 23.079683, 22.354153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432732, 22.774200, 22.261896>,  <30.126608, 23.369068, 22.079327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432732, 22.774200, 22.261896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050053, 22.678822, 22.328678>,  <29.820446, 22.621595, 22.368748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050053, 22.678822, 22.328678>,  <30.432732, 22.774200, 22.261896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050053, 22.678822, 22.328678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191020, -0.947070, -0.258013,
		0.219641, -0.214948, 0.951607,
		-0.956697, -0.238446, 0.166956,
		29.763044, 22.607288, 22.378765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487577, 22.238300, 22.665230>,  <30.432732, 22.774200, 22.261896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487577, 22.238300, 22.665230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145458, 22.226139, 22.458332>,  <29.940187, 22.218842, 22.334194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145458, 22.226139, 22.458332>,  <30.487577, 22.238300, 22.665230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145458, 22.226139, 22.458332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236645, -0.911000, -0.337755,
		-0.460940, -0.411284, 0.786371,
		-0.855297, -0.030405, -0.517245,
		29.888868, 22.217018, 22.303158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317530, 21.576805, 22.700001>,  <30.487577, 22.238300, 22.665230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317530, 21.576805, 22.700001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109713, 21.703362, 22.382519>,  <29.985022, 21.779295, 22.192030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109713, 21.703362, 22.382519>,  <30.317530, 21.576805, 22.700001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109713, 21.703362, 22.382519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067903, -0.910690, -0.407471,
		-0.851740, -0.265595, 0.451661,
		-0.519546, 0.316391, -0.793706,
		29.953850, 21.798279, 22.144407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807577, 21.038628, 22.518486>,  <30.317530, 21.576805, 22.700001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807577, 21.038628, 22.518486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844374, 21.255684, 22.184521>,  <29.866451, 21.385918, 21.984142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844374, 21.255684, 22.184521>,  <29.807577, 21.038628, 22.518486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844374, 21.255684, 22.184521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171776, -0.834544, -0.523477,
		-0.980832, -0.095263, -0.169983,
		0.091991, 0.542642, -0.834912,
		29.871971, 21.418476, 21.934048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452721, 20.630304, 22.075085>,  <29.807577, 21.038628, 22.518486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452721, 20.630304, 22.075085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645714, 20.885471, 21.834995>,  <29.761509, 21.038572, 21.690941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645714, 20.885471, 21.834995>,  <29.452721, 20.630304, 22.075085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645714, 20.885471, 21.834995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309219, -0.765190, -0.564684,
		-0.819508, 0.086850, -0.566448,
		0.482483, 0.637920, -0.600224,
		29.790459, 21.076847, 21.654928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327749, 20.481367, 21.338444>,  <29.452721, 20.630304, 22.075085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327749, 20.481367, 21.338444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667820, 20.691513, 21.352245>,  <29.871862, 20.817600, 21.360525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667820, 20.691513, 21.352245>,  <29.327749, 20.481367, 21.338444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667820, 20.691513, 21.352245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414525, -0.627527, -0.659075,
		-0.324603, 0.574633, -0.751285,
		0.850178, 0.525364, 0.034503,
		29.922873, 20.849123, 21.362597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472424, 20.619989, 20.646088>,  <29.327749, 20.481367, 21.338444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472424, 20.619989, 20.646088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801409, 20.607574, 20.873276>,  <29.998800, 20.600124, 21.009588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801409, 20.607574, 20.873276>,  <29.472424, 20.619989, 20.646088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801409, 20.607574, 20.873276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412691, -0.654612, -0.633380,
		0.391460, 0.755328, -0.525584,
		0.822463, -0.031039, 0.567971,
		30.048147, 20.598263, 21.043667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987534, 20.305809, 20.113016>,  <29.472424, 20.619989, 20.646088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987534, 20.305809, 20.113016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841169, 20.267097, 19.742775>,  <29.753351, 20.243870, 19.520630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841169, 20.267097, 19.742775>,  <29.987534, 20.305809, 20.113016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841169, 20.267097, 19.742775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242462, 0.970145, -0.005587,
		0.898511, 0.222379, -0.378452,
		-0.365911, -0.096781, -0.925604,
		29.731396, 20.238064, 19.465094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322618, 20.730225, 19.641010>,  <29.987534, 20.305809, 20.113016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322618, 20.730225, 19.641010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964733, 20.674599, 19.471233>,  <29.750002, 20.641222, 19.369368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964733, 20.674599, 19.471233>,  <30.322618, 20.730225, 19.641010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964733, 20.674599, 19.471233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100773, 0.988642, -0.111498,
		0.435125, -0.056987, -0.898565,
		-0.894713, -0.139066, -0.424440,
		29.696320, 20.632879, 19.343901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301125, 21.135941, 19.093410>,  <30.322618, 20.730225, 19.641010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301125, 21.135941, 19.093410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913996, 21.062496, 19.162239>,  <29.681719, 21.018429, 19.203537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913996, 21.062496, 19.162239>,  <30.301125, 21.135941, 19.093410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913996, 21.062496, 19.162239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201489, 0.975084, -0.092807,
		-0.150744, -0.124491, -0.980703,
		-0.967822, -0.183610, 0.172072,
		29.623650, 21.007414, 19.213861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030977, 21.709185, 18.688038>,  <30.301125, 21.135941, 19.093410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030977, 21.709185, 18.688038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735811, 21.576927, 18.923378>,  <29.558712, 21.497572, 19.064583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735811, 21.576927, 18.923378>,  <30.030977, 21.709185, 18.688038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735811, 21.576927, 18.923378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414690, 0.909921, -0.008745,
		-0.532461, -0.250436, -0.808559,
		-0.737914, -0.330645, 0.588351,
		29.514437, 21.477734, 19.099884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400158, 21.988464, 18.377409>,  <30.030977, 21.709185, 18.688038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400158, 21.988464, 18.377409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315691, 21.894798, 18.757004>,  <29.265011, 21.838598, 18.984760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315691, 21.894798, 18.757004>,  <29.400158, 21.988464, 18.377409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315691, 21.894798, 18.757004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484025, 0.868536, 0.106608,
		-0.849193, -0.436821, -0.296747,
		-0.211167, -0.234163, 0.948987,
		29.252340, 21.824549, 19.041700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649986, 22.169733, 18.422207>,  <29.400158, 21.988464, 18.377409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649986, 22.169733, 18.422207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814873, 22.167732, 18.786636>,  <28.913805, 22.166531, 19.005293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814873, 22.167732, 18.786636>,  <28.649986, 22.169733, 18.422207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814873, 22.167732, 18.786636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471807, 0.854285, 0.218163,
		-0.779406, -0.519781, 0.349791,
		0.412218, -0.005003, 0.911071,
		28.938538, 22.166231, 19.059958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028923, 22.169518, 18.968210>,  <28.649986, 22.169733, 18.422207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028923, 22.169518, 18.968210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354008, 22.303551, 19.158882>,  <28.549059, 22.383970, 19.273285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354008, 22.303551, 19.158882>,  <28.028923, 22.169518, 18.968210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354008, 22.303551, 19.158882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560369, 0.673652, 0.481850,
		-0.159656, -0.658721, 0.735253,
		0.812710, 0.335083, 0.476679,
		28.597820, 22.404076, 19.301886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724257, 22.494217, 19.543434>,  <28.028923, 22.169518, 18.968210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724257, 22.494217, 19.543434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099054, 22.633553, 19.554024>,  <28.323933, 22.717154, 19.560377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099054, 22.633553, 19.554024>,  <27.724257, 22.494217, 19.543434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099054, 22.633553, 19.554024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327439, 0.849306, 0.414080,
		0.121754, -0.396660, 0.909855,
		0.936995, 0.348338, 0.026475,
		28.380154, 22.738054, 19.561966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955694, 22.600542, 20.221430>,  <27.724257, 22.494217, 19.543434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955694, 22.600542, 20.221430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197989, 22.848820, 20.022305>,  <28.343365, 22.997787, 19.902828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197989, 22.848820, 20.022305>,  <27.955694, 22.600542, 20.221430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197989, 22.848820, 20.022305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202752, 0.725417, 0.657770,
		0.769397, -0.297504, 0.565261,
		0.605740, 0.620694, -0.497814,
		28.379709, 23.035028, 19.872959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386814, 22.986790, 20.768665>,  <27.955694, 22.600542, 20.221430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386814, 22.986790, 20.768665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397705, 23.218178, 20.442566>,  <28.404240, 23.357010, 20.246906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397705, 23.218178, 20.442566>,  <28.386814, 22.986790, 20.768665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397705, 23.218178, 20.442566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073098, 0.814520, 0.575511,
		0.996953, 0.043923, 0.064463,
		0.027228, 0.578470, -0.815249,
		28.405874, 23.391718, 20.197990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783245, 23.656925, 20.916298>,  <28.386814, 22.986790, 20.768665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783245, 23.656925, 20.916298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591444, 23.752506, 20.578545>,  <28.476364, 23.809855, 20.375893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591444, 23.752506, 20.578545>,  <28.783245, 23.656925, 20.916298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591444, 23.752506, 20.578545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209807, 0.903091, 0.374710,
		0.852091, 0.356831, -0.382900,
		-0.479502, 0.238952, -0.844382,
		28.447594, 23.824192, 20.325230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840670, 24.391445, 20.869078>,  <28.783245, 23.656925, 20.916298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840670, 24.391445, 20.869078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572216, 24.344662, 20.576256>,  <28.411144, 24.316591, 20.400562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572216, 24.344662, 20.576256>,  <28.840670, 24.391445, 20.869078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572216, 24.344662, 20.576256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287538, 0.951242, 0.111630,
		0.683303, 0.285412, -0.672040,
		-0.671133, -0.116960, -0.732053,
		28.370876, 24.309574, 20.356640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942156, 24.942242, 20.350592>,  <28.840670, 24.391445, 20.869078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942156, 24.942242, 20.350592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564400, 24.814301, 20.381111>,  <28.337746, 24.737535, 20.399422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564400, 24.814301, 20.381111>,  <28.942156, 24.942242, 20.350592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564400, 24.814301, 20.381111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317116, 0.947274, 0.045927,
		-0.086965, 0.019177, -0.996027,
		-0.944391, -0.319851, 0.076298,
		28.281082, 24.718346, 20.404001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481365, 25.420731, 19.853283>,  <28.942156, 24.942242, 20.350592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481365, 25.420731, 19.853283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231670, 25.224144, 20.096195>,  <28.081854, 25.106192, 20.241943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231670, 25.224144, 20.096195>,  <28.481365, 25.420731, 19.853283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231670, 25.224144, 20.096195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376401, 0.870366, 0.317468,
		-0.684582, -0.030407, -0.728301,
		-0.624235, -0.491467, 0.607282,
		28.044399, 25.076704, 20.278379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931820, 25.828318, 19.788509>,  <28.481365, 25.420731, 19.853283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931820, 25.828318, 19.788509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844601, 25.624096, 20.121204>,  <27.792269, 25.501562, 20.320822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844601, 25.624096, 20.121204>,  <27.931820, 25.828318, 19.788509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844601, 25.624096, 20.121204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269460, 0.850611, 0.451500,
		-0.938001, -0.125671, -0.323050,
		-0.218049, -0.510556, 0.831737,
		27.779186, 25.470928, 20.370726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252851, 25.985826, 20.018097>,  <27.931820, 25.828318, 19.788509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252851, 25.985826, 20.018097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461788, 25.867767, 20.338108>,  <27.587151, 25.796932, 20.530115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461788, 25.867767, 20.338108>,  <27.252851, 25.985826, 20.018097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461788, 25.867767, 20.338108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300815, 0.814100, 0.496741,
		-0.797916, -0.500129, 0.336454,
		0.522341, -0.295147, 0.800030,
		27.618490, 25.779222, 20.578117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775352, 25.923512, 20.533421>,  <27.252851, 25.985826, 20.018097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775352, 25.923512, 20.533421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139519, 25.975445, 20.690536>,  <27.358019, 26.006605, 20.784807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139519, 25.975445, 20.690536>,  <26.775352, 25.923512, 20.533421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139519, 25.975445, 20.690536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294042, 0.870969, 0.393639,
		-0.291002, -0.473873, 0.831121,
		0.910415, 0.129835, 0.392792,
		27.412643, 26.014395, 20.808374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682858, 26.327713, 21.126041>,  <26.775352, 25.923512, 20.533421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682858, 26.327713, 21.126041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076237, 26.388107, 21.166107>,  <27.312263, 26.424343, 21.190145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076237, 26.388107, 21.166107>,  <26.682858, 26.327713, 21.126041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076237, 26.388107, 21.166107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180721, 0.857079, 0.482448,
		-0.013005, -0.492564, 0.870179,
		0.983448, 0.150985, 0.100163,
		27.371271, 26.433403, 21.196156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779097, 26.691471, 21.753448>,  <26.682858, 26.327713, 21.126041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779097, 26.691471, 21.753448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114231, 26.769669, 21.549561>,  <27.315311, 26.816587, 21.427229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114231, 26.769669, 21.549561>,  <26.779097, 26.691471, 21.753448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114231, 26.769669, 21.549561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074430, 0.884061, 0.461408,
		0.540824, -0.424523, 0.726148,
		0.837837, 0.195493, -0.509718,
		27.365582, 26.828316, 21.396645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241150, 26.973314, 22.246840>,  <26.779097, 26.691471, 21.753448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241150, 26.973314, 22.246840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362280, 27.095234, 21.885643>,  <27.434958, 27.168386, 21.668924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362280, 27.095234, 21.885643>,  <27.241150, 26.973314, 22.246840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362280, 27.095234, 21.885643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134740, 0.924271, 0.357167,
		0.943473, -0.229828, 0.238826,
		0.302827, 0.304798, -0.902992,
		27.453127, 27.186674, 21.614746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647745, 27.513180, 22.383833>,  <27.241150, 26.973314, 22.246840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647745, 27.513180, 22.383833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597111, 27.582043, 21.993073>,  <27.566730, 27.623360, 21.758615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597111, 27.582043, 21.993073>,  <27.647745, 27.513180, 22.383833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597111, 27.582043, 21.993073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011856, 0.984492, 0.175031,
		0.991885, 0.033739, -0.122581,
		-0.126585, 0.172157, -0.976902,
		27.559135, 27.633690, 21.700003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131617, 27.980955, 22.178034>,  <27.647745, 27.513180, 22.383833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131617, 27.980955, 22.178034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820681, 28.005989, 21.927650>,  <27.634119, 28.021009, 21.777420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820681, 28.005989, 21.927650>,  <28.131617, 27.980955, 22.178034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820681, 28.005989, 21.927650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085130, 0.975420, 0.203246,
		0.623291, 0.211279, -0.752907,
		-0.777342, 0.062586, -0.625957,
		27.587479, 28.024765, 21.739862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108068, 28.665228, 21.780025>,  <28.131617, 27.980955, 22.178034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108068, 28.665228, 21.780025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735495, 28.529758, 21.726761>,  <27.511951, 28.448477, 21.694801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735495, 28.529758, 21.726761>,  <28.108068, 28.665228, 21.780025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735495, 28.529758, 21.726761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350356, 0.933487, 0.076496,
		0.098397, 0.117905, -0.988138,
		-0.931434, -0.338673, -0.133162,
		27.456064, 28.428156, 21.686811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769382, 29.209995, 21.447462>,  <28.108068, 28.665228, 21.780025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769382, 29.209995, 21.447462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456322, 28.991806, 21.567406>,  <27.268486, 28.860893, 21.639372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456322, 28.991806, 21.567406>,  <27.769382, 29.209995, 21.447462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456322, 28.991806, 21.567406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504085, 0.838040, 0.208775,
		-0.365176, 0.012243, -0.930858,
		-0.782652, -0.545471, 0.299861,
		27.221525, 28.828165, 21.657364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077892, 29.436220, 21.122320>,  <27.769382, 29.209995, 21.447462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077892, 29.436220, 21.122320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963188, 29.267471, 21.466366>,  <26.894365, 29.166222, 21.672792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963188, 29.267471, 21.466366>,  <27.077892, 29.436220, 21.122320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963188, 29.267471, 21.466366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584961, 0.788121, 0.191535,
		-0.758676, -0.448209, -0.472778,
		-0.286759, -0.421870, 0.860113,
		26.877161, 29.140911, 21.724400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360416, 29.333769, 21.047441>,  <27.077892, 29.436220, 21.122320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360416, 29.333769, 21.047441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457825, 29.362755, 21.434315>,  <26.516270, 29.380146, 21.666439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457825, 29.362755, 21.434315>,  <26.360416, 29.333769, 21.047441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457825, 29.362755, 21.434315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654025, 0.748640, 0.108581,
		-0.716205, -0.659004, 0.229705,
		0.243522, 0.072466, 0.967185,
		26.530882, 29.384495, 21.724470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757462, 29.409594, 21.320814>,  <26.360416, 29.333769, 21.047441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757462, 29.409594, 21.320814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027283, 29.543278, 21.584110>,  <26.189177, 29.623487, 21.742088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027283, 29.543278, 21.584110>,  <25.757462, 29.409594, 21.320814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.027283, 29.543278, 21.584110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607781, 0.757531, 0.238222,
		-0.419022, -0.560760, 0.714121,
		0.674554, 0.334209, 0.658241,
		26.229649, 29.643541, 21.781582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377363, 29.676058, 21.804796>,  <25.757462, 29.409594, 21.320814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377363, 29.676058, 21.804796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744995, 29.813404, 21.882145>,  <25.965574, 29.895811, 21.928555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744995, 29.813404, 21.882145>,  <25.377363, 29.676058, 21.804796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744995, 29.813404, 21.882145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390301, 0.860871, 0.326445,
		-0.054378, -0.375502, 0.925225,
		0.919080, 0.343365, 0.193371,
		26.020720, 29.916414, 21.940157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329468, 29.920500, 22.405346>,  <25.377363, 29.676058, 21.804796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329468, 29.920500, 22.405346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652817, 30.103382, 22.257023>,  <25.846827, 30.213112, 22.168030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652817, 30.103382, 22.257023>,  <25.329468, 29.920500, 22.405346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652817, 30.103382, 22.257023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473889, 0.879115, 0.050851,
		0.349231, 0.134614, 0.927317,
		0.808373, 0.457204, -0.370806,
		25.895329, 30.240543, 22.145781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.484749, 30.410673, 22.858740>,  <25.329468, 29.920500, 22.405346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.484749, 30.410673, 22.858740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641661, 30.542389, 22.515186>,  <25.735807, 30.621418, 22.309053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641661, 30.542389, 22.515186>,  <25.484749, 30.410673, 22.858740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.641661, 30.542389, 22.515186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434337, 0.889389, 0.142611,
		0.810844, 0.317103, 0.491912,
		0.392279, 0.329291, -0.858885,
		25.759344, 30.641176, 22.257521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786152, 31.050993, 22.992126>,  <25.484749, 30.410673, 22.858740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786152, 31.050993, 22.992126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752779, 31.047028, 22.593540>,  <25.732756, 31.044649, 22.354389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752779, 31.047028, 22.593540>,  <25.786152, 31.050993, 22.992126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752779, 31.047028, 22.593540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424317, 0.905126, 0.026522,
		0.901663, 0.425029, -0.079722,
		-0.083431, -0.009913, -0.996464,
		25.727749, 31.044054, 22.294601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600458, 31.751764, 22.843143>,  <25.786152, 31.050993, 22.992126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600458, 31.751764, 22.843143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515932, 31.616943, 22.476158>,  <25.465218, 31.536051, 22.255966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515932, 31.616943, 22.476158>,  <25.600458, 31.751764, 22.843143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515932, 31.616943, 22.476158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609391, 0.779322, -0.145945,
		0.764191, 0.528255, -0.370078,
		-0.211314, -0.337053, -0.917465,
		25.452538, 31.515827, 22.200918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.777969, 32.321365, 22.367783>,  <25.600458, 31.751764, 22.843143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.777969, 32.321365, 22.367783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511099, 32.090591, 22.179306>,  <25.350977, 31.952127, 22.066219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511099, 32.090591, 22.179306>,  <25.777969, 32.321365, 22.367783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511099, 32.090591, 22.179306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560375, 0.805487, -0.192798,
		0.490771, 0.135414, -0.860701,
		-0.667176, -0.576935, -0.471192,
		25.310946, 31.917511, 22.037949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625341, 32.711651, 21.715694>,  <25.777969, 32.321365, 22.367783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625341, 32.711651, 21.715694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.311262, 32.467136, 21.755283>,  <25.122814, 32.320427, 21.779037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.311262, 32.467136, 21.755283>,  <25.625341, 32.711651, 21.715694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.311262, 32.467136, 21.755283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601927, 0.715888, -0.353818,
		0.145430, -0.337392, -0.930063,
		-0.785197, -0.611286, 0.098974,
		25.075703, 32.283752, 21.784975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322371, 32.703369, 21.077665>,  <25.625341, 32.711651, 21.715694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322371, 32.703369, 21.077665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037531, 32.594311, 21.336456>,  <24.866627, 32.528873, 21.491732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037531, 32.594311, 21.336456>,  <25.322371, 32.703369, 21.077665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037531, 32.594311, 21.336456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630327, 0.654116, -0.418115,
		-0.309200, -0.705546, -0.637652,
		-0.712098, -0.272648, 0.646977,
		24.823902, 32.512516, 21.530550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.737305, 32.642796, 20.712698>,  <25.322371, 32.703369, 21.077665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.737305, 32.642796, 20.712698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605112, 32.671547, 21.089127>,  <24.525797, 32.688797, 21.314983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605112, 32.671547, 21.089127>,  <24.737305, 32.642796, 20.712698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.605112, 32.671547, 21.089127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543415, 0.800749, -0.251995,
		-0.771675, -0.594672, -0.225572,
		-0.330481, 0.071879, 0.941072,
		24.505968, 32.693111, 21.371449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.962933, 32.771374, 20.547045>,  <24.737305, 32.642796, 20.712698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.962933, 32.771374, 20.547045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.057291, 32.870903, 20.922798>,  <24.113907, 32.930618, 21.148251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.057291, 32.870903, 20.922798>,  <23.962933, 32.771374, 20.547045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.057291, 32.870903, 20.922798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619940, 0.782944, -0.051703,
		-0.748349, -0.570165, 0.338949,
		0.235898, 0.248820, 0.939383,
		24.128061, 32.945549, 21.204613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.325748, 33.026901, 20.787313>,  <23.962933, 32.771374, 20.547045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.325748, 33.026901, 20.787313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.580633, 33.132072, 21.077095>,  <23.733564, 33.195175, 21.250963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.580633, 33.132072, 21.077095>,  <23.325748, 33.026901, 20.787313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.580633, 33.132072, 21.077095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497309, 0.858393, 0.125879,
		-0.588767, -0.440487, 0.677735,
		0.637210, 0.262930, 0.724451,
		23.771797, 33.210953, 21.294430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.958244, 33.008881, 21.578459>,  <23.325748, 33.026901, 20.787313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.958244, 33.008881, 21.578459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.256723, 33.268940, 21.521194>,  <23.435810, 33.424976, 21.486835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.256723, 33.268940, 21.521194>,  <22.958244, 33.008881, 21.578459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.256723, 33.268940, 21.521194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612571, 0.754754, 0.234741,
		0.260669, -0.087466, 0.961458,
		0.746196, 0.650151, -0.143161,
		23.480581, 33.463985, 21.478247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.850464, 33.543976, 22.125528>,  <22.958244, 33.008881, 21.578459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.850464, 33.543976, 22.125528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.094942, 33.706116, 21.853607>,  <23.241629, 33.803398, 21.690454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.094942, 33.706116, 21.853607>,  <22.850464, 33.543976, 22.125528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.094942, 33.706116, 21.853607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444188, 0.886559, 0.129267,
		0.655085, 0.222953, 0.721911,
		0.611196, 0.405346, -0.679804,
		23.278301, 33.827721, 21.649666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.106508, 34.141476, 22.335775>,  <22.850464, 33.543976, 22.125528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.106508, 34.141476, 22.335775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.127630, 34.204147, 21.941280>,  <23.140303, 34.241753, 21.704584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.127630, 34.204147, 21.941280>,  <23.106508, 34.141476, 22.335775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.127630, 34.204147, 21.941280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491509, 0.863780, 0.110913,
		0.869270, 0.478888, 0.122621,
		0.052803, 0.156683, -0.986236,
		23.143471, 34.251152, 21.645409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.272154, 34.823135, 22.235603>,  <23.106508, 34.141476, 22.335775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.272154, 34.823135, 22.235603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.058319, 34.673393, 21.932533>,  <22.930017, 34.583546, 21.750690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.058319, 34.673393, 21.932533>,  <23.272154, 34.823135, 22.235603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.058319, 34.673393, 21.932533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698986, 0.699774, 0.147427,
		0.475012, 0.608418, -0.635761,
		-0.534586, -0.374358, -0.757676,
		22.897943, 34.561085, 21.705231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.439302, 34.847130, 22.978531>,  <23.272154, 34.823135, 22.235603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.439302, 34.847130, 22.978531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.139580, 34.618206, 23.111797>,  <22.959747, 34.480850, 23.191757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.139580, 34.618206, 23.111797>,  <23.439302, 34.847130, 22.978531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.139580, 34.618206, 23.111797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248977, 0.222722, 0.942552,
		-0.613639, 0.789210, -0.024394,
		-0.749305, -0.572313, 0.333166,
		22.914789, 34.446510, 23.211748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.781792, 35.015686, 23.360550>,  <23.439302, 34.847130, 22.978531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.781792, 35.015686, 23.360550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.525408, 35.108925, 23.068020>,  <22.371578, 35.164867, 22.892502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.525408, 35.108925, 23.068020>,  <22.781792, 35.015686, 23.360550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.525408, 35.108925, 23.068020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764242, -0.282503, 0.579764,
		-0.071460, 0.930515, 0.359215,
		-0.640958, 0.233097, -0.731327,
		22.333120, 35.178856, 22.848621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.391594, 35.500328, 23.550383>,  <22.781792, 35.015686, 23.360550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.391594, 35.500328, 23.550383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.172871, 35.288422, 23.291046>,  <22.041637, 35.161278, 23.135445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.172871, 35.288422, 23.291046>,  <22.391594, 35.500328, 23.550383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.172871, 35.288422, 23.291046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626451, -0.254881, 0.736611,
		-0.555484, 0.808938, -0.192504,
		-0.546806, -0.529770, -0.648342,
		22.008829, 35.129490, 23.096544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.790960, 35.930557, 23.482433>,  <22.391594, 35.500328, 23.550383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.790960, 35.930557, 23.482433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.796104, 35.886158, 23.084938>,  <21.799191, 35.859520, 22.846441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.796104, 35.886158, 23.084938>,  <21.790960, 35.930557, 23.482433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.796104, 35.886158, 23.084938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991864, -0.124461, 0.026739,
		-0.126649, -0.985996, 0.108494,
		0.012862, -0.110998, -0.993738,
		21.799963, 35.852859, 22.786818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.682968, 36.393230, 22.760366>,  <21.790960, 35.930557, 23.482433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.682968, 36.393230, 22.760366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.430767, 36.387333, 22.449947>,  <21.279446, 36.383797, 22.263697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.430767, 36.387333, 22.449947>,  <21.682968, 36.393230, 22.760366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.430767, 36.387333, 22.449947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639817, 0.556169, -0.530387,
		0.439430, -0.830939, -0.341236,
		-0.630505, -0.014739, -0.776046,
		21.241615, 36.382912, 22.217134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.065395, 36.180134, 22.090700>,  <21.682968, 36.393230, 22.760366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.065395, 36.180134, 22.090700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.761999, 36.437550, 22.049618>,  <21.579962, 36.591999, 22.024967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.761999, 36.437550, 22.049618>,  <22.065395, 36.180134, 22.090700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.761999, 36.437550, 22.049618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595131, 0.619796, -0.511538,
		-0.265538, -0.449121, -0.853100,
		-0.758491, 0.643539, -0.102707,
		21.534452, 36.630611, 22.018806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.012100, 36.274952, 21.397522>,  <22.065395, 36.180134, 22.090700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.012100, 36.274952, 21.397522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.844065, 36.605247, 21.548084>,  <21.743244, 36.803425, 21.638422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.844065, 36.605247, 21.548084>,  <22.012100, 36.274952, 21.397522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.844065, 36.605247, 21.548084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540953, 0.560887, -0.626718,
		-0.728626, -0.059659, -0.682308,
		-0.420087, 0.825740, 0.376404,
		21.718039, 36.852970, 21.661005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.941540, 36.699257, 20.815634>,  <22.012100, 36.274952, 21.397522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.941540, 36.699257, 20.815634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.877842, 37.002014, 21.069168>,  <21.839624, 37.183670, 21.221289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.877842, 37.002014, 21.069168>,  <21.941540, 36.699257, 20.815634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.877842, 37.002014, 21.069168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638268, 0.568736, -0.518800,
		-0.753164, 0.321944, -0.573669,
		-0.159242, 0.756896, 0.633838,
		21.830069, 37.229084, 21.259319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.715923, 37.362930, 20.436611>,  <21.941540, 36.699257, 20.815634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.715923, 37.362930, 20.436611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.882238, 37.488869, 20.777901>,  <21.982027, 37.564434, 20.982674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.882238, 37.488869, 20.777901>,  <21.715923, 37.362930, 20.436611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.882238, 37.488869, 20.777901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664110, 0.535851, -0.521365,
		-0.621352, 0.783412, 0.013706,
		0.415788, 0.314849, 0.853224,
		22.006975, 37.583324, 21.033867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.660683, 38.158348, 20.419279>,  <21.715923, 37.362930, 20.436611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.660683, 38.158348, 20.419279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.952650, 38.044498, 20.667862>,  <22.127831, 37.976189, 20.817011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.952650, 38.044498, 20.667862>,  <21.660683, 38.158348, 20.419279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.952650, 38.044498, 20.667862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631312, 0.629255, -0.453302,
		-0.262035, 0.723207, 0.638991,
		0.729920, -0.284622, 0.621456,
		22.171625, 37.959110, 20.854300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.164314, 38.762051, 20.450054>,  <21.660683, 38.158348, 20.419279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.164314, 38.762051, 20.450054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.377762, 38.482555, 20.640640>,  <22.505831, 38.314857, 20.754992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.377762, 38.482555, 20.640640>,  <22.164314, 38.762051, 20.450054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.377762, 38.482555, 20.640640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842155, 0.490718, -0.223540,
		-0.077616, 0.520544, 0.850300,
		0.533620, -0.698734, 0.476467,
		22.537848, 38.272934, 20.783581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.578142, 39.151493, 20.910496>,  <22.164314, 38.762051, 20.450054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.578142, 39.151493, 20.910496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.759756, 38.805519, 20.824955>,  <22.868725, 38.597935, 20.773630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.759756, 38.805519, 20.824955>,  <22.578142, 39.151493, 20.910496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.759756, 38.805519, 20.824955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870125, 0.482075, -0.102404,
		0.191665, -0.139583, 0.971484,
		0.454035, -0.864939, -0.213852,
		22.895966, 38.546036, 20.760799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.209692, 39.315292, 21.125147>,  <22.578142, 39.151493, 20.910496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.209692, 39.315292, 21.125147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.291222, 38.986645, 20.912209>,  <23.340139, 38.789455, 20.784445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.291222, 38.986645, 20.912209>,  <23.209692, 39.315292, 21.125147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.291222, 38.986645, 20.912209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885131, 0.387003, -0.258403,
		0.418330, -0.418527, 0.806124,
		0.203824, -0.821622, -0.532346,
		23.352369, 38.740158, 20.752504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.011856, 39.150219, 21.111973>,  <23.209692, 39.315292, 21.125147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.011856, 39.150219, 21.111973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.870523, 39.012730, 20.763947>,  <23.785723, 38.930237, 20.555132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.870523, 39.012730, 20.763947>,  <24.011856, 39.150219, 21.111973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.870523, 39.012730, 20.763947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699082, 0.521012, -0.489726,
		0.621643, -0.781282, 0.056200,
		-0.353333, -0.343723, -0.870064,
		23.764524, 38.909615, 20.502928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.629799, 38.967678, 20.629419>,  <24.011856, 39.150219, 21.111973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.629799, 38.967678, 20.629419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.320099, 38.984322, 20.376816>,  <24.134279, 38.994308, 20.225254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.320099, 38.984322, 20.376816>,  <24.629799, 38.967678, 20.629419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.320099, 38.984322, 20.376816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562621, 0.502196, -0.656702,
		0.289817, -0.863752, -0.412236,
		-0.774251, 0.041609, -0.631510,
		24.087824, 38.996803, 20.187363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015087, 38.990482, 20.030371>,  <24.629799, 38.967678, 20.629419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015087, 38.990482, 20.030371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652430, 39.061794, 19.877419>,  <24.434835, 39.104580, 19.785648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652430, 39.061794, 19.877419>,  <25.015087, 38.990482, 20.030371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.652430, 39.061794, 19.877419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421383, 0.427350, -0.799880,
		0.020810, -0.886335, -0.462577,
		-0.906644, 0.178277, -0.382379,
		24.380436, 39.115276, 19.762705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929228, 38.678314, 19.322397>,  <25.015087, 38.990482, 20.030371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.929228, 38.678314, 19.322397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644548, 38.959309, 19.322468>,  <24.473742, 39.127907, 19.322510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644548, 38.959309, 19.322468>,  <24.929228, 38.678314, 19.322397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644548, 38.959309, 19.322468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505136, 0.511935, -0.694809,
		-0.488183, -0.494406, -0.719194,
		-0.711698, 0.702486, 0.000176,
		24.431040, 39.170055, 19.322521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.607861, 38.694595, 18.628057>,  <24.929228, 38.678314, 19.322397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.607861, 38.694595, 18.628057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532221, 39.061256, 18.768906>,  <24.486837, 39.281254, 18.853415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532221, 39.061256, 18.768906>,  <24.607861, 38.694595, 18.628057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532221, 39.061256, 18.768906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330030, 0.397060, -0.856402,
		-0.924836, -0.045735, -0.377607,
		-0.189100, 0.916653, 0.352121,
		24.475491, 39.336250, 18.874542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.551006, 39.061314, 18.023388>,  <24.607861, 38.694595, 18.628057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.551006, 39.061314, 18.023388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526552, 39.373413, 18.272377>,  <24.511881, 39.560673, 18.421770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526552, 39.373413, 18.272377>,  <24.551006, 39.061314, 18.023388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.526552, 39.373413, 18.272377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342587, 0.602156, -0.721139,
		-0.937495, 0.169165, -0.304116,
		-0.061134, 0.780251, 0.622472,
		24.508211, 39.607487, 18.459118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.209038, 39.594330, 17.675135>,  <24.551006, 39.061314, 18.023388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.209038, 39.594330, 17.675135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429075, 39.759743, 17.965343>,  <24.561098, 39.858990, 18.139469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429075, 39.759743, 17.965343>,  <24.209038, 39.594330, 17.675135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429075, 39.759743, 17.965343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488084, 0.545743, -0.681130,
		-0.677622, 0.728802, 0.098368,
		0.550093, 0.413537, 0.725524,
		24.594103, 39.883804, 18.183001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.271873, 40.252991, 17.515734>,  <24.209038, 39.594330, 17.675135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.271873, 40.252991, 17.515734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594007, 40.203163, 17.747566>,  <24.787289, 40.173267, 17.886665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594007, 40.203163, 17.747566>,  <24.271873, 40.252991, 17.515734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.594007, 40.203163, 17.747566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517831, 0.623765, -0.585465,
		-0.288590, 0.771621, 0.566847,
		0.805337, -0.124572, 0.579582,
		24.835609, 40.165791, 17.921440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.517336, 41.020199, 17.656540>,  <24.271873, 40.252991, 17.515734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.517336, 41.020199, 17.656540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.820341, 40.773556, 17.742306>,  <25.002144, 40.625572, 17.793766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.820341, 40.773556, 17.742306>,  <24.517336, 41.020199, 17.656540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.820341, 40.773556, 17.742306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638704, 0.632079, -0.438787,
		0.135030, 0.469335, 0.872635,
		0.757512, -0.616605, 0.214416,
		25.047594, 40.588573, 17.806631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804865, 41.401524, 18.180038>,  <24.517336, 41.020199, 17.656540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804865, 41.401524, 18.180038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072983, 41.177952, 17.984772>,  <25.233854, 41.043808, 17.867613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072983, 41.177952, 17.984772>,  <24.804865, 41.401524, 18.180038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.072983, 41.177952, 17.984772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520443, 0.822988, -0.227663,
		0.529001, -0.101460, 0.842534,
		0.670297, -0.558925, -0.488165,
		25.274073, 41.010273, 17.838322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513132, 41.579453, 18.311958>,  <24.804865, 41.401524, 18.180038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513132, 41.579453, 18.311958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582298, 41.348835, 17.992535>,  <25.623798, 41.210464, 17.800880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582298, 41.348835, 17.992535>,  <25.513132, 41.579453, 18.311958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582298, 41.348835, 17.992535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664535, 0.666716, -0.337465,
		0.726976, -0.472317, 0.498421,
		0.172915, -0.576547, -0.798557,
		25.634172, 41.175869, 17.752968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164764, 41.641827, 18.168215>,  <25.513132, 41.579453, 18.311958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164764, 41.641827, 18.168215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070791, 41.473873, 17.817558>,  <26.014406, 41.373100, 17.607164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070791, 41.473873, 17.817558>,  <26.164764, 41.641827, 18.168215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070791, 41.473873, 17.817558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541175, 0.692669, -0.476802,
		0.807425, -0.586434, 0.064501,
		-0.234935, -0.419888, -0.876641,
		26.000311, 41.347908, 17.554565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777014, 41.682087, 17.827765>,  <26.164764, 41.641827, 18.168215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777014, 41.682087, 17.827765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485577, 41.638626, 17.557255>,  <26.310715, 41.612549, 17.394949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485577, 41.638626, 17.557255>,  <26.777014, 41.682087, 17.827765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485577, 41.638626, 17.557255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340816, 0.798924, -0.495544,
		0.594134, -0.591535, -0.545061,
		-0.728594, -0.108654, -0.676273,
		26.266998, 41.606030, 17.354372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054331, 41.725140, 17.219902>,  <26.777014, 41.682087, 17.827765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054331, 41.725140, 17.219902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676765, 41.818966, 17.126942>,  <26.450226, 41.875259, 17.071165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676765, 41.818966, 17.126942>,  <27.054331, 41.725140, 17.219902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676765, 41.818966, 17.126942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321512, 0.813248, -0.485033,
		0.075231, -0.532549, -0.843049,
		-0.943912, 0.234561, -0.232402,
		26.393591, 41.889336, 17.057220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964916, 41.737080, 16.499950>,  <27.054331, 41.725140, 17.219902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964916, 41.737080, 16.499950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729286, 41.994694, 16.695175>,  <26.587908, 42.149261, 16.812311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729286, 41.994694, 16.695175>,  <26.964916, 41.737080, 16.499950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729286, 41.994694, 16.695175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326599, 0.742208, -0.585202,
		-0.739135, -0.185328, -0.647559,
		-0.589077, 0.644035, 0.488064,
		26.552563, 42.187904, 16.841595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300869, 41.800449, 16.189219>,  <26.964916, 41.737080, 16.499950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300869, 41.800449, 16.189219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963339, 41.643986, 16.042271>,  <25.760820, 41.550110, 15.954103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963339, 41.643986, 16.042271>,  <26.300869, 41.800449, 16.189219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963339, 41.643986, 16.042271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500359, 0.820904, 0.275239,
		0.193913, 0.416070, -0.888416,
		-0.843824, -0.391155, -0.367369,
		25.710192, 41.526638, 15.932060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868828, 42.038551, 15.624971>,  <26.300869, 41.800449, 16.189219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868828, 42.038551, 15.624971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917637, 41.691208, 15.432693>,  <25.946922, 41.482803, 15.317326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917637, 41.691208, 15.432693>,  <25.868828, 42.038551, 15.624971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917637, 41.691208, 15.432693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982101, -0.175651, 0.068003,
		-0.143485, 0.463794, -0.874246,
		0.122023, -0.868355, -0.480696,
		25.954245, 41.430702, 15.288484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.408501, 42.039818, 14.844537>,  <25.868828, 42.038551, 15.624971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.408501, 42.039818, 14.844537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474539, 41.711292, 15.062964>,  <25.514162, 41.514179, 15.194021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474539, 41.711292, 15.062964>,  <25.408501, 42.039818, 14.844537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474539, 41.711292, 15.062964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985355, -0.161295, 0.055315,
		0.042648, -0.547204, -0.835912,
		0.165097, -0.821311, 0.546069,
		25.524067, 41.464897, 15.226785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076073, 41.425507, 14.551846>,  <25.408501, 42.039818, 14.844537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076073, 41.425507, 14.551846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101824, 41.339825, 14.941712>,  <25.117273, 41.288418, 15.175632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101824, 41.339825, 14.941712>,  <25.076073, 41.425507, 14.551846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101824, 41.339825, 14.941712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979371, -0.201027, 0.020507,
		0.191542, -0.955880, -0.222723,
		0.064376, -0.214201, 0.974666,
		25.121136, 41.275566, 15.234112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.521147, 41.712475, 14.919312>,  <25.076073, 41.425507, 14.551846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.521147, 41.712475, 14.919312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216887, 41.916042, 14.758107>,  <24.034330, 42.038181, 14.661385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216887, 41.916042, 14.758107>,  <24.521147, 41.712475, 14.919312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.216887, 41.916042, 14.758107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648479, -0.624155, 0.435781,
		-0.029766, 0.592821, 0.804784,
		-0.760650, 0.508914, -0.403011,
		23.988691, 42.068718, 14.637204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.124304, 41.882999, 15.433601>,  <24.521147, 41.712475, 14.919312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.124304, 41.882999, 15.433601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.897301, 41.852066, 15.105710>,  <23.761099, 41.833508, 14.908976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.897301, 41.852066, 15.105710>,  <24.124304, 41.882999, 15.433601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.897301, 41.852066, 15.105710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649780, -0.569390, 0.503568,
		-0.505687, 0.818421, 0.272884,
		-0.567508, -0.077333, -0.819728,
		23.727049, 41.828865, 14.859792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.492508, 42.070488, 15.625829>,  <24.124304, 41.882999, 15.433601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.492508, 42.070488, 15.625829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.453114, 41.856792, 15.289998>,  <23.429478, 41.728577, 15.088499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.453114, 41.856792, 15.289998>,  <23.492508, 42.070488, 15.625829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.453114, 41.856792, 15.289998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631182, -0.618726, 0.467747,
		-0.769357, 0.575992, -0.276265,
		-0.098486, -0.534238, -0.839577,
		23.423567, 41.696522, 15.038125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.798159, 41.974529, 15.292763>,  <23.492508, 42.070488, 15.625829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.798159, 41.974529, 15.292763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.036793, 41.661209, 15.222869>,  <23.179974, 41.473217, 15.180933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.036793, 41.661209, 15.222869>,  <22.798159, 41.974529, 15.292763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.036793, 41.661209, 15.222869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579221, -0.570943, 0.581830,
		-0.555503, -0.245910, -0.794320,
		0.596589, -0.783296, -0.174724,
		23.215767, 41.426220, 15.170448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.384771, 41.463509, 15.025944>,  <22.798159, 41.974529, 15.292763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.384771, 41.463509, 15.025944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.708735, 41.298725, 15.192960>,  <22.903112, 41.199856, 15.293169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.708735, 41.298725, 15.192960>,  <22.384771, 41.463509, 15.025944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.708735, 41.298725, 15.192960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580533, -0.664728, 0.470232,
		0.083837, -0.623241, -0.777523,
		0.809909, -0.411955, 0.417540,
		22.951708, 41.175140, 15.318222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.407772, 40.675476, 14.983871>,  <22.384771, 41.463509, 15.025944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.407772, 40.675476, 14.983871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.647829, 40.721634, 15.300481>,  <22.791862, 40.749329, 15.490447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.647829, 40.721634, 15.300481>,  <22.407772, 40.675476, 14.983871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.647829, 40.721634, 15.300481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625340, -0.549347, 0.554227,
		0.498779, -0.827588, -0.257523,
		0.600141, 0.115398, 0.791527,
		22.827871, 40.756252, 15.537939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.576708, 39.986778, 15.198890>,  <22.407772, 40.675476, 14.983871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.576708, 39.986778, 15.198890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.618698, 40.245075, 15.501410>,  <22.643892, 40.400055, 15.682923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.618698, 40.245075, 15.501410>,  <22.576708, 39.986778, 15.198890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.618698, 40.245075, 15.501410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556960, -0.591868, 0.582656,
		0.823879, -0.482395, 0.297522,
		0.104976, 0.645746, 0.756302,
		22.650190, 40.438801, 15.728301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.449572, 39.587151, 15.846914>,  <22.576708, 39.986778, 15.198890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.449572, 39.587151, 15.846914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.489639, 39.947166, 16.016571>,  <22.513680, 40.163177, 16.118366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.489639, 39.947166, 16.016571>,  <22.449572, 39.587151, 15.846914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.489639, 39.947166, 16.016571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440422, -0.342140, 0.830041,
		0.892185, -0.269947, 0.362125,
		0.100170, 0.900038, 0.424143,
		22.519690, 40.217178, 16.143814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.766865, 39.485950, 16.509529>,  <22.449572, 39.587151, 15.846914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.766865, 39.485950, 16.509529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.563425, 39.830227, 16.518784>,  <22.441360, 40.036793, 16.524336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.563425, 39.830227, 16.518784>,  <22.766865, 39.485950, 16.509529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.563425, 39.830227, 16.518784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601922, -0.374643, 0.705219,
		0.615643, 0.344749, 0.708613,
		-0.508600, 0.860692, 0.023135,
		22.410845, 40.088436, 16.525724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.886276, 39.825962, 17.139359>,  <22.766865, 39.485950, 16.509529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.886276, 39.825962, 17.139359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.532228, 39.979866, 17.034653>,  <22.319799, 40.072208, 16.971828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.532228, 39.979866, 17.034653>,  <22.886276, 39.825962, 17.139359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.532228, 39.979866, 17.034653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394885, -0.323361, 0.859944,
		0.246231, 0.864520, 0.438150,
		-0.885120, 0.384763, -0.261764,
		22.266693, 40.095295, 16.956123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.636831, 40.217701, 17.746538>,  <22.886276, 39.825962, 17.139359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.636831, 40.217701, 17.746538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.309011, 40.167812, 17.522831>,  <22.112320, 40.137878, 17.388607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.309011, 40.167812, 17.522831>,  <22.636831, 40.217701, 17.746538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.309011, 40.167812, 17.522831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513714, -0.272444, 0.813555,
		-0.253841, 0.954053, 0.159208,
		-0.819550, -0.124726, -0.559268,
		22.063147, 40.130394, 17.355051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.102928, 40.529503, 18.157751>,  <22.636831, 40.217701, 17.746538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.102928, 40.529503, 18.157751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.927340, 40.277103, 17.901894>,  <21.821985, 40.125664, 17.748379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.927340, 40.277103, 17.901894>,  <22.102928, 40.529503, 18.157751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.927340, 40.277103, 17.901894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622190, -0.300115, 0.723056,
		-0.648214, 0.715382, -0.260859,
		-0.438973, -0.630999, -0.639643,
		21.795647, 40.087803, 17.710001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.357891, 40.645954, 18.280371>,  <22.102928, 40.529503, 18.157751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.357891, 40.645954, 18.280371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.400131, 40.290245, 18.102360>,  <21.425476, 40.076820, 17.995554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.400131, 40.290245, 18.102360>,  <21.357891, 40.645954, 18.280371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.400131, 40.290245, 18.102360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604494, -0.412755, 0.681337,
		-0.789579, 0.197066, -0.581146,
		0.105602, -0.889269, -0.445027,
		21.431812, 40.023464, 17.968851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.678066, 40.314491, 18.391750>,  <21.357891, 40.645954, 18.280371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.678066, 40.314491, 18.391750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.946638, 40.030254, 18.307617>,  <21.107780, 39.859711, 18.257137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.946638, 40.030254, 18.307617>,  <20.678066, 40.314491, 18.391750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.946638, 40.030254, 18.307617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422935, -0.600494, 0.678626,
		-0.608543, -0.366678, -0.703720,
		0.671417, -0.710601, -0.210346,
		21.148067, 39.817078, 18.244518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.300608, 39.790253, 18.153959>,  <20.678066, 40.314491, 18.391750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.300608, 39.790253, 18.153959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.644485, 39.631260, 18.282291>,  <20.850813, 39.535862, 18.359291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.644485, 39.631260, 18.282291>,  <20.300608, 39.790253, 18.153959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.644485, 39.631260, 18.282291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510801, -0.672251, 0.535875,
		0.002675, -0.624568, -0.780966,
		0.859695, -0.397484, 0.320828,
		20.902393, 39.512016, 18.378540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.105467, 39.027393, 18.187918>,  <20.300608, 39.790253, 18.153959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.105467, 39.027393, 18.187918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.437916, 39.092930, 18.400478>,  <20.637386, 39.132252, 18.528015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.437916, 39.092930, 18.400478>,  <20.105467, 39.027393, 18.187918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.437916, 39.092930, 18.400478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255829, -0.735821, 0.626993,
		0.493745, -0.657057, -0.569642,
		0.831124, 0.163844, 0.531402,
		20.687252, 39.142082, 18.559898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.250219, 38.317135, 18.472603>,  <20.105467, 39.027393, 18.187918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.250219, 38.317135, 18.472603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.473705, 38.544674, 18.714016>,  <20.607798, 38.681198, 18.858864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.473705, 38.544674, 18.714016>,  <20.250219, 38.317135, 18.472603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.473705, 38.544674, 18.714016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287188, -0.549987, 0.784243,
		0.778050, -0.611495, -0.143920,
		0.558715, 0.568848, 0.603531,
		20.641319, 38.715328, 18.895075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.645336, 37.855015, 18.857609>,  <20.250219, 38.317135, 18.472603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.645336, 37.855015, 18.857609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.655397, 38.181858, 19.087986>,  <20.661434, 38.377964, 19.226212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.655397, 38.181858, 19.087986>,  <20.645336, 37.855015, 18.857609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.655397, 38.181858, 19.087986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082232, -0.572480, 0.815784,
		0.996296, -0.067879, 0.052794,
		0.025151, 0.817104, 0.575941,
		20.662943, 38.426991, 19.260769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.110760, 37.696667, 19.514668>,  <20.645336, 37.855015, 18.857609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.110760, 37.696667, 19.514668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.839857, 37.976006, 19.607300>,  <20.677315, 38.143608, 19.662878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.839857, 37.976006, 19.607300>,  <21.110760, 37.696667, 19.514668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.839857, 37.976006, 19.607300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402091, -0.614908, 0.678389,
		0.616152, 0.366329, 0.697252,
		-0.677259, 0.698349, 0.231579,
		20.636679, 38.185509, 19.676773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.019621, 37.582230, 20.170095>,  <21.110760, 37.696667, 19.514668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.019621, 37.582230, 20.170095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.715147, 37.839703, 20.138397>,  <20.532463, 37.994186, 20.119379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.715147, 37.839703, 20.138397>,  <21.019621, 37.582230, 20.170095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.715147, 37.839703, 20.138397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426341, -0.404567, 0.809048,
		0.488707, 0.649618, 0.582376,
		-0.761183, 0.643678, -0.079244,
		20.486792, 38.032806, 20.114624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937626, 37.831398, 20.887875>,  <21.019621, 37.582230, 20.170095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937626, 37.831398, 20.887875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.605742, 37.953762, 20.701115>,  <20.406610, 38.027180, 20.589060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.605742, 37.953762, 20.701115>,  <20.937626, 37.831398, 20.887875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.605742, 37.953762, 20.701115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510613, -0.078049, 0.856261,
		0.225502, 0.948854, 0.220962,
		-0.829712, 0.305915, -0.466898,
		20.356829, 38.045536, 20.561045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.600824, 38.431652, 21.343575>,  <20.937626, 37.831398, 20.887875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.600824, 38.431652, 21.343575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.301933, 38.306400, 21.109104>,  <20.122599, 38.231247, 20.968422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.301933, 38.306400, 21.109104>,  <20.600824, 38.431652, 21.343575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.301933, 38.306400, 21.109104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482352, -0.351206, 0.802490,
		-0.457154, 0.882385, 0.111390,
		-0.747226, -0.313132, -0.586175,
		20.077766, 38.212460, 20.933252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.922529, 38.788021, 21.449417>,  <20.600824, 38.431652, 21.343575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.922529, 38.788021, 21.449417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840481, 38.433258, 21.283855>,  <19.791252, 38.220398, 21.184519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840481, 38.433258, 21.283855>,  <19.922529, 38.788021, 21.449417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.840481, 38.433258, 21.283855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645186, -0.195471, 0.738598,
		-0.735976, 0.418548, -0.532126,
		-0.205123, -0.886910, -0.413903,
		19.778944, 38.167187, 21.159685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.191811, 38.831898, 21.434406>,  <19.922529, 38.788021, 21.449417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.191811, 38.831898, 21.434406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301487, 38.448128, 21.408108>,  <19.367292, 38.217865, 21.392328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301487, 38.448128, 21.408108>,  <19.191811, 38.831898, 21.434406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.301487, 38.448128, 21.408108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716836, -0.249476, 0.651082,
		-0.641066, -0.131391, -0.756155,
		0.274189, -0.959426, -0.065745,
		19.383743, 38.160301, 21.388384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.583931, 38.419415, 21.227325>,  <19.191811, 38.831898, 21.434406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.583931, 38.419415, 21.227325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.849976, 38.198940, 21.428848>,  <19.009602, 38.066654, 21.549763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.849976, 38.198940, 21.428848>,  <18.583931, 38.419415, 21.227325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.849976, 38.198940, 21.428848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704399, -0.239135, 0.668308,
		-0.247877, -0.799387, -0.547300,
		0.665116, -0.551176, 0.503812,
		19.049509, 38.033585, 21.579990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298624, 37.780136, 21.350107>,  <18.583931, 38.419415, 21.227325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.298624, 37.780136, 21.350107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582180, 37.791058, 21.632023>,  <18.752314, 37.797611, 21.801172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582180, 37.791058, 21.632023>,  <18.298624, 37.780136, 21.350107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.582180, 37.791058, 21.632023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654335, -0.347554, 0.671604,
		0.263292, -0.937262, -0.228511,
		0.708889, 0.027305, 0.704792,
		18.794847, 37.799248, 21.843460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.320078, 37.141178, 21.729502>,  <18.298624, 37.780136, 21.350107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.320078, 37.141178, 21.729502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.450232, 37.439354, 21.962208>,  <18.528324, 37.618259, 22.101831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.450232, 37.439354, 21.962208>,  <18.320078, 37.141178, 21.729502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.450232, 37.439354, 21.962208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569845, -0.336391, 0.749745,
		0.754588, -0.575470, 0.315328,
		0.325383, 0.745436, 0.581765,
		18.547846, 37.662983, 22.136738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.788771, 36.976738, 22.356203>,  <18.320078, 37.141178, 21.729502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.788771, 36.976738, 22.356203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.558779, 37.295856, 22.428780>,  <18.420784, 37.487328, 22.472324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.558779, 37.295856, 22.428780>,  <18.788771, 36.976738, 22.356203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.558779, 37.295856, 22.428780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427665, -0.482120, 0.764632,
		0.697496, 0.362053, 0.618399,
		-0.574980, 0.797795, 0.181440,
		18.386284, 37.535194, 22.483212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.941149, 37.379158, 22.999996>,  <18.788771, 36.976738, 22.356203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.941149, 37.379158, 22.999996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.565609, 37.338181, 22.868500>,  <18.340286, 37.313595, 22.789602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.565609, 37.338181, 22.868500>,  <18.941149, 37.379158, 22.999996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.565609, 37.338181, 22.868500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174471, -0.681551, 0.710668,
		-0.296859, 0.724564, 0.621998,
		-0.938847, -0.102448, -0.328740,
		18.283955, 37.307446, 22.769878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.596666, 37.249268, 23.582327>,  <18.941149, 37.379158, 22.999996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.596666, 37.249268, 23.582327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.349379, 37.129845, 23.291489>,  <18.201006, 37.058189, 23.116985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.349379, 37.129845, 23.291489>,  <18.596666, 37.249268, 23.582327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.349379, 37.129845, 23.291489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173388, -0.850464, 0.496636,
		-0.766645, 0.433099, 0.474006,
		-0.618217, -0.298557, -0.727098,
		18.163914, 37.040279, 23.073359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.420219, 27.071339, 17.290623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.701687, 27.142754, 17.565716>,  <31.870567, 27.185602, 17.730772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.701687, 27.142754, 17.565716>,  <31.420219, 27.071339, 17.290623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701687, 27.142754, 17.565716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236251, 0.971635, -0.010515,
		-0.670103, -0.155079, 0.725887,
		0.703667, 0.178538, 0.687733,
		31.912786, 27.196316, 17.772036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086187, 27.343018, 17.959732>,  <31.420219, 27.071339, 17.290623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086187, 27.343018, 17.959732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.464663, 27.472393, 17.955414>,  <31.691748, 27.550018, 17.952824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.464663, 27.472393, 17.955414>,  <31.086187, 27.343018, 17.959732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464663, 27.472393, 17.955414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316173, 0.931012, 0.182351,
		0.069030, -0.169125, 0.983174,
		0.946187, 0.323441, -0.010795,
		31.748518, 27.569426, 17.952175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149309, 27.790054, 18.602835>,  <31.086187, 27.343018, 17.959732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149309, 27.790054, 18.602835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.448719, 27.880394, 18.353451>,  <31.628365, 27.934597, 18.203821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.448719, 27.880394, 18.353451>,  <31.149309, 27.790054, 18.602835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448719, 27.880394, 18.353451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208730, 0.972666, 0.101745,
		0.629397, 0.053976, 0.775207,
		0.748526, 0.225847, -0.623460,
		31.673277, 27.948149, 18.166412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456934, 28.324587, 18.922895>,  <31.149309, 27.790054, 18.602835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456934, 28.324587, 18.922895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.617954, 28.356304, 18.558113>,  <31.714565, 28.375336, 18.339243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.617954, 28.356304, 18.558113>,  <31.456934, 28.324587, 18.922895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617954, 28.356304, 18.558113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207478, 0.978218, -0.006527,
		0.891576, 0.191839, 0.410232,
		0.402549, 0.079295, -0.911958,
		31.738718, 28.380093, 18.284525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876471, 28.813829, 18.962677>,  <31.456934, 28.324587, 18.922895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876471, 28.813829, 18.962677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.822695, 28.805576, 18.566395>,  <31.790428, 28.800625, 18.328625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.822695, 28.805576, 18.566395>,  <31.876471, 28.813829, 18.962677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822695, 28.805576, 18.566395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095139, 0.995433, -0.007821,
		0.986343, 0.093204, -0.135791,
		-0.134442, -0.020633, -0.990707,
		31.782362, 28.799387, 18.269182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347378, 29.335382, 18.697517>,  <31.876471, 28.813829, 18.962677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347378, 29.335382, 18.697517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.088097, 29.261311, 18.402073>,  <31.932529, 29.216867, 18.224806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.088097, 29.261311, 18.402073>,  <32.347378, 29.335382, 18.697517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088097, 29.261311, 18.402073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226777, 0.972911, -0.044903,
		0.726918, 0.138394, -0.672635,
		-0.648199, -0.185179, -0.738611,
		31.893637, 29.205757, 18.180489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519653, 29.804462, 18.150463>,  <32.347378, 29.335382, 18.697517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519653, 29.804462, 18.150463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.140690, 29.683182, 18.109497>,  <31.913313, 29.610413, 18.084917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.140690, 29.683182, 18.109497>,  <32.519653, 29.804462, 18.150463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140690, 29.683182, 18.109497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314996, 0.940010, 0.130992,
		0.056555, 0.156363, -0.986079,
		-0.947407, -0.303203, -0.102416,
		31.856468, 29.592220, 18.078772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169052, 30.309923, 17.702036>,  <32.519653, 29.804462, 18.150463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169052, 30.309923, 17.702036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.862436, 30.121853, 17.877007>,  <31.678465, 30.009010, 17.981989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.862436, 30.121853, 17.877007>,  <32.169052, 30.309923, 17.702036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862436, 30.121853, 17.877007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422003, 0.882230, 0.208768,
		-0.484071, -0.024566, -0.874684,
		-0.766544, -0.470178, 0.437429,
		31.632473, 29.980799, 18.008236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575096, 30.689548, 17.559147>,  <32.169052, 30.309923, 17.702036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575096, 30.689548, 17.559147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.438505, 30.465069, 17.860729>,  <31.356550, 30.330379, 18.041677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.438505, 30.465069, 17.860729>,  <31.575096, 30.689548, 17.559147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438505, 30.465069, 17.860729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398805, 0.812895, 0.424449,
		-0.851086, -0.155741, -0.501395,
		-0.341478, -0.561202, 0.753953,
		31.336061, 30.296709, 18.086916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871834, 30.891340, 17.621334>,  <31.575096, 30.689548, 17.559147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871834, 30.891340, 17.621334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.956430, 30.739563, 17.981621>,  <31.007189, 30.648497, 18.197794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.956430, 30.739563, 17.981621>,  <30.871834, 30.891340, 17.621334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956430, 30.739563, 17.981621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389441, 0.812532, 0.433737,
		-0.896442, -0.442507, 0.024071,
		0.211490, -0.379446, 0.900718,
		31.019876, 30.625729, 18.251837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314791, 30.798376, 18.020294>,  <30.871834, 30.891340, 17.621334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314791, 30.798376, 18.020294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.622110, 30.873787, 18.264973>,  <30.806503, 30.919033, 18.411779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.622110, 30.873787, 18.264973>,  <30.314791, 30.798376, 18.020294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622110, 30.873787, 18.264973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562672, 0.654495, 0.505011,
		-0.305144, -0.732185, 0.608927,
		0.768301, 0.188526, 0.611696,
		30.852600, 30.930346, 18.448481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100210, 30.647367, 18.647068>,  <30.314791, 30.798376, 18.020294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100210, 30.647367, 18.647068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.402893, 30.895805, 18.728691>,  <30.584503, 31.044868, 18.777666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.402893, 30.895805, 18.728691>,  <30.100210, 30.647367, 18.647068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402893, 30.895805, 18.728691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560266, 0.455244, 0.691994,
		0.336896, -0.637962, 0.692463,
		0.756705, 0.621093, 0.204059,
		30.629906, 31.082132, 18.789909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007328, 30.827343, 19.429218>,  <30.100210, 30.647367, 18.647068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007328, 30.827343, 19.429218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.232725, 31.120506, 19.276733>,  <30.367964, 31.296404, 19.185242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.232725, 31.120506, 19.276733>,  <30.007328, 30.827343, 19.429218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232725, 31.120506, 19.276733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496942, 0.669341, 0.552297,
		0.659942, -0.121777, 0.741382,
		0.563494, 0.732907, -0.381210,
		30.401773, 31.340378, 19.162369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216143, 31.336990, 19.959240>,  <30.007328, 30.827343, 19.429218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216143, 31.336990, 19.959240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.290503, 31.565502, 19.639469>,  <30.335119, 31.702608, 19.447607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.290503, 31.565502, 19.639469>,  <30.216143, 31.336990, 19.959240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290503, 31.565502, 19.639469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401061, 0.786864, 0.469037,
		0.896990, 0.233425, 0.375396,
		0.185900, 0.571278, -0.799426,
		30.346273, 31.736885, 19.399641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696489, 31.916086, 20.196367>,  <30.216143, 31.336990, 19.959240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696489, 31.916086, 20.196367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.514277, 32.013214, 19.853783>,  <30.404949, 32.071491, 19.648232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.514277, 32.013214, 19.853783>,  <30.696489, 31.916086, 20.196367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514277, 32.013214, 19.853783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391138, 0.809648, 0.437585,
		0.799687, 0.534330, -0.273846,
		-0.455533, 0.242819, -0.856462,
		30.377617, 32.086060, 19.596844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748957, 32.591305, 20.187870>,  <30.696489, 31.916086, 20.196367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748957, 32.591305, 20.187870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.449705, 32.523258, 19.931320>,  <30.270155, 32.482430, 19.777390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.449705, 32.523258, 19.931320>,  <30.748957, 32.591305, 20.187870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449705, 32.523258, 19.931320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497617, 0.783248, 0.372692,
		0.438956, 0.597981, -0.670624,
		-0.748128, -0.170119, -0.641377,
		30.225267, 32.472221, 19.738907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716896, 33.228313, 19.875507>,  <30.748957, 32.591305, 20.187870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716896, 33.228313, 19.875507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.367924, 33.052727, 19.789555>,  <30.158541, 32.947376, 19.737982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.367924, 33.052727, 19.789555>,  <30.716896, 33.228313, 19.875507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367924, 33.052727, 19.789555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487960, 0.807178, 0.332203,
		0.027623, 0.394678, -0.918404,
		-0.872429, -0.438968, -0.214884,
		30.106195, 32.921036, 19.725090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245216, 33.793911, 19.589270>,  <30.716896, 33.228313, 19.875507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245216, 33.793911, 19.589270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.976723, 33.514980, 19.689808>,  <29.815626, 33.347622, 19.750132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.976723, 33.514980, 19.689808>,  <30.245216, 33.793911, 19.589270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976723, 33.514980, 19.689808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648248, 0.716683, 0.257177,
		-0.359474, 0.009690, -0.933105,
		-0.671232, -0.697331, 0.251348,
		29.775352, 33.305782, 19.765213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675783, 34.134331, 19.531078>,  <30.245216, 33.793911, 19.589270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675783, 34.134331, 19.531078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.536234, 33.807617, 19.714886>,  <29.452505, 33.611591, 19.825171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.536234, 33.807617, 19.714886>,  <29.675783, 34.134331, 19.531078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536234, 33.807617, 19.714886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713284, 0.549459, 0.435110,
		-0.607876, -0.175970, -0.774287,
		-0.348873, -0.816780, 0.459519,
		29.431572, 33.562584, 19.852741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978405, 34.274311, 19.492716>,  <29.675783, 34.134331, 19.531078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978405, 34.274311, 19.492716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.038389, 34.011513, 19.788246>,  <29.074379, 33.853832, 19.965565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.038389, 34.011513, 19.788246>,  <28.978405, 34.274311, 19.492716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038389, 34.011513, 19.788246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639810, 0.505223, 0.579131,
		-0.753761, -0.559553, -0.344593,
		0.149958, -0.657000, 0.738825,
		29.083376, 33.814411, 20.009893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363840, 33.986900, 19.592295>,  <28.978405, 34.274311, 19.492716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363840, 33.986900, 19.592295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.588612, 33.966412, 19.922535>,  <28.723475, 33.954117, 20.120678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.588612, 33.966412, 19.922535>,  <28.363840, 33.986900, 19.592295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588612, 33.966412, 19.922535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730938, 0.436515, 0.524579,
		-0.387256, -0.898238, 0.207850,
		0.561927, -0.051221, 0.825599,
		28.757189, 33.951046, 20.170216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970734, 33.692673, 20.122202>,  <28.363840, 33.986900, 19.592295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970734, 33.692673, 20.122202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.255754, 33.866512, 20.342525>,  <28.426767, 33.970818, 20.474720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.255754, 33.866512, 20.342525>,  <27.970734, 33.692673, 20.122202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255754, 33.866512, 20.342525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685672, 0.597764, 0.415370,
		-0.148733, -0.673647, 0.723933,
		0.712554, 0.434601, 0.550808,
		28.469521, 33.996891, 20.507767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816629, 33.713379, 20.831875>,  <27.970734, 33.692673, 20.122202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816629, 33.713379, 20.831875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.043890, 34.030193, 20.742538>,  <28.180246, 34.220284, 20.688936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.043890, 34.030193, 20.742538>,  <27.816629, 33.713379, 20.831875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043890, 34.030193, 20.742538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679314, 0.604583, 0.415947,
		0.464474, -0.084602, 0.881536,
		0.568152, 0.792036, -0.223342,
		28.214336, 34.267803, 20.675535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249353, 33.461449, 21.307014>,  <27.816629, 33.713379, 20.831875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249353, 33.461449, 21.307014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.939238, 33.417755, 21.058178>,  <26.753168, 33.391537, 20.908876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.939238, 33.417755, 21.058178>,  <27.249353, 33.461449, 21.307014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939238, 33.417755, 21.058178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439040, -0.801271, -0.406459,
		-0.454061, -0.588245, 0.669176,
		-0.775288, -0.109237, -0.622089,
		26.706652, 33.384983, 20.871552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094978, 32.777405, 21.281618>,  <27.249353, 33.461449, 21.307014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094978, 32.777405, 21.281618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.923567, 32.903969, 20.943092>,  <26.820721, 32.979908, 20.739977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.923567, 32.903969, 20.943092>,  <27.094978, 32.777405, 21.281618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923567, 32.903969, 20.943092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101650, -0.913846, -0.393132,
		-0.897792, -0.254497, 0.359447,
		-0.428530, 0.316413, -0.846313,
		26.795010, 32.998894, 20.689198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600803, 32.217712, 21.007597>,  <27.094978, 32.777405, 21.281618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600803, 32.217712, 21.007597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.660635, 32.446880, 20.685257>,  <26.696535, 32.584381, 20.491854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.660635, 32.446880, 20.685257>,  <26.600803, 32.217712, 21.007597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660635, 32.446880, 20.685257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057483, -0.818678, -0.571369,
		-0.987077, 0.039142, -0.155391,
		0.149580, 0.572918, -0.805848,
		26.705509, 32.618755, 20.443502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030781, 32.079136, 20.466446>,  <26.600803, 32.217712, 21.007597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030781, 32.079136, 20.466446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.361626, 32.229881, 20.299660>,  <26.560133, 32.320328, 20.199589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.361626, 32.229881, 20.299660>,  <26.030781, 32.079136, 20.466446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361626, 32.229881, 20.299660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122622, -0.845009, -0.520504,
		-0.548499, 0.379385, -0.745128,
		0.827111, 0.376865, -0.416965,
		26.609758, 32.342941, 20.174570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913498, 31.782612, 19.898401>,  <26.030781, 32.079136, 20.466446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913498, 31.782612, 19.898401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.295887, 31.899681, 19.889797>,  <26.525320, 31.969923, 19.884636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.295887, 31.899681, 19.889797>,  <25.913498, 31.782612, 19.898401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295887, 31.899681, 19.889797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208330, -0.728442, -0.652664,
		-0.206685, 0.619447, -0.757342,
		0.955971, 0.292673, -0.021508,
		26.582678, 31.987484, 19.883345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219053, 31.711779, 19.120420>,  <25.913498, 31.782612, 19.898401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219053, 31.711779, 19.120420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.534342, 31.713619, 19.366570>,  <26.723515, 31.714724, 19.514259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.534342, 31.713619, 19.366570>,  <26.219053, 31.711779, 19.120420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534342, 31.713619, 19.366570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393664, -0.772374, -0.498465,
		0.473006, 0.635151, -0.610613,
		0.788222, 0.004599, 0.615374,
		26.770809, 31.714998, 19.551182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746790, 31.703838, 18.711590>,  <26.219053, 31.711779, 19.120420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746790, 31.703838, 18.711590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.894957, 31.564583, 19.056053>,  <26.983856, 31.481030, 19.262732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.894957, 31.564583, 19.056053>,  <26.746790, 31.703838, 18.711590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894957, 31.564583, 19.056053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380415, -0.788931, -0.482568,
		0.847394, 0.506348, -0.159796,
		0.370415, -0.348137, 0.861158,
		27.006081, 31.460142, 19.314400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407715, 31.429161, 18.462200>,  <26.746790, 31.703838, 18.711590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407715, 31.429161, 18.462200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.381756, 31.263416, 18.825317>,  <27.366180, 31.163969, 19.043188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.381756, 31.263416, 18.825317>,  <27.407715, 31.429161, 18.462200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381756, 31.263416, 18.825317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420911, -0.836193, -0.351591,
		0.904778, 0.359283, 0.228677,
		-0.064897, -0.414364, 0.907795,
		27.362288, 31.139107, 19.097656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081448, 31.104631, 18.624199>,  <27.407715, 31.429161, 18.462200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081448, 31.104631, 18.624199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.824932, 30.908329, 18.860134>,  <27.671022, 30.790548, 19.001696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.824932, 30.908329, 18.860134>,  <28.081448, 31.104631, 18.624199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824932, 30.908329, 18.860134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379672, -0.870969, -0.311869,
		0.666780, 0.023946, 0.744870,
		-0.641290, -0.490754, 0.589837,
		27.632545, 30.761103, 19.037085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542734, 30.616930, 18.924536>,  <28.081448, 31.104631, 18.624199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542734, 30.616930, 18.924536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.172346, 30.492233, 19.009762>,  <27.950113, 30.417416, 19.060898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.172346, 30.492233, 19.009762>,  <28.542734, 30.616930, 18.924536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172346, 30.492233, 19.009762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266561, -0.939328, -0.215891,
		0.267438, -0.143114, 0.952888,
		-0.925971, -0.311740, 0.213063,
		27.894554, 30.398712, 19.073681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546333, 30.194508, 19.571941>,  <28.542734, 30.616930, 18.924536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546333, 30.194508, 19.571941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.233940, 30.094997, 19.342796>,  <28.046503, 30.035292, 19.205309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.233940, 30.094997, 19.342796>,  <28.546333, 30.194508, 19.571941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233940, 30.094997, 19.342796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338191, -0.939583, -0.053023,
		-0.525062, -0.235148, 0.817934,
		-0.780984, -0.248778, -0.572864,
		27.999645, 30.020365, 19.170937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462526, 29.435038, 19.635344>,  <28.546333, 30.194508, 19.571941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462526, 29.435038, 19.635344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.254641, 29.535465, 19.308697>,  <28.129910, 29.595722, 19.112709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.254641, 29.535465, 19.308697>,  <28.462526, 29.435038, 19.635344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254641, 29.535465, 19.308697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273038, -0.856905, -0.437224,
		-0.809536, -0.450198, 0.376793,
		-0.519713, 0.251070, -0.816616,
		28.098726, 29.610786, 19.063711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002052, 28.914419, 19.522757>,  <28.462526, 29.435038, 19.635344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002052, 28.914419, 19.522757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.036285, 29.100819, 19.170502>,  <28.056826, 29.212658, 18.959148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.036285, 29.100819, 19.170502>,  <28.002052, 28.914419, 19.522757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036285, 29.100819, 19.170502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278989, -0.859729, -0.427821,
		-0.956473, -0.209075, -0.203584,
		0.085580, 0.465997, -0.880638,
		28.061960, 29.240618, 18.906311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617453, 28.549475, 19.070435>,  <28.002052, 28.914419, 19.522757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617453, 28.549475, 19.070435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.885912, 28.746006, 18.848389>,  <28.046988, 28.863926, 18.715160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.885912, 28.746006, 18.848389>,  <27.617453, 28.549475, 19.070435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885912, 28.746006, 18.848389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276261, -0.860646, -0.427747,
		-0.687923, 0.133726, -0.713358,
		0.671150, 0.491330, -0.555115,
		28.087257, 28.893406, 18.681854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555906, 28.258814, 18.439478>,  <27.617453, 28.549475, 19.070435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555906, 28.258814, 18.439478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.911360, 28.442253, 18.441109>,  <28.124632, 28.552317, 18.442087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.911360, 28.442253, 18.441109>,  <27.555906, 28.258814, 18.439478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911360, 28.442253, 18.441109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433342, -0.836724, -0.334825,
		-0.150139, 0.299303, -0.942272,
		0.888636, 0.458596, 0.004076,
		28.177950, 28.579832, 18.442331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795233, 27.967360, 17.832468>,  <27.555906, 28.258814, 18.439478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795233, 27.967360, 17.832468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.110804, 28.112938, 18.030514>,  <28.300146, 28.200285, 18.149342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.110804, 28.112938, 18.030514>,  <27.795233, 27.967360, 17.832468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110804, 28.112938, 18.030514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503152, -0.845139, -0.180494,
		0.352749, 0.391514, -0.849874,
		0.788927, 0.363947, 0.495113,
		28.347483, 28.222122, 18.179049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328279, 27.662992, 17.437023>,  <27.795233, 27.967360, 17.832468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328279, 27.662992, 17.437023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.484293, 27.762928, 17.791527>,  <28.577902, 27.822889, 18.004229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.484293, 27.762928, 17.791527>,  <28.328279, 27.662992, 17.437023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484293, 27.762928, 17.791527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494650, -0.868667, 0.027190,
		0.776657, 0.427783, -0.462392,
		0.390033, 0.249839, 0.886259,
		28.601303, 27.837879, 18.057404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.044279, 27.561819, 17.348879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.983788, 27.580044, 17.743858>,  <28.947493, 27.590979, 17.980846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.983788, 27.580044, 17.743858>,  <29.044279, 27.561819, 17.348879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983788, 27.580044, 17.743858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401737, -0.909886, 0.103510,
		0.903182, 0.412348, 0.119297,
		-0.151229, 0.045563, 0.987448,
		28.938419, 27.593712, 18.040092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749058, 27.535719, 17.639664>,  <29.044279, 27.561819, 17.348879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749058, 27.535719, 17.639664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.473257, 27.407539, 17.899479>,  <29.307777, 27.330631, 18.055368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.473257, 27.407539, 17.899479>,  <29.749058, 27.535719, 17.639664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473257, 27.407539, 17.899479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481008, -0.873070, 0.079874,
		0.541497, 0.367506, 0.756122,
		-0.689502, -0.320449, 0.649538,
		29.266407, 27.311405, 18.094339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076666, 27.390671, 18.269722>,  <29.749058, 27.535719, 17.639664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076666, 27.390671, 18.269722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.759089, 27.149445, 18.238819>,  <29.568542, 27.004709, 18.220278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.759089, 27.149445, 18.238819>,  <30.076666, 27.390671, 18.269722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759089, 27.149445, 18.238819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607458, -0.792142, -0.059213,
		-0.025489, -0.093942, 0.995251,
		-0.793943, -0.603064, -0.077257,
		29.520906, 26.968525, 18.215643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354593, 26.769238, 18.484837>,  <30.076666, 27.390671, 18.269722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354593, 26.769238, 18.484837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.002932, 26.653751, 18.333187>,  <29.791935, 26.584459, 18.242197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.002932, 26.653751, 18.333187>,  <30.354593, 26.769238, 18.484837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002932, 26.653751, 18.333187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356143, -0.926672, -0.120172,
		-0.316626, -0.240671, 0.917511,
		-0.879153, -0.288715, -0.379122,
		29.739185, 26.567137, 18.219450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264324, 26.135662, 18.758884>,  <30.354593, 26.769238, 18.484837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264324, 26.135662, 18.758884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.044455, 26.134243, 18.424736>,  <29.912533, 26.133392, 18.224247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.044455, 26.134243, 18.424736>,  <30.264324, 26.135662, 18.758884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044455, 26.134243, 18.424736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321063, -0.924084, -0.207335,
		-0.771217, -0.382173, 0.509085,
		-0.549675, -0.003548, -0.835371,
		29.879553, 26.133179, 18.174126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929296, 25.465746, 18.703039>,  <30.264324, 26.135662, 18.758884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929296, 25.465746, 18.703039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.916361, 25.605122, 18.328331>,  <29.908600, 25.688747, 18.103506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.916361, 25.605122, 18.328331>,  <29.929296, 25.465746, 18.703039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916361, 25.605122, 18.328331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086737, -0.932748, -0.349938,
		-0.995706, -0.092569, -0.000059,
		-0.032338, 0.348441, -0.936773,
		29.906660, 25.709654, 18.047298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454269, 25.032505, 18.353725>,  <29.929296, 25.465746, 18.703039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454269, 25.032505, 18.353725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.679377, 25.217976, 18.079998>,  <29.814442, 25.329258, 17.915762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.679377, 25.217976, 18.079998>,  <29.454269, 25.032505, 18.353725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679377, 25.217976, 18.079998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178547, -0.876502, -0.447063,
		-0.807101, 0.129410, -0.576056,
		0.562769, 0.463678, -0.684320,
		29.848207, 25.357079, 17.874702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219051, 24.802879, 17.644835>,  <29.454269, 25.032505, 18.353725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219051, 24.802879, 17.644835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.592148, 24.937672, 17.593552>,  <29.816006, 25.018547, 17.562782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.592148, 24.937672, 17.593552>,  <29.219051, 24.802879, 17.644835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592148, 24.937672, 17.593552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190879, -0.763207, -0.617317,
		-0.305870, 0.551326, -0.776198,
		0.932743, 0.336979, -0.128205,
		29.871971, 25.038765, 17.555090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307171, 24.711155, 16.872593>,  <29.219051, 24.802879, 17.644835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307171, 24.711155, 16.872593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663900, 24.741230, 17.051029>,  <29.877937, 24.759275, 17.158091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663900, 24.741230, 17.051029>,  <29.307171, 24.711155, 16.872593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663900, 24.741230, 17.051029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264994, -0.886028, -0.380436,
		0.366644, 0.457493, -0.810106,
		0.891824, 0.075188, 0.446090,
		29.931448, 24.763786, 17.184856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821775, 24.639021, 16.362028>,  <29.307171, 24.711155, 16.872593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821775, 24.639021, 16.362028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.026186, 24.554749, 16.695366>,  <30.148832, 24.504185, 16.895369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.026186, 24.554749, 16.695366>,  <29.821775, 24.639021, 16.362028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026186, 24.554749, 16.695366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453182, -0.757771, -0.469477,
		0.730395, 0.617573, -0.291765,
		0.511027, -0.210681, 0.833345,
		30.179495, 24.491545, 16.945370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505938, 24.496464, 16.141073>,  <29.821775, 24.639021, 16.362028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505938, 24.496464, 16.141073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.465256, 24.318745, 16.497108>,  <30.440845, 24.212112, 16.710730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.465256, 24.318745, 16.497108>,  <30.505938, 24.496464, 16.141073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465256, 24.318745, 16.497108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186379, -0.887393, -0.421658,
		0.977199, 0.123007, 0.173062,
		-0.101707, -0.444299, 0.890086,
		30.434744, 24.185455, 16.764133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030413, 23.943689, 16.173664>,  <30.505938, 24.496464, 16.141073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030413, 23.943689, 16.173664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.759193, 23.835613, 16.447086>,  <30.596462, 23.770767, 16.611139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.759193, 23.835613, 16.447086>,  <31.030413, 23.943689, 16.173664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759193, 23.835613, 16.447086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050121, -0.944817, -0.323741,
		0.733304, -0.185252, 0.654176,
		-0.678050, -0.270189, 0.683553,
		30.555779, 23.754557, 16.652153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264984, 23.332602, 16.366449>,  <31.030413, 23.943689, 16.173664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264984, 23.332602, 16.366449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.887787, 23.316696, 16.498619>,  <30.661469, 23.307154, 16.577921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.887787, 23.316696, 16.498619>,  <31.264984, 23.332602, 16.366449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887787, 23.316696, 16.498619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020288, -0.997859, -0.062183,
		0.332189, -0.051934, 0.941782,
		-0.942995, -0.039764, 0.330424,
		30.604889, 23.304768, 16.597746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380354, 22.857084, 16.842970>,  <31.264984, 23.332602, 16.366449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380354, 22.857084, 16.842970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.988243, 22.858326, 16.763931>,  <30.752975, 22.859072, 16.716509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.988243, 22.858326, 16.763931>,  <31.380354, 22.857084, 16.842970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988243, 22.858326, 16.763931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017871, -0.997173, 0.072987,
		-0.196809, 0.075079, 0.977563,
		-0.980279, 0.003105, -0.197594,
		30.694159, 22.859257, 16.704653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153194, 22.333393, 17.227339>,  <31.380354, 22.857084, 16.842970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153194, 22.333393, 17.227339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.829111, 22.371864, 16.996059>,  <30.634661, 22.394947, 16.857292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.829111, 22.371864, 16.996059>,  <31.153194, 22.333393, 17.227339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829111, 22.371864, 16.996059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138086, -0.990001, 0.028821,
		-0.569643, 0.103192, 0.815389,
		-0.810210, 0.096176, -0.578196,
		30.586048, 22.400717, 16.822601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571644, 21.895369, 17.534492>,  <31.153194, 22.333393, 17.227339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571644, 21.895369, 17.534492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.464993, 21.945312, 17.152222>,  <30.401001, 21.975279, 16.922859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.464993, 21.945312, 17.152222>,  <30.571644, 21.895369, 17.534492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464993, 21.945312, 17.152222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079543, -0.991041, -0.107286,
		-0.960511, 0.047412, 0.274171,
		-0.266628, 0.124858, -0.955678,
		30.385004, 21.982769, 16.865519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960379, 21.599840, 17.520554>,  <30.571644, 21.895369, 17.534492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960379, 21.599840, 17.520554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.109861, 21.616360, 17.149902>,  <30.199551, 21.626270, 16.927511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.109861, 21.616360, 17.149902>,  <29.960379, 21.599840, 17.520554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109861, 21.616360, 17.149902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072035, -0.994699, -0.073382,
		-0.924745, 0.094173, -0.368753,
		0.373709, 0.041297, -0.926626,
		30.221973, 21.628748, 16.871914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479801, 21.167984, 17.175014>,  <29.960379, 21.599840, 17.520554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479801, 21.167984, 17.175014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.802876, 21.205399, 16.942158>,  <29.996721, 21.227848, 16.802443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.802876, 21.205399, 16.942158>,  <29.479801, 21.167984, 17.175014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802876, 21.205399, 16.942158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037863, -0.977070, -0.209525,
		-0.588393, 0.191273, -0.785626,
		0.807688, 0.093537, -0.582143,
		30.045181, 21.233459, 16.767515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298576, 20.839062, 16.490437>,  <29.479801, 21.167984, 17.175014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298576, 20.839062, 16.490437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.696999, 20.832829, 16.525387>,  <29.936052, 20.829088, 16.546356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.696999, 20.832829, 16.525387>,  <29.298576, 20.839062, 16.490437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696999, 20.832829, 16.525387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001050, -0.982324, -0.187189,
		0.088748, 0.186542, -0.978431,
		0.996054, -0.015585, 0.087375,
		29.995815, 20.828154, 16.551600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536678, 20.423426, 15.985528>,  <29.298576, 20.839062, 16.490437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536678, 20.423426, 15.985528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.848047, 20.440075, 16.236073>,  <30.034868, 20.450064, 16.386398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.848047, 20.440075, 16.236073>,  <29.536678, 20.423426, 15.985528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848047, 20.440075, 16.236073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153361, -0.980174, -0.125459,
		0.608721, 0.193719, -0.769371,
		0.778421, 0.041622, 0.626361,
		30.081573, 20.452562, 16.423981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132782, 20.012632, 15.669356>,  <29.536678, 20.423426, 15.985528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132782, 20.012632, 15.669356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209000, 20.039215, 16.061127>,  <30.254730, 20.055164, 16.296188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.209000, 20.039215, 16.061127>,  <30.132782, 20.012632, 15.669356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209000, 20.039215, 16.061127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141215, -0.989185, 0.039646,
		0.971469, 0.130755, -0.197866,
		0.190542, 0.066457, 0.979427,
		30.266163, 20.059153, 16.354956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813484, 19.773571, 15.747285>,  <30.132782, 20.012632, 15.669356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813484, 19.773571, 15.747285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.616701, 19.730366, 16.092842>,  <30.498632, 19.704443, 16.300177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.616701, 19.730366, 16.092842>,  <30.813484, 19.773571, 15.747285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616701, 19.730366, 16.092842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211734, -0.977326, -0.001621,
		0.844481, 0.182118, 0.503671,
		-0.491956, -0.108013, 0.863894,
		30.469114, 19.697962, 16.352011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197390, 19.444548, 16.286270>,  <30.813484, 19.773571, 15.747285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197390, 19.444548, 16.286270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.810261, 19.372585, 16.356644>,  <30.577984, 19.329409, 16.398869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.810261, 19.372585, 16.356644>,  <31.197390, 19.444548, 16.286270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810261, 19.372585, 16.356644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168079, -0.982516, -0.080079,
		0.187266, -0.047931, 0.981139,
		-0.967823, -0.179905, 0.175935,
		30.519915, 19.318613, 16.409424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861715, 19.747936, 16.567696>,  <31.197390, 19.444548, 16.286270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861715, 19.747936, 16.567696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.754366, 19.738560, 16.182484>,  <31.689957, 19.732935, 15.951357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.754366, 19.738560, 16.182484>,  <31.861715, 19.747936, 16.567696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754366, 19.738560, 16.182484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901582, -0.358228, -0.242532,
		-0.339299, -0.933340, 0.117273,
		-0.268375, -0.023440, -0.963029,
		31.673853, 19.731527, 15.893575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577957, 19.551092, 16.776659>,  <31.861715, 19.747936, 16.567696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577957, 19.551092, 16.776659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.864948, 19.524185, 17.053989>,  <33.037144, 19.508041, 17.220388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.864948, 19.524185, 17.053989>,  <32.577957, 19.551092, 16.776659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864948, 19.524185, 17.053989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404586, 0.769988, 0.493385,
		-0.567042, -0.634502, 0.525234,
		0.717478, -0.067268, 0.693326,
		33.080193, 19.504005, 17.261988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241131, 19.674892, 17.440659>,  <32.577957, 19.551092, 16.776659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241131, 19.674892, 17.440659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629318, 19.752514, 17.497967>,  <32.862232, 19.799088, 17.532351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629318, 19.752514, 17.497967>,  <32.241131, 19.674892, 17.440659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629318, 19.752514, 17.497967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239456, 0.846608, 0.475305,
		-0.029057, -0.495577, 0.868078,
		0.970472, 0.194055, 0.143269,
		32.920460, 19.810730, 17.540947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212063, 19.894402, 18.126410>,  <32.241131, 19.674892, 17.440659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212063, 19.894402, 18.126410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.567059, 20.019810, 17.991314>,  <32.780056, 20.095055, 17.910257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.567059, 20.019810, 17.991314>,  <32.212063, 19.894402, 18.126410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567059, 20.019810, 17.991314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157076, 0.894811, 0.417901,
		0.433232, -0.317832, 0.843382,
		0.887489, 0.313523, -0.337737,
		32.833305, 20.113867, 17.889994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712620, 20.130682, 18.730408>,  <32.212063, 19.894402, 18.126410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712620, 20.130682, 18.730408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.794388, 20.292557, 18.373882>,  <32.843449, 20.389681, 18.159967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.794388, 20.292557, 18.373882>,  <32.712620, 20.130682, 18.730408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794388, 20.292557, 18.373882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136891, 0.913413, 0.383323,
		0.969265, 0.043655, 0.242115,
		0.204417, 0.404685, -0.891316,
		32.855713, 20.413961, 18.106487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088352, 20.745428, 18.984819>,  <32.712620, 20.130682, 18.730408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088352, 20.745428, 18.984819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995705, 20.818180, 18.602558>,  <32.940117, 20.861832, 18.373201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995705, 20.818180, 18.602558>,  <33.088352, 20.745428, 18.984819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995705, 20.818180, 18.602558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079443, 0.975549, 0.204921,
		0.969557, 0.123384, -0.211509,
		-0.231621, 0.181880, -0.955652,
		32.926220, 20.872744, 18.315863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561638, 21.260689, 18.776741>,  <33.088352, 20.745428, 18.984819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561638, 21.260689, 18.776741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264526, 21.285179, 18.510048>,  <33.086262, 21.299873, 18.350031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264526, 21.285179, 18.510048>,  <33.561638, 21.260689, 18.776741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264526, 21.285179, 18.510048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114737, 0.969439, 0.216848,
		0.659635, 0.237569, -0.713052,
		-0.742777, 0.061227, -0.666734,
		33.041695, 21.303547, 18.310028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694427, 21.958920, 18.402634>,  <33.561638, 21.260689, 18.776741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694427, 21.958920, 18.402634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.307724, 21.896603, 18.321529>,  <33.075703, 21.859213, 18.272867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.307724, 21.896603, 18.321529>,  <33.694427, 21.958920, 18.402634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307724, 21.896603, 18.321529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150824, 0.987758, -0.039821,
		0.206481, -0.007917, -0.978418,
		-0.966756, -0.155792, -0.202759,
		33.017696, 21.849865, 18.260702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472008, 22.419153, 17.859974>,  <33.694427, 21.958920, 18.402634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472008, 22.419153, 17.859974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135399, 22.313526, 18.048489>,  <32.933434, 22.250149, 18.161598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135399, 22.313526, 18.048489>,  <33.472008, 22.419153, 17.859974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135399, 22.313526, 18.048489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321821, 0.945744, -0.044724,
		-0.433906, -0.189306, -0.880846,
		-0.841520, -0.264069, 0.471287,
		32.882942, 22.234306, 18.189875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884926, 22.694256, 17.513096>,  <33.472008, 22.419153, 17.859974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884926, 22.694256, 17.513096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.739780, 22.639488, 17.881786>,  <32.652691, 22.606628, 18.103001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.739780, 22.639488, 17.881786>,  <32.884926, 22.694256, 17.513096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739780, 22.639488, 17.881786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461251, 0.885860, -0.049997,
		-0.809676, -0.443290, -0.384602,
		-0.362866, -0.136917, 0.921728,
		32.630920, 22.598413, 18.158304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189163, 22.982853, 17.510466>,  <32.884926, 22.694256, 17.513096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189163, 22.982853, 17.510466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.288967, 22.955231, 17.896828>,  <32.348850, 22.938658, 18.128645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.288967, 22.955231, 17.896828>,  <32.189163, 22.982853, 17.510466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288967, 22.955231, 17.896828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304147, 0.941391, 0.145872,
		-0.919368, -0.330174, 0.213887,
		0.249514, -0.069057, 0.965906,
		32.363823, 22.934513, 18.186600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608255, 23.228165, 17.873556>,  <32.189163, 22.982853, 17.510466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608255, 23.228165, 17.873556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929369, 23.275124, 18.107395>,  <32.122036, 23.303299, 18.247698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929369, 23.275124, 18.107395>,  <31.608255, 23.228165, 17.873556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929369, 23.275124, 18.107395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283498, 0.937670, 0.201007,
		-0.524562, -0.327098, 0.786029,
		0.802785, 0.117397, 0.584598,
		32.170204, 23.310343, 18.282774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400490, 23.671986, 18.322035>,  <31.608255, 23.228165, 17.873556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400490, 23.671986, 18.322035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.785528, 23.675968, 18.430336>,  <32.016552, 23.678358, 18.495317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.785528, 23.675968, 18.430336>,  <31.400490, 23.671986, 18.322035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785528, 23.675968, 18.430336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098295, 0.944072, 0.314747,
		-0.252477, -0.329588, 0.909740,
		0.962597, 0.009957, 0.270754,
		32.074306, 23.678955, 18.511562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463676, 24.075388, 19.027494>,  <31.400490, 23.671986, 18.322035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463676, 24.075388, 19.027494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.788179, 24.069431, 18.793694>,  <31.982882, 24.065857, 18.653414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.788179, 24.069431, 18.793694>,  <31.463676, 24.075388, 19.027494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788179, 24.069431, 18.793694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036997, 0.998980, 0.025902,
		0.583520, -0.042638, 0.810979,
		0.811256, -0.014890, -0.584502,
		32.031555, 24.064964, 18.618343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862083, 24.621845, 19.327015>,  <31.463676, 24.075388, 19.027494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862083, 24.621845, 19.327015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.029751, 24.574635, 18.966934>,  <32.130352, 24.546309, 18.750885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.029751, 24.574635, 18.966934>,  <31.862083, 24.621845, 19.327015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029751, 24.574635, 18.966934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007296, 0.991920, -0.126652,
		0.907879, 0.046520, 0.416643,
		0.419169, -0.118025, -0.900204,
		32.155502, 24.539227, 18.696873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309807, 25.154873, 19.306192>,  <31.862083, 24.621845, 19.327015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309807, 25.154873, 19.306192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276333, 25.047680, 18.922279>,  <32.256248, 24.983364, 18.691931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276333, 25.047680, 18.922279>,  <32.309807, 25.154873, 19.306192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276333, 25.047680, 18.922279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061759, 0.959915, -0.273402,
		0.994577, -0.082154, -0.063779,
		-0.083683, -0.267981, -0.959783,
		32.251228, 24.967285, 18.634344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799156, 25.590698, 18.919481>,  <32.309807, 25.154873, 19.306192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799156, 25.590698, 18.919481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.532684, 25.477478, 18.643486>,  <32.372799, 25.409546, 18.477888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.532684, 25.477478, 18.643486>,  <32.799156, 25.590698, 18.919481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532684, 25.477478, 18.643486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025580, 0.933307, -0.358167,
		0.745350, -0.220955, -0.628993,
		-0.666182, -0.283050, -0.689988,
		32.332829, 25.392563, 18.436489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280491, 25.710072, 18.309189>,  <32.799156, 25.590698, 18.919481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280491, 25.710072, 18.309189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884575, 25.702305, 18.252716>,  <32.647026, 25.697645, 18.218832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884575, 25.702305, 18.252716>,  <33.280491, 25.710072, 18.309189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884575, 25.702305, 18.252716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017945, 0.965806, -0.258643,
		0.141376, -0.258536, -0.955600,
		-0.989793, -0.019418, -0.141181,
		32.587635, 25.696480, 18.210361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112434, 26.027218, 17.721724>,  <33.280491, 25.710072, 18.309189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112434, 26.027218, 17.721724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.771263, 26.049633, 17.929325>,  <32.566559, 26.063082, 18.053886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.771263, 26.049633, 17.929325>,  <33.112434, 26.027218, 17.721724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771263, 26.049633, 17.929325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090387, 0.963352, -0.252553,
		-0.514136, -0.262322, -0.816609,
		-0.852932, 0.056036, 0.519005,
		32.515385, 26.066444, 18.085026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618614, 26.219810, 17.246094>,  <33.112434, 26.027218, 17.721724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618614, 26.219810, 17.246094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472115, 26.319389, 17.604733>,  <32.384216, 26.379137, 17.819916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472115, 26.319389, 17.604733>,  <32.618614, 26.219810, 17.246094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472115, 26.319389, 17.604733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097000, 0.948085, -0.302863,
		-0.925449, -0.197892, -0.323084,
		-0.366246, 0.248945, 0.896599,
		32.362240, 26.394073, 17.873713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032814, 26.685711, 17.065609>,  <32.618614, 26.219810, 17.246094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032814, 26.685711, 17.065609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.110058, 26.742184, 17.453995>,  <32.156403, 26.776068, 17.687027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.110058, 26.742184, 17.453995>,  <32.032814, 26.685711, 17.065609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110058, 26.742184, 17.453995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010433, 0.989243, -0.145912,
		-0.981121, 0.038307, 0.189560,
		0.193111, 0.141180, 0.970967,
		32.167992, 26.784538, 17.745285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.383228, 41.476261, 16.403116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.667480, 41.497711, 16.683723>,  <25.838032, 41.510582, 16.852089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.667480, 41.497711, 16.683723>,  <25.383228, 41.476261, 16.403116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667480, 41.497711, 16.683723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259589, -0.906758, 0.332271,
		0.653926, -0.418229, -0.630449,
		0.710629, 0.053623, 0.701520,
		25.880669, 41.513798, 16.894180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724390, 40.851582, 16.437246>,  <25.383228, 41.476261, 16.403116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724390, 40.851582, 16.437246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.790821, 40.992031, 16.805840>,  <25.830681, 41.076302, 17.026995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.790821, 40.992031, 16.805840>,  <25.724390, 40.851582, 16.437246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790821, 40.992031, 16.805840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018605, -0.933178, 0.358932,
		0.985937, -0.076755, -0.148449,
		0.166079, 0.351122, 0.921483,
		25.840645, 41.097366, 17.082285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054203, 40.326595, 16.792385>,  <25.724390, 40.851582, 16.437246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054203, 40.326595, 16.792385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.911959, 40.566914, 17.078766>,  <25.826612, 40.711105, 17.250595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.911959, 40.566914, 17.078766>,  <26.054203, 40.326595, 16.792385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911959, 40.566914, 17.078766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201934, -0.797320, 0.568774,
		0.912558, 0.057688, 0.404857,
		-0.355612, 0.600794, 0.715952,
		25.805275, 40.747150, 17.293550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076838, 39.960678, 17.346983>,  <26.054203, 40.326595, 16.792385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076838, 39.960678, 17.346983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.837296, 40.244507, 17.495514>,  <25.693569, 40.414803, 17.584633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.837296, 40.244507, 17.495514>,  <26.076838, 39.960678, 17.346983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837296, 40.244507, 17.495514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422567, -0.673832, 0.606125,
		0.680300, 0.206071, 0.703368,
		-0.598857, 0.709567, 0.371329,
		25.657639, 40.457378, 17.606913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070629, 39.803749, 18.034645>,  <26.076838, 39.960678, 17.346983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070629, 39.803749, 18.034645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.763687, 40.054310, 17.979828>,  <25.579521, 40.204647, 17.946938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.763687, 40.054310, 17.979828>,  <26.070629, 39.803749, 18.034645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763687, 40.054310, 17.979828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549677, -0.532554, 0.643616,
		0.330181, 0.569213, 0.752979,
		-0.767356, 0.626405, -0.137044,
		25.533480, 40.242233, 17.938715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835440, 39.979923, 18.711929>,  <26.070629, 39.803749, 18.034645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835440, 39.979923, 18.711929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.524618, 40.065781, 18.475246>,  <25.338125, 40.117294, 18.333237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.524618, 40.065781, 18.475246>,  <25.835440, 39.979923, 18.711929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524618, 40.065781, 18.475246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625702, -0.365657, 0.689052,
		-0.068465, 0.905663, 0.418435,
		-0.777052, 0.214640, -0.591709,
		25.291502, 40.130173, 18.297733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399933, 40.428211, 19.040272>,  <25.835440, 39.979923, 18.711929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399933, 40.428211, 19.040272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.173494, 40.233910, 18.773865>,  <25.037632, 40.117329, 18.614021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.173494, 40.233910, 18.773865>,  <25.399933, 40.428211, 19.040272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173494, 40.233910, 18.773865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698342, -0.146705, 0.700569,
		-0.438012, 0.861696, -0.256174,
		-0.566095, -0.485754, -0.666017,
		25.003666, 40.088184, 18.574060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.776350, 40.566082, 19.275574>,  <25.399933, 40.428211, 19.040272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.776350, 40.566082, 19.275574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.688560, 40.269257, 19.022221>,  <24.635887, 40.091160, 18.870209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.688560, 40.269257, 19.022221>,  <24.776350, 40.566082, 19.275574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.688560, 40.269257, 19.022221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598390, -0.410371, 0.688131,
		-0.770559, 0.530036, -0.353978,
		-0.219472, -0.742063, -0.633384,
		24.622719, 40.046638, 18.832205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.042194, 40.470295, 19.322554>,  <24.776350, 40.566082, 19.275574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.042194, 40.470295, 19.322554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.168756, 40.117542, 19.182743>,  <24.244694, 39.905891, 19.098858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.168756, 40.117542, 19.182743>,  <24.042194, 40.470295, 19.322554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.168756, 40.117542, 19.182743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584598, -0.471443, 0.660293,
		-0.747083, -0.004589, -0.664715,
		0.316405, -0.881885, -0.349525,
		24.263678, 39.852978, 19.077887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.480947, 40.075954, 19.355366>,  <24.042194, 40.470295, 19.322554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.480947, 40.075954, 19.355366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.766687, 39.796055, 19.352261>,  <23.938131, 39.628117, 19.350397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.766687, 39.796055, 19.352261>,  <23.480947, 40.075954, 19.355366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.766687, 39.796055, 19.352261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497741, -0.515865, 0.697236,
		-0.491893, -0.494206, -0.716800,
		0.714350, -0.699746, -0.007764,
		23.980991, 39.586132, 19.349932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.142981, 39.407990, 19.351181>,  <23.480947, 40.075954, 19.355366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.142981, 39.407990, 19.351181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.509407, 39.331409, 19.492134>,  <23.729263, 39.285461, 19.576706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.509407, 39.331409, 19.492134>,  <23.142981, 39.407990, 19.351181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.509407, 39.331409, 19.492134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395758, -0.573612, 0.717178,
		0.064828, -0.796440, -0.601233,
		0.916064, -0.191449, 0.352384,
		23.784225, 39.273975, 19.597849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.052269, 38.715939, 19.369747>,  <23.142981, 39.407990, 19.351181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.052269, 38.715939, 19.369747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.363621, 38.802391, 19.605515>,  <23.550432, 38.854263, 19.746975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.363621, 38.802391, 19.605515>,  <23.052269, 38.715939, 19.369747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.363621, 38.802391, 19.605515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342065, -0.641259, 0.686861,
		0.526422, -0.736258, -0.425212,
		0.778377, 0.216128, 0.589421,
		23.597134, 38.867229, 19.782341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.510422, 38.124527, 19.513990>,  <23.052269, 38.715939, 19.369747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.510422, 38.124527, 19.513990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.532356, 38.370823, 19.828407>,  <23.545517, 38.518600, 20.017057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.532356, 38.370823, 19.828407>,  <23.510422, 38.124527, 19.513990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.532356, 38.370823, 19.828407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290007, -0.743467, 0.602621,
		0.955452, -0.261002, 0.137801,
		0.054835, 0.615739, 0.786040,
		23.548807, 38.555546, 20.064219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.773277, 37.692986, 20.130167>,  <23.510422, 38.124527, 19.513990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.773277, 37.692986, 20.130167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.615051, 38.015110, 20.306805>,  <23.520115, 38.208385, 20.412786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.615051, 38.015110, 20.306805>,  <23.773277, 37.692986, 20.130167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.615051, 38.015110, 20.306805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422432, -0.586462, 0.691096,
		0.815524, 0.086830, 0.572172,
		-0.395565, 0.805309, 0.441594,
		23.496382, 38.256702, 20.439283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.424421, 37.355385, 20.592981>,  <23.773277, 37.692986, 20.130167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.424421, 37.355385, 20.592981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.265968, 37.720047, 20.636738>,  <23.170897, 37.938843, 20.662992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.265968, 37.720047, 20.636738>,  <23.424421, 37.355385, 20.592981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.265968, 37.720047, 20.636738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703776, -0.377984, 0.601521,
		0.589728, 0.161294, 0.791331,
		-0.396132, 0.911654, 0.109393,
		23.147129, 37.993542, 20.669556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.312698, 37.470509, 21.343241>,  <23.424421, 37.355385, 20.592981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.312698, 37.470509, 21.343241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.057207, 37.695923, 21.133690>,  <22.903912, 37.831173, 21.007959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.057207, 37.695923, 21.133690>,  <23.312698, 37.470509, 21.343241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.057207, 37.695923, 21.133690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755214, -0.328881, 0.567000,
		0.147234, 0.757799, 0.635659,
		-0.638729, 0.563540, -0.523878,
		22.865589, 37.864986, 20.976526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.075731, 37.786476, 21.784565>,  <23.312698, 37.470509, 21.343241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.075731, 37.786476, 21.784565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.788857, 37.839951, 21.510990>,  <22.616732, 37.872036, 21.346846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.788857, 37.839951, 21.510990>,  <23.075731, 37.786476, 21.784565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.788857, 37.839951, 21.510990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661726, -0.438419, 0.608200,
		-0.218541, 0.888772, 0.402894,
		-0.717188, 0.133689, -0.683936,
		22.573700, 37.880058, 21.305809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.481712, 38.000523, 22.178888>,  <23.075731, 37.786476, 21.784565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.481712, 38.000523, 22.178888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.331366, 37.863888, 21.834320>,  <22.241158, 37.781906, 21.627579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.331366, 37.863888, 21.834320>,  <22.481712, 38.000523, 22.178888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.331366, 37.863888, 21.834320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721972, -0.474810, 0.503301,
		-0.580933, 0.811093, -0.068152,
		-0.375865, -0.341588, -0.861419,
		22.218607, 37.761410, 21.575893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.772263, 38.008698, 22.305094>,  <22.481712, 38.000523, 22.178888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.772263, 38.008698, 22.305094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.780375, 37.794800, 21.967186>,  <21.785242, 37.666462, 21.764441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.780375, 37.794800, 21.967186>,  <21.772263, 38.008698, 22.305094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.780375, 37.794800, 21.967186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818945, -0.493572, 0.292773,
		-0.573514, 0.685882, -0.447938,
		0.020281, -0.534746, -0.844769,
		21.786459, 37.634377, 21.713755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.005989, 37.819656, 22.059820>,  <21.772263, 38.008698, 22.305094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.005989, 37.819656, 22.059820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.247551, 37.521446, 21.947044>,  <21.392488, 37.342518, 21.879379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.247551, 37.521446, 21.947044>,  <21.005989, 37.819656, 22.059820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.247551, 37.521446, 21.947044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688646, -0.666137, 0.286406,
		-0.401332, 0.021194, -0.915687,
		0.603903, -0.745529, -0.281937,
		21.428722, 37.297787, 21.862463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.545923, 37.456020, 21.833553>,  <21.005989, 37.819656, 22.059820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.545923, 37.456020, 21.833553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.853926, 37.207779, 21.892815>,  <21.038727, 37.058834, 21.928371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.853926, 37.207779, 21.892815>,  <20.545923, 37.456020, 21.833553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.853926, 37.207779, 21.892815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618464, -0.668909, 0.412387,
		-0.156827, -0.409167, -0.898881,
		0.770005, -0.620599, 0.148153,
		21.084927, 37.021599, 21.937260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.838583, 37.035137, 21.919094>,  <20.545923, 37.456020, 21.833553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.838583, 37.035137, 21.919094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.597929, 37.325901, 21.786644>,  <19.453537, 37.500359, 21.707174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.597929, 37.325901, 21.786644>,  <19.838583, 37.035137, 21.919094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.597929, 37.325901, 21.786644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570411, 0.100785, -0.815152,
		-0.559168, -0.679299, -0.475272,
		-0.601633, 0.726908, -0.331124,
		19.417439, 37.543972, 21.687307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.692944, 36.871967, 21.268400>,  <19.838583, 37.035137, 21.919094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.692944, 36.871967, 21.268400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.583231, 37.255966, 21.290939>,  <19.517403, 37.486366, 21.304462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.583231, 37.255966, 21.290939>,  <19.692944, 36.871967, 21.268400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.583231, 37.255966, 21.290939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325278, 0.147759, -0.934003,
		-0.904967, -0.237850, -0.352793,
		-0.274281, 0.959997, 0.056350,
		19.500946, 37.543964, 21.307844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.454622, 37.102032, 20.559072>,  <19.692944, 36.871967, 21.268400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.454622, 37.102032, 20.559072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.542307, 37.439003, 20.755951>,  <19.594917, 37.641186, 20.874079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.542307, 37.439003, 20.755951>,  <19.454622, 37.102032, 20.559072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.542307, 37.439003, 20.755951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390641, 0.386485, -0.835481,
		-0.894061, 0.375420, -0.244366,
		0.219213, 0.842430, 0.492196,
		19.608070, 37.691730, 20.903610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.300205, 37.601997, 20.130192>,  <19.454622, 37.102032, 20.559072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.300205, 37.601997, 20.130192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.541998, 37.797600, 20.381737>,  <19.687075, 37.914963, 20.532663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.541998, 37.797600, 20.381737>,  <19.300205, 37.601997, 20.130192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.541998, 37.797600, 20.381737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400056, 0.496307, -0.770477,
		-0.688880, 0.717321, 0.104378,
		0.604483, 0.489009, 0.628864,
		19.723343, 37.944302, 20.570396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.243227, 38.281097, 19.908337>,  <19.300205, 37.601997, 20.130192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.243227, 38.281097, 19.908337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.585320, 38.215836, 20.105095>,  <19.790575, 38.176678, 20.223150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.585320, 38.215836, 20.105095>,  <19.243227, 38.281097, 19.908337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.585320, 38.215836, 20.105095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510704, 0.426712, -0.746390,
		-0.088120, 0.889548, 0.448262,
		0.855229, -0.163158, 0.491897,
		19.841888, 38.166889, 20.252665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.527294, 38.868282, 20.030718>,  <19.243227, 38.281097, 19.908337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.527294, 38.868282, 20.030718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.835823, 38.613766, 20.036251>,  <20.020941, 38.461056, 20.039572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.835823, 38.613766, 20.036251>,  <19.527294, 38.868282, 20.030718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.835823, 38.613766, 20.036251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484309, 0.572706, -0.661402,
		0.412922, 0.516855, 0.749904,
		0.771324, -0.636293, 0.013835,
		20.067221, 38.422878, 20.040401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.054129, 39.229252, 20.073067>,  <19.527294, 38.868282, 20.030718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.054129, 39.229252, 20.073067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.208469, 38.888889, 19.930473>,  <20.301073, 38.684673, 19.844917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.208469, 38.888889, 19.930473>,  <20.054129, 39.229252, 20.073067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.208469, 38.888889, 19.930473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526488, 0.520402, -0.672303,
		0.757581, 0.071724, 0.648789,
		0.385852, -0.850904, -0.356485,
		20.324224, 38.633617, 19.823528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603308, 39.491695, 19.924990>,  <20.054129, 39.229252, 20.073067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603308, 39.491695, 19.924990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.643084, 39.154381, 19.713718>,  <20.666948, 38.951992, 19.586956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.643084, 39.154381, 19.713718>,  <20.603308, 39.491695, 19.924990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.643084, 39.154381, 19.713718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386953, 0.521802, -0.760256,
		0.916722, -0.128781, 0.378201,
		0.099440, -0.843290, -0.528179,
		20.672916, 38.901394, 19.555265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.300592, 39.503727, 19.688280>,  <20.603308, 39.491695, 19.924990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.300592, 39.503727, 19.688280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.088047, 39.267704, 19.445141>,  <20.960520, 39.126091, 19.299257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.088047, 39.267704, 19.445141>,  <21.300592, 39.503727, 19.688280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.088047, 39.267704, 19.445141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536875, 0.320481, -0.780421,
		0.655300, -0.741027, 0.146496,
		-0.531364, -0.590060, -0.607850,
		20.928638, 39.090687, 19.262787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.793674, 39.192818, 19.284536>,  <21.300592, 39.503727, 19.688280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.793674, 39.192818, 19.284536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.458445, 39.186268, 19.066414>,  <21.257307, 39.182339, 18.935541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.458445, 39.186268, 19.066414>,  <21.793674, 39.192818, 19.284536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.458445, 39.186268, 19.066414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461779, 0.510948, -0.725047,
		0.290495, -0.859456, -0.420652,
		-0.838077, -0.016374, -0.545306,
		21.207022, 39.181355, 18.902822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.080385, 39.067238, 18.733133>,  <21.793674, 39.192818, 19.284536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.080385, 39.067238, 18.733133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.719481, 39.200294, 18.623386>,  <21.502937, 39.280128, 18.557539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.719481, 39.200294, 18.623386>,  <22.080385, 39.067238, 18.733133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.719481, 39.200294, 18.623386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388292, 0.350119, -0.852435,
		-0.187492, -0.875653, -0.445059,
		-0.902261, 0.332638, -0.274365,
		21.448803, 39.300087, 18.541077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.087521, 38.982922, 18.016590>,  <22.080385, 39.067238, 18.733133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.087521, 38.982922, 18.016590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.772881, 39.224552, 18.067741>,  <21.584097, 39.369530, 18.098433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.772881, 39.224552, 18.067741>,  <22.087521, 38.982922, 18.016590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.772881, 39.224552, 18.067741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102474, 0.331942, -0.937717,
		-0.608898, -0.724506, -0.323008,
		-0.786602, 0.604074, 0.127876,
		21.536900, 39.405773, 18.106104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.734488, 38.903454, 17.358128>,  <22.087521, 38.982922, 18.016590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.734488, 38.903454, 17.358128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.609793, 39.232498, 17.548340>,  <21.534975, 39.429924, 17.662466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.609793, 39.232498, 17.548340>,  <21.734488, 38.903454, 17.358128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.609793, 39.232498, 17.548340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089803, 0.523736, -0.847134,
		-0.945915, -0.221380, -0.237142,
		-0.311739, 0.822613, 0.475529,
		21.516272, 39.479282, 17.690998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.089838, 39.263577, 17.040899>,  <21.734488, 38.903454, 17.358128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.089838, 39.263577, 17.040899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.323570, 39.517616, 17.242970>,  <21.463810, 39.670040, 17.364212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.323570, 39.517616, 17.242970>,  <21.089838, 39.263577, 17.040899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323570, 39.517616, 17.242970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228790, 0.468329, -0.853418,
		-0.778596, 0.614259, 0.128354,
		0.584332, 0.635102, 0.505175,
		21.498869, 39.708145, 17.394522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.975866, 39.854858, 16.683743>,  <21.089838, 39.263577, 17.040899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.975866, 39.854858, 16.683743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.313446, 39.925114, 16.886482>,  <21.515995, 39.967266, 17.008127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.313446, 39.925114, 16.886482>,  <20.975866, 39.854858, 16.683743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.313446, 39.925114, 16.886482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341658, 0.552435, -0.760320,
		-0.413541, 0.814843, 0.406221,
		0.843951, 0.175635, 0.506851,
		21.566631, 39.977802, 17.038538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.137371, 40.541004, 16.538177>,  <20.975866, 39.854858, 16.683743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.137371, 40.541004, 16.538177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.488291, 40.378845, 16.640938>,  <21.698843, 40.281551, 16.702595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.488291, 40.378845, 16.640938>,  <21.137371, 40.541004, 16.538177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.488291, 40.378845, 16.640938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461866, 0.567616, -0.681536,
		0.130468, 0.716567, 0.685208,
		0.877302, -0.405393, 0.256902,
		21.751482, 40.257229, 16.718008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.547817, 41.054516, 16.440275>,  <21.137371, 40.541004, 16.538177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.547817, 41.054516, 16.440275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.817177, 40.759415, 16.459251>,  <21.978792, 40.582352, 16.470636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.817177, 40.759415, 16.459251>,  <21.547817, 41.054516, 16.440275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.817177, 40.759415, 16.459251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616175, 0.524649, -0.587427,
		0.408491, 0.424802, 0.807885,
		0.673397, -0.737758, 0.047439,
		22.019196, 40.538086, 16.473482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.176548, 41.325401, 16.645245>,  <21.547817, 41.054516, 16.440275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.176548, 41.325401, 16.645245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.281740, 40.985291, 16.462872>,  <22.344856, 40.781223, 16.353449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.281740, 40.985291, 16.462872>,  <22.176548, 41.325401, 16.645245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.281740, 40.985291, 16.462872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801109, 0.455785, -0.387923,
		0.537648, -0.263235, 0.801026,
		0.262981, -0.850275, -0.455932,
		22.360634, 40.730209, 16.326092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.818344, 41.308296, 16.700565>,  <22.176548, 41.325401, 16.645245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.818344, 41.308296, 16.700565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.767778, 41.042633, 16.405834>,  <22.737438, 40.883236, 16.228996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.767778, 41.042633, 16.405834>,  <22.818344, 41.308296, 16.700565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.767778, 41.042633, 16.405834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869447, 0.283423, -0.404640,
		0.477578, -0.691784, 0.541621,
		-0.126415, -0.664158, -0.736826,
		22.729855, 40.843384, 16.184786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.584829, 41.166622, 16.516132>,  <22.818344, 41.308296, 16.700565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.584829, 41.166622, 16.516132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.344126, 41.063889, 16.213631>,  <23.199703, 41.002247, 16.032129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.344126, 41.063889, 16.213631>,  <23.584829, 41.166622, 16.516132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.344126, 41.063889, 16.213631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609413, 0.464382, -0.642624,
		0.516240, -0.847576, -0.122927,
		-0.601757, -0.256835, -0.756256,
		23.163599, 40.986839, 15.986753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.029003, 40.833462, 15.983641>,  <23.584829, 41.166622, 16.516132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.029003, 40.833462, 15.983641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.703672, 40.977386, 15.800759>,  <23.508474, 41.063740, 15.691031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.703672, 40.977386, 15.800759>,  <24.029003, 40.833462, 15.983641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.703672, 40.977386, 15.800759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581089, 0.463398, -0.669027,
		-0.028854, -0.809815, -0.585976,
		-0.813328, 0.359808, -0.457204,
		23.459675, 41.085327, 15.663598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.961927, 29.869198, 18.287933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253098, 29.903404, 18.560055>,  <27.427799, 29.923929, 18.723328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253098, 29.903404, 18.560055>,  <26.961927, 29.869198, 18.287933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253098, 29.903404, 18.560055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572226, 0.622377, 0.534046,
		-0.377735, -0.778032, 0.501978,
		0.727925, 0.085517, 0.680303,
		27.471476, 29.929060, 18.764145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704433, 29.913898, 19.018257>,  <26.961927, 29.869198, 18.287933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704433, 29.913898, 19.018257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069092, 30.078068, 19.026810>,  <27.287888, 30.176569, 19.031940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069092, 30.078068, 19.026810>,  <26.704433, 29.913898, 19.018257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069092, 30.078068, 19.026810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329309, 0.698371, 0.635479,
		0.245884, -0.586371, 0.771822,
		0.911645, 0.410422, 0.021379,
		27.342585, 30.201195, 19.033224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843264, 30.089685, 19.779907>,  <26.704433, 29.913898, 19.018257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843264, 30.089685, 19.779907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094608, 30.300148, 19.550709>,  <27.245415, 30.426426, 19.413189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094608, 30.300148, 19.550709>,  <26.843264, 30.089685, 19.779907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094608, 30.300148, 19.550709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305166, 0.844250, 0.440586,
		0.715567, -0.101989, 0.691058,
		0.628361, 0.526156, -0.572994,
		27.283115, 30.457994, 19.378811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082535, 30.603420, 20.249298>,  <26.843264, 30.089685, 19.779907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082535, 30.603420, 20.249298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183935, 30.757046, 19.894169>,  <27.244776, 30.849222, 19.681091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183935, 30.757046, 19.894169>,  <27.082535, 30.603420, 20.249298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183935, 30.757046, 19.894169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182326, 0.920324, 0.346065,
		0.949997, 0.074145, 0.303329,
		0.253502, 0.384065, -0.887823,
		27.259985, 30.872265, 19.627821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625694, 31.091856, 20.432186>,  <27.082535, 30.603420, 20.249298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625694, 31.091856, 20.432186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440144, 31.200474, 20.094883>,  <27.328814, 31.265644, 19.892502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440144, 31.200474, 20.094883>,  <27.625694, 31.091856, 20.432186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440144, 31.200474, 20.094883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153150, 0.912953, 0.378235,
		0.872560, 0.304600, -0.381913,
		-0.463879, 0.271543, -0.843256,
		27.300980, 31.281937, 19.841906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790417, 31.737717, 20.348665>,  <27.625694, 31.091856, 20.432186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790417, 31.737717, 20.348665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476463, 31.713116, 20.102032>,  <27.288092, 31.698355, 19.954052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476463, 31.713116, 20.102032>,  <27.790417, 31.737717, 20.348665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476463, 31.713116, 20.102032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240650, 0.947208, 0.211860,
		0.571003, 0.314666, -0.758249,
		-0.784884, -0.061500, -0.616583,
		27.240997, 31.694666, 19.917057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863588, 32.363071, 19.974344>,  <27.790417, 31.737717, 20.348665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863588, 32.363071, 19.974344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480587, 32.258064, 19.926559>,  <27.250786, 32.195061, 19.897888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480587, 32.258064, 19.926559>,  <27.863588, 32.363071, 19.974344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480587, 32.258064, 19.926559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285485, 0.921598, 0.262974,
		0.041062, 0.285904, -0.957378,
		-0.957503, -0.262519, -0.119464,
		27.193336, 32.179310, 19.890720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573093, 32.958832, 19.555145>,  <27.863588, 32.363071, 19.974344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573093, 32.958832, 19.555145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286230, 32.747234, 19.736626>,  <27.114111, 32.620274, 19.845514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286230, 32.747234, 19.736626>,  <27.573093, 32.958832, 19.555145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286230, 32.747234, 19.736626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424520, 0.847896, 0.317575,
		-0.552688, 0.035147, -0.832647,
		-0.717160, -0.528996, 0.453702,
		27.071083, 32.588535, 19.872736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945311, 33.333286, 19.391102>,  <27.573093, 32.958832, 19.555145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945311, 33.333286, 19.391102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878511, 33.103554, 19.711666>,  <26.838432, 32.965714, 19.904005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878511, 33.103554, 19.711666>,  <26.945311, 33.333286, 19.391102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878511, 33.103554, 19.711666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378824, 0.787809, 0.485644,
		-0.910276, -0.222490, -0.349135,
		-0.167000, -0.574331, 0.801408,
		26.828411, 32.931255, 19.952089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308102, 33.602146, 19.588949>,  <26.945311, 33.333286, 19.391102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308102, 33.602146, 19.588949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454758, 33.413383, 19.909668>,  <26.542751, 33.300125, 20.102100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454758, 33.413383, 19.909668>,  <26.308102, 33.602146, 19.588949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454758, 33.413383, 19.909668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388423, 0.705468, 0.592825,
		-0.845400, -0.528791, 0.075354,
		0.366641, -0.471905, 0.801798,
		26.564751, 33.271812, 20.150208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771461, 33.324417, 19.973499>,  <26.308102, 33.602146, 19.588949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771461, 33.324417, 19.973499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076605, 33.379589, 20.226173>,  <26.259691, 33.412693, 20.377777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076605, 33.379589, 20.226173>,  <25.771461, 33.324417, 19.973499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076605, 33.379589, 20.226173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550221, 0.651582, 0.522204,
		-0.339566, -0.745933, 0.572956,
		0.762858, 0.137930, 0.631683,
		26.305462, 33.420967, 20.415678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386507, 33.315289, 20.650814>,  <25.771461, 33.324417, 19.973499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386507, 33.315289, 20.650814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755878, 33.459957, 20.702156>,  <25.977501, 33.546761, 20.732962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755878, 33.459957, 20.702156>,  <25.386507, 33.315289, 20.650814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755878, 33.459957, 20.702156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344835, 0.635154, 0.691136,
		0.168441, -0.682474, 0.711236,
		0.923426, 0.361675, 0.128355,
		26.032906, 33.568459, 20.740662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631088, 34.014950, 20.659750>,  <25.386507, 33.315289, 20.650814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631088, 34.014950, 20.659750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561356, 33.997517, 21.053238>,  <25.519516, 33.987057, 21.289331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561356, 33.997517, 21.053238>,  <25.631088, 34.014950, 20.659750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561356, 33.997517, 21.053238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392584, 0.919264, -0.028844,
		-0.903042, -0.391222, -0.177369,
		-0.174333, -0.043585, 0.983722,
		25.509056, 33.984440, 21.348354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.942587, 34.354576, 20.807032>,  <25.631088, 34.014950, 20.659750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.942587, 34.354576, 20.807032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169554, 34.394932, 21.133923>,  <25.305733, 34.419147, 21.330057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169554, 34.394932, 21.133923>,  <24.942587, 34.354576, 20.807032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169554, 34.394932, 21.133923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544593, 0.790390, 0.280540,
		-0.617624, -0.604239, 0.503424,
		0.567414, 0.100892, 0.817228,
		25.339779, 34.425201, 21.379091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.205688, 34.443760, 20.810822>,  <24.942587, 34.354576, 20.807032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.205688, 34.443760, 20.810822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.942629, 34.287224, 21.068302>,  <23.784794, 34.193302, 21.222790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.942629, 34.287224, 21.068302>,  <24.205688, 34.443760, 20.810822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.942629, 34.287224, 21.068302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493557, -0.869374, -0.024285,
		0.569121, 0.301732, 0.764892,
		-0.657650, -0.391339, 0.643701,
		23.745335, 34.169823, 21.261412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.558775, 34.186577, 21.384380>,  <24.205688, 34.443760, 20.810822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.558775, 34.186577, 21.384380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.213490, 33.985191, 21.399246>,  <24.006317, 33.864361, 21.408165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.213490, 33.985191, 21.399246>,  <24.558775, 34.186577, 21.384380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213490, 33.985191, 21.399246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495966, -0.832010, 0.248549,
		-0.094215, 0.232983, 0.967906,
		-0.863216, -0.503465, 0.037164,
		23.954525, 33.834152, 21.410395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.534376, 33.889969, 22.025925>,  <24.558775, 34.186577, 21.384380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.534376, 33.889969, 22.025925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.309820, 33.664623, 21.783451>,  <24.175087, 33.529415, 21.637966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.309820, 33.664623, 21.783451>,  <24.534376, 33.889969, 22.025925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.309820, 33.664623, 21.783451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501061, -0.814371, 0.292811,
		-0.658618, -0.139353, 0.739461,
		-0.561391, -0.563366, -0.606184,
		24.141403, 33.495613, 21.601597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.416899, 33.301025, 22.381254>,  <24.534376, 33.889969, 22.025925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.416899, 33.301025, 22.381254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.332129, 33.178410, 22.010067>,  <24.281267, 33.104839, 21.787355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.332129, 33.178410, 22.010067>,  <24.416899, 33.301025, 22.381254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.332129, 33.178410, 22.010067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337949, -0.913941, 0.224730,
		-0.916994, -0.265979, 0.297281,
		-0.211924, -0.306542, -0.927966,
		24.268551, 33.086449, 21.731678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.046318, 32.801823, 22.548140>,  <24.416899, 33.301025, 22.381254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.046318, 32.801823, 22.548140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.200897, 32.765507, 22.181007>,  <24.293644, 32.743717, 21.960728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.200897, 32.765507, 22.181007>,  <24.046318, 32.801823, 22.548140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.200897, 32.765507, 22.181007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457306, -0.845343, 0.276163,
		-0.800956, -0.526453, -0.285162,
		0.386447, -0.090788, -0.917832,
		24.316832, 32.738270, 21.905657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.954453, 32.057404, 22.427742>,  <24.046318, 32.801823, 22.548140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.954453, 32.057404, 22.427742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.213144, 32.204170, 22.160275>,  <24.368359, 32.292229, 21.999794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.213144, 32.204170, 22.160275>,  <23.954453, 32.057404, 22.427742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213144, 32.204170, 22.160275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508452, -0.860872, 0.019390,
		-0.568524, -0.352526, -0.743308,
		0.646728, 0.366912, -0.668669,
		24.407164, 32.314243, 21.959673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.166010, 31.366280, 22.035341>,  <23.954453, 32.057404, 22.427742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.166010, 31.366280, 22.035341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418898, 31.651810, 21.914841>,  <24.570629, 31.823128, 21.842541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418898, 31.651810, 21.914841>,  <24.166010, 31.366280, 22.035341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.418898, 31.651810, 21.914841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718780, -0.685511, -0.115887,
		-0.289233, -0.143267, -0.946477,
		0.632218, 0.713827, -0.301250,
		24.608562, 31.865957, 21.824465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.465683, 31.092609, 21.442244>,  <24.166010, 31.366280, 22.035341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.465683, 31.092609, 21.442244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.724890, 31.356361, 21.594715>,  <24.880413, 31.514612, 21.686197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.724890, 31.356361, 21.594715>,  <24.465683, 31.092609, 21.442244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724890, 31.356361, 21.594715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734233, -0.673861, -0.082546,
		0.202431, 0.333363, -0.920810,
		0.648015, 0.659379, 0.381177,
		24.919294, 31.554174, 21.709068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058054, 31.180248, 21.000662>,  <24.465683, 31.092609, 21.442244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058054, 31.180248, 21.000662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.159624, 31.274433, 21.375912>,  <25.220566, 31.330944, 21.601061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.159624, 31.274433, 21.375912>,  <25.058054, 31.180248, 21.000662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.159624, 31.274433, 21.375912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747750, -0.663005, -0.035988,
		0.613508, 0.710621, -0.344421,
		0.253927, 0.235462, 0.938125,
		25.235802, 31.345072, 21.657349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769588, 30.921993, 20.911427>,  <25.058054, 31.180248, 21.000662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769588, 30.921993, 20.911427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686520, 31.001949, 21.294449>,  <25.636679, 31.049923, 21.524263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686520, 31.001949, 21.294449>,  <25.769588, 30.921993, 20.911427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686520, 31.001949, 21.294449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669225, -0.684929, 0.288116,
		0.713450, 0.700655, 0.008469,
		-0.207671, 0.199889, 0.957558,
		25.624218, 31.061916, 21.581717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450037, 31.007542, 21.193378>,  <25.769588, 30.921993, 20.911427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450037, 31.007542, 21.193378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220457, 30.871468, 21.491333>,  <26.082708, 30.789824, 21.670105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220457, 30.871468, 21.491333>,  <26.450037, 31.007542, 21.193378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.220457, 30.871468, 21.491333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754556, -0.573114, 0.319664,
		0.318158, 0.745529, 0.585629,
		-0.573951, -0.340186, 0.744885,
		26.048271, 30.769411, 21.714798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903400, 30.939358, 21.831572>,  <26.450037, 31.007542, 21.193378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903400, 30.939358, 21.831572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586983, 30.708740, 21.913395>,  <26.397131, 30.570370, 21.962488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586983, 30.708740, 21.913395>,  <26.903400, 30.939358, 21.831572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586983, 30.708740, 21.913395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611626, -0.752241, 0.245046,
		0.012597, 0.318956, 0.947686,
		-0.791047, -0.576543, 0.204557,
		26.349669, 30.535778, 21.974762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182730, 30.426901, 22.184185>,  <26.903400, 30.939358, 21.831572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182730, 30.426901, 22.184185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808441, 30.297607, 22.127693>,  <26.583868, 30.220032, 22.093798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808441, 30.297607, 22.127693>,  <27.182730, 30.426901, 22.184185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808441, 30.297607, 22.127693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305556, -0.942797, 0.133301,
		-0.176237, 0.081580, 0.980961,
		-0.935722, -0.323231, -0.141229,
		26.527725, 30.200638, 22.085325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073141, 30.001179, 22.724543>,  <27.182730, 30.426901, 22.184185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073141, 30.001179, 22.724543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816689, 29.902454, 22.433880>,  <26.662817, 29.843220, 22.259481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816689, 29.902454, 22.433880>,  <27.073141, 30.001179, 22.724543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816689, 29.902454, 22.433880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353389, -0.935458, 0.005936,
		-0.681223, -0.252987, 0.686974,
		-0.641133, -0.246813, -0.726658,
		26.624350, 29.828411, 22.215881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054762, 29.811665, 23.419712>,  <27.073141, 30.001179, 22.724543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054762, 29.811665, 23.419712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448465, 29.880077, 23.401901>,  <27.684687, 29.921125, 23.391214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448465, 29.880077, 23.401901>,  <27.054762, 29.811665, 23.419712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448465, 29.880077, 23.401901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149986, 0.941613, 0.301444,
		0.093482, -0.290021, 0.952444,
		0.984259, 0.171032, -0.044525,
		27.743744, 29.931387, 23.388544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282297, 30.499823, 23.920475>,  <27.054762, 29.811665, 23.419712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282297, 30.499823, 23.920475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616146, 30.438965, 23.708717>,  <27.816456, 30.402451, 23.581663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616146, 30.438965, 23.708717>,  <27.282297, 30.499823, 23.920475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616146, 30.438965, 23.708717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120495, 0.988249, -0.094050,
		0.537481, 0.014707, 0.843148,
		0.834623, -0.152145, -0.529393,
		27.866533, 30.393322, 23.549900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734234, 31.091133, 24.117693>,  <27.282297, 30.499823, 23.920475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734234, 31.091133, 24.117693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909832, 30.955818, 23.784744>,  <28.015190, 30.874630, 23.584974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909832, 30.955818, 23.784744>,  <27.734234, 31.091133, 24.117693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909832, 30.955818, 23.784744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235147, 0.937381, -0.256947,
		0.867173, -0.082931, 0.491054,
		0.438996, -0.338288, -0.832372,
		28.041531, 30.854332, 23.535032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460913, 31.435421, 24.104012>,  <27.734234, 31.091133, 24.117693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460913, 31.435421, 24.104012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362501, 31.323849, 23.732708>,  <28.303453, 31.256905, 23.509926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362501, 31.323849, 23.732708>,  <28.460913, 31.435421, 24.104012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362501, 31.323849, 23.732708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218054, 0.917219, -0.333409,
		0.944416, -0.284439, -0.164840,
		-0.246029, -0.278933, -0.928260,
		28.288692, 31.240170, 23.454229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031315, 31.723074, 23.654112>,  <28.460913, 31.435421, 24.104012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031315, 31.723074, 23.654112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735491, 31.656689, 23.393188>,  <28.557997, 31.616858, 23.236635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735491, 31.656689, 23.393188>,  <29.031315, 31.723074, 23.654112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735491, 31.656689, 23.393188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201045, 0.870417, -0.449394,
		0.642362, -0.463498, -0.610362,
		-0.739562, -0.165964, -0.652306,
		28.513622, 31.606899, 23.197496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336853, 31.855446, 22.903034>,  <29.031315, 31.723074, 23.654112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336853, 31.855446, 22.903034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937243, 31.872421, 22.898281>,  <28.697475, 31.882607, 22.895430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937243, 31.872421, 22.898281>,  <29.336853, 31.855446, 22.903034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937243, 31.872421, 22.898281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042705, 0.865550, -0.498998,
		-0.010892, -0.499021, -0.866522,
		-0.999028, 0.042440, -0.011883,
		28.637533, 31.885153, 22.894716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211660, 32.086525, 22.265099>,  <29.336853, 31.855446, 22.903034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211660, 32.086525, 22.265099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861176, 32.154491, 22.445492>,  <28.650885, 32.195271, 22.553728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861176, 32.154491, 22.445492>,  <29.211660, 32.086525, 22.265099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861176, 32.154491, 22.445492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034227, 0.955362, -0.293449,
		-0.480713, -0.241687, -0.842913,
		-0.876210, 0.169915, 0.450983,
		28.598312, 32.205467, 22.580786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842115, 32.557491, 21.875467>,  <29.211660, 32.086525, 22.265099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842115, 32.557491, 21.875467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630962, 32.585823, 22.214012>,  <28.504271, 32.602821, 22.417139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630962, 32.585823, 22.214012>,  <28.842115, 32.557491, 21.875467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630962, 32.585823, 22.214012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043356, 0.992970, -0.110141,
		-0.848211, -0.094836, -0.521098,
		-0.527880, 0.070830, 0.846360,
		28.472599, 32.607071, 22.467920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294521, 33.128052, 21.773064>,  <28.842115, 32.557491, 21.875467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294521, 33.128052, 21.773064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321266, 33.097305, 22.170982>,  <28.337313, 33.078857, 22.409733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321266, 33.097305, 22.170982>,  <28.294521, 33.128052, 21.773064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321266, 33.097305, 22.170982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113797, 0.989935, 0.084135,
		-0.991252, -0.118830, 0.057444,
		0.066864, -0.076862, 0.994797,
		28.341326, 33.074245, 22.469421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657928, 33.390575, 22.135504>,  <28.294521, 33.128052, 21.773064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657928, 33.390575, 22.135504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959320, 33.412609, 22.397568>,  <28.140156, 33.425831, 22.554806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959320, 33.412609, 22.397568>,  <27.657928, 33.390575, 22.135504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959320, 33.412609, 22.397568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184695, 0.974091, 0.130515,
		-0.630996, -0.219345, 0.744131,
		0.753479, 0.055083, 0.655160,
		28.185364, 33.429134, 22.594116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426422, 33.812458, 22.608944>,  <27.657928, 33.390575, 22.135504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426422, 33.812458, 22.608944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811352, 33.815975, 22.717648>,  <28.042311, 33.818085, 22.782869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811352, 33.815975, 22.717648>,  <27.426422, 33.812458, 22.608944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811352, 33.815975, 22.717648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044814, 0.990939, 0.126616,
		-0.268181, -0.134024, 0.954000,
		0.962326, 0.008797, 0.271758,
		28.100050, 33.818615, 22.799175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506968, 33.976231, 23.347717>,  <27.426422, 33.812458, 22.608944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506968, 33.976231, 23.347717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847363, 34.068207, 23.158848>,  <28.051600, 34.123390, 23.045527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847363, 34.068207, 23.158848>,  <27.506968, 33.976231, 23.347717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847363, 34.068207, 23.158848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148051, 0.967630, 0.204385,
		0.503883, -0.104024, 0.857486,
		0.850989, 0.229937, -0.472171,
		28.102659, 34.137188, 23.017197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.293718, 26.340626, 24.852833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.570982, 26.408157, 24.572540>,  <28.737341, 26.448677, 24.404364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.570982, 26.408157, 24.572540>,  <28.293718, 26.340626, 24.852833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570982, 26.408157, 24.572540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071665, 0.983507, 0.166067,
		0.717211, -0.064893, 0.693827,
		0.693160, 0.168828, -0.700732,
		28.778931, 26.458805, 24.362320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783916, 26.830616, 25.156569>,  <28.293718, 26.340626, 24.852833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783916, 26.830616, 25.156569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.833866, 26.885326, 24.763489>,  <28.863836, 26.918152, 24.527641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.833866, 26.885326, 24.763489>,  <28.783916, 26.830616, 25.156569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833866, 26.885326, 24.763489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087941, 0.988080, 0.126349,
		0.988258, 0.070631, 0.135491,
		0.124952, 0.136781, -0.982689,
		28.871328, 26.926359, 24.468679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178883, 27.437605, 25.033836>,  <28.783916, 26.830616, 25.156569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178883, 27.437605, 25.033836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.000156, 27.384735, 24.679913>,  <28.892920, 27.353014, 24.467558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.000156, 27.384735, 24.679913>,  <29.178883, 27.437605, 25.033836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000156, 27.384735, 24.679913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040927, 0.984971, -0.167804,
		0.893688, -0.111190, -0.434693,
		-0.446818, -0.132174, -0.884807,
		28.866112, 27.345083, 24.414471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240450, 28.017412, 24.713985>,  <29.178883, 27.437605, 25.033836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240450, 28.017412, 24.713985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.004852, 27.886093, 24.418606>,  <28.863495, 27.807301, 24.241379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.004852, 27.886093, 24.418606>,  <29.240450, 28.017412, 24.713985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004852, 27.886093, 24.418606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290645, 0.938678, -0.185496,
		0.754064, 0.105371, -0.648293,
		-0.588992, -0.328299, -0.738449,
		28.828156, 27.787603, 24.197071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378572, 28.371088, 24.103004>,  <29.240450, 28.017412, 24.713985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378572, 28.371088, 24.103004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.014658, 28.224216, 24.025574>,  <28.796310, 28.136093, 23.979115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.014658, 28.224216, 24.025574>,  <29.378572, 28.371088, 24.103004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014658, 28.224216, 24.025574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271961, 0.879615, -0.390274,
		0.313574, -0.302420, -0.900119,
		-0.909785, -0.367177, -0.193578,
		28.741722, 28.114063, 23.967501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232157, 28.502277, 23.326218>,  <29.378572, 28.371088, 24.103004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232157, 28.502277, 23.326218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.907787, 28.464897, 23.557274>,  <28.713165, 28.442469, 23.695908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.907787, 28.464897, 23.557274>,  <29.232157, 28.502277, 23.326218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907787, 28.464897, 23.557274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301469, 0.912791, -0.275550,
		-0.501515, -0.397591, -0.768377,
		-0.810925, -0.093449, 0.577640,
		28.664511, 28.436863, 23.730566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706984, 28.577684, 22.847321>,  <29.232157, 28.502277, 23.326218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706984, 28.577684, 22.847321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.589375, 28.696709, 23.210640>,  <28.518808, 28.768124, 23.428631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.589375, 28.696709, 23.210640>,  <28.706984, 28.577684, 22.847321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589375, 28.696709, 23.210640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306056, 0.870956, -0.384402,
		-0.905472, -0.391014, -0.165012,
		-0.294025, 0.297562, 0.908298,
		28.501167, 28.785978, 23.483130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002867, 28.686169, 22.721134>,  <28.706984, 28.577684, 22.847321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002867, 28.686169, 22.721134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.124952, 28.895100, 23.039635>,  <28.198204, 29.020458, 23.230736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.124952, 28.895100, 23.039635>,  <28.002867, 28.686169, 22.721134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124952, 28.895100, 23.039635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609174, 0.749780, -0.258335,
		-0.731950, -0.406209, 0.547032,
		0.305215, 0.522326, 0.796253,
		28.216516, 29.051798, 23.278511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451385, 29.161510, 22.830025>,  <28.002867, 28.686169, 22.721134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451385, 29.161510, 22.830025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.732740, 29.326263, 23.061749>,  <27.901554, 29.425116, 23.200783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.732740, 29.326263, 23.061749>,  <27.451385, 29.161510, 22.830025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732740, 29.326263, 23.061749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394114, 0.904242, -0.164382,
		-0.591542, -0.112690, 0.798361,
		0.703387, 0.411883, 0.579309,
		27.943756, 29.449829, 23.235540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635256, 29.191181, 22.989599>,  <27.451385, 29.161510, 22.830025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635256, 29.191181, 22.989599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.599031, 29.256702, 22.596668>,  <26.577297, 29.296015, 22.360910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.599031, 29.256702, 22.596668>,  <26.635256, 29.191181, 22.989599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599031, 29.256702, 22.596668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198640, -0.963589, -0.178992,
		-0.975880, -0.211339, 0.054723,
		-0.090558, 0.163805, -0.982327,
		26.571863, 29.305843, 22.301970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478662, 28.518177, 22.764870>,  <26.635256, 29.191181, 22.989599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478662, 28.518177, 22.764870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.592899, 28.698372, 22.426521>,  <26.661442, 28.806488, 22.223513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.592899, 28.698372, 22.426521>,  <26.478662, 28.518177, 22.764870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592899, 28.698372, 22.426521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366113, -0.866972, -0.338112,
		-0.885663, -0.213123, -0.412530,
		0.285592, 0.450486, -0.845872,
		26.678577, 28.833517, 22.172760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286219, 28.066788, 22.211088>,  <26.478662, 28.518177, 22.764870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286219, 28.066788, 22.211088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.574791, 28.289116, 22.045872>,  <26.747934, 28.422512, 21.946743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.574791, 28.289116, 22.045872>,  <26.286219, 28.066788, 22.211088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574791, 28.289116, 22.045872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429422, -0.827007, -0.362845,
		-0.543263, 0.084399, -0.835309,
		0.721431, 0.555820, -0.413040,
		26.791220, 28.455862, 21.921959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264755, 27.982685, 21.478825>,  <26.286219, 28.066788, 22.211088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264755, 27.982685, 21.478825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.632967, 28.111816, 21.566833>,  <26.853893, 28.189295, 21.619638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.632967, 28.111816, 21.566833>,  <26.264755, 27.982685, 21.478825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632967, 28.111816, 21.566833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390148, -0.788978, -0.474656,
		0.020361, 0.522776, -0.852227,
		0.920527, 0.322830, 0.220024,
		26.909124, 28.208666, 21.632841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658394, 28.066032, 20.828184>,  <26.264755, 27.982685, 21.478825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658394, 28.066032, 20.828184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.946274, 28.045536, 21.105141>,  <27.119001, 28.033239, 21.271315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.946274, 28.045536, 21.105141>,  <26.658394, 28.066032, 20.828184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946274, 28.045536, 21.105141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373171, -0.812421, -0.448013,
		0.585468, 0.580816, -0.565580,
		0.719702, -0.051239, 0.692390,
		27.162184, 28.030165, 21.312859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239378, 27.831436, 20.450054>,  <26.658394, 28.066032, 20.828184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239378, 27.831436, 20.450054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.359413, 27.762314, 20.825306>,  <27.431435, 27.720840, 21.050457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.359413, 27.762314, 20.825306>,  <27.239378, 27.831436, 20.450054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359413, 27.762314, 20.825306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438019, -0.848683, -0.296441,
		0.847400, 0.499876, -0.178988,
		0.300088, -0.172804, 0.938129,
		27.449440, 27.710472, 21.106745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951410, 27.602825, 20.451820>,  <27.239378, 27.831436, 20.450054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951410, 27.602825, 20.451820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.814640, 27.481155, 20.807476>,  <27.732578, 27.408154, 21.020868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.814640, 27.481155, 20.807476>,  <27.951410, 27.602825, 20.451820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814640, 27.481155, 20.807476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366266, -0.914477, -0.171992,
		0.865411, 0.266852, 0.424091,
		-0.341925, -0.304174, 0.889138,
		27.712063, 27.389904, 21.074217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427576, 27.231791, 20.788572>,  <27.951410, 27.602825, 20.451820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427576, 27.231791, 20.788572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.083120, 27.114613, 20.954765>,  <27.876448, 27.044306, 21.054482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.083120, 27.114613, 20.954765>,  <28.427576, 27.231791, 20.788572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083120, 27.114613, 20.954765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262370, -0.956124, -0.130340,
		0.435436, -0.003231, 0.900214,
		-0.861137, -0.292944, 0.415483,
		27.824780, 27.026730, 21.079411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643242, 26.578444, 21.018747>,  <28.427576, 27.231791, 20.788572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643242, 26.578444, 21.018747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.248468, 26.547733, 21.075405>,  <28.011604, 26.529306, 21.109400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.248468, 26.547733, 21.075405>,  <28.643242, 26.578444, 21.018747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248468, 26.547733, 21.075405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058629, -0.990024, -0.128123,
		0.150068, -0.118145, 0.981591,
		-0.986936, -0.076777, 0.141644,
		27.952387, 26.524700, 21.117899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516853, 25.962919, 21.484898>,  <28.643242, 26.578444, 21.018747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516853, 25.962919, 21.484898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.184891, 26.002872, 21.265343>,  <27.985712, 26.026844, 21.133610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.184891, 26.002872, 21.265343>,  <28.516853, 25.962919, 21.484898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184891, 26.002872, 21.265343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021882, -0.988913, -0.146874,
		-0.557470, -0.109881, 0.822893,
		-0.829908, 0.099884, -0.548885,
		27.935919, 26.032837, 21.100677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168505, 25.301510, 21.650913>,  <28.516853, 25.962919, 21.484898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168505, 25.301510, 21.650913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.011826, 25.455853, 21.316803>,  <27.917818, 25.548458, 21.116337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.011826, 25.455853, 21.316803>,  <28.168505, 25.301510, 21.650913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011826, 25.455853, 21.316803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013822, -0.905247, -0.424662,
		-0.919988, -0.177886, 0.349253,
		-0.391702, 0.385856, -0.835275,
		27.894316, 25.571609, 21.066219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813360, 24.738667, 21.415966>,  <28.168505, 25.301510, 21.650913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813360, 24.738667, 21.415966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.779346, 24.965870, 21.088520>,  <27.758938, 25.102192, 20.892052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.779346, 24.965870, 21.088520>,  <27.813360, 24.738667, 21.415966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779346, 24.965870, 21.088520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036329, -0.819279, -0.572243,
		-0.995715, -0.078400, 0.049032,
		-0.085035, 0.568010, -0.818617,
		27.753836, 25.136272, 20.842936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159258, 24.494965, 21.021019>,  <27.813360, 24.738667, 21.415966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159258, 24.494965, 21.021019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.432310, 24.670273, 20.787117>,  <27.596142, 24.775457, 20.646776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.432310, 24.670273, 20.787117>,  <27.159258, 24.494965, 21.021019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432310, 24.670273, 20.787117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009312, -0.805345, -0.592733,
		-0.730706, 0.399171, -0.553833,
		0.682628, 0.438271, -0.584754,
		27.637098, 24.801754, 20.611691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003925, 24.232969, 20.397116>,  <27.159258, 24.494965, 21.021019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003925, 24.232969, 20.397116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.376520, 24.373150, 20.358089>,  <27.600077, 24.457258, 20.334673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.376520, 24.373150, 20.358089>,  <27.003925, 24.232969, 20.397116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376520, 24.373150, 20.358089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298992, -0.890321, -0.343413,
		-0.207215, 0.290713, -0.934103,
		0.931486, 0.350449, -0.097567,
		27.655966, 24.478285, 20.328819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.195057, 25.043039, 20.096506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.869881, 25.099846, 20.322411>,  <33.674774, 25.133930, 20.457952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.869881, 25.099846, 20.322411>,  <34.195057, 25.043039, 20.096506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869881, 25.099846, 20.322411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071980, 0.986875, -0.144555,
		-0.577877, -0.076864, -0.812496,
		-0.812943, 0.142018, 0.564760,
		33.625999, 25.142452, 20.491838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734737, 25.497465, 19.686964>,  <34.195057, 25.043039, 20.096506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734737, 25.497465, 19.686964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.612217, 25.523380, 20.066856>,  <33.538704, 25.538929, 20.294792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.612217, 25.523380, 20.066856>,  <33.734737, 25.497465, 19.686964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612217, 25.523380, 20.066856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042763, 0.997611, -0.054260,
		-0.950975, 0.023993, -0.308336,
		-0.306297, 0.064786, 0.949729,
		33.520329, 25.542816, 20.351774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084492, 25.932772, 19.643980>,  <33.734737, 25.497465, 19.686964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084492, 25.932772, 19.643980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152634, 25.957371, 20.037365>,  <33.193520, 25.972130, 20.273396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.152634, 25.957371, 20.037365>,  <33.084492, 25.932772, 19.643980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152634, 25.957371, 20.037365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212975, 0.976758, -0.024185,
		-0.962092, -0.205333, 0.179493,
		0.170355, 0.061495, 0.983462,
		33.203739, 25.975819, 20.332403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599510, 26.470816, 19.882620>,  <33.084492, 25.932772, 19.643980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599510, 26.470816, 19.882620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.854252, 26.434441, 20.188862>,  <33.007095, 26.412617, 20.372606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.854252, 26.434441, 20.188862>,  <32.599510, 26.470816, 19.882620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854252, 26.434441, 20.188862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177630, 0.948999, 0.260476,
		-0.750245, -0.301879, 0.588219,
		0.636852, -0.090935, 0.765605,
		33.045307, 26.407160, 20.418543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170067, 26.600548, 20.447149>,  <32.599510, 26.470816, 19.882620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170067, 26.600548, 20.447149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.543415, 26.709805, 20.540287>,  <32.767422, 26.775358, 20.596170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.543415, 26.709805, 20.540287>,  <32.170067, 26.600548, 20.447149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543415, 26.709805, 20.540287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335383, 0.894781, 0.294762,
		-0.127834, -0.353214, 0.926768,
		0.933369, 0.273142, 0.232846,
		32.823425, 26.791746, 20.610140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081333, 26.903015, 21.106726>,  <32.170067, 26.600548, 20.447149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081333, 26.903015, 21.106726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.420052, 27.046143, 20.949295>,  <32.623283, 27.132019, 20.854836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.420052, 27.046143, 20.949295>,  <32.081333, 26.903015, 21.106726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420052, 27.046143, 20.949295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265491, 0.925482, 0.270180,
		0.460925, -0.124296, 0.878692,
		0.846796, 0.357817, -0.393579,
		32.674091, 27.153488, 20.831221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247105, 27.424120, 21.490337>,  <32.081333, 26.903015, 21.106726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247105, 27.424120, 21.490337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.483112, 27.522884, 21.182854>,  <32.624718, 27.582144, 20.998363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.483112, 27.522884, 21.182854>,  <32.247105, 27.424120, 21.490337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483112, 27.522884, 21.182854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310502, 0.948261, 0.066259,
		0.745298, 0.199592, 0.636155,
		0.590016, 0.246910, -0.768711,
		32.660118, 27.596958, 20.952240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619579, 28.026180, 21.669876>,  <32.247105, 27.424120, 21.490337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619579, 28.026180, 21.669876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.672188, 28.024746, 21.273354>,  <32.703754, 28.023886, 21.035440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.672188, 28.024746, 21.273354>,  <32.619579, 28.026180, 21.669876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672188, 28.024746, 21.273354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103800, 0.994447, -0.017368,
		0.985864, 0.105182, 0.130418,
		0.131521, -0.003585, -0.991307,
		32.711643, 28.023670, 20.975962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077450, 28.541803, 21.570028>,  <32.619579, 28.026180, 21.669876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077450, 28.541803, 21.570028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.909264, 28.522705, 21.207607>,  <32.808350, 28.511246, 20.990154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.909264, 28.522705, 21.207607>,  <33.077450, 28.541803, 21.570028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909264, 28.522705, 21.207607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009694, 0.998321, -0.057106,
		0.907256, -0.032795, -0.419299,
		-0.420467, -0.047745, -0.906051,
		32.783123, 28.508381, 20.935793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398224, 28.976580, 21.130804>,  <33.077450, 28.541803, 21.570028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398224, 28.976580, 21.130804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038254, 28.932262, 20.962112>,  <32.822269, 28.905672, 20.860897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038254, 28.932262, 20.962112>,  <33.398224, 28.976580, 21.130804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038254, 28.932262, 20.962112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031031, 0.981001, -0.191503,
		0.434932, -0.159252, -0.886269,
		-0.899928, -0.110793, -0.421727,
		32.768276, 28.899025, 20.835594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409935, 29.403656, 20.523325>,  <33.398224, 28.976580, 21.130804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409935, 29.403656, 20.523325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.031662, 29.365253, 20.647556>,  <32.804699, 29.342211, 20.722095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.031662, 29.365253, 20.647556>,  <33.409935, 29.403656, 20.523325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031662, 29.365253, 20.647556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144515, 0.979958, -0.137104,
		-0.291193, -0.174541, -0.940607,
		-0.945686, -0.096008, 0.310581,
		32.747955, 29.336451, 20.740730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168484, 29.822813, 20.086611>,  <33.409935, 29.403656, 20.523325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168484, 29.822813, 20.086611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.866951, 29.782223, 20.346283>,  <32.686031, 29.757868, 20.502087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.866951, 29.782223, 20.346283>,  <33.168484, 29.822813, 20.086611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866951, 29.782223, 20.346283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203311, 0.975539, -0.083597,
		-0.624819, -0.195004, -0.756025,
		-0.753834, -0.101475, 0.649182,
		32.640800, 29.751780, 20.541039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592075, 30.150734, 19.773243>,  <33.168484, 29.822813, 20.086611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592075, 30.150734, 19.773243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501648, 30.150269, 20.162888>,  <32.447392, 30.149990, 20.396675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501648, 30.150269, 20.162888>,  <32.592075, 30.150734, 19.773243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501648, 30.150269, 20.162888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551611, 0.824371, -0.127032,
		-0.802881, -0.566048, -0.187005,
		-0.226068, -0.001163, 0.974111,
		32.433826, 30.149920, 20.455120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928257, 30.402208, 19.805109>,  <32.592075, 30.150734, 19.773243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928257, 30.402208, 19.805109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050549, 30.457184, 20.181969>,  <32.123924, 30.490170, 20.408085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050549, 30.457184, 20.181969>,  <31.928257, 30.402208, 19.805109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050549, 30.457184, 20.181969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058782, 0.990364, -0.125398,
		-0.950303, -0.017043, 0.310861,
		0.305728, 0.137439, 0.942147,
		32.142265, 30.498415, 20.464613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353825, 30.165716, 19.459221>,  <31.928257, 30.402208, 19.805109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353825, 30.165716, 19.459221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.254837, 30.301270, 19.096142>,  <31.195444, 30.382603, 18.878294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.254837, 30.301270, 19.096142>,  <31.353825, 30.165716, 19.459221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254837, 30.301270, 19.096142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067100, -0.928594, -0.364980,
		-0.966570, -0.151227, 0.207057,
		-0.247467, 0.338885, -0.907699,
		31.180597, 30.402935, 18.823832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893167, 29.626442, 19.110260>,  <31.353825, 30.165716, 19.459221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893167, 29.626442, 19.110260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.041401, 29.829365, 18.799053>,  <31.130341, 29.951118, 18.612329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.041401, 29.829365, 18.799053>,  <30.893167, 29.626442, 19.110260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041401, 29.829365, 18.799053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343205, -0.853166, -0.392835,
		-0.863064, -0.121441, -0.490278,
		0.370582, 0.507307, -0.778016,
		31.152576, 29.981558, 18.565649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580820, 29.361887, 18.555220>,  <30.893167, 29.626442, 19.110260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580820, 29.361887, 18.555220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.898758, 29.551586, 18.403793>,  <31.089521, 29.665405, 18.312937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.898758, 29.551586, 18.403793>,  <30.580820, 29.361887, 18.555220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898758, 29.551586, 18.403793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243201, -0.820531, -0.517284,
		-0.555945, 0.319093, -0.767532,
		0.794845, 0.474246, -0.378566,
		31.137211, 29.693859, 18.290224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648798, 29.067820, 17.958698>,  <30.580820, 29.361887, 18.555220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648798, 29.067820, 17.958698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.002337, 29.252926, 17.986027>,  <31.214458, 29.363989, 18.002424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.002337, 29.252926, 17.986027>,  <30.648798, 29.067820, 17.958698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002337, 29.252926, 17.986027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428181, -0.741534, -0.516515,
		-0.188363, 0.485772, -0.853548,
		0.883844, 0.462766, 0.068321,
		31.267490, 29.391756, 18.006523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964867, 29.037285, 17.267815>,  <30.648798, 29.067820, 17.958698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964867, 29.037285, 17.267815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.248850, 29.090149, 17.544506>,  <31.419241, 29.121868, 17.710522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.248850, 29.090149, 17.544506>,  <30.964867, 29.037285, 17.267815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248850, 29.090149, 17.544506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454089, -0.836687, -0.306200,
		0.538294, 0.531496, -0.654027,
		0.709960, 0.132161, 0.691730,
		31.461838, 29.129797, 17.752026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817114, 28.945957, 16.997942>,  <30.964867, 29.037285, 17.267815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817114, 28.945957, 16.997942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.774176, 28.882565, 17.390545>,  <31.748413, 28.844528, 17.626106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.774176, 28.882565, 17.390545>,  <31.817114, 28.945957, 16.997942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774176, 28.882565, 17.390545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535045, -0.841278, -0.077322,
		0.837976, 0.516851, 0.175103,
		-0.107346, -0.158482, 0.981509,
		31.741972, 28.835020, 17.684998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153576, 28.437586, 17.074366>,  <31.817114, 28.945957, 16.997942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153576, 28.437586, 17.074366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.037373, 28.427235, 17.456974>,  <31.967651, 28.421024, 17.686539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.037373, 28.427235, 17.456974>,  <32.153576, 28.437586, 17.074366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037373, 28.427235, 17.456974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267080, -0.962099, 0.055085,
		0.918844, 0.271471, 0.286407,
		-0.290505, -0.025879, 0.956523,
		31.950220, 28.419472, 17.743931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678356, 28.166019, 17.382654>,  <32.153576, 28.437586, 17.074366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678356, 28.166019, 17.382654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.366219, 28.096725, 17.623005>,  <32.178936, 28.055149, 17.767216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.366219, 28.096725, 17.623005>,  <32.678356, 28.166019, 17.382654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366219, 28.096725, 17.623005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367196, -0.904707, 0.216037,
		0.506195, 0.389224, 0.769592,
		-0.780342, -0.173234, 0.600879,
		32.132114, 28.044756, 17.803268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983646, 27.800087, 17.977446>,  <32.678356, 28.166019, 17.382654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983646, 27.800087, 17.977446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.589104, 27.734856, 17.986488>,  <32.352379, 27.695717, 17.991915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.589104, 27.734856, 17.986488>,  <32.983646, 27.800087, 17.977446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589104, 27.734856, 17.986488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162540, -0.942741, 0.291240,
		-0.026181, 0.290940, 0.956383,
		-0.986355, -0.163076, 0.022607,
		32.293198, 27.685932, 17.993271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759628, 27.528925, 18.679543>,  <32.983646, 27.800087, 17.977446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759628, 27.528925, 18.679543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505810, 27.411598, 18.393517>,  <32.353519, 27.341202, 18.221901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505810, 27.411598, 18.393517>,  <32.759628, 27.528925, 18.679543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505810, 27.411598, 18.393517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001556, -0.925671, 0.378327,
		-0.772882, 0.238954, 0.587839,
		-0.634548, -0.293317, -0.715062,
		32.315445, 27.323603, 18.178997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344090, 27.121597, 19.028057>,  <32.759628, 27.528925, 18.679543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344090, 27.121597, 19.028057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.309334, 27.021885, 18.642246>,  <32.288479, 26.962057, 18.410761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.309334, 27.021885, 18.642246>,  <32.344090, 27.121597, 19.028057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309334, 27.021885, 18.642246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045397, -0.966191, 0.253799,
		-0.995183, 0.065839, 0.072636,
		-0.086890, -0.249279, -0.964526,
		32.283268, 26.947102, 18.352888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730564, 26.677259, 19.001904>,  <32.344090, 27.121597, 19.028057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730564, 26.677259, 19.001904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925531, 26.596275, 18.662155>,  <32.042511, 26.547684, 18.458305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925531, 26.596275, 18.662155>,  <31.730564, 26.677259, 19.001904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925531, 26.596275, 18.662155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204788, -0.972121, 0.114203,
		-0.848813, 0.118276, -0.515293,
		0.487420, -0.202463, -0.849371,
		32.071758, 26.535536, 18.407345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304209, 26.174736, 18.557438>,  <31.730564, 26.677259, 19.001904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304209, 26.174736, 18.557438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.677187, 26.138004, 18.417660>,  <31.900974, 26.115965, 18.333792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.677187, 26.138004, 18.417660>,  <31.304209, 26.174736, 18.557438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677187, 26.138004, 18.417660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125500, -0.989261, -0.074917,
		-0.338815, 0.113711, -0.933956,
		0.932445, -0.091828, -0.349447,
		31.956921, 26.110456, 18.312826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240391, 25.682621, 18.019972>,  <31.304209, 26.174736, 18.557438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240391, 25.682621, 18.019972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.632463, 25.702568, 18.096664>,  <31.867706, 25.714537, 18.142679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.632463, 25.702568, 18.096664>,  <31.240391, 25.682621, 18.019972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632463, 25.702568, 18.096664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072058, -0.991252, -0.110575,
		0.184539, 0.122199, -0.975199,
		0.980180, 0.049866, 0.191730,
		31.926517, 25.717527, 18.154182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982658, 25.632641, 17.280863>,  <31.240391, 25.682621, 18.019972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982658, 25.632641, 17.280863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638752, 25.448975, 17.370281>,  <30.432409, 25.338776, 17.423933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638752, 25.448975, 17.370281>,  <30.982658, 25.632641, 17.280863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638752, 25.448975, 17.370281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406764, 0.880379, 0.243876,
		-0.308784, 0.118746, -0.943690,
		-0.859764, -0.459165, 0.223545,
		30.380823, 25.311226, 17.437346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401968, 25.945522, 16.834560>,  <30.982658, 25.632641, 17.280863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401968, 25.945522, 16.834560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.254181, 25.773514, 17.164062>,  <30.165508, 25.670309, 17.361763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.254181, 25.773514, 17.164062>,  <30.401968, 25.945522, 16.834560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254181, 25.773514, 17.164062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457568, 0.855751, 0.241499,
		-0.808779, -0.287698, -0.512938,
		-0.369469, -0.430024, 0.823755,
		30.143341, 25.644506, 17.411188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837023, 26.293613, 16.894344>,  <30.401968, 25.945522, 16.834560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837023, 26.293613, 16.894344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.845198, 26.098644, 17.243515>,  <29.850103, 25.981663, 17.453018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.845198, 26.098644, 17.243515>,  <29.837023, 26.293613, 16.894344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845198, 26.098644, 17.243515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548774, 0.724359, 0.417314,
		-0.835721, -0.487568, -0.252680,
		0.020438, -0.487423, 0.872927,
		29.851330, 25.952417, 17.505394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124125, 26.208605, 17.120056>,  <29.837023, 26.293613, 16.894344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124125, 26.208605, 17.120056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.369936, 26.198261, 17.435444>,  <29.517424, 26.192055, 17.624676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.369936, 26.198261, 17.435444>,  <29.124125, 26.208605, 17.120056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369936, 26.198261, 17.435444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581189, 0.661001, 0.474655,
		-0.533453, -0.749940, 0.391177,
		0.614530, -0.025858, 0.788469,
		29.554295, 26.190504, 17.671984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661976, 26.259752, 17.507015>,  <29.124125, 26.208605, 17.120056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661976, 26.259752, 17.507015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.978088, 26.372295, 17.724747>,  <29.167757, 26.439821, 17.855385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.978088, 26.372295, 17.724747>,  <28.661976, 26.259752, 17.507015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978088, 26.372295, 17.724747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566926, 0.672796, 0.475332,
		-0.232483, -0.684240, 0.691207,
		0.790282, 0.281356, 0.544327,
		29.215174, 26.456703, 17.888044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337795, 26.425255, 18.253531>,  <28.661976, 26.259752, 17.507015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337795, 26.425255, 18.253531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.709372, 26.572540, 18.238113>,  <28.932318, 26.660912, 18.228863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.709372, 26.572540, 18.238113>,  <28.337795, 26.425255, 18.253531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709372, 26.572540, 18.238113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335845, 0.881908, 0.330827,
		0.155808, -0.294374, 0.942904,
		0.928941, 0.368215, -0.038545,
		28.988054, 26.683004, 18.226549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386772, 26.857618, 18.908312>,  <28.337795, 26.425255, 18.253531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386772, 26.857618, 18.908312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.677160, 26.996220, 18.670689>,  <28.851393, 27.079380, 18.528114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.677160, 26.996220, 18.670689>,  <28.386772, 26.857618, 18.908312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677160, 26.996220, 18.670689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248817, 0.937616, 0.242828,
		0.641138, -0.028474, 0.766897,
		0.725969, 0.346503, -0.594057,
		28.894951, 27.100170, 18.492472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603138, 27.484797, 19.236929>,  <28.386772, 26.857618, 18.908312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603138, 27.484797, 19.236929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.744713, 27.539879, 18.866898>,  <28.829657, 27.572927, 18.644878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.744713, 27.539879, 18.866898>,  <28.603138, 27.484797, 19.236929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744713, 27.539879, 18.866898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139296, 0.985831, 0.093455,
		0.924838, 0.095782, 0.368102,
		0.353935, 0.137705, -0.925077,
		28.850893, 27.581190, 18.589375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003700, 28.053928, 19.246815>,  <28.603138, 27.484797, 19.236929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003700, 28.053928, 19.246815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.881357, 27.996201, 18.870384>,  <28.807951, 27.961563, 18.644526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.881357, 27.996201, 18.870384>,  <29.003700, 28.053928, 19.246815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881357, 27.996201, 18.870384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265343, 0.962202, -0.061322,
		0.914354, 0.230952, -0.332591,
		-0.305858, -0.144321, -0.941075,
		28.789600, 27.952904, 18.588062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412180, 28.491041, 18.840490>,  <29.003700, 28.053928, 19.246815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412180, 28.491041, 18.840490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.074591, 28.420982, 18.637699>,  <28.872036, 28.378946, 18.516024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.074591, 28.420982, 18.637699>,  <29.412180, 28.491041, 18.840490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074591, 28.420982, 18.637699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190644, 0.981420, -0.021687,
		0.501359, 0.078349, -0.861685,
		-0.843975, -0.175149, -0.506980,
		28.821398, 28.368439, 18.485605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380449, 29.083752, 18.430456>,  <29.412180, 28.491041, 18.840490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380449, 29.083752, 18.430456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.012415, 28.927429, 18.419800>,  <28.791594, 28.833635, 18.413406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.012415, 28.927429, 18.419800>,  <29.380449, 29.083752, 18.430456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012415, 28.927429, 18.419800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391221, 0.913406, 0.112408,
		-0.019597, 0.113847, -0.993305,
		-0.920088, -0.390805, -0.026639,
		28.736389, 28.810188, 18.411808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982395, 29.645876, 18.022928>,  <29.380449, 29.083752, 18.430456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982395, 29.645876, 18.022928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.717627, 29.417011, 18.216625>,  <28.558765, 29.279694, 18.332844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.717627, 29.417011, 18.216625>,  <28.982395, 29.645876, 18.022928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717627, 29.417011, 18.216625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498256, 0.818495, 0.286020,
		-0.559998, -0.051953, -0.826863,
		-0.661924, -0.572160, 0.484242,
		28.519049, 29.245363, 18.361898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289846, 29.909914, 17.837948>,  <28.982395, 29.645876, 18.022928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289846, 29.909914, 17.837948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.213629, 29.692223, 18.164753>,  <28.167898, 29.561607, 18.360836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.213629, 29.692223, 18.164753>,  <28.289846, 29.909914, 17.837948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213629, 29.692223, 18.164753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513999, 0.764369, 0.389289,
		-0.836361, -0.345767, -0.425378,
		-0.190542, -0.544229, 0.817012,
		28.156466, 29.528954, 18.409857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574118, 30.010031, 17.947168>,  <28.289846, 29.909914, 17.837948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574118, 30.010031, 17.947168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.748055, 29.898991, 18.289829>,  <27.852417, 29.832367, 18.495426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.748055, 29.898991, 18.289829>,  <27.574118, 30.010031, 17.947168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748055, 29.898991, 18.289829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532255, 0.688113, 0.493159,
		-0.726374, -0.670403, 0.151465,
		0.434840, -0.277600, 0.856652,
		27.878506, 29.815710, 18.546825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.984016, 36.280380, 28.635258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.204018, 35.985977, 28.793144>,  <40.336018, 35.809338, 28.887877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.204018, 35.985977, 28.793144>,  <39.984016, 36.280380, 28.635258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204018, 35.985977, 28.793144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186468, -0.352472, -0.917057,
		0.814083, 0.577982, -0.056618,
		0.549999, -0.736003, 0.394716,
		40.369019, 35.765175, 28.911558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664135, 36.461494, 28.455360>,  <39.984016, 36.280380, 28.635258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664135, 36.461494, 28.455360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.650295, 36.066853, 28.519119>,  <40.641991, 35.830067, 28.557375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.650295, 36.066853, 28.519119>,  <40.664135, 36.461494, 28.455360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650295, 36.066853, 28.519119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260978, -0.162877, -0.951505,
		0.964724, 0.008673, 0.263120,
		-0.034604, -0.986608, 0.159395,
		40.639915, 35.770870, 28.566938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219784, 36.236340, 28.109453>,  <40.664135, 36.461494, 28.455360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219784, 36.236340, 28.109453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.969376, 35.926987, 28.149422>,  <40.819130, 35.741375, 28.173403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.969376, 35.926987, 28.149422>,  <41.219784, 36.236340, 28.109453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969376, 35.926987, 28.149422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188408, -0.274343, -0.942995,
		0.756708, -0.571504, 0.317454,
		-0.626016, -0.773382, 0.099922,
		40.781570, 35.694973, 28.179398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687687, 35.698360, 27.863550>,  <41.219784, 36.236340, 28.109453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687687, 35.698360, 27.863550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.315075, 35.553417, 27.851257>,  <41.091507, 35.466450, 27.843882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.315075, 35.553417, 27.851257>,  <41.687687, 35.698360, 27.863550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315075, 35.553417, 27.851257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149324, -0.304083, -0.940870,
		0.331588, -0.881039, 0.337372,
		-0.931532, -0.362359, -0.030730,
		41.035614, 35.444710, 27.842039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847931, 35.126610, 27.428793>,  <41.687687, 35.698360, 27.863550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847931, 35.126610, 27.428793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.448872, 35.151627, 27.440056>,  <41.209438, 35.166637, 27.446814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.448872, 35.151627, 27.440056>,  <41.847931, 35.126610, 27.428793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448872, 35.151627, 27.440056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055939, -0.504299, -0.861716,
		-0.039696, -0.861261, 0.506610,
		-0.997645, 0.062545, 0.028159,
		41.149578, 35.170391, 27.448503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519848, 34.488983, 27.390604>,  <41.847931, 35.126610, 27.428793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519848, 34.488983, 27.390604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.238304, 34.724014, 27.230938>,  <41.069378, 34.865032, 27.135138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.238304, 34.724014, 27.230938>,  <41.519848, 34.488983, 27.390604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238304, 34.724014, 27.230938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110193, -0.464816, -0.878523,
		-0.701744, -0.662339, 0.262417,
		-0.703856, 0.587582, -0.399167,
		41.027149, 34.900288, 27.111187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128990, 34.082355, 26.993752>,  <41.519848, 34.488983, 27.390604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128990, 34.082355, 26.993752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.045509, 34.435463, 26.825390>,  <40.995422, 34.647327, 26.724373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.045509, 34.435463, 26.825390>,  <41.128990, 34.082355, 26.993752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045509, 34.435463, 26.825390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053410, -0.440026, -0.896395,
		-0.976520, -0.164597, 0.138982,
		-0.208700, 0.882771, -0.420903,
		40.982899, 34.700294, 26.699120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736942, 33.842167, 26.514353>,  <41.128990, 34.082355, 26.993752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736942, 33.842167, 26.514353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.805374, 34.220791, 26.404980>,  <40.846432, 34.447964, 26.339355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.805374, 34.220791, 26.404980>,  <40.736942, 33.842167, 26.514353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805374, 34.220791, 26.404980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128106, -0.253798, -0.958736,
		-0.976894, 0.199045, 0.077841,
		0.171076, 0.946556, -0.273432,
		40.856697, 34.504757, 26.322950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184078, 34.024418, 26.071171>,  <40.736942, 33.842167, 26.514353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184078, 34.024418, 26.071171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.473316, 34.294430, 26.012569>,  <40.646858, 34.456436, 25.977409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.473316, 34.294430, 26.012569>,  <40.184078, 34.024418, 26.071171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473316, 34.294430, 26.012569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025365, -0.186003, -0.982222,
		-0.690281, 0.713957, -0.117377,
		0.723097, 0.675032, -0.146504,
		40.690247, 34.496941, 25.968618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967152, 34.475723, 25.554728>,  <40.184078, 34.024418, 26.071171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967152, 34.475723, 25.554728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.366940, 34.464069, 25.548855>,  <40.606812, 34.457077, 25.545332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.366940, 34.464069, 25.548855>,  <39.967152, 34.475723, 25.554728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366940, 34.464069, 25.548855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020719, -0.219231, -0.975453,
		0.025198, 0.975238, -0.219718,
		0.999468, -0.029132, -0.014681,
		40.666779, 34.455330, 25.544451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217537, 34.968739, 25.040951>,  <39.967152, 34.475723, 25.554728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217537, 34.968739, 25.040951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.546551, 34.743797, 25.074875>,  <40.743958, 34.608833, 25.095230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.546551, 34.743797, 25.074875>,  <40.217537, 34.968739, 25.040951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546551, 34.743797, 25.074875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004500, -0.155556, -0.987817,
		0.568697, 0.812132, -0.130481,
		0.822534, -0.562356, 0.084810,
		40.793312, 34.575092, 25.100317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518669, 35.113136, 24.425547>,  <40.217537, 34.968739, 25.040951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518669, 35.113136, 24.425547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.756268, 34.817135, 24.551762>,  <40.898827, 34.639534, 24.627491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.756268, 34.817135, 24.551762>,  <40.518669, 35.113136, 24.425547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756268, 34.817135, 24.551762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300963, -0.159337, -0.940230,
		0.746053, 0.653454, 0.128069,
		0.593991, -0.740006, 0.315539,
		40.934464, 34.595135, 24.646423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223782, 35.181431, 24.109354>,  <40.518669, 35.113136, 24.425547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223782, 35.181431, 24.109354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.162697, 34.795723, 24.195942>,  <41.126045, 34.564297, 24.247894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.162697, 34.795723, 24.195942>,  <41.223782, 35.181431, 24.109354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162697, 34.795723, 24.195942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430240, -0.262059, -0.863839,
		0.889704, -0.038785, 0.454888,
		-0.152712, -0.964272, 0.216468,
		41.116882, 34.506443, 24.260883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771156, 34.854359, 23.743811>,  <41.223782, 35.181431, 24.109354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771156, 34.854359, 23.743811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.520470, 34.559292, 23.844273>,  <41.370056, 34.382252, 23.904549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.520470, 34.559292, 23.844273>,  <41.771156, 34.854359, 23.743811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520470, 34.559292, 23.844273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301874, -0.526964, -0.794469,
		0.718401, -0.422090, 0.552938,
		-0.626716, -0.737664, 0.251153,
		41.332455, 34.337994, 23.919619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169037, 34.294655, 23.627615>,  <41.771156, 34.854359, 23.743811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169037, 34.294655, 23.627615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.784771, 34.185387, 23.607590>,  <41.554211, 34.119823, 23.595573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.784771, 34.185387, 23.607590>,  <42.169037, 34.294655, 23.627615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784771, 34.185387, 23.607590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181588, -0.481434, -0.857466,
		0.210136, -0.832825, 0.512100,
		-0.960661, -0.273175, -0.050064,
		41.496574, 34.103436, 23.592571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147972, 33.592587, 23.321838>,  <42.169037, 34.294655, 23.627615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147972, 33.592587, 23.321838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.776634, 33.734299, 23.276810>,  <41.553833, 33.819324, 23.249792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.776634, 33.734299, 23.276810>,  <42.147972, 33.592587, 23.321838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776634, 33.734299, 23.276810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036198, -0.387550, -0.921138,
		-0.369958, -0.851057, 0.372603,
		-0.928343, 0.354270, -0.112571,
		41.498131, 33.840580, 23.243038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821285, 33.102390, 23.022501>,  <42.147972, 33.592587, 23.321838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821285, 33.102390, 23.022501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.615013, 33.433773, 22.935112>,  <41.491249, 33.632603, 22.882679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.615013, 33.433773, 22.935112>,  <41.821285, 33.102390, 23.022501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615013, 33.433773, 22.935112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169066, -0.348373, -0.921983,
		-0.839933, -0.438514, 0.319714,
		-0.515683, 0.828457, -0.218472,
		41.460308, 33.682312, 22.869570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185753, 32.914951, 22.657610>,  <41.821285, 33.102390, 23.022501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185753, 32.914951, 22.657610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.221458, 33.302338, 22.564571>,  <41.242882, 33.534771, 22.508749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.221458, 33.302338, 22.564571>,  <41.185753, 32.914951, 22.657610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221458, 33.302338, 22.564571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272074, -0.200935, -0.941064,
		-0.958127, 0.147289, 0.245559,
		0.089267, 0.968468, -0.232595,
		41.248238, 33.592876, 22.494793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689896, 33.016308, 22.121279>,  <41.185753, 32.914951, 22.657610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689896, 33.016308, 22.121279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.941097, 33.326153, 22.091366>,  <41.091820, 33.512058, 22.073418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.941097, 33.326153, 22.091366>,  <40.689896, 33.016308, 22.121279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941097, 33.326153, 22.091366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077367, -0.033472, -0.996441,
		-0.774355, 0.631554, 0.038909,
		0.628004, 0.774609, -0.074781,
		41.129498, 33.558537, 22.068932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350693, 33.450661, 21.712557>,  <40.689896, 33.016308, 22.121279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350693, 33.450661, 21.712557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.726616, 33.582176, 21.675331>,  <40.952168, 33.661087, 21.652996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.726616, 33.582176, 21.675331>,  <40.350693, 33.450661, 21.712557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726616, 33.582176, 21.675331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088774, -0.028077, -0.995656,
		-0.329976, 0.943985, 0.002801,
		0.939806, 0.328792, -0.093066,
		41.008556, 33.680813, 21.647411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328140, 34.012039, 21.286245>,  <40.350693, 33.450661, 21.712557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328140, 34.012039, 21.286245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.711521, 33.900066, 21.264328>,  <40.941551, 33.832882, 21.251177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.711521, 33.900066, 21.264328>,  <40.328140, 34.012039, 21.286245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711521, 33.900066, 21.264328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057974, -0.003088, -0.998313,
		0.279290, 0.960015, -0.019188,
		0.958455, -0.279932, -0.054794,
		40.999058, 33.816086, 21.247890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569035, 34.287247, 21.560579>,  <40.328140, 34.012039, 21.286245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569035, 34.287247, 21.560579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.188053, 34.167278, 21.582024>,  <38.959465, 34.095295, 21.594891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.188053, 34.167278, 21.582024>,  <39.569035, 34.287247, 21.560579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188053, 34.167278, 21.582024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156020, 0.631256, 0.759719,
		-0.261700, 0.715234, -0.648038,
		-0.952455, -0.299925, 0.053609,
		38.902317, 34.077301, 21.598106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202236, 34.857876, 21.715137>,  <39.569035, 34.287247, 21.560579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202236, 34.857876, 21.715137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.944168, 34.569798, 21.817184>,  <38.789330, 34.396950, 21.878412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.944168, 34.569798, 21.817184>,  <39.202236, 34.857876, 21.715137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944168, 34.569798, 21.817184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313274, 0.553896, 0.771400,
		-0.696865, 0.417760, -0.582972,
		-0.645166, -0.720191, 0.255117,
		38.750618, 34.353741, 21.893719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587166, 35.183640, 22.083460>,  <39.202236, 34.857876, 21.715137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587166, 35.183640, 22.083460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.580074, 34.800709, 22.198845>,  <38.575821, 34.570950, 22.268076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.580074, 34.800709, 22.198845>,  <38.587166, 35.183640, 22.083460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580074, 34.800709, 22.198845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330962, 0.277860, 0.901808,
		-0.943478, -0.079483, -0.321764,
		-0.017727, -0.957328, 0.288461,
		38.574757, 34.513512, 22.285383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922905, 35.137657, 22.459942>,  <38.587166, 35.183640, 22.083460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922905, 35.137657, 22.459942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.122879, 34.810818, 22.574768>,  <38.242863, 34.614712, 22.643663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.122879, 34.810818, 22.574768>,  <37.922905, 35.137657, 22.459942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122879, 34.810818, 22.574768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340431, 0.119377, 0.932661,
		-0.796348, -0.563998, -0.218486,
		0.499936, -0.817102, 0.287068,
		38.272861, 34.565685, 22.660889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418365, 34.686577, 22.730299>,  <37.922905, 35.137657, 22.459942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418365, 34.686577, 22.730299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.779835, 34.587013, 22.869682>,  <37.996716, 34.527275, 22.953312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.779835, 34.587013, 22.869682>,  <37.418365, 34.686577, 22.730299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779835, 34.587013, 22.869682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285541, 0.256173, 0.923494,
		-0.319135, -0.934033, 0.160421,
		0.903670, -0.248913, 0.348458,
		38.050934, 34.512341, 22.974220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310253, 34.209072, 23.303051>,  <37.418365, 34.686577, 22.730299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310253, 34.209072, 23.303051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.653572, 34.401501, 23.374496>,  <37.859562, 34.516956, 23.417364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.653572, 34.401501, 23.374496>,  <37.310253, 34.209072, 23.303051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653572, 34.401501, 23.374496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353778, 0.302589, 0.885032,
		0.371718, -0.822806, 0.429902,
		0.858293, 0.481072, 0.178613,
		37.911060, 34.545822, 23.428082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393803, 34.099850, 24.005516>,  <37.310253, 34.209072, 23.303051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393803, 34.099850, 24.005516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.635330, 34.405174, 23.913635>,  <37.780247, 34.588367, 23.858507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.635330, 34.405174, 23.913635>,  <37.393803, 34.099850, 24.005516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635330, 34.405174, 23.913635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130214, 0.378747, 0.916294,
		0.786413, -0.523367, 0.328088,
		0.603821, 0.763308, -0.229702,
		37.816475, 34.634167, 23.844725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797585, 34.251293, 24.681280>,  <37.393803, 34.099850, 24.005516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797585, 34.251293, 24.681280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.872395, 34.580776, 24.467167>,  <37.917278, 34.778465, 24.338699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.872395, 34.580776, 24.467167>,  <37.797585, 34.251293, 24.681280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872395, 34.580776, 24.467167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065773, 0.533177, 0.843443,
		0.980151, -0.192951, 0.045539,
		0.187023, 0.823706, -0.535285,
		37.928501, 34.827888, 24.306581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482574, 34.511208, 24.832712>,  <37.797585, 34.251293, 24.681280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482574, 34.511208, 24.832712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.290096, 34.830555, 24.687901>,  <38.174610, 35.022163, 24.601013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.290096, 34.830555, 24.687901>,  <38.482574, 34.511208, 24.832712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290096, 34.830555, 24.687901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060140, 0.442078, 0.894958,
		0.874547, 0.408879, -0.260740,
		-0.481197, 0.798364, -0.362028,
		38.145737, 35.070065, 24.579292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812935, 35.088177, 25.079380>,  <38.482574, 34.511208, 24.832712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812935, 35.088177, 25.079380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.449043, 35.234085, 25.000042>,  <38.230709, 35.321629, 24.952438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.449043, 35.234085, 25.000042>,  <38.812935, 35.088177, 25.079380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449043, 35.234085, 25.000042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029924, 0.418859, 0.907558,
		0.414129, 0.831564, -0.370132,
		-0.909726, 0.364771, -0.198345,
		38.176125, 35.343517, 24.940538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899323, 35.763935, 25.164516>,  <38.812935, 35.088177, 25.079380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899323, 35.763935, 25.164516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.501190, 35.731659, 25.185722>,  <38.262310, 35.712292, 25.198446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.501190, 35.731659, 25.185722>,  <38.899323, 35.763935, 25.164516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501190, 35.731659, 25.185722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001048, 0.558080, 0.829787,
		-0.096544, 0.825855, -0.555557,
		-0.995328, -0.080693, 0.053013,
		38.202591, 35.707451, 25.201626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607208, 36.377296, 25.364357>,  <38.899323, 35.763935, 25.164516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607208, 36.377296, 25.364357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.284397, 36.149380, 25.426369>,  <38.090710, 36.012630, 25.463575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.284397, 36.149380, 25.426369>,  <38.607208, 36.377296, 25.364357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284397, 36.149380, 25.426369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124070, 0.420289, 0.898868,
		-0.577328, 0.706181, -0.409881,
		-0.807032, -0.569795, 0.155029,
		38.042286, 35.978439, 25.472878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055294, 36.820545, 25.507812>,  <38.607208, 36.377296, 25.364357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055294, 36.820545, 25.507812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.943687, 36.483795, 25.692593>,  <37.876724, 36.281746, 25.803461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.943687, 36.483795, 25.692593>,  <38.055294, 36.820545, 25.507812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943687, 36.483795, 25.692593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003376, 0.480191, 0.877158,
		-0.960281, 0.246300, -0.131138,
		-0.279015, -0.841875, 0.461950,
		37.859982, 36.231232, 25.831177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690575, 37.037483, 26.053617>,  <38.055294, 36.820545, 25.507812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690575, 37.037483, 26.053617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.795593, 36.667614, 26.163921>,  <37.858604, 36.445690, 26.230104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.795593, 36.667614, 26.163921>,  <37.690575, 37.037483, 26.053617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795593, 36.667614, 26.163921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149381, 0.321291, 0.935124,
		-0.953285, -0.204324, 0.222484,
		0.262551, -0.924675, 0.275760,
		37.874359, 36.390213, 26.246649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359703, 37.053513, 26.618443>,  <37.690575, 37.037483, 26.053617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359703, 37.053513, 26.618443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.616096, 36.746574, 26.625603>,  <37.769932, 36.562412, 26.629898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.616096, 36.746574, 26.625603>,  <37.359703, 37.053513, 26.618443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616096, 36.746574, 26.625603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238001, 0.220873, 0.945817,
		-0.729720, -0.601997, 0.324206,
		0.640987, -0.767343, 0.017899,
		37.808392, 36.516373, 26.630972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213417, 36.653419, 27.129892>,  <37.359703, 37.053513, 26.618443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213417, 36.653419, 27.129892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.601128, 36.572727, 27.073589>,  <37.833752, 36.524311, 27.039808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.601128, 36.572727, 27.073589>,  <37.213417, 36.653419, 27.129892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601128, 36.572727, 27.073589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138973, -0.023056, 0.990028,
		-0.202963, -0.979170, 0.005687,
		0.969274, -0.201729, -0.140758,
		37.891911, 36.512207, 27.031363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288555, 36.246414, 27.658512>,  <37.213417, 36.653419, 27.129892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288555, 36.246414, 27.658512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.636082, 36.390182, 27.522293>,  <37.844597, 36.476444, 27.440561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.636082, 36.390182, 27.522293>,  <37.288555, 36.246414, 27.658512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636082, 36.390182, 27.522293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305080, 0.153123, 0.939936,
		0.389975, -0.920528, 0.023385,
		0.868819, 0.359417, -0.340549,
		37.896729, 36.498009, 27.420128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950878, 35.890942, 28.095596>,  <37.288555, 36.246414, 27.658512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950878, 35.890942, 28.095596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.067348, 36.244202, 27.948483>,  <38.137230, 36.456158, 27.860214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.067348, 36.244202, 27.948483>,  <37.950878, 35.890942, 28.095596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067348, 36.244202, 27.948483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373073, 0.249180, 0.893715,
		0.880928, -0.397437, -0.256925,
		0.291175, 0.883150, -0.367782,
		38.154701, 36.509148, 27.838148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557434, 35.996635, 28.440001>,  <37.950878, 35.890942, 28.095596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557434, 35.996635, 28.440001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.472305, 36.360981, 28.298557>,  <38.421230, 36.579586, 28.213692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.472305, 36.360981, 28.298557>,  <38.557434, 35.996635, 28.440001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472305, 36.360981, 28.298557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389305, 0.410981, 0.824340,
		0.896186, 0.037774, -0.442068,
		-0.212820, 0.910861, -0.353609,
		38.408459, 36.634239, 28.192474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145061, 36.330170, 28.502935>,  <38.557434, 35.996635, 28.440001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145061, 36.330170, 28.502935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.855110, 36.605419, 28.489986>,  <38.681141, 36.770569, 28.482218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.855110, 36.605419, 28.489986>,  <39.145061, 36.330170, 28.502935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855110, 36.605419, 28.489986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332401, 0.390543, 0.858479,
		0.603378, 0.611530, -0.511826,
		-0.724875, 0.688119, -0.032372,
		38.637646, 36.811855, 28.480274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426899, 37.019539, 28.617132>,  <39.145061, 36.330170, 28.502935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426899, 37.019539, 28.617132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.040691, 37.065319, 28.710663>,  <38.808968, 37.092789, 28.766781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.040691, 37.065319, 28.710663>,  <39.426899, 37.019539, 28.617132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040691, 37.065319, 28.710663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257645, 0.291336, 0.921272,
		0.037321, 0.949749, -0.310779,
		-0.965519, 0.114453, 0.233825,
		38.751038, 37.099655, 28.780809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.305742, 24.206234, 19.586258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.630400, 24.223392, 19.819286>,  <27.825195, 24.233688, 19.959105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.630400, 24.223392, 19.819286>,  <27.305742, 24.206234, 19.586258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630400, 24.223392, 19.819286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395410, -0.774436, -0.493862,
		0.429980, 0.631196, -0.645530,
		0.811646, 0.042898, 0.582573,
		27.873894, 24.236261, 19.994059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829697, 24.034388, 19.219391>,  <27.305742, 24.206234, 19.586258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829697, 24.034388, 19.219391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.020021, 23.985863, 19.567848>,  <28.134216, 23.956749, 19.776922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.020021, 23.985863, 19.567848>,  <27.829697, 24.034388, 19.219391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020021, 23.985863, 19.567848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548814, -0.733029, -0.401835,
		0.687320, 0.669292, -0.282205,
		0.475810, -0.121311, 0.871142,
		28.162764, 23.949469, 19.829191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547735, 24.093164, 19.082327>,  <27.829697, 24.034388, 19.219391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547735, 24.093164, 19.082327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.508869, 23.880402, 19.418812>,  <28.485550, 23.752745, 19.620703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.508869, 23.880402, 19.418812>,  <28.547735, 24.093164, 19.082327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508869, 23.880402, 19.418812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442590, -0.780132, -0.442163,
		0.891444, 0.329349, 0.311218,
		-0.097165, -0.531906, 0.841210,
		28.479719, 23.720829, 19.671175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215332, 23.889263, 19.354351>,  <28.547735, 24.093164, 19.082327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215332, 23.889263, 19.354351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.970383, 23.610161, 19.503017>,  <28.823414, 23.442699, 19.592216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.970383, 23.610161, 19.503017>,  <29.215332, 23.889263, 19.354351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970383, 23.610161, 19.503017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482746, -0.702332, -0.523151,
		0.626064, -0.140944, 0.766928,
		-0.612373, -0.697757, 0.371664,
		28.786671, 23.400833, 19.614517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622940, 23.334396, 19.529905>,  <29.215332, 23.889263, 19.354351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622940, 23.334396, 19.529905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.269207, 23.152237, 19.571022>,  <29.056967, 23.042942, 19.595692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.269207, 23.152237, 19.571022>,  <29.622940, 23.334396, 19.529905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269207, 23.152237, 19.571022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431167, -0.881119, -0.194226,
		0.179021, -0.127440, 0.975556,
		-0.884334, -0.455398, 0.102791,
		29.003906, 23.015617, 19.601860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682577, 22.658100, 19.891829>,  <29.622940, 23.334396, 19.529905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682577, 22.658100, 19.891829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.318176, 22.599632, 19.737579>,  <29.099535, 22.564550, 19.645029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.318176, 22.599632, 19.737579>,  <29.682577, 22.658100, 19.891829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318176, 22.599632, 19.737579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241595, -0.946981, -0.211797,
		-0.334219, -0.286112, 0.898018,
		-0.911004, -0.146170, -0.385623,
		29.044874, 22.555780, 19.621893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307386, 22.234421, 20.329433>,  <29.682577, 22.658100, 19.891829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307386, 22.234421, 20.329433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.205015, 22.214069, 19.943291>,  <29.143593, 22.201859, 19.711605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.205015, 22.214069, 19.943291>,  <29.307386, 22.234421, 20.329433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205015, 22.214069, 19.943291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223474, -0.974678, -0.007877,
		-0.940511, -0.217749, 0.260815,
		-0.255926, -0.050877, -0.965357,
		29.128237, 22.198807, 19.653685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974136, 21.654539, 20.322392>,  <29.307386, 22.234421, 20.329433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974136, 21.654539, 20.322392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.066122, 21.711964, 19.937370>,  <29.121313, 21.746418, 19.706358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.066122, 21.711964, 19.937370>,  <28.974136, 21.654539, 20.322392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066122, 21.711964, 19.937370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118780, -0.985806, -0.118654,
		-0.965923, -0.087046, -0.243754,
		0.229965, 0.143564, -0.962551,
		29.135111, 21.755033, 19.648605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624939, 21.154728, 19.962931>,  <28.974136, 21.654539, 20.322392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624939, 21.154728, 19.962931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.902649, 21.252598, 19.692192>,  <29.069275, 21.311319, 19.529749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.902649, 21.252598, 19.692192>,  <28.624939, 21.154728, 19.962931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902649, 21.252598, 19.692192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174478, -0.969605, -0.171533,
		-0.698242, 0.000997, -0.715861,
		0.694273, 0.244674, -0.676845,
		29.110931, 21.326000, 19.489138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395594, 20.744999, 19.410479>,  <28.624939, 21.154728, 19.962931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395594, 20.744999, 19.410479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.774984, 20.846363, 19.334396>,  <29.002619, 20.907181, 19.288748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.774984, 20.846363, 19.334396>,  <28.395594, 20.744999, 19.410479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774984, 20.846363, 19.334396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196765, -0.941592, -0.273290,
		-0.248350, 0.221784, -0.942939,
		0.948475, 0.253409, -0.190206,
		29.059526, 20.922386, 19.277334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569683, 20.428434, 18.765532>,  <28.395594, 20.744999, 19.410479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569683, 20.428434, 18.765532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.918133, 20.478428, 18.955486>,  <29.127203, 20.508425, 19.069460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.918133, 20.478428, 18.955486>,  <28.569683, 20.428434, 18.765532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918133, 20.478428, 18.955486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256343, -0.940586, -0.222679,
		0.418842, 0.315716, -0.851407,
		0.871126, 0.124985, 0.474889,
		29.179470, 20.515923, 19.097954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097134, 20.022406, 18.393885>,  <28.569683, 20.428434, 18.765532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097134, 20.022406, 18.393885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.254461, 20.094334, 18.754543>,  <29.348858, 20.137491, 18.970938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.254461, 20.094334, 18.754543>,  <29.097134, 20.022406, 18.393885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254461, 20.094334, 18.754543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398200, -0.917252, 0.009228,
		0.828696, 0.355405, -0.432377,
		0.393319, 0.179819, 0.901645,
		29.372458, 20.148279, 19.025038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770103, 19.873316, 18.439983>,  <29.097134, 20.022406, 18.393885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770103, 19.873316, 18.439983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.601915, 19.822502, 18.799332>,  <29.501001, 19.792015, 19.014940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.601915, 19.822502, 18.799332>,  <29.770103, 19.873316, 18.439983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601915, 19.822502, 18.799332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199115, -0.978932, -0.045230,
		0.885187, 0.159861, 0.436907,
		-0.420472, -0.127032, 0.898369,
		29.475773, 19.784393, 19.068842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444437, 19.676458, 17.971621>,  <29.770103, 19.873316, 18.439983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444437, 19.676458, 17.971621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.360010, 19.410198, 18.257938>,  <30.309355, 19.250443, 18.429729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.360010, 19.410198, 18.257938>,  <30.444437, 19.676458, 17.971621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360010, 19.410198, 18.257938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975781, 0.186538, -0.114257,
		-0.057468, -0.722573, -0.688902,
		-0.211065, -0.665651, 0.715793,
		30.296690, 19.210503, 18.472677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916788, 19.807095, 17.524786>,  <30.444437, 19.676458, 17.971621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916788, 19.807095, 17.524786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.125565, 19.741623, 17.189934>,  <30.250830, 19.702339, 16.989023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.125565, 19.741623, 17.189934>,  <29.916788, 19.807095, 17.524786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125565, 19.741623, 17.189934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132416, 0.985066, -0.110047,
		0.842641, -0.053411, 0.535821,
		0.521941, -0.163681, -0.837130,
		30.282146, 19.692518, 16.938795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483025, 20.297438, 17.596552>,  <29.916788, 19.807095, 17.524786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483025, 20.297438, 17.596552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.405489, 20.214863, 17.212925>,  <30.358967, 20.165318, 16.982748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.405489, 20.214863, 17.212925>,  <30.483025, 20.297438, 17.596552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405489, 20.214863, 17.212925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123279, 0.964734, -0.232574,
		0.973257, -0.163315, -0.161551,
		-0.193836, -0.206438, -0.959067,
		30.347338, 20.152931, 16.925205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021809, 20.558422, 17.304018>,  <30.483025, 20.297438, 17.596552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021809, 20.558422, 17.304018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.736710, 20.514576, 17.026897>,  <30.565651, 20.488268, 16.860624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.736710, 20.514576, 17.026897>,  <31.021809, 20.558422, 17.304018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736710, 20.514576, 17.026897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047269, 0.977961, -0.203365,
		0.699826, -0.177696, -0.691858,
		-0.712747, -0.109617, -0.692802,
		30.522886, 20.481691, 16.819057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250549, 20.975426, 16.732607>,  <31.021809, 20.558422, 17.304018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250549, 20.975426, 16.732607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.861692, 20.907207, 16.668293>,  <30.628378, 20.866276, 16.629704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.861692, 20.907207, 16.668293>,  <31.250549, 20.975426, 16.732607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861692, 20.907207, 16.668293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117227, 0.947794, -0.296553,
		0.202968, -0.269444, -0.941384,
		-0.972143, -0.170546, -0.160786,
		30.570049, 20.856043, 16.620058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176842, 21.188923, 16.085493>,  <31.250549, 20.975426, 16.732607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176842, 21.188923, 16.085493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.832903, 21.207939, 16.288826>,  <30.626539, 21.219349, 16.410826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.832903, 21.207939, 16.288826>,  <31.176842, 21.188923, 16.085493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832903, 21.207939, 16.288826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082765, 0.969507, -0.230666,
		-0.503799, -0.240410, -0.829692,
		-0.859847, 0.047540, 0.508334,
		30.574949, 21.222200, 16.441326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670691, 21.595232, 15.697153>,  <31.176842, 21.188923, 16.085493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670691, 21.595232, 15.697153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.536844, 21.602535, 16.074024>,  <30.456535, 21.606918, 16.300146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.536844, 21.602535, 16.074024>,  <30.670691, 21.595232, 15.697153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536844, 21.602535, 16.074024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250109, 0.962234, -0.107476,
		-0.908557, -0.271611, -0.317414,
		-0.334618, 0.018260, 0.942177,
		30.436459, 21.608013, 16.356678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003540, 22.072437, 15.638511>,  <30.670691, 21.595232, 15.697153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003540, 22.072437, 15.638511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.123770, 22.039799, 16.018616>,  <30.195908, 22.020216, 16.246679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.123770, 22.039799, 16.018616>,  <30.003540, 22.072437, 15.638511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123770, 22.039799, 16.018616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103429, 0.987669, 0.117525,
		-0.948134, -0.133610, 0.288428,
		0.300574, -0.081598, 0.950262,
		30.213942, 22.015320, 16.303694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611019, 22.617483, 15.891756>,  <30.003540, 22.072437, 15.638511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611019, 22.617483, 15.891756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.896872, 22.541458, 16.161030>,  <30.068384, 22.495844, 16.322594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.896872, 22.541458, 16.161030>,  <29.611019, 22.617483, 15.891756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896872, 22.541458, 16.161030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019438, 0.967403, 0.252495,
		-0.699230, -0.167356, 0.695032,
		0.714632, -0.190062, 0.673184,
		30.111261, 22.484440, 16.362986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405712, 22.825096, 16.485693>,  <29.611019, 22.617483, 15.891756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405712, 22.825096, 16.485693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.795898, 22.844158, 16.571667>,  <30.030010, 22.855597, 16.623251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.795898, 22.844158, 16.571667>,  <29.405712, 22.825096, 16.485693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795898, 22.844158, 16.571667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124745, 0.924088, 0.361249,
		-0.181403, -0.379197, 0.907360,
		0.975465, 0.047657, 0.214935,
		30.088537, 22.858456, 16.636147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391319, 23.269802, 17.069721>,  <29.405712, 22.825096, 16.485693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391319, 23.269802, 17.069721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.769218, 23.287807, 16.939846>,  <29.995958, 23.298611, 16.861921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.769218, 23.287807, 16.939846>,  <29.391319, 23.269802, 17.069721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769218, 23.287807, 16.939846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042805, 0.965103, 0.258347,
		0.324984, -0.257971, 0.909855,
		0.944750, 0.045012, -0.324686,
		30.052643, 23.301311, 16.842440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726805, 23.510651, 17.601589>,  <29.391319, 23.269802, 17.069721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726805, 23.510651, 17.601589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.002653, 23.573071, 17.318726>,  <30.168161, 23.610523, 17.149008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.002653, 23.573071, 17.318726>,  <29.726805, 23.510651, 17.601589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002653, 23.573071, 17.318726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126005, 0.935753, 0.329377,
		0.713124, -0.316251, 0.625652,
		0.689621, 0.156051, -0.707157,
		30.209539, 23.619886, 17.106579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297623, 23.776115, 17.964827>,  <29.726805, 23.510651, 17.601589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297623, 23.776115, 17.964827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.347378, 23.894558, 17.586018>,  <30.377232, 23.965624, 17.358732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.347378, 23.894558, 17.586018>,  <30.297623, 23.776115, 17.964827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347378, 23.894558, 17.586018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196626, 0.928150, 0.316032,
		0.972556, -0.225520, 0.057228,
		0.124388, 0.296106, -0.947021,
		30.384693, 23.983391, 17.301910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887859, 24.200064, 17.991913>,  <30.297623, 23.776115, 17.964827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887859, 24.200064, 17.991913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687775, 24.313881, 17.664787>,  <30.567724, 24.382172, 17.468512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.687775, 24.313881, 17.664787>,  <30.887859, 24.200064, 17.991913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687775, 24.313881, 17.664787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069453, 0.954607, 0.289656,
		0.863112, 0.088090, -0.497269,
		-0.500213, 0.284543, -0.817816,
		30.537710, 24.399244, 17.419443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923512, 24.884501, 18.056612>,  <30.887859, 24.200064, 17.991913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923512, 24.884501, 18.056612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.636889, 24.842140, 17.780834>,  <30.464914, 24.816725, 17.615368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.636889, 24.842140, 17.780834>,  <30.923512, 24.884501, 18.056612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636889, 24.842140, 17.780834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358273, 0.903942, 0.233515,
		0.598487, 0.414335, -0.685667,
		-0.716557, -0.105901, -0.689443,
		30.421921, 24.810369, 17.574001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424187, 25.084078, 17.554600>,  <30.923512, 24.884501, 18.056612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424187, 25.084078, 17.554600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.719166, 25.166000, 17.812042>,  <31.896152, 25.215153, 17.966507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.719166, 25.166000, 17.812042>,  <31.424187, 25.084078, 17.554600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719166, 25.166000, 17.812042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146613, -0.978736, 0.143458,
		0.659301, -0.011432, -0.751792,
		0.737446, 0.204804, 0.643606,
		31.940399, 25.227442, 18.005123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081581, 24.710388, 17.413507>,  <31.424187, 25.084078, 17.554600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081581, 24.710388, 17.413507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137142, 24.792416, 17.801044>,  <32.170479, 24.841633, 18.033566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137142, 24.792416, 17.801044>,  <32.081581, 24.710388, 17.413507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137142, 24.792416, 17.801044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295632, -0.942301, 0.157066,
		0.945149, 0.264604, -0.191515,
		0.138905, 0.205069, 0.968841,
		32.178814, 24.853937, 18.091696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766869, 24.516245, 17.582066>,  <32.081581, 24.710388, 17.413507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766869, 24.516245, 17.582066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560448, 24.520931, 17.924656>,  <32.436596, 24.523743, 18.130211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560448, 24.520931, 17.924656>,  <32.766869, 24.516245, 17.582066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560448, 24.520931, 17.924656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400831, -0.880367, 0.253551,
		0.756985, 0.474148, 0.449619,
		-0.516050, 0.011714, 0.856478,
		32.405632, 24.524445, 18.181599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153919, 24.159367, 18.050680>,  <32.766869, 24.516245, 17.582066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153919, 24.159367, 18.050680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.789055, 24.133141, 18.212498>,  <32.570137, 24.117405, 18.309587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.789055, 24.133141, 18.212498>,  <33.153919, 24.159367, 18.050680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789055, 24.133141, 18.212498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199720, -0.933086, 0.299102,
		0.357863, 0.353626, 0.864224,
		-0.912166, -0.065565, 0.404544,
		32.515404, 24.113472, 18.333860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292793, 23.930092, 18.808538>,  <33.153919, 24.159367, 18.050680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292793, 23.930092, 18.808538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924675, 23.828606, 18.689423>,  <32.703804, 23.767714, 18.617952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924675, 23.828606, 18.689423>,  <33.292793, 23.930092, 18.808538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924675, 23.828606, 18.689423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211215, -0.962950, 0.167678,
		-0.329298, 0.091417, 0.939790,
		-0.920299, -0.253714, -0.297789,
		32.648586, 23.752491, 18.600086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167511, 23.277449, 19.146408>,  <33.292793, 23.930092, 18.808538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167511, 23.277449, 19.146408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.852791, 23.300823, 18.900635>,  <32.663960, 23.314848, 18.753170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.852791, 23.300823, 18.900635>,  <33.167511, 23.277449, 19.146408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852791, 23.300823, 18.900635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019209, -0.992707, -0.119010,
		-0.616908, -0.105440, 0.779940,
		-0.786801, 0.058437, -0.614435,
		32.616749, 23.318354, 18.716305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630615, 22.862604, 19.473049>,  <33.167511, 23.277449, 19.146408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630615, 22.862604, 19.473049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566769, 22.881950, 19.078651>,  <32.528461, 22.893559, 18.842012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566769, 22.881950, 19.078651>,  <32.630615, 22.862604, 19.473049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566769, 22.881950, 19.078651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174170, -0.981751, -0.076351,
		-0.971693, -0.183917, 0.148278,
		-0.159615, 0.048364, -0.985994,
		32.518883, 22.896460, 18.782854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455151, 22.462740, 20.073038>,  <32.630615, 22.862604, 19.473049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455151, 22.462740, 20.073038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.794075, 22.455883, 20.285366>,  <32.997429, 22.451769, 20.412764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.794075, 22.455883, 20.285366>,  <32.455151, 22.462740, 20.073038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794075, 22.455883, 20.285366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090250, 0.980295, 0.175719,
		-0.523374, -0.196795, 0.829066,
		0.847310, -0.017144, 0.530822,
		33.048267, 22.450741, 20.444613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312679, 22.791983, 20.699183>,  <32.455151, 22.462740, 20.073038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312679, 22.791983, 20.699183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710438, 22.801281, 20.657913>,  <32.949093, 22.806860, 20.633152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710438, 22.801281, 20.657913>,  <32.312679, 22.791983, 20.699183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710438, 22.801281, 20.657913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011151, 0.993153, 0.116286,
		0.105171, -0.114483, 0.987842,
		0.994392, 0.023245, -0.103174,
		33.008755, 22.808254, 20.626961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439610, 23.106312, 21.233063>,  <32.312679, 22.791983, 20.699183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439610, 23.106312, 21.233063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751240, 23.147480, 20.985691>,  <32.938217, 23.172180, 20.837269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751240, 23.147480, 20.985691>,  <32.439610, 23.106312, 21.233063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751240, 23.147480, 20.985691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061165, 0.969249, 0.238357,
		0.623941, -0.223524, 0.748822,
		0.779074, 0.102919, -0.618427,
		32.984962, 23.178356, 20.800163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822617, 23.685007, 21.511992>,  <32.439610, 23.106312, 21.233063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822617, 23.685007, 21.511992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000778, 23.665733, 21.154377>,  <33.107674, 23.654169, 20.939808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.000778, 23.665733, 21.154377>,  <32.822617, 23.685007, 21.511992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000778, 23.665733, 21.154377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086412, 0.996203, -0.010642,
		0.891152, -0.072515, 0.447873,
		0.445400, -0.048185, -0.894034,
		33.134399, 23.651278, 20.886168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510601, 24.018112, 21.552544>,  <32.822617, 23.685007, 21.511992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510601, 24.018112, 21.552544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393730, 24.021900, 21.170017>,  <33.323608, 24.024174, 20.940500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393730, 24.021900, 21.170017>,  <33.510601, 24.018112, 21.552544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393730, 24.021900, 21.170017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487917, 0.861502, -0.140540,
		0.822538, -0.507665, -0.256332,
		-0.292178, 0.009469, -0.956317,
		33.306076, 24.024740, 20.883121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113655, 24.157701, 21.042454>,  <33.510601, 24.018112, 21.552544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113655, 24.157701, 21.042454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753563, 24.267704, 20.907425>,  <33.537506, 24.333706, 20.826408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753563, 24.267704, 20.907425>,  <34.113655, 24.157701, 21.042454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753563, 24.267704, 20.907425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300220, 0.953573, -0.023785,
		0.315356, -0.122757, -0.941000,
		-0.900232, 0.275006, -0.337570,
		33.483494, 24.350206, 20.806154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383343, 24.692621, 20.779322>,  <34.113655, 24.157701, 21.042454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383343, 24.692621, 20.779322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.988087, 24.713924, 20.721703>,  <33.750935, 24.726707, 20.687132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.988087, 24.713924, 20.721703>,  <34.383343, 24.692621, 20.779322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988087, 24.713924, 20.721703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073579, 0.987464, -0.139642,
		0.134804, -0.148585, -0.979669,
		-0.988137, 0.053259, -0.144046,
		33.691647, 24.729902, 20.678488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.218916, 20.890074, 21.652948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.865419, 20.798328, 21.489784>,  <30.653320, 20.743280, 21.391886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.865419, 20.798328, 21.489784>,  <31.218916, 20.890074, 21.652948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865419, 20.798328, 21.489784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381847, 0.857338, 0.345202,
		0.270539, 0.460828, -0.845249,
		-0.883743, -0.229365, -0.407909,
		30.600296, 20.729519, 21.367411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032248, 21.509714, 21.380033>,  <31.218916, 20.890074, 21.652948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032248, 21.509714, 21.380033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.679100, 21.321911, 21.384064>,  <30.467211, 21.209229, 21.386482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.679100, 21.321911, 21.384064>,  <31.032248, 21.509714, 21.380033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679100, 21.321911, 21.384064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459115, 0.867439, 0.191740,
		-0.098764, 0.164655, -0.981394,
		-0.882870, -0.469509, 0.010076,
		30.414240, 21.181059, 21.387087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544201, 21.909540, 20.998602>,  <31.032248, 21.509714, 21.380033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544201, 21.909540, 20.998602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.311304, 21.649788, 21.194275>,  <30.171566, 21.493937, 21.311678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.311304, 21.649788, 21.194275>,  <30.544201, 21.909540, 20.998602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311304, 21.649788, 21.194275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619399, 0.744046, 0.250480,
		-0.526632, -0.157160, -0.835440,
		-0.582240, -0.649382, 0.489183,
		30.136633, 21.454973, 21.341030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907581, 22.195461, 20.915876>,  <30.544201, 21.909540, 20.998602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907581, 22.195461, 20.915876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.901659, 21.946659, 21.229027>,  <29.898106, 21.797379, 21.416916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.901659, 21.946659, 21.229027>,  <29.907581, 22.195461, 20.915876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901659, 21.946659, 21.229027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596932, 0.633622, 0.492133,
		-0.802155, -0.460037, -0.380675,
		-0.014805, -0.622004, 0.782874,
		29.897217, 21.760057, 21.463888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120008, 22.055416, 21.150743>,  <29.907581, 22.195461, 20.915876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120008, 22.055416, 21.150743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.371439, 21.996811, 21.456272>,  <29.522297, 21.961647, 21.639589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.371439, 21.996811, 21.456272>,  <29.120008, 22.055416, 21.150743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371439, 21.996811, 21.456272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445363, 0.737328, 0.507936,
		-0.637607, -0.659455, 0.398215,
		0.628577, -0.146513, 0.763823,
		29.560013, 21.952856, 21.685419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723019, 22.379477, 21.657301>,  <29.120008, 22.055416, 21.150743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723019, 22.379477, 21.657301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.078453, 22.333599, 21.834957>,  <29.291714, 22.306072, 21.941551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.078453, 22.333599, 21.834957>,  <28.723019, 22.379477, 21.657301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078453, 22.333599, 21.834957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282714, 0.625545, 0.727163,
		-0.361232, -0.771711, 0.523425,
		0.888585, -0.114695, 0.444141,
		29.345028, 22.299191, 21.968199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541815, 22.406193, 22.353882>,  <28.723019, 22.379477, 21.657301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541815, 22.406193, 22.353882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.933769, 22.482891, 22.331764>,  <29.168941, 22.528910, 22.318493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.933769, 22.482891, 22.331764>,  <28.541815, 22.406193, 22.353882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933769, 22.482891, 22.331764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078605, 0.625541, 0.776221,
		0.183424, -0.756262, 0.628031,
		0.979886, 0.191744, -0.055294,
		29.227736, 22.540415, 22.315176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787306, 22.349642, 23.066689>,  <28.541815, 22.406193, 22.353882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787306, 22.349642, 23.066689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.012239, 22.597870, 22.848083>,  <29.147200, 22.746807, 22.716921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.012239, 22.597870, 22.848083>,  <28.787306, 22.349642, 23.066689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012239, 22.597870, 22.848083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056681, 0.688282, 0.723225,
		0.824966, -0.375716, 0.422218,
		0.562333, 0.620568, -0.546514,
		29.180939, 22.784040, 22.684130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034700, 22.831800, 23.671782>,  <28.787306, 22.349642, 23.066689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034700, 22.831800, 23.671782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.154133, 23.012741, 23.335632>,  <29.225792, 23.121305, 23.133944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.154133, 23.012741, 23.335632>,  <29.034700, 22.831800, 23.671782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154133, 23.012741, 23.335632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057273, 0.887444, 0.457343,
		0.952664, -0.088424, 0.290883,
		0.298582, 0.452354, -0.840372,
		29.243708, 23.148447, 23.083521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655199, 23.230421, 23.806080>,  <29.034700, 22.831800, 23.671782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655199, 23.230421, 23.806080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.488905, 23.385529, 23.477009>,  <29.389128, 23.478594, 23.279566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.488905, 23.385529, 23.477009>,  <29.655199, 23.230421, 23.806080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488905, 23.385529, 23.477009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044884, 0.894703, 0.444400,
		0.908376, 0.221679, -0.354557,
		-0.415738, 0.387769, -0.822677,
		29.364183, 23.501860, 23.230206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017324, 23.788784, 23.741028>,  <29.655199, 23.230421, 23.806080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017324, 23.788784, 23.741028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.682697, 23.863644, 23.535065>,  <29.481920, 23.908560, 23.411488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.682697, 23.863644, 23.535065>,  <30.017324, 23.788784, 23.741028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682697, 23.863644, 23.535065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100131, 0.871787, 0.479543,
		0.538635, 0.452728, -0.710570,
		-0.836568, 0.187149, -0.514907,
		29.431726, 23.919788, 23.380592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093246, 24.428551, 23.348631>,  <30.017324, 23.788784, 23.741028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093246, 24.428551, 23.348631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.700453, 24.376183, 23.403130>,  <29.464777, 24.344763, 23.435829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.700453, 24.376183, 23.403130>,  <30.093246, 24.428551, 23.348631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700453, 24.376183, 23.403130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090936, 0.959515, 0.266574,
		-0.165632, 0.249383, -0.954136,
		-0.981986, -0.130919, 0.136248,
		29.405857, 24.336906, 23.444004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612387, 24.598183, 22.954132>,  <30.093246, 24.428551, 23.348631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612387, 24.598183, 22.954132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.917786, 24.626396, 23.210911>,  <31.101025, 24.643324, 23.364979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.917786, 24.626396, 23.210911>,  <30.612387, 24.598183, 22.954132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917786, 24.626396, 23.210911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098379, -0.995119, -0.007669,
		0.638273, 0.069009, -0.766711,
		0.763498, 0.070533, 0.641947,
		31.146835, 24.647556, 23.403496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151209, 24.340523, 22.575266>,  <30.612387, 24.598183, 22.954132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151209, 24.340523, 22.575266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.282202, 24.288754, 22.949646>,  <31.360798, 24.257692, 23.174274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.282202, 24.288754, 22.949646>,  <31.151209, 24.340523, 22.575266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282202, 24.288754, 22.949646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397787, -0.879625, -0.260817,
		0.857042, 0.457722, -0.236580,
		0.327483, -0.129422, 0.935951,
		31.380447, 24.249928, 23.230431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917233, 24.099489, 22.540403>,  <31.151209, 24.340523, 22.575266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917233, 24.099489, 22.540403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.753649, 23.986160, 22.887386>,  <31.655499, 23.918163, 23.095575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.753649, 23.986160, 22.887386>,  <31.917233, 24.099489, 22.540403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753649, 23.986160, 22.887386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359754, -0.923652, -0.132074,
		0.838648, 0.258058, 0.479662,
		-0.408959, -0.283324, 0.867456,
		31.630960, 23.901163, 23.147623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420044, 23.733877, 22.799749>,  <31.917233, 24.099489, 22.540403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420044, 23.733877, 22.799749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.118088, 23.617271, 23.034752>,  <31.936914, 23.547308, 23.175755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.118088, 23.617271, 23.034752>,  <32.420044, 23.733877, 22.799749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118088, 23.617271, 23.034752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303299, -0.949414, -0.081379,
		0.581511, 0.116758, 0.805117,
		-0.754887, -0.291514, 0.587507,
		31.891621, 23.529818, 23.211004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703911, 23.341520, 23.450027>,  <32.420044, 23.733877, 22.799749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703911, 23.341520, 23.450027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.328007, 23.217541, 23.392357>,  <32.102467, 23.143152, 23.357754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.328007, 23.217541, 23.392357>,  <32.703911, 23.341520, 23.450027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328007, 23.217541, 23.392357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306837, -0.950749, 0.043910,
		-0.150688, -0.002974, 0.988577,
		-0.939758, -0.309949, -0.144179,
		32.046078, 23.124556, 23.349104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787712, 22.823967, 23.789127>,  <32.703911, 23.341520, 23.450027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787712, 22.823967, 23.789127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436531, 22.728458, 23.623146>,  <32.225822, 22.671154, 23.523558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436531, 22.728458, 23.623146>,  <32.787712, 22.823967, 23.789127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436531, 22.728458, 23.623146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283958, -0.957542, -0.049810,
		-0.385439, -0.161560, 0.908480,
		-0.877955, -0.238771, -0.414951,
		32.173145, 22.656828, 23.498661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635468, 22.241167, 24.114695>,  <32.787712, 22.823967, 23.789127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635468, 22.241167, 24.114695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400963, 22.215176, 23.791691>,  <32.260262, 22.199581, 23.597889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400963, 22.215176, 23.791691>,  <32.635468, 22.241167, 24.114695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400963, 22.215176, 23.791691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225527, -0.970465, -0.085642,
		-0.778097, -0.232324, 0.583601,
		-0.586261, -0.064980, -0.807512,
		32.225086, 22.195681, 23.549437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250011, 21.598619, 24.267973>,  <32.635468, 22.241167, 24.114695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250011, 21.598619, 24.267973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.215729, 21.661274, 23.874401>,  <32.195160, 21.698866, 23.638258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.215729, 21.661274, 23.874401>,  <32.250011, 21.598619, 24.267973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215729, 21.661274, 23.874401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069550, -0.984215, -0.162738,
		-0.993890, -0.082381, 0.073463,
		-0.085710, 0.156634, -0.983931,
		32.190014, 21.708263, 23.579222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666155, 21.176132, 24.015335>,  <32.250011, 21.598619, 24.267973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666155, 21.176132, 24.015335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.912554, 21.246208, 23.708126>,  <32.060394, 21.288254, 23.523802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.912554, 21.246208, 23.708126>,  <31.666155, 21.176132, 24.015335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912554, 21.246208, 23.708126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017359, -0.977739, -0.209105,
		-0.787558, 0.115476, -0.605325,
		0.615996, 0.175190, -0.768021,
		32.097351, 21.298765, 23.477720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461033, 20.793674, 23.244047>,  <31.666155, 21.176132, 24.015335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461033, 20.793674, 23.244047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.853056, 20.871426, 23.227551>,  <32.088268, 20.918077, 23.217653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.853056, 20.871426, 23.227551>,  <31.461033, 20.793674, 23.244047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853056, 20.871426, 23.227551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160847, -0.897921, -0.409715,
		-0.116672, 0.394912, -0.911281,
		0.980059, 0.194379, -0.041241,
		32.147072, 20.929739, 23.215178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718016, 20.609251, 22.526611>,  <31.461033, 20.793674, 23.244047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718016, 20.609251, 22.526611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059875, 20.645103, 22.731174>,  <32.264992, 20.666615, 22.853912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059875, 20.645103, 22.731174>,  <31.718016, 20.609251, 22.526611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059875, 20.645103, 22.731174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390504, -0.760094, -0.519388,
		0.342165, 0.643602, -0.684616,
		0.854652, 0.089629, 0.511407,
		32.316273, 20.671991, 22.884596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205856, 20.622267, 22.039843>,  <31.718016, 20.609251, 22.526611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205856, 20.622267, 22.039843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.423058, 20.534828, 22.364155>,  <32.553379, 20.482365, 22.558743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.423058, 20.534828, 22.364155>,  <32.205856, 20.622267, 22.039843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423058, 20.534828, 22.364155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421750, -0.763919, -0.488421,
		0.726135, 0.607161, -0.322620,
		0.543005, -0.218594, 0.810778,
		32.585960, 20.469250, 22.607388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644394, 20.096153, 21.740894>,  <32.205856, 20.622267, 22.039843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644394, 20.096153, 21.740894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.688126, 20.054874, 22.136349>,  <32.714367, 20.030107, 22.373621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.688126, 20.054874, 22.136349>,  <32.644394, 20.096153, 21.740894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688126, 20.054874, 22.136349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546206, -0.824741, -0.146494,
		0.830485, 0.556014, -0.033804,
		0.109332, -0.103197, 0.988634,
		32.720924, 20.023914, 22.432940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255764, 19.855200, 21.811911>,  <32.644394, 20.096153, 21.740894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255764, 19.855200, 21.811911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.087231, 19.749496, 22.158932>,  <32.986111, 19.686073, 22.367144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.087231, 19.749496, 22.158932>,  <33.255764, 19.855200, 21.811911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087231, 19.749496, 22.158932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560419, -0.827968, 0.019968,
		0.713028, 0.494606, 0.496947,
		-0.421333, -0.264261, 0.867551,
		32.960831, 19.670218, 22.419197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967388, 19.715122, 21.508703>,  <33.255764, 19.855200, 21.811911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967388, 19.715122, 21.508703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039646, 19.738621, 21.115986>,  <34.083000, 19.752720, 20.880356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039646, 19.738621, 21.115986>,  <33.967388, 19.715122, 21.508703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039646, 19.738621, 21.115986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150205, 0.988153, 0.031492,
		0.972012, 0.141782, 0.187327,
		0.180642, 0.058748, -0.981793,
		34.093838, 19.756245, 20.821447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362179, 20.365593, 21.341356>,  <33.967388, 19.715122, 21.508703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362179, 20.365593, 21.341356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.189293, 20.262112, 20.995811>,  <34.085560, 20.200022, 20.788485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.189293, 20.262112, 20.995811>,  <34.362179, 20.365593, 21.341356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189293, 20.262112, 20.995811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223918, 0.958751, -0.175089,
		0.873527, 0.117759, -0.472317,
		-0.432216, -0.258705, -0.863864,
		34.059628, 20.184500, 20.736652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586212, 20.868498, 20.882040>,  <34.362179, 20.365593, 21.341356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586212, 20.868498, 20.882040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.290920, 20.745098, 20.642090>,  <34.113747, 20.671059, 20.498119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.290920, 20.745098, 20.642090>,  <34.586212, 20.868498, 20.882040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290920, 20.745098, 20.642090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383187, 0.923664, -0.003450,
		0.555150, 0.227318, -0.800084,
		-0.738225, -0.308497, -0.599877,
		34.069454, 20.652550, 20.462126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631618, 21.207924, 20.324705>,  <34.586212, 20.868498, 20.882040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631618, 21.207924, 20.324705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249310, 21.093075, 20.350201>,  <34.019924, 21.024166, 20.365498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249310, 21.093075, 20.350201>,  <34.631618, 21.207924, 20.324705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249310, 21.093075, 20.350201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291005, 0.954617, -0.063422,
		-0.042634, -0.079165, -0.995949,
		-0.955771, -0.287123, 0.063737,
		33.962578, 21.006939, 20.369322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313957, 21.558359, 19.805817>,  <34.631618, 21.207924, 20.324705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313957, 21.558359, 19.805817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.001129, 21.450302, 20.030457>,  <33.813435, 21.385468, 20.165241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.001129, 21.450302, 20.030457>,  <34.313957, 21.558359, 19.805817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001129, 21.450302, 20.030457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318916, 0.947710, 0.011760,
		-0.535412, -0.169906, -0.827325,
		-0.782066, -0.270143, 0.561601,
		33.766510, 21.369259, 20.198936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651337, 21.847639, 19.540113>,  <34.313957, 21.558359, 19.805817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651337, 21.847639, 19.540113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.526974, 21.763939, 19.910961>,  <33.452354, 21.713718, 20.133471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.526974, 21.763939, 19.910961>,  <33.651337, 21.847639, 19.540113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526974, 21.763939, 19.910961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438075, 0.897218, 0.055595,
		-0.843462, -0.388863, -0.370619,
		-0.310907, -0.209251, 0.927120,
		33.433701, 21.701164, 20.189096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917015, 22.157324, 19.632284>,  <33.651337, 21.847639, 19.540113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917015, 22.157324, 19.632284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.084591, 22.125793, 19.994118>,  <33.185139, 22.106874, 20.211218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.084591, 22.125793, 19.994118>,  <32.917015, 22.157324, 19.632284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084591, 22.125793, 19.994118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339657, 0.910296, 0.236630,
		-0.842092, -0.406383, 0.354589,
		0.418943, -0.078825, 0.904585,
		33.210274, 22.102146, 20.265493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143444, 22.161169, 19.246161>,  <32.917015, 22.157324, 19.632284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143444, 22.161169, 19.246161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.335217, 22.308128, 18.927372>,  <32.450279, 22.396305, 18.736099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.335217, 22.308128, 18.927372>,  <32.143444, 22.161169, 19.246161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335217, 22.308128, 18.927372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110257, -0.926168, -0.360633,
		-0.870624, 0.085028, -0.484545,
		0.479435, 0.367400, -0.796969,
		32.479046, 22.418348, 18.688282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792351, 21.825813, 18.727451>,  <32.143444, 22.161169, 19.246161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792351, 21.825813, 18.727451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.128693, 21.957806, 18.555836>,  <32.330498, 22.037001, 18.452866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.128693, 21.957806, 18.555836>,  <31.792351, 21.825813, 18.727451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128693, 21.957806, 18.555836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083258, -0.862087, -0.499874,
		-0.534818, 0.384600, -0.752364,
		0.840855, 0.329982, -0.429039,
		32.380951, 22.056801, 18.427124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814323, 21.594000, 18.025436>,  <31.792351, 21.825813, 18.727451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814323, 21.594000, 18.025436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.201351, 21.671387, 18.090408>,  <32.433567, 21.717819, 18.129391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.201351, 21.671387, 18.090408>,  <31.814323, 21.594000, 18.025436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201351, 21.671387, 18.090408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251683, -0.793395, -0.554238,
		0.021643, 0.577143, -0.816356,
		0.967568, 0.193468, 0.162429,
		32.491623, 21.729427, 18.139137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202896, 21.468210, 17.311092>,  <31.814323, 21.594000, 18.025436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202896, 21.468210, 17.311092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.447025, 21.403839, 17.621346>,  <32.593502, 21.365217, 17.807497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.447025, 21.403839, 17.621346>,  <32.202896, 21.468210, 17.311092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447025, 21.403839, 17.621346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400559, -0.782046, -0.477447,
		0.683414, 0.602085, -0.412842,
		0.610325, -0.160926, 0.775632,
		32.630123, 21.355560, 17.854034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705219, 21.121038, 17.073397>,  <32.202896, 21.468210, 17.311092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705219, 21.121038, 17.073397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.821079, 21.049992, 17.449600>,  <32.890594, 21.007364, 17.675322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.821079, 21.049992, 17.449600>,  <32.705219, 21.121038, 17.073397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821079, 21.049992, 17.449600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500294, -0.809612, -0.306975,
		0.815970, 0.559446, -0.145645,
		0.289652, -0.177617, 0.940507,
		32.907974, 20.996706, 17.731752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447041, 20.979069, 17.069181>,  <32.705219, 21.121038, 17.073397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447041, 20.979069, 17.069181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.267807, 20.805103, 17.381611>,  <33.160267, 20.700724, 17.569069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.267807, 20.805103, 17.381611>,  <33.447041, 20.979069, 17.069181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267807, 20.805103, 17.381611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459301, -0.861558, -0.216242,
		0.766985, 0.261853, 0.585804,
		-0.448081, -0.434915, 0.781071,
		33.133381, 20.674629, 17.615932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994389, 20.558821, 17.375523>,  <33.447041, 20.979069, 17.069181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994389, 20.558821, 17.375523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.656425, 20.416645, 17.535416>,  <33.453648, 20.331339, 17.631351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.656425, 20.416645, 17.535416>,  <33.994389, 20.558821, 17.375523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656425, 20.416645, 17.535416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299166, -0.933493, -0.197712,
		0.443423, -0.047462, 0.895055,
		-0.844912, -0.355440, 0.399734,
		33.402950, 20.310013, 17.655336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173698, 20.063793, 17.728813>,  <33.994389, 20.558821, 17.375523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173698, 20.063793, 17.728813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.781494, 19.985550, 17.721382>,  <33.546173, 19.938604, 17.716923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.781494, 19.985550, 17.721382>,  <34.173698, 20.063793, 17.728813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781494, 19.985550, 17.721382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196395, -0.972748, -0.123249,
		0.006036, -0.124496, 0.992202,
		-0.980506, -0.195608, -0.018579,
		33.487343, 19.926868, 17.715809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959225, 19.483095, 18.174364>,  <34.173698, 20.063793, 17.728813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959225, 19.483095, 18.174364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.694897, 19.477283, 17.874203>,  <33.536301, 19.473797, 17.694105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.694897, 19.477283, 17.874203>,  <33.959225, 19.483095, 18.174364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694897, 19.477283, 17.874203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327505, -0.905188, -0.270879,
		-0.675319, -0.424763, 0.602926,
		-0.660821, -0.014531, -0.750403,
		33.496651, 19.472923, 17.649082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.406820, 34.521168, 21.140688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099062, 34.319866, 20.983326>,  <28.914406, 34.199085, 20.888908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099062, 34.319866, 20.983326>,  <29.406820, 34.521168, 21.140688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099062, 34.319866, 20.983326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636673, -0.654049, -0.408494,
		-0.051733, -0.564765, 0.823629,
		-0.769397, -0.503250, -0.393406,
		28.868242, 34.168892, 20.865305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443077, 33.811386, 21.306755>,  <29.406820, 34.521168, 21.140688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443077, 33.811386, 21.306755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240137, 33.833897, 20.962795>,  <29.118374, 33.847401, 20.756418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240137, 33.833897, 20.962795>,  <29.443077, 33.811386, 21.306755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240137, 33.833897, 20.962795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637876, -0.646409, -0.418652,
		-0.579407, -0.760913, 0.292060,
		-0.507348, 0.056272, -0.859902,
		29.087933, 33.850777, 20.704824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295519, 33.078938, 21.070496>,  <29.443077, 33.811386, 21.306755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295519, 33.078938, 21.070496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238106, 33.295364, 20.739040>,  <29.203657, 33.425220, 20.540167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238106, 33.295364, 20.739040>,  <29.295519, 33.078938, 21.070496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238106, 33.295364, 20.739040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490271, -0.688465, -0.534463,
		-0.859670, -0.482970, -0.166453,
		-0.143533, 0.541069, -0.828639,
		29.195045, 33.457684, 20.490448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093779, 32.638687, 20.655264>,  <29.295519, 33.078938, 21.070496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093779, 32.638687, 20.655264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205305, 32.924259, 20.398338>,  <29.272221, 33.095604, 20.244183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205305, 32.924259, 20.398338>,  <29.093779, 32.638687, 20.655264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205305, 32.924259, 20.398338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475888, -0.683655, -0.553306,
		-0.834141, -0.151397, -0.530365,
		0.278818, 0.713929, -0.642312,
		29.288950, 33.138439, 20.205645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870262, 32.399754, 19.963606>,  <29.093779, 32.638687, 20.655264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870262, 32.399754, 19.963606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172421, 32.660099, 19.933258>,  <29.353716, 32.816307, 19.915049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172421, 32.660099, 19.933258>,  <28.870262, 32.399754, 19.963606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172421, 32.660099, 19.933258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480291, -0.628718, -0.611583,
		-0.445757, 0.425548, -0.787534,
		0.755395, 0.650863, -0.075869,
		29.399038, 32.855358, 19.910498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021431, 32.325680, 19.314486>,  <28.870262, 32.399754, 19.963606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021431, 32.325680, 19.314486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351786, 32.507259, 19.448257>,  <29.549999, 32.616207, 19.528521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351786, 32.507259, 19.448257>,  <29.021431, 32.325680, 19.314486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351786, 32.507259, 19.448257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562461, -0.621923, -0.544838,
		-0.039339, 0.638078, -0.768966,
		0.825887, 0.453947, 0.334428,
		29.599552, 32.643444, 19.548586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300827, 32.480534, 18.784689>,  <29.021431, 32.325680, 19.314486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300827, 32.480534, 18.784689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588266, 32.469536, 19.062641>,  <29.760731, 32.462936, 19.229412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588266, 32.469536, 19.062641>,  <29.300827, 32.480534, 18.784689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588266, 32.469536, 19.062641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554129, -0.581100, -0.596041,
		0.420185, 0.813368, -0.402341,
		0.718600, -0.027498, 0.694880,
		29.803846, 32.461285, 19.271105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989428, 32.485844, 18.410503>,  <29.300827, 32.480534, 18.784689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989428, 32.485844, 18.410503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117458, 32.389004, 18.776878>,  <30.194277, 32.330902, 18.996702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117458, 32.389004, 18.776878>,  <29.989428, 32.485844, 18.410503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117458, 32.389004, 18.776878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503981, -0.775139, -0.381001,
		0.802217, 0.583565, -0.126094,
		0.320079, -0.242097, 0.915936,
		30.213482, 32.316376, 19.051659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740526, 32.467018, 18.397636>,  <29.989428, 32.485844, 18.410503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740526, 32.467018, 18.397636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610022, 32.240326, 18.700256>,  <30.531719, 32.104309, 18.881828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610022, 32.240326, 18.700256>,  <30.740526, 32.467018, 18.397636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610022, 32.240326, 18.700256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536036, -0.770144, -0.345750,
		0.778600, 0.292734, 0.555057,
		-0.326261, -0.566732, 0.756550,
		30.512144, 32.070305, 18.927221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271616, 32.115677, 18.579018>,  <30.740526, 32.467018, 18.397636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271616, 32.115677, 18.579018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018770, 31.884964, 18.785995>,  <30.867062, 31.746536, 18.910183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018770, 31.884964, 18.785995>,  <31.271616, 32.115677, 18.579018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018770, 31.884964, 18.785995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526111, -0.809733, -0.259884,
		0.568890, 0.107958, 0.815297,
		-0.632116, -0.576783, 0.517447,
		30.829136, 31.711929, 18.941229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783436, 31.658985, 18.992863>,  <31.271616, 32.115677, 18.579018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783436, 31.658985, 18.992863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418741, 31.500950, 18.947891>,  <31.199924, 31.406128, 18.920908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418741, 31.500950, 18.947891>,  <31.783436, 31.658985, 18.992863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418741, 31.500950, 18.947891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409665, -0.854460, -0.319487,
		0.030162, -0.337346, 0.940898,
		-0.911737, -0.395089, -0.112427,
		31.145220, 31.382423, 18.914164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832911, 31.024199, 19.328827>,  <31.783436, 31.658985, 18.992863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832911, 31.024199, 19.328827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548769, 31.003361, 19.048061>,  <31.378284, 30.990858, 18.879602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548769, 31.003361, 19.048061>,  <31.832911, 31.024199, 19.328827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548769, 31.003361, 19.048061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505715, -0.731394, -0.457511,
		-0.489542, -0.679963, 0.545893,
		-0.710353, -0.052095, -0.701915,
		31.335663, 30.987732, 18.837486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510826, 30.983538, 20.028046>,  <31.832911, 31.024199, 19.328827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510826, 30.983538, 20.028046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791555, 30.956566, 20.311707>,  <31.959993, 30.940384, 20.481903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791555, 30.956566, 20.311707>,  <31.510826, 30.983538, 20.028046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791555, 30.956566, 20.311707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008229, 0.996211, 0.086578,
		-0.712301, -0.054927, 0.699721,
		0.701826, -0.067428, 0.709151,
		32.002102, 30.936338, 20.524452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245554, 31.233204, 20.720957>,  <31.510826, 30.983538, 20.028046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245554, 31.233204, 20.720957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640125, 31.298462, 20.728394>,  <31.876867, 31.337618, 20.732855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640125, 31.298462, 20.728394>,  <31.245554, 31.233204, 20.720957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640125, 31.298462, 20.728394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164163, 0.982340, 0.089770,
		-0.003618, -0.091604, 0.995789,
		0.986427, 0.163147, 0.018592,
		31.936054, 31.347406, 20.733971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207550, 31.894541, 20.917763>,  <31.245554, 31.233204, 20.720957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207550, 31.894541, 20.917763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594400, 31.844746, 20.829063>,  <31.826511, 31.814869, 20.775845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594400, 31.844746, 20.829063>,  <31.207550, 31.894541, 20.917763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594400, 31.844746, 20.829063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130296, 0.991406, 0.011711,
		0.218384, -0.040219, 0.975034,
		0.967125, -0.124486, -0.221748,
		31.884539, 31.807400, 20.762539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654705, 32.375690, 21.338457>,  <31.207550, 31.894541, 20.917763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654705, 32.375690, 21.338457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915167, 32.298630, 21.044823>,  <32.071442, 32.252392, 20.868641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915167, 32.298630, 21.044823>,  <31.654705, 32.375690, 21.338457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915167, 32.298630, 21.044823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266306, 0.963744, -0.016705,
		0.710691, -0.184614, 0.678849,
		0.651153, -0.192653, -0.734088,
		32.110512, 32.240833, 20.824596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206074, 32.704163, 21.507736>,  <31.654705, 32.375690, 21.338457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206074, 32.704163, 21.507736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239498, 32.657642, 21.111858>,  <32.259552, 32.629730, 20.874332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239498, 32.657642, 21.111858>,  <32.206074, 32.704163, 21.507736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239498, 32.657642, 21.111858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223635, 0.970022, -0.095105,
		0.971085, -0.213383, 0.107061,
		0.083558, -0.116298, -0.989693,
		32.264565, 32.622753, 20.814951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747997, 32.924259, 21.460722>,  <32.206074, 32.704163, 21.507736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747997, 32.924259, 21.460722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604740, 32.931374, 21.087322>,  <32.518787, 32.935642, 20.863283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604740, 32.931374, 21.087322>,  <32.747997, 32.924259, 21.460722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604740, 32.931374, 21.087322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361401, 0.924522, -0.121034,
		0.860886, -0.380714, -0.337539,
		-0.358141, 0.017790, -0.933498,
		32.497299, 32.936710, 20.807272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351170, 32.924400, 21.085350>,  <32.747997, 32.924259, 21.460722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351170, 32.924400, 21.085350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058655, 33.075630, 20.858273>,  <32.883148, 33.166370, 20.722025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058655, 33.075630, 20.858273>,  <33.351170, 32.924400, 21.085350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058655, 33.075630, 20.858273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422821, 0.904378, 0.057643,
		0.535205, -0.197881, -0.821217,
		-0.731285, 0.378079, -0.567696,
		32.839268, 33.189053, 20.687963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631523, 33.169910, 20.499496>,  <33.351170, 32.924400, 21.085350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631523, 33.169910, 20.499496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273762, 33.346046, 20.530861>,  <33.059105, 33.451729, 20.549679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273762, 33.346046, 20.530861>,  <33.631523, 33.169910, 20.499496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273762, 33.346046, 20.530861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443839, 0.895460, 0.034031,
		-0.055228, 0.065238, -0.996340,
		-0.894403, 0.440336, 0.078410,
		33.005440, 33.478146, 20.554384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683941, 33.669003, 19.975853>,  <33.631523, 33.169910, 20.499496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683941, 33.669003, 19.975853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404232, 33.774960, 20.241440>,  <33.236404, 33.838531, 20.400791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404232, 33.774960, 20.241440>,  <33.683941, 33.669003, 19.975853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404232, 33.774960, 20.241440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282089, 0.955688, -0.084180,
		-0.656842, 0.128432, -0.743009,
		-0.699274, 0.264888, 0.663966,
		33.194450, 33.854427, 20.440630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348942, 34.281471, 19.794964>,  <33.683941, 33.669003, 19.975853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348942, 34.281471, 19.794964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247196, 34.285336, 20.181789>,  <33.186150, 34.287655, 20.413885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247196, 34.285336, 20.181789>,  <33.348942, 34.281471, 19.794964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247196, 34.285336, 20.181789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195916, 0.979732, 0.041747,
		-0.947058, 0.200082, -0.251096,
		-0.254359, 0.009657, 0.967062,
		33.170887, 34.288231, 20.471909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888817, 34.726017, 19.937414>,  <33.348942, 34.281471, 19.794964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888817, 34.726017, 19.937414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028717, 34.698318, 20.311127>,  <33.112656, 34.681698, 20.535355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028717, 34.698318, 20.311127>,  <32.888817, 34.726017, 19.937414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028717, 34.698318, 20.311127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071084, 0.996351, 0.047241,
		-0.934143, 0.049890, 0.353394,
		0.349747, -0.069251, 0.934281,
		33.133640, 34.677544, 20.591412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412804, 35.125889, 20.353472>,  <32.888817, 34.726017, 19.937414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412804, 35.125889, 20.353472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751587, 35.083427, 20.561852>,  <32.954857, 35.057953, 20.686880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751587, 35.083427, 20.561852>,  <32.412804, 35.125889, 20.353472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751587, 35.083427, 20.561852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022136, 0.986056, 0.164936,
		-0.531196, -0.128163, 0.837499,
		0.846960, -0.106152, 0.520952,
		33.005676, 35.051582, 20.718138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337498, 35.699730, 20.654118>,  <32.412804, 35.125889, 20.353472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337498, 35.699730, 20.654118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716496, 35.601116, 20.735588>,  <32.943893, 35.541950, 20.784472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716496, 35.601116, 20.735588>,  <32.337498, 35.699730, 20.654118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716496, 35.601116, 20.735588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224582, 0.966404, 0.125005,
		-0.227653, -0.072699, 0.971025,
		0.947490, -0.246532, 0.203678,
		33.000744, 35.527157, 20.796692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501751, 36.073227, 21.246487>,  <32.337498, 35.699730, 20.654118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501751, 36.073227, 21.246487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832062, 35.970299, 21.045738>,  <33.030251, 35.908543, 20.925289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832062, 35.970299, 21.045738>,  <32.501751, 36.073227, 21.246487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832062, 35.970299, 21.045738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342351, 0.935857, 0.083466,
		0.448201, -0.240740, 0.860907,
		0.825779, -0.257323, -0.501870,
		33.079796, 35.893101, 20.895178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226273, 35.886311, 21.902325>,  <32.501751, 36.073227, 21.246487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226273, 35.886311, 21.902325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166580, 35.500370, 21.815796>,  <32.130764, 35.268806, 21.763878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166580, 35.500370, 21.815796>,  <32.226273, 35.886311, 21.902325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166580, 35.500370, 21.815796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196102, -0.185547, 0.962869,
		-0.969161, 0.186115, -0.161519,
		-0.149235, -0.964849, -0.216323,
		32.121811, 35.210915, 21.750898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728853, 35.370415, 22.125463>,  <32.226273, 35.886311, 21.902325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728853, 35.370415, 22.125463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400494, 35.394981, 22.352570>,  <31.203478, 35.409721, 22.488832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400494, 35.394981, 22.352570>,  <31.728853, 35.370415, 22.125463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400494, 35.394981, 22.352570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417742, -0.613307, 0.670333,
		0.389382, 0.787453, 0.477807,
		-0.820898, 0.061415, 0.567763,
		31.154224, 35.413406, 22.522898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885916, 35.472187, 22.754269>,  <31.728853, 35.370415, 22.125463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885916, 35.472187, 22.754269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530302, 35.289299, 22.763798>,  <31.316935, 35.179565, 22.769514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530302, 35.289299, 22.763798>,  <31.885916, 35.472187, 22.754269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530302, 35.289299, 22.763798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359094, -0.664068, 0.655793,
		-0.284023, 0.591577, 0.754565,
		-0.889035, -0.457220, 0.023821,
		31.263592, 35.152134, 22.770945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762333, 35.254017, 23.450575>,  <31.885916, 35.472187, 22.754269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762333, 35.254017, 23.450575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489912, 35.017174, 23.278259>,  <31.326460, 34.875069, 23.174870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489912, 35.017174, 23.278259>,  <31.762333, 35.254017, 23.450575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489912, 35.017174, 23.278259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214996, -0.724086, 0.655344,
		-0.699962, 0.353704, 0.620440,
		-0.681050, -0.592108, -0.430789,
		31.285597, 34.839542, 23.149023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207190, 34.943195, 24.027676>,  <31.762333, 35.254017, 23.450575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207190, 34.943195, 24.027676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185549, 34.720676, 23.695988>,  <31.172564, 34.587166, 23.496975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185549, 34.720676, 23.695988>,  <31.207190, 34.943195, 24.027676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185549, 34.720676, 23.695988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212458, -0.817833, 0.534800,
		-0.975671, -0.147240, 0.162437,
		-0.054102, -0.556300, -0.829218,
		31.169319, 34.553787, 23.447222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609880, 34.457657, 24.101318>,  <31.207190, 34.943195, 24.027676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609880, 34.457657, 24.101318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863640, 34.303814, 23.833103>,  <31.015896, 34.211510, 23.672174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863640, 34.303814, 23.833103>,  <30.609880, 34.457657, 24.101318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863640, 34.303814, 23.833103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012930, -0.862038, 0.506679,
		-0.772898, -0.330107, -0.541903,
		0.634399, -0.384604, -0.670535,
		31.053959, 34.188431, 23.631943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249947, 33.856522, 23.615555>,  <30.609880, 34.457657, 24.101318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249947, 33.856522, 23.615555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647440, 33.813774, 23.602425>,  <30.885935, 33.788124, 23.594547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647440, 33.813774, 23.602425>,  <30.249947, 33.856522, 23.615555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647440, 33.813774, 23.602425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093213, -0.954129, 0.284517,
		-0.061724, -0.279674, -0.958109,
		0.993731, -0.106870, -0.032824,
		30.945559, 33.781712, 23.592577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249826, 33.165726, 23.370409>,  <30.249947, 33.856522, 23.615555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249826, 33.165726, 23.370409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635157, 33.233582, 23.453575>,  <30.866354, 33.274296, 23.503475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635157, 33.233582, 23.453575>,  <30.249826, 33.165726, 23.370409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635157, 33.233582, 23.453575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152592, -0.983658, 0.095565,
		0.220731, -0.060333, -0.973467,
		0.963324, 0.169637, 0.207917,
		30.924154, 33.284473, 23.515951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616497, 32.784264, 22.862633>,  <30.249826, 33.165726, 23.370409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616497, 32.784264, 22.862633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850943, 32.838154, 23.182213>,  <30.991610, 32.870487, 23.373960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850943, 32.838154, 23.182213>,  <30.616497, 32.784264, 22.862633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850943, 32.838154, 23.182213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253069, -0.967185, -0.022556,
		0.769694, 0.215410, -0.600974,
		0.586112, 0.134727, 0.798950,
		31.026775, 32.878571, 23.421898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236603, 32.401463, 22.686693>,  <30.616497, 32.784264, 22.862633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236603, 32.401463, 22.686693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283369, 32.428802, 23.083008>,  <31.311428, 32.445206, 23.320797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283369, 32.428802, 23.083008>,  <31.236603, 32.401463, 22.686693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283369, 32.428802, 23.083008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170680, -0.984169, 0.047748,
		0.978366, 0.163525, -0.126729,
		0.116915, 0.068346, 0.990788,
		31.318443, 32.449306, 23.380243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800831, 32.063732, 22.785706>,  <31.236603, 32.401463, 22.686693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800831, 32.063732, 22.785706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615345, 32.059311, 23.140072>,  <31.504053, 32.056660, 23.352692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615345, 32.059311, 23.140072>,  <31.800831, 32.063732, 22.785706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615345, 32.059311, 23.140072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350509, -0.920633, 0.171982,
		0.813703, 0.390272, 0.430784,
		-0.463714, -0.011051, 0.885916,
		31.476231, 32.055996, 23.405848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292706, 31.744421, 23.253922>,  <31.800831, 32.063732, 22.785706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292706, 31.744421, 23.253922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926165, 31.703430, 23.408741>,  <31.706242, 31.678837, 23.501633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926165, 31.703430, 23.408741>,  <32.292706, 31.744421, 23.253922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926165, 31.703430, 23.408741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184381, -0.966093, 0.180743,
		0.355402, 0.236988, 0.904172,
		-0.916348, -0.102475, 0.387047,
		31.651260, 31.672688, 23.524855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426125, 31.260479, 23.705685>,  <32.292706, 31.744421, 23.253922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426125, 31.260479, 23.705685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033089, 31.239166, 23.634491>,  <31.797268, 31.226377, 23.591776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033089, 31.239166, 23.634491>,  <32.426125, 31.260479, 23.705685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033089, 31.239166, 23.634491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023351, -0.985814, 0.166212,
		-0.184313, 0.159162, 0.969895,
		-0.982590, -0.053283, -0.177982,
		31.738312, 31.223181, 23.581097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091785, 30.845135, 24.231220>,  <32.426125, 31.260479, 23.705685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091785, 30.845135, 24.231220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810389, 30.831589, 23.947262>,  <31.641550, 30.823462, 23.776888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810389, 30.831589, 23.947262>,  <32.091785, 30.845135, 24.231220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810389, 30.831589, 23.947262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078271, -0.989096, 0.124747,
		-0.706378, 0.143323, 0.693173,
		-0.703494, -0.033863, -0.709894,
		31.599340, 30.821430, 23.734293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582060, 30.369913, 24.576151>,  <32.091785, 30.845135, 24.231220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582060, 30.369913, 24.576151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510971, 30.377991, 24.182602>,  <31.468317, 30.382837, 23.946472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510971, 30.377991, 24.182602>,  <31.582060, 30.369913, 24.576151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510971, 30.377991, 24.182602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143634, -0.989615, 0.005635,
		-0.973542, 0.142319, 0.178778,
		-0.177723, 0.020193, -0.983873,
		31.457655, 30.384048, 23.887440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970083, 30.001799, 24.542961>,  <31.582060, 30.369913, 24.576151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970083, 30.001799, 24.542961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117931, 30.010372, 24.171387>,  <31.206640, 30.015516, 23.948442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117931, 30.010372, 24.171387>,  <30.970083, 30.001799, 24.542961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117931, 30.010372, 24.171387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254016, -0.959321, -0.123207,
		-0.893787, 0.281504, -0.349141,
		0.369622, 0.021434, -0.928935,
		31.228817, 30.016802, 23.892706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513784, 29.554815, 24.138765>,  <30.970083, 30.001799, 24.542961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513784, 29.554815, 24.138765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842318, 29.598770, 23.914860>,  <31.039438, 29.625143, 23.780516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842318, 29.598770, 23.914860>,  <30.513784, 29.554815, 24.138765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842318, 29.598770, 23.914860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090134, -0.943946, -0.317555,
		-0.563281, 0.311273, -0.765391,
		0.821334, 0.109885, -0.559764,
		31.088718, 29.631735, 23.746931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301836, 29.199125, 23.537407>,  <30.513784, 29.554815, 24.138765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301836, 29.199125, 23.537407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700279, 29.198730, 23.572662>,  <30.939344, 29.198494, 23.593815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700279, 29.198730, 23.572662>,  <30.301836, 29.199125, 23.537407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700279, 29.198730, 23.572662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016428, -0.980337, -0.196644,
		0.086598, 0.197327, -0.976505,
		0.996108, -0.000987, 0.088137,
		30.999111, 29.198435, 23.599104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573217, 28.865042, 22.940046>,  <30.301836, 29.199125, 23.537407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573217, 28.865042, 22.940046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872341, 28.870331, 23.205559>,  <31.051815, 28.873505, 23.364866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872341, 28.870331, 23.205559>,  <30.573217, 28.865042, 22.940046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872341, 28.870331, 23.205559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177072, -0.967558, -0.180211,
		0.639864, 0.252300, -0.725892,
		0.747810, 0.013225, 0.663781,
		31.096684, 28.874298, 23.404694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107706, 28.413797, 22.622993>,  <30.573217, 28.865042, 22.940046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107706, 28.413797, 22.622993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206026, 28.451103, 23.008923>,  <31.265018, 28.473488, 23.240480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206026, 28.451103, 23.008923>,  <31.107706, 28.413797, 22.622993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206026, 28.451103, 23.008923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166274, -0.984664, 0.052824,
		0.954953, 0.147441, -0.257537,
		0.245799, 0.093266, 0.964823,
		31.279766, 28.479084, 23.298370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868523, 28.107960, 22.693468>,  <31.107706, 28.413797, 22.622993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868523, 28.107960, 22.693468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682648, 28.100365, 23.047577>,  <31.571123, 28.095808, 23.260042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682648, 28.100365, 23.047577>,  <31.868523, 28.107960, 22.693468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682648, 28.100365, 23.047577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169537, -0.983182, 0.067901,
		0.869094, 0.181639, 0.460091,
		-0.464687, -0.018990, 0.885272,
		31.543242, 28.094667, 23.313158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260445, 27.655216, 23.167807>,  <31.868523, 28.107960, 22.693468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260445, 27.655216, 23.167807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907103, 27.673283, 23.354416>,  <31.695097, 27.684122, 23.466381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907103, 27.673283, 23.354416>,  <32.260445, 27.655216, 23.167807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907103, 27.673283, 23.354416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018622, -0.991178, 0.131225,
		0.468333, 0.124606, 0.874722,
		-0.883356, 0.045168, 0.466521,
		31.642096, 27.686832, 23.494371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399109, 27.200397, 23.636539>,  <32.260445, 27.655216, 23.167807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399109, 27.200397, 23.636539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999964, 27.221687, 23.651676>,  <31.760475, 27.234461, 23.660757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999964, 27.221687, 23.651676>,  <32.399109, 27.200397, 23.636539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999964, 27.221687, 23.651676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052759, -0.998520, 0.013185,
		0.038486, 0.011160, 0.999197,
		-0.997865, 0.053224, 0.037840,
		31.700603, 27.237654, 23.663029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180305, 26.873491, 24.211123>,  <32.399109, 27.200397, 23.636539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180305, 26.873491, 24.211123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904585, 26.855381, 23.921898>,  <31.739153, 26.844515, 23.748363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904585, 26.855381, 23.921898>,  <32.180305, 26.873491, 24.211123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904585, 26.855381, 23.921898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005318, -0.998334, 0.057443,
		-0.724456, 0.035750, 0.688394,
		-0.689301, -0.045276, -0.723059,
		31.697794, 26.841799, 23.704981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666538, 26.466713, 24.502790>,  <32.180305, 26.873491, 24.211123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666538, 26.466713, 24.502790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623140, 26.454880, 24.105328>,  <31.597101, 26.447781, 23.866850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623140, 26.454880, 24.105328>,  <31.666538, 26.466713, 24.502790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623140, 26.454880, 24.105328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170385, -0.984212, 0.047907,
		-0.979386, 0.174502, 0.101742,
		-0.108496, -0.029584, -0.993657,
		31.590591, 26.446005, 23.807230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085888, 26.022522, 24.478668>,  <31.666538, 26.466713, 24.502790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085888, 26.022522, 24.478668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236399, 26.007008, 24.108391>,  <31.326706, 25.997698, 23.886225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236399, 26.007008, 24.108391>,  <31.085888, 26.022522, 24.478668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236399, 26.007008, 24.108391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191455, -0.980814, -0.036725,
		-0.906510, 0.191048, -0.376484,
		0.376277, -0.038788, -0.925695,
		31.349281, 25.995371, 23.830683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560335, 25.743496, 23.933786>,  <31.085888, 26.022522, 24.478668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560335, 25.743496, 23.933786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922585, 25.642925, 23.797180>,  <31.139935, 25.582582, 23.715216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922585, 25.642925, 23.797180>,  <30.560335, 25.743496, 23.933786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922585, 25.642925, 23.797180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338720, -0.913401, -0.225757,
		-0.255181, 0.320129, -0.912360,
		0.905622, -0.251426, -0.341517,
		31.194271, 25.567497, 23.694725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389374, 25.189947, 23.417088>,  <30.560335, 25.743496, 23.933786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389374, 25.189947, 23.417088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782265, 25.146114, 23.478039>,  <31.018000, 25.119814, 23.514610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782265, 25.146114, 23.478039>,  <30.389374, 25.189947, 23.417088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782265, 25.146114, 23.478039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085827, -0.984246, -0.154572,
		0.166917, 0.138747, -0.976160,
		0.982228, -0.109581, 0.152380,
		31.076933, 25.113239, 23.523752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786289, 25.028744, 22.923113>,  <30.389374, 25.189947, 23.417088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786289, 25.028744, 22.923113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505381, 24.895924, 23.175003>,  <29.336836, 24.816231, 23.326138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505381, 24.895924, 23.175003>,  <29.786289, 25.028744, 22.923113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505381, 24.895924, 23.175003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331309, 0.935373, 0.123742,
		-0.630117, -0.121733, -0.766899,
		-0.702273, -0.332052, 0.629726,
		29.294699, 24.796309, 23.363920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188549, 25.447887, 22.772118>,  <29.786289, 25.028744, 22.923113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188549, 25.447887, 22.772118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137259, 25.276852, 23.130051>,  <29.106483, 25.174231, 23.344810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137259, 25.276852, 23.130051>,  <29.188549, 25.447887, 22.772118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137259, 25.276852, 23.130051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325378, 0.870475, 0.369327,
		-0.936850, -0.243801, -0.250747,
		-0.128227, -0.427591, 0.894832,
		29.098791, 25.148575, 23.398500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572386, 25.754061, 23.051167>,  <29.188549, 25.447887, 22.772118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572386, 25.754061, 23.051167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733919, 25.609470, 23.387321>,  <28.830839, 25.522717, 23.589014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733919, 25.609470, 23.387321>,  <28.572386, 25.754061, 23.051167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733919, 25.609470, 23.387321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223225, 0.851923, 0.473706,
		-0.887180, -0.378894, 0.263345,
		0.403834, -0.361477, 0.840388,
		28.855070, 25.501028, 23.639439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181698, 25.980753, 23.524910>,  <28.572386, 25.754061, 23.051167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181698, 25.980753, 23.524910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499147, 25.884563, 23.748455>,  <28.689617, 25.826849, 23.882582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499147, 25.884563, 23.748455>,  <28.181698, 25.980753, 23.524910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499147, 25.884563, 23.748455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057528, 0.944116, 0.324554,
		-0.605681, -0.225424, 0.763109,
		0.793625, -0.240476, 0.558865,
		28.737236, 25.812420, 23.916115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047628, 26.248758, 24.182917>,  <28.181698, 25.980753, 23.524910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047628, 26.248758, 24.182917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441122, 26.187908, 24.144703>,  <28.677217, 26.151398, 24.121775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441122, 26.187908, 24.144703>,  <28.047628, 26.248758, 24.182917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441122, 26.187908, 24.144703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163553, 0.978446, 0.126072,
		0.074296, -0.139646, 0.987410,
		0.983733, -0.152128, -0.095534,
		28.736242, 26.142269, 24.116043>
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
