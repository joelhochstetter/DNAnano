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
	<40.774406, 33.604309, 48.181255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547409, 33.662189, 48.505482>,  <40.411213, 33.696918, 48.700016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547409, 33.662189, 48.505482>,  <40.774406, 33.604309, 48.181255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547409, 33.662189, 48.505482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801587, 0.322078, 0.503710,
		-0.188180, 0.935590, -0.298764,
		-0.567491, 0.144697, 0.810565,
		40.377163, 33.705597, 48.748650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876236, 34.214973, 48.349617>,  <40.774406, 33.604309, 48.181255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876236, 34.214973, 48.349617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780045, 34.029606, 48.690773>,  <40.722332, 33.918385, 48.895466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780045, 34.029606, 48.690773>,  <40.876236, 34.214973, 48.349617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780045, 34.029606, 48.690773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859486, 0.306655, 0.408958,
		-0.451061, 0.831388, 0.324558,
		-0.240475, -0.463418, 0.852887,
		40.707901, 33.890579, 48.946640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968102, 34.737808, 48.859055>,  <40.876236, 34.214973, 48.349617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968102, 34.737808, 48.859055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991913, 34.405025, 49.079708>,  <41.006199, 34.205357, 49.212101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991913, 34.405025, 49.079708>,  <40.968102, 34.737808, 48.859055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991913, 34.405025, 49.079708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900269, 0.283477, 0.330389,
		-0.431246, 0.476951, 0.765862,
		0.059525, -0.831961, 0.551633,
		41.009769, 34.155437, 49.245197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189396, 34.859474, 49.556095>,  <40.968102, 34.737808, 48.859055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189396, 34.859474, 49.556095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290211, 34.474968, 49.511463>,  <41.350700, 34.244263, 49.484684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290211, 34.474968, 49.511463>,  <41.189396, 34.859474, 49.556095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290211, 34.474968, 49.511463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936023, 0.212889, 0.280250,
		-0.245641, -0.175071, 0.953421,
		0.252036, -0.961264, -0.111576,
		41.365822, 34.186588, 49.477989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704758, 34.902634, 50.050503>,  <41.189396, 34.859474, 49.556095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704758, 34.902634, 50.050503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752766, 34.529442, 49.914768>,  <41.781570, 34.305527, 49.833328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752766, 34.529442, 49.914768>,  <41.704758, 34.902634, 50.050503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752766, 34.529442, 49.914768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962762, 0.025974, 0.269098,
		-0.242249, -0.358992, 0.901355,
		0.120016, -0.932979, -0.339332,
		41.788769, 34.249550, 49.812969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859825, 34.443325, 50.606308>,  <41.704758, 34.902634, 50.050503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859825, 34.443325, 50.606308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004093, 34.262039, 50.280235>,  <42.090652, 34.153267, 50.084591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004093, 34.262039, 50.280235>,  <41.859825, 34.443325, 50.606308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004093, 34.262039, 50.280235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874306, -0.140100, 0.464716,
		-0.324822, -0.880324, 0.345718,
		0.360665, -0.453213, -0.815180,
		42.112293, 34.126076, 50.035683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206757, 33.778740, 50.850777>,  <41.859825, 34.443325, 50.606308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206757, 33.778740, 50.850777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356174, 33.839512, 50.484741>,  <42.445824, 33.875977, 50.265121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356174, 33.839512, 50.484741>,  <42.206757, 33.778740, 50.850777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356174, 33.839512, 50.484741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920473, -0.182879, 0.345377,
		-0.114875, -0.971324, -0.208165,
		0.373542, 0.151935, -0.915086,
		42.468239, 33.885094, 50.210217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509098, 33.222485, 50.817677>,  <42.206757, 33.778740, 50.850777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509098, 33.222485, 50.817677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694641, 33.461197, 50.555779>,  <42.805965, 33.604424, 50.398640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694641, 33.461197, 50.555779>,  <42.509098, 33.222485, 50.817677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694641, 33.461197, 50.555779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881168, -0.234435, 0.410590,
		0.091537, -0.767394, -0.634608,
		0.463858, 0.596780, -0.654743,
		42.833797, 33.640232, 50.359356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084518, 32.859924, 50.483624>,  <42.509098, 33.222485, 50.817677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084518, 32.859924, 50.483624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182526, 33.247707, 50.479324>,  <43.241329, 33.480377, 50.476746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182526, 33.247707, 50.479324>,  <43.084518, 32.859924, 50.483624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182526, 33.247707, 50.479324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908722, -0.225773, 0.351071,
		0.337923, -0.095784, -0.936287,
		0.245016, 0.969460, -0.010748,
		43.256031, 33.538544, 50.476101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763371, 32.969341, 50.409748>,  <43.084518, 32.859924, 50.483624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763371, 32.969341, 50.409748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697128, 33.353897, 50.497658>,  <43.657383, 33.584633, 50.550404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697128, 33.353897, 50.497658>,  <43.763371, 32.969341, 50.409748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697128, 33.353897, 50.497658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861535, 0.032588, 0.506651,
		0.479928, 0.273245, -0.833670,
		-0.165607, 0.961392, 0.219771,
		43.647446, 33.642315, 50.563587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338440, 33.422363, 50.119431>,  <43.763371, 32.969341, 50.409748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338440, 33.422363, 50.119431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187683, 33.643448, 50.416744>,  <44.097229, 33.776100, 50.595131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187683, 33.643448, 50.416744>,  <44.338440, 33.422363, 50.119431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187683, 33.643448, 50.416744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918518, 0.119493, 0.376889,
		0.119493, 0.824762, -0.552710,
		-0.376889, 0.552710, 0.743281,
		44.074615, 33.809261, 50.639729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.729576, 34.110249, 50.009953>,  <44.338440, 33.422363, 50.119431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.729576, 34.110249, 50.009953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597031, 34.062881, 50.384369>,  <44.517506, 34.034462, 50.609020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597031, 34.062881, 50.384369>,  <44.729576, 34.110249, 50.009953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597031, 34.062881, 50.384369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879341, 0.320845, 0.351878,
		-0.341993, 0.939700, -0.002186,
		-0.331361, -0.118417, 0.936043,
		44.497623, 34.027355, 50.665180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086716, 34.578400, 50.309021>,  <44.729576, 34.110249, 50.009953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086716, 34.578400, 50.309021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963005, 34.410549, 50.650375>,  <44.888779, 34.309837, 50.855186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963005, 34.410549, 50.650375>,  <45.086716, 34.578400, 50.309021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963005, 34.410549, 50.650375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781614, 0.398995, 0.479462,
		-0.541690, 0.815301, 0.204586,
		-0.309277, -0.419627, 0.853382,
		44.870220, 34.284660, 50.906391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170071, 35.105885, 50.744522>,  <45.086716, 34.578400, 50.309021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170071, 35.105885, 50.744522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190098, 34.764896, 50.952671>,  <45.202114, 34.560303, 51.077560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190098, 34.764896, 50.952671>,  <45.170071, 35.105885, 50.744522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190098, 34.764896, 50.952671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717577, 0.393099, 0.574940,
		-0.694677, 0.344619, 0.631396,
		0.050066, -0.852473, 0.520368,
		45.205116, 34.509155, 51.108780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143650, 35.336033, 51.366943>,  <45.170071, 35.105885, 50.744522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143650, 35.336033, 51.366943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287521, 34.963627, 51.391750>,  <45.373844, 34.740185, 51.406635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287521, 34.963627, 51.391750>,  <45.143650, 35.336033, 51.366943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287521, 34.963627, 51.391750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715728, 0.317922, 0.621819,
		-0.598639, -0.179267, 0.780702,
		0.359674, -0.931015, 0.062014,
		45.395424, 34.684322, 51.410355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245834, 35.265461, 52.074223>,  <45.143650, 35.336033, 51.366943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245834, 35.265461, 52.074223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480370, 34.978180, 51.924347>,  <45.621090, 34.805813, 51.834419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480370, 34.978180, 51.924347>,  <45.245834, 35.265461, 52.074223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480370, 34.978180, 51.924347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667885, 0.166858, 0.725319,
		-0.458404, -0.675535, 0.577511,
		0.586341, -0.718200, -0.374691,
		45.656273, 34.762718, 51.811939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468845, 34.700691, 52.615704>,  <45.245834, 35.265461, 52.074223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468845, 34.700691, 52.615704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734905, 34.725605, 52.318062>,  <45.894543, 34.740551, 52.139477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734905, 34.725605, 52.318062>,  <45.468845, 34.700691, 52.615704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734905, 34.725605, 52.318062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732448, 0.139392, 0.666400,
		0.145245, -0.988275, 0.047079,
		0.665149, 0.062308, -0.744106,
		45.934452, 34.744289, 52.094830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058064, 34.392399, 52.882587>,  <45.468845, 34.700691, 52.615704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058064, 34.392399, 52.882587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196259, 34.593361, 52.565544>,  <46.279175, 34.713940, 52.375317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196259, 34.593361, 52.565544>,  <46.058064, 34.392399, 52.882587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.196259, 34.593361, 52.565544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904084, 0.048202, 0.424627,
		0.251542, -0.863286, -0.437566,
		0.345483, 0.502408, -0.792608,
		46.299904, 34.744083, 52.327763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.752407, 34.116310, 52.688164>,  <46.058064, 34.392399, 52.882587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.752407, 34.116310, 52.688164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752663, 34.469387, 52.500183>,  <46.752815, 34.681232, 52.387394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752663, 34.469387, 52.500183>,  <46.752407, 34.116310, 52.688164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752663, 34.469387, 52.500183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918360, 0.185466, 0.349596,
		0.395746, -0.431806, -0.810512,
		0.000635, 0.882693, -0.469950,
		46.752853, 34.734196, 52.359200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.454876, 34.212631, 52.337479>,  <46.752407, 34.116310, 52.688164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.454876, 34.212631, 52.337479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262581, 34.559731, 52.387920>,  <47.147205, 34.767990, 52.418186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.262581, 34.559731, 52.387920>,  <47.454876, 34.212631, 52.337479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.262581, 34.559731, 52.387920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770844, 0.349669, 0.532477,
		0.417961, 0.353189, -0.836998,
		-0.480737, 0.867750, 0.126105,
		47.118359, 34.820057, 52.425751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.875832, 34.744328, 51.989128>,  <47.454876, 34.212631, 52.337479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.875832, 34.744328, 51.989128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654411, 34.935131, 52.262196>,  <47.521557, 35.049614, 52.426037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654411, 34.935131, 52.262196>,  <47.875832, 34.744328, 51.989128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.654411, 34.935131, 52.262196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830690, 0.257752, 0.493475,
		0.059432, 0.840254, -0.538926,
		-0.553554, 0.477009, 0.682672,
		47.488346, 35.078236, 52.466995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.301907, 34.939442, 51.687950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.506779, 34.996498, 52.026730>,  <24.629702, 35.030731, 52.229996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.506779, 34.996498, 52.026730>,  <24.301907, 34.939442, 51.687950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.506779, 34.996498, 52.026730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858808, -0.097538, -0.502927,
		0.010873, 0.984957, -0.172456,
		0.512183, 0.142638, 0.846949,
		24.660433, 35.039291, 52.280815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852346, 35.345589, 51.502186>,  <24.301907, 34.939442, 51.687950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852346, 35.345589, 51.502186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.977030, 35.142342, 51.823345>,  <25.051840, 35.020393, 52.016041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.977030, 35.142342, 51.823345>,  <24.852346, 35.345589, 51.502186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.977030, 35.142342, 51.823345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905839, -0.096201, -0.412555,
		0.286867, 0.855897, 0.430287,
		0.311710, -0.508119, 0.802902,
		25.070543, 34.989906, 52.064217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475960, 35.685616, 51.780411>,  <24.852346, 35.345589, 51.502186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475960, 35.685616, 51.780411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.452032, 35.299656, 51.882698>,  <25.437675, 35.068081, 51.944069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.452032, 35.299656, 51.882698>,  <25.475960, 35.685616, 51.780411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452032, 35.299656, 51.882698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981948, -0.102933, -0.158693,
		0.179444, 0.241611, 0.953637,
		-0.059819, -0.964899, 0.255720,
		25.434086, 35.010185, 51.959415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051586, 35.559193, 52.298321>,  <25.475960, 35.685616, 51.780411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051586, 35.559193, 52.298321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.928392, 35.202881, 52.164658>,  <25.854477, 34.989094, 52.084461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.928392, 35.202881, 52.164658>,  <26.051586, 35.559193, 52.298321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928392, 35.202881, 52.164658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947243, -0.254335, -0.195053,
		0.088761, -0.376599, 0.922114,
		-0.307982, -0.890779, -0.334156,
		25.835999, 34.935646, 52.064411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402086, 35.009449, 52.716457>,  <26.051586, 35.559193, 52.298321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402086, 35.009449, 52.716457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.314199, 34.853710, 52.358658>,  <26.261467, 34.760265, 52.143978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.314199, 34.853710, 52.358658>,  <26.402086, 35.009449, 52.716457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314199, 34.853710, 52.358658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942978, -0.319760, -0.092441,
		-0.250034, -0.863806, 0.437404,
		-0.219715, -0.389350, -0.894501,
		26.248285, 34.736904, 52.090309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806265, 34.462498, 52.677036>,  <26.402086, 35.009449, 52.716457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806265, 34.462498, 52.677036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.682800, 34.468533, 52.296616>,  <26.608721, 34.472153, 52.068363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.682800, 34.468533, 52.296616>,  <26.806265, 34.462498, 52.677036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682800, 34.468533, 52.296616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883933, -0.364706, -0.292662,
		-0.351270, -0.931000, 0.099235,
		-0.308660, 0.015086, -0.951053,
		26.590202, 34.473057, 52.011299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058531, 33.786602, 52.407345>,  <26.806265, 34.462498, 52.677036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058531, 33.786602, 52.407345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.004593, 34.029716, 52.094318>,  <26.972229, 34.175587, 51.906502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.004593, 34.029716, 52.094318>,  <27.058531, 33.786602, 52.407345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004593, 34.029716, 52.094318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872210, -0.301952, -0.384805,
		-0.470177, -0.734453, -0.489400,
		-0.134846, 0.607786, -0.782568,
		26.964140, 34.212051, 51.859547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407207, 33.431698, 51.971706>,  <27.058531, 33.786602, 52.407345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407207, 33.431698, 51.971706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.365135, 33.777317, 51.774784>,  <27.339891, 33.984688, 51.656631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.365135, 33.777317, 51.774784>,  <27.407207, 33.431698, 51.971706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365135, 33.777317, 51.774784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756844, -0.251576, -0.603238,
		-0.645077, -0.436045, -0.627488,
		-0.105178, 0.864046, -0.492303,
		27.333582, 34.036530, 51.627094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380821, 33.227650, 51.237473>,  <27.407207, 33.431698, 51.971706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380821, 33.227650, 51.237473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.515244, 33.600704, 51.290005>,  <27.595898, 33.824539, 51.321526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.515244, 33.600704, 51.290005>,  <27.380821, 33.227650, 51.237473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515244, 33.600704, 51.290005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859038, -0.246344, -0.448740,
		-0.386160, 0.263622, -0.883959,
		0.336056, 0.932640, 0.131333,
		27.616060, 33.880497, 51.329403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864332, 33.333511, 50.660538>,  <27.380821, 33.227650, 51.237473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864332, 33.333511, 50.660538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.981096, 33.617432, 50.916965>,  <28.051155, 33.787785, 51.070820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.981096, 33.617432, 50.916965>,  <27.864332, 33.333511, 50.660538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981096, 33.617432, 50.916965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911088, -0.002405, -0.412204,
		-0.291043, 0.704395, -0.647396,
		0.291911, 0.709804, 0.641066,
		28.068670, 33.830372, 51.109283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243689, 33.817673, 50.244919>,  <27.864332, 33.333511, 50.660538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243689, 33.817673, 50.244919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.351118, 33.886448, 50.624035>,  <28.415575, 33.927711, 50.851505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.351118, 33.886448, 50.624035>,  <28.243689, 33.817673, 50.244919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351118, 33.886448, 50.624035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956962, -0.159948, -0.242158,
		0.109961, 0.972036, -0.207494,
		0.268574, 0.171936, 0.947790,
		28.431690, 33.938030, 50.908371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869614, 34.213959, 50.213032>,  <28.243689, 33.817673, 50.244919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869614, 34.213959, 50.213032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.868114, 34.067410, 50.585217>,  <28.867216, 33.979481, 50.808525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.868114, 34.067410, 50.585217>,  <28.869614, 34.213959, 50.213032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868114, 34.067410, 50.585217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985652, -0.158371, -0.058391,
		0.168751, 0.916891, 0.361710,
		-0.003746, -0.366374, 0.930460,
		28.866991, 33.957497, 50.864353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445192, 34.548103, 50.473888>,  <28.869614, 34.213959, 50.213032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445192, 34.548103, 50.473888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.341627, 34.245792, 50.714474>,  <29.279488, 34.064404, 50.858826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.341627, 34.245792, 50.714474>,  <29.445192, 34.548103, 50.473888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341627, 34.245792, 50.714474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965849, -0.209024, 0.153118,
		0.009997, 0.620569, 0.784089,
		-0.258914, -0.755780, 0.601465,
		29.263952, 34.019058, 50.894913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733456, 34.662132, 51.195473>,  <29.445192, 34.548103, 50.473888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733456, 34.662132, 51.195473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.666801, 34.273296, 51.129410>,  <29.626808, 34.039993, 51.089771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.666801, 34.273296, 51.129410>,  <29.733456, 34.662132, 51.195473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666801, 34.273296, 51.129410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973601, -0.188712, 0.128408,
		-0.155991, -0.139400, 0.977872,
		-0.166636, -0.972088, -0.165157,
		29.616810, 33.981670, 51.079861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259123, 34.321770, 51.545956>,  <29.733456, 34.662132, 51.195473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259123, 34.321770, 51.545956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.143400, 33.998230, 51.341187>,  <30.073967, 33.804108, 51.218327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.143400, 33.998230, 51.341187>,  <30.259123, 34.321770, 51.545956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143400, 33.998230, 51.341187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944099, -0.329402, -0.013085,
		-0.158045, -0.487092, 0.858931,
		-0.289307, -0.808849, -0.511923,
		30.056608, 33.755577, 51.187611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603983, 33.721905, 51.848911>,  <30.259123, 34.321770, 51.545956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603983, 33.721905, 51.848911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.525747, 33.632729, 51.466908>,  <30.478806, 33.579224, 51.237705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.525747, 33.632729, 51.466908>,  <30.603983, 33.721905, 51.848911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525747, 33.632729, 51.466908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901953, -0.423197, -0.085930,
		-0.384999, -0.878180, 0.283857,
		-0.195590, -0.222943, -0.955008,
		30.467070, 33.565845, 51.180405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992628, 33.053196, 51.605072>,  <30.603983, 33.721905, 51.848911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992628, 33.053196, 51.605072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.894522, 33.223572, 51.256721>,  <30.835659, 33.325798, 51.047710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.894522, 33.223572, 51.256721>,  <30.992628, 33.053196, 51.605072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894522, 33.223572, 51.256721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853884, -0.330448, -0.402101,
		-0.459050, -0.842246, -0.282658,
		-0.245265, 0.425942, -0.870873,
		30.820942, 33.351353, 50.995461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180559, 32.566551, 51.154144>,  <30.992628, 33.053196, 51.605072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180559, 32.566551, 51.154144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.117636, 32.883194, 50.917969>,  <31.079882, 33.073181, 50.776264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.117636, 32.883194, 50.917969>,  <31.180559, 32.566551, 51.154144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117636, 32.883194, 50.917969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881651, -0.156781, -0.445097,
		-0.444911, -0.590576, -0.673257,
		-0.157310, 0.791606, -0.590435,
		31.070442, 33.120674, 50.740837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270416, 32.357956, 50.515053>,  <31.180559, 32.566551, 51.154144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270416, 32.357956, 50.515053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.361685, 32.747299, 50.506016>,  <31.416447, 32.980904, 50.500595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.361685, 32.747299, 50.506016>,  <31.270416, 32.357956, 50.515053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361685, 32.747299, 50.506016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786719, -0.197993, -0.584698,
		-0.573594, 0.115637, -0.810937,
		0.228173, 0.973358, -0.022594,
		31.430138, 33.039307, 50.499237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633791, 32.410557, 49.826340>,  <31.270416, 32.357956, 50.515053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633791, 32.410557, 49.826340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.714691, 32.732567, 50.049419>,  <31.763231, 32.925774, 50.183266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.714691, 32.732567, 50.049419>,  <31.633791, 32.410557, 49.826340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714691, 32.732567, 50.049419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895641, 0.078303, -0.437831,
		-0.396135, 0.588049, -0.705177,
		0.202249, 0.805026, 0.557699,
		31.775366, 32.974075, 50.216728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774895, 32.926102, 49.405910>,  <31.633791, 32.410557, 49.826340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774895, 32.926102, 49.405910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.954561, 33.045494, 49.742756>,  <32.062363, 33.117130, 49.944862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.954561, 33.045494, 49.742756>,  <31.774895, 32.926102, 49.405910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954561, 33.045494, 49.742756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850152, 0.147069, -0.505581,
		-0.274756, 0.943016, -0.187697,
		0.449167, 0.298482, 0.842115,
		32.089310, 33.135040, 49.995392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.470037, 34.874683, 34.895416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.136066, 35.049923, 35.028664>,  <23.935684, 35.155067, 35.108612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.136066, 35.049923, 35.028664>,  <24.470037, 34.874683, 34.895416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.136066, 35.049923, 35.028664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400656, 0.068864, 0.913637,
		0.377323, 0.896286, -0.233023,
		-0.834927, 0.438098, 0.333118,
		23.885588, 35.181351, 35.128597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.740946, 35.483547, 35.073975>,  <24.470037, 34.874683, 34.895416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.740946, 35.483547, 35.073975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.413223, 35.372543, 35.274662>,  <24.216589, 35.305943, 35.395077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.413223, 35.372543, 35.274662>,  <24.740946, 35.483547, 35.073975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.413223, 35.372543, 35.274662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492038, 0.108909, 0.863734,
		-0.294333, 0.954531, 0.047313,
		-0.819309, -0.277505, 0.501721,
		24.167431, 35.289291, 35.425179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.839699, 35.757626, 35.673832>,  <24.740946, 35.483547, 35.073975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.839699, 35.757626, 35.673832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.555313, 35.480919, 35.724396>,  <24.384682, 35.314896, 35.754734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.555313, 35.480919, 35.724396>,  <24.839699, 35.757626, 35.673832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.555313, 35.480919, 35.724396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410041, -0.261761, 0.873697,
		-0.571308, 0.673004, 0.469758,
		-0.710967, -0.691770, 0.126413,
		24.342024, 35.273388, 35.762321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.571779, 35.893047, 36.298969>,  <24.839699, 35.757626, 35.673832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.571779, 35.893047, 36.298969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.501627, 35.505688, 36.228031>,  <24.459536, 35.273273, 36.185467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.501627, 35.505688, 36.228031>,  <24.571779, 35.893047, 36.298969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.501627, 35.505688, 36.228031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309670, -0.225260, 0.923776,
		-0.934530, 0.107091, 0.339389,
		-0.175379, -0.968395, -0.177349,
		24.449013, 35.215168, 36.174828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499310, 35.685917, 37.029888>,  <24.571779, 35.893047, 36.298969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499310, 35.685917, 37.029888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.493126, 35.359947, 36.798141>,  <24.489416, 35.164368, 36.659092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.493126, 35.359947, 36.798141>,  <24.499310, 35.685917, 37.029888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.493126, 35.359947, 36.798141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234987, -0.566168, 0.790085,
		-0.971875, -0.123931, 0.200248,
		-0.015458, -0.814920, -0.579367,
		24.488489, 35.115471, 36.624332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256227, 35.900764, 37.119274>,  <24.499310, 35.685917, 37.029888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256227, 35.900764, 37.119274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.437653, 35.672901, 37.393436>,  <25.546507, 35.536182, 37.557934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.437653, 35.672901, 37.393436>,  <25.256227, 35.900764, 37.119274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437653, 35.672901, 37.393436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666205, 0.727552, 0.163827,
		-0.591990, 0.382312, 0.709496,
		0.453562, -0.569654, 0.685402,
		25.573721, 35.502007, 37.599056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648579, 36.419903, 37.594215>,  <25.256227, 35.900764, 37.119274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648579, 36.419903, 37.594215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.798887, 36.049248, 37.599026>,  <25.889072, 35.826855, 37.601910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.798887, 36.049248, 37.599026>,  <25.648579, 36.419903, 37.594215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798887, 36.049248, 37.599026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915152, 0.373093, 0.152640,
		-0.145927, -0.046356, 0.988209,
		0.375769, -0.926635, 0.012021,
		25.911617, 35.771255, 37.602631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105280, 36.105232, 38.257359>,  <25.648579, 36.419903, 37.594215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105280, 36.105232, 38.257359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.729883, 36.068661, 38.390549>,  <25.504644, 36.046719, 38.470463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.729883, 36.068661, 38.390549>,  <26.105280, 36.105232, 38.257359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729883, 36.068661, 38.390549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270083, 0.406467, 0.872834,
		-0.215147, 0.909079, -0.356773,
		-0.938492, -0.091429, 0.332978,
		25.448336, 36.041233, 38.490440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744484, 36.835480, 38.338745>,  <26.105280, 36.105232, 38.257359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.744484, 36.835480, 38.338745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.642981, 36.518265, 38.560268>,  <25.582079, 36.327938, 38.693184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.642981, 36.518265, 38.560268>,  <25.744484, 36.835480, 38.338745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642981, 36.518265, 38.560268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449358, 0.410366, 0.793522,
		-0.856554, 0.450221, 0.252222,
		-0.253757, -0.793033, 0.553811,
		25.566853, 36.280354, 38.726410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292986, 36.861267, 38.960075>,  <25.744484, 36.835480, 38.338745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292986, 36.861267, 38.960075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.573885, 36.588352, 39.041393>,  <25.742424, 36.424603, 39.090183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.573885, 36.588352, 39.041393>,  <25.292986, 36.861267, 38.960075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573885, 36.588352, 39.041393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383979, 0.603441, 0.698870,
		-0.599505, -0.412722, 0.685751,
		0.702249, -0.682290, 0.203290,
		25.784559, 36.383667, 39.102379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248241, 36.610630, 39.642262>,  <25.292986, 36.861267, 38.960075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248241, 36.610630, 39.642262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.623362, 36.579098, 39.507019>,  <25.848433, 36.560177, 39.425873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.623362, 36.579098, 39.507019>,  <25.248241, 36.610630, 39.642262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623362, 36.579098, 39.507019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289033, 0.716806, 0.634547,
		0.192334, -0.692802, 0.695006,
		0.937799, -0.078835, -0.338109,
		25.904701, 36.555447, 39.405586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651758, 36.577240, 40.305099>,  <25.248241, 36.610630, 39.642262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651758, 36.577240, 40.305099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.835625, 36.717613, 39.978771>,  <25.945944, 36.801838, 39.782974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.835625, 36.717613, 39.978771>,  <25.651758, 36.577240, 40.305099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835625, 36.717613, 39.978771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486450, 0.669065, 0.561889,
		0.743017, -0.655135, 0.136837,
		0.459666, 0.350929, -0.815817,
		25.973524, 36.822891, 39.734028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039726, 35.984810, 40.317047>,  <25.651758, 36.577240, 40.305099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039726, 35.984810, 40.317047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.189089, 36.218575, 40.028870>,  <26.278706, 36.358833, 39.855965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.189089, 36.218575, 40.028870>,  <26.039726, 35.984810, 40.317047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189089, 36.218575, 40.028870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249739, 0.811272, 0.528647,
		0.893421, -0.017475, 0.448881,
		0.373403, 0.584407, -0.720443,
		26.301109, 36.393898, 39.812737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057949, 35.326412, 40.858757>,  <26.039726, 35.984810, 40.317047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057949, 35.326412, 40.858757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.780502, 35.054802, 40.954941>,  <25.614035, 34.891834, 41.012650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.780502, 35.054802, 40.954941>,  <26.057949, 35.326412, 40.858757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780502, 35.054802, 40.954941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635636, 0.419895, -0.647808,
		0.338910, -0.602175, -0.722859,
		-0.693618, -0.679024, 0.240457,
		25.572416, 34.851093, 41.027077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741373, 34.997692, 40.258011>,  <26.057949, 35.326412, 40.858757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741373, 34.997692, 40.258011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.482471, 34.992649, 40.562878>,  <25.327129, 34.989624, 40.745796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.482471, 34.992649, 40.562878>,  <25.741373, 34.997692, 40.258011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482471, 34.992649, 40.562878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675149, 0.473665, -0.565522,
		-0.353884, -0.880615, -0.315093,
		-0.647256, -0.012605, 0.762168,
		25.288294, 34.988869, 40.791527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143415, 34.493298, 39.881744>,  <25.741373, 34.997692, 40.258011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143415, 34.493298, 39.881744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.375544, 34.220230, 40.059368>,  <26.514820, 34.056389, 40.165943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.375544, 34.220230, 40.059368>,  <26.143415, 34.493298, 39.881744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375544, 34.220230, 40.059368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792155, 0.599719, -0.113260,
		-0.188993, 0.417493, 0.888809,
		0.580321, -0.682669, 0.444062,
		26.549641, 34.015430, 40.192585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525347, 34.941990, 40.382511>,  <26.143415, 34.493298, 39.881744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525347, 34.941990, 40.382511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.696060, 34.606873, 40.246300>,  <26.798489, 34.405804, 40.164574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.696060, 34.606873, 40.246300>,  <26.525347, 34.941990, 40.382511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696060, 34.606873, 40.246300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850701, 0.499682, -0.163177,
		0.306864, -0.220045, 0.925967,
		0.426783, -0.837794, -0.340526,
		26.824095, 34.355534, 40.144142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100460, 34.680054, 40.673035>,  <26.525347, 34.941990, 40.382511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100460, 34.680054, 40.673035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.115927, 34.600677, 40.281296>,  <27.125208, 34.553051, 40.046253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.115927, 34.600677, 40.281296>,  <27.100460, 34.680054, 40.673035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115927, 34.600677, 40.281296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913290, 0.404711, -0.045945,
		0.405471, -0.892653, 0.196886,
		0.038669, -0.198443, -0.979349,
		27.127527, 34.541145, 39.987492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893248, 34.209385, 41.196892>,  <27.100460, 34.680054, 40.673035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893248, 34.209385, 41.196892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.762056, 33.834122, 41.241253>,  <26.683342, 33.608963, 41.267868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.762056, 33.834122, 41.241253>,  <26.893248, 34.209385, 41.196892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762056, 33.834122, 41.241253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836308, -0.233744, 0.495935,
		-0.439340, 0.255405, 0.861248,
		-0.327976, -0.938153, 0.110904,
		26.663664, 33.552677, 41.274525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592733, 33.890923, 41.935600>,  <26.893248, 34.209385, 41.196892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592733, 33.890923, 41.935600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.823858, 33.691113, 41.677422>,  <26.962534, 33.571228, 41.522514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.823858, 33.691113, 41.677422>,  <26.592733, 33.890923, 41.935600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823858, 33.691113, 41.677422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775819, 0.090577, 0.624420,
		-0.253450, -0.861551, 0.439878,
		0.577813, -0.499525, -0.645451,
		26.997202, 33.541256, 41.483788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871305, 33.396030, 42.312969>,  <26.592733, 33.890923, 41.935600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871305, 33.396030, 42.312969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.110184, 33.485752, 42.004932>,  <27.253510, 33.539585, 41.820110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.110184, 33.485752, 42.004932>,  <26.871305, 33.396030, 42.312969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110184, 33.485752, 42.004932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764513, 0.131275, 0.631100,
		0.242652, -0.965637, -0.093086,
		0.597194, 0.224304, -0.770096,
		27.289341, 33.553043, 41.773903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457861, 32.826115, 42.142105>,  <26.871305, 33.396030, 42.312969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457861, 32.826115, 42.142105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.554066, 33.211674, 42.096390>,  <27.611788, 33.443008, 42.068962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.554066, 33.211674, 42.096390>,  <27.457861, 32.826115, 42.142105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554066, 33.211674, 42.096390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871150, -0.162431, 0.463371,
		0.428078, -0.211005, -0.878764,
		0.240512, 0.963895, -0.114284,
		27.626219, 33.500843, 42.062103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100973, 32.916111, 41.868832>,  <27.457861, 32.826115, 42.142105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100973, 32.916111, 41.868832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.026323, 33.228329, 42.107468>,  <27.981533, 33.415661, 42.250648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.026323, 33.228329, 42.107468>,  <28.100973, 32.916111, 41.868832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026323, 33.228329, 42.107468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764634, -0.265884, 0.587061,
		0.616851, 0.565735, -0.547210,
		-0.186627, 0.780544, 0.596591,
		27.970335, 33.462494, 42.286446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781849, 33.372932, 41.978863>,  <28.100973, 32.916111, 41.868832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781849, 33.372932, 41.978863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.512091, 33.306145, 42.266560>,  <28.350235, 33.266071, 42.439178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.512091, 33.306145, 42.266560>,  <28.781849, 33.372932, 41.978863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512091, 33.306145, 42.266560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731054, -0.287777, 0.618663,
		0.103682, 0.943030, 0.316141,
		-0.674396, -0.166972, 0.719243,
		28.309772, 33.256054, 42.482334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124031, 33.748211, 42.607651>,  <28.781849, 33.372932, 41.978863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124031, 33.748211, 42.607651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.273930, 34.069241, 42.793308>,  <29.363869, 34.261860, 42.904705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.273930, 34.069241, 42.793308>,  <29.124031, 33.748211, 42.607651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273930, 34.069241, 42.793308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699837, -0.083489, 0.709407,
		0.608105, -0.590676, 0.530387,
		0.374748, 0.802578, 0.464147,
		29.386354, 34.310013, 42.932552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983875, 33.711880, 43.352436>,  <29.124031, 33.748211, 42.607651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983875, 33.711880, 43.352436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.114979, 34.089108, 43.329796>,  <29.193640, 34.315445, 43.316212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.114979, 34.089108, 43.329796>,  <28.983875, 33.711880, 43.352436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114979, 34.089108, 43.329796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486309, 0.219770, 0.845698,
		0.809988, -0.249657, 0.530652,
		0.327756, 0.943065, -0.056601,
		29.213306, 34.372028, 43.312817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423988, 34.014484, 43.936378>,  <28.983875, 33.711880, 43.352436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423988, 34.014484, 43.936378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.222742, 34.328697, 43.792255>,  <29.101995, 34.517223, 43.705784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.222742, 34.328697, 43.792255>,  <29.423988, 34.014484, 43.936378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222742, 34.328697, 43.792255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316117, 0.220746, 0.922682,
		0.804330, 0.578113, 0.137259,
		-0.503115, 0.785530, -0.360304,
		29.071808, 34.564358, 43.684166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939520, 33.982147, 44.471519>,  <29.423988, 34.014484, 43.936378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939520, 33.982147, 44.471519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.978151, 33.661705, 44.707790>,  <29.001331, 33.469440, 44.849552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.978151, 33.661705, 44.707790>,  <28.939520, 33.982147, 44.471519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978151, 33.661705, 44.707790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765494, 0.439085, 0.470344,
		-0.636154, 0.406736, 0.655648,
		0.096580, -0.801105, 0.590680,
		29.007126, 33.421375, 44.884995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056435, 34.293655, 45.240036>,  <28.939520, 33.982147, 44.471519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056435, 34.293655, 45.240036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.189720, 33.916618, 45.231285>,  <29.269691, 33.690395, 45.226036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.189720, 33.916618, 45.231285>,  <29.056435, 34.293655, 45.240036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189720, 33.916618, 45.231285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833927, 0.283817, 0.473301,
		-0.439924, -0.175952, 0.880629,
		0.333216, -0.942597, -0.021873,
		29.289684, 33.633839, 45.224724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242363, 34.023434, 45.853973>,  <29.056435, 34.293655, 45.240036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242363, 34.023434, 45.853973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.498661, 33.853035, 45.598484>,  <29.652441, 33.750797, 45.445190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.498661, 33.853035, 45.598484>,  <29.242363, 34.023434, 45.853973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498661, 33.853035, 45.598484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744854, 0.546588, 0.382667,
		0.186104, -0.720949, 0.667531,
		0.640748, -0.425998, -0.638724,
		29.690886, 33.725235, 45.406868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704062, 33.629044, 46.209732>,  <29.242363, 34.023434, 45.853973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704062, 33.629044, 46.209732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.895672, 33.704308, 45.866772>,  <30.010637, 33.749466, 45.660995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.895672, 33.704308, 45.866772>,  <29.704062, 33.629044, 46.209732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895672, 33.704308, 45.866772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819117, 0.255329, 0.513668,
		0.315569, -0.948369, -0.031813,
		0.479024, 0.188156, -0.857399,
		30.039379, 33.760754, 45.609550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222597, 33.188614, 46.262665>,  <29.704062, 33.629044, 46.209732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222597, 33.188614, 46.262665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288279, 33.505512, 46.027588>,  <30.327686, 33.695652, 45.886543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288279, 33.505512, 46.027588>,  <30.222597, 33.188614, 46.262665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288279, 33.505512, 46.027588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829429, 0.211594, 0.516987,
		0.533933, -0.572340, -0.622369,
		0.164203, 0.792247, -0.587692,
		30.337540, 33.743187, 45.851280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816505, 33.081905, 45.915768>,  <30.222597, 33.188614, 46.262665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816505, 33.081905, 45.915768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.722048, 33.457565, 46.015549>,  <30.665373, 33.682961, 46.075417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.722048, 33.457565, 46.015549>,  <30.816505, 33.081905, 45.915768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722048, 33.457565, 46.015549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878995, 0.097012, 0.466858,
		0.414251, 0.329514, -0.848420,
		-0.236143, 0.939153, 0.249454,
		30.651205, 33.739311, 46.090385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459213, 33.533123, 45.767452>,  <30.816505, 33.081905, 45.915768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459213, 33.533123, 45.767452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.218195, 33.588326, 46.081879>,  <31.073584, 33.621449, 46.270535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.218195, 33.588326, 46.081879>,  <31.459213, 33.533123, 45.767452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218195, 33.588326, 46.081879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775148, -0.133237, 0.617571,
		0.189961, 0.981429, -0.026695,
		-0.602545, 0.138007, 0.786062,
		31.037432, 33.629726, 46.317696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844603, 33.855770, 46.228039>,  <31.459213, 33.533123, 45.767452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844603, 33.855770, 46.228039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.554489, 33.681812, 46.441517>,  <31.380421, 33.577438, 46.569603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.554489, 33.681812, 46.441517>,  <31.844603, 33.855770, 46.228039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554489, 33.681812, 46.441517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643996, -0.154518, 0.749262,
		-0.243383, 0.887125, 0.392139,
		-0.725282, -0.434894, 0.533698,
		31.336905, 33.551346, 46.601627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030785, 33.885609, 46.984001>,  <31.844603, 33.855770, 46.228039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030785, 33.885609, 46.984001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.754536, 33.609035, 47.068810>,  <31.588785, 33.443092, 47.119694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.754536, 33.609035, 47.068810>,  <32.030785, 33.885609, 46.984001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754536, 33.609035, 47.068810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608846, -0.397653, 0.686424,
		-0.390309, 0.603149, 0.695608,
		-0.690626, -0.691436, 0.212017,
		31.547348, 33.401604, 47.132416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880573, 33.985416, 47.733852>,  <32.030785, 33.885609, 46.984001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880573, 33.985416, 47.733852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.842278, 33.608715, 47.604893>,  <31.819300, 33.382694, 47.527515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.842278, 33.608715, 47.604893>,  <31.880573, 33.985416, 47.733852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842278, 33.608715, 47.604893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746015, -0.282316, 0.603124,
		-0.659011, -0.182770, 0.729589,
		-0.095742, -0.941750, -0.322399,
		31.813555, 33.326191, 47.508175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757437, 33.515202, 48.327148>,  <31.880573, 33.985416, 47.733852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757437, 33.515202, 48.327148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.928633, 33.313229, 48.027317>,  <32.031349, 33.192047, 47.847416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.928633, 33.313229, 48.027317>,  <31.757437, 33.515202, 48.327148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928633, 33.313229, 48.027317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829846, -0.108997, 0.547243,
		-0.358021, -0.856252, 0.372363,
		0.427991, -0.504928, -0.749581,
		32.057030, 33.161751, 47.802444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304312, 33.607349, 48.989410>,  <31.757437, 33.515202, 48.327148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304312, 33.607349, 48.989410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.312353, 33.415325, 48.638607>,  <31.317179, 33.300110, 48.428127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.312353, 33.415325, 48.638607>,  <31.304312, 33.607349, 48.989410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312353, 33.415325, 48.638607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305401, 0.832308, -0.462596,
		0.952012, 0.277139, -0.129877,
		0.020106, -0.480061, -0.877005,
		31.318384, 33.271305, 48.375507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034527, 33.559963, 49.226479>,  <31.304312, 33.607349, 48.989410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034527, 33.559963, 49.226479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.244751, 33.455055, 49.550209>,  <32.370884, 33.392113, 49.744446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.244751, 33.455055, 49.550209>,  <32.034527, 33.559963, 49.226479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244751, 33.455055, 49.550209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850732, 0.169307, -0.497585,
		-0.006524, 0.950027, 0.312100,
		0.525559, -0.262268, 0.809323,
		32.402420, 33.376373, 49.793007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602173, 34.050991, 49.233837>,  <32.034527, 33.559963, 49.226479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602173, 34.050991, 49.233837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733349, 33.780014, 49.497208>,  <32.812054, 33.617428, 49.655231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733349, 33.780014, 49.497208>,  <32.602173, 34.050991, 49.233837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733349, 33.780014, 49.497208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893999, -0.002718, -0.448061,
		0.305326, 0.735569, 0.604743,
		0.327936, -0.677444, 0.658428,
		32.831730, 33.576782, 49.694736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230022, 34.330276, 49.481403>,  <32.602173, 34.050991, 49.233837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230022, 34.330276, 49.481403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250267, 33.937408, 49.553833>,  <33.262413, 33.701687, 49.597290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250267, 33.937408, 49.553833>,  <33.230022, 34.330276, 49.481403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250267, 33.937408, 49.553833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879917, -0.041907, -0.473276,
		0.472424, 0.183285, 0.862104,
		0.050616, -0.982166, 0.181074,
		33.265453, 33.642757, 49.608154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868282, 34.240295, 49.819084>,  <33.230022, 34.330276, 49.481403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868282, 34.240295, 49.819084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764030, 33.897766, 49.640747>,  <33.701477, 33.692249, 49.533745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764030, 33.897766, 49.640747>,  <33.868282, 34.240295, 49.819084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764030, 33.897766, 49.640747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927160, -0.093264, -0.362872,
		0.269156, -0.507945, 0.818258,
		-0.260633, -0.856326, -0.445844,
		33.685841, 33.640869, 49.506992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432281, 33.764954, 50.036945>,  <33.868282, 34.240295, 49.819084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432281, 33.764954, 50.036945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260685, 33.596123, 49.717491>,  <34.157726, 33.494823, 49.525818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260685, 33.596123, 49.717491>,  <34.432281, 33.764954, 50.036945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260685, 33.596123, 49.717491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863839, 0.066800, -0.499320,
		0.264102, -0.904093, 0.335954,
		-0.428990, -0.422082, -0.798633,
		34.131989, 33.469498, 49.477901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866276, 33.373730, 49.756977>,  <34.432281, 33.764954, 50.036945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866276, 33.373730, 49.756977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.618752, 33.381840, 49.442863>,  <34.470238, 33.386703, 49.254395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.618752, 33.381840, 49.442863>,  <34.866276, 33.373730, 49.756977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618752, 33.381840, 49.442863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778172, 0.152454, -0.609268,
		0.107367, -0.988103, -0.110116,
		-0.618806, 0.020274, -0.785282,
		34.433109, 33.387920, 49.207279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075970, 32.799732, 49.323349>,  <34.866276, 33.373730, 49.756977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075970, 32.799732, 49.323349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881344, 33.068287, 49.099743>,  <34.764568, 33.229420, 48.965580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881344, 33.068287, 49.099743>,  <35.075970, 32.799732, 49.323349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881344, 33.068287, 49.099743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729280, -0.040195, -0.683034,
		-0.481049, -0.740017, -0.470071,
		-0.486562, 0.671385, -0.559016,
		34.735374, 33.269703, 48.932037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094048, 32.589001, 48.569279>,  <35.075970, 32.799732, 49.323349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094048, 32.589001, 48.569279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963493, 32.958096, 48.487267>,  <34.885162, 33.179550, 48.438061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963493, 32.958096, 48.487267>,  <35.094048, 32.589001, 48.569279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963493, 32.958096, 48.487267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600789, 0.035056, -0.798638,
		-0.729742, -0.383843, -0.565810,
		-0.326387, 0.922732, -0.205027,
		34.865578, 33.234917, 48.425758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883709, 32.535721, 47.865055>,  <35.094048, 32.589001, 48.569279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883709, 32.535721, 47.865055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929604, 32.920620, 47.963772>,  <34.957142, 33.151562, 48.023003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929604, 32.920620, 47.963772>,  <34.883709, 32.535721, 47.865055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929604, 32.920620, 47.963772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592891, 0.133001, -0.794223,
		-0.797067, 0.237446, -0.555251,
		0.114736, 0.962253, 0.246791,
		34.964024, 33.209297, 48.037807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662998, 32.906609, 47.280708>,  <34.883709, 32.535721, 47.865055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662998, 32.906609, 47.280708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.936134, 33.080410, 47.515636>,  <35.100014, 33.184692, 47.656593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.936134, 33.080410, 47.515636>,  <34.662998, 32.906609, 47.280708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936134, 33.080410, 47.515636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633653, 0.047883, -0.772134,
		-0.363617, 0.899396, -0.242628,
		0.682836, 0.434504, 0.587317,
		35.140984, 33.210762, 47.691830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210144, 33.279125, 46.807167>,  <34.662998, 32.906609, 47.280708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210144, 33.279125, 46.807167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377968, 33.323845, 47.167492>,  <35.478661, 33.350677, 47.383686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377968, 33.323845, 47.167492>,  <35.210144, 33.279125, 46.807167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377968, 33.323845, 47.167492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856176, 0.280930, -0.433636,
		-0.301548, 0.953194, 0.022144,
		0.419560, 0.111803, 0.900816,
		35.503838, 33.357388, 47.437737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622822, 33.957859, 46.813011>,  <35.210144, 33.279125, 46.807167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622822, 33.957859, 46.813011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779381, 33.720829, 47.094624>,  <35.873318, 33.578609, 47.263592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779381, 33.720829, 47.094624>,  <35.622822, 33.957859, 46.813011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779381, 33.720829, 47.094624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918742, 0.208258, -0.335472,
		0.052172, 0.778129, 0.625934,
		0.391396, -0.592574, 0.704035,
		35.896801, 33.543056, 47.305836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145828, 34.287262, 47.034889>,  <35.622822, 33.957859, 46.813011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145828, 34.287262, 47.034889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238998, 33.922169, 47.169151>,  <36.294899, 33.703114, 47.249710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238998, 33.922169, 47.169151>,  <36.145828, 34.287262, 47.034889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238998, 33.922169, 47.169151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947127, 0.134585, -0.291268,
		0.220676, 0.385754, 0.895821,
		0.232922, -0.912732, 0.335659,
		36.308876, 33.648350, 47.269848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802483, 34.276314, 47.504570>,  <36.145828, 34.287262, 47.034889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802483, 34.276314, 47.504570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769135, 33.907402, 47.353603>,  <36.749126, 33.686054, 47.263023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.769135, 33.907402, 47.353603>,  <36.802483, 34.276314, 47.504570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769135, 33.907402, 47.353603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959427, 0.028081, -0.280556,
		0.269350, -0.385492, 0.882523,
		-0.083370, -0.922284, -0.377415,
		36.744125, 33.630718, 47.240379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419437, 33.854919, 47.605801>,  <36.802483, 34.276314, 47.504570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419437, 33.854919, 47.605801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.273079, 33.590816, 47.343449>,  <37.185265, 33.432354, 47.186039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.273079, 33.590816, 47.343449>,  <37.419437, 33.854919, 47.605801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273079, 33.590816, 47.343449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927427, -0.317332, -0.197935,
		-0.077442, -0.680702, 0.728455,
		-0.365897, -0.660261, -0.655877,
		37.163311, 33.392738, 47.146687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991386, 33.573952, 48.148823>,  <37.419437, 33.854919, 47.605801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991386, 33.573952, 48.148823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239006, 33.263294, 48.102154>,  <38.387577, 33.076900, 48.074154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239006, 33.263294, 48.102154>,  <37.991386, 33.573952, 48.148823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239006, 33.263294, 48.102154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594817, 0.560657, -0.576069,
		0.512809, 0.287218, 0.809032,
		0.619047, -0.776640, -0.116668,
		38.424721, 33.030304, 48.067154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663086, 33.621387, 48.408474>,  <37.991386, 33.573952, 48.148823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663086, 33.621387, 48.408474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681374, 33.374886, 48.093987>,  <38.692348, 33.226982, 47.905296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681374, 33.374886, 48.093987>,  <38.663086, 33.621387, 48.408474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681374, 33.374886, 48.093987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522860, 0.685386, -0.506817,
		0.851192, -0.387909, 0.353553,
		0.045722, -0.616257, -0.786217,
		38.695091, 33.190010, 47.858120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327488, 33.547684, 48.237186>,  <38.663086, 33.621387, 48.408474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327488, 33.547684, 48.237186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.138935, 33.446133, 47.899345>,  <39.025803, 33.385201, 47.696640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.138935, 33.446133, 47.899345>,  <39.327488, 33.547684, 48.237186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138935, 33.446133, 47.899345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617898, 0.588262, -0.521681,
		0.629289, -0.767785, -0.120423,
		-0.471379, -0.253879, -0.844599,
		38.997520, 33.369968, 47.645966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969181, 32.970169, 48.505867>,  <39.327488, 33.547684, 48.237186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969181, 32.970169, 48.505867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832573, 32.718994, 48.226135>,  <38.750610, 32.568291, 48.058296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832573, 32.718994, 48.226135>,  <38.969181, 32.970169, 48.505867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832573, 32.718994, 48.226135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578825, -0.726739, 0.369881,
		-0.740492, -0.278469, 0.611659,
		-0.341517, -0.627937, -0.699329,
		38.730118, 32.530613, 48.016338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020737, 32.357269, 48.865635>,  <38.969181, 32.970169, 48.505867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020737, 32.357269, 48.865635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936382, 32.215759, 48.501137>,  <38.885769, 32.130852, 48.282436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936382, 32.215759, 48.501137>,  <39.020737, 32.357269, 48.865635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936382, 32.215759, 48.501137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498910, -0.840603, 0.210890,
		-0.840603, -0.410155, 0.353779,
		-0.210890, -0.353779, -0.911244,
		38.873116, 32.109627, 48.227764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296871, 32.421593, 49.554527>,  <39.020737, 32.357269, 48.865635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296871, 32.421593, 49.554527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108994, 32.120243, 49.370434>,  <38.996269, 31.939432, 49.259979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108994, 32.120243, 49.370434>,  <39.296871, 32.421593, 49.554527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108994, 32.120243, 49.370434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077373, -0.484177, 0.871542,
		-0.879434, 0.444965, 0.169123,
		-0.469691, -0.753378, -0.460230,
		38.968086, 31.894230, 49.232365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756779, 32.301624, 49.912670>,  <39.296871, 32.421593, 49.554527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756779, 32.301624, 49.912670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869591, 31.964529, 49.729259>,  <38.937279, 31.762272, 49.619213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869591, 31.964529, 49.729259>,  <38.756779, 32.301624, 49.912670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869591, 31.964529, 49.729259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196734, -0.416970, 0.887374,
		-0.939017, -0.340476, 0.048196,
		0.282033, -0.842741, -0.458525,
		38.954201, 31.711706, 49.591702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134724, 32.405979, 50.431267>,  <38.756779, 32.301624, 49.912670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134724, 32.405979, 50.431267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.851105, 32.683327, 50.379887>,  <37.680935, 32.849735, 50.349060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.851105, 32.683327, 50.379887>,  <38.134724, 32.405979, 50.431267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851105, 32.683327, 50.379887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423831, -0.273457, 0.863475,
		0.563578, 0.666683, 0.487763,
		-0.709047, 0.693365, -0.128446,
		37.638390, 32.891335, 50.341354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916451, 32.624588, 51.205704>,  <38.134724, 32.405979, 50.431267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916451, 32.624588, 51.205704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.623631, 32.797508, 50.995094>,  <37.447937, 32.901260, 50.868729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.623631, 32.797508, 50.995094>,  <37.916451, 32.624588, 51.205704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623631, 32.797508, 50.995094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558906, 0.060807, 0.826999,
		0.389525, 0.899679, 0.197100,
		-0.732048, 0.432297, -0.526521,
		37.404015, 32.927197, 50.837139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711304, 33.334473, 51.502026>,  <37.916451, 32.624588, 51.205704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711304, 33.334473, 51.502026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.409351, 33.187195, 51.284924>,  <37.228180, 33.098827, 51.154663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.409351, 33.187195, 51.284924>,  <37.711304, 33.334473, 51.502026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409351, 33.187195, 51.284924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625847, 0.156936, 0.763994,
		-0.196124, 0.916407, -0.348905,
		-0.754885, -0.368198, -0.542752,
		37.182884, 33.076736, 51.122097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173534, 33.829010, 51.643112>,  <37.711304, 33.334473, 51.502026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173534, 33.829010, 51.643112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988338, 33.513023, 51.482319>,  <36.877220, 33.323433, 51.385841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988338, 33.513023, 51.482319>,  <37.173534, 33.829010, 51.643112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988338, 33.513023, 51.482319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815312, 0.201645, 0.542776,
		-0.347716, 0.579044, -0.737429,
		-0.462990, -0.789967, -0.401986,
		36.849442, 33.276031, 51.361725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519020, 34.103745, 51.366280>,  <37.173534, 33.829010, 51.643112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519020, 34.103745, 51.366280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.508747, 33.719929, 51.478443>,  <36.502583, 33.489639, 51.545742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.508747, 33.719929, 51.478443>,  <36.519020, 34.103745, 51.366280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508747, 33.719929, 51.478443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791173, 0.190964, 0.581016,
		-0.611054, -0.206929, -0.764064,
		-0.025680, -0.959538, 0.280405,
		36.501041, 33.432068, 51.562565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837925, 34.021870, 51.393475>,  <36.519020, 34.103745, 51.366280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837925, 34.021870, 51.393475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.972988, 33.708454, 51.602108>,  <36.054024, 33.520405, 51.727287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.972988, 33.708454, 51.602108>,  <35.837925, 34.021870, 51.393475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972988, 33.708454, 51.602108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779837, 0.077441, 0.621174,
		-0.527109, -0.616492, -0.584888,
		0.337655, -0.783544, 0.521583,
		36.074284, 33.473392, 51.758583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256798, 33.635704, 51.652931>,  <35.837925, 34.021870, 51.393475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256798, 33.635704, 51.652931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535652, 33.505783, 51.908588>,  <35.702965, 33.427830, 52.061985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535652, 33.505783, 51.908588>,  <35.256798, 33.635704, 51.652931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535652, 33.505783, 51.908588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658385, 0.062847, 0.750053,
		-0.283787, -0.943691, -0.170032,
		0.697133, -0.324802, 0.639147,
		35.744793, 33.408344, 52.100334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935875, 33.117989, 52.139587>,  <35.256798, 33.635704, 51.652931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935875, 33.117989, 52.139587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.271496, 33.259621, 52.304813>,  <35.472866, 33.344601, 52.403950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.271496, 33.259621, 52.304813>,  <34.935875, 33.117989, 52.139587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271496, 33.259621, 52.304813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498174, 0.194866, 0.844897,
		0.218683, -0.914683, 0.339903,
		0.839048, 0.354095, 0.413057,
		35.523212, 33.365845, 52.428734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833279, 32.887627, 52.911167>,  <34.935875, 33.117989, 52.139587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833279, 32.887627, 52.911167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.134880, 33.150307, 52.905132>,  <35.315842, 33.307915, 52.901512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.134880, 33.150307, 52.905132>,  <34.833279, 32.887627, 52.911167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134880, 33.150307, 52.905132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236980, 0.293372, 0.926161,
		0.612637, -0.694749, 0.376828,
		0.754000, 0.656701, -0.015088,
		35.361080, 33.347317, 52.900604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154842, 32.867599, 53.562569>,  <34.833279, 32.887627, 52.911167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154842, 32.867599, 53.562569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.249695, 33.226955, 53.414692>,  <35.306606, 33.442570, 53.325966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.249695, 33.226955, 53.414692>,  <35.154842, 32.867599, 53.562569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249695, 33.226955, 53.414692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213885, 0.419489, 0.882203,
		0.947641, -0.130125, 0.291625,
		0.237130, 0.898386, -0.369693,
		35.320835, 33.496471, 53.303783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483589, 33.342415, 54.107906>,  <35.154842, 32.867599, 53.562569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483589, 33.342415, 54.107906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383244, 33.623947, 53.842068>,  <35.323036, 33.792866, 53.682564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383244, 33.623947, 53.842068>,  <35.483589, 33.342415, 54.107906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383244, 33.623947, 53.842068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340604, 0.578472, 0.741188,
		0.906121, 0.412303, 0.094608,
		-0.250866, 0.703830, -0.664598,
		35.307983, 33.835094, 53.642689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715591, 33.990959, 54.402115>,  <35.483589, 33.342415, 54.107906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715591, 33.990959, 54.402115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.476555, 34.100098, 54.100533>,  <35.333134, 34.165581, 53.919582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.476555, 34.100098, 54.100533>,  <35.715591, 33.990959, 54.402115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476555, 34.100098, 54.100533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320525, 0.780629, 0.536548,
		0.734949, 0.562296, -0.379043,
		-0.597590, 0.272843, -0.753952,
		35.297279, 34.181950, 53.874348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867954, 34.725174, 54.287422>,  <35.715591, 33.990959, 54.402115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867954, 34.725174, 54.287422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500492, 34.659813, 54.143547>,  <35.280014, 34.620598, 54.057220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500492, 34.659813, 54.143547>,  <35.867954, 34.725174, 54.287422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500492, 34.659813, 54.143547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337391, 0.798155, 0.499115,
		0.205535, 0.579870, -0.788357,
		-0.918653, -0.163399, -0.359692,
		35.224895, 34.610794, 54.035641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602650, 35.291283, 53.802162>,  <35.867954, 34.725174, 54.287422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602650, 35.291283, 53.802162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.297295, 35.096386, 53.971790>,  <35.114082, 34.979446, 54.073566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.297295, 35.096386, 53.971790>,  <35.602650, 35.291283, 53.802162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297295, 35.096386, 53.971790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332331, 0.859216, 0.388978,
		-0.553895, 0.156009, -0.817840,
		-0.763385, -0.487246, 0.424069,
		35.068279, 34.950211, 54.099010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986156, 35.736816, 53.726379>,  <35.602650, 35.291283, 53.802162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986156, 35.736816, 53.726379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837208, 35.477028, 53.991566>,  <34.747837, 35.321156, 54.150677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837208, 35.477028, 53.991566>,  <34.986156, 35.736816, 53.726379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837208, 35.477028, 53.991566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502183, 0.741735, 0.444569,
		-0.780481, -0.167386, -0.602354,
		-0.372373, -0.649470, 0.662969,
		34.725494, 35.282188, 54.190456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245644, 35.838299, 53.828491>,  <34.986156, 35.736816, 53.726379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245644, 35.838299, 53.828491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341434, 35.646290, 54.166065>,  <34.398911, 35.531086, 54.368610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341434, 35.646290, 54.166065>,  <34.245644, 35.838299, 53.828491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341434, 35.646290, 54.166065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518189, 0.671881, 0.529204,
		-0.821054, -0.564051, -0.087841,
		0.239479, -0.480023, 0.843935,
		34.413277, 35.502281, 54.419247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563198, 35.749817, 54.212616>,  <34.245644, 35.838299, 53.828491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563198, 35.749817, 54.212616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858715, 35.734383, 54.481747>,  <34.036026, 35.725121, 54.643227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858715, 35.734383, 54.481747>,  <33.563198, 35.749817, 54.212616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858715, 35.734383, 54.481747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513498, 0.614351, 0.599077,
		-0.436471, -0.788089, 0.434061,
		0.738792, -0.038590, 0.672828,
		34.080353, 35.722805, 54.683594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229549, 35.723938, 54.726673>,  <33.563198, 35.749817, 54.212616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229549, 35.723938, 54.726673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.588772, 35.815720, 54.876793>,  <33.804306, 35.870789, 54.966866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.588772, 35.815720, 54.876793>,  <33.229549, 35.723938, 54.726673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588772, 35.815720, 54.876793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439833, 0.455545, 0.773967,
		0.006626, -0.860133, 0.510027,
		0.898055, 0.229456, 0.375297,
		33.858189, 35.884556, 54.989384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115662, 35.672787, 55.433723>,  <33.229549, 35.723938, 54.726673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115662, 35.672787, 55.433723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422180, 35.924274, 55.380795>,  <33.606091, 36.075165, 55.349037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422180, 35.924274, 55.380795>,  <33.115662, 35.672787, 55.433723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422180, 35.924274, 55.380795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397236, 0.625490, 0.671540,
		0.504971, -0.462036, 0.729059,
		0.766294, 0.628717, -0.132317,
		33.652069, 36.112888, 55.341099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343262, 35.885555, 56.135399>,  <33.115662, 35.672787, 55.433723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343262, 35.885555, 56.135399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.509754, 36.146915, 55.882477>,  <33.609650, 36.303734, 55.730724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.509754, 36.146915, 55.882477>,  <33.343262, 35.885555, 56.135399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509754, 36.146915, 55.882477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229765, 0.748427, 0.622146,
		0.879749, -0.113675, 0.461649,
		0.416234, 0.653403, -0.632309,
		33.634624, 36.342937, 55.692783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761211, 36.278454, 56.504963>,  <33.343262, 35.885555, 56.135399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761211, 36.278454, 56.504963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.690266, 36.520100, 56.194199>,  <33.647697, 36.665085, 56.007740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.690266, 36.520100, 56.194199>,  <33.761211, 36.278454, 56.504963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690266, 36.520100, 56.194199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265344, 0.730837, 0.628864,
		0.947699, 0.317688, 0.030671,
		-0.177367, 0.604112, -0.776910,
		33.637054, 36.701332, 55.961124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762135, 36.956837, 56.776337>,  <33.761211, 36.278454, 56.504963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762135, 36.956837, 56.776337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.598553, 37.060612, 56.426376>,  <33.500404, 37.122875, 56.216400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.598553, 37.060612, 56.426376>,  <33.762135, 36.956837, 56.776337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598553, 37.060612, 56.426376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432570, 0.789069, 0.436180,
		0.803519, 0.556832, -0.210466,
		-0.408951, 0.259438, -0.874901,
		33.475868, 37.138443, 56.163906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748154, 37.768665, 56.776985>,  <33.762135, 36.956837, 56.776337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748154, 37.768665, 56.776985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485897, 37.610661, 56.519585>,  <33.328541, 37.515858, 56.365143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485897, 37.610661, 56.519585>,  <33.748154, 37.768665, 56.776985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485897, 37.610661, 56.519585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705794, 0.623445, 0.336410,
		0.268301, 0.674745, -0.687556,
		-0.655644, -0.395014, -0.643502,
		33.289204, 37.492157, 56.326534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505554, 38.330299, 56.483833>,  <33.748154, 37.768665, 56.776985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505554, 38.330299, 56.483833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250916, 38.034210, 56.397293>,  <33.098133, 37.856556, 56.345367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250916, 38.034210, 56.397293>,  <33.505554, 38.330299, 56.483833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250916, 38.034210, 56.397293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769856, 0.626490, 0.121780,
		0.045398, 0.244085, -0.968691,
		-0.636600, -0.740224, -0.216352,
		33.059937, 37.812141, 56.332386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003166, 38.591461, 55.849155>,  <33.505554, 38.330299, 56.483833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003166, 38.591461, 55.849155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.830936, 38.321087, 56.088394>,  <32.727600, 38.158863, 56.231937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.830936, 38.321087, 56.088394>,  <33.003166, 38.591461, 55.849155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830936, 38.321087, 56.088394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816872, 0.573664, 0.060246,
		-0.383829, -0.462628, -0.799156,
		-0.430575, -0.675932, 0.598097,
		32.701763, 38.118309, 56.267822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250839, 38.744091, 55.827557>,  <33.003166, 38.591461, 55.849155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250839, 38.744091, 55.827557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.253319, 38.496330, 56.141579>,  <32.254807, 38.347675, 56.329990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.253319, 38.496330, 56.141579>,  <32.250839, 38.744091, 55.827557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253319, 38.496330, 56.141579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916289, 0.310881, 0.252523,
		-0.400470, -0.720900, -0.565620,
		0.006203, -0.619400, 0.785051,
		32.255180, 38.310509, 56.377094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601849, 38.594845, 55.838737>,  <32.250839, 38.744091, 55.827557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601849, 38.594845, 55.838737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.774010, 38.503010, 56.187920>,  <31.877306, 38.447910, 56.397427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.774010, 38.503010, 56.187920>,  <31.601849, 38.594845, 55.838737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774010, 38.503010, 56.187920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725768, 0.486982, 0.485911,
		-0.536669, -0.842698, 0.042973,
		0.430403, -0.229586, 0.872951,
		31.903131, 38.434135, 56.449806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117870, 38.185104, 56.282806>,  <31.601849, 38.594845, 55.838737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117870, 38.185104, 56.282806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.393978, 38.361015, 56.512630>,  <31.559643, 38.466564, 56.650524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.393978, 38.361015, 56.512630>,  <31.117870, 38.185104, 56.282806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393978, 38.361015, 56.512630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693603, 0.628282, 0.352387,
		-0.206015, -0.641760, 0.738716,
		0.690270, 0.439779, 0.574563,
		31.601059, 38.492950, 56.684998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850485, 38.120548, 56.907906>,  <31.117870, 38.185104, 56.282806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850485, 38.120548, 56.907906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107164, 38.415161, 56.993458>,  <31.261173, 38.591927, 57.044788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107164, 38.415161, 56.993458>,  <30.850485, 38.120548, 56.907906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107164, 38.415161, 56.993458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713632, 0.471235, 0.518331,
		0.280980, -0.485243, 0.828003,
		0.641700, 0.736530, 0.213877,
		31.299675, 38.636120, 57.057621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771355, 38.347252, 57.672665>,  <30.850485, 38.120548, 56.907906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771355, 38.347252, 57.672665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.933752, 38.655819, 57.476673>,  <31.031191, 38.840961, 57.359077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.933752, 38.655819, 57.476673>,  <30.771355, 38.347252, 57.672665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933752, 38.655819, 57.476673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556148, 0.634001, 0.537348,
		0.725169, 0.054342, 0.686423,
		0.405992, 0.771421, -0.489980,
		31.055550, 38.887245, 57.329678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014936, 38.836941, 58.215652>,  <30.771355, 38.347252, 57.672665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014936, 38.836941, 58.215652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010904, 39.045952, 57.874626>,  <31.008486, 39.171360, 57.670010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010904, 39.045952, 57.874626>,  <31.014936, 38.836941, 58.215652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010904, 39.045952, 57.874626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389053, 0.783377, 0.484724,
		0.921160, 0.336578, 0.195396,
		-0.010079, 0.522528, -0.852563,
		31.007881, 39.202709, 57.618858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414200, 39.534428, 58.437672>,  <31.014936, 38.836941, 58.215652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414200, 39.534428, 58.437672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.168610, 39.577320, 58.124870>,  <31.021255, 39.603054, 57.937187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.168610, 39.577320, 58.124870>,  <31.414200, 39.534428, 58.437672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168610, 39.577320, 58.124870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326979, 0.867173, 0.375627,
		0.718413, 0.486326, -0.497363,
		-0.613977, 0.107228, -0.782007,
		30.984417, 39.609489, 57.890266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427725, 40.191128, 58.348961>,  <31.414200, 39.534428, 58.437672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427725, 40.191128, 58.348961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108471, 40.106361, 58.123367>,  <30.916918, 40.055504, 57.988010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108471, 40.106361, 58.123367>,  <31.427725, 40.191128, 58.348961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108471, 40.106361, 58.123367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502736, 0.750131, 0.429604,
		0.332020, 0.626415, -0.705242,
		-0.798134, -0.211914, -0.563980,
		30.869030, 40.042786, 57.954174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212421, 40.821598, 58.108585>,  <31.427725, 40.191128, 58.348961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212421, 40.821598, 58.108585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.892073, 40.582829, 58.089478>,  <30.699863, 40.439568, 58.078014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.892073, 40.582829, 58.089478>,  <31.212421, 40.821598, 58.108585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892073, 40.582829, 58.089478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577095, 0.748045, 0.327704,
		-0.159882, 0.290016, -0.943572,
		-0.800874, -0.596925, -0.047767,
		30.651810, 40.403751, 58.075146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771944, 41.165672, 57.690926>,  <31.212421, 40.821598, 58.108585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771944, 41.165672, 57.690926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.567608, 40.908382, 57.919067>,  <30.445007, 40.754009, 58.055954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.567608, 40.908382, 57.919067>,  <30.771944, 41.165672, 57.690926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567608, 40.908382, 57.919067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583533, 0.746642, 0.319396,
		-0.631294, -0.169661, -0.756758,
		-0.510839, -0.643227, 0.570354,
		30.414356, 40.715416, 58.090172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131428, 41.360016, 57.531036>,  <30.771944, 41.165672, 57.690926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131428, 41.360016, 57.531036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.088120, 41.166553, 57.878452>,  <30.062134, 41.050476, 58.086903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.088120, 41.166553, 57.878452>,  <30.131428, 41.360016, 57.531036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088120, 41.166553, 57.878452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694617, 0.661822, 0.281954,
		-0.711185, -0.572773, -0.407612,
		-0.108271, -0.483655, 0.868536,
		30.055637, 41.021458, 58.139011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374262, 41.217003, 57.667351>,  <30.131428, 41.360016, 57.531036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374262, 41.217003, 57.667351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.568068, 41.201271, 58.016911>,  <29.684351, 41.191830, 58.226646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.568068, 41.201271, 58.016911>,  <29.374262, 41.217003, 57.667351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568068, 41.201271, 58.016911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635216, 0.671033, 0.382381,
		-0.601456, -0.740383, 0.300139,
		0.484512, -0.039332, 0.873900,
		29.713421, 41.189472, 58.279079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850662, 41.394215, 58.076653>,  <29.374262, 41.217003, 57.667351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850662, 41.394215, 58.076653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.167717, 41.404007, 58.320332>,  <29.357950, 41.409882, 58.466541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.167717, 41.404007, 58.320332>,  <28.850662, 41.394215, 58.076653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167717, 41.404007, 58.320332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472362, 0.656405, 0.588223,
		-0.385485, -0.754011, 0.531854,
		0.792638, 0.024477, 0.609200,
		29.405508, 41.411350, 58.503090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496588, 41.277439, 58.680710>,  <28.850662, 41.394215, 58.076653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496588, 41.277439, 58.680710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.840780, 41.464581, 58.761391>,  <29.047295, 41.576866, 58.809799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.840780, 41.464581, 58.761391>,  <28.496588, 41.277439, 58.680710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840780, 41.464581, 58.761391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453748, 0.523682, 0.721020,
		0.231703, -0.711947, 0.662906,
		0.860480, 0.467855, 0.201706,
		29.098925, 41.604939, 58.821903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461472, 41.346321, 59.363449>,  <28.496588, 41.277439, 58.680710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461472, 41.346321, 59.363449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.745493, 41.606846, 59.256405>,  <28.915905, 41.763161, 59.192177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.745493, 41.606846, 59.256405>,  <28.461472, 41.346321, 59.363449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745493, 41.606846, 59.256405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390605, 0.680545, 0.619908,
		0.585876, -0.335638, 0.737629,
		0.710055, 0.651311, -0.267613,
		28.958509, 41.802238, 59.176121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807238, 41.701965, 60.010925>,  <28.461472, 41.346321, 59.363449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807238, 41.701965, 60.010925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.820091, 41.913074, 59.671417>,  <28.827805, 42.039742, 59.467712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.820091, 41.913074, 59.671417>,  <28.807238, 41.701965, 60.010925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820091, 41.913074, 59.671417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513235, 0.737415, 0.439101,
		0.857646, 0.421510, 0.294570,
		0.032135, 0.527777, -0.848775,
		28.829731, 42.071407, 59.416786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801874, 42.188202, 60.333450>,  <28.807238, 41.701965, 60.010925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801874, 42.188202, 60.333450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.655952, 42.299194, 59.977940>,  <28.568399, 42.365788, 59.764633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.655952, 42.299194, 59.977940>,  <28.801874, 42.188202, 60.333450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655952, 42.299194, 59.977940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477606, 0.763642, 0.434447,
		0.799257, 0.582973, -0.146054,
		-0.364804, 0.277478, -0.888777,
		28.546511, 42.382439, 59.711308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859636, 42.860832, 60.452057>,  <28.801874, 42.188202, 60.333450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859636, 42.860832, 60.452057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.593559, 42.819016, 60.156330>,  <28.433912, 42.793926, 59.978893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.593559, 42.819016, 60.156330>,  <28.859636, 42.860832, 60.452057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593559, 42.819016, 60.156330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484091, 0.814238, 0.320425,
		0.568482, 0.571041, -0.592233,
		-0.665195, -0.104539, -0.739316,
		28.394001, 42.787655, 59.934536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777660, 43.480690, 60.192669>,  <28.859636, 42.860832, 60.452057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777660, 43.480690, 60.192669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.439718, 43.272339, 60.143833>,  <28.236952, 43.147327, 60.114532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.439718, 43.272339, 60.143833>,  <28.777660, 43.480690, 60.192669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439718, 43.272339, 60.143833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534913, 0.818473, 0.209693,
		-0.009300, 0.242465, -0.970115,
		-0.844856, -0.520877, -0.122086,
		28.186262, 43.116077, 60.107208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343298, 43.992081, 59.960670>,  <28.777660, 43.480690, 60.192669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343298, 43.992081, 59.960670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.095009, 43.722523, 60.120953>,  <27.946035, 43.560787, 60.217121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.095009, 43.722523, 60.120953>,  <28.343298, 43.992081, 59.960670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095009, 43.722523, 60.120953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667369, 0.722378, 0.181073,
		-0.411486, -0.155023, -0.898136,
		-0.620723, -0.673897, 0.400706,
		27.908792, 43.520355, 60.241165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698574, 44.193436, 59.737896>,  <28.343298, 43.992081, 59.960670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698574, 44.193436, 59.737896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.644703, 44.002388, 60.085167>,  <27.612381, 43.887760, 60.293530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.644703, 44.002388, 60.085167>,  <27.698574, 44.193436, 59.737896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644703, 44.002388, 60.085167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641108, 0.710066, 0.291183,
		-0.755541, -0.517382, -0.401838,
		-0.134678, -0.477622, 0.868181,
		27.604300, 43.859100, 60.345623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185736, 44.595409, 59.419357>,  <27.698574, 44.193436, 59.737896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185736, 44.595409, 59.419357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.871529, 44.614689, 59.172573>,  <26.683004, 44.626259, 59.024502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.871529, 44.614689, 59.172573>,  <27.185736, 44.595409, 59.419357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871529, 44.614689, 59.172573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313897, -0.828153, -0.464362,
		-0.533318, -0.558426, 0.635399,
		-0.785519, 0.048202, -0.616957,
		26.635874, 44.629150, 58.987484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884678, 43.933491, 59.402664>,  <27.185736, 44.595409, 59.419357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884678, 43.933491, 59.402664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.876188, 44.164082, 59.075932>,  <26.871094, 44.302437, 58.879890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.876188, 44.164082, 59.075932>,  <26.884678, 43.933491, 59.402664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876188, 44.164082, 59.075932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600486, -0.645884, -0.471434,
		-0.799353, -0.500504, -0.332460,
		-0.021224, 0.576481, -0.816835,
		26.869822, 44.337025, 58.830879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865654, 43.482143, 58.796173>,  <26.884678, 43.933491, 59.402664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865654, 43.482143, 58.796173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.039011, 43.831699, 58.708099>,  <27.143024, 44.041435, 58.655254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.039011, 43.831699, 58.708099>,  <26.865654, 43.482143, 58.796173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039011, 43.831699, 58.708099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762332, -0.485804, -0.427603,
		-0.480646, 0.017465, -0.876741,
		0.433392, 0.873893, -0.220186,
		27.169029, 44.093868, 58.642044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263449, 43.441944, 58.235809>,  <26.865654, 43.482143, 58.796173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263449, 43.441944, 58.235809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.424459, 43.773312, 58.391598>,  <27.521065, 43.972134, 58.485069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.424459, 43.773312, 58.391598>,  <27.263449, 43.441944, 58.235809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424459, 43.773312, 58.391598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888905, -0.252091, -0.382489,
		-0.218681, 0.500164, -0.837863,
		0.402525, 0.828424, 0.389471,
		27.545218, 44.021839, 58.508438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551033, 43.971394, 57.725311>,  <27.263449, 43.441944, 58.235809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551033, 43.971394, 57.725311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.740707, 43.984879, 58.077225>,  <27.854511, 43.992970, 58.288372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.740707, 43.984879, 58.077225>,  <27.551033, 43.971394, 57.725311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740707, 43.984879, 58.077225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834956, -0.334195, -0.437222,
		0.279278, 0.941901, -0.186618,
		0.474186, 0.033711, 0.879779,
		27.882963, 43.994991, 58.341160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138630, 44.409172, 57.631344>,  <27.551033, 43.971394, 57.725311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138630, 44.409172, 57.631344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.201818, 44.145947, 57.925827>,  <28.239731, 43.988010, 58.102516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.201818, 44.145947, 57.925827>,  <28.138630, 44.409172, 57.631344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201818, 44.145947, 57.925827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822502, -0.324856, -0.466861,
		0.546384, 0.679283, 0.489938,
		0.157971, -0.658060, 0.736208,
		28.249210, 43.948528, 58.146690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905746, 44.469498, 57.905899>,  <28.138630, 44.409172, 57.631344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905746, 44.469498, 57.905899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.745405, 44.104767, 57.941410>,  <28.649200, 43.885929, 57.962719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.745405, 44.104767, 57.941410>,  <28.905746, 44.469498, 57.905899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745405, 44.104767, 57.941410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809134, -0.397818, -0.432485,
		0.429672, -0.101527, 0.897259,
		-0.400855, -0.911830, 0.088782,
		28.625149, 43.831219, 57.968044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479591, 43.929314, 58.168907>,  <28.905746, 44.469498, 57.905899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479591, 43.929314, 58.168907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.167696, 43.722755, 58.027294>,  <28.980558, 43.598820, 57.942326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.167696, 43.722755, 58.027294>,  <29.479591, 43.929314, 58.168907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167696, 43.722755, 58.027294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618813, -0.549577, -0.561280,
		0.095275, -0.656733, 0.748080,
		-0.779739, -0.516397, -0.354034,
		28.933775, 43.567837, 57.921085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664684, 43.185886, 58.225449>,  <29.479591, 43.929314, 58.168907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664684, 43.185886, 58.225449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.360514, 43.220093, 57.967941>,  <29.178011, 43.240616, 57.813435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.360514, 43.220093, 57.967941>,  <29.664684, 43.185886, 58.225449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360514, 43.220093, 57.967941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490543, -0.573981, -0.655678,
		-0.425582, -0.814391, 0.394521,
		-0.760425, 0.085515, -0.643770,
		29.132385, 43.245747, 57.774811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687605, 42.506798, 57.892048>,  <29.664684, 43.185886, 58.225449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687605, 42.506798, 57.892048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.462986, 42.741211, 57.658386>,  <29.328215, 42.881859, 57.518188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.462986, 42.741211, 57.658386>,  <29.687605, 42.506798, 57.892048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462986, 42.741211, 57.658386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238153, -0.561631, -0.792372,
		-0.792432, -0.584072, 0.175817,
		-0.561547, 0.586030, -0.584153,
		29.294521, 42.917019, 57.483139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379217, 42.049469, 57.525787>,  <29.687605, 42.506798, 57.892048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379217, 42.049469, 57.525787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.325520, 42.380138, 57.307217>,  <29.293301, 42.578541, 57.176075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.325520, 42.380138, 57.307217>,  <29.379217, 42.049469, 57.525787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325520, 42.380138, 57.307217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148593, -0.528393, -0.835895,
		-0.979744, -0.193408, -0.051906,
		-0.134243, 0.826676, -0.546429,
		29.285246, 42.628139, 57.143288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025143, 41.799885, 56.986969>,  <29.379217, 42.049469, 57.525787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025143, 41.799885, 56.986969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.175922, 42.150928, 56.868504>,  <29.266390, 42.361553, 56.797424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.175922, 42.150928, 56.868504>,  <29.025143, 41.799885, 56.986969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175922, 42.150928, 56.868504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229999, -0.398423, -0.887896,
		-0.897224, 0.266574, -0.352034,
		0.376948, 0.877609, -0.296163,
		29.289007, 42.414211, 56.779655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718487, 41.890533, 56.309994>,  <29.025143, 41.799885, 56.986969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718487, 41.890533, 56.309994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045704, 42.115231, 56.359398>,  <29.242033, 42.250050, 56.389042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045704, 42.115231, 56.359398>,  <28.718487, 41.890533, 56.309994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045704, 42.115231, 56.359398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362328, -0.336538, -0.869172,
		-0.446685, 0.755770, -0.478837,
		0.818041, 0.561742, 0.123511,
		29.291117, 42.283752, 56.396450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893946, 42.117569, 55.596958>,  <28.718487, 41.890533, 56.309994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893946, 42.117569, 55.596958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.230083, 42.174171, 55.806259>,  <29.431767, 42.208134, 55.931839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.230083, 42.174171, 55.806259>,  <28.893946, 42.117569, 55.596958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230083, 42.174171, 55.806259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530110, -0.416044, -0.738844,
		0.113149, 0.898268, -0.424632,
		0.840346, 0.141503, 0.523255,
		29.482187, 42.216621, 55.963234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390097, 42.603188, 55.266109>,  <28.893946, 42.117569, 55.596958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390097, 42.603188, 55.266109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.621355, 42.361927, 55.485912>,  <29.760111, 42.217171, 55.617794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.621355, 42.361927, 55.485912>,  <29.390097, 42.603188, 55.266109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621355, 42.361927, 55.485912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498214, -0.272386, -0.823158,
		0.646164, 0.749679, 0.143017,
		0.578148, -0.603148, 0.549507,
		29.794800, 42.180984, 55.650764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018911, 42.721863, 54.989552>,  <29.390097, 42.603188, 55.266109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018911, 42.721863, 54.989552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.067842, 42.377113, 55.186409>,  <30.097202, 42.170261, 55.304523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.067842, 42.377113, 55.186409>,  <30.018911, 42.721863, 54.989552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067842, 42.377113, 55.186409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707345, -0.272127, -0.652388,
		0.696203, 0.427921, 0.576355,
		0.122329, -0.861876, 0.492143,
		30.104542, 42.118549, 55.334053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771706, 42.645920, 54.911072>,  <30.018911, 42.721863, 54.989552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771706, 42.645920, 54.911072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.653481, 42.279537, 55.019638>,  <30.582546, 42.059708, 55.084778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.653481, 42.279537, 55.019638>,  <30.771706, 42.645920, 54.911072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653481, 42.279537, 55.019638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673681, -0.401276, -0.620590,
		0.677346, -0.000575, 0.735664,
		-0.295561, -0.915957, 0.271415,
		30.564812, 42.004749, 55.101063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446156, 42.241825, 55.025261>,  <30.771706, 42.645920, 54.911072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446156, 42.241825, 55.025261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.157618, 41.965023, 55.036499>,  <30.984495, 41.798943, 55.043243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.157618, 41.965023, 55.036499>,  <31.446156, 42.241825, 55.025261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157618, 41.965023, 55.036499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599862, -0.644541, -0.474059,
		0.346164, -0.325103, 0.880044,
		-0.721343, -0.692008, 0.028100,
		30.941216, 41.757420, 55.044930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632668, 41.576550, 55.360378>,  <31.446156, 42.241825, 55.025261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632668, 41.576550, 55.360378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.356276, 41.491505, 55.084019>,  <31.190441, 41.440479, 54.918201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.356276, 41.491505, 55.084019>,  <31.632668, 41.576550, 55.360378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356276, 41.491505, 55.084019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601431, -0.699327, -0.386294,
		-0.401033, -0.682449, 0.611094,
		-0.690980, -0.212614, -0.690899,
		31.148981, 41.427719, 54.876747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643673, 40.855522, 55.177696>,  <31.632668, 41.576550, 55.360378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643673, 40.855522, 55.177696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.478334, 41.011173, 54.848400>,  <31.379131, 41.104565, 54.650822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.478334, 41.011173, 54.848400>,  <31.643673, 40.855522, 55.177696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478334, 41.011173, 54.848400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410355, -0.727475, -0.549899,
		-0.812868, -0.565119, 0.141018,
		-0.413346, 0.389128, -0.823240,
		31.354330, 41.127911, 54.601429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317070, 40.261261, 54.821072>,  <31.643673, 40.855522, 55.177696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317070, 40.261261, 54.821072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.367550, 40.553562, 54.552723>,  <31.397839, 40.728943, 54.391712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.367550, 40.553562, 54.552723>,  <31.317070, 40.261261, 54.821072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367550, 40.553562, 54.552723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564852, -0.608877, -0.556966,
		-0.815485, -0.308655, -0.489608,
		0.126201, 0.730754, -0.670874,
		31.405411, 40.772789, 54.351460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179518, 39.968040, 54.221489>,  <31.317070, 40.261261, 54.821072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179518, 39.968040, 54.221489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.387016, 40.287155, 54.098564>,  <31.511517, 40.478622, 54.024811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.387016, 40.287155, 54.098564>,  <31.179518, 39.968040, 54.221489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387016, 40.287155, 54.098564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569214, -0.590500, -0.572105,
		-0.637884, 0.121854, -0.760432,
		0.518748, 0.797785, -0.307310,
		31.542641, 40.526489, 54.006371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206120, 39.913784, 53.525875>,  <31.179518, 39.968040, 54.221489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206120, 39.913784, 53.525875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.486326, 40.196281, 53.566864>,  <31.654449, 40.365780, 53.591457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.486326, 40.196281, 53.566864>,  <31.206120, 39.913784, 53.525875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486326, 40.196281, 53.566864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572454, -0.470365, -0.671605,
		-0.426114, 0.529133, -0.733789,
		0.700517, 0.706240, 0.102476,
		31.696482, 40.408154, 53.597607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452938, 40.083057, 52.772861>,  <31.206120, 39.913784, 53.525875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452938, 40.083057, 52.772861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742687, 40.206085, 53.019661>,  <31.916536, 40.279903, 53.167740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.742687, 40.206085, 53.019661>,  <31.452938, 40.083057, 52.772861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742687, 40.206085, 53.019661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683331, -0.438900, -0.583460,
		0.091342, 0.844254, -0.528102,
		0.724373, 0.307574, 0.616995,
		31.959999, 40.298359, 53.204758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972500, 40.471260, 52.460522>,  <31.452938, 40.083057, 52.772861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972500, 40.471260, 52.460522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.169361, 40.331432, 52.779419>,  <32.287479, 40.247536, 52.970757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.169361, 40.331432, 52.779419>,  <31.972500, 40.471260, 52.460522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169361, 40.331432, 52.779419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716069, -0.358209, -0.599109,
		0.495006, 0.865731, 0.074019,
		0.492153, -0.349565, 0.797239,
		32.317005, 40.226562, 53.018589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752186, 40.519939, 52.325668>,  <31.972500, 40.471260, 52.460522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752186, 40.519939, 52.325668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741531, 40.270657, 52.638309>,  <32.735138, 40.121086, 52.825893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741531, 40.270657, 52.638309>,  <32.752186, 40.519939, 52.325668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741531, 40.270657, 52.638309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736636, -0.540790, -0.406096,
		0.675765, 0.564942, 0.473480,
		-0.026632, -0.623208, 0.781603,
		32.733543, 40.083694, 52.872791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418644, 40.503056, 52.565060>,  <32.752186, 40.519939, 52.325668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418644, 40.503056, 52.565060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.225761, 40.170349, 52.675072>,  <33.110031, 39.970726, 52.741077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.225761, 40.170349, 52.675072>,  <33.418644, 40.503056, 52.565060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225761, 40.170349, 52.675072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722240, -0.555129, -0.412553,
		0.495825, -0.000299, 0.868423,
		-0.482210, -0.831764, 0.275031,
		33.081097, 39.920818, 52.757580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886593, 40.024071, 52.941818>,  <33.418644, 40.503056, 52.565060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886593, 40.024071, 52.941818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.588665, 39.797421, 52.800865>,  <33.409908, 39.661430, 52.716293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.588665, 39.797421, 52.800865>,  <33.886593, 40.024071, 52.941818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588665, 39.797421, 52.800865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664021, -0.681425, -0.307791,
		-0.065719, -0.463239, 0.883793,
		-0.744820, -0.566630, -0.352383,
		33.365219, 39.627430, 52.695148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089237, 39.309731, 53.034611>,  <33.886593, 40.024071, 52.941818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089237, 39.309731, 53.034611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.780376, 39.286377, 52.781513>,  <33.595058, 39.272366, 52.629654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.780376, 39.286377, 52.781513>,  <34.089237, 39.309731, 53.034611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780376, 39.286377, 52.781513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481539, -0.703477, -0.522725,
		-0.414607, -0.708317, 0.571305,
		-0.772154, -0.058380, -0.632748,
		33.548729, 39.268864, 52.591690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793610, 38.521675, 52.981735>,  <34.089237, 39.309731, 53.034611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793610, 38.521675, 52.981735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733788, 38.734642, 52.648468>,  <33.697895, 38.862423, 52.448509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733788, 38.734642, 52.648468>,  <33.793610, 38.521675, 52.981735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733788, 38.734642, 52.648468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432680, -0.722438, -0.539326,
		-0.889056, -0.441155, -0.122318,
		-0.149559, 0.532415, -0.833166,
		33.688919, 38.894367, 52.398518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437347, 38.015831, 52.777512>,  <33.793610, 38.521675, 52.981735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437347, 38.015831, 52.777512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.574867, 38.260887, 52.492840>,  <33.657379, 38.407921, 52.322037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.574867, 38.260887, 52.492840>,  <33.437347, 38.015831, 52.777512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574867, 38.260887, 52.492840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310931, -0.789387, -0.529329,
		-0.886073, -0.039301, -0.461876,
		0.343796, 0.612636, -0.711675,
		33.678005, 38.444679, 52.279339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228027, 37.738819, 52.182880>,  <33.437347, 38.015831, 52.777512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228027, 37.738819, 52.182880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516804, 37.979652, 52.046474>,  <33.690071, 38.124153, 51.964630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516804, 37.979652, 52.046474>,  <33.228027, 37.738819, 52.182880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516804, 37.979652, 52.046474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249170, -0.685973, -0.683633,
		-0.645535, 0.408572, -0.645255,
		0.721941, 0.602087, -0.341016,
		33.733387, 38.160278, 51.944168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141769, 37.718243, 51.429287>,  <33.228027, 37.738819, 52.182880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141769, 37.718243, 51.429287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516293, 37.832123, 51.511536>,  <33.741005, 37.900452, 51.560886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516293, 37.832123, 51.511536>,  <33.141769, 37.718243, 51.429287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516293, 37.832123, 51.511536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346885, -0.658319, -0.668047,
		-0.054829, 0.696822, -0.715145,
		0.936304, 0.284701, 0.205622,
		33.797184, 37.917534, 51.573223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484318, 37.960098, 50.840855>,  <33.141769, 37.718243, 51.429287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484318, 37.960098, 50.840855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784096, 37.844063, 51.078907>,  <33.963963, 37.774441, 51.221737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784096, 37.844063, 51.078907>,  <33.484318, 37.960098, 50.840855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784096, 37.844063, 51.078907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403691, -0.512244, -0.758050,
		0.524751, 0.808367, -0.266795,
		0.749446, -0.290085, 0.595131,
		34.008930, 37.757038, 51.257446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814537, 37.740814, 50.358879>,  <33.484318, 37.960098, 50.840855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814537, 37.740814, 50.358879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.052608, 37.647568, 50.666492>,  <34.195450, 37.591618, 50.851063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.052608, 37.647568, 50.666492>,  <33.814537, 37.740814, 50.358879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052608, 37.647568, 50.666492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539375, -0.593507, -0.597347,
		0.595683, 0.770327, -0.227504,
		0.595178, -0.233119, 0.769038,
		34.231163, 37.577633, 50.897205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569523, 37.890102, 50.167965>,  <33.814537, 37.740814, 50.358879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569523, 37.890102, 50.167965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.586884, 37.624527, 50.466576>,  <34.597301, 37.465179, 50.645741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.586884, 37.624527, 50.466576>,  <34.569523, 37.890102, 50.167965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586884, 37.624527, 50.466576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709617, -0.505494, -0.490835,
		0.703249, 0.551052, 0.449202,
		0.043406, -0.663941, 0.746524,
		34.599907, 37.425346, 50.690533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242970, 37.850838, 50.393635>,  <34.569523, 37.890102, 50.167965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242970, 37.850838, 50.393635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047592, 37.510715, 50.472019>,  <34.930367, 37.306641, 50.519051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047592, 37.510715, 50.472019>,  <35.242970, 37.850838, 50.393635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047592, 37.510715, 50.472019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607110, -0.492462, -0.623617,
		0.626766, -0.185637, 0.756771,
		-0.488448, -0.850306, 0.195957,
		34.901058, 37.255623, 50.530807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764263, 37.426407, 50.435749>,  <35.242970, 37.850838, 50.393635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764263, 37.426407, 50.435749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435364, 37.221653, 50.336239>,  <35.238026, 37.098801, 50.276531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435364, 37.221653, 50.336239>,  <35.764263, 37.426407, 50.435749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435364, 37.221653, 50.336239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553861, -0.619099, -0.556735,
		0.130966, -0.595560, 0.792563,
		-0.822244, -0.511883, -0.248776,
		35.188690, 37.068089, 50.261604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073765, 36.699131, 50.361526>,  <35.764263, 37.426407, 50.435749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073765, 36.699131, 50.361526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.709232, 36.677101, 50.198338>,  <35.490513, 36.663883, 50.100426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.709232, 36.677101, 50.198338>,  <36.073765, 36.699131, 50.361526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709232, 36.677101, 50.198338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347273, -0.635029, -0.690029,
		-0.221069, -0.770523, 0.597849,
		-0.911334, -0.055073, -0.407967,
		35.435833, 36.660580, 50.075947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961098, 35.993931, 50.207520>,  <36.073765, 36.699131, 50.361526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961098, 35.993931, 50.207520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712006, 36.194252, 49.967049>,  <35.562550, 36.314445, 49.822765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712006, 36.194252, 49.967049>,  <35.961098, 35.993931, 50.207520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712006, 36.194252, 49.967049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185770, -0.651731, -0.735347,
		-0.760065, -0.569601, 0.312818,
		-0.622728, 0.500800, -0.601173,
		35.525188, 36.344490, 49.786697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495533, 35.514259, 49.929531>,  <35.961098, 35.993931, 50.207520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495533, 35.514259, 49.929531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.468124, 35.824417, 49.678432>,  <35.451679, 36.010513, 49.527775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.468124, 35.824417, 49.678432>,  <35.495533, 35.514259, 49.929531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468124, 35.824417, 49.678432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215316, -0.602900, -0.768212,
		-0.974137, -0.187803, -0.125643,
		-0.068523, 0.775397, -0.627745,
		35.447567, 36.057037, 49.490108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002434, 35.315144, 49.392471>,  <35.495533, 35.514259, 49.929531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002434, 35.315144, 49.392471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.222614, 35.606693, 49.229630>,  <35.354725, 35.781624, 49.131924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.222614, 35.606693, 49.229630>,  <35.002434, 35.315144, 49.392471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222614, 35.606693, 49.229630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232163, -0.602039, -0.763969,
		-0.801935, 0.326015, -0.500614,
		0.550455, 0.728878, -0.407108,
		35.387753, 35.825356, 49.107498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943733, 35.243511, 48.738644>,  <35.002434, 35.315144, 49.392471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943733, 35.243511, 48.738644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267620, 35.477829, 48.724770>,  <35.461952, 35.618420, 48.716446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267620, 35.477829, 48.724770>,  <34.943733, 35.243511, 48.738644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267620, 35.477829, 48.724770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232114, -0.374002, -0.897912,
		-0.538961, 0.719006, -0.438807,
		0.809718, 0.585793, -0.034681,
		35.510536, 35.653568, 48.714367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878231, 35.592937, 48.130798>,  <34.943733, 35.243511, 48.738644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878231, 35.592937, 48.130798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268970, 35.602467, 48.215847>,  <35.503414, 35.608185, 48.266876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268970, 35.602467, 48.215847>,  <34.878231, 35.592937, 48.130798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268970, 35.602467, 48.215847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212979, -0.202838, -0.955770,
		0.020357, 0.978923, -0.203215,
		0.976845, 0.023824, 0.212619,
		35.562023, 35.609615, 48.279633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136387, 35.784763, 47.521351>,  <34.878231, 35.592937, 48.130798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136387, 35.784763, 47.521351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472214, 35.669930, 47.705833>,  <35.673710, 35.601028, 47.816525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472214, 35.669930, 47.705833>,  <35.136387, 35.784763, 47.521351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472214, 35.669930, 47.705833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413420, -0.213135, -0.885244,
		0.352440, 0.933893, -0.060254,
		0.839565, -0.287085, 0.461208,
		35.724083, 35.583805, 47.844196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540207, 35.339375, 47.498863>,  <35.136387, 35.784763, 47.521351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540207, 35.339375, 47.498863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.414505, 35.287266, 47.122719>,  <34.339085, 35.256001, 46.897034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.414505, 35.287266, 47.122719>,  <34.540207, 35.339375, 47.498863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414505, 35.287266, 47.122719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929794, 0.242191, 0.277176,
		0.191639, 0.961444, -0.197233,
		-0.314257, -0.130269, -0.940358,
		34.320229, 35.248184, 46.840611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312851, 36.044052, 47.204582>,  <34.540207, 35.339375, 47.498863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312851, 36.044052, 47.204582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114880, 35.736687, 47.042305>,  <33.996098, 35.552269, 46.944939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114880, 35.736687, 47.042305>,  <34.312851, 36.044052, 47.204582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114880, 35.736687, 47.042305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843538, 0.312836, 0.436552,
		-0.208534, 0.558284, -0.803015,
		-0.494932, -0.768409, -0.405696,
		33.966400, 35.506165, 46.920597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765903, 36.362457, 46.804043>,  <34.312851, 36.044052, 47.204582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765903, 36.362457, 46.804043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.679356, 35.982925, 46.896053>,  <33.627426, 35.755207, 46.951260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.679356, 35.982925, 46.896053>,  <33.765903, 36.362457, 46.804043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679356, 35.982925, 46.896053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896091, 0.286527, 0.339004,
		-0.387565, -0.132776, -0.912230,
		-0.216367, -0.948827, 0.230027,
		33.614445, 35.698277, 46.965061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126976, 36.367393, 46.587910>,  <33.765903, 36.362457, 46.804043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126976, 36.367393, 46.587910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.138611, 36.044647, 46.823917>,  <33.145592, 35.850998, 46.965523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.138611, 36.044647, 46.823917>,  <33.126976, 36.367393, 46.587910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138611, 36.044647, 46.823917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910476, 0.222225, 0.348783,
		-0.412538, -0.547339, -0.728171,
		0.029085, -0.806868, 0.590015,
		33.147335, 35.802586, 47.000923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450069, 36.142792, 46.487976>,  <33.126976, 36.367393, 46.587910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450069, 36.142792, 46.487976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.582169, 35.947819, 46.811295>,  <32.661427, 35.830833, 47.005287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.582169, 35.947819, 46.811295>,  <32.450069, 36.142792, 46.487976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582169, 35.947819, 46.811295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898344, 0.100499, 0.427643,
		-0.289682, -0.867355, -0.404696,
		0.330247, -0.487437, 0.808296,
		32.681244, 35.801586, 47.053783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935036, 35.741978, 46.565544>,  <32.450069, 36.142792, 46.487976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935036, 35.741978, 46.565544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.125271, 35.756287, 46.917118>,  <32.239414, 35.764870, 47.128063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.125271, 35.756287, 46.917118>,  <31.935036, 35.741978, 46.565544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125271, 35.756287, 46.917118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879509, 0.038288, 0.474340,
		-0.016687, -0.998626, 0.049666,
		0.475590, 0.035766, 0.878940,
		32.267948, 35.767017, 47.180801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548204, 35.392250, 47.011189>,  <31.935036, 35.741978, 46.565544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548204, 35.392250, 47.011189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733118, 35.620647, 47.282558>,  <31.844067, 35.757687, 47.445381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733118, 35.620647, 47.282558>,  <31.548204, 35.392250, 47.011189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733118, 35.620647, 47.282558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865891, 0.125784, 0.484160,
		0.191119, -0.811259, 0.552569,
		0.462284, 0.570997, 0.678423,
		31.871803, 35.791946, 47.486084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127630, 35.308620, 47.667885>,  <31.548204, 35.392250, 47.011189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127630, 35.308620, 47.667885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378222, 35.614212, 47.729679>,  <31.528576, 35.797565, 47.766754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378222, 35.614212, 47.729679>,  <31.127630, 35.308620, 47.667885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378222, 35.614212, 47.729679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679355, 0.438042, 0.588724,
		0.382098, -0.473776, 0.793434,
		0.626481, 0.763974, 0.154486,
		31.566166, 35.843403, 47.776024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137728, 35.364403, 48.405361>,  <31.127630, 35.308620, 47.667885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137728, 35.364403, 48.405361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245020, 35.708950, 48.232807>,  <31.309395, 35.915680, 48.129272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245020, 35.708950, 48.232807>,  <31.137728, 35.364403, 48.405361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245020, 35.708950, 48.232807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496562, 0.507349, 0.704289,
		0.825518, 0.025301, 0.563809,
		0.268229, 0.861369, -0.431389,
		31.325489, 35.967361, 48.103390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244585, 35.762856, 48.985630>,  <31.137728, 35.364403, 48.405361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244585, 35.762856, 48.985630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230532, 36.052982, 48.710625>,  <31.222099, 36.227058, 48.545620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230532, 36.052982, 48.710625>,  <31.244585, 35.762856, 48.985630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230532, 36.052982, 48.710625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441712, 0.605827, 0.661713,
		0.896469, 0.326932, 0.299097,
		-0.035134, 0.725320, -0.687515,
		31.219992, 36.270576, 48.504372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548552, 36.363384, 49.188187>,  <31.244585, 35.762856, 48.985630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548552, 36.363384, 49.188187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.286955, 36.488346, 48.912594>,  <31.129997, 36.563324, 48.747238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.286955, 36.488346, 48.912594>,  <31.548552, 36.363384, 49.188187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286955, 36.488346, 48.912594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384608, 0.646959, 0.658423,
		0.651438, 0.695592, -0.302953,
		-0.653991, 0.312404, -0.688984,
		31.090757, 36.582066, 48.705898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538906, 37.118977, 49.299561>,  <31.548552, 36.363384, 49.188187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538906, 37.118977, 49.299561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.214260, 37.010368, 49.092655>,  <31.019472, 36.945202, 48.968513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.214260, 37.010368, 49.092655>,  <31.538906, 37.118977, 49.299561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214260, 37.010368, 49.092655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500480, 0.779876, 0.375916,
		0.301329, 0.563977, -0.768850,
		-0.811616, -0.271520, -0.517259,
		30.970776, 36.928913, 48.937477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301493, 37.724342, 48.991520>,  <31.538906, 37.118977, 49.299561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301493, 37.724342, 48.991520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.967274, 37.504581, 48.993370>,  <30.766743, 37.372726, 48.994480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.967274, 37.504581, 48.993370>,  <31.301493, 37.724342, 48.991520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967274, 37.504581, 48.993370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506164, 0.773012, 0.382427,
		-0.213677, 0.317197, -0.923974,
		-0.835548, -0.549398, 0.004621,
		30.716610, 37.339764, 48.994755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736063, 38.224487, 48.746269>,  <31.301493, 37.724342, 48.991520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736063, 38.224487, 48.746269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.573107, 37.922668, 48.952061>,  <30.475332, 37.741577, 49.075535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.573107, 37.922668, 48.952061>,  <30.736063, 38.224487, 48.746269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573107, 37.922668, 48.952061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536881, 0.653596, 0.533452,
		-0.738777, -0.058890, -0.671372,
		-0.407391, -0.754549, 0.514479,
		30.450890, 37.696304, 49.106403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022882, 38.385242, 48.726936>,  <30.736063, 38.224487, 48.746269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022882, 38.385242, 48.726936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.086731, 38.141201, 49.037369>,  <30.125040, 37.994778, 49.223629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.086731, 38.141201, 49.037369>,  <30.022882, 38.385242, 48.726936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086731, 38.141201, 49.037369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541772, 0.603046, 0.585507,
		-0.825230, -0.513917, -0.234276,
		0.159623, -0.610102, 0.776077,
		30.134619, 37.958172, 49.270191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503391, 38.538658, 49.188866>,  <30.022882, 38.385242, 48.726936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503391, 38.538658, 49.188866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.709646, 38.318775, 49.451756>,  <29.833399, 38.186848, 49.609489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.709646, 38.318775, 49.451756>,  <29.503391, 38.538658, 49.188866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709646, 38.318775, 49.451756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518294, 0.410690, 0.750137,
		-0.682269, -0.727434, -0.073141,
		0.515636, -0.549703, 0.657225,
		29.864338, 38.153866, 49.648922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963087, 38.269897, 49.597263>,  <29.503391, 38.538658, 49.188866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963087, 38.269897, 49.597263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305731, 38.273357, 49.803619>,  <29.511316, 38.275433, 49.927433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305731, 38.273357, 49.803619>,  <28.963087, 38.269897, 49.597263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305731, 38.273357, 49.803619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487023, 0.343737, 0.802903,
		-0.170384, -0.939026, 0.298663,
		0.856609, 0.008653, 0.515894,
		29.562714, 38.275955, 49.958389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787346, 38.082092, 50.225792>,  <28.963087, 38.269897, 49.597263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787346, 38.082092, 50.225792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.128998, 38.286583, 50.263962>,  <29.333988, 38.409279, 50.286865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.128998, 38.286583, 50.263962>,  <28.787346, 38.082092, 50.225792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128998, 38.286583, 50.263962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355414, 0.439854, 0.824748,
		0.379656, -0.738362, 0.557390,
		0.854132, 0.511225, 0.095431,
		29.385237, 38.439953, 50.292591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846918, 38.038506, 50.917847>,  <28.787346, 38.082092, 50.225792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846918, 38.038506, 50.917847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.077120, 38.347183, 50.809559>,  <29.215240, 38.532391, 50.744587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.077120, 38.347183, 50.809559>,  <28.846918, 38.038506, 50.917847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077120, 38.347183, 50.809559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499872, 0.593933, 0.630374,
		0.647245, -0.227455, 0.727557,
		0.575502, 0.771691, -0.270721,
		29.249771, 38.578690, 50.728344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093185, 38.242935, 51.522690>,  <28.846918, 38.038506, 50.917847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093185, 38.242935, 51.522690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.156631, 38.553963, 51.279305>,  <29.194698, 38.740582, 51.133274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.156631, 38.553963, 51.279305>,  <29.093185, 38.242935, 51.522690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156631, 38.553963, 51.279305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340053, 0.621581, 0.705692,
		0.926933, 0.094975, 0.363007,
		0.158615, 0.777571, -0.608461,
		29.204216, 38.787235, 51.096767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414114, 38.692581, 51.919674>,  <29.093185, 38.242935, 51.522690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414114, 38.692581, 51.919674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.291447, 38.935337, 51.626377>,  <29.217846, 39.080990, 51.450397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.291447, 38.935337, 51.626377>,  <29.414114, 38.692581, 51.919674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291447, 38.935337, 51.626377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100439, 0.745425, 0.658979,
		0.946502, 0.275735, -0.167644,
		-0.306670, 0.606887, -0.733241,
		29.199446, 39.117405, 51.406406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964884, 39.287483, 51.905121>,  <29.414114, 38.692581, 51.919674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964884, 39.287483, 51.905121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.611805, 39.381611, 51.742405>,  <29.399958, 39.438087, 51.644775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.611805, 39.381611, 51.742405>,  <29.964884, 39.287483, 51.905121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611805, 39.381611, 51.742405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082995, 0.773936, 0.627802,
		0.462559, 0.587919, -0.663619,
		-0.882695, 0.235319, -0.406785,
		29.346996, 39.452206, 51.620369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962418, 40.033493, 51.890244>,  <29.964884, 39.287483, 51.905121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962418, 40.033493, 51.890244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.571621, 39.953892, 51.859550>,  <29.337143, 39.906132, 51.841133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.571621, 39.953892, 51.859550>,  <29.962418, 40.033493, 51.890244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571621, 39.953892, 51.859550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203138, 0.758533, 0.619162,
		-0.065012, 0.620503, -0.781505,
		-0.976989, -0.199006, -0.076734,
		29.278524, 39.894192, 51.836529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709101, 40.585983, 51.867157>,  <29.962418, 40.033493, 51.890244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709101, 40.585983, 51.867157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359022, 40.416893, 51.961250>,  <29.148975, 40.315441, 52.017704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359022, 40.416893, 51.961250>,  <29.709101, 40.585983, 51.867157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359022, 40.416893, 51.961250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274250, 0.834116, 0.478578,
		-0.398515, 0.354339, -0.845949,
		-0.875198, -0.422722, 0.235231,
		29.096462, 40.290077, 52.031818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310455, 41.097454, 51.908863>,  <29.709101, 40.585983, 51.867157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310455, 41.097454, 51.908863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.073618, 40.849426, 52.114754>,  <28.931515, 40.700611, 52.238289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.073618, 40.849426, 52.114754>,  <29.310455, 41.097454, 51.908863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073618, 40.849426, 52.114754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203010, 0.732886, 0.649357,
		-0.779879, 0.279987, -0.559818,
		-0.592094, -0.620069, 0.514723,
		28.895990, 40.663406, 52.269169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573799, 41.358337, 52.057621>,  <29.310455, 41.097454, 51.908863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573799, 41.358337, 52.057621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.715088, 41.089680, 52.318123>,  <28.799862, 40.928486, 52.474422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.715088, 41.089680, 52.318123>,  <28.573799, 41.358337, 52.057621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715088, 41.089680, 52.318123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283218, 0.586691, 0.758671,
		-0.891640, -0.452425, 0.017011,
		0.353222, -0.671643, 0.651252,
		28.821054, 40.888187, 52.513500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026356, 41.129410, 52.398148>,  <28.573799, 41.358337, 52.057621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026356, 41.129410, 52.398148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.344261, 41.056637, 52.629749>,  <28.535004, 41.012974, 52.768711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.344261, 41.056637, 52.629749>,  <28.026356, 41.129410, 52.398148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344261, 41.056637, 52.629749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349743, 0.642389, 0.681921,
		-0.496014, -0.744470, 0.446916,
		0.794764, -0.181937, 0.579008,
		28.582691, 41.002056, 52.803452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831478, 40.846863, 53.039154>,  <28.026356, 41.129410, 52.398148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831478, 40.846863, 53.039154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.197523, 40.994854, 53.103264>,  <28.417150, 41.083649, 53.141731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.197523, 40.994854, 53.103264>,  <27.831478, 40.846863, 53.039154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197523, 40.994854, 53.103264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337784, 0.486410, 0.805796,
		0.220165, -0.791532, 0.570091,
		0.915111, 0.369976, 0.160277,
		28.472057, 41.105846, 53.151348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958302, 40.744022, 53.768227>,  <27.831478, 40.846863, 53.039154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958302, 40.744022, 53.768227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.208269, 41.026432, 53.634956>,  <28.358250, 41.195877, 53.554996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.208269, 41.026432, 53.634956>,  <27.958302, 40.744022, 53.768227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208269, 41.026432, 53.634956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336826, 0.628839, 0.700792,
		0.704289, -0.325716, 0.630781,
		0.624920, 0.706024, -0.333175,
		28.395744, 41.238239, 53.535004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120924, 41.024078, 54.360001>,  <27.958302, 40.744022, 53.768227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120924, 41.024078, 54.360001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.224804, 41.313263, 54.103912>,  <28.287132, 41.486774, 53.950260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.224804, 41.313263, 54.103912>,  <28.120924, 41.024078, 54.360001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224804, 41.313263, 54.103912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288105, 0.690782, 0.663187,
		0.921711, 0.012222, 0.387684,
		0.259699, 0.722960, -0.640222,
		28.302713, 41.530151, 53.911846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515757, 41.461224, 54.713226>,  <28.120924, 41.024078, 54.360001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515757, 41.461224, 54.713226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.374029, 41.674488, 54.405930>,  <28.288992, 41.802448, 54.221550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.374029, 41.674488, 54.405930>,  <28.515757, 41.461224, 54.713226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374029, 41.674488, 54.405930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162588, 0.773901, 0.612080,
		0.920881, 0.341779, -0.187522,
		-0.354320, 0.533164, -0.768240,
		28.267733, 41.834438, 54.175457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815561, 42.155334, 54.764645>,  <28.515757, 41.461224, 54.713226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815561, 42.155334, 54.764645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.485977, 42.194828, 54.541454>,  <28.288227, 42.218525, 54.407539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.485977, 42.194828, 54.541454>,  <28.815561, 42.155334, 54.764645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485977, 42.194828, 54.541454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345198, 0.693426, 0.632455,
		0.449365, 0.713731, -0.537270,
		-0.823959, 0.098738, -0.557980,
		28.238789, 42.224449, 54.374062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600546, 42.837246, 54.773293>,  <28.815561, 42.155334, 54.764645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600546, 42.837246, 54.773293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.261150, 42.684059, 54.627197>,  <28.057512, 42.592148, 54.539539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.261150, 42.684059, 54.627197>,  <28.600546, 42.837246, 54.773293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261150, 42.684059, 54.627197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527363, 0.669544, 0.523067,
		0.044227, 0.636432, -0.770064,
		-0.848488, -0.382970, -0.365242,
		28.006603, 42.569168, 54.517624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116888, 43.397251, 54.559029>,  <28.600546, 42.837246, 54.773293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116888, 43.397251, 54.559029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.897635, 43.074787, 54.648163>,  <27.766083, 42.881310, 54.701645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.897635, 43.074787, 54.648163>,  <28.116888, 43.397251, 54.559029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897635, 43.074787, 54.648163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598104, 0.564041, 0.569323,
		-0.584654, 0.178786, -0.791337,
		-0.548134, -0.806159, 0.222837,
		27.733194, 42.832939, 54.715015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503128, 43.553879, 54.450764>,  <28.116888, 43.397251, 54.559029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503128, 43.553879, 54.450764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.453087, 43.224449, 54.672058>,  <27.423061, 43.026791, 54.804836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.453087, 43.224449, 54.672058>,  <27.503128, 43.553879, 54.450764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453087, 43.224449, 54.672058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595272, 0.508406, 0.622233,
		-0.793725, -0.251482, -0.553856,
		-0.125104, -0.823578, 0.553235,
		27.415556, 42.977375, 54.838028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720549, 43.493237, 54.563793>,  <27.503128, 43.553879, 54.450764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720549, 43.493237, 54.563793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.923233, 43.312538, 54.857506>,  <27.044844, 43.204121, 55.033733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.923233, 43.312538, 54.857506>,  <26.720549, 43.493237, 54.563793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923233, 43.312538, 54.857506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582754, 0.448189, 0.677882,
		-0.635327, -0.771396, -0.036154,
		0.506712, -0.451746, 0.734281,
		27.075247, 43.177013, 55.077789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200497, 43.260841, 54.935322>,  <26.720549, 43.493237, 54.563793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200497, 43.260841, 54.935322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.531313, 43.270332, 55.159981>,  <26.729803, 43.276028, 55.294777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.531313, 43.270332, 55.159981>,  <26.200497, 43.260841, 54.935322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531313, 43.270332, 55.159981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482922, 0.541389, 0.688247,
		-0.287736, -0.840437, 0.459209,
		0.827039, 0.023728, 0.561643,
		26.779425, 43.277451, 55.328472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090979, 42.894848, 55.585445>,  <26.200497, 43.260841, 54.935322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090979, 42.894848, 55.585445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.364645, 43.183613, 55.626945>,  <26.528845, 43.356873, 55.651844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.364645, 43.183613, 55.626945>,  <26.090979, 42.894848, 55.585445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364645, 43.183613, 55.626945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611795, 0.490635, 0.620470,
		0.397020, -0.487978, 0.777337,
		0.684165, 0.721910, 0.103751,
		26.569895, 43.400185, 55.658070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599922, 42.293308, 55.770576>,  <26.090979, 42.894848, 55.585445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599922, 42.293308, 55.770576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.367859, 42.007576, 55.927116>,  <25.228621, 41.836136, 56.021042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.367859, 42.007576, 55.927116>,  <25.599922, 42.293308, 55.770576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367859, 42.007576, 55.927116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427727, -0.676085, -0.599966,
		0.693156, -0.180685, 0.697773,
		-0.580159, -0.714326, 0.391349,
		25.193811, 41.793278, 56.044521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070391, 41.722530, 55.766823>,  <25.599922, 42.293308, 55.770576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070391, 41.722530, 55.766823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.725893, 41.531891, 55.837376>,  <25.519196, 41.417507, 55.879707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.725893, 41.531891, 55.837376>,  <26.070391, 41.722530, 55.766823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725893, 41.531891, 55.837376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256176, -0.706907, -0.659285,
		0.438901, -0.522621, 0.730913,
		-0.861243, -0.476603, 0.176379,
		25.467520, 41.388908, 55.890289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370319, 41.071796, 55.941135>,  <26.070391, 41.722530, 55.766823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370319, 41.071796, 55.941135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.997110, 41.055084, 55.798183>,  <25.773186, 41.045059, 55.712410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.997110, 41.055084, 55.798183>,  <26.370319, 41.071796, 55.941135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997110, 41.055084, 55.798183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267043, -0.746084, -0.609956,
		-0.241157, -0.664540, 0.707270,
		-0.933023, -0.041776, -0.357384,
		25.717203, 41.042553, 55.690968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241165, 40.357224, 55.922722>,  <26.370319, 41.071796, 55.941135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241165, 40.357224, 55.922722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.990711, 40.566071, 55.691082>,  <25.840439, 40.691380, 55.552097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.990711, 40.566071, 55.691082>,  <26.241165, 40.357224, 55.922722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.990711, 40.566071, 55.691082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128800, -0.663242, -0.737238,
		-0.769004, -0.536198, 0.348031,
		-0.626134, 0.522113, -0.579098,
		25.802872, 40.722706, 55.517353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806444, 39.867199, 55.824535>,  <26.241165, 40.357224, 55.922722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806444, 39.867199, 55.824535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.775808, 40.137119, 55.530930>,  <25.757427, 40.299072, 55.354767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.775808, 40.137119, 55.530930>,  <25.806444, 39.867199, 55.824535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775808, 40.137119, 55.530930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029609, -0.734310, -0.678169,
		-0.996623, -0.073673, 0.036260,
		-0.076588, 0.674805, -0.734011,
		25.752832, 40.339561, 55.310726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239367, 39.616444, 55.296108>,  <25.806444, 39.867199, 55.824535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239367, 39.616444, 55.296108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.459974, 39.890331, 55.105537>,  <25.592339, 40.054665, 54.991196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.459974, 39.890331, 55.105537>,  <25.239367, 39.616444, 55.296108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459974, 39.890331, 55.105537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088583, -0.615989, -0.782758,
		-0.829444, 0.389504, -0.400386,
		0.551521, 0.684721, -0.476425,
		25.625431, 40.095749, 54.962608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.902054, 39.623222, 54.596474>,  <25.239367, 39.616444, 55.296108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.902054, 39.623222, 54.596474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.250673, 39.815308, 54.556873>,  <25.459845, 39.930557, 54.533112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.250673, 39.815308, 54.556873>,  <24.902054, 39.623222, 54.596474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250673, 39.815308, 54.556873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223843, -0.569339, -0.791042,
		-0.436234, 0.667270, -0.603698,
		0.871547, 0.480213, -0.099001,
		25.512136, 39.959373, 54.527172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944035, 39.877026, 53.867504>,  <24.902054, 39.623222, 54.596474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944035, 39.877026, 53.867504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.326857, 39.874271, 53.983437>,  <25.556549, 39.872620, 54.052994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.326857, 39.874271, 53.983437>,  <24.944035, 39.877026, 53.867504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.326857, 39.874271, 53.983437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267065, -0.368030, -0.890635,
		0.112802, 0.929788, -0.350385,
		0.957054, -0.006890, 0.289828,
		25.613974, 39.872204, 54.070385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.273680, 40.090736, 53.361038>,  <24.944035, 39.877026, 53.867504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.273680, 40.090736, 53.361038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.569592, 39.899574, 53.550495>,  <25.747139, 39.784878, 53.664169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.569592, 39.899574, 53.550495>,  <25.273680, 40.090736, 53.361038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569592, 39.899574, 53.550495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178574, -0.539241, -0.823001,
		0.648722, 0.693418, -0.313577,
		0.739777, -0.477903, 0.473644,
		25.791525, 39.756203, 53.692589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756254, 39.990124, 52.896557>,  <25.273680, 40.090736, 53.361038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756254, 39.990124, 52.896557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.908262, 39.739708, 53.168926>,  <25.999466, 39.589458, 53.332348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.908262, 39.739708, 53.168926>,  <25.756254, 39.990124, 52.896557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908262, 39.739708, 53.168926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315736, -0.604140, -0.731659,
		0.869423, 0.493037, -0.031920,
		0.380019, -0.626043, 0.680923,
		26.022268, 39.551895, 53.373203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350134, 39.850269, 52.587116>,  <25.756254, 39.990124, 52.896557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350134, 39.850269, 52.587116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.297003, 39.552467, 52.848824>,  <26.265125, 39.373787, 53.005848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.297003, 39.552467, 52.848824>,  <26.350134, 39.850269, 52.587116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297003, 39.552467, 52.848824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484093, -0.624756, -0.612646,
		0.864877, 0.235351, 0.443394,
		-0.132826, -0.744507, 0.654268,
		26.257154, 39.329117, 53.045105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974144, 39.498104, 52.909950>,  <26.350134, 39.850269, 52.587116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974144, 39.498104, 52.909950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.726845, 39.188824, 52.966412>,  <26.578465, 39.003254, 53.000290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.726845, 39.188824, 52.966412>,  <26.974144, 39.498104, 52.909950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726845, 39.188824, 52.966412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656561, -0.606777, -0.448050,
		0.432081, -0.184332, 0.882795,
		-0.618250, -0.773203, 0.141152,
		26.541370, 38.956863, 53.008759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370295, 38.903095, 52.994576>,  <26.974144, 39.498104, 52.909950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370295, 38.903095, 52.994576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.016729, 38.756268, 52.878674>,  <26.804590, 38.668171, 52.809132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.016729, 38.756268, 52.878674>,  <27.370295, 38.903095, 52.994576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016729, 38.756268, 52.878674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465117, -0.625610, -0.626322,
		0.048635, -0.688382, 0.723716,
		-0.883912, -0.367074, -0.289751,
		26.751556, 38.646145, 52.791748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475010, 38.185116, 52.891048>,  <27.370295, 38.903095, 52.994576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475010, 38.185116, 52.891048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.139614, 38.251625, 52.683475>,  <26.938375, 38.291531, 52.558933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.139614, 38.251625, 52.683475>,  <27.475010, 38.185116, 52.891048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139614, 38.251625, 52.683475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320894, -0.619007, -0.716838,
		-0.440409, -0.767584, 0.465677,
		-0.838490, 0.166269, -0.518930,
		26.888067, 38.301506, 52.527798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206003, 37.538204, 52.646591>,  <27.475010, 38.185116, 52.891048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206003, 37.538204, 52.646591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.056936, 37.811123, 52.395004>,  <26.967497, 37.974873, 52.244053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.056936, 37.811123, 52.395004>,  <27.206003, 37.538204, 52.646591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056936, 37.811123, 52.395004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112020, -0.639754, -0.760372,
		-0.921179, -0.353821, 0.161985,
		-0.372666, 0.682294, -0.628963,
		26.945137, 38.015812, 52.206314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767981, 37.193928, 52.280575>,  <27.206003, 37.538204, 52.646591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767981, 37.193928, 52.280575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.826372, 37.515388, 52.049809>,  <26.861408, 37.708267, 51.911350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.826372, 37.515388, 52.049809>,  <26.767981, 37.193928, 52.280575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826372, 37.515388, 52.049809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290572, -0.592268, -0.751522,
		-0.945652, -0.057926, -0.319980,
		0.145981, 0.803656, -0.576911,
		26.870167, 37.756485, 51.876736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520218, 36.992867, 51.618572>,  <26.767981, 37.193928, 52.280575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520218, 36.992867, 51.618572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.761627, 37.305962, 51.557804>,  <26.906473, 37.493820, 51.521343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.761627, 37.305962, 51.557804>,  <26.520218, 36.992867, 51.618572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761627, 37.305962, 51.557804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345459, -0.428417, -0.834935,
		-0.718622, 0.451419, -0.528964,
		0.603523, 0.782738, -0.151923,
		26.942684, 37.540783, 51.512226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439177, 37.189350, 50.891140>,  <26.520218, 36.992867, 51.618572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439177, 37.189350, 50.891140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.791214, 37.297897, 51.046982>,  <27.002436, 37.363026, 51.140488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.791214, 37.297897, 51.046982>,  <26.439177, 37.189350, 50.891140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791214, 37.297897, 51.046982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470763, -0.391977, -0.790402,
		-0.061776, 0.879040, -0.472728,
		0.880094, 0.271371, 0.389605,
		27.055243, 37.379311, 51.163864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740808, 37.446934, 50.334618>,  <26.439177, 37.189350, 50.891140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740808, 37.446934, 50.334618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.019318, 37.376335, 50.612915>,  <27.186422, 37.333977, 50.779892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.019318, 37.376335, 50.612915>,  <26.740808, 37.446934, 50.334618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019318, 37.376335, 50.612915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523346, -0.538546, -0.660361,
		0.491237, 0.823905, -0.282608,
		0.696272, -0.176492, 0.695741,
		27.228199, 37.323387, 50.821636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432798, 37.736393, 50.017502>,  <26.740808, 37.446934, 50.334618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432798, 37.736393, 50.017502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.476160, 37.460300, 50.303673>,  <27.502176, 37.294643, 50.475376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.476160, 37.460300, 50.303673>,  <27.432798, 37.736393, 50.017502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476160, 37.460300, 50.303673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733613, -0.430116, -0.526129,
		0.670866, 0.581878, 0.459737,
		0.108402, -0.690231, 0.715423,
		27.508680, 37.253231, 50.518299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112923, 37.572289, 49.970184>,  <27.432798, 37.736393, 50.017502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112923, 37.572289, 49.970184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.011442, 37.275345, 50.218231>,  <27.950554, 37.097179, 50.367058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.011442, 37.275345, 50.218231>,  <28.112923, 37.572289, 49.970184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011442, 37.275345, 50.218231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689610, -0.588364, -0.422215,
		0.678288, 0.320523, 0.661204,
		-0.253699, -0.742357, 0.620116,
		27.935333, 37.052639, 50.404266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770247, 37.340839, 50.276783>,  <28.112923, 37.572289, 49.970184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770247, 37.340839, 50.276783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.503244, 37.045193, 50.312889>,  <28.343044, 36.867805, 50.334553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.503244, 37.045193, 50.312889>,  <28.770247, 37.340839, 50.276783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503244, 37.045193, 50.312889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617723, -0.617363, -0.487115,
		0.415761, -0.269392, 0.868660,
		-0.667504, -0.739115, 0.090266,
		28.302994, 36.823460, 50.339970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177225, 36.801830, 50.566792>,  <28.770247, 37.340839, 50.276783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177225, 36.801830, 50.566792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.856853, 36.658100, 50.375210>,  <28.664631, 36.571861, 50.260262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.856853, 36.658100, 50.375210>,  <29.177225, 36.801830, 50.566792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856853, 36.658100, 50.375210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572963, -0.692211, -0.438812,
		-0.173864, -0.625882, 0.760291,
		-0.800927, -0.359325, -0.478958,
		28.616575, 36.550304, 50.231522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326170, 36.096245, 50.467205>,  <29.177225, 36.801830, 50.566792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326170, 36.096245, 50.467205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.024252, 36.118244, 50.205746>,  <28.843102, 36.131443, 50.048870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.024252, 36.118244, 50.205746>,  <29.326170, 36.096245, 50.467205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024252, 36.118244, 50.205746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415371, -0.731171, -0.541162,
		-0.507693, -0.679974, 0.529040,
		-0.754795, 0.054996, -0.653652,
		28.797813, 36.134743, 50.009651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322939, 35.418034, 50.315044>,  <29.326170, 36.096245, 50.467205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322939, 35.418034, 50.315044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.128244, 35.647259, 50.051319>,  <29.011427, 35.784794, 49.893085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.128244, 35.647259, 50.051319>,  <29.322939, 35.418034, 50.315044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128244, 35.647259, 50.051319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225892, -0.646508, -0.728697,
		-0.843837, -0.503617, 0.185229,
		-0.486736, 0.573060, -0.659311,
		28.982224, 35.819176, 49.853527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832006, 34.979595, 50.140339>,  <29.322939, 35.418034, 50.315044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832006, 34.979595, 50.140339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.888157, 35.234066, 49.836872>,  <28.921848, 35.386749, 49.654793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.888157, 35.234066, 49.836872>,  <28.832006, 34.979595, 50.140339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888157, 35.234066, 49.836872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035774, -0.769009, -0.638237,
		-0.989452, 0.062454, -0.130710,
		0.140377, 0.636180, -0.758663,
		28.930269, 35.424919, 49.609272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417603, 34.725330, 49.600895>,  <28.832006, 34.979595, 50.140339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417603, 34.725330, 49.600895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.680330, 34.970070, 49.424610>,  <28.837967, 35.116913, 49.318840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.680330, 34.970070, 49.424610>,  <28.417603, 34.725330, 49.600895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680330, 34.970070, 49.424610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205150, -0.707418, -0.676367,
		-0.725602, 0.353840, -0.590168,
		0.656821, 0.611847, -0.440714,
		28.877377, 35.153625, 49.292397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186142, 34.733448, 48.929317>,  <28.417603, 34.725330, 49.600895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186142, 34.733448, 48.929317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.567924, 34.852459, 48.938171>,  <28.796993, 34.923866, 48.943485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.567924, 34.852459, 48.938171>,  <28.186142, 34.733448, 48.929317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567924, 34.852459, 48.938171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207728, -0.609443, -0.765133,
		-0.214158, 0.734884, -0.643492,
		0.954456, 0.297530, 0.022138,
		28.854261, 34.941719, 48.944813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404989, 34.647846, 48.220623>,  <28.186142, 34.733448, 48.929317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404989, 34.647846, 48.220623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.753166, 34.664967, 48.416786>,  <28.962072, 34.675240, 48.534485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.753166, 34.664967, 48.416786>,  <28.404989, 34.647846, 48.220623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753166, 34.664967, 48.416786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320857, -0.804853, -0.499263,
		0.373334, 0.591929, -0.714312,
		0.870444, 0.042801, 0.490403,
		29.014299, 34.677807, 48.563908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982561, 34.598976, 47.660839>,  <28.404989, 34.647846, 48.220623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982561, 34.598976, 47.660839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.108459, 34.468372, 48.017338>,  <29.183998, 34.390011, 48.231239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.108459, 34.468372, 48.017338>,  <28.982561, 34.598976, 47.660839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108459, 34.468372, 48.017338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296215, -0.858288, -0.419044,
		0.901771, 0.395894, -0.173426,
		0.314746, -0.326510, 0.891250,
		29.202883, 34.370419, 48.284714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463476, 34.130775, 47.440338>,  <28.982561, 34.598976, 47.660839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463476, 34.130775, 47.440338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.478970, 34.058155, 47.833385>,  <29.488266, 34.014584, 48.069214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.478970, 34.058155, 47.833385>,  <29.463476, 34.130775, 47.440338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478970, 34.058155, 47.833385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359523, -0.914972, -0.183221,
		0.932332, 0.360372, 0.029828,
		0.038736, -0.181546, 0.982619,
		29.490591, 34.003693, 48.128170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144634, 33.861805, 47.620487>,  <29.463476, 34.130775, 47.440338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144634, 33.861805, 47.620487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.883270, 33.741619, 47.898415>,  <29.726452, 33.669506, 48.065170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.883270, 33.741619, 47.898415>,  <30.144634, 33.861805, 47.620487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883270, 33.741619, 47.898415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345542, -0.935039, -0.079397,
		0.673540, 0.188211, 0.714787,
		-0.653411, -0.300466, 0.694820,
		29.687246, 33.651478, 48.106861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519255, 33.489025, 48.103207>,  <30.144634, 33.861805, 47.620487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519255, 33.489025, 48.103207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.148010, 33.357487, 48.173031>,  <29.925264, 33.278564, 48.214924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.148010, 33.357487, 48.173031>,  <30.519255, 33.489025, 48.103207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148010, 33.357487, 48.173031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368189, -0.880244, 0.299346,
		0.055216, 0.342097, 0.938041,
		-0.928110, -0.328848, 0.174560,
		29.869577, 33.258831, 48.225399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585623, 33.072662, 48.649071>,  <30.519255, 33.489025, 48.103207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585623, 33.072662, 48.649071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.233244, 32.947891, 48.506725>,  <30.021816, 32.873028, 48.421318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.233244, 32.947891, 48.506725>,  <30.585623, 33.072662, 48.649071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233244, 32.947891, 48.506725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280032, -0.949826, 0.139328,
		-0.381468, 0.023087, 0.924094,
		-0.880945, -0.311925, -0.355863,
		29.968960, 32.854313, 48.399967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241390, 32.612228, 49.173561>,  <30.585623, 33.072662, 48.649071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241390, 32.612228, 49.173561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.093269, 32.524277, 48.812557>,  <30.004396, 32.471504, 48.595955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.093269, 32.524277, 48.812557>,  <30.241390, 32.612228, 49.173561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093269, 32.524277, 48.812557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278736, -0.953111, 0.117839,
		-0.886105, -0.207927, 0.414227,
		-0.370303, -0.219878, -0.902513,
		29.982178, 32.458313, 48.541801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975555, 31.971521, 49.214256>,  <30.241390, 32.612228, 49.173561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975555, 31.971521, 49.214256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.085257, 32.010342, 48.831558>,  <30.151077, 32.033634, 48.601940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.085257, 32.010342, 48.831558>,  <29.975555, 31.971521, 49.214256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085257, 32.010342, 48.831558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430712, -0.901923, 0.031976,
		-0.859810, -0.420852, -0.289155,
		0.274252, 0.097049, -0.956748,
		30.167532, 32.039455, 48.544533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097473, 31.393993, 49.074352>,  <29.975555, 31.971521, 49.214256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097473, 31.393993, 49.074352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.235750, 31.516222, 48.719471>,  <30.318716, 31.589558, 48.506542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.235750, 31.516222, 48.719471>,  <30.097473, 31.393993, 49.074352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235750, 31.516222, 48.719471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621972, -0.782568, -0.027183,
		-0.702600, -0.542416, -0.460585,
		0.345694, 0.305569, -0.887199,
		30.339458, 31.607893, 48.453312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165030, 30.861979, 48.708641>,  <30.097473, 31.393993, 49.074352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165030, 30.861979, 48.708641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.388800, 31.100473, 48.478321>,  <30.523062, 31.243570, 48.340130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.388800, 31.100473, 48.478321>,  <30.165030, 30.861979, 48.708641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388800, 31.100473, 48.478321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618162, -0.762895, -0.189387,
		-0.552194, -0.249990, -0.795353,
		0.559426, 0.596235, -0.575800,
		30.556627, 31.279345, 48.305580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262917, 30.484837, 48.155224>,  <30.165030, 30.861979, 48.708641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262917, 30.484837, 48.155224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556314, 30.754078, 48.192989>,  <30.732353, 30.915623, 48.215649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556314, 30.754078, 48.192989>,  <30.262917, 30.484837, 48.155224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556314, 30.754078, 48.192989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679680, -0.727231, -0.095763,
		0.004201, 0.134412, -0.990917,
		0.733497, 0.673104, 0.094413,
		30.776363, 30.956009, 48.221313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793556, 30.250061, 47.733089>,  <30.262917, 30.484837, 48.155224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793556, 30.250061, 47.733089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958979, 30.497202, 48.000591>,  <31.058233, 30.645487, 48.161091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958979, 30.497202, 48.000591>,  <30.793556, 30.250061, 47.733089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958979, 30.497202, 48.000591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752481, -0.645456, 0.130994,
		0.512584, 0.449049, -0.731856,
		0.413558, 0.617853, 0.668751,
		31.083046, 30.682558, 48.201218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434484, 30.326975, 47.491203>,  <30.793556, 30.250061, 47.733089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434484, 30.326975, 47.491203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.435694, 30.418844, 47.880508>,  <31.436419, 30.473967, 48.114090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.435694, 30.418844, 47.880508>,  <31.434484, 30.326975, 47.491203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435694, 30.418844, 47.880508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819776, -0.557939, 0.129118,
		0.572677, 0.797467, -0.189968,
		0.003023, 0.229674, 0.973263,
		31.436600, 30.487747, 48.172489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028725, 30.850681, 47.747536>,  <31.434484, 30.326975, 47.491203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028725, 30.850681, 47.747536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.926880, 30.546072, 47.985947>,  <31.865774, 30.363306, 48.128994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.926880, 30.546072, 47.985947>,  <32.028725, 30.850681, 47.747536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926880, 30.546072, 47.985947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961349, -0.266113, 0.070660,
		0.104802, 0.590985, 0.799846,
		-0.254608, -0.761526, 0.596031,
		31.850498, 30.317614, 48.164757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284180, 30.920685, 48.384647>,  <32.028725, 30.850681, 47.747536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284180, 30.920685, 48.384647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.247978, 30.530689, 48.303455>,  <32.226257, 30.296692, 48.254738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.247978, 30.530689, 48.303455>,  <32.284180, 30.920685, 48.384647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247978, 30.530689, 48.303455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932778, -0.154397, 0.325711,
		-0.348905, -0.159859, 0.923423,
		-0.090506, -0.974991, -0.202982,
		32.220825, 30.238192, 48.242561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178268, 30.479139, 48.935833>,  <32.284180, 30.920685, 48.384647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178268, 30.479139, 48.935833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.372101, 30.272072, 48.653786>,  <32.488400, 30.147831, 48.484558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.372101, 30.272072, 48.653786>,  <32.178268, 30.479139, 48.935833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372101, 30.272072, 48.653786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759561, -0.150807, 0.632712,
		-0.433873, -0.842185, 0.320122,
		0.484584, -0.517669, -0.705122,
		32.517475, 30.116772, 48.442249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714874, 30.133978, 49.195026>,  <32.178268, 30.479139, 48.935833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714874, 30.133978, 49.195026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854996, 30.075472, 48.824970>,  <32.939068, 30.040369, 48.602936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854996, 30.075472, 48.824970>,  <32.714874, 30.133978, 49.195026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854996, 30.075472, 48.824970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931638, -0.047480, 0.360272,
		-0.096620, -0.988105, 0.119632,
		0.350307, -0.146264, -0.925144,
		32.960087, 30.031593, 48.547428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103714, 29.595203, 49.244205>,  <32.714874, 30.133978, 49.195026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103714, 29.595203, 49.244205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263195, 29.791351, 48.934216>,  <33.358883, 29.909040, 48.748222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263195, 29.791351, 48.934216>,  <33.103714, 29.595203, 49.244205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263195, 29.791351, 48.934216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913667, -0.285249, 0.289561,
		-0.079068, -0.823513, -0.561761,
		0.398699, 0.490368, -0.774970,
		33.382805, 29.938461, 48.701725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538437, 29.191257, 48.948921>,  <33.103714, 29.595203, 49.244205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538437, 29.191257, 48.948921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.645290, 29.571539, 48.885929>,  <33.709400, 29.799707, 48.848133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.645290, 29.571539, 48.885929>,  <33.538437, 29.191257, 48.948921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645290, 29.571539, 48.885929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949743, -0.232061, 0.210088,
		0.163186, -0.205688, -0.964916,
		0.267132, 0.950705, -0.157482,
		33.725430, 29.856750, 48.838684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257004, 29.235306, 48.778503>,  <33.538437, 29.191257, 48.948921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257004, 29.235306, 48.778503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.199909, 29.629322, 48.817120>,  <34.165653, 29.865732, 48.840290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.199909, 29.629322, 48.817120>,  <34.257004, 29.235306, 48.778503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199909, 29.629322, 48.817120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972440, 0.121406, 0.199048,
		0.184350, 0.122292, -0.975223,
		-0.142740, 0.985041, 0.096540,
		34.157085, 29.924835, 48.846081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661900, 29.644772, 48.392429>,  <34.257004, 29.235306, 48.778503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661900, 29.644772, 48.392429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578442, 29.915157, 48.675144>,  <34.528366, 30.077389, 48.844772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578442, 29.915157, 48.675144>,  <34.661900, 29.644772, 48.392429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578442, 29.915157, 48.675144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965700, 0.256614, 0.039652,
		-0.154567, 0.690814, -0.706318,
		-0.208643, 0.675963, 0.706783,
		34.515850, 30.117947, 48.887180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981583, 30.223724, 48.206718>,  <34.661900, 29.644772, 48.392429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981583, 30.223724, 48.206718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.917419, 30.311264, 48.591713>,  <34.878922, 30.363787, 48.822708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.917419, 30.311264, 48.591713>,  <34.981583, 30.223724, 48.206718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917419, 30.311264, 48.591713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842506, 0.538387, 0.017995,
		-0.514250, 0.813785, -0.270742,
		-0.160407, 0.218848, 0.962484,
		34.869297, 30.376919, 48.880459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088722, 30.910431, 48.221554>,  <34.981583, 30.223724, 48.206718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088722, 30.910431, 48.221554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.140842, 30.775681, 48.594551>,  <35.172115, 30.694830, 48.818348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.140842, 30.775681, 48.594551>,  <35.088722, 30.910431, 48.221554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140842, 30.775681, 48.594551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819214, 0.566360, 0.090136,
		-0.558489, 0.752165, 0.349769,
		0.130298, -0.336875, 0.932490,
		35.179932, 30.674618, 48.874298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157284, 31.439398, 48.655460>,  <35.088722, 30.910431, 48.221554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157284, 31.439398, 48.655460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.340790, 31.140408, 48.847633>,  <35.450893, 30.961014, 48.962936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.340790, 31.140408, 48.847633>,  <35.157284, 31.439398, 48.655460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340790, 31.140408, 48.847633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782755, 0.595850, 0.179601,
		-0.420514, 0.293667, 0.858445,
		0.458762, -0.747477, 0.480432,
		35.478416, 30.916164, 48.991764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589390, 31.821859, 49.093342>,  <35.157284, 31.439398, 48.655460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589390, 31.821859, 49.093342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.755299, 31.460014, 49.132618>,  <35.854843, 31.242907, 49.156181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.755299, 31.460014, 49.132618>,  <35.589390, 31.821859, 49.093342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755299, 31.460014, 49.132618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878886, 0.426223, 0.214226,
		-0.235641, -0.002559, 0.971837,
		0.414768, -0.904614, 0.098187,
		35.879730, 31.188629, 49.162075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943386, 31.820404, 49.701187>,  <35.589390, 31.821859, 49.093342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943386, 31.820404, 49.701187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.127552, 31.558090, 49.461868>,  <36.238052, 31.400702, 49.318275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.127552, 31.558090, 49.461868>,  <35.943386, 31.820404, 49.701187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127552, 31.558090, 49.461868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881887, 0.414924, 0.223860,
		0.101445, -0.630702, 0.769366,
		0.460417, -0.655784, -0.598300,
		36.265678, 31.361355, 49.282379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574955, 31.793343, 49.957050>,  <35.943386, 31.820404, 49.701187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574955, 31.793343, 49.957050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634590, 31.607819, 49.607731>,  <36.670372, 31.496504, 49.398140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634590, 31.607819, 49.607731>,  <36.574955, 31.793343, 49.957050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634590, 31.607819, 49.607731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962047, 0.272173, 0.019692,
		0.228556, -0.843092, 0.486784,
		0.149091, -0.463808, -0.873300,
		36.679317, 31.468676, 49.345741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370354, 31.577486, 50.023369>,  <36.574955, 31.793343, 49.957050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370354, 31.577486, 50.023369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275696, 31.549891, 49.635712>,  <37.218899, 31.533333, 49.403118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275696, 31.549891, 49.635712>,  <37.370354, 31.577486, 50.023369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275696, 31.549891, 49.635712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940353, 0.234650, -0.246323,
		0.244403, -0.969629, 0.009345,
		-0.236649, -0.068990, -0.969143,
		37.204700, 31.529194, 49.344971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877460, 31.105701, 49.734543>,  <37.370354, 31.577486, 50.023369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877460, 31.105701, 49.734543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724915, 31.303099, 49.421867>,  <37.633389, 31.421537, 49.234264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724915, 31.303099, 49.421867>,  <37.877460, 31.105701, 49.734543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724915, 31.303099, 49.421867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923217, 0.160072, -0.349354,
		-0.047278, -0.854894, -0.516645,
		-0.381361, 0.493492, -0.781684,
		37.610508, 31.451145, 49.187363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113277, 30.775753, 49.079334>,  <37.877460, 31.105701, 49.734543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113277, 30.775753, 49.079334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027008, 31.156664, 48.992935>,  <37.975246, 31.385210, 48.941093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027008, 31.156664, 48.992935>,  <38.113277, 30.775753, 49.079334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027008, 31.156664, 48.992935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928805, 0.131801, -0.346336,
		-0.301339, -0.275318, -0.912905,
		-0.215674, 0.952276, -0.216000,
		37.962307, 31.442347, 48.928135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260529, 30.924353, 48.373272>,  <38.113277, 30.775753, 49.079334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260529, 30.924353, 48.373272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.260323, 31.297443, 48.517506>,  <38.260201, 31.521297, 48.604046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.260323, 31.297443, 48.517506>,  <38.260529, 30.924353, 48.373272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260323, 31.297443, 48.517506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893150, 0.162605, -0.419337,
		-0.449760, 0.321843, -0.833147,
		-0.000513, 0.932725, 0.360587,
		38.260170, 31.577261, 48.625683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389366, 31.434872, 47.764160>,  <38.260529, 30.924353, 48.373272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389366, 31.434872, 47.764160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506954, 31.576679, 48.119213>,  <38.577507, 31.661764, 48.332245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506954, 31.576679, 48.119213>,  <38.389366, 31.434872, 47.764160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506954, 31.576679, 48.119213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938253, 0.070162, -0.338760,
		-0.182375, 0.932413, -0.312003,
		0.293973, 0.354519, 0.887635,
		38.595146, 31.683035, 48.385502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880344, 31.761980, 47.544498>,  <38.389366, 31.434872, 47.764160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880344, 31.761980, 47.544498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.937870, 31.786556, 47.939575>,  <38.972385, 31.801302, 48.176620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.937870, 31.786556, 47.939575>,  <38.880344, 31.761980, 47.544498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937870, 31.786556, 47.939575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960603, 0.231191, -0.154249,
		-0.237824, 0.970966, -0.025773,
		0.143812, 0.061441, 0.987696,
		38.981014, 31.804989, 48.235886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177402, 32.386936, 47.617680>,  <38.880344, 31.761980, 47.544498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177402, 32.386936, 47.617680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264835, 32.109791, 47.892536>,  <39.317295, 31.943502, 48.057449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264835, 32.109791, 47.892536>,  <39.177402, 32.386936, 47.617680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264835, 32.109791, 47.892536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962786, 0.267828, -0.036214,
		-0.158943, 0.669482, 0.725624,
		0.218587, -0.692865, 0.687137,
		39.330410, 31.901932, 48.098679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633789, 32.796692, 48.178246>,  <39.177402, 32.386936, 47.617680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633789, 32.796692, 48.178246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.664261, 32.402962, 48.114624>,  <39.682545, 32.166725, 48.076450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.664261, 32.402962, 48.114624>,  <39.633789, 32.796692, 48.178246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664261, 32.402962, 48.114624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957915, 0.116525, -0.262339,
		0.276761, -0.132374, 0.951778,
		0.076179, -0.984327, -0.159053,
		39.687115, 32.107662, 48.066910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341354, 32.709496, 48.332455>,  <39.633789, 32.796692, 48.178246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341354, 32.709496, 48.332455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.224327, 32.454281, 48.047550>,  <40.154110, 32.301151, 47.876610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.224327, 32.454281, 48.047550>,  <40.341354, 32.709496, 48.332455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224327, 32.454281, 48.047550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868784, 0.133840, -0.476762,
		0.399520, -0.758285, 0.515158,
		-0.292572, -0.638037, -0.712257,
		40.136555, 32.262871, 47.833874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969490, 32.247120, 48.287758>,  <40.341354, 32.709496, 48.332455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969490, 32.247120, 48.287758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.761566, 32.189850, 47.950878>,  <40.636814, 32.155487, 47.748749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.761566, 32.189850, 47.950878>,  <40.969490, 32.247120, 48.287758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761566, 32.189850, 47.950878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828346, 0.156619, -0.537879,
		0.208914, -0.977227, 0.037184,
		-0.519806, -0.143172, -0.842201,
		40.605625, 32.146900, 47.698219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434692, 31.838024, 47.785809>,  <40.969490, 32.247120, 48.287758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434692, 31.838024, 47.785809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.162624, 32.065754, 47.601093>,  <40.999386, 32.202393, 47.490265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.162624, 32.065754, 47.601093>,  <41.434692, 31.838024, 47.785809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162624, 32.065754, 47.601093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704186, 0.332386, -0.627408,
		-0.203708, -0.751924, -0.626988,
		-0.680165, 0.569324, -0.461784,
		40.958576, 32.236549, 47.462559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765675, 31.740152, 47.158993>,  <41.434692, 31.838024, 47.785809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765675, 31.740152, 47.158993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.058002, 31.480669, 47.074062>,  <42.233398, 31.324978, 47.023102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.058002, 31.480669, 47.074062>,  <41.765675, 31.740152, 47.158993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058002, 31.480669, 47.074062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401155, 0.659876, -0.635326,
		0.552252, 0.379130, 0.742481,
		0.730816, -0.648710, -0.212328,
		42.277248, 31.286057, 47.010365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382278, 32.004059, 47.271336>,  <41.765675, 31.740152, 47.158993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382278, 32.004059, 47.271336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.453442, 31.721811, 46.996975>,  <42.496140, 31.552464, 46.832359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.453442, 31.721811, 46.996975>,  <42.382278, 32.004059, 47.271336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453442, 31.721811, 46.996975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379620, 0.692276, -0.613712,
		0.907876, -0.151197, 0.391026,
		0.177907, -0.705616, -0.685898,
		42.506813, 31.510126, 46.791206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110020, 32.022755, 47.064869>,  <42.382278, 32.004059, 47.271336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110020, 32.022755, 47.064869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.870594, 31.904139, 46.767200>,  <42.726940, 31.832968, 46.588600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.870594, 31.904139, 46.767200>,  <43.110020, 32.022755, 47.064869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870594, 31.904139, 46.767200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484230, 0.606094, -0.631009,
		0.638157, -0.738046, -0.219189,
		-0.598563, -0.296545, -0.744167,
		42.691025, 31.815176, 46.543949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828030, 32.717793, 46.730495>,  <43.110020, 32.022755, 47.064869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828030, 32.717793, 46.730495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.684834, 32.644238, 46.364319>,  <42.598915, 32.600105, 46.144615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.684834, 32.644238, 46.364319>,  <42.828030, 32.717793, 46.730495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684834, 32.644238, 46.364319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180776, 0.948214, -0.261171,
		0.916058, -0.258986, -0.306210,
		-0.357992, -0.183892, -0.915437,
		42.577435, 32.589069, 46.089687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230679, 32.951241, 46.206299>,  <42.828030, 32.717793, 46.730495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230679, 32.951241, 46.206299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.884865, 32.979050, 46.007198>,  <42.677376, 32.995735, 45.887737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.884865, 32.979050, 46.007198>,  <43.230679, 32.951241, 46.206299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884865, 32.979050, 46.007198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257963, 0.911356, -0.320758,
		0.431326, -0.405706, -0.805829,
		-0.864530, 0.069523, -0.497748,
		42.625507, 32.999908, 45.857872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343166, 33.039669, 45.462479>,  <43.230679, 32.951241, 46.206299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343166, 33.039669, 45.462479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.987862, 33.220692, 45.493927>,  <42.774677, 33.329304, 45.512794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.987862, 33.220692, 45.493927>,  <43.343166, 33.039669, 45.462479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987862, 33.220692, 45.493927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228298, 0.583491, -0.779370,
		-0.398582, -0.674338, -0.621612,
		-0.888264, 0.452555, 0.078619,
		42.721382, 33.356457, 45.517513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839584, 32.869301, 44.849060>,  <43.343166, 33.039669, 45.462479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839584, 32.869301, 44.849060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.862076, 33.215836, 45.047573>,  <42.875572, 33.423756, 45.166679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.862076, 33.215836, 45.047573>,  <42.839584, 32.869301, 44.849060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862076, 33.215836, 45.047573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412561, 0.432484, -0.801717,
		-0.909192, 0.249829, -0.333098,
		0.056233, 0.866339, 0.496281,
		42.878944, 33.475739, 45.196457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644230, 33.325607, 44.375572>,  <42.839584, 32.869301, 44.849060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644230, 33.325607, 44.375572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.812122, 33.571011, 44.643135>,  <42.912857, 33.718254, 44.803673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.812122, 33.571011, 44.643135>,  <42.644230, 33.325607, 44.375572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812122, 33.571011, 44.643135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295802, 0.604268, -0.739838,
		-0.858095, 0.508396, 0.072152,
		0.419730, 0.613509, 0.668905,
		42.938042, 33.755062, 44.843807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456581, 34.057560, 44.111286>,  <42.644230, 33.325607, 44.375572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456581, 34.057560, 44.111286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.769722, 34.057896, 44.360172>,  <42.957607, 34.058098, 44.509502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.769722, 34.057896, 44.360172>,  <42.456581, 34.057560, 44.111286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769722, 34.057896, 44.360172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468810, 0.656706, -0.590724,
		-0.409105, 0.754146, 0.513708,
		0.782848, 0.000837, 0.622213,
		43.004578, 34.058147, 44.546837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831882, 34.715233, 43.950951>,  <42.456581, 34.057560, 44.111286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831882, 34.715233, 43.950951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.126694, 34.522243, 44.140266>,  <43.303581, 34.406448, 44.253857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.126694, 34.522243, 44.140266>,  <42.831882, 34.715233, 43.950951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126694, 34.522243, 44.140266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668675, 0.418736, -0.614438,
		0.098269, 0.769336, 0.631241,
		0.737033, -0.482475, 0.473287,
		43.347805, 34.377502, 44.282253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349098, 35.211155, 44.009930>,  <42.831882, 34.715233, 43.950951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349098, 35.211155, 44.009930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.500038, 34.841049, 44.025330>,  <43.590603, 34.618984, 44.034569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.500038, 34.841049, 44.025330>,  <43.349098, 35.211155, 44.009930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500038, 34.841049, 44.025330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742139, 0.277273, -0.610205,
		0.553927, 0.258838, 0.791308,
		0.377352, -0.925269, 0.038505,
		43.613243, 34.563469, 44.036880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864738, 35.265247, 43.490746>,  <43.349098, 35.211155, 44.009930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864738, 35.265247, 43.490746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.860790, 34.881271, 43.602757>,  <43.858421, 34.650887, 43.669964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.860790, 34.881271, 43.602757>,  <43.864738, 35.265247, 43.490746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860790, 34.881271, 43.602757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646618, -0.219739, -0.730479,
		0.762750, 0.173856, 0.622886,
		-0.009874, -0.959942, 0.280024,
		43.857826, 34.593288, 43.686764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535168, 34.968224, 43.509808>,  <43.864738, 35.265247, 43.490746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535168, 34.968224, 43.509808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.291370, 34.653580, 43.470291>,  <44.145092, 34.464794, 43.446583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.291370, 34.653580, 43.470291>,  <44.535168, 34.968224, 43.509808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291370, 34.653580, 43.470291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549215, -0.329079, -0.768160,
		0.571733, -0.522447, 0.632590,
		-0.609495, -0.786610, -0.098791,
		44.108521, 34.417595, 43.440655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997360, 34.358776, 43.298550>,  <44.535168, 34.968224, 43.509808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997360, 34.358776, 43.298550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.621017, 34.328533, 43.166443>,  <44.395214, 34.310387, 43.087177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.621017, 34.328533, 43.166443>,  <44.997360, 34.358776, 43.298550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621017, 34.328533, 43.166443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327326, -0.454471, -0.828441,
		-0.087460, -0.887547, 0.452340,
		-0.940855, -0.075607, -0.330265,
		44.338760, 34.305851, 43.067364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026165, 33.719631, 42.979500>,  <44.997360, 34.358776, 43.298550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026165, 33.719631, 42.979500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.701237, 33.891991, 42.822292>,  <44.506279, 33.995407, 42.727966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.701237, 33.891991, 42.822292>,  <45.026165, 33.719631, 42.979500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701237, 33.891991, 42.822292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310889, -0.250234, -0.916914,
		-0.493444, -0.867012, 0.069308,
		-0.812318, 0.430899, -0.393021,
		44.457542, 34.021259, 42.704388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652523, 33.281490, 42.464363>,  <45.026165, 33.719631, 42.979500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652523, 33.281490, 42.464363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.592331, 33.661770, 42.355904>,  <44.556217, 33.889938, 42.290829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.592331, 33.661770, 42.355904>,  <44.652523, 33.281490, 42.464363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592331, 33.661770, 42.355904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634750, -0.117357, -0.763753,
		-0.757924, -0.287037, -0.585800,
		-0.150478, 0.950703, -0.271145,
		44.547188, 33.946980, 42.274559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359589, 33.317764, 41.724709>,  <44.652523, 33.281490, 42.464363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359589, 33.317764, 41.724709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.605705, 33.611946, 41.838211>,  <44.753376, 33.788456, 41.906311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.605705, 33.611946, 41.838211>,  <44.359589, 33.317764, 41.724709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605705, 33.611946, 41.838211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487882, -0.072545, -0.869889,
		-0.619179, 0.673679, -0.403452,
		0.615295, 0.735455, 0.283758,
		44.790295, 33.832584, 41.923340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167988, 33.912487, 41.213905>,  <44.359589, 33.317764, 41.724709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167988, 33.912487, 41.213905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.527153, 33.892483, 41.388836>,  <44.742653, 33.880478, 41.493793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.527153, 33.892483, 41.388836>,  <44.167988, 33.912487, 41.213905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527153, 33.892483, 41.388836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439952, 0.070327, -0.895263,
		0.014019, 0.996269, 0.085151,
		0.897912, -0.050013, 0.437325,
		44.796528, 33.877480, 41.520035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489231, 34.570381, 41.129307>,  <44.167988, 33.912487, 41.213905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489231, 34.570381, 41.129307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.736912, 34.258183, 41.163754>,  <44.885521, 34.070866, 41.184422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.736912, 34.258183, 41.163754>,  <44.489231, 34.570381, 41.129307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736912, 34.258183, 41.163754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341172, 0.168639, -0.924750,
		0.707238, 0.601991, 0.370704,
		0.619206, -0.780492, 0.086115,
		44.922672, 34.024036, 41.189587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212963, 34.746239, 41.103828>,  <44.489231, 34.570381, 41.129307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212963, 34.746239, 41.103828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.102970, 34.397552, 40.941601>,  <45.036976, 34.188339, 40.844265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.102970, 34.397552, 40.941601>,  <45.212963, 34.746239, 41.103828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102970, 34.397552, 40.941601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397666, 0.280939, -0.873462,
		0.875355, -0.401469, 0.269400,
		-0.274983, -0.871720, -0.405572,
		45.020473, 34.136036, 40.819931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804188, 34.328293, 40.720470>,  <45.212963, 34.746239, 41.103828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804188, 34.328293, 40.720470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.434891, 34.264305, 40.580734>,  <45.213314, 34.225914, 40.496895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.434891, 34.264305, 40.580734>,  <45.804188, 34.328293, 40.720470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434891, 34.264305, 40.580734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268711, 0.381047, -0.884645,
		0.274628, -0.910612, -0.308814,
		-0.923241, -0.159967, -0.349338,
		45.157917, 34.216316, 40.475933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818092, 33.942585, 39.931206>,  <45.804188, 34.328293, 40.720470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818092, 33.942585, 39.931206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.508717, 34.193119, 39.970177>,  <45.323090, 34.343437, 39.993561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.508717, 34.193119, 39.970177>,  <45.818092, 33.942585, 39.931206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.508717, 34.193119, 39.970177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203646, 0.391097, -0.897536,
		-0.600261, -0.674352, -0.430041,
		-0.773443, 0.626333, 0.097432,
		45.276684, 34.381020, 39.999405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283398, 34.169781, 39.418110>,  <45.818092, 33.942585, 39.931206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283398, 34.169781, 39.418110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.431938, 34.538269, 39.464504>,  <45.521061, 34.759361, 39.492340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.431938, 34.538269, 39.464504>,  <45.283398, 34.169781, 39.418110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431938, 34.538269, 39.464504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734345, -0.214957, -0.643841,
		-0.568188, 0.324263, -0.756317,
		0.371350, 0.921220, 0.115985,
		45.543343, 34.814636, 39.499298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365360, 34.409550, 38.804546>,  <45.283398, 34.169781, 39.418110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365360, 34.409550, 38.804546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.619141, 34.538254, 39.085670>,  <45.771408, 34.615475, 39.254345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.619141, 34.538254, 39.085670>,  <45.365360, 34.409550, 38.804546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.619141, 34.538254, 39.085670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769922, -0.343646, -0.537706,
		0.068509, 0.882259, -0.465753,
		0.634450, 0.321755, 0.702813,
		45.809475, 34.634781, 39.296513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.907902, 35.038815, 38.704411>,  <45.365360, 34.409550, 38.804546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.907902, 35.038815, 38.704411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.058033, 34.754074, 38.941860>,  <46.148109, 34.583229, 39.084332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.058033, 34.754074, 38.941860>,  <45.907902, 35.038815, 38.704411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058033, 34.754074, 38.941860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791481, -0.087168, -0.604946,
		0.482379, 0.696897, 0.530703,
		0.375325, -0.711854, 0.593629,
		46.170631, 34.540516, 39.119949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550320, 34.805374, 38.269352>,  <45.907902, 35.038815, 38.704411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550320, 34.805374, 38.269352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.441551, 34.495411, 38.497589>,  <46.376289, 34.309433, 38.634533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.441551, 34.495411, 38.497589>,  <46.550320, 34.805374, 38.269352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441551, 34.495411, 38.497589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743960, 0.206819, 0.635413,
		-0.610395, 0.597283, 0.520260,
		-0.271922, -0.774906, 0.570596,
		46.359974, 34.262939, 38.668766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.601116, 35.261795, 37.659836>,  <46.550320, 34.805374, 38.269352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.601116, 35.261795, 37.659836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.957081, 35.423237, 37.574837>,  <47.170662, 35.520103, 37.523838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.957081, 35.423237, 37.574837>,  <46.601116, 35.261795, 37.659836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.957081, 35.423237, 37.574837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215864, -0.783061, -0.583282,
		-0.401817, 0.473200, -0.783980,
		0.889914, 0.403606, -0.212500,
		47.224056, 35.544319, 37.511086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655956, 35.276081, 36.914600>,  <46.601116, 35.261795, 37.659836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655956, 35.276081, 36.914600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.023735, 35.246391, 37.069061>,  <47.244400, 35.228577, 37.161739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.023735, 35.246391, 37.069061>,  <46.655956, 35.276081, 36.914600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.023735, 35.246391, 37.069061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155460, -0.833407, -0.530344,
		0.361185, 0.547653, -0.754733,
		0.919444, -0.074222, 0.386153,
		47.299568, 35.224125, 37.184906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282188, 35.945362, 36.861835>,  <46.655956, 35.276081, 36.914600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282188, 35.945362, 36.861835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.670135, 35.952942, 36.764671>,  <46.902905, 35.957489, 36.706371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.670135, 35.952942, 36.764671>,  <46.282188, 35.945362, 36.861835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.670135, 35.952942, 36.764671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233692, -0.209778, -0.949411,
		-0.068946, 0.977565, -0.199028,
		0.969863, 0.018947, -0.242912,
		46.961094, 35.958626, 36.691799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397388, 36.374893, 36.311089>,  <46.282188, 35.945362, 36.861835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397388, 36.374893, 36.311089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.682030, 36.093906, 36.306011>,  <46.852814, 35.925316, 36.302963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.682030, 36.093906, 36.306011>,  <46.397388, 36.374893, 36.311089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.682030, 36.093906, 36.306011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267784, -0.254477, -0.929265,
		0.649545, 0.664670, -0.369196,
		0.711606, -0.702464, -0.012694,
		46.895512, 35.883167, 36.302204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.538506, 36.297176, 35.598026>,  <46.397388, 36.374893, 36.311089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.538506, 36.297176, 35.598026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.725590, 35.977005, 35.747993>,  <46.837841, 35.784904, 35.837975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.725590, 35.977005, 35.747993>,  <46.538506, 36.297176, 35.598026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.725590, 35.977005, 35.747993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111654, -0.367273, -0.923387,
		0.876801, 0.473739, -0.082406,
		0.467710, -0.800426, 0.374921,
		46.865902, 35.736877, 35.860470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.173584, 36.105175, 35.247223>,  <46.538506, 36.297176, 35.598026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.173584, 36.105175, 35.247223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.111801, 35.752186, 35.424938>,  <47.074734, 35.540394, 35.531567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.111801, 35.752186, 35.424938>,  <47.173584, 36.105175, 35.247223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.111801, 35.752186, 35.424938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577354, -0.445532, -0.684226,
		0.801752, 0.150830, 0.578311,
		-0.154454, -0.882469, 0.444288,
		47.065464, 35.487446, 35.558224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.788818, 35.712837, 35.232849>,  <47.173584, 36.105175, 35.247223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.788818, 35.712837, 35.232849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.515202, 35.426163, 35.287170>,  <47.351032, 35.254158, 35.319763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.515202, 35.426163, 35.287170>,  <47.788818, 35.712837, 35.232849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.515202, 35.426163, 35.287170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417464, -0.537306, -0.732820,
		0.598169, -0.444591, 0.666733,
		-0.684045, -0.716688, 0.135800,
		47.309990, 35.211155, 35.327911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.747616, 34.979939, 35.291290>,  <47.788818, 35.712837, 35.232849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.747616, 34.979939, 35.291290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.744701, 35.030144, 34.894463>,  <47.742954, 35.060268, 34.656368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.744701, 35.030144, 34.894463>,  <47.747616, 34.979939, 35.291290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.744701, 35.030144, 34.894463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892423, 0.446770, 0.063081,
		0.451142, 0.885801, 0.108757,
		-0.007288, 0.125516, -0.992065,
		47.742516, 35.067799, 34.596844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.239819, 35.069008, 56.322525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.548529, 35.322697, 56.340984>,  <30.733755, 35.474911, 56.352058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.548529, 35.322697, 56.340984>,  <30.239819, 35.069008, 56.322525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548529, 35.322697, 56.340984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481077, -0.534882, -0.694598,
		-0.415845, 0.558273, -0.717917,
		0.771776, 0.634218, 0.046144,
		30.780062, 35.512962, 56.354828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451532, 35.119038, 55.644558>,  <30.239819, 35.069008, 56.322525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451532, 35.119038, 55.644558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.773672, 35.239609, 55.848736>,  <30.966955, 35.311951, 55.971241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.773672, 35.239609, 55.848736>,  <30.451532, 35.119038, 55.644558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773672, 35.239609, 55.848736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592637, -0.389153, -0.705224,
		-0.013934, 0.870460, -0.492042,
		0.805349, 0.301429, 0.510444,
		31.015278, 35.330036, 56.001869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958708, 35.363148, 55.153412>,  <30.451532, 35.119038, 55.644558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958708, 35.363148, 55.153412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.195370, 35.299492, 55.469543>,  <31.337366, 35.261299, 55.659222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.195370, 35.299492, 55.469543>,  <30.958708, 35.363148, 55.153412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195370, 35.299492, 55.469543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660832, -0.465794, -0.588503,
		0.461784, 0.870466, -0.170426,
		0.591655, -0.159138, 0.790328,
		31.372866, 35.251751, 55.706642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746256, 35.607510, 55.054058>,  <30.958708, 35.363148, 55.153412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746256, 35.607510, 55.054058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.729677, 35.319294, 55.330925>,  <31.719730, 35.146362, 55.497047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.729677, 35.319294, 55.330925>,  <31.746256, 35.607510, 55.054058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729677, 35.319294, 55.330925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636205, -0.553202, -0.537782,
		0.770406, 0.418071, 0.481343,
		-0.041449, -0.720544, 0.692170,
		31.717243, 35.103130, 55.538574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402447, 35.408909, 55.010689>,  <31.746256, 35.607510, 55.054058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402447, 35.408909, 55.010689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.217693, 35.103420, 55.191090>,  <32.106842, 34.920128, 55.299328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.217693, 35.103420, 55.191090>,  <32.402447, 35.408909, 55.010689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217693, 35.103420, 55.191090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607404, -0.642900, -0.466626,
		0.646318, 0.058413, 0.760829,
		-0.461880, -0.763720, 0.450998,
		32.079128, 34.874306, 55.326389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912140, 34.910576, 55.209583>,  <32.402447, 35.408909, 55.010689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912140, 34.910576, 55.209583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.592884, 34.671062, 55.236176>,  <32.401329, 34.527355, 55.252132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.592884, 34.671062, 55.236176>,  <32.912140, 34.910576, 55.209583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592884, 34.671062, 55.236176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524726, -0.745127, -0.411641,
		0.296023, -0.293664, 0.908918,
		-0.798144, -0.598788, 0.066482,
		32.353439, 34.491425, 55.256119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200352, 34.266136, 55.465248>,  <32.912140, 34.910576, 55.209583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200352, 34.266136, 55.465248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.848808, 34.202240, 55.285431>,  <32.637882, 34.163902, 55.177540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.848808, 34.202240, 55.285431>,  <33.200352, 34.266136, 55.465248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848808, 34.202240, 55.285431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407123, -0.742336, -0.532154,
		-0.248707, -0.650708, 0.717442,
		-0.878860, -0.159736, -0.449543,
		32.585152, 34.154320, 55.150570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975838, 33.563587, 55.602158>,  <33.200352, 34.266136, 55.465248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975838, 33.563587, 55.602158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.803829, 33.692261, 55.264732>,  <32.700623, 33.769463, 55.062275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.803829, 33.692261, 55.264732>,  <32.975838, 33.563587, 55.602158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803829, 33.692261, 55.264732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247400, -0.856615, -0.452774,
		-0.868260, -0.403400, 0.288778,
		-0.430021, 0.321681, -0.843566,
		32.674824, 33.788765, 55.011662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718166, 32.917912, 55.282784>,  <32.975838, 33.563587, 55.602158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718166, 32.917912, 55.282784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.711121, 33.190834, 54.990440>,  <32.706894, 33.354588, 54.815037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.711121, 33.190834, 54.990440>,  <32.718166, 32.917912, 55.282784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711121, 33.190834, 54.990440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219590, -0.710482, -0.668577,
		-0.975433, -0.172263, -0.137315,
		-0.017611, 0.682305, -0.730855,
		32.705837, 33.395527, 54.771183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364010, 32.580276, 54.681492>,  <32.718166, 32.917912, 55.282784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364010, 32.580276, 54.681492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.588352, 32.875931, 54.532303>,  <32.722958, 33.053326, 54.442787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.588352, 32.875931, 54.532303>,  <32.364010, 32.580276, 54.681492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588352, 32.875931, 54.532303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368529, -0.626296, -0.686979,
		-0.741365, 0.247847, -0.623658,
		0.560860, 0.739138, -0.372975,
		32.756611, 33.097672, 54.420410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163212, 32.665565, 53.995060>,  <32.364010, 32.580276, 54.681492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163212, 32.665565, 53.995060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.528461, 32.827133, 54.017178>,  <32.747612, 32.924072, 54.030449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.528461, 32.827133, 54.017178>,  <32.163212, 32.665565, 53.995060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528461, 32.827133, 54.017178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321510, -0.630069, -0.706855,
		-0.250676, 0.663221, -0.705195,
		0.913123, 0.403919, 0.055289,
		32.802399, 32.948307, 54.033764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365078, 32.836296, 53.273170>,  <32.163212, 32.665565, 53.995060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365078, 32.836296, 53.273170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.710556, 32.841270, 53.474716>,  <32.917843, 32.844254, 53.595642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.710556, 32.841270, 53.474716>,  <32.365078, 32.836296, 53.273170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710556, 32.841270, 53.474716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419669, -0.571375, -0.705272,
		0.279122, 0.820595, -0.498713,
		0.863695, 0.012437, 0.503862,
		32.969666, 32.845001, 53.625874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890690, 32.851692, 52.715572>,  <32.365078, 32.836296, 53.273170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890690, 32.851692, 52.715572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.081360, 32.723705, 53.043083>,  <33.195763, 32.646912, 53.239590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.081360, 32.723705, 53.043083>,  <32.890690, 32.851692, 52.715572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081360, 32.723705, 53.043083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438621, -0.720613, -0.536963,
		0.761834, 0.615091, -0.203154,
		0.476677, -0.319969, 0.818779,
		33.224361, 32.627716, 53.288715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618782, 32.789192, 52.579578>,  <32.890690, 32.851692, 52.715572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618782, 32.789192, 52.579578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.560028, 32.539391, 52.886414>,  <33.524776, 32.389511, 53.070515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.560028, 32.539391, 52.886414>,  <33.618782, 32.789192, 52.579578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560028, 32.539391, 52.886414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431493, -0.738275, -0.518424,
		0.890078, 0.254843, 0.377911,
		-0.146886, -0.624504, 0.767085,
		33.515961, 32.352039, 53.116539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232845, 32.487720, 52.712948>,  <33.618782, 32.789192, 52.579578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232845, 32.487720, 52.712948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.939426, 32.250568, 52.845856>,  <33.763374, 32.108276, 52.925602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.939426, 32.250568, 52.845856>,  <34.232845, 32.487720, 52.712948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939426, 32.250568, 52.845856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479470, -0.797932, -0.365257,
		0.481683, -0.108619, 0.869588,
		-0.733547, -0.592879, 0.332271,
		33.719364, 32.072704, 52.945538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614811, 31.995630, 52.958195>,  <34.232845, 32.487720, 52.712948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614811, 31.995630, 52.958195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.258080, 31.816713, 52.931149>,  <34.044041, 31.709364, 52.914921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.258080, 31.816713, 52.931149>,  <34.614811, 31.995630, 52.958195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258080, 31.816713, 52.931149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449272, -0.858285, -0.247994,
		0.052892, -0.251546, 0.966399,
		-0.891828, -0.447293, -0.067616,
		33.990532, 31.682526, 52.910862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746868, 31.398680, 53.260433>,  <34.614811, 31.995630, 52.958195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746868, 31.398680, 53.260433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.415024, 31.349670, 53.042542>,  <34.215916, 31.320265, 52.911804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.415024, 31.349670, 53.042542>,  <34.746868, 31.398680, 53.260433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415024, 31.349670, 53.042542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355309, -0.868438, -0.345790,
		-0.430700, -0.480419, 0.764000,
		-0.829611, -0.122524, -0.544733,
		34.166142, 31.312914, 52.879120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531590, 30.678280, 53.429707>,  <34.746868, 31.398680, 53.260433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531590, 30.678280, 53.429707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.376560, 30.791573, 53.078808>,  <34.283543, 30.859549, 52.868267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.376560, 30.791573, 53.078808>,  <34.531590, 30.678280, 53.429707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376560, 30.791573, 53.078808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326784, -0.847618, -0.418039,
		-0.861976, -0.448691, 0.235955,
		-0.387569, 0.283233, -0.877251,
		34.260288, 30.876541, 52.815632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188229, 30.004623, 53.173393>,  <34.531590, 30.678280, 53.429707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188229, 30.004623, 53.173393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.223732, 30.238081, 52.850536>,  <34.245033, 30.378155, 52.656822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.223732, 30.238081, 52.850536>,  <34.188229, 30.004623, 53.173393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223732, 30.238081, 52.850536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519036, -0.718729, -0.462633,
		-0.850131, -0.377876, -0.366724,
		0.088758, 0.583642, -0.807146,
		34.250359, 30.413174, 52.608391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888924, 29.673628, 52.646397>,  <34.188229, 30.004623, 53.173393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888924, 29.673628, 52.646397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.156090, 29.919996, 52.479286>,  <34.316391, 30.067818, 52.379021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.156090, 29.919996, 52.479286>,  <33.888924, 29.673628, 52.646397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156090, 29.919996, 52.479286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423808, -0.776205, -0.466790,
		-0.611782, 0.134721, -0.779470,
		0.667915, 0.615920, -0.417772,
		34.356464, 30.104773, 52.353954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868225, 29.522720, 51.944786>,  <33.888924, 29.673628, 52.646397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868225, 29.522720, 51.944786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.222233, 29.696289, 52.012257>,  <34.434639, 29.800430, 52.052738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.222233, 29.696289, 52.012257>,  <33.868225, 29.522720, 51.944786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222233, 29.696289, 52.012257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457333, -0.742539, -0.489369,
		-0.087102, 0.510241, -0.855610,
		0.885019, 0.433924, 0.168673,
		34.487740, 29.826466, 52.062859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113125, 29.568554, 51.288418>,  <33.868225, 29.522720, 51.944786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113125, 29.568554, 51.288418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.432594, 29.592079, 51.527973>,  <34.624275, 29.606195, 51.671707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.432594, 29.592079, 51.527973>,  <34.113125, 29.568554, 51.288418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432594, 29.592079, 51.527973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528948, -0.543167, -0.652061,
		0.286944, 0.837562, -0.464922,
		0.798672, 0.058814, 0.598886,
		34.672195, 29.609724, 51.707638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458347, 29.772591, 51.209114>,  <34.113125, 29.568554, 51.288418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458347, 29.772591, 51.209114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.223213, 29.808308, 50.887497>,  <33.082134, 29.829739, 50.694527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.223213, 29.808308, 50.887497>,  <33.458347, 29.772591, 51.209114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223213, 29.808308, 50.887497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404610, 0.828197, 0.387788,
		0.700530, 0.553277, -0.450712,
		-0.587833, 0.089294, -0.804039,
		33.046864, 29.835096, 50.646286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431206, 30.444872, 51.200806>,  <33.458347, 29.772591, 51.209114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431206, 30.444872, 51.200806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.127121, 30.282133, 50.998203>,  <32.944668, 30.184490, 50.876644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.127121, 30.282133, 50.998203>,  <33.431206, 30.444872, 51.200806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127121, 30.282133, 50.998203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633732, 0.636031, 0.440282,
		0.143023, 0.655697, -0.741354,
		-0.760216, -0.406849, -0.506503,
		32.899055, 30.160078, 50.846252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059921, 30.994305, 51.012981>,  <33.431206, 30.444872, 51.200806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059921, 30.994305, 51.012981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.806747, 30.686794, 50.976368>,  <32.654842, 30.502287, 50.954399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.806747, 30.686794, 50.976368>,  <33.059921, 30.994305, 51.012981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806747, 30.686794, 50.976368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690777, 0.507380, 0.515163,
		-0.349605, 0.389290, -0.852191,
		-0.632933, -0.768777, -0.091530,
		32.616867, 30.456161, 50.948910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363091, 31.363461, 51.032471>,  <33.059921, 30.994305, 51.012981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363091, 31.363461, 51.032471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.285671, 30.972551, 51.067070>,  <32.239220, 30.738007, 51.087830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.285671, 30.972551, 51.067070>,  <32.363091, 31.363461, 51.032471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285671, 30.972551, 51.067070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798092, 0.208108, 0.565456,
		-0.570604, 0.040412, -0.820231,
		-0.193548, -0.977271, 0.086494,
		32.227608, 30.679371, 51.093018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676153, 31.308748, 50.771645>,  <32.363091, 31.363461, 51.032471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676153, 31.308748, 50.771645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.760191, 31.009363, 51.023251>,  <31.810614, 30.829731, 51.174213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.760191, 31.009363, 51.023251>,  <31.676153, 31.308748, 50.771645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760191, 31.009363, 51.023251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715050, 0.321134, 0.620948,
		-0.666756, -0.580237, -0.467720,
		0.210096, -0.748464, 0.629016,
		31.823219, 30.784824, 51.211956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991116, 31.062456, 50.977806>,  <31.676153, 31.308748, 50.771645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991116, 31.062456, 50.977806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.260971, 30.934921, 51.244099>,  <31.422884, 30.858400, 51.403873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.260971, 30.934921, 51.244099>,  <30.991116, 31.062456, 50.977806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260971, 30.934921, 51.244099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498694, 0.468066, 0.729533,
		-0.544213, -0.824169, 0.156772,
		0.674638, -0.318840, 0.665736,
		31.463362, 30.839270, 51.443821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578991, 30.826141, 51.450817>,  <30.991116, 31.062456, 50.977806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578991, 30.826141, 51.450817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.929874, 30.875299, 51.636459>,  <31.140406, 30.904795, 51.747845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.929874, 30.875299, 51.636459>,  <30.578991, 30.826141, 51.450817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929874, 30.875299, 51.636459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477969, 0.314647, 0.820087,
		-0.045247, -0.941219, 0.334752,
		0.877210, 0.122895, 0.464110,
		31.193037, 30.912169, 51.775692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382717, 30.732960, 52.197323>,  <30.578991, 30.826141, 51.450817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382717, 30.732960, 52.197323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.738113, 30.915747, 52.214108>,  <30.951351, 31.025419, 52.224178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.738113, 30.915747, 52.214108>,  <30.382717, 30.732960, 52.197323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738113, 30.915747, 52.214108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289164, 0.486520, 0.824428,
		0.356320, -0.744634, 0.564408,
		0.888494, 0.456967, 0.041965,
		31.004662, 31.052837, 52.226696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533587, 30.726021, 52.866066>,  <30.382717, 30.732960, 52.197323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533587, 30.726021, 52.866066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.800209, 31.001600, 52.752186>,  <30.960182, 31.166948, 52.683857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.800209, 31.001600, 52.752186>,  <30.533587, 30.726021, 52.866066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800209, 31.001600, 52.752186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085396, 0.449966, 0.888953,
		0.740546, -0.568227, 0.358762,
		0.666558, 0.688947, -0.284696,
		31.000177, 31.208284, 52.666779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877743, 30.847689, 53.527782>,  <30.533587, 30.726021, 52.866066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877743, 30.847689, 53.527782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.879120, 31.165857, 53.285366>,  <30.879946, 31.356758, 53.139915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.879120, 31.165857, 53.285366>,  <30.877743, 30.847689, 53.527782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879120, 31.165857, 53.285366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336009, 0.571732, 0.748479,
		0.941853, 0.201058, 0.269239,
		0.003444, 0.795424, -0.606044,
		30.880154, 31.404484, 53.103554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187227, 31.375301, 53.906799>,  <30.877743, 30.847689, 53.527782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187227, 31.375301, 53.906799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.975243, 31.554914, 53.619045>,  <30.848053, 31.662682, 53.446392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.975243, 31.554914, 53.619045>,  <31.187227, 31.375301, 53.906799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975243, 31.554914, 53.619045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461783, 0.558699, 0.688921,
		0.711266, 0.697300, -0.088733,
		-0.529960, 0.449030, -0.719385,
		30.816256, 31.689623, 53.403229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262369, 32.117615, 53.986115>,  <31.187227, 31.375301, 53.906799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262369, 32.117615, 53.986115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.919113, 32.051567, 53.791660>,  <30.713160, 32.011940, 53.674988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.919113, 32.051567, 53.791660>,  <31.262369, 32.117615, 53.986115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919113, 32.051567, 53.791660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423616, 0.762689, 0.488729,
		0.290071, 0.625333, -0.724442,
		-0.858142, -0.165119, -0.486135,
		30.661671, 32.002029, 53.645821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937342, 32.732193, 53.829884>,  <31.262369, 32.117615, 53.986115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937342, 32.732193, 53.829884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.625017, 32.483150, 53.809120>,  <30.437622, 32.333725, 53.796661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.625017, 32.483150, 53.809120>,  <30.937342, 32.732193, 53.829884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625017, 32.483150, 53.809120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599949, 0.724023, 0.340370,
		-0.174334, 0.296907, -0.938858,
		-0.780813, -0.622605, -0.051907,
		30.390774, 32.296368, 53.793549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421803, 33.088795, 53.425034>,  <30.937342, 32.732193, 53.829884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421803, 33.088795, 53.425034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.219641, 32.804111, 53.620190>,  <30.098343, 32.633301, 53.737282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.219641, 32.804111, 53.620190>,  <30.421803, 33.088795, 53.425034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219641, 32.804111, 53.620190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808098, 0.588652, 0.021591,
		-0.302561, -0.383348, -0.872640,
		-0.505404, -0.711712, 0.487886,
		30.068020, 32.590599, 53.766556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707937, 33.166946, 53.031612>,  <30.421803, 33.088795, 53.425034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707937, 33.166946, 53.031612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.668201, 32.978821, 53.382370>,  <29.644360, 32.865948, 53.592823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.668201, 32.978821, 53.382370>,  <29.707937, 33.166946, 53.031612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668201, 32.978821, 53.382370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708970, 0.651807, 0.269275,
		-0.698207, -0.594941, -0.398186,
		-0.099338, -0.470311, 0.876892,
		29.638401, 32.837727, 53.645439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923695, 33.195564, 53.220058>,  <29.707937, 33.166946, 53.031612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923695, 33.195564, 53.220058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.081621, 33.108799, 53.577171>,  <29.176378, 33.056740, 53.791439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.081621, 33.108799, 53.577171>,  <28.923695, 33.195564, 53.220058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081621, 33.108799, 53.577171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677589, 0.587504, 0.442393,
		-0.620478, -0.779607, 0.084977,
		0.394817, -0.216915, 0.892786,
		29.200066, 33.043724, 53.845009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388390, 32.992283, 53.755116>,  <28.923695, 33.195564, 53.220058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388390, 32.992283, 53.755116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.707527, 33.121464, 53.958740>,  <28.899010, 33.198971, 54.080917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.707527, 33.121464, 53.958740>,  <28.388390, 32.992283, 53.755116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707527, 33.121464, 53.958740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563843, 0.698592, 0.440512,
		-0.213365, -0.638493, 0.739460,
		0.797845, 0.322949, 0.509065,
		28.946880, 33.218349, 54.111458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150349, 33.018787, 54.508526>,  <28.388390, 32.992283, 53.755116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150349, 33.018787, 54.508526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.468187, 33.258354, 54.468697>,  <28.658892, 33.402092, 54.444801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.468187, 33.258354, 54.468697>,  <28.150349, 33.018787, 54.508526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468187, 33.258354, 54.468697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478602, 0.718806, 0.504240,
		0.373567, -0.353015, 0.857804,
		0.794599, 0.598915, -0.099568,
		28.706568, 33.438030, 54.438828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.252811, 33.453438, 55.180981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485445, 33.640491, 54.914726>,  <28.625025, 33.752724, 54.754974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485445, 33.640491, 54.914726>,  <28.252811, 33.453438, 55.180981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485445, 33.640491, 54.914726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242712, 0.880735, 0.406689,
		0.776436, -0.074965, 0.625722,
		0.581583, 0.467638, -0.665640,
		28.659920, 33.780785, 54.715034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687454, 33.957390, 55.592289>,  <28.252811, 33.453438, 55.180981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687454, 33.957390, 55.592289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681807, 34.076885, 55.210598>,  <28.678419, 34.148582, 54.981583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681807, 34.076885, 55.210598>,  <28.687454, 33.957390, 55.592289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681807, 34.076885, 55.210598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043807, 0.953225, 0.299070,
		0.998940, 0.046025, -0.000371,
		-0.014119, 0.298737, -0.954231,
		28.677570, 34.166508, 54.924328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994678, 34.564632, 55.649178>,  <28.687454, 33.957390, 55.592289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994678, 34.564632, 55.649178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847391, 34.582954, 55.277733>,  <28.759018, 34.593948, 55.054867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847391, 34.582954, 55.277733>,  <28.994678, 34.564632, 55.649178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847391, 34.582954, 55.277733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165307, 0.979646, 0.113873,
		0.914926, 0.195436, -0.353152,
		-0.368219, 0.045807, -0.928610,
		28.736925, 34.596695, 54.999149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286507, 35.116947, 55.285133>,  <28.994678, 34.564632, 55.649178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286507, 35.116947, 55.285133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926472, 35.046780, 55.125599>,  <28.710451, 35.004681, 55.029877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926472, 35.046780, 55.125599>,  <29.286507, 35.116947, 55.285133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926472, 35.046780, 55.125599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286092, 0.928343, 0.237339,
		0.328627, 0.327730, -0.885775,
		-0.900086, -0.175417, -0.398840,
		28.656446, 34.994156, 55.005947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198128, 35.649143, 54.795979>,  <29.286507, 35.116947, 55.285133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198128, 35.649143, 54.795979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823977, 35.514030, 54.837887>,  <28.599485, 35.432964, 54.863033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823977, 35.514030, 54.837887>,  <29.198128, 35.649143, 54.795979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823977, 35.514030, 54.837887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307925, 0.923573, 0.228464,
		-0.173938, 0.181437, -0.967898,
		-0.935376, -0.337778, 0.104775,
		28.543364, 35.412697, 54.869320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724506, 36.204948, 54.554039>,  <29.198128, 35.649143, 54.795979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724506, 36.204948, 54.554039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502121, 35.961876, 54.780888>,  <28.368690, 35.816032, 54.916996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502121, 35.961876, 54.780888>,  <28.724506, 36.204948, 54.554039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502121, 35.961876, 54.780888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496907, 0.789931, 0.359295,
		-0.666325, -0.082053, -0.741134,
		-0.555963, -0.607681, 0.567123,
		28.335333, 35.779572, 54.951023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967501, 36.385036, 54.478989>,  <28.724506, 36.204948, 54.554039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967501, 36.385036, 54.478989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974403, 36.172543, 54.817810>,  <27.978544, 36.045048, 55.021103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974403, 36.172543, 54.817810>,  <27.967501, 36.385036, 54.478989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974403, 36.172543, 54.817810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509870, 0.724070, 0.464494,
		-0.860078, -0.439901, -0.258365,
		0.017257, -0.531233, 0.847050,
		27.979580, 36.013172, 55.071926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261518, 36.315708, 54.842194>,  <27.967501, 36.385036, 54.478989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261518, 36.315708, 54.842194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500223, 36.221096, 55.148899>,  <27.643446, 36.164330, 55.332924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500223, 36.221096, 55.148899>,  <27.261518, 36.315708, 54.842194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500223, 36.221096, 55.148899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612077, 0.483733, 0.625591,
		-0.518884, -0.842647, 0.143895,
		0.596759, -0.236535, 0.766766,
		27.679251, 36.150135, 55.378929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844446, 36.026505, 55.457153>,  <27.261518, 36.315708, 54.842194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844446, 36.026505, 55.457153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185673, 36.181469, 55.596977>,  <27.390408, 36.274448, 55.680870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185673, 36.181469, 55.596977>,  <26.844446, 36.026505, 55.457153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185673, 36.181469, 55.596977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520880, 0.672086, 0.526294,
		-0.031040, -0.631040, 0.775129,
		0.853066, 0.387413, 0.349557,
		27.441593, 36.297691, 55.701843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656660, 36.263088, 56.108662>,  <26.844446, 36.026505, 55.457153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656660, 36.263088, 56.108662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991798, 36.457672, 56.009571>,  <27.192881, 36.574425, 55.950115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991798, 36.457672, 56.009571>,  <26.656660, 36.263088, 56.108662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991798, 36.457672, 56.009571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151627, 0.643309, 0.750442,
		0.524428, -0.591192, 0.612754,
		0.837845, 0.486463, -0.247729,
		27.243153, 36.603611, 55.935253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069872, 36.371208, 56.815102>,  <26.656660, 36.263088, 56.108662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069872, 36.371208, 56.815102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197023, 36.665577, 56.575977>,  <27.273314, 36.842197, 56.432503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197023, 36.665577, 56.575977>,  <27.069872, 36.371208, 56.815102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197023, 36.665577, 56.575977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077696, 0.648613, 0.757143,
		0.944944, -0.194230, 0.263356,
		0.317876, 0.735919, -0.597811,
		27.292387, 36.886353, 56.396633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313522, 36.965328, 57.269855>,  <27.069872, 36.371208, 56.815102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313522, 36.965328, 57.269855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301132, 37.115177, 56.899193>,  <27.293697, 37.205086, 56.676796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301132, 37.115177, 56.899193>,  <27.313522, 36.965328, 57.269855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301132, 37.115177, 56.899193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095282, 0.921774, 0.375837,
		0.994968, 0.099936, 0.007143,
		-0.030976, 0.374627, -0.926658,
		27.291840, 37.227566, 56.621197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895702, 37.332680, 57.177509>,  <27.313522, 36.965328, 57.269855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895702, 37.332680, 57.177509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631664, 37.483810, 56.917812>,  <27.473242, 37.574490, 56.761993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631664, 37.483810, 56.917812>,  <27.895702, 37.332680, 57.177509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631664, 37.483810, 56.917812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103194, 0.810493, 0.576586,
		0.744059, 0.447601, -0.496014,
		-0.660097, 0.377828, -0.649244,
		27.433636, 37.597160, 56.723038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082182, 37.967003, 57.126530>,  <27.895702, 37.332680, 57.177509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082182, 37.967003, 57.126530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705534, 37.975594, 56.992134>,  <27.479546, 37.980747, 56.911499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705534, 37.975594, 56.992134>,  <28.082182, 37.967003, 57.126530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705534, 37.975594, 56.992134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152645, 0.862263, 0.482911,
		0.300079, 0.506006, -0.808647,
		-0.941622, 0.021476, -0.335986,
		27.423048, 37.982037, 56.891338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958710, 38.679356, 57.053635>,  <28.082182, 37.967003, 57.126530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958710, 38.679356, 57.053635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581432, 38.549950, 57.023365>,  <27.355066, 38.472305, 57.005203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581432, 38.549950, 57.023365>,  <27.958710, 38.679356, 57.053635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581432, 38.549950, 57.023365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323169, 0.840432, 0.435012,
		-0.077133, 0.434756, -0.897239,
		-0.943192, -0.323514, -0.075675,
		27.298475, 38.452896, 57.000664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585958, 39.269646, 56.862682>,  <27.958710, 38.679356, 57.053635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585958, 39.269646, 56.862682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299152, 39.017475, 56.981647>,  <27.127069, 38.866173, 57.053028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299152, 39.017475, 56.981647>,  <27.585958, 39.269646, 56.862682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299152, 39.017475, 56.981647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519645, 0.767810, 0.374749,
		-0.464608, 0.114151, -0.878128,
		-0.717013, -0.630427, 0.297413,
		27.084049, 38.828346, 57.070873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978716, 39.525902, 56.529926>,  <27.585958, 39.269646, 56.862682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978716, 39.525902, 56.529926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927458, 39.332088, 56.876060>,  <26.896704, 39.215801, 57.083740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927458, 39.332088, 56.876060>,  <26.978716, 39.525902, 56.529926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927458, 39.332088, 56.876060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332971, 0.842903, 0.422665,
		-0.934189, -0.233969, -0.269349,
		-0.128145, -0.484535, 0.865335,
		26.889015, 39.186729, 57.135662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224001, 39.585979, 56.757637>,  <26.978716, 39.525902, 56.529926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224001, 39.585979, 56.757637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372774, 39.454506, 57.104885>,  <26.462038, 39.375622, 57.313232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372774, 39.454506, 57.104885>,  <26.224001, 39.585979, 56.757637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372774, 39.454506, 57.104885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580538, 0.647384, 0.493832,
		-0.724321, -0.687649, 0.049970,
		0.371933, -0.328683, 0.868120,
		26.484354, 39.355900, 57.365322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667076, 39.602455, 57.259285>,  <26.224001, 39.585979, 56.757637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667076, 39.602455, 57.259285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994516, 39.575207, 57.487408>,  <26.190981, 39.558857, 57.624283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994516, 39.575207, 57.487408>,  <25.667076, 39.602455, 57.259285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994516, 39.575207, 57.487408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373451, 0.691274, 0.618608,
		-0.436383, -0.719375, 0.540435,
		0.818599, -0.068124, 0.570311,
		26.240097, 39.554771, 57.658501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.436920, 39.556717, 57.989891>,  <25.667076, 39.602455, 57.259285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.436920, 39.556717, 57.989891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813072, 39.692768, 57.990307>,  <26.038763, 39.774399, 57.990559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813072, 39.692768, 57.990307>,  <25.436920, 39.556717, 57.989891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813072, 39.692768, 57.990307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276024, 0.761355, 0.586642,
		0.198739, -0.551954, 0.809846,
		0.940380, 0.340125, 0.001042,
		26.095186, 39.794807, 57.990620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567713, 39.649605, 58.693249>,  <25.436920, 39.556717, 57.989891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567713, 39.649605, 58.693249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820135, 39.889717, 58.496704>,  <25.971588, 40.033783, 58.378777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820135, 39.889717, 58.496704>,  <25.567713, 39.649605, 58.693249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820135, 39.889717, 58.496704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288855, 0.769690, 0.569332,
		0.719950, -0.217351, 0.659113,
		0.631058, 0.600280, -0.491356,
		26.009451, 40.069801, 58.349297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932983, 40.052090, 59.233803>,  <25.567713, 39.649605, 58.693249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932983, 40.052090, 59.233803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950970, 40.245762, 58.884277>,  <25.961761, 40.361965, 58.674564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950970, 40.245762, 58.884277>,  <25.932983, 40.052090, 59.233803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950970, 40.245762, 58.884277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265235, 0.849090, 0.456834,
		0.963135, 0.211224, 0.166600,
		0.044965, 0.484181, -0.873812,
		25.964458, 40.391018, 58.622135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177385, 40.685253, 59.353886>,  <25.932983, 40.052090, 59.233803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177385, 40.685253, 59.353886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978079, 40.706673, 59.007736>,  <25.858496, 40.719524, 58.800049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978079, 40.706673, 59.007736>,  <26.177385, 40.685253, 59.353886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978079, 40.706673, 59.007736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614835, 0.681907, 0.396208,
		0.611317, 0.729477, -0.306848,
		-0.498266, 0.053547, -0.865369,
		25.828600, 40.722736, 58.748127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274914, 41.291592, 59.902599>,  <26.177385, 40.685253, 59.353886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274914, 41.291592, 59.902599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211994, 41.685867, 59.926811>,  <26.174242, 41.922432, 59.941338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211994, 41.685867, 59.926811>,  <26.274914, 41.291592, 59.902599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211994, 41.685867, 59.926811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708795, 0.070004, 0.701932,
		0.687652, 0.153320, -0.709667,
		-0.157300, 0.985694, 0.060534,
		26.164804, 41.981575, 59.944973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939444, 41.560593, 59.739086>,  <26.274914, 41.291592, 59.902599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939444, 41.560593, 59.739086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719608, 41.801525, 59.970657>,  <26.587708, 41.946083, 60.109600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719608, 41.801525, 59.970657>,  <26.939444, 41.560593, 59.739086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719608, 41.801525, 59.970657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776111, 0.111632, 0.620637,
		0.309201, 0.790404, -0.528826,
		-0.549588, 0.602329, 0.578924,
		26.554731, 41.982224, 60.144333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061258, 41.257198, 60.441353>,  <26.939444, 41.560593, 59.739086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061258, 41.257198, 60.441353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240143, 41.048801, 60.732162>,  <27.347473, 40.923763, 60.906651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240143, 41.048801, 60.732162>,  <27.061258, 41.257198, 60.441353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240143, 41.048801, 60.732162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596016, -0.432490, -0.676548,
		0.666909, 0.735880, 0.117106,
		0.447211, -0.520993, 0.727027,
		27.374306, 40.892502, 60.950272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781961, 41.214962, 60.249908>,  <27.061258, 41.257198, 60.441353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781961, 41.214962, 60.249908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719870, 40.911770, 60.503323>,  <27.682615, 40.729855, 60.655373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719870, 40.911770, 60.503323>,  <27.781961, 41.214962, 60.249908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719870, 40.911770, 60.503323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717338, -0.527418, -0.455256,
		0.679213, 0.383789, 0.625600,
		-0.155230, -0.757982, 0.633535,
		27.673300, 40.684376, 60.693382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429443, 40.929451, 60.434540>,  <27.781961, 41.214962, 60.249908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429443, 40.929451, 60.434540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171635, 40.638874, 60.529930>,  <28.016949, 40.464527, 60.587166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171635, 40.638874, 60.529930>,  <28.429443, 40.929451, 60.434540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171635, 40.638874, 60.529930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629045, -0.681111, -0.374687,
		0.434618, -0.091481, 0.895957,
		-0.644523, -0.726443, 0.238477,
		27.978277, 40.420940, 60.601475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815426, 40.366486, 60.698051>,  <28.429443, 40.929451, 60.434540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815426, 40.366486, 60.698051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474512, 40.202019, 60.568714>,  <28.269964, 40.103340, 60.491112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474512, 40.202019, 60.568714>,  <28.815426, 40.366486, 60.698051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474512, 40.202019, 60.568714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521976, -0.628403, -0.576759,
		0.033952, -0.660341, 0.750198,
		-0.852284, -0.411167, -0.323347,
		28.218826, 40.078667, 60.471710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901007, 39.668739, 60.782345>,  <28.815426, 40.366486, 60.698051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901007, 39.668739, 60.782345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650177, 39.744553, 60.480125>,  <28.499680, 39.790043, 60.298794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650177, 39.744553, 60.480125>,  <28.901007, 39.668739, 60.782345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650177, 39.744553, 60.480125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443141, -0.710899, -0.546122,
		-0.640627, -0.677274, 0.361797,
		-0.627075, 0.189534, -0.755549,
		28.462055, 39.801414, 60.253460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089108, 39.138866, 60.393394>,  <28.901007, 39.668739, 60.782345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089108, 39.138866, 60.393394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816324, 39.261181, 60.127636>,  <28.652655, 39.334572, 59.968182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816324, 39.261181, 60.127636>,  <29.089108, 39.138866, 60.393394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816324, 39.261181, 60.127636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398393, -0.606503, -0.688067,
		-0.613375, -0.733920, 0.291775,
		-0.681949, 0.305803, -0.664402,
		28.611736, 39.352917, 59.928318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990082, 38.617641, 59.993832>,  <29.089108, 39.138866, 60.393394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990082, 38.617641, 59.993832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783804, 38.868820, 59.760681>,  <28.660036, 39.019527, 59.620792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783804, 38.868820, 59.760681>,  <28.990082, 38.617641, 59.993832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783804, 38.868820, 59.760681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160673, -0.597363, -0.785711,
		-0.841571, -0.498840, 0.207163,
		-0.515695, 0.627946, -0.582874,
		28.629095, 39.057205, 59.585819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361624, 38.274212, 59.801960>,  <28.990082, 38.617641, 59.993832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361624, 38.274212, 59.801960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468954, 38.546402, 59.529209>,  <28.533352, 38.709717, 59.365559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468954, 38.546402, 59.529209>,  <28.361624, 38.274212, 59.801960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468954, 38.546402, 59.529209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122799, -0.726218, -0.676408,
		-0.955470, 0.097763, -0.278424,
		0.268324, 0.680478, -0.681874,
		28.549452, 38.750546, 59.324646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033091, 38.064255, 59.165199>,  <28.361624, 38.274212, 59.801960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033091, 38.064255, 59.165199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319323, 38.318008, 59.048237>,  <28.491062, 38.470261, 58.978062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319323, 38.318008, 59.048237>,  <28.033091, 38.064255, 59.165199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319323, 38.318008, 59.048237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156345, -0.553431, -0.818089,
		-0.680809, 0.539692, -0.495207,
		0.715580, 0.634386, -0.292403,
		28.533997, 38.508324, 58.960518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881121, 38.224648, 58.566879>,  <28.033091, 38.064255, 59.165199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881121, 38.224648, 58.566879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273415, 38.295509, 58.599800>,  <28.508791, 38.338028, 58.619553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273415, 38.295509, 58.599800>,  <27.881121, 38.224648, 58.566879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273415, 38.295509, 58.599800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160746, -0.492555, -0.855307,
		-0.110988, 0.852059, -0.511544,
		0.980736, 0.177157, 0.082298,
		28.567635, 38.348656, 58.624489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190107, 38.124962, 57.847942>,  <27.881121, 38.224648, 58.566879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190107, 38.124962, 57.847942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519966, 38.131027, 58.074120>,  <28.717882, 38.134666, 58.209827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519966, 38.131027, 58.074120>,  <28.190107, 38.124962, 57.847942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519966, 38.131027, 58.074120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480248, -0.546934, -0.685729,
		0.298865, 0.837038, -0.458309,
		0.824647, 0.015162, 0.565445,
		28.767361, 38.135574, 58.243752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678949, 38.297119, 57.397469>,  <28.190107, 38.124962, 57.847942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678949, 38.297119, 57.397469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857412, 38.080547, 57.682507>,  <28.964491, 37.950603, 57.853531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857412, 38.080547, 57.682507>,  <28.678949, 38.297119, 57.397469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857412, 38.080547, 57.682507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430659, -0.568104, -0.701278,
		0.784523, 0.619767, -0.020292,
		0.446157, -0.541430, 0.712599,
		28.991261, 37.918118, 57.896286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345692, 38.219383, 57.095783>,  <28.678949, 38.297119, 57.397469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345692, 38.219383, 57.095783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289625, 37.946304, 57.382637>,  <29.255985, 37.782459, 57.554749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289625, 37.946304, 57.382637>,  <29.345692, 38.219383, 57.095783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289625, 37.946304, 57.382637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481325, -0.679927, -0.553196,
		0.865263, 0.267635, 0.423901,
		-0.140167, -0.682694, 0.717135,
		29.247576, 37.741497, 57.597778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962135, 37.934227, 57.130333>,  <29.345692, 38.219383, 57.095783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962135, 37.934227, 57.130333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727474, 37.662331, 57.306419>,  <29.586678, 37.499191, 57.412071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727474, 37.662331, 57.306419>,  <29.962135, 37.934227, 57.130333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727474, 37.662331, 57.306419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491265, -0.730849, -0.473834,
		0.643817, -0.061713, 0.762687,
		-0.586651, -0.679744, 0.440215,
		29.551479, 37.458408, 57.438484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447445, 37.448040, 57.479198>,  <29.962135, 37.934227, 57.130333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447445, 37.448040, 57.479198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117689, 37.223839, 57.447647>,  <29.919836, 37.089317, 57.428715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117689, 37.223839, 57.447647>,  <30.447445, 37.448040, 57.479198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117689, 37.223839, 57.447647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530444, -0.716399, -0.453213,
		0.197519, -0.415463, 0.887906,
		-0.824388, -0.560503, -0.078877,
		29.870373, 37.055687, 57.423985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663231, 36.831051, 57.737244>,  <30.447445, 37.448040, 57.479198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663231, 36.831051, 57.737244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324148, 36.744812, 57.543373>,  <30.120699, 36.693069, 57.427052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324148, 36.744812, 57.543373>,  <30.663231, 36.831051, 57.737244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324148, 36.744812, 57.543373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438221, -0.799492, -0.410822,
		-0.298926, -0.560653, 0.772212,
		-0.847706, -0.215594, -0.484679,
		30.069836, 36.680134, 57.397968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539274, 36.171219, 57.845043>,  <30.663231, 36.831051, 57.737244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539274, 36.171219, 57.845043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365681, 36.261589, 57.496189>,  <30.261524, 36.315811, 57.286877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365681, 36.261589, 57.496189>,  <30.539274, 36.171219, 57.845043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365681, 36.261589, 57.496189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602723, -0.646696, -0.467450,
		-0.669614, -0.728520, 0.144484,
		-0.433984, 0.225928, -0.872133,
		30.235485, 36.329369, 57.234550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457804, 35.537994, 57.544632>,  <30.539274, 36.171219, 57.845043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457804, 35.537994, 57.544632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448177, 35.802711, 57.244911>,  <30.442402, 35.961540, 57.065079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448177, 35.802711, 57.244911>,  <30.457804, 35.537994, 57.544632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448177, 35.802711, 57.244911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583453, -0.599332, -0.548072,
		-0.811790, -0.450373, -0.371700,
		-0.024065, 0.661789, -0.749304,
		30.440958, 36.001247, 57.020119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217005, 35.184978, 57.050285>,  <30.457804, 35.537994, 57.544632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217005, 35.184978, 57.050285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413067, 35.478241, 56.861725>,  <30.530704, 35.654198, 56.748589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413067, 35.478241, 56.861725>,  <30.217005, 35.184978, 57.050285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413067, 35.478241, 56.861725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496158, -0.679344, -0.540666,
		-0.716641, 0.031119, -0.696748,
		0.490156, 0.733160, -0.471406,
		30.560114, 35.698189, 56.720303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.705547, 35.858845, 53.182667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.947029, 35.622707, 52.968361>,  <47.091919, 35.481026, 52.839779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.947029, 35.622707, 52.968361>,  <46.705547, 35.858845, 53.182667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.947029, 35.622707, 52.968361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669882, -0.011292, -0.742382,
		0.432209, 0.807074, -0.402276,
		0.603700, -0.590342, -0.535764,
		47.128139, 35.445606, 52.807632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579319, 36.052181, 52.426796>,  <46.705547, 35.858845, 53.182667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579319, 36.052181, 52.426796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.738144, 35.685139, 52.434212>,  <46.833439, 35.464912, 52.438660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.738144, 35.685139, 52.434212>,  <46.579319, 36.052181, 52.426796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.738144, 35.685139, 52.434212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716233, -0.322434, -0.618907,
		0.573889, 0.232468, -0.785245,
		0.397066, -0.917603, 0.018540,
		46.857265, 35.409859, 52.439774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582970, 35.908096, 51.731583>,  <46.579319, 36.052181, 52.426796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582970, 35.908096, 51.731583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.650730, 35.560822, 51.918152>,  <46.691387, 35.352455, 52.030094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.650730, 35.560822, 51.918152>,  <46.582970, 35.908096, 51.731583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.650730, 35.560822, 51.918152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653633, -0.453173, -0.606135,
		0.737610, -0.202193, -0.644243,
		0.169397, -0.868189, 0.466425,
		46.701550, 35.300365, 52.058079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.698746, 35.319782, 51.248146>,  <46.582970, 35.908096, 51.731583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.698746, 35.319782, 51.248146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.606583, 35.125393, 51.585369>,  <46.551285, 35.008759, 51.787701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.606583, 35.125393, 51.585369>,  <46.698746, 35.319782, 51.248146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.606583, 35.125393, 51.585369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753370, -0.459271, -0.470643,
		0.615911, -0.743572, -0.260299,
		-0.230409, -0.485975, 0.843054,
		46.537460, 34.979599, 51.838284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766422, 34.571323, 51.133137>,  <46.698746, 35.319782, 51.248146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766422, 34.571323, 51.133137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.510117, 34.634857, 51.433586>,  <46.356335, 34.672977, 51.613857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.510117, 34.634857, 51.433586>,  <46.766422, 34.571323, 51.133137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510117, 34.634857, 51.433586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706706, -0.504302, -0.496232,
		0.299976, -0.848794, 0.435389,
		-0.640766, 0.158834, 0.751127,
		46.317886, 34.682507, 51.658924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.410881, 33.921482, 51.132065>,  <46.766422, 34.571323, 51.133137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.410881, 33.921482, 51.132065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.176834, 34.155689, 51.356495>,  <46.036407, 34.296211, 51.491154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.176834, 34.155689, 51.356495>,  <46.410881, 33.921482, 51.132065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.176834, 34.155689, 51.356495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809799, -0.458670, -0.365850,
		0.043139, -0.668426, 0.742527,
		-0.585119, 0.585515, 0.561077,
		46.001297, 34.331345, 51.524818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926281, 33.525776, 51.583263>,  <46.410881, 33.921482, 51.132065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926281, 33.525776, 51.583263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.747337, 33.878639, 51.524391>,  <45.639973, 34.090359, 51.489067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.747337, 33.878639, 51.524391>,  <45.926281, 33.525776, 51.583263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747337, 33.878639, 51.524391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799137, -0.468169, -0.377091,
		-0.401559, -0.051081, 0.914408,
		-0.447360, 0.882161, -0.147177,
		45.613129, 34.143288, 51.480236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243172, 33.381805, 51.744457>,  <45.926281, 33.525776, 51.583263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243172, 33.381805, 51.744457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.235836, 33.731213, 51.549877>,  <45.231434, 33.940857, 51.433128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.235836, 33.731213, 51.549877>,  <45.243172, 33.381805, 51.744457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235836, 33.731213, 51.549877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879080, -0.245870, -0.408370,
		-0.476322, 0.420145, 0.772396,
		-0.018334, 0.873513, -0.486454,
		45.230335, 33.993267, 51.403942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500881, 33.565941, 51.871895>,  <45.243172, 33.381805, 51.744457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500881, 33.565941, 51.871895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.614452, 33.819511, 51.584137>,  <44.682594, 33.971653, 51.411484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.614452, 33.819511, 51.584137>,  <44.500881, 33.565941, 51.871895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614452, 33.819511, 51.584137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929536, -0.002119, -0.368726,
		-0.235268, 0.773394, 0.588652,
		0.283924, 0.633922, -0.719396,
		44.699631, 34.009689, 51.368317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014488, 33.955242, 51.880676>,  <44.500881, 33.565941, 51.871895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014488, 33.955242, 51.880676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.164028, 33.971027, 51.510017>,  <44.253750, 33.980499, 51.287621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.164028, 33.971027, 51.510017>,  <44.014488, 33.955242, 51.880676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164028, 33.971027, 51.510017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924980, -0.057594, -0.375626,
		-0.068194, 0.997560, 0.014974,
		0.373847, 0.039466, -0.926650,
		44.276184, 33.982868, 51.232021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628605, 34.499371, 51.571259>,  <44.014488, 33.955242, 51.880676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628605, 34.499371, 51.571259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.778351, 34.281784, 51.270870>,  <43.868198, 34.151234, 51.090637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.778351, 34.281784, 51.270870>,  <43.628605, 34.499371, 51.571259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778351, 34.281784, 51.270870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875993, 0.058138, -0.478808,
		0.304115, 0.837091, -0.454745,
		0.374368, -0.543966, -0.750966,
		43.890659, 34.118595, 51.045582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522076, 34.878624, 50.931824>,  <43.628605, 34.499371, 51.571259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522076, 34.878624, 50.931824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.554539, 34.495331, 50.822132>,  <43.574017, 34.265354, 50.756317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.554539, 34.495331, 50.822132>,  <43.522076, 34.878624, 50.931824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554539, 34.495331, 50.822132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838760, 0.082974, -0.538142,
		0.538420, 0.273687, -0.796994,
		0.081153, -0.958233, -0.274233,
		43.578884, 34.207859, 50.739861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237072, 34.857784, 50.324566>,  <43.522076, 34.878624, 50.931824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237072, 34.857784, 50.324566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.296398, 34.463062, 50.350567>,  <43.331993, 34.226231, 50.366165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.296398, 34.463062, 50.350567>,  <43.237072, 34.857784, 50.324566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296398, 34.463062, 50.350567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690298, -0.150371, -0.707727,
		0.708160, 0.060100, -0.703490,
		0.148319, -0.986801, 0.065000,
		43.340893, 34.167023, 50.370068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350956, 34.592415, 49.654877>,  <43.237072, 34.857784, 50.324566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350956, 34.592415, 49.654877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.207687, 34.279446, 49.858654>,  <43.121727, 34.091663, 49.980919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.207687, 34.279446, 49.858654>,  <43.350956, 34.592415, 49.654877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207687, 34.279446, 49.858654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836629, 0.026749, -0.547116,
		0.414449, -0.622174, -0.664177,
		-0.358168, -0.782422, 0.509443,
		43.100239, 34.044720, 50.011486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959492, 34.238029, 49.066208>,  <43.350956, 34.592415, 49.654877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959492, 34.238029, 49.066208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.810493, 34.124580, 49.419662>,  <42.721096, 34.056511, 49.631733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.810493, 34.124580, 49.419662>,  <42.959492, 34.238029, 49.066208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810493, 34.124580, 49.419662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924820, 0.034267, -0.378859,
		0.077174, -0.958324, -0.275064,
		-0.372496, -0.283622, 0.883632,
		42.698746, 34.039494, 49.684753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684029, 33.567581, 48.993626>,  <42.959492, 34.238029, 49.066208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684029, 33.567581, 48.993626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.508423, 33.739056, 49.309471>,  <42.403061, 33.841938, 49.498978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.508423, 33.739056, 49.309471>,  <42.684029, 33.567581, 48.993626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508423, 33.739056, 49.309471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898477, -0.211845, -0.384528,
		0.002436, -0.878267, 0.478165,
		-0.439015, 0.428683, 0.789618,
		42.376717, 33.867661, 49.546356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209641, 33.091080, 49.389290>,  <42.684029, 33.567581, 48.993626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209641, 33.091080, 49.389290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.070900, 33.452099, 49.491356>,  <41.987656, 33.668709, 49.552593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.070900, 33.452099, 49.491356>,  <42.209641, 33.091080, 49.389290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070900, 33.452099, 49.491356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915905, -0.267340, -0.299412,
		-0.202016, -0.337558, 0.919371,
		-0.346854, 0.902543, 0.255164,
		41.966843, 33.722862, 49.567905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603672, 32.924606, 49.470669>,  <42.209641, 33.091080, 49.389290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603672, 32.924606, 49.470669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.527313, 33.316750, 49.490482>,  <41.481499, 33.552036, 49.502373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.527313, 33.316750, 49.490482>,  <41.603672, 32.924606, 49.470669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527313, 33.316750, 49.490482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949138, -0.171470, -0.264076,
		-0.250396, -0.097425, 0.963229,
		-0.190892, 0.980360, 0.049535,
		41.470047, 33.610859, 49.505344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034531, 32.978603, 49.781799>,  <41.603672, 32.924606, 49.470669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034531, 32.978603, 49.781799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.016132, 33.349548, 49.633270>,  <41.005093, 33.572117, 49.544155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.016132, 33.349548, 49.633270>,  <41.034531, 32.978603, 49.781799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016132, 33.349548, 49.633270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957851, -0.146460, -0.247124,
		-0.283557, 0.344301, 0.895015,
		-0.045999, 0.927365, -0.371319,
		41.002335, 33.627758, 49.521873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491047, 33.362629, 50.101227>,  <41.034531, 32.978603, 49.781799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491047, 33.362629, 50.101227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.547752, 33.477573, 49.722317>,  <40.581776, 33.546539, 49.494972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.547752, 33.477573, 49.722317>,  <40.491047, 33.362629, 50.101227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547752, 33.477573, 49.722317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951706, -0.223689, -0.210286,
		-0.272323, 0.931336, 0.241774,
		0.141764, 0.287363, -0.947273,
		40.590282, 33.563782, 49.438133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801022, 33.558357, 49.916298>,  <40.491047, 33.362629, 50.101227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801022, 33.558357, 49.916298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.962902, 33.621067, 49.555935>,  <40.060028, 33.658691, 49.339718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.962902, 33.621067, 49.555935>,  <39.801022, 33.558357, 49.916298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962902, 33.621067, 49.555935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839860, -0.326004, -0.434002,
		-0.361741, 0.932279, -0.000265,
		0.404697, 0.156773, -0.900912,
		40.084312, 33.668098, 49.285660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233112, 33.138184, 49.584652>,  <39.801022, 33.558357, 49.916298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233112, 33.138184, 49.584652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.955975, 33.352581, 49.777599>,  <38.789692, 33.481220, 49.893368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.955975, 33.352581, 49.777599>,  <39.233112, 33.138184, 49.584652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955975, 33.352581, 49.777599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022908, 0.684970, -0.728211,
		-0.720725, -0.493485, -0.486855,
		-0.692843, 0.535993, 0.482370,
		38.748123, 33.513378, 49.922310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461155, 33.216942, 49.331581>,  <39.233112, 33.138184, 49.584652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461155, 33.216942, 49.331581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651009, 33.525940, 49.500324>,  <38.764923, 33.711338, 49.601570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651009, 33.525940, 49.500324>,  <38.461155, 33.216942, 49.331581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651009, 33.525940, 49.500324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064836, 0.447302, -0.892030,
		-0.877790, 0.450742, 0.162221,
		0.474637, 0.772497, 0.421862,
		38.793400, 33.757690, 49.626884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051109, 32.734123, 49.067966>,  <38.461155, 33.216942, 49.331581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051109, 32.734123, 49.067966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.115200, 32.388779, 48.876579>,  <38.153652, 32.181572, 48.761749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.115200, 32.388779, 48.876579>,  <38.051109, 32.734123, 49.067966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115200, 32.388779, 48.876579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827841, -0.381530, 0.411234,
		-0.537594, 0.330204, -0.775859,
		0.160223, -0.863365, -0.478465,
		38.163265, 32.129768, 48.733040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606426, 32.604004, 48.443111>,  <38.051109, 32.734123, 49.067966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606426, 32.604004, 48.443111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.708046, 32.250488, 48.600273>,  <37.769016, 32.038380, 48.694569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.708046, 32.250488, 48.600273>,  <37.606426, 32.604004, 48.443111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708046, 32.250488, 48.600273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962689, -0.270214, 0.014648,
		0.093222, -0.381962, -0.919464,
		0.254047, -0.883793, 0.392901,
		37.784260, 31.985350, 48.718143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110394, 32.091179, 48.195911>,  <37.606426, 32.604004, 48.443111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110394, 32.091179, 48.195911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.275337, 31.904366, 48.508793>,  <37.374302, 31.792276, 48.696522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.275337, 31.904366, 48.508793>,  <37.110394, 32.091179, 48.195911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275337, 31.904366, 48.508793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875035, -0.441982, 0.197398,
		0.253526, -0.765851, -0.590929,
		0.412358, -0.467038, 0.782200,
		37.399044, 31.764254, 48.743454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047146, 31.427198, 48.079411>,  <37.110394, 32.091179, 48.195911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047146, 31.427198, 48.079411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.072872, 31.474363, 48.475788>,  <37.088306, 31.502663, 48.713615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.072872, 31.474363, 48.475788>,  <37.047146, 31.427198, 48.079411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072872, 31.474363, 48.475788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779539, -0.614026, 0.123655,
		0.623043, -0.780428, 0.052430,
		0.064311, 0.117914, 0.990939,
		37.092167, 31.509737, 48.773071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919579, 30.796259, 48.300022>,  <37.047146, 31.427198, 48.079411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919579, 30.796259, 48.300022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848614, 31.014454, 48.627674>,  <36.806034, 31.145370, 48.824265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848614, 31.014454, 48.627674>,  <36.919579, 30.796259, 48.300022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848614, 31.014454, 48.627674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780534, -0.584942, 0.220477,
		0.599409, -0.600240, 0.529548,
		-0.177415, 0.545486, 0.819127,
		36.795387, 31.178099, 48.873413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779713, 30.267424, 48.788651>,  <36.919579, 30.796259, 48.300022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779713, 30.267424, 48.788651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.627312, 30.605181, 48.939293>,  <36.535870, 30.807835, 49.029678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.627312, 30.605181, 48.939293>,  <36.779713, 30.267424, 48.788651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627312, 30.605181, 48.939293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817651, -0.497873, 0.289082,
		0.431603, -0.197793, 0.880112,
		-0.381005, 0.844393, 0.376609,
		36.513012, 30.858500, 49.052277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344498, 30.010883, 49.250443>,  <36.779713, 30.267424, 48.788651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344498, 30.010883, 49.250443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.200958, 30.383091, 49.221169>,  <36.114834, 30.606417, 49.203606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.200958, 30.383091, 49.221169>,  <36.344498, 30.010883, 49.250443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200958, 30.383091, 49.221169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933281, -0.358923, 0.012652,
		-0.014495, 0.072842, 0.997238,
		-0.358853, 0.930521, -0.073184,
		36.093304, 30.662247, 49.199215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979591, 30.048235, 49.852333>,  <36.344498, 30.010883, 49.250443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979591, 30.048235, 49.852333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.831448, 30.310139, 49.588779>,  <35.742561, 30.467281, 49.430649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.831448, 30.310139, 49.588779>,  <35.979591, 30.048235, 49.852333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831448, 30.310139, 49.588779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923818, -0.333642, 0.187732,
		-0.096912, 0.678215, 0.728445,
		-0.370363, 0.654757, -0.658882,
		35.720341, 30.506565, 49.391113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281624, 30.073179, 50.053268>,  <35.979591, 30.048235, 49.852333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281624, 30.073179, 50.053268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250751, 30.276485, 49.710175>,  <35.232227, 30.398470, 49.504318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250751, 30.276485, 49.710175>,  <35.281624, 30.073179, 50.053268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250751, 30.276485, 49.710175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906432, -0.394071, -0.151950,
		-0.415239, 0.765750, 0.491125,
		-0.077183, 0.508267, -0.857734,
		35.227596, 30.428965, 49.452854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648468, 30.483004, 50.126938>,  <35.281624, 30.073179, 50.053268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648468, 30.483004, 50.126938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.721840, 30.473412, 49.733841>,  <34.765862, 30.467657, 49.497982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.721840, 30.473412, 49.733841>,  <34.648468, 30.483004, 50.126938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721840, 30.473412, 49.733841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945209, -0.278944, -0.169618,
		-0.270062, 0.960008, -0.073833,
		0.183430, -0.023981, -0.982740,
		34.776871, 30.466217, 49.439018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131321, 30.948458, 49.815365>,  <34.648468, 30.483004, 50.126938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131321, 30.948458, 49.815365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.258503, 30.680458, 49.547035>,  <34.334812, 30.519657, 49.386040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.258503, 30.680458, 49.547035>,  <34.131321, 30.948458, 49.815365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258503, 30.680458, 49.547035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934802, -0.339649, -0.103845,
		-0.158267, 0.660104, -0.734312,
		0.317957, -0.670002, -0.670822,
		34.353889, 30.479458, 49.345787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698444, 31.084990, 49.400932>,  <34.131321, 30.948458, 49.815365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698444, 31.084990, 49.400932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.842678, 30.721386, 49.317333>,  <33.929218, 30.503223, 49.267174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.842678, 30.721386, 49.317333>,  <33.698444, 31.084990, 49.400932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842678, 30.721386, 49.317333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921709, -0.312930, -0.229190,
		0.142936, 0.275274, -0.950681,
		0.360587, -0.909010, -0.208994,
		33.950855, 30.448683, 49.254635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.666214, 31.816380, 52.837471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.974731, 31.899809, 53.078003>,  <30.159842, 31.949867, 53.222324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.974731, 31.899809, 53.078003>,  <29.666214, 31.816380, 52.837471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974731, 31.899809, 53.078003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635664, -0.300187, -0.711210,
		0.032172, 0.930798, -0.364116,
		0.771295, 0.208574, 0.601332,
		30.206120, 31.962381, 53.258404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117558, 32.306282, 52.469624>,  <29.666214, 31.816380, 52.837471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117558, 32.306282, 52.469624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.339140, 32.124165, 52.748432>,  <30.472090, 32.014893, 52.915718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.339140, 32.124165, 52.748432>,  <30.117558, 32.306282, 52.469624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339140, 32.124165, 52.748432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636074, -0.308727, -0.707176,
		0.537162, 0.835103, 0.118579,
		0.553956, -0.455292, 0.697024,
		30.505327, 31.987577, 52.957539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856234, 32.517670, 52.355381>,  <30.117558, 32.306282, 52.469624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856234, 32.517670, 52.355381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.874767, 32.180138, 52.569221>,  <30.885887, 31.977617, 52.697525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.874767, 32.180138, 52.569221>,  <30.856234, 32.517670, 52.355381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874767, 32.180138, 52.569221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570938, -0.416780, -0.707336,
		0.819685, 0.337999, 0.462465,
		0.046333, -0.843831, 0.534605,
		30.888666, 31.926989, 52.729603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557404, 32.258602, 52.345516>,  <30.856234, 32.517670, 52.355381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557404, 32.258602, 52.345516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.344454, 31.929314, 52.424385>,  <31.216684, 31.731739, 52.471706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.344454, 31.929314, 52.424385>,  <31.557404, 32.258602, 52.345516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344454, 31.929314, 52.424385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585913, -0.526464, -0.616070,
		0.610969, -0.212453, 0.762614,
		-0.532375, -0.823225, 0.197174,
		31.184742, 31.682346, 52.483536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092548, 31.748894, 52.139488>,  <31.557404, 32.258602, 52.345516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092548, 31.748894, 52.139488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754494, 31.537809, 52.173588>,  <31.551661, 31.411160, 52.194046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754494, 31.537809, 52.173588>,  <32.092548, 31.748894, 52.139488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754494, 31.537809, 52.173588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345255, -0.660618, -0.666620,
		0.408099, -0.533952, 0.740507,
		-0.845136, -0.527711, 0.085248,
		31.500954, 31.379496, 52.199162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283638, 31.084549, 52.475010>,  <32.092548, 31.748894, 52.139488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283638, 31.084549, 52.475010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.951035, 31.036274, 52.258114>,  <31.751471, 31.007309, 52.127975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.951035, 31.036274, 52.258114>,  <32.283638, 31.084549, 52.475010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951035, 31.036274, 52.258114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481038, -0.644621, -0.594193,
		-0.277827, -0.754916, 0.594065,
		-0.831513, -0.120685, -0.542237,
		31.701580, 31.000069, 52.095444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219673, 30.345713, 52.386723>,  <32.283638, 31.084549, 52.475010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219673, 30.345713, 52.386723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.993864, 30.494766, 52.092113>,  <31.858379, 30.584198, 51.915348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.993864, 30.494766, 52.092113>,  <32.219673, 30.345713, 52.386723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993864, 30.494766, 52.092113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366204, -0.686606, -0.628066,
		-0.739735, -0.624274, 0.251145,
		-0.564523, 0.372632, -0.736518,
		31.824507, 30.606556, 51.871159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050831, 29.769449, 52.040291>,  <32.219673, 30.345713, 52.386723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050831, 29.769449, 52.040291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.963127, 30.054514, 51.773746>,  <31.910505, 30.225554, 51.613819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.963127, 30.054514, 51.773746>,  <32.050831, 29.769449, 52.040291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963127, 30.054514, 51.773746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518092, -0.493690, -0.698463,
		-0.826745, -0.498380, -0.260979,
		-0.219258, 0.712662, -0.666362,
		31.897350, 30.268312, 51.573837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897755, 29.473888, 51.472427>,  <32.050831, 29.769449, 52.040291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897755, 29.473888, 51.472427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008522, 29.833818, 51.337593>,  <32.074982, 30.049776, 51.256691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008522, 29.833818, 51.337593>,  <31.897755, 29.473888, 51.472427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008522, 29.833818, 51.337593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563380, -0.436226, -0.701648,
		-0.778408, 0.004389, -0.627743,
		0.276918, 0.899826, -0.337089,
		32.091599, 30.103765, 51.236465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756165, 29.473881, 50.804817>,  <31.897755, 29.473888, 51.472427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756165, 29.473881, 50.804817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.021847, 29.769350, 50.850754>,  <32.181255, 29.946632, 50.878315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.021847, 29.769350, 50.850754>,  <31.756165, 29.473881, 50.804817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021847, 29.769350, 50.850754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542478, -0.370576, -0.753917,
		-0.514340, 0.563058, -0.646854,
		0.664208, 0.738674, 0.114844,
		32.221107, 29.990952, 50.885208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752382, 29.757338, 50.135967>,  <31.756165, 29.473881, 50.804817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752382, 29.757338, 50.135967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.082554, 29.843765, 50.344574>,  <32.280659, 29.895622, 50.469738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.082554, 29.843765, 50.344574>,  <31.752382, 29.757338, 50.135967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082554, 29.843765, 50.344574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557659, -0.455526, -0.693910,
		0.087633, 0.863603, -0.496498,
		0.825431, 0.216067, 0.521516,
		32.330185, 29.908585, 50.501030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196743, 30.039217, 49.666058>,  <31.752382, 29.757338, 50.135967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196743, 30.039217, 49.666058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.448803, 29.948744, 49.963177>,  <32.600040, 29.894459, 50.141449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.448803, 29.948744, 49.963177>,  <32.196743, 30.039217, 49.666058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448803, 29.948744, 49.963177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649699, -0.370274, -0.663919,
		0.425207, 0.900965, -0.086376,
		0.630151, -0.226185, 0.742799,
		32.637848, 29.880888, 50.186016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569353, 30.214476, 49.352116>,  <32.196743, 30.039217, 49.666058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569353, 30.214476, 49.352116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.662819, 30.315039, 48.976414>,  <31.718899, 30.375376, 48.750992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.662819, 30.315039, 48.976414>,  <31.569353, 30.214476, 49.352116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662819, 30.315039, 48.976414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614663, 0.786680, 0.057654,
		0.753385, 0.563852, 0.338351,
		0.233665, 0.251407, -0.939252,
		31.732918, 30.390461, 48.694637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705297, 30.959064, 49.392876>,  <31.569353, 30.214476, 49.352116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705297, 30.959064, 49.392876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.625641, 30.831131, 49.022350>,  <31.577847, 30.754372, 48.800037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.625641, 30.831131, 49.022350>,  <31.705297, 30.959064, 49.392876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625641, 30.831131, 49.022350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526630, 0.832079, -0.174083,
		0.826440, 0.453155, -0.334137,
		-0.199142, -0.319836, -0.926309,
		31.565899, 30.735180, 48.744457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613455, 31.553013, 48.993435>,  <31.705297, 30.959064, 49.392876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613455, 31.553013, 48.993435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.476246, 31.292278, 48.722897>,  <31.393921, 31.135838, 48.560574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.476246, 31.292278, 48.722897>,  <31.613455, 31.553013, 48.993435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476246, 31.292278, 48.722897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612218, 0.701235, -0.365320,
		0.712407, 0.288760, -0.639604,
		-0.343023, -0.651834, -0.676349,
		31.373339, 31.096727, 48.519993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682264, 31.848764, 48.380943>,  <31.613455, 31.553013, 48.993435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682264, 31.848764, 48.380943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.400997, 31.573067, 48.311092>,  <31.232237, 31.407648, 48.269180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.400997, 31.573067, 48.311092>,  <31.682264, 31.848764, 48.380943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400997, 31.573067, 48.311092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597789, 0.706054, -0.379652,
		0.384970, -0.162570, -0.908498,
		-0.703169, -0.689245, -0.174627,
		31.190046, 31.366293, 48.258705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347544, 32.173080, 47.806831>,  <31.682264, 31.848764, 48.380943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347544, 32.173080, 47.806831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.110506, 31.886036, 47.953182>,  <30.968285, 31.713808, 48.040993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.110506, 31.886036, 47.953182>,  <31.347544, 32.173080, 47.806831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110506, 31.886036, 47.953182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775056, 0.631681, -0.016369,
		-0.219371, -0.293276, -0.930519,
		-0.592592, -0.717613, 0.365877,
		30.932728, 31.670752, 48.062946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773220, 32.145943, 47.375988>,  <31.347544, 32.173080, 47.806831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773220, 32.145943, 47.375988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.651087, 31.965557, 47.711464>,  <30.577806, 31.857327, 47.912750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.651087, 31.965557, 47.711464>,  <30.773220, 32.145943, 47.375988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651087, 31.965557, 47.711464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836223, 0.548306, -0.009615,
		-0.455525, -0.704270, -0.544519,
		-0.305334, -0.450960, 0.838693,
		30.559486, 31.830269, 47.963074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154051, 32.153419, 47.259468>,  <30.773220, 32.145943, 47.375988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154051, 32.153419, 47.259468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.180298, 32.089291, 47.653419>,  <30.196045, 32.050812, 47.889790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.180298, 32.089291, 47.653419>,  <30.154051, 32.153419, 47.259468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180298, 32.089291, 47.653419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782171, 0.604607, 0.150531,
		-0.619600, -0.780222, -0.085727,
		0.065616, -0.160322, 0.984881,
		30.199984, 32.041195, 47.948883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388407, 32.174263, 47.425335>,  <30.154051, 32.153419, 47.259468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388407, 32.174263, 47.425335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.603676, 32.261330, 47.751034>,  <29.732838, 32.313568, 47.946453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.603676, 32.261330, 47.751034>,  <29.388407, 32.174263, 47.425335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603676, 32.261330, 47.751034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594141, 0.783189, 0.183334,
		-0.597802, -0.582442, 0.550812,
		0.538171, 0.217663, 0.814245,
		29.765127, 32.326630, 47.995308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893831, 32.591026, 47.725403>,  <29.388407, 32.174263, 47.425335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893831, 32.591026, 47.725403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.228621, 32.667912, 47.930355>,  <29.429493, 32.714043, 48.053326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.228621, 32.667912, 47.930355>,  <28.893831, 32.591026, 47.725403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228621, 32.667912, 47.930355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340496, 0.915892, 0.212613,
		-0.428416, -0.352414, 0.832024,
		0.836972, 0.192214, 0.512378,
		29.479712, 32.725574, 48.084068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710096, 32.854828, 48.379314>,  <28.893831, 32.591026, 47.725403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710096, 32.854828, 48.379314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.088343, 32.974236, 48.327618>,  <29.315290, 33.045879, 48.296600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.088343, 32.974236, 48.327618>,  <28.710096, 32.854828, 48.379314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088343, 32.974236, 48.327618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250823, 0.922101, 0.294649,
		0.207129, -0.246208, 0.946826,
		0.945614, 0.298516, -0.129239,
		29.372026, 33.063789, 48.288845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839979, 33.275505, 48.978642>,  <28.710096, 32.854828, 48.379314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839979, 33.275505, 48.978642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.105495, 33.405212, 48.709057>,  <29.264805, 33.483036, 48.547306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.105495, 33.405212, 48.709057>,  <28.839979, 33.275505, 48.978642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105495, 33.405212, 48.709057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127986, 0.937080, 0.324808,
		0.736885, -0.129347, 0.663529,
		0.663792, 0.324268, -0.673965,
		29.304634, 33.502495, 48.506866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297855, 33.657581, 49.387276>,  <28.839979, 33.275505, 48.978642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297855, 33.657581, 49.387276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.360027, 33.753746, 49.004017>,  <29.397329, 33.811443, 48.774063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.360027, 33.753746, 49.004017>,  <29.297855, 33.657581, 49.387276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360027, 33.753746, 49.004017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180558, 0.946681, 0.266823,
		0.971206, -0.214474, 0.103733,
		0.155429, 0.240410, -0.958147,
		29.406656, 33.825871, 48.716572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829439, 34.045273, 49.408440>,  <29.297855, 33.657581, 49.387276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829439, 34.045273, 49.408440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.625008, 34.139889, 49.077900>,  <29.502348, 34.196659, 48.879578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.625008, 34.139889, 49.077900>,  <29.829439, 34.045273, 49.408440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625008, 34.139889, 49.077900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143069, 0.924567, 0.353139,
		0.847542, 0.298707, -0.438687,
		-0.511081, 0.236537, -0.826345,
		29.471684, 34.210850, 48.829998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099230, 34.688992, 49.244267>,  <29.829439, 34.045273, 49.408440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099230, 34.688992, 49.244267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.749846, 34.680088, 49.049713>,  <29.540215, 34.674744, 48.932980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.749846, 34.680088, 49.049713>,  <30.099230, 34.688992, 49.244267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749846, 34.680088, 49.049713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165028, 0.953360, 0.252725,
		0.458076, 0.301012, -0.836396,
		-0.873460, -0.022262, -0.486387,
		29.487808, 34.673409, 48.903797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050962, 35.346027, 48.777084>,  <30.099230, 34.688992, 49.244267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050962, 35.346027, 48.777084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.679029, 35.222870, 48.857693>,  <29.455870, 35.148975, 48.906059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.679029, 35.222870, 48.857693>,  <30.050962, 35.346027, 48.777084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679029, 35.222870, 48.857693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267329, 0.941533, 0.205063,
		-0.252878, 0.136802, -0.957778,
		-0.929832, -0.307898, 0.201522,
		29.400080, 35.130501, 48.918148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616243, 35.893406, 48.567459>,  <30.050962, 35.346027, 48.777084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616243, 35.893406, 48.567459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.368885, 35.672085, 48.790688>,  <29.220470, 35.539291, 48.924625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.368885, 35.672085, 48.790688>,  <29.616243, 35.893406, 48.567459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368885, 35.672085, 48.790688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322279, 0.826228, 0.462043,
		-0.716745, 0.105869, -0.689252,
		-0.618395, -0.553299, 0.558075,
		29.183367, 35.506096, 48.958111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910923, 36.508743, 48.298920>,  <29.616243, 35.893406, 48.567459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910923, 36.508743, 48.298920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.223763, 36.677734, 48.482151>,  <30.411467, 36.779129, 48.592091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.223763, 36.677734, 48.482151>,  <29.910923, 36.508743, 48.298920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223763, 36.677734, 48.482151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619515, -0.447790, -0.644737,
		-0.067268, 0.788031, -0.611949,
		0.782098, 0.422481, 0.458075,
		30.458391, 36.804478, 48.619572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285053, 36.806499, 47.768009>,  <29.910923, 36.508743, 48.298920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285053, 36.806499, 47.768009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.531891, 36.727924, 48.072800>,  <30.679993, 36.680779, 48.255676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.531891, 36.727924, 48.072800>,  <30.285053, 36.806499, 47.768009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531891, 36.727924, 48.072800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710773, -0.276349, -0.646864,
		0.337638, 0.940768, -0.030914,
		0.617092, -0.196433, 0.761978,
		30.717018, 36.668995, 48.301392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975960, 37.102970, 47.543674>,  <30.285053, 36.806499, 47.768009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975960, 37.102970, 47.543674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.045004, 36.837387, 47.834705>,  <31.086432, 36.678036, 48.009323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.045004, 36.837387, 47.834705>,  <30.975960, 37.102970, 47.543674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045004, 36.837387, 47.834705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739784, -0.400304, -0.540811,
		0.650327, 0.631599, 0.422088,
		0.172612, -0.663958, 0.727575,
		31.096786, 36.638199, 48.052979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682497, 37.122822, 47.645344>,  <30.975960, 37.102970, 47.543674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682497, 37.122822, 47.645344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.585999, 36.758629, 47.779701>,  <31.528099, 36.540112, 47.860313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.585999, 36.758629, 47.779701>,  <31.682497, 37.122822, 47.645344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585999, 36.758629, 47.779701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861627, -0.360211, -0.357555,
		0.446539, 0.203152, 0.871397,
		-0.241248, -0.910482, 0.335890,
		31.513624, 36.485485, 47.880466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268398, 36.908554, 47.958157>,  <31.682497, 37.122822, 47.645344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268398, 36.908554, 47.958157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.071159, 36.569393, 47.880280>,  <31.952814, 36.365894, 47.833553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.071159, 36.569393, 47.880280>,  <32.268398, 36.908554, 47.958157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071159, 36.569393, 47.880280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862797, -0.447948, -0.234360,
		0.111503, -0.283545, 0.952454,
		-0.493101, -0.847906, -0.194694,
		31.923229, 36.315022, 47.821873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637764, 36.317844, 48.341564>,  <32.268398, 36.908554, 47.958157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637764, 36.317844, 48.341564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.405685, 36.167381, 48.052601>,  <32.266438, 36.077103, 47.879223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.405685, 36.167381, 48.052601>,  <32.637764, 36.317844, 48.341564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405685, 36.167381, 48.052601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724531, -0.643536, -0.246813,
		-0.372058, -0.666610, 0.645914,
		-0.580196, -0.376156, -0.722412,
		32.231628, 36.054535, 47.835876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762966, 35.689320, 48.362083>,  <32.637764, 36.317844, 48.341564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762966, 35.689320, 48.362083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.611866, 35.727806, 47.993725>,  <32.521206, 35.750896, 47.772709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.611866, 35.727806, 47.993725>,  <32.762966, 35.689320, 48.362083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611866, 35.727806, 47.993725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815692, -0.436041, -0.380151,
		-0.438132, -0.894767, 0.086214,
		-0.377739, 0.096233, -0.920898,
		32.498543, 35.756672, 47.717457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897327, 35.116257, 48.176277>,  <32.762966, 35.689320, 48.362083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897327, 35.116257, 48.176277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836903, 35.313896, 47.833805>,  <32.800648, 35.432480, 47.628323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836903, 35.313896, 47.833805>,  <32.897327, 35.116257, 48.176277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836903, 35.313896, 47.833805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736580, -0.521370, -0.430839,
		-0.659265, -0.695728, -0.285187,
		-0.151059, 0.494101, -0.856181,
		32.791584, 35.462128, 47.576950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072601, 34.695408, 47.658154>,  <32.897327, 35.116257, 48.176277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072601, 34.695408, 47.658154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.100365, 35.033642, 47.446430>,  <33.117023, 35.236584, 47.319397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.100365, 35.033642, 47.446430>,  <33.072601, 34.695408, 47.658154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100365, 35.033642, 47.446430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771839, -0.381672, -0.508519,
		-0.632018, -0.373242, -0.679149,
		0.069411, 0.845587, -0.529306,
		33.121189, 35.287319, 47.287640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266685, 34.476521, 47.027660>,  <33.072601, 34.695408, 47.658154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266685, 34.476521, 47.027660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385468, 34.858471, 47.029812>,  <33.456738, 35.087643, 47.031101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385468, 34.858471, 47.029812>,  <33.266685, 34.476521, 47.027660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385468, 34.858471, 47.029812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810626, -0.249107, -0.529936,
		-0.504684, 0.161725, -0.848021,
		0.296952, 0.954877, 0.005378,
		33.474552, 35.144936, 47.031425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280777, 34.574696, 46.332542>,  <33.266685, 34.476521, 47.027660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280777, 34.574696, 46.332542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.478405, 34.860577, 46.530567>,  <33.596981, 35.032104, 46.649384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.478405, 34.860577, 46.530567>,  <33.280777, 34.574696, 46.332542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478405, 34.860577, 46.530567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835189, -0.231948, -0.498657,
		-0.241563, 0.659845, -0.711513,
		0.494071, 0.714706, 0.495066,
		33.626625, 35.074989, 46.679089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586285, 34.888710, 45.833279>,  <33.280777, 34.574696, 46.332542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586285, 34.888710, 45.833279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.809135, 34.934013, 46.162346>,  <33.942848, 34.961197, 46.359787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.809135, 34.934013, 46.162346>,  <33.586285, 34.888710, 45.833279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809135, 34.934013, 46.162346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770812, -0.439103, -0.461561,
		0.308960, 0.891270, -0.331937,
		0.557130, 0.113257, 0.822666,
		33.976273, 34.967991, 46.409145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.993374, 39.946022, 53.096470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.778835, 40.247265, 52.944073>,  <28.650112, 40.428013, 52.852634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.778835, 40.247265, 52.944073>,  <28.993374, 39.946022, 53.096470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778835, 40.247265, 52.944073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217259, -0.559399, -0.799919,
		-0.815556, -0.346260, 0.463652,
		-0.536346, 0.753112, -0.380993,
		28.617931, 40.473198, 52.829777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233343, 39.768665, 52.870605>,  <28.993374, 39.946022, 53.096470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233343, 39.768665, 52.870605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.405342, 40.059299, 52.656250>,  <28.508541, 40.233681, 52.527637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.405342, 40.059299, 52.656250>,  <28.233343, 39.768665, 52.870605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405342, 40.059299, 52.656250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072786, -0.619529, -0.781592,
		-0.899891, 0.297077, -0.319281,
		0.429997, 0.726587, -0.535885,
		28.534342, 40.277275, 52.495483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938810, 39.768051, 52.289036>,  <28.233343, 39.768665, 52.870605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938810, 39.768051, 52.289036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296701, 39.931011, 52.215828>,  <28.511436, 40.028786, 52.171906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296701, 39.931011, 52.215828>,  <27.938810, 39.768051, 52.289036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296701, 39.931011, 52.215828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124459, -0.620991, -0.773873,
		-0.428925, 0.669626, -0.606320,
		0.894725, 0.407395, -0.183018,
		28.565119, 40.053230, 52.160923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062342, 39.592148, 51.633297>,  <27.938810, 39.768051, 52.289036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062342, 39.592148, 51.633297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.435564, 39.724556, 51.689625>,  <28.659498, 39.804001, 51.723423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.435564, 39.724556, 51.689625>,  <28.062342, 39.592148, 51.633297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435564, 39.724556, 51.689625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301158, -0.504685, -0.809071,
		-0.196751, 0.797318, -0.570590,
		0.933056, 0.331023, 0.140821,
		28.715481, 39.823864, 51.731873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285368, 39.854809, 51.015949>,  <28.062342, 39.592148, 51.633297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285368, 39.854809, 51.015949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.629494, 39.748219, 51.189777>,  <28.835970, 39.684265, 51.294075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.629494, 39.748219, 51.189777>,  <28.285368, 39.854809, 51.015949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629494, 39.748219, 51.189777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259500, -0.504835, -0.823287,
		0.438771, 0.821056, -0.365167,
		0.860314, -0.266474, 0.434571,
		28.887589, 39.668278, 51.320148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683865, 39.850933, 50.542660>,  <28.285368, 39.854809, 51.015949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683865, 39.850933, 50.542660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.880451, 39.631771, 50.813438>,  <28.998404, 39.500275, 50.975906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.880451, 39.631771, 50.813438>,  <28.683865, 39.850933, 50.542660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880451, 39.631771, 50.813438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378415, -0.565737, -0.732628,
		0.784385, 0.616231, -0.070706,
		0.491469, -0.547906, 0.676947,
		29.027891, 39.467400, 51.016521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364933, 39.814713, 50.300591>,  <28.683865, 39.850933, 50.542660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364933, 39.814713, 50.300591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.333918, 39.499557, 50.544960>,  <29.315308, 39.310467, 50.691582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.333918, 39.499557, 50.544960>,  <29.364933, 39.814713, 50.300591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333918, 39.499557, 50.544960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503743, -0.559757, -0.657964,
		0.860367, 0.256728, 0.440295,
		-0.077541, -0.787886, 0.610921,
		29.310656, 39.263191, 50.728237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028984, 39.493092, 50.285568>,  <29.364933, 39.814713, 50.300591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028984, 39.493092, 50.285568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.760988, 39.223442, 50.409935>,  <29.600191, 39.061653, 50.484554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.760988, 39.223442, 50.409935>,  <30.028984, 39.493092, 50.285568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760988, 39.223442, 50.409935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412740, -0.686375, -0.598778,
		0.617057, -0.272846, 0.738102,
		-0.669989, -0.674125, 0.310918,
		29.559992, 39.021206, 50.503212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538803, 38.969059, 50.562111>,  <30.028984, 39.493092, 50.285568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538803, 38.969059, 50.562111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184069, 38.810474, 50.467171>,  <29.971228, 38.715324, 50.410206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184069, 38.810474, 50.467171>,  <30.538803, 38.969059, 50.562111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184069, 38.810474, 50.467171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453919, -0.651353, -0.608026,
		0.086457, -0.646960, 0.757606,
		-0.886838, -0.396461, -0.237353,
		29.918016, 38.691536, 50.395966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723835, 38.312744, 50.607723>,  <30.538803, 38.969059, 50.562111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723835, 38.312744, 50.607723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.362505, 38.280922, 50.439117>,  <30.145706, 38.261829, 50.337955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.362505, 38.280922, 50.439117>,  <30.723835, 38.312744, 50.607723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362505, 38.280922, 50.439117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350313, -0.703921, -0.617881,
		-0.247553, -0.705809, 0.663741,
		-0.903326, -0.079559, -0.421511,
		30.091507, 38.257053, 50.312664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501957, 37.574608, 50.578808>,  <30.723835, 38.312744, 50.607723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501957, 37.574608, 50.578808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.311172, 37.763409, 50.282234>,  <30.196701, 37.876690, 50.104290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.311172, 37.763409, 50.282234>,  <30.501957, 37.574608, 50.578808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311172, 37.763409, 50.282234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378487, -0.651049, -0.657938,
		-0.793256, -0.594435, 0.131880,
		-0.476961, 0.471999, -0.741434,
		30.168083, 37.905006, 50.059803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334658, 36.968758, 50.206860>,  <30.501957, 37.574608, 50.578808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334658, 36.968758, 50.206860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.278072, 37.272907, 49.953300>,  <30.244122, 37.455395, 49.801167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.278072, 37.272907, 49.953300>,  <30.334658, 36.968758, 50.206860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278072, 37.272907, 49.953300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365069, -0.555132, -0.747364,
		-0.920170, -0.337140, -0.199058,
		-0.141464, 0.760372, -0.633895,
		30.235634, 37.501019, 49.763130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812124, 36.764088, 49.724342>,  <30.334658, 36.968758, 50.206860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812124, 36.764088, 49.724342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.011208, 37.055973, 49.536808>,  <30.130657, 37.231102, 49.424286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.011208, 37.055973, 49.536808>,  <29.812124, 36.764088, 49.724342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011208, 37.055973, 49.536808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249306, -0.638091, -0.728482,
		-0.830742, 0.245688, -0.499505,
		0.497709, 0.729710, -0.468838,
		30.160521, 37.274887, 49.396156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644960, 36.657940, 49.050446>,  <29.812124, 36.764088, 49.724342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644960, 36.657940, 49.050446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.980007, 36.874763, 49.023411>,  <30.181036, 37.004856, 49.007191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.980007, 36.874763, 49.023411>,  <29.644960, 36.657940, 49.050446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980007, 36.874763, 49.023411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319010, -0.585844, -0.744996,
		-0.443428, 0.602461, -0.663636,
		0.837618, 0.542059, -0.067589,
		30.231293, 37.037380, 49.003136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038664, 36.335415, 48.676579>,  <29.644960, 36.657940, 49.050446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038664, 36.335415, 48.676579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996956, 36.060368, 48.963997>,  <28.971931, 35.895340, 49.136448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996956, 36.060368, 48.963997>,  <29.038664, 36.335415, 48.676579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996956, 36.060368, 48.963997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553697, 0.640296, 0.532390,
		-0.826164, -0.342342, -0.447499,
		-0.104272, -0.687621, 0.718543,
		28.965673, 35.854080, 49.179562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356144, 36.442375, 48.878696>,  <29.038664, 36.335415, 48.676579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356144, 36.442375, 48.878696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.538990, 36.242260, 49.172844>,  <28.648699, 36.122192, 49.349331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.538990, 36.242260, 49.172844>,  <28.356144, 36.442375, 48.878696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538990, 36.242260, 49.172844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583017, 0.455840, 0.672533,
		-0.671666, -0.736156, -0.083302,
		0.457116, -0.500284, 0.735364,
		28.676125, 36.092175, 49.393452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788496, 36.180996, 49.145596>,  <28.356144, 36.442375, 48.878696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788496, 36.180996, 49.145596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.093388, 36.185368, 49.404480>,  <28.276323, 36.187992, 49.559811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.093388, 36.185368, 49.404480>,  <27.788496, 36.180996, 49.145596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093388, 36.185368, 49.404480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565308, 0.498310, 0.657354,
		-0.315331, -0.866930, 0.386004,
		0.762229, 0.010927, 0.647215,
		28.322056, 36.188644, 49.598644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564102, 35.957085, 49.653484>,  <27.788496, 36.180996, 49.145596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564102, 35.957085, 49.653484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871689, 36.148422, 49.823132>,  <28.056242, 36.263226, 49.924919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871689, 36.148422, 49.823132>,  <27.564102, 35.957085, 49.653484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871689, 36.148422, 49.823132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612641, 0.361857, 0.702660,
		0.182646, -0.800153, 0.571311,
		0.768968, 0.478346, 0.424114,
		28.102379, 36.291927, 49.950367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407162, 35.850170, 50.403648>,  <27.564102, 35.957085, 49.653484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407162, 35.850170, 50.403648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673847, 36.147701, 50.384872>,  <27.833858, 36.326221, 50.373608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673847, 36.147701, 50.384872>,  <27.407162, 35.850170, 50.403648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673847, 36.147701, 50.384872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474897, 0.472516, 0.742430,
		0.574425, -0.472696, 0.668278,
		0.666715, 0.743833, -0.046943,
		27.873861, 36.370850, 50.370789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523272, 36.043774, 51.058960>,  <27.407162, 35.850170, 50.403648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523272, 36.043774, 51.058960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.640223, 36.365891, 50.852654>,  <27.710394, 36.559162, 50.728870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.640223, 36.365891, 50.852654>,  <27.523272, 36.043774, 51.058960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640223, 36.365891, 50.852654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327718, 0.591052, 0.737060,
		0.898397, -0.046473, 0.436719,
		0.292378, 0.805293, -0.515770,
		27.727936, 36.607479, 50.697922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963705, 36.503269, 51.549484>,  <27.523272, 36.043774, 51.058960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963705, 36.503269, 51.549484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814520, 36.708103, 51.239990>,  <27.725010, 36.831005, 51.054295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814520, 36.708103, 51.239990>,  <27.963705, 36.503269, 51.549484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814520, 36.708103, 51.239990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254417, 0.745499, 0.616038,
		0.892284, 0.426610, -0.147758,
		-0.372962, 0.512089, -0.773734,
		27.702631, 36.861729, 51.007870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123966, 37.151192, 51.800873>,  <27.963705, 36.503269, 51.549484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123966, 37.151192, 51.800873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.858843, 37.203590, 51.505974>,  <27.699770, 37.235031, 51.329037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.858843, 37.203590, 51.505974>,  <28.123966, 37.151192, 51.800873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858843, 37.203590, 51.505974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384947, 0.784896, 0.485545,
		0.642264, 0.605621, -0.469807,
		-0.662807, 0.130997, -0.737243,
		27.660002, 37.242889, 51.284801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082840, 37.816936, 51.811234>,  <28.123966, 37.151192, 51.800873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082840, 37.816936, 51.811234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.783714, 37.676147, 51.586060>,  <27.604239, 37.591675, 51.450954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.783714, 37.676147, 51.586060>,  <28.082840, 37.816936, 51.811234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783714, 37.676147, 51.586060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598690, 0.723993, 0.342643,
		0.286957, 0.593254, -0.752133,
		-0.747814, -0.351971, -0.562930,
		27.559370, 37.570557, 51.417179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903492, 38.468262, 51.417850>,  <28.082840, 37.816936, 51.811234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903492, 38.468262, 51.417850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.589565, 38.220371, 51.418083>,  <27.401209, 38.071636, 51.418224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.589565, 38.220371, 51.418083>,  <27.903492, 38.468262, 51.417850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589565, 38.220371, 51.418083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549158, 0.695888, 0.462781,
		-0.287206, 0.362876, -0.886473,
		-0.784818, -0.619727, 0.000587,
		27.354120, 38.034454, 51.418259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246462, 38.897434, 51.353298>,  <27.903492, 38.468262, 51.417850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246462, 38.897434, 51.353298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153454, 38.538849, 51.504181>,  <27.097649, 38.323696, 51.594711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153454, 38.538849, 51.504181>,  <27.246462, 38.897434, 51.353298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153454, 38.538849, 51.504181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562429, 0.440352, 0.699832,
		-0.793479, -0.049428, -0.606588,
		-0.232520, -0.896464, 0.377209,
		27.083698, 38.269909, 51.617344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437000, 38.862282, 51.421238>,  <27.246462, 38.897434, 51.353298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437000, 38.862282, 51.421238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.612305, 38.607994, 51.675415>,  <26.717487, 38.455421, 51.827919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.612305, 38.607994, 51.675415>,  <26.437000, 38.862282, 51.421238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612305, 38.607994, 51.675415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572138, 0.347939, 0.742696,
		-0.693242, -0.689054, -0.211232,
		0.438262, -0.635722, 0.635440,
		26.743784, 38.417278, 51.866047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977179, 38.605087, 51.742958>,  <26.437000, 38.862282, 51.421238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977179, 38.605087, 51.742958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.268208, 38.514923, 52.002136>,  <26.442825, 38.460823, 52.157642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.268208, 38.514923, 52.002136>,  <25.977179, 38.605087, 51.742958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268208, 38.514923, 52.002136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618255, 0.193893, 0.761686,
		-0.297324, -0.954775, 0.001709,
		0.727571, -0.225411, 0.647943,
		26.486479, 38.447300, 52.196518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622972, 38.238598, 52.359619>,  <25.977179, 38.605087, 51.742958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622972, 38.238598, 52.359619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.985914, 38.342228, 52.492035>,  <26.203680, 38.404404, 52.571484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.985914, 38.342228, 52.492035>,  <25.622972, 38.238598, 52.359619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985914, 38.342228, 52.492035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411035, 0.381836, 0.827799,
		0.088056, -0.887177, 0.452948,
		0.907357, 0.259071, 0.331038,
		26.258121, 38.419949, 52.591347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.327065, 38.232456, 57.675663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205063, 38.282661, 57.298046>,  <32.131863, 38.312786, 57.071476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205063, 38.282661, 57.298046>,  <32.327065, 38.232456, 57.675663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205063, 38.282661, 57.298046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652382, -0.694630, -0.303128,
		-0.693807, -0.708333, 0.129987,
		-0.305009, 0.125512, -0.944043,
		32.113564, 38.320316, 57.014832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287720, 37.549950, 57.431660>,  <32.327065, 38.232456, 57.675663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287720, 37.549950, 57.431660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275841, 37.776447, 57.102180>,  <32.268715, 37.912346, 56.904491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275841, 37.776447, 57.102180>,  <32.287720, 37.549950, 57.431660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275841, 37.776447, 57.102180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578975, -0.662004, -0.475962,
		-0.814805, -0.491035, -0.308185,
		-0.029695, 0.566247, -0.823700,
		32.266933, 37.946320, 56.855072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264812, 37.135098, 56.978825>,  <32.287720, 37.549950, 57.431660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264812, 37.135098, 56.978825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.381187, 37.440849, 56.748665>,  <32.451012, 37.624302, 56.610569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.381187, 37.440849, 56.748665>,  <32.264812, 37.135098, 56.978825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381187, 37.440849, 56.748665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625637, -0.607001, -0.490028,
		-0.723833, -0.217423, -0.654822,
		0.290935, 0.764380, -0.575395,
		32.468468, 37.670162, 56.576046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202244, 36.916500, 56.285828>,  <32.264812, 37.135098, 56.978825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202244, 36.916500, 56.285828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462883, 37.219471, 56.269215>,  <32.619267, 37.401253, 56.259247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462883, 37.219471, 56.269215>,  <32.202244, 36.916500, 56.285828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462883, 37.219471, 56.269215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618710, -0.562351, -0.548598,
		-0.438880, 0.331767, -0.835054,
		0.651600, 0.757425, -0.041537,
		32.658363, 37.446697, 56.256752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386532, 37.060036, 55.546612>,  <32.202244, 36.916500, 56.285828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386532, 37.060036, 55.546612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676151, 37.205437, 55.781090>,  <32.849922, 37.292675, 55.921776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676151, 37.205437, 55.781090>,  <32.386532, 37.060036, 55.546612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676151, 37.205437, 55.781090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687017, -0.455619, -0.566056,
		0.061320, 0.812577, -0.579619,
		0.724049, 0.363498, 0.586193,
		32.893368, 37.314487, 55.956947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815914, 37.423168, 55.121845>,  <32.386532, 37.060036, 55.546612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815914, 37.423168, 55.121845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.028255, 37.316891, 55.443741>,  <33.155659, 37.253124, 55.636879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.028255, 37.316891, 55.443741>,  <32.815914, 37.423168, 55.121845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028255, 37.316891, 55.443741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621634, -0.523319, -0.582845,
		0.575993, 0.809657, -0.112641,
		0.530852, -0.265692, 0.804738,
		33.187511, 37.237183, 55.685162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499889, 37.370346, 54.867908>,  <32.815914, 37.423168, 55.121845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499889, 37.370346, 54.867908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.549412, 37.163338, 55.206573>,  <33.579124, 37.039131, 55.409771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.549412, 37.163338, 55.206573>,  <33.499889, 37.370346, 54.867908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549412, 37.163338, 55.206573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660909, -0.593436, -0.459384,
		0.740183, 0.616443, 0.268565,
		0.123808, -0.517525, 0.846664,
		33.586555, 37.008080, 55.460571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270397, 37.184597, 54.962524>,  <33.499889, 37.370346, 54.867908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270397, 37.184597, 54.962524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072731, 36.926994, 55.196125>,  <33.954132, 36.772434, 55.336285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072731, 36.926994, 55.196125>,  <34.270397, 37.184597, 54.962524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072731, 36.926994, 55.196125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543582, -0.753133, -0.370554,
		0.678470, 0.134339, 0.722241,
		-0.494163, -0.644007, 0.584002,
		33.924480, 36.733791, 55.371326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785931, 36.824326, 55.264782>,  <34.270397, 37.184597, 54.962524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785931, 36.824326, 55.264782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452538, 36.603382, 55.270592>,  <34.252502, 36.470818, 55.274078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452538, 36.603382, 55.270592>,  <34.785931, 36.824326, 55.264782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452538, 36.603382, 55.270592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445274, -0.686998, -0.574252,
		0.327167, -0.472163, 0.818550,
		-0.833483, -0.552355, 0.014521,
		34.202492, 36.437675, 55.274948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072456, 36.246876, 55.201317>,  <34.785931, 36.824326, 55.264782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072456, 36.246876, 55.201317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693069, 36.123489, 55.172321>,  <34.465435, 36.049458, 55.154926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693069, 36.123489, 55.172321>,  <35.072456, 36.246876, 55.201317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693069, 36.123489, 55.172321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304565, -0.824334, -0.477194,
		0.087447, -0.474681, 0.875804,
		-0.948469, -0.308468, -0.072485,
		34.408527, 36.030949, 55.150578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070400, 35.579388, 55.450447>,  <35.072456, 36.246876, 55.201317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070400, 35.579388, 55.450447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740871, 35.609470, 55.225712>,  <34.543156, 35.627522, 55.090870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.740871, 35.609470, 55.225712>,  <35.070400, 35.579388, 55.450447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740871, 35.609470, 55.225712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290018, -0.795688, -0.531762,
		-0.487045, -0.601019, 0.633690,
		-0.823819, 0.075211, -0.561842,
		34.493725, 35.632034, 55.057159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866360, 34.911488, 55.427639>,  <35.070400, 35.579388, 55.450447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866360, 34.911488, 55.427639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697399, 35.114819, 55.127457>,  <34.596024, 35.236816, 54.947346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697399, 35.114819, 55.127457>,  <34.866360, 34.911488, 55.427639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697399, 35.114819, 55.127457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235350, -0.738039, -0.632383,
		-0.875321, -0.443740, 0.192115,
		-0.422402, 0.508324, -0.750455,
		34.570679, 35.267315, 54.902321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352806, 34.491528, 55.096310>,  <34.866360, 34.911488, 55.427639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352806, 34.491528, 55.096310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486416, 34.734463, 54.807987>,  <34.566582, 34.880222, 54.634995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486416, 34.734463, 54.807987>,  <34.352806, 34.491528, 55.096310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486416, 34.734463, 54.807987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181770, -0.791884, -0.582992,
		-0.924870, 0.063714, -0.374907,
		0.334028, 0.607339, -0.720808,
		34.586624, 34.916664, 54.591743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952118, 34.323753, 54.469532>,  <34.352806, 34.491528, 55.096310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952118, 34.323753, 54.469532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.297001, 34.502224, 54.373596>,  <34.503933, 34.609306, 54.316036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.297001, 34.502224, 54.373596>,  <33.952118, 34.323753, 54.469532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297001, 34.502224, 54.373596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220816, -0.757178, -0.614754,
		-0.455888, 0.477086, -0.751368,
		0.862210, 0.446174, -0.239840,
		34.555664, 34.636078, 54.301643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332886, 34.174179, 54.024963>,  <33.952118, 34.323753, 54.469532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332886, 34.174179, 54.024963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148960, 33.835117, 54.130829>,  <33.038605, 33.631680, 54.194347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148960, 33.835117, 54.130829>,  <33.332886, 34.174179, 54.024963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148960, 33.835117, 54.130829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656115, 0.525135, 0.541983,
		-0.598401, 0.075562, -0.797626,
		-0.459815, -0.847658, 0.264664,
		33.011017, 33.580818, 54.210228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646873, 34.319504, 53.886547>,  <33.332886, 34.174179, 54.024963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646873, 34.319504, 53.886547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664532, 34.028400, 54.160313>,  <32.675125, 33.853741, 54.324574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664532, 34.028400, 54.160313>,  <32.646873, 34.319504, 53.886547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664532, 34.028400, 54.160313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473612, 0.587963, 0.655738,
		-0.879627, -0.353093, -0.318719,
		0.044141, -0.727754, 0.684416,
		32.677773, 33.810074, 54.365639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954489, 34.133255, 54.016121>,  <32.646873, 34.319504, 53.886547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954489, 34.133255, 54.016121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.195423, 34.050602, 54.324535>,  <32.339985, 34.001011, 54.509583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.195423, 34.050602, 54.324535>,  <31.954489, 34.133255, 54.016121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195423, 34.050602, 54.324535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662916, 0.408587, 0.627374,
		-0.444670, -0.889022, 0.109127,
		0.602337, -0.206632, 0.771034,
		32.376125, 33.988613, 54.555847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443096, 33.900257, 54.549400>,  <31.954489, 34.133255, 54.016121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443096, 33.900257, 54.549400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.791428, 34.000080, 54.718815>,  <32.000427, 34.059975, 54.820465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.791428, 34.000080, 54.718815>,  <31.443096, 33.900257, 54.549400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791428, 34.000080, 54.718815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486441, 0.561826, 0.669123,
		-0.070970, -0.788716, 0.610648,
		0.870826, 0.249556, 0.423537,
		32.052677, 34.074947, 54.845875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239904, 33.877079, 55.201416>,  <31.443096, 33.900257, 54.549400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239904, 33.877079, 55.201416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.579546, 34.088303, 55.206650>,  <31.783331, 34.215038, 55.209789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.579546, 34.088303, 55.206650>,  <31.239904, 33.877079, 55.201416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579546, 34.088303, 55.206650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370877, 0.578351, 0.726609,
		0.376126, -0.621821, 0.686927,
		0.849105, 0.528062, 0.013087,
		31.834278, 34.246723, 55.210575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539097, 33.857910, 55.897236>,  <31.239904, 33.877079, 55.201416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539097, 33.857910, 55.897236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.699675, 34.176544, 55.716442>,  <31.796021, 34.367725, 55.607967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.699675, 34.176544, 55.716442>,  <31.539097, 33.857910, 55.897236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699675, 34.176544, 55.716442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290787, 0.578815, 0.761851,
		0.868496, -0.174410, 0.464000,
		0.401444, 0.796589, -0.451982,
		31.820108, 34.415520, 55.580849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831873, 34.271610, 56.493282>,  <31.539097, 33.857910, 55.897236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831873, 34.271610, 56.493282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.773209, 34.512680, 56.179527>,  <31.738010, 34.657322, 55.991272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.773209, 34.512680, 56.179527>,  <31.831873, 34.271610, 56.493282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773209, 34.512680, 56.179527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376103, 0.699439, 0.607726,
		0.914897, 0.384142, 0.124087,
		-0.146662, 0.602677, -0.784392,
		31.729210, 34.693481, 55.944210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092838, 34.903751, 56.723572>,  <31.831873, 34.271610, 56.493282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092838, 34.903751, 56.723572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858650, 35.012531, 56.418083>,  <31.718138, 35.077801, 56.234791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858650, 35.012531, 56.418083>,  <32.092838, 34.903751, 56.723572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858650, 35.012531, 56.418083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424850, 0.699409, 0.574742,
		0.690457, 0.660960, -0.293941,
		-0.585467, 0.271954, -0.763721,
		31.683010, 35.094116, 56.188969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107788, 35.543003, 56.657570>,  <32.092838, 34.903751, 56.723572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107788, 35.543003, 56.657570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757744, 35.506180, 56.467537>,  <31.547716, 35.484085, 56.353516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757744, 35.506180, 56.467537>,  <32.107788, 35.543003, 56.657570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757744, 35.506180, 56.467537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417152, 0.641108, 0.644177,
		0.245280, 0.761910, -0.599442,
		-0.875112, -0.092055, -0.475084,
		31.495211, 35.478565, 56.325012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748789, 36.293552, 56.536476>,  <32.107788, 35.543003, 56.657570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748789, 36.293552, 56.536476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.444798, 36.036884, 56.495117>,  <31.262403, 35.882881, 56.470303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.444798, 36.036884, 56.495117>,  <31.748789, 36.293552, 56.536476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444798, 36.036884, 56.495117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584329, 0.604890, 0.540987,
		-0.284593, 0.471555, -0.834651,
		-0.759977, -0.641672, -0.103396,
		31.216805, 35.844383, 56.464100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187305, 36.675430, 56.187832>,  <31.748789, 36.293552, 56.536476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187305, 36.675430, 56.187832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.970985, 36.381222, 56.351067>,  <30.841192, 36.204697, 56.449009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.970985, 36.381222, 56.351067>,  <31.187305, 36.675430, 56.187832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970985, 36.381222, 56.351067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656883, 0.672334, 0.341279,
		-0.525392, -0.083504, -0.846752,
		-0.540802, -0.735523, 0.408091,
		30.808744, 36.160564, 56.473495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489027, 36.874268, 56.057747>,  <31.187305, 36.675430, 56.187832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489027, 36.874268, 56.057747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.457743, 36.594322, 56.341740>,  <30.438972, 36.426353, 56.512135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.457743, 36.594322, 56.341740>,  <30.489027, 36.874268, 56.057747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457743, 36.594322, 56.341740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675694, 0.560846, 0.478424,
		-0.733022, -0.442310, -0.516760,
		-0.078211, -0.699866, 0.709979,
		30.434278, 36.384361, 56.554733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671352, 36.724701, 56.131950>,  <30.489027, 36.874268, 56.057747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671352, 36.724701, 56.131950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.856848, 36.605202, 56.465584>,  <29.968145, 36.533504, 56.665764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.856848, 36.605202, 56.465584>,  <29.671352, 36.724701, 56.131950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856848, 36.605202, 56.465584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663367, 0.506956, 0.550400,
		-0.587273, -0.808547, 0.036918,
		0.463740, -0.298745, 0.834085,
		29.995970, 36.515579, 56.715809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133738, 36.427788, 56.517414>,  <29.671352, 36.724701, 56.131950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133738, 36.427788, 56.517414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.418840, 36.531651, 56.778046>,  <29.589903, 36.593967, 56.934425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.418840, 36.531651, 56.778046>,  <29.133738, 36.427788, 56.517414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418840, 36.531651, 56.778046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691011, 0.419301, 0.588804,
		-0.120323, -0.869924, 0.478283,
		0.712759, 0.259652, 0.651579,
		29.632668, 36.609547, 56.973518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522856, 35.940338, 56.347012>,  <29.133738, 36.427788, 56.517414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522856, 35.940338, 56.347012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.290188, 36.028267, 56.033749>,  <28.150587, 36.081024, 55.845791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.290188, 36.028267, 56.033749>,  <28.522856, 35.940338, 56.347012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290188, 36.028267, 56.033749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346442, -0.804156, -0.483024,
		-0.735960, -0.552280, 0.391599,
		-0.581671, 0.219820, -0.783159,
		28.115686, 36.094212, 55.798801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081944, 35.309296, 56.187534>,  <28.522856, 35.940338, 56.347012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081944, 35.309296, 56.187534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.084566, 35.537437, 55.858986>,  <28.086140, 35.674324, 55.661858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.084566, 35.537437, 55.858986>,  <28.081944, 35.309296, 56.187534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084566, 35.537437, 55.858986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283376, -0.788779, -0.545459,
		-0.958986, -0.229180, -0.166799,
		0.006559, 0.570355, -0.821372,
		28.086535, 35.708546, 55.612576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595585, 34.944870, 55.657455>,  <28.081944, 35.309296, 56.187534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595585, 34.944870, 55.657455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.817053, 35.203377, 55.447392>,  <27.949932, 35.358479, 55.321354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.817053, 35.203377, 55.447392>,  <27.595585, 34.944870, 55.657455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817053, 35.203377, 55.447392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271203, -0.736203, -0.620044,
		-0.787338, 0.200872, -0.582880,
		0.553667, 0.646263, -0.525163,
		27.983152, 35.397255, 55.289845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338455, 34.913750, 55.011513>,  <27.595585, 34.944870, 55.657455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338455, 34.913750, 55.011513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.708323, 35.060802, 54.971840>,  <27.930243, 35.149033, 54.948036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.708323, 35.060802, 54.971840>,  <27.338455, 34.913750, 55.011513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708323, 35.060802, 54.971840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267584, -0.812685, -0.517631,
		-0.270905, 0.452096, -0.849835,
		0.924667, 0.367632, -0.099187,
		27.985723, 35.171093, 54.942085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536057, 34.762657, 54.316826>,  <27.338455, 34.913750, 55.011513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536057, 34.762657, 54.316826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.873711, 34.833500, 54.519238>,  <28.076303, 34.876007, 54.640686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.873711, 34.833500, 54.519238>,  <27.536057, 34.762657, 54.316826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873711, 34.833500, 54.519238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456755, -0.731804, -0.505805,
		0.280731, 0.658100, -0.698638,
		0.844136, 0.177112, 0.506030,
		28.126951, 34.886635, 54.671047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098970, 34.824390, 53.851654>,  <27.536057, 34.762657, 54.316826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098970, 34.824390, 53.851654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.294527, 34.753677, 54.193352>,  <28.411861, 34.711250, 54.398369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.294527, 34.753677, 54.193352>,  <28.098970, 34.824390, 53.851654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294527, 34.753677, 54.193352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470761, -0.770957, -0.428964,
		0.734419, 0.611862, -0.293692,
		0.488890, -0.176781, 0.854245,
		28.441195, 34.700642, 54.449627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745359, 34.471935, 53.648884>,  <28.098970, 34.824390, 53.851654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745359, 34.471935, 53.648884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.714331, 34.392288, 54.039642>,  <28.695713, 34.344498, 54.274097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.714331, 34.392288, 54.039642>,  <28.745359, 34.471935, 53.648884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714331, 34.392288, 54.039642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588776, -0.799887, -0.116289,
		0.804566, 0.566154, 0.179286,
		-0.077571, -0.199122, 0.976900,
		28.691059, 34.332550, 54.332714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419905, 34.352520, 53.809235>,  <28.745359, 34.471935, 53.648884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419905, 34.352520, 53.809235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.181919, 34.179234, 54.080040>,  <29.039127, 34.075260, 54.242523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.181919, 34.179234, 54.080040>,  <29.419905, 34.352520, 53.809235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181919, 34.179234, 54.080040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569066, -0.821886, -0.025824,
		0.567612, 0.369898, 0.735522,
		-0.594963, -0.433218, 0.677009,
		29.003429, 34.049267, 54.283142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860029, 34.109047, 54.338058>,  <29.419905, 34.352520, 53.809235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860029, 34.109047, 54.338058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.509275, 33.918201, 54.361504>,  <29.298822, 33.803692, 54.375568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.509275, 33.918201, 54.361504>,  <29.860029, 34.109047, 54.338058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509275, 33.918201, 54.361504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478833, -0.877699, 0.019053,
		0.042352, 0.044772, 0.998099,
		-0.876884, -0.477115, 0.058611,
		29.246210, 33.775066, 54.379086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903715, 33.536674, 54.895931>,  <29.860029, 34.109047, 54.338058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903715, 33.536674, 54.895931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.606712, 33.449020, 54.642738>,  <29.428511, 33.396427, 54.490822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.606712, 33.449020, 54.642738>,  <29.903715, 33.536674, 54.895931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606712, 33.449020, 54.642738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512660, -0.794108, -0.326453,
		-0.431119, -0.566898, 0.701971,
		-0.742507, -0.219132, -0.632981,
		29.383961, 33.383282, 54.452843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863401, 32.874577, 54.981300>,  <29.903715, 33.536674, 54.895931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863401, 32.874577, 54.981300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.667538, 32.934875, 54.637787>,  <29.550018, 32.971054, 54.431679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.667538, 32.934875, 54.637787>,  <29.863401, 32.874577, 54.981300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667538, 32.934875, 54.637787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413110, -0.827263, -0.380758,
		-0.767836, -0.541214, 0.342804,
		-0.489661, 0.150744, -0.858783,
		29.520639, 32.980099, 54.380154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543182, 32.200222, 54.810936>,  <29.863401, 32.874577, 54.981300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543182, 32.200222, 54.810936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.555077, 32.392418, 54.460339>,  <29.562214, 32.507736, 54.249981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.555077, 32.392418, 54.460339>,  <29.543182, 32.200222, 54.810936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555077, 32.392418, 54.460339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407659, -0.806471, -0.428274,
		-0.912650, -0.344576, -0.219857,
		0.029736, 0.480491, -0.876495,
		29.563997, 32.536564, 54.197392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388515, 31.664742, 54.377834>,  <29.543182, 32.200222, 54.810936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388515, 31.664742, 54.377834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.572092, 31.960331, 54.180538>,  <29.682238, 32.137684, 54.062160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.572092, 31.960331, 54.180538>,  <29.388515, 31.664742, 54.377834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572092, 31.960331, 54.180538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592866, -0.668202, -0.449462,
		-0.661726, -0.086148, -0.744780,
		0.458943, 0.738975, -0.493241,
		29.709774, 32.182022, 54.032566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357571, 31.544535, 53.602669>,  <29.388515, 31.664742, 54.377834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357571, 31.544535, 53.602669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.676079, 31.765682, 53.700886>,  <29.867184, 31.898371, 53.759815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.676079, 31.765682, 53.700886>,  <29.357571, 31.544535, 53.602669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676079, 31.765682, 53.700886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604935, -0.725652, -0.327846,
		-0.003080, 0.409589, -0.912265,
		0.796269, 0.552871, 0.245540,
		29.914959, 31.931543, 53.774548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.578651, 38.176353, 53.130230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.908195, 38.401134, 53.100651>,  <26.105923, 38.536003, 53.082905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.908195, 38.401134, 53.100651>,  <25.578651, 38.176353, 53.130230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908195, 38.401134, 53.100651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210806, 0.424900, 0.880353,
		0.526132, -0.709700, 0.468520,
		0.823861, 0.561948, -0.073944,
		26.155354, 38.569717, 53.078468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938484, 38.260880, 53.802498>,  <25.578651, 38.176353, 53.130230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938484, 38.260880, 53.802498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.041988, 38.584652, 53.591648>,  <26.104092, 38.778915, 53.465137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.041988, 38.584652, 53.591648>,  <25.938484, 38.260880, 53.802498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041988, 38.584652, 53.591648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285226, 0.585405, 0.758912,
		0.922870, -0.046027, 0.382352,
		0.258761, 0.809434, -0.527124,
		26.119617, 38.827480, 53.433510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554859, 38.607273, 54.059044>,  <25.938484, 38.260880, 53.802498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554859, 38.607273, 54.059044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.365259, 38.896999, 53.858768>,  <26.251499, 39.070835, 53.738602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.365259, 38.896999, 53.858768>,  <26.554859, 38.607273, 54.059044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365259, 38.896999, 53.858768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048991, 0.546053, 0.836317,
		0.879162, 0.420942, -0.223343,
		-0.473998, 0.724316, -0.500692,
		26.223061, 39.114296, 53.708561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773960, 39.143253, 54.410561>,  <26.554859, 38.607273, 54.059044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773960, 39.143253, 54.410561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.498325, 39.326611, 54.186050>,  <26.332945, 39.436626, 54.051346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.498325, 39.326611, 54.186050>,  <26.773960, 39.143253, 54.410561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498325, 39.326611, 54.186050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229997, 0.596134, 0.769238,
		0.687210, 0.659165, -0.305360,
		-0.689089, 0.458396, -0.561275,
		26.291599, 39.464130, 54.017670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826818, 39.814594, 54.636127>,  <26.773960, 39.143253, 54.410561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826818, 39.814594, 54.636127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.469536, 39.814690, 54.456268>,  <26.255167, 39.814747, 54.348354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.469536, 39.814690, 54.456268>,  <26.826818, 39.814594, 54.636127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469536, 39.814690, 54.456268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251876, 0.828117, 0.500780,
		0.372478, 0.560555, -0.739620,
		-0.893207, 0.000237, -0.449646,
		26.201574, 39.814762, 54.321373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671356, 40.509823, 54.430702>,  <26.826818, 39.814594, 54.636127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671356, 40.509823, 54.430702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.301285, 40.358482, 54.442631>,  <26.079241, 40.267677, 54.449787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.301285, 40.358482, 54.442631>,  <26.671356, 40.509823, 54.430702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301285, 40.358482, 54.442631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315271, 0.809906, 0.494628,
		-0.211295, 0.448219, -0.868593,
		-0.925180, -0.378355, 0.029819,
		26.023731, 40.244976, 54.451576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239981, 41.000008, 54.211880>,  <26.671356, 40.509823, 54.430702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239981, 41.000008, 54.211880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.023544, 40.746239, 54.432686>,  <25.893682, 40.593975, 54.565170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.023544, 40.746239, 54.432686>,  <26.239981, 41.000008, 54.211880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023544, 40.746239, 54.432686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224636, 0.741597, 0.632117,
		-0.810406, 0.218030, -0.543788,
		-0.541092, -0.634426, 0.552017,
		25.861217, 40.555912, 54.598289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596802, 41.319981, 54.430996>,  <26.239981, 41.000008, 54.211880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596802, 41.319981, 54.430996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.644104, 41.023777, 54.695621>,  <25.672485, 40.846054, 54.854397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.644104, 41.023777, 54.695621>,  <25.596802, 41.319981, 54.430996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644104, 41.023777, 54.695621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284229, 0.613119, 0.737088,
		-0.951436, -0.275200, -0.137969,
		0.118255, -0.740507, 0.661563,
		25.679581, 40.801624, 54.894089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.917852, 41.250027, 54.770332>,  <25.596802, 41.319981, 54.430996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.917852, 41.250027, 54.770332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.209894, 41.102859, 55.000664>,  <25.385120, 41.014561, 55.138863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.209894, 41.102859, 55.000664>,  <24.917852, 41.250027, 54.770332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209894, 41.102859, 55.000664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317211, 0.563899, 0.762493,
		-0.605245, -0.739360, 0.294999,
		0.730106, -0.367918, 0.575831,
		25.428926, 40.992485, 55.173412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.486887, 41.047497, 55.325634>,  <24.917852, 41.250027, 54.770332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.486887, 41.047497, 55.325634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.866051, 41.038170, 55.452709>,  <25.093548, 41.032574, 55.528954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.866051, 41.038170, 55.452709>,  <24.486887, 41.047497, 55.325634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866051, 41.038170, 55.452709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285210, 0.382052, 0.879029,
		-0.141872, -0.923847, 0.355499,
		0.947907, -0.023318, 0.317692,
		25.150423, 41.031174, 55.548016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.312952, 40.894211, 55.891811>,  <24.486887, 41.047497, 55.325634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.312952, 40.894211, 55.891811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.687716, 41.034039, 55.892265>,  <24.912575, 41.117935, 55.892536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.687716, 41.034039, 55.892265>,  <24.312952, 40.894211, 55.891811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687716, 41.034039, 55.892265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233541, 0.623510, 0.746119,
		0.260110, -0.699312, 0.665812,
		0.936911, 0.349567, 0.001137,
		24.968788, 41.138908, 55.892605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.542160, 40.843994, 56.623722>,  <24.312952, 40.894211, 55.891811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.542160, 40.843994, 56.623722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.742161, 41.133362, 56.433285>,  <24.862162, 41.306984, 56.319023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.742161, 41.133362, 56.433285>,  <24.542160, 40.843994, 56.623722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.742161, 41.133362, 56.433285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254077, 0.648087, 0.717933,
		0.827917, -0.238002, 0.507847,
		0.499999, 0.723421, -0.476092,
		24.892160, 41.350388, 56.290459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886438, 41.195850, 57.219273>,  <24.542160, 40.843994, 56.623722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886438, 41.195850, 57.219273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.854370, 41.418629, 56.888603>,  <24.835129, 41.552296, 56.690201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.854370, 41.418629, 56.888603>,  <24.886438, 41.195850, 57.219273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.854370, 41.418629, 56.888603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157055, 0.811923, 0.562241,
		0.984330, 0.174910, 0.022377,
		-0.080173, 0.556945, -0.826671,
		24.830318, 41.585712, 56.640602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481539, 41.188267, 57.711678>,  <24.886438, 41.195850, 57.219273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481539, 41.188267, 57.711678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.716923, 41.097691, 58.022144>,  <25.858152, 41.043343, 58.208424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.716923, 41.097691, 58.022144>,  <25.481539, 41.188267, 57.711678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.716923, 41.097691, 58.022144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271243, -0.849057, -0.453353,
		0.761672, 0.477310, -0.438214,
		0.588459, -0.226444, 0.776170,
		25.893461, 41.029758, 58.254993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266911, 41.103294, 57.546959>,  <25.481539, 41.188267, 57.711678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266911, 41.103294, 57.546959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.179802, 40.883995, 57.869946>,  <26.127537, 40.752415, 58.063736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.179802, 40.883995, 57.869946>,  <26.266911, 41.103294, 57.546959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179802, 40.883995, 57.869946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410936, -0.801920, -0.433654,
		0.885272, 0.237378, 0.399932,
		-0.217773, -0.548248, 0.807464,
		26.114470, 40.719521, 58.112186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968254, 40.683189, 57.724018>,  <26.266911, 41.103294, 57.546959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968254, 40.683189, 57.724018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.673849, 40.494835, 57.918564>,  <26.497206, 40.381821, 58.035290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.673849, 40.494835, 57.918564>,  <26.968254, 40.683189, 57.724018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673849, 40.494835, 57.918564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414829, -0.881472, -0.225663,
		0.534979, 0.035668, 0.844112,
		-0.736012, -0.470887, 0.486365,
		26.453045, 40.353569, 58.064472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296637, 40.191654, 58.148476>,  <26.968254, 40.683189, 57.724018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296637, 40.191654, 58.148476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.919140, 40.069485, 58.097775>,  <26.692642, 39.996185, 58.067352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.919140, 40.069485, 58.097775>,  <27.296637, 40.191654, 58.148476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919140, 40.069485, 58.097775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327211, -0.917879, -0.224569,
		-0.047757, -0.253411, 0.966179,
		-0.943744, -0.305420, -0.126754,
		26.636017, 39.977859, 58.059750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238953, 39.544884, 58.487839>,  <27.296637, 40.191654, 58.148476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238953, 39.544884, 58.487839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.949940, 39.536999, 58.211418>,  <26.776531, 39.532269, 58.045567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.949940, 39.536999, 58.211418>,  <27.238953, 39.544884, 58.487839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949940, 39.536999, 58.211418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314683, -0.899414, -0.303363,
		-0.615565, -0.436653, 0.656059,
		-0.722533, -0.019711, -0.691055,
		26.733179, 39.531086, 58.004101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114443, 38.851929, 58.318794>,  <27.238953, 39.544884, 58.487839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114443, 38.851929, 58.318794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.891485, 39.019436, 58.032036>,  <26.757711, 39.119942, 57.859982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.891485, 39.019436, 58.032036>,  <27.114443, 38.851929, 58.318794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.891485, 39.019436, 58.032036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234427, -0.748958, -0.619763,
		-0.796467, -0.513511, 0.319291,
		-0.557390, 0.418771, -0.716901,
		26.724268, 39.145065, 57.816967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673885, 38.379871, 58.197952>,  <27.114443, 38.851929, 58.318794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673885, 38.379871, 58.197952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.707655, 38.619095, 57.879154>,  <26.727917, 38.762630, 57.687878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.707655, 38.619095, 57.879154>,  <26.673885, 38.379871, 58.197952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707655, 38.619095, 57.879154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128960, -0.799678, -0.586416,
		-0.988050, -0.053273, -0.144637,
		0.084423, 0.598061, -0.796992,
		26.732983, 38.798512, 57.640057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168844, 38.129078, 57.628193>,  <26.673885, 38.379871, 58.197952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168844, 38.129078, 57.628193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.477266, 38.326752, 57.467564>,  <26.662319, 38.445354, 57.371185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.477266, 38.326752, 57.467564>,  <26.168844, 38.129078, 57.628193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477266, 38.326752, 57.467564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119400, -0.731661, -0.671130,
		-0.625476, 0.469530, -0.623156,
		0.771054, 0.494180, -0.401574,
		26.708582, 38.475006, 57.347092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076323, 38.063221, 56.942165>,  <26.168844, 38.129078, 57.628193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076323, 38.063221, 56.942165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.461327, 38.166393, 56.975746>,  <26.692329, 38.228294, 56.995895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.461327, 38.166393, 56.975746>,  <26.076323, 38.063221, 56.942165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461327, 38.166393, 56.975746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255346, -0.757196, -0.601209,
		-0.091500, 0.600106, -0.794670,
		0.962510, 0.257927, 0.083951,
		26.750080, 38.243771, 57.000931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273344, 38.017937, 56.305702>,  <26.076323, 38.063221, 56.942165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273344, 38.017937, 56.305702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.620996, 38.007412, 56.503254>,  <26.829588, 38.001099, 56.621784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.620996, 38.007412, 56.503254>,  <26.273344, 38.017937, 56.305702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620996, 38.007412, 56.503254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343076, -0.687205, -0.640350,
		0.356244, 0.725987, -0.588245,
		0.869131, -0.026308, 0.493881,
		26.881737, 37.999519, 56.651417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700706, 38.016167, 55.784962>,  <26.273344, 38.017937, 56.305702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700706, 38.016167, 55.784962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.924332, 37.881428, 56.088009>,  <27.058508, 37.800583, 56.269836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.924332, 37.881428, 56.088009>,  <26.700706, 38.016167, 55.784962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924332, 37.881428, 56.088009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403973, -0.687290, -0.603688,
		0.724053, 0.643556, -0.248160,
		0.559064, -0.336852, 0.757613,
		27.092051, 37.780373, 56.315292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294109, 37.863091, 55.513439>,  <26.700706, 38.016167, 55.784962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294109, 37.863091, 55.513439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.318602, 37.675449, 55.865845>,  <27.333296, 37.562862, 56.077290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.318602, 37.675449, 55.865845>,  <27.294109, 37.863091, 55.513439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318602, 37.675449, 55.865845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479500, -0.760323, -0.438165,
		0.875403, 0.449277, 0.178382,
		0.061230, -0.469105, 0.881017,
		27.336971, 37.534718, 56.130150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956871, 37.742378, 55.611515>,  <27.294109, 37.863091, 55.513439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956871, 37.742378, 55.611515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.750637, 37.468506, 55.817577>,  <27.626898, 37.304184, 55.941216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.750637, 37.468506, 55.817577>,  <27.956871, 37.742378, 55.611515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750637, 37.468506, 55.817577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520107, -0.727874, -0.446864,
		0.680928, 0.037540, 0.731387,
		-0.515583, -0.684682, 0.515155,
		27.595963, 37.263100, 55.972122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426331, 37.188168, 55.693047>,  <27.956871, 37.742378, 55.611515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426331, 37.188168, 55.693047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.068357, 37.030071, 55.775879>,  <27.853575, 36.935215, 55.825577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.068357, 37.030071, 55.775879>,  <28.426331, 37.188168, 55.693047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068357, 37.030071, 55.775879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323742, -0.894532, -0.308228,
		0.307066, -0.208802, 0.928500,
		-0.894931, -0.395240, 0.207082,
		27.799877, 36.911499, 55.838005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555225, 36.720673, 56.222553>,  <28.426331, 37.188168, 55.693047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555225, 36.720673, 56.222553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.214649, 36.594101, 56.055260>,  <28.010303, 36.518158, 55.954884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.214649, 36.594101, 56.055260>,  <28.555225, 36.720673, 56.222553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214649, 36.594101, 56.055260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459636, -0.834257, -0.304547,
		-0.252551, -0.451541, 0.855762,
		-0.851441, -0.316426, -0.418237,
		27.959217, 36.499172, 55.929787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683159, 36.746906, 57.055897>,  <28.555225, 36.720673, 56.222553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683159, 36.746906, 57.055897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.056633, 36.776970, 57.195946>,  <29.280718, 36.795006, 57.279976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.056633, 36.776970, 57.195946>,  <28.683159, 36.746906, 57.055897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056633, 36.776970, 57.195946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356133, 0.297170, 0.885923,
		-0.037465, -0.951862, 0.304228,
		0.933684, 0.075154, 0.350123,
		29.336739, 36.799515, 57.300983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874502, 36.412659, 57.861870>,  <28.683159, 36.746906, 57.055897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874502, 36.412659, 57.861870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.078703, 36.732487, 57.735325>,  <29.201223, 36.924381, 57.659397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.078703, 36.732487, 57.735325>,  <28.874502, 36.412659, 57.861870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078703, 36.732487, 57.735325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315629, 0.516473, 0.796011,
		0.799854, -0.306513, 0.516027,
		0.510501, 0.799566, -0.316359,
		29.231853, 36.972355, 57.640419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137539, 36.746498, 58.460449>,  <28.874502, 36.412659, 57.861870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137539, 36.746498, 58.460449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.168056, 37.048096, 58.199474>,  <29.186367, 37.229053, 58.042889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.168056, 37.048096, 58.199474>,  <29.137539, 36.746498, 58.460449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168056, 37.048096, 58.199474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363247, 0.630397, 0.686041,
		0.928564, 0.184657, 0.321979,
		0.076293, 0.753991, -0.652440,
		29.190945, 37.274292, 58.003742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670691, 37.206230, 58.722343>,  <29.137539, 36.746498, 58.460449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670691, 37.206230, 58.722343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.418362, 37.411438, 58.489494>,  <29.266964, 37.534565, 58.349785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.418362, 37.411438, 58.489494>,  <29.670691, 37.206230, 58.722343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418362, 37.411438, 58.489494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012341, 0.756772, 0.653563,
		0.775828, 0.405099, -0.483721,
		-0.630824, 0.513022, -0.582125,
		29.229115, 37.565346, 58.314857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732445, 37.909977, 59.091221>,  <29.670691, 37.206230, 58.722343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732445, 37.909977, 59.091221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.468136, 38.013321, 58.809334>,  <29.309549, 38.075325, 58.640202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.468136, 38.013321, 58.809334>,  <29.732445, 37.909977, 59.091221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468136, 38.013321, 58.809334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318051, 0.754059, 0.574664,
		0.679869, 0.603860, -0.416091,
		-0.660774, 0.258358, -0.704719,
		29.269903, 38.090828, 58.597919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803011, 38.631077, 58.923805>,  <29.732445, 37.909977, 59.091221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803011, 38.631077, 58.923805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.431620, 38.542225, 58.804752>,  <29.208784, 38.488914, 58.733322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.431620, 38.542225, 58.804752>,  <29.803011, 38.631077, 58.923805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431620, 38.542225, 58.804752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329944, 0.861245, 0.386516,
		0.170479, 0.457075, -0.872938,
		-0.928479, -0.222128, -0.297633,
		29.153076, 38.475586, 58.715462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539330, 39.195599, 58.543118>,  <29.803011, 38.631077, 58.923805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539330, 39.195599, 58.543118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.227579, 38.990833, 58.687626>,  <29.040529, 38.867973, 58.774330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.227579, 38.990833, 58.687626>,  <29.539330, 39.195599, 58.543118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227579, 38.990833, 58.687626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311380, 0.816808, 0.485662,
		-0.543704, 0.266022, -0.796001,
		-0.779377, -0.511915, 0.361268,
		28.993767, 38.837257, 58.796005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553257, 39.738171, 57.971355>,  <29.539330, 39.195599, 58.543118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553257, 39.738171, 57.971355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.907719, 39.922779, 57.987972>,  <30.120396, 40.033546, 57.997944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.907719, 39.922779, 57.987972>,  <29.553257, 39.738171, 57.971355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907719, 39.922779, 57.987972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351142, -0.610294, -0.710099,
		-0.302374, 0.643845, -0.702875,
		0.886154, 0.461524, 0.041544,
		30.173565, 40.061237, 58.000435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782953, 39.849800, 57.266857>,  <29.553257, 39.738171, 57.971355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782953, 39.849800, 57.266857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.112015, 39.872826, 57.493107>,  <30.309452, 39.886639, 57.628857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.112015, 39.872826, 57.493107>,  <29.782953, 39.849800, 57.266857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112015, 39.872826, 57.493107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497017, -0.555898, -0.666298,
		0.276076, 0.829255, -0.485919,
		0.822652, 0.057561, 0.565624,
		30.358810, 39.890095, 57.662792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289059, 39.759178, 56.837177>,  <29.782953, 39.849800, 57.266857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289059, 39.759178, 56.837177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.488956, 39.717537, 57.181137>,  <30.608894, 39.692551, 57.387512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.488956, 39.717537, 57.181137>,  <30.289059, 39.759178, 56.837177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488956, 39.717537, 57.181137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753244, -0.437906, -0.490776,
		0.427644, 0.892973, -0.140426,
		0.499743, -0.104102, 0.859895,
		30.638880, 39.686306, 57.439106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907663, 40.036243, 56.663040>,  <30.289059, 39.759178, 56.837177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907663, 40.036243, 56.663040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.933136, 39.791805, 56.978638>,  <30.948420, 39.645142, 57.167995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.933136, 39.791805, 56.978638>,  <30.907663, 40.036243, 56.663040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933136, 39.791805, 56.978638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751508, -0.490832, -0.440816,
		0.656643, 0.621006, 0.427986,
		0.063680, -0.611094, 0.788993,
		30.952240, 39.608479, 57.215336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637495, 39.965282, 56.873516>,  <30.907663, 40.036243, 56.663040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637495, 39.965282, 56.873516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.469719, 39.633636, 57.021378>,  <31.369053, 39.434650, 57.110096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.469719, 39.633636, 57.021378>,  <31.637495, 39.965282, 56.873516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469719, 39.633636, 57.021378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741887, -0.547745, -0.386755,
		0.523139, 0.112020, 0.844854,
		-0.419440, -0.829112, 0.369653,
		31.343887, 39.384903, 57.132275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134392, 39.589882, 57.228504>,  <31.637495, 39.965282, 56.873516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134392, 39.589882, 57.228504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.879337, 39.282974, 57.201038>,  <31.726303, 39.098831, 57.184559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.879337, 39.282974, 57.201038>,  <32.134392, 39.589882, 57.228504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879337, 39.282974, 57.201038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760896, -0.613410, -0.211579,
		0.120216, -0.187162, 0.974945,
		-0.637640, -0.767267, -0.068669,
		31.688046, 39.052795, 57.180439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467194, 39.070797, 57.545780>,  <32.134392, 39.589882, 57.228504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467194, 39.070797, 57.545780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.203320, 38.909782, 57.291924>,  <32.044994, 38.813171, 57.139610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.203320, 38.909782, 57.291924>,  <32.467194, 39.070797, 57.545780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203320, 38.909782, 57.291924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679353, -0.680527, -0.274521,
		-0.321388, -0.612246, 0.722402,
		-0.659689, -0.402538, -0.634645,
		32.005413, 38.789021, 57.101532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.753239, 43.985989, 55.926826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401394, 43.799328, 55.889919>,  <27.190287, 43.687332, 55.867775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401394, 43.799328, 55.889919>,  <27.753239, 43.985989, 55.926826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401394, 43.799328, 55.889919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471326, -0.828781, -0.301619,
		0.064286, -0.308794, 0.948954,
		-0.879613, -0.466656, -0.092263,
		27.137510, 43.659332, 55.862240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853067, 43.305885, 56.077713>,  <27.753239, 43.985989, 55.926826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853067, 43.305885, 56.077713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505507, 43.283588, 55.880978>,  <27.296970, 43.270210, 55.762936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505507, 43.283588, 55.880978>,  <27.853067, 43.305885, 56.077713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505507, 43.283588, 55.880978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265551, -0.891042, -0.368140,
		-0.417727, -0.450485, 0.789030,
		-0.868900, -0.055746, -0.491839,
		27.244837, 43.266865, 55.733425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708681, 42.573093, 56.063580>,  <27.853067, 43.305885, 56.077713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708681, 42.573093, 56.063580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526110, 42.773857, 55.769707>,  <27.416567, 42.894314, 55.593384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526110, 42.773857, 55.769707>,  <27.708681, 42.573093, 56.063580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526110, 42.773857, 55.769707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600558, -0.435466, -0.670596,
		-0.656508, -0.747300, -0.102666,
		-0.456429, 0.501908, -0.734684,
		27.389181, 42.924431, 55.549301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440527, 41.917484, 55.629848>,  <27.708681, 42.573093, 56.063580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440527, 41.917484, 55.629848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419863, 42.235714, 55.388386>,  <27.407463, 42.426651, 55.243507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419863, 42.235714, 55.388386>,  <27.440527, 41.917484, 55.629848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419863, 42.235714, 55.388386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308545, -0.562173, -0.767308,
		-0.949806, -0.225896, -0.216427,
		-0.051662, 0.795571, -0.603654,
		27.404364, 42.474384, 55.207291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023270, 41.775749, 55.030590>,  <27.440527, 41.917484, 55.629848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023270, 41.775749, 55.030590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268133, 42.078617, 54.939415>,  <27.415051, 42.260338, 54.884708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268133, 42.078617, 54.939415>,  <27.023270, 41.775749, 55.030590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268133, 42.078617, 54.939415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326684, -0.504684, -0.799107,
		-0.720098, 0.414714, -0.556301,
		0.612157, 0.757170, -0.227941,
		27.451780, 42.305767, 54.871033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874622, 42.022739, 54.328243>,  <27.023270, 41.775749, 55.030590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874622, 42.022739, 54.328243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240211, 42.174664, 54.385372>,  <27.459564, 42.265820, 54.419651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240211, 42.174664, 54.385372>,  <26.874622, 42.022739, 54.328243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240211, 42.174664, 54.385372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301292, -0.399441, -0.865835,
		-0.271806, 0.834380, -0.479512,
		0.913972, 0.379813, 0.142821,
		27.514402, 42.288609, 54.428219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193552, 42.274750, 53.612316>,  <26.874622, 42.022739, 54.328243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193552, 42.274750, 53.612316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523859, 42.280064, 53.837856>,  <27.722044, 42.283253, 53.973183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523859, 42.280064, 53.837856>,  <27.193552, 42.274750, 53.612316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523859, 42.280064, 53.837856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536158, -0.328771, -0.777460,
		0.175053, 0.944316, -0.278609,
		0.825767, 0.013282, 0.563855,
		27.771589, 42.284050, 54.007011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885714, 42.499622, 53.175446>,  <27.193552, 42.274750, 53.612316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885714, 42.499622, 53.175446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022539, 42.287830, 53.485966>,  <28.104635, 42.160755, 53.672279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022539, 42.287830, 53.485966>,  <27.885714, 42.499622, 53.175446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022539, 42.287830, 53.485966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512202, -0.587556, -0.626440,
		0.787807, 0.611906, 0.070219,
		0.342065, -0.529480, 0.776300,
		28.125158, 42.128986, 53.718857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582190, 42.414845, 53.056705>,  <27.885714, 42.499622, 53.175446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582190, 42.414845, 53.056705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525591, 42.136635, 53.338478>,  <28.491632, 41.969711, 53.507542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525591, 42.136635, 53.338478>,  <28.582190, 42.414845, 53.056705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525591, 42.136635, 53.338478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577076, -0.636132, -0.512171,
		0.804340, 0.334043, 0.491378,
		-0.141494, -0.695522, 0.704435,
		28.483143, 41.927979, 53.549809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275814, 42.142803, 53.218681>,  <28.582190, 42.414845, 53.056705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275814, 42.142803, 53.218681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000761, 41.872929, 53.325985>,  <28.835730, 41.711002, 53.390366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000761, 41.872929, 53.325985>,  <29.275814, 42.142803, 53.218681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000761, 41.872929, 53.325985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488401, -0.703207, -0.516687,
		0.537241, -0.224274, 0.813064,
		-0.687632, -0.674686, 0.268256,
		28.794472, 41.670525, 53.406464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624964, 41.583561, 53.516407>,  <29.275814, 42.142803, 53.218681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624964, 41.583561, 53.516407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266102, 41.457718, 53.392380>,  <29.050785, 41.382214, 53.317963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266102, 41.457718, 53.392380>,  <29.624964, 41.583561, 53.516407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266102, 41.457718, 53.392380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432190, -0.770213, -0.469024,
		-0.091261, -0.554794, 0.826968,
		-0.897153, -0.314604, -0.310066,
		28.996956, 41.363338, 53.299358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713089, 40.859131, 53.485760>,  <29.624964, 41.583561, 53.516407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713089, 40.859131, 53.485760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392708, 40.928871, 53.256649>,  <29.200480, 40.970715, 53.119183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392708, 40.928871, 53.256649>,  <29.713089, 40.859131, 53.485760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392708, 40.928871, 53.256649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356710, -0.629380, -0.690390,
		-0.480868, -0.757286, 0.441909,
		-0.800952, 0.174354, -0.572780,
		29.152422, 40.981178, 53.084816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171068, 41.208576, 54.042995>,  <29.713089, 40.859131, 53.485760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171068, 41.208576, 54.042995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473383, 41.268242, 54.298035>,  <30.654772, 41.304043, 54.451057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473383, 41.268242, 54.298035>,  <30.171068, 41.208576, 54.042995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473383, 41.268242, 54.298035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642726, 0.355255, 0.678747,
		-0.125264, -0.922790, 0.364371,
		0.755786, 0.149168, 0.637602,
		30.700119, 41.312992, 54.489315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064280, 40.868149, 54.723740>,  <30.171068, 41.208576, 54.042995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064280, 40.868149, 54.723740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338125, 41.137108, 54.836296>,  <30.502432, 41.298485, 54.903831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338125, 41.137108, 54.836296>,  <30.064280, 40.868149, 54.723740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338125, 41.137108, 54.836296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559475, 0.237289, 0.794155,
		0.467219, -0.701121, 0.538643,
		0.684613, 0.672401, 0.281393,
		30.543509, 41.338829, 54.920715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099186, 40.849491, 55.408024>,  <30.064280, 40.868149, 54.723740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099186, 40.849491, 55.408024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261827, 41.206291, 55.329018>,  <30.359413, 41.420372, 55.281616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261827, 41.206291, 55.329018>,  <30.099186, 40.849491, 55.408024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261827, 41.206291, 55.329018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472471, 0.390339, 0.790194,
		0.781949, -0.227977, 0.580157,
		0.406604, 0.891999, -0.197513,
		30.383808, 41.473892, 55.269764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421654, 41.041527, 55.981644>,  <30.099186, 40.849491, 55.408024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421654, 41.041527, 55.981644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318544, 41.377327, 55.790318>,  <30.256678, 41.578808, 55.675522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318544, 41.377327, 55.790318>,  <30.421654, 41.041527, 55.981644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318544, 41.377327, 55.790318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547983, 0.280698, 0.787986,
		0.795780, 0.465231, 0.387678,
		-0.257775, 0.839505, -0.478313,
		30.241213, 41.629177, 55.646824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566164, 41.571087, 56.484406>,  <30.421654, 41.041527, 55.981644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566164, 41.571087, 56.484406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320494, 41.755386, 56.228123>,  <30.173092, 41.865967, 56.074352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320494, 41.755386, 56.228123>,  <30.566164, 41.571087, 56.484406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320494, 41.755386, 56.228123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366036, 0.552941, 0.748514,
		0.699147, 0.694240, -0.170954,
		-0.614176, 0.460746, -0.640704,
		30.136240, 41.893612, 56.035912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588850, 42.231541, 56.708385>,  <30.566164, 41.571087, 56.484406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588850, 42.231541, 56.708385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254200, 42.228043, 56.489304>,  <30.053410, 42.225945, 56.357853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254200, 42.228043, 56.489304>,  <30.588850, 42.231541, 56.708385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254200, 42.228043, 56.489304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419308, 0.653605, 0.630064,
		0.352471, 0.756785, -0.550491,
		-0.836627, -0.008746, -0.547703,
		30.003212, 42.225418, 56.324993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448450, 42.890110, 56.576920>,  <30.588850, 42.231541, 56.708385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448450, 42.890110, 56.576920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090506, 42.723801, 56.511974>,  <29.875740, 42.624016, 56.473007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090506, 42.723801, 56.511974>,  <30.448450, 42.890110, 56.576920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090506, 42.723801, 56.511974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424822, 0.681747, 0.595606,
		-0.136943, 0.601960, -0.786696,
		-0.894859, -0.415770, -0.162365,
		29.822048, 42.599072, 56.463264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924711, 43.455982, 56.464069>,  <30.448450, 42.890110, 56.576920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924711, 43.455982, 56.464069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711292, 43.133400, 56.566021>,  <29.583241, 42.939850, 56.627193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711292, 43.133400, 56.566021>,  <29.924711, 43.455982, 56.464069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711292, 43.133400, 56.566021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596998, 0.572568, 0.561925,
		-0.599101, 0.147650, -0.786942,
		-0.533545, -0.806453, 0.254879,
		29.551229, 42.891464, 56.642487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103241, 43.595016, 56.358051>,  <29.924711, 43.455982, 56.464069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103241, 43.595016, 56.358051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173626, 43.298149, 56.616734>,  <29.215857, 43.120029, 56.771942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173626, 43.298149, 56.616734>,  <29.103241, 43.595016, 56.358051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173626, 43.298149, 56.616734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624197, 0.423875, 0.656283,
		-0.761193, -0.519155, -0.388670,
		0.175965, -0.742165, 0.646706,
		29.226416, 43.075500, 56.810745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508610, 43.629990, 56.689228>,  <29.103241, 43.595016, 56.358051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508610, 43.629990, 56.689228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751471, 43.415520, 56.923794>,  <28.897186, 43.286839, 57.064533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751471, 43.415520, 56.923794>,  <28.508610, 43.629990, 56.689228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751471, 43.415520, 56.923794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478461, 0.342520, 0.808552,
		-0.634384, -0.771491, -0.048577,
		0.607151, -0.536174, 0.586417,
		28.933617, 43.254669, 57.099720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093338, 43.128998, 56.998085>,  <28.508610, 43.629990, 56.689228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093338, 43.128998, 56.998085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429247, 43.172825, 57.210793>,  <28.630793, 43.199120, 57.338417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429247, 43.172825, 57.210793>,  <28.093338, 43.128998, 56.998085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429247, 43.172825, 57.210793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531874, -0.030708, 0.846266,
		0.109053, -0.993505, 0.032489,
		0.839772, 0.109568, 0.531768,
		28.681179, 43.205696, 57.370323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908503, 42.783676, 57.646385>,  <28.093338, 43.128998, 56.998085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908503, 42.783676, 57.646385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222857, 43.022427, 57.711044>,  <28.411469, 43.165676, 57.749840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.222857, 43.022427, 57.711044>,  <27.908503, 42.783676, 57.646385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.222857, 43.022427, 57.711044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372999, 0.249063, 0.893778,
		0.493213, -0.762699, 0.418368,
		0.785883, 0.596874, 0.161645,
		28.458622, 43.201488, 57.759537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216309, 42.692852, 58.372826>,  <27.908503, 42.783676, 57.646385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216309, 42.692852, 58.372826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328726, 43.057755, 58.253632>,  <28.396175, 43.276695, 58.182114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328726, 43.057755, 58.253632>,  <28.216309, 42.692852, 58.372826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328726, 43.057755, 58.253632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204777, 0.360355, 0.910061,
		0.937594, -0.194744, 0.288084,
		0.281042, 0.912260, -0.297987,
		28.413038, 43.331432, 58.164234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662012, 42.921837, 58.921299>,  <28.216309, 42.692852, 58.372826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662012, 42.921837, 58.921299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525490, 43.231869, 58.708595>,  <28.443577, 43.417889, 58.580975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525490, 43.231869, 58.708595>,  <28.662012, 42.921837, 58.921299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525490, 43.231869, 58.708595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277897, 0.457231, 0.844816,
		0.897933, 0.436114, 0.059336,
		-0.341306, 0.775077, -0.531757,
		28.423098, 43.464394, 58.549068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108660, 42.715420, 58.332535>,  <28.662012, 42.921837, 58.921299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108660, 42.715420, 58.332535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044178, 42.548145, 58.690113>,  <29.005489, 42.447781, 58.904659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044178, 42.548145, 58.690113>,  <29.108660, 42.715420, 58.332535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044178, 42.548145, 58.690113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733217, -0.657051, -0.175148,
		0.660611, 0.627221, 0.412537,
		-0.161202, -0.418184, 0.893944,
		28.995817, 42.422691, 58.958298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770681, 42.576172, 58.616177>,  <29.108660, 42.715420, 58.332535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770681, 42.576172, 58.616177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542828, 42.320061, 58.822308>,  <29.406115, 42.166393, 58.945988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542828, 42.320061, 58.822308>,  <29.770681, 42.576172, 58.616177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542828, 42.320061, 58.822308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550796, -0.762757, -0.338858,
		0.610032, 0.090814, 0.787156,
		-0.569636, -0.640277, 0.515326,
		29.371937, 42.127979, 58.976906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217524, 42.175816, 59.144665>,  <29.770681, 42.576172, 58.616177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217524, 42.175816, 59.144665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888859, 41.982296, 59.024124>,  <29.691660, 41.866184, 58.951801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888859, 41.982296, 59.024124>,  <30.217524, 42.175816, 59.144665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888859, 41.982296, 59.024124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563764, -0.767664, -0.304731,
		-0.083906, -0.420276, 0.903509,
		-0.821663, -0.483797, -0.301348,
		29.642361, 41.837158, 58.933720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479248, 41.577442, 59.292320>,  <30.217524, 42.175816, 59.144665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479248, 41.577442, 59.292320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156656, 41.540627, 59.058701>,  <29.963100, 41.518536, 58.918530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156656, 41.540627, 59.058701>,  <30.479248, 41.577442, 59.292320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156656, 41.540627, 59.058701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470961, -0.697221, -0.540444,
		-0.357469, -0.710923, 0.605643,
		-0.806481, -0.092043, -0.584052,
		29.914713, 41.513012, 58.883484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396599, 40.879608, 59.322617>,  <30.479248, 41.577442, 59.292320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396599, 40.879608, 59.322617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152281, 40.990265, 59.025860>,  <30.005690, 41.056660, 58.847805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152281, 40.990265, 59.025860>,  <30.396599, 40.879608, 59.322617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152281, 40.990265, 59.025860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202283, -0.851365, -0.484004,
		-0.765513, -0.445699, 0.464050,
		-0.610795, 0.276642, -0.741888,
		29.969042, 41.073257, 58.803295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853149, 40.285713, 59.251354>,  <30.396599, 40.879608, 59.322617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853149, 40.285713, 59.251354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909517, 40.506447, 58.922569>,  <29.943338, 40.638885, 58.725296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909517, 40.506447, 58.922569>,  <29.853149, 40.285713, 59.251354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909517, 40.506447, 58.922569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249388, -0.823263, -0.509946,
		-0.958096, -0.133127, -0.253633,
		0.140919, 0.551830, -0.821965,
		29.951794, 40.671997, 58.675980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488073, 39.949398, 58.675854>,  <29.853149, 40.285713, 59.251354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488073, 39.949398, 58.675854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760662, 40.170311, 58.483776>,  <29.924215, 40.302856, 58.368530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760662, 40.170311, 58.483776>,  <29.488073, 39.949398, 58.675854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760662, 40.170311, 58.483776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329495, -0.817413, -0.472514,
		-0.653477, 0.163782, -0.739015,
		0.681470, 0.552279, -0.480195,
		29.965103, 40.335995, 58.339718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910643, 39.524189, 58.345631>,  <29.488073, 39.949398, 58.675854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910643, 39.524189, 58.345631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799576, 39.305405, 58.661537>,  <28.732937, 39.174133, 58.851082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799576, 39.305405, 58.661537>,  <28.910643, 39.524189, 58.345631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799576, 39.305405, 58.661537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280719, 0.832408, 0.477801,
		-0.918748, -0.089033, -0.384675,
		-0.277666, -0.546965, 0.789767,
		28.716276, 39.141315, 58.898468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258724, 39.802814, 58.617397>,  <28.910643, 39.524189, 58.345631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258724, 39.802814, 58.617397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376261, 39.586189, 58.932449>,  <28.446783, 39.456215, 59.121483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376261, 39.586189, 58.932449>,  <28.258724, 39.802814, 58.617397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376261, 39.586189, 58.932449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435028, 0.657954, 0.614693,
		-0.851121, -0.523266, -0.042260,
		0.293843, -0.541562, 0.787634,
		28.464413, 39.423721, 59.168739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749640, 40.074593, 59.138885>,  <28.258724, 39.802814, 58.617397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749640, 40.074593, 59.138885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007196, 39.854877, 59.351936>,  <28.161730, 39.723049, 59.479767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007196, 39.854877, 59.351936>,  <27.749640, 40.074593, 59.138885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007196, 39.854877, 59.351936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312622, 0.446502, 0.838394,
		-0.698336, -0.706344, 0.115780,
		0.643891, -0.549285, 0.532627,
		28.200363, 39.690090, 59.511723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401491, 39.558601, 59.498524>,  <27.749640, 40.074593, 59.138885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401491, 39.558601, 59.498524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724955, 39.627655, 59.723476>,  <27.919033, 39.669086, 59.858448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724955, 39.627655, 59.723476>,  <27.401491, 39.558601, 59.498524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724955, 39.627655, 59.723476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574679, 0.436196, 0.692443,
		-0.125770, -0.883137, 0.451941,
		0.808657, 0.172632, 0.562380,
		27.967552, 39.679443, 59.892189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080830, 39.618141, 60.120983>,  <27.401491, 39.558601, 59.498524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080830, 39.618141, 60.120983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443356, 39.760113, 60.212742>,  <27.660872, 39.845295, 60.267796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443356, 39.760113, 60.212742>,  <27.080830, 39.618141, 60.120983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443356, 39.760113, 60.212742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394262, 0.514679, 0.761356,
		0.152158, -0.780470, 0.606394,
		0.906314, 0.354924, 0.229397,
		27.715250, 39.866589, 60.281563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120354, 39.465790, 60.762062>,  <27.080830, 39.618141, 60.120983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120354, 39.465790, 60.762062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388552, 39.758720, 60.714516>,  <27.549471, 39.934479, 60.685986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388552, 39.758720, 60.714516>,  <27.120354, 39.465790, 60.762062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388552, 39.758720, 60.714516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370322, 0.469185, 0.801702,
		0.642882, -0.493517, 0.585784,
		0.670495, 0.732329, -0.118870,
		27.589701, 39.978420, 60.678856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342896, 39.713356, 61.436543>,  <27.120354, 39.465790, 60.762062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342896, 39.713356, 61.436543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495329, 40.011688, 61.217999>,  <27.586790, 40.190689, 61.086872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495329, 40.011688, 61.217999>,  <27.342896, 39.713356, 61.436543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495329, 40.011688, 61.217999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258455, 0.653331, 0.711590,
		0.887680, -0.129967, 0.441739,
		0.381085, 0.745834, -0.546358,
		27.609653, 40.235439, 61.054092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896509, 40.164162, 61.845867>,  <27.342896, 39.713356, 61.436543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896509, 40.164162, 61.845867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722893, 40.379395, 61.556847>,  <27.618723, 40.508533, 61.383434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722893, 40.379395, 61.556847>,  <27.896509, 40.164162, 61.845867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722893, 40.379395, 61.556847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298633, 0.670755, 0.678901,
		0.849957, 0.510448, -0.130447,
		-0.434042, 0.538081, -0.722549,
		27.592680, 40.540817, 61.340080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091486, 40.878731, 61.992367>,  <27.896509, 40.164162, 61.845867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091486, 40.878731, 61.992367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755955, 40.893276, 61.775097>,  <27.554636, 40.902004, 61.644733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.755955, 40.893276, 61.775097>,  <28.091486, 40.878731, 61.992367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755955, 40.893276, 61.775097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349734, 0.728641, 0.588871,
		0.417194, 0.683930, -0.598489,
		-0.838830, 0.036362, -0.543178,
		27.504307, 40.904186, 61.612144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.714188, 32.424999, 46.996239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703079, 32.822712, 47.037468>,  <36.696415, 33.061340, 47.062206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703079, 32.822712, 47.037468>,  <36.714188, 32.424999, 46.996239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703079, 32.822712, 47.037468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804040, -0.083487, 0.588684,
		0.593926, -0.066528, 0.801764,
		-0.027773, 0.994286, 0.103076,
		36.694748, 33.120998, 47.068390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487823, 32.448639, 47.742420>,  <36.714188, 32.424999, 46.996239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487823, 32.448639, 47.742420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448444, 32.807961, 47.571140>,  <36.424816, 33.023556, 47.468372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448444, 32.807961, 47.571140>,  <36.487823, 32.448639, 47.742420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448444, 32.807961, 47.571140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833018, 0.161011, 0.529299,
		0.544417, 0.408804, 0.732454,
		-0.098446, 0.898307, -0.428198,
		36.418911, 33.077454, 47.442680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344707, 32.831150, 48.340946>,  <36.487823, 32.448639, 47.742420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344707, 32.831150, 48.340946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.205120, 33.049175, 48.036022>,  <36.121368, 33.179993, 47.853065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.205120, 33.049175, 48.036022>,  <36.344707, 32.831150, 48.340946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205120, 33.049175, 48.036022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893506, 0.051784, 0.446056,
		0.282605, 0.836792, 0.468949,
		-0.348972, 0.545066, -0.762313,
		36.100430, 33.212696, 47.807327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061069, 33.407127, 48.636459>,  <36.344707, 32.831150, 48.340946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061069, 33.407127, 48.636459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904045, 33.384045, 48.269295>,  <35.809830, 33.370193, 48.048996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904045, 33.384045, 48.269295>,  <36.061069, 33.407127, 48.636459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904045, 33.384045, 48.269295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904371, 0.205830, 0.373829,
		0.167362, 0.976885, -0.132988,
		-0.392560, -0.057706, -0.917914,
		35.786278, 33.366734, 47.993919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878498, 34.096111, 48.426544>,  <36.061069, 33.407127, 48.636459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878498, 34.096111, 48.426544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.663086, 33.830212, 48.219437>,  <35.533836, 33.670670, 48.095173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.663086, 33.830212, 48.219437>,  <35.878498, 34.096111, 48.426544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663086, 33.830212, 48.219437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831349, 0.319084, 0.455021,
		-0.137263, 0.675494, -0.724477,
		-0.538533, -0.664751, -0.517773,
		35.501526, 33.630787, 48.064106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264835, 34.440647, 48.356892>,  <35.878498, 34.096111, 48.426544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264835, 34.440647, 48.356892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168148, 34.063698, 48.264362>,  <35.110138, 33.837528, 48.208843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168148, 34.063698, 48.264362>,  <35.264835, 34.440647, 48.356892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168148, 34.063698, 48.264362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838625, 0.082954, 0.538356,
		-0.488142, 0.324123, -0.810347,
		-0.241715, -0.942371, -0.231324,
		35.095634, 33.780987, 48.194965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568596, 34.465057, 48.246742>,  <35.264835, 34.440647, 48.356892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568596, 34.465057, 48.246742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653557, 34.081635, 48.322689>,  <34.704533, 33.851582, 48.368256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653557, 34.081635, 48.322689>,  <34.568596, 34.465057, 48.246742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653557, 34.081635, 48.322689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868130, -0.095905, 0.486984,
		-0.448593, -0.268266, -0.852524,
		0.212402, -0.958559, 0.189867,
		34.717278, 33.794067, 48.379650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982269, 34.008900, 48.118404>,  <34.568596, 34.465057, 48.246742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982269, 34.008900, 48.118404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.209625, 33.798546, 48.371510>,  <34.346039, 33.672333, 48.523373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.209625, 33.798546, 48.371510>,  <33.982269, 34.008900, 48.118404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209625, 33.798546, 48.371510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818944, -0.287604, 0.496603,
		-0.079170, -0.800458, -0.594137,
		0.568386, -0.525881, 0.632761,
		34.380142, 33.640781, 48.561337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671627, 33.398499, 48.182087>,  <33.982269, 34.008900, 48.118404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671627, 33.398499, 48.182087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.904213, 33.414280, 48.507133>,  <34.043766, 33.423748, 48.702160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.904213, 33.414280, 48.507133>,  <33.671627, 33.398499, 48.182087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904213, 33.414280, 48.507133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773754, -0.281821, 0.567346,
		0.251395, -0.958655, -0.133343,
		0.581469, 0.039453, 0.812612,
		34.078655, 33.426117, 48.750916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492500, 32.831161, 48.537666>,  <33.671627, 33.398499, 48.182087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492500, 32.831161, 48.537666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.676399, 33.065300, 48.804798>,  <33.786739, 33.205784, 48.965076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.676399, 33.065300, 48.804798>,  <33.492500, 32.831161, 48.537666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676399, 33.065300, 48.804798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584944, -0.366224, 0.723685,
		0.668184, -0.723357, 0.174026,
		0.459750, 0.585351, 0.667828,
		33.814323, 33.240906, 49.005146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428776, 32.411358, 49.124813>,  <33.492500, 32.831161, 48.537666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428776, 32.411358, 49.124813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.501106, 32.792885, 49.220753>,  <33.544506, 33.021801, 49.278316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.501106, 32.792885, 49.220753>,  <33.428776, 32.411358, 49.124813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501106, 32.792885, 49.220753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745773, -0.026007, 0.665692,
		0.641189, -0.299247, 0.706631,
		0.180829, 0.953821, 0.239846,
		33.555355, 33.079033, 49.292706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448112, 32.336662, 49.808475>,  <33.428776, 32.411358, 49.124813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448112, 32.336662, 49.808475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.389809, 32.727169, 49.744392>,  <33.354828, 32.961472, 49.705944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.389809, 32.727169, 49.744392>,  <33.448112, 32.336662, 49.808475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389809, 32.727169, 49.744392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787247, -0.016382, 0.616420,
		0.599163, 0.215969, 0.770948,
		-0.145757, 0.976263, -0.160205,
		33.346081, 33.020046, 49.696331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350300, 32.680168, 50.474457>,  <33.448112, 32.336662, 49.808475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350300, 32.680168, 50.474457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.183674, 32.945927, 50.226246>,  <33.083698, 33.105381, 50.077320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.183674, 32.945927, 50.226246>,  <33.350300, 32.680168, 50.474457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183674, 32.945927, 50.226246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762724, 0.116015, 0.636234,
		0.494701, 0.738322, 0.458423,
		-0.416561, 0.664395, -0.620528,
		33.058704, 33.145245, 50.040089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004345, 32.979462, 50.887207>,  <33.350300, 32.680168, 50.474457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004345, 32.979462, 50.887207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.838669, 33.103737, 50.544998>,  <32.739262, 33.178303, 50.339672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.838669, 33.103737, 50.544998>,  <33.004345, 32.979462, 50.887207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838669, 33.103737, 50.544998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855646, 0.187586, 0.482370,
		0.310350, 0.931819, 0.188141,
		-0.414189, 0.310685, -0.855525,
		32.714413, 33.196941, 50.288342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530148, 33.437199, 51.147526>,  <33.004345, 32.979462, 50.887207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530148, 33.437199, 51.147526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.411831, 33.352604, 50.774906>,  <32.340839, 33.301846, 50.551334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.411831, 33.352604, 50.774906>,  <32.530148, 33.437199, 51.147526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411831, 33.352604, 50.774906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954185, 0.019331, 0.298594,
		-0.045141, 0.977189, -0.207517,
		-0.295794, -0.211488, -0.931546,
		32.323093, 33.289158, 50.495441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086971, 34.003620, 50.860886>,  <32.530148, 33.437199, 51.147526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086971, 34.003620, 50.860886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.988548, 33.685474, 50.639309>,  <31.929495, 33.494587, 50.506363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.988548, 33.685474, 50.639309>,  <32.086971, 34.003620, 50.860886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988548, 33.685474, 50.639309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967703, 0.233926, 0.093970,
		0.054840, 0.559172, -0.827236,
		-0.246057, -0.795365, -0.553941,
		31.914732, 33.446865, 50.473125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639099, 34.313740, 50.309956>,  <32.086971, 34.003620, 50.860886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639099, 34.313740, 50.309956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.552284, 33.932526, 50.394455>,  <31.500195, 33.703796, 50.445156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.552284, 33.932526, 50.394455>,  <31.639099, 34.313740, 50.309956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552284, 33.932526, 50.394455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970128, 0.234612, 0.061720,
		-0.108382, -0.191541, -0.975482,
		-0.217038, -0.953031, 0.211247,
		31.487173, 33.646618, 50.457829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014080, 34.152370, 49.883667>,  <31.639099, 34.313740, 50.309956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014080, 34.152370, 49.883667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.031027, 33.862652, 50.158939>,  <31.041195, 33.688820, 50.324104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.031027, 33.862652, 50.158939>,  <31.014080, 34.152370, 49.883667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031027, 33.862652, 50.158939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988150, 0.071332, 0.135906,
		-0.147526, -0.685785, -0.712696,
		0.042365, -0.724300, 0.688182,
		31.043736, 33.645363, 50.365395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426891, 33.728645, 49.809635>,  <31.014080, 34.152370, 49.883667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426891, 33.728645, 49.809635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.557377, 33.636600, 50.176380>,  <30.635668, 33.581375, 50.396427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.557377, 33.636600, 50.176380>,  <30.426891, 33.728645, 49.809635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557377, 33.636600, 50.176380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943365, -0.017285, 0.331305,
		-0.060390, -0.973010, -0.222720,
		0.326212, -0.230114, 0.916861,
		30.655241, 33.567570, 50.451439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020636, 33.228207, 49.968189>,  <30.426891, 33.728645, 49.809635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020636, 33.228207, 49.968189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.162363, 33.333344, 50.327160>,  <30.247398, 33.396427, 50.542542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.162363, 33.333344, 50.327160>,  <30.020636, 33.228207, 49.968189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162363, 33.333344, 50.327160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933590, 0.154402, 0.323373,
		-0.053567, -0.952403, 0.300098,
		0.354317, 0.262846, 0.897425,
		30.268658, 33.412197, 50.596386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600309, 32.903469, 50.428360>,  <30.020636, 33.228207, 49.968189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600309, 32.903469, 50.428360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.761309, 33.185574, 50.661804>,  <29.857908, 33.354836, 50.801872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.761309, 33.185574, 50.661804>,  <29.600309, 32.903469, 50.428360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761309, 33.185574, 50.661804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899493, 0.186278, 0.395239,
		0.170028, -0.684046, 0.709346,
		0.402497, 0.705253, 0.583621,
		29.882057, 33.397152, 50.836887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371948, 32.703381, 51.080734>,  <29.600309, 32.903469, 50.428360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371948, 32.703381, 51.080734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.443150, 33.092426, 51.020962>,  <29.485870, 33.325855, 50.985096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.443150, 33.092426, 51.020962>,  <29.371948, 32.703381, 51.080734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443150, 33.092426, 51.020962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942431, 0.212187, 0.258459,
		0.283090, 0.094826, 0.954394,
		0.178001, 0.972618, -0.149435,
		29.496550, 33.384212, 50.976131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052856, 32.949692, 51.654129>,  <29.371948, 32.703381, 51.080734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052856, 32.949692, 51.654129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.105061, 33.251396, 51.396740>,  <29.136383, 33.432419, 51.242306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.105061, 33.251396, 51.396740>,  <29.052856, 32.949692, 51.654129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105061, 33.251396, 51.396740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944583, 0.291775, 0.150432,
		0.301214, 0.588181, 0.750542,
		0.130508, 0.754262, -0.643472,
		29.144213, 33.477676, 51.203697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810940, 33.451511, 52.124794>,  <29.052856, 32.949692, 51.654129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810940, 33.451511, 52.124794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.830740, 33.582047, 51.747211>,  <28.842619, 33.660366, 51.520660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.830740, 33.582047, 51.747211>,  <28.810940, 33.451511, 52.124794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830740, 33.582047, 51.747211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828775, 0.540864, 0.143522,
		0.557389, 0.775224, 0.297229,
		0.049499, 0.326334, -0.943958,
		28.845589, 33.679947, 51.464024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831211, 34.206944, 52.154018>,  <28.810940, 33.451511, 52.124794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831211, 34.206944, 52.154018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.718693, 34.113476, 51.781723>,  <28.651182, 34.057396, 51.558346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.718693, 34.113476, 51.781723>,  <28.831211, 34.206944, 52.154018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718693, 34.113476, 51.781723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928164, 0.312549, 0.202053,
		0.243689, 0.920714, -0.304798,
		-0.281297, -0.233665, -0.930738,
		28.634304, 34.043377, 51.502502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401094, 34.821594, 51.906677>,  <28.831211, 34.206944, 52.154018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401094, 34.821594, 51.906677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.296530, 34.503407, 51.687988>,  <28.233791, 34.312496, 51.556774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.296530, 34.503407, 51.687988>,  <28.401094, 34.821594, 51.906677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296530, 34.503407, 51.687988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957957, 0.283201, 0.045990,
		0.118248, 0.535754, -0.836053,
		-0.261411, -0.795465, -0.546718,
		28.218107, 34.264767, 51.523972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969303, 35.108440, 51.317783>,  <28.401094, 34.821594, 51.906677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969303, 35.108440, 51.317783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.857988, 34.725365, 51.347157>,  <27.791201, 34.495522, 51.364780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.857988, 34.725365, 51.347157>,  <27.969303, 35.108440, 51.317783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857988, 34.725365, 51.347157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958331, 0.281978, 0.045716,
		-0.064488, -0.057652, -0.996252,
		-0.278286, -0.957687, 0.073434,
		27.774502, 34.438057, 51.369186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380375, 35.160820, 51.037746>,  <27.969303, 35.108440, 51.317783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380375, 35.160820, 51.037746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.354555, 34.802917, 51.214493>,  <27.339064, 34.588177, 51.320541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.354555, 34.802917, 51.214493>,  <27.380375, 35.160820, 51.037746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354555, 34.802917, 51.214493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952163, 0.187758, 0.241107,
		-0.298695, -0.405165, -0.864073,
		-0.064549, -0.894756, 0.441865,
		27.335190, 34.534492, 51.347054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796597, 34.964897, 50.831905>,  <27.380375, 35.160820, 51.037746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796597, 34.964897, 50.831905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.841436, 34.710438, 51.137257>,  <26.868340, 34.557762, 51.320469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.841436, 34.710438, 51.137257>,  <26.796597, 34.964897, 50.831905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841436, 34.710438, 51.137257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923747, 0.216420, 0.315995,
		-0.366230, -0.740595, -0.563377,
		0.112098, -0.636145, 0.763383,
		26.875067, 34.519596, 51.366272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182547, 34.638020, 50.808128>,  <26.796597, 34.964897, 50.831905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182547, 34.638020, 50.808128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.323309, 34.564003, 51.175152>,  <26.407766, 34.519592, 51.395367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.323309, 34.564003, 51.175152>,  <26.182547, 34.638020, 50.808128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323309, 34.564003, 51.175152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920322, 0.110466, 0.375240,
		-0.170796, -0.976502, -0.131428,
		0.351904, -0.185046, 0.917562,
		26.428881, 34.508488, 51.450420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738604, 34.174984, 50.987404>,  <26.182547, 34.638020, 50.808128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738604, 34.174984, 50.987404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.896551, 34.333649, 51.318882>,  <25.991320, 34.428848, 51.517769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.896551, 34.333649, 51.318882>,  <25.738604, 34.174984, 50.987404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896551, 34.333649, 51.318882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905834, 0.017441, 0.423274,
		0.153446, -0.917797, 0.366202,
		0.394867, 0.396668, 0.828695,
		26.015011, 34.452648, 51.567490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461710, 33.832706, 51.545033>,  <25.738604, 34.174984, 50.987404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.461710, 33.832706, 51.545033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.581303, 34.181068, 51.701050>,  <25.653059, 34.390087, 51.794662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.581303, 34.181068, 51.701050>,  <25.461710, 33.832706, 51.545033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581303, 34.181068, 51.701050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881939, 0.096096, 0.461464,
		0.364410, -0.481966, 0.796815,
		0.298981, 0.870905, 0.390046,
		25.670998, 34.442341, 51.818066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357588, 33.743748, 52.262882>,  <25.461710, 33.832706, 51.545033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357588, 33.743748, 52.262882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.389387, 34.134293, 52.182495>,  <25.408466, 34.368622, 52.134262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.389387, 34.134293, 52.182495>,  <25.357588, 33.743748, 52.262882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389387, 34.134293, 52.182495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752638, 0.190982, 0.630129,
		0.653618, 0.101162, 0.750033,
		0.079498, 0.976367, -0.200968,
		25.413237, 34.427204, 52.122204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.486637, 34.166245, 52.863060>,  <25.357588, 33.743748, 52.262882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.486637, 34.166245, 52.863060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.308376, 34.401024, 52.592690>,  <25.201420, 34.541893, 52.430466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.308376, 34.401024, 52.592690>,  <25.486637, 34.166245, 52.863060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308376, 34.401024, 52.592690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586105, 0.379422, 0.715905,
		0.676663, 0.715212, 0.174924,
		-0.445654, 0.586950, -0.675930,
		25.174681, 34.577110, 52.389912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697727, 34.860374, 53.026756>,  <25.486637, 34.166245, 52.863060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697727, 34.860374, 53.026756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.333954, 34.812622, 52.867420>,  <25.115690, 34.783970, 52.771816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.333954, 34.812622, 52.867420>,  <25.697727, 34.860374, 53.026756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333954, 34.812622, 52.867420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406128, 0.460881, 0.789081,
		0.089386, 0.879395, -0.467626,
		-0.909434, -0.119384, -0.398343,
		25.061123, 34.776806, 52.747917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.703724, 29.901602, 52.529945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426437, 29.834431, 52.249588>,  <35.260067, 29.794128, 52.081375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426437, 29.834431, 52.249588>,  <35.703724, 29.901602, 52.529945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426437, 29.834431, 52.249588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213261, 0.976722, -0.023090,
		0.688456, 0.133467, -0.712892,
		-0.693216, -0.167928, -0.700893,
		35.218472, 29.784052, 52.039318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630718, 30.495798, 52.015392>,  <35.703724, 29.901602, 52.529945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630718, 30.495798, 52.015392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.288994, 30.288145, 52.025597>,  <35.083958, 30.163553, 52.031719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.288994, 30.288145, 52.025597>,  <35.630718, 30.495798, 52.015392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288994, 30.288145, 52.025597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501760, 0.836537, 0.220095,
		-0.135603, 0.175227, -0.975145,
		-0.854311, -0.519134, 0.025515,
		35.032700, 30.132404, 52.033253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126076, 30.952583, 51.695538>,  <35.630718, 30.495798, 52.015392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126076, 30.952583, 51.695538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906715, 30.691011, 51.904011>,  <34.775101, 30.534067, 52.029095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906715, 30.691011, 51.904011>,  <35.126076, 30.952583, 51.695538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906715, 30.691011, 51.904011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587444, 0.744837, 0.316430,
		-0.595117, -0.132633, -0.792618,
		-0.548402, -0.653932, 0.521179,
		34.742195, 30.494831, 52.060364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441952, 31.123714, 51.559402>,  <35.126076, 30.952583, 51.695538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441952, 31.123714, 51.559402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375092, 30.913515, 51.893089>,  <34.334976, 30.787395, 52.093300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375092, 30.913515, 51.893089>,  <34.441952, 31.123714, 51.559402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375092, 30.913515, 51.893089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629603, 0.708022, 0.319851,
		-0.758722, -0.471759, -0.449204,
		-0.167154, -0.525498, 0.834213,
		34.324947, 30.755865, 52.143353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757156, 31.077709, 51.686626>,  <34.441952, 31.123714, 51.559402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757156, 31.077709, 51.686626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931850, 31.032255, 52.043579>,  <34.036667, 31.004984, 52.257751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931850, 31.032255, 52.043579>,  <33.757156, 31.077709, 51.686626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931850, 31.032255, 52.043579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570978, 0.731545, 0.372593,
		-0.695157, -0.672257, 0.254611,
		0.436738, -0.113634, 0.892383,
		34.062870, 30.998165, 52.311295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120331, 31.123968, 52.149891>,  <33.757156, 31.077709, 51.686626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120331, 31.123968, 52.149891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446819, 31.183489, 52.373188>,  <33.642712, 31.219202, 52.507168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446819, 31.183489, 52.373188>,  <33.120331, 31.123968, 52.149891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446819, 31.183489, 52.373188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508450, 0.643839, 0.571796,
		-0.274337, -0.750553, 0.601174,
		0.816222, 0.148802, 0.558247,
		33.691685, 31.228130, 52.540661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873043, 31.079618, 52.888939>,  <33.120331, 31.123968, 52.149891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873043, 31.079618, 52.888939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.214447, 31.287607, 52.875381>,  <33.419289, 31.412401, 52.867249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.214447, 31.287607, 52.875381>,  <32.873043, 31.079618, 52.888939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214447, 31.287607, 52.875381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339302, 0.603956, 0.721188,
		0.395468, -0.604041, 0.691910,
		0.853510, 0.519973, -0.033893,
		33.470501, 31.443600, 52.865211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856838, 31.349352, 53.559811>,  <32.873043, 31.079618, 52.888939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856838, 31.349352, 53.559811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.140671, 31.562321, 53.375191>,  <33.310970, 31.690102, 53.264420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.140671, 31.562321, 53.375191>,  <32.856838, 31.349352, 53.559811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140671, 31.562321, 53.375191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093040, 0.720085, 0.687620,
		0.698462, -0.444974, 0.560490,
		0.709574, 0.532424, -0.461552,
		33.353542, 31.722048, 53.236725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325111, 31.575130, 54.122883>,  <32.856838, 31.349352, 53.559811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325111, 31.575130, 54.122883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.374477, 31.815825, 53.807243>,  <33.404099, 31.960241, 53.617859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.374477, 31.815825, 53.807243>,  <33.325111, 31.575130, 54.122883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374477, 31.815825, 53.807243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111977, 0.798548, 0.591424,
		0.986017, 0.015369, 0.165936,
		0.123418, 0.601735, -0.789102,
		33.411503, 31.996346, 53.570511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823566, 32.156574, 54.372475>,  <33.325111, 31.575130, 54.122883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823566, 32.156574, 54.372475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660797, 32.313309, 54.042412>,  <33.563137, 32.407349, 53.844376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660797, 32.313309, 54.042412>,  <33.823566, 32.156574, 54.372475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660797, 32.313309, 54.042412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093556, 0.880695, 0.464352,
		0.908660, 0.266153, -0.321714,
		-0.406920, 0.391840, -0.825153,
		33.538719, 32.430862, 53.794865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089714, 32.820225, 54.257870>,  <33.823566, 32.156574, 54.372475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089714, 32.820225, 54.257870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751621, 32.836014, 54.044693>,  <33.548767, 32.845486, 53.916786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751621, 32.836014, 54.044693>,  <34.089714, 32.820225, 54.257870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751621, 32.836014, 54.044693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262955, 0.837465, 0.479068,
		0.465228, 0.545063, -0.697473,
		-0.845232, 0.039472, -0.532940,
		33.498051, 32.847855, 53.884811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934685, 33.621273, 53.992569>,  <34.089714, 32.820225, 54.257870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934685, 33.621273, 53.992569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.611248, 33.390865, 54.040554>,  <33.417187, 33.252621, 54.069344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.611248, 33.390865, 54.040554>,  <33.934685, 33.621273, 53.992569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611248, 33.390865, 54.040554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476623, 0.760797, 0.440475,
		-0.344987, 0.298986, -0.889714,
		-0.808588, -0.576016, 0.119961,
		33.368671, 33.218060, 54.076542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967663, 34.346256, 53.763199>,  <33.934685, 33.621273, 53.992569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967663, 34.346256, 53.763199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355431, 34.418808, 53.829323>,  <34.588093, 34.462337, 53.868996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355431, 34.418808, 53.829323>,  <33.967663, 34.346256, 53.763199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355431, 34.418808, 53.829323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245030, -0.678032, -0.692989,
		-0.013611, 0.712302, -0.701741,
		0.969420, 0.181379, 0.165307,
		34.646255, 34.473221, 53.878914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318405, 34.526081, 53.107475>,  <33.967663, 34.346256, 53.763199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318405, 34.526081, 53.107475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.615555, 34.405064, 53.346340>,  <34.793846, 34.332455, 53.489658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.615555, 34.405064, 53.346340>,  <34.318405, 34.526081, 53.107475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615555, 34.405064, 53.346340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333941, -0.605651, -0.722267,
		0.580192, 0.735971, -0.348890,
		0.742873, -0.302545, 0.597165,
		34.838417, 34.314301, 53.525490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955471, 34.717571, 52.754063>,  <34.318405, 34.526081, 53.107475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955471, 34.717571, 52.754063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052944, 34.435406, 53.020302>,  <35.111427, 34.266106, 53.180046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052944, 34.435406, 53.020302>,  <34.955471, 34.717571, 52.754063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052944, 34.435406, 53.020302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489287, -0.503132, -0.712360,
		0.837387, 0.499256, 0.222545,
		0.243680, -0.705409, 0.665596,
		35.126049, 34.223782, 53.219982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702599, 34.641411, 52.707535>,  <34.955471, 34.717571, 52.754063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702599, 34.641411, 52.707535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573311, 34.300209, 52.871445>,  <35.495739, 34.095490, 52.969791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573311, 34.300209, 52.871445>,  <35.702599, 34.641411, 52.707535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573311, 34.300209, 52.871445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483744, -0.521095, -0.703172,
		0.813339, -0.029054, 0.581064,
		-0.323219, -0.853004, 0.409772,
		35.476345, 34.044308, 52.994377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248653, 34.365440, 52.934502>,  <35.702599, 34.641411, 52.707535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248653, 34.365440, 52.934502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.976742, 34.075985, 52.886745>,  <35.813595, 33.902313, 52.858093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.976742, 34.075985, 52.886745>,  <36.248653, 34.365440, 52.934502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976742, 34.075985, 52.886745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563776, -0.411453, -0.716145,
		0.469107, -0.554125, 0.687665,
		-0.679776, -0.723638, -0.119387,
		35.772808, 33.858894, 52.850929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647228, 33.755283, 52.988647>,  <36.248653, 34.365440, 52.934502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647228, 33.755283, 52.988647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311977, 33.632824, 52.808064>,  <36.110828, 33.559349, 52.699715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.311977, 33.632824, 52.808064>,  <36.647228, 33.755283, 52.988647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311977, 33.632824, 52.808064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542841, -0.549349, -0.635248,
		-0.053526, -0.777488, 0.626615,
		-0.838128, -0.306150, -0.451457,
		36.060539, 33.540977, 52.672626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779385, 33.128826, 52.852039>,  <36.647228, 33.755283, 52.988647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779385, 33.128826, 52.852039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.463634, 33.201710, 52.617542>,  <36.274185, 33.245438, 52.476845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.463634, 33.201710, 52.617542>,  <36.779385, 33.128826, 52.852039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463634, 33.201710, 52.617542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497116, -0.370609, -0.784554,
		-0.360199, -0.910746, 0.201987,
		-0.789387, 0.182185, -0.586239,
		36.226822, 33.256371, 52.441669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484585, 32.494011, 52.517277>,  <36.779385, 33.128826, 52.852039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484585, 32.494011, 52.517277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.375641, 32.794670, 52.276997>,  <36.310276, 32.975067, 52.132828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.375641, 32.794670, 52.276997>,  <36.484585, 32.494011, 52.517277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375641, 32.794670, 52.276997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495993, -0.425292, -0.757045,
		-0.824508, -0.504130, -0.256983,
		-0.272356, 0.751651, -0.600702,
		36.293934, 33.020164, 52.096786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278843, 32.218639, 51.892765>,  <36.484585, 32.494011, 52.517277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278843, 32.218639, 51.892765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.387318, 32.591160, 51.795498>,  <36.452404, 32.814674, 51.737137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.387318, 32.591160, 51.795498>,  <36.278843, 32.218639, 51.892765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387318, 32.591160, 51.795498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535050, -0.355859, -0.766216,
		-0.800112, 0.077683, -0.594799,
		0.271186, 0.931305, -0.243163,
		36.468674, 32.870552, 51.722549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359554, 32.167850, 51.093731>,  <36.278843, 32.218639, 51.892765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359554, 32.167850, 51.093731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.500607, 32.532280, 51.179142>,  <36.585236, 32.750938, 51.230389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.500607, 32.532280, 51.179142>,  <36.359554, 32.167850, 51.093731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500607, 32.532280, 51.179142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431846, 0.043991, -0.900874,
		-0.830158, 0.409884, -0.377932,
		0.352628, 0.911076, 0.213527,
		36.606396, 32.805603, 51.243198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242947, 32.505733, 50.489437>,  <36.359554, 32.167850, 51.093731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242947, 32.505733, 50.489437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540726, 32.694195, 50.678673>,  <36.719395, 32.807270, 50.792213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.540726, 32.694195, 50.678673>,  <36.242947, 32.505733, 50.489437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540726, 32.694195, 50.678673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493846, 0.088313, -0.865053,
		-0.449349, 0.877621, -0.166931,
		0.744447, 0.471149, 0.473093,
		36.764061, 32.835541, 50.820602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286552, 33.173462, 50.238670>,  <36.242947, 32.505733, 50.489437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286552, 33.173462, 50.238670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643490, 33.087727, 50.397560>,  <36.857651, 33.036285, 50.492893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643490, 33.087727, 50.397560>,  <36.286552, 33.173462, 50.238670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643490, 33.087727, 50.397560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432334, 0.153048, -0.888630,
		0.129677, 0.964694, 0.229238,
		0.892340, -0.214343, 0.397223,
		36.911194, 33.023422, 50.516727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730087, 33.789585, 50.097012>,  <36.286552, 33.173462, 50.238670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730087, 33.789585, 50.097012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003819, 33.512928, 50.189377>,  <37.168056, 33.346931, 50.244797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003819, 33.512928, 50.189377>,  <36.730087, 33.789585, 50.097012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003819, 33.512928, 50.189377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650740, 0.436411, -0.621356,
		0.328988, 0.575474, 0.748730,
		0.684328, -0.691647, 0.230910,
		37.209118, 33.305435, 50.258648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248837, 34.206589, 49.931335>,  <36.730087, 33.789585, 50.097012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248837, 34.206589, 49.931335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416889, 33.845627, 49.969612>,  <37.517723, 33.629051, 49.992580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416889, 33.845627, 49.969612>,  <37.248837, 34.206589, 49.931335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416889, 33.845627, 49.969612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783110, 0.307260, -0.540674,
		0.458502, 0.302097, 0.835771,
		0.420135, -0.902402, 0.095695,
		37.542931, 33.574905, 49.998322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168888, 34.373524, 49.170353>,  <37.248837, 34.206589, 49.931335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168888, 34.373524, 49.170353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.776173, 34.337643, 49.237335>,  <36.540543, 34.316113, 49.277527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.776173, 34.337643, 49.237335>,  <37.168888, 34.373524, 49.170353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776173, 34.337643, 49.237335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167968, 0.821695, -0.544614,
		-0.088746, -0.562824, -0.821799,
		-0.981790, -0.089704, 0.167458,
		36.481636, 34.310730, 49.287571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817291, 34.474201, 48.570328>,  <37.168888, 34.373524, 49.170353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817291, 34.474201, 48.570328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556522, 34.581455, 48.854046>,  <36.400059, 34.645805, 49.024277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556522, 34.581455, 48.854046>,  <36.817291, 34.474201, 48.570328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556522, 34.581455, 48.854046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125147, 0.884522, -0.449398,
		-0.747886, -0.381739, -0.543086,
		-0.651924, 0.268133, 0.709295,
		36.360947, 34.661896, 49.066833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887215, 35.123482, 48.301376>,  <36.817291, 34.474201, 48.570328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887215, 35.123482, 48.301376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537819, 35.279282, 48.184547>,  <36.328182, 35.372761, 48.114449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537819, 35.279282, 48.184547>,  <36.887215, 35.123482, 48.301376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537819, 35.279282, 48.184547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118119, 0.412452, 0.903289,
		0.472293, 0.823514, -0.314266,
		-0.873491, 0.389496, -0.292071,
		36.275772, 35.396130, 48.096928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730042, 35.697636, 48.779877>,  <36.887215, 35.123482, 48.301376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730042, 35.697636, 48.779877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379868, 35.703289, 48.586624>,  <36.169765, 35.706680, 48.470673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379868, 35.703289, 48.586624>,  <36.730042, 35.697636, 48.779877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379868, 35.703289, 48.586624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428873, 0.438268, 0.789930,
		0.222908, 0.898733, -0.377612,
		-0.875431, 0.014134, -0.483136,
		36.117237, 35.707531, 48.441685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601006, 36.345459, 48.791569>,  <36.730042, 35.697636, 48.779877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601006, 36.345459, 48.791569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251255, 36.155975, 48.749504>,  <36.041405, 36.042286, 48.724266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251255, 36.155975, 48.749504>,  <36.601006, 36.345459, 48.791569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251255, 36.155975, 48.749504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377975, 0.529010, 0.759791,
		-0.304290, 0.704094, -0.641607,
		-0.874381, -0.473708, -0.105158,
		35.988941, 36.013863, 48.717957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073341, 36.845230, 48.643272>,  <36.601006, 36.345459, 48.791569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073341, 36.845230, 48.643272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.866714, 36.529221, 48.775349>,  <35.742741, 36.339615, 48.854595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.866714, 36.529221, 48.775349>,  <36.073341, 36.845230, 48.643272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866714, 36.529221, 48.775349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474907, 0.585217, 0.657256,
		-0.712479, 0.182706, -0.677490,
		-0.516563, -0.790025, 0.330186,
		35.711746, 36.292213, 48.874405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383839, 37.119568, 48.762604>,  <36.073341, 36.845230, 48.643272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383839, 37.119568, 48.762604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411133, 36.785839, 48.981419>,  <35.427509, 36.585602, 49.112705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411133, 36.785839, 48.981419>,  <35.383839, 37.119568, 48.762604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411133, 36.785839, 48.981419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502229, 0.445045, 0.741418,
		-0.862038, -0.325327, -0.388655,
		0.068234, -0.834325, 0.547035,
		35.431602, 36.535542, 49.145531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664806, 37.117363, 49.054024>,  <35.383839, 37.119568, 48.762604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664806, 37.117363, 49.054024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915592, 36.874767, 49.249607>,  <35.066063, 36.729210, 49.366959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915592, 36.874767, 49.249607>,  <34.664806, 37.117363, 49.054024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915592, 36.874767, 49.249607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376980, 0.313072, 0.871706,
		-0.681759, -0.730861, -0.032347,
		0.626969, -0.606488, 0.488960,
		35.103683, 36.692822, 49.396294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275074, 36.622150, 49.474541>,  <34.664806, 37.117363, 49.054024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275074, 36.622150, 49.474541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632725, 36.618282, 49.653622>,  <34.847317, 36.615963, 49.761070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632725, 36.618282, 49.653622>,  <34.275074, 36.622150, 49.474541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632725, 36.618282, 49.653622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424392, 0.300784, 0.854061,
		-0.142922, -0.953643, 0.264836,
		0.894128, -0.009670, 0.447707,
		34.900963, 36.615383, 49.787933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196259, 36.217434, 50.089725>,  <34.275074, 36.622150, 49.474541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196259, 36.217434, 50.089725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.501263, 36.470829, 50.142284>,  <34.684265, 36.622868, 50.173820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.501263, 36.470829, 50.142284>,  <34.196259, 36.217434, 50.089725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501263, 36.470829, 50.142284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436471, 0.353786, 0.827242,
		0.477563, -0.688133, 0.546266,
		0.762514, 0.633489, 0.131395,
		34.730019, 36.660877, 50.181702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357006, 36.175156, 50.897324>,  <34.196259, 36.217434, 50.089725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357006, 36.175156, 50.897324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512161, 36.524727, 50.780159>,  <34.605255, 36.734470, 50.709858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512161, 36.524727, 50.780159>,  <34.357006, 36.175156, 50.897324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512161, 36.524727, 50.780159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525005, 0.470690, 0.709098,
		0.757571, -0.121267, 0.641389,
		0.387886, 0.873925, -0.292915,
		34.628529, 36.786903, 50.692284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745708, 36.445999, 51.513309>,  <34.357006, 36.175156, 50.897324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745708, 36.445999, 51.513309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652092, 36.738731, 51.257294>,  <34.595921, 36.914371, 51.103683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652092, 36.738731, 51.257294>,  <34.745708, 36.445999, 51.513309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652092, 36.738731, 51.257294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366310, 0.543428, 0.755316,
		0.900578, 0.411229, 0.140891,
		-0.234044, 0.731831, -0.640036,
		34.581879, 36.958282, 51.065281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075962, 37.088928, 51.741386>,  <34.745708, 36.445999, 51.513309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075962, 37.088928, 51.741386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807880, 37.249004, 51.491371>,  <34.647034, 37.345051, 51.341362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807880, 37.249004, 51.491371>,  <35.075962, 37.088928, 51.741386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807880, 37.249004, 51.491371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097373, 0.787481, 0.608599,
		0.735763, 0.468746, -0.488804,
		-0.670202, 0.400188, -0.625043,
		34.606819, 37.369061, 51.303860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069550, 37.801315, 51.969437>,  <35.075962, 37.088928, 51.741386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069550, 37.801315, 51.969437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.771912, 37.778858, 51.703156>,  <34.593327, 37.765385, 51.543385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.771912, 37.778858, 51.703156>,  <35.069550, 37.801315, 51.969437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771912, 37.778858, 51.703156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377118, 0.857819, 0.349182,
		0.551452, 0.510876, -0.659474,
		-0.744099, -0.056142, -0.665707,
		34.548683, 37.762016, 51.503445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998882, 38.456242, 51.674850>,  <35.069550, 37.801315, 51.969437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998882, 38.456242, 51.674850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644646, 38.272102, 51.650139>,  <34.432106, 38.161621, 51.635311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644646, 38.272102, 51.650139>,  <34.998882, 38.456242, 51.674850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644646, 38.272102, 51.650139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441664, 0.793458, 0.418757,
		-0.143756, 0.398130, -0.905995,
		-0.885589, -0.460344, -0.061775,
		34.378967, 38.133999, 51.631607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584801, 39.025356, 51.491074>,  <34.998882, 38.456242, 51.674850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584801, 39.025356, 51.491074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348755, 38.739491, 51.641281>,  <34.207127, 38.567970, 51.731407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348755, 38.739491, 51.641281>,  <34.584801, 39.025356, 51.491074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348755, 38.739491, 51.641281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594909, 0.699388, 0.396157,
		-0.545756, 0.010376, -0.837880,
		-0.590114, -0.714667, 0.375522,
		34.171722, 38.525089, 51.753937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968296, 39.181690, 51.153233>,  <34.584801, 39.025356, 51.491074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968296, 39.181690, 51.153233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887325, 38.956776, 51.473946>,  <33.838745, 38.821827, 51.666374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887325, 38.956776, 51.473946>,  <33.968296, 39.181690, 51.153233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887325, 38.956776, 51.473946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582173, 0.727447, 0.363175,
		-0.787464, -0.393262, -0.474600,
		-0.202424, -0.562286, 0.801785,
		33.826599, 38.788090, 51.714481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243507, 39.217182, 51.253567>,  <33.968296, 39.181690, 51.153233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243507, 39.217182, 51.253567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388752, 39.114964, 51.611973>,  <33.475899, 39.053631, 51.827015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388752, 39.114964, 51.611973>,  <33.243507, 39.217182, 51.253567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388752, 39.114964, 51.611973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576200, 0.694134, 0.431476,
		-0.732218, -0.672959, 0.104802,
		0.363112, -0.255548, 0.896016,
		33.497684, 39.038300, 51.880779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696621, 39.166908, 51.643379>,  <33.243507, 39.217182, 51.253567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696621, 39.166908, 51.643379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.963829, 39.191616, 51.940010>,  <33.124153, 39.206440, 52.117989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.963829, 39.191616, 51.940010>,  <32.696621, 39.166908, 51.643379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963829, 39.191616, 51.940010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698512, 0.395659, 0.596267,
		-0.256583, -0.916318, 0.307452,
		0.668017, 0.061767, 0.741578,
		33.164234, 39.210148, 52.162483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342823, 38.903233, 52.343468>,  <32.696621, 39.166908, 51.643379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342823, 38.903233, 52.343468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.660446, 39.113567, 52.465431>,  <32.851021, 39.239769, 52.538609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.660446, 39.113567, 52.465431>,  <32.342823, 38.903233, 52.343468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660446, 39.113567, 52.465431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500171, 0.280201, 0.819339,
		0.345405, -0.803107, 0.485504,
		0.794056, 0.525839, 0.304908,
		32.898663, 39.271317, 52.556904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425323, 38.777271, 53.028427>,  <32.342823, 38.903233, 52.343468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425323, 38.777271, 53.028427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.627106, 39.112709, 52.946178>,  <32.748173, 39.313972, 52.896828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.627106, 39.112709, 52.946178>,  <32.425323, 38.777271, 53.028427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627106, 39.112709, 52.946178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643205, 0.523847, 0.558454,
		0.576036, -0.149453, 0.803646,
		0.504450, 0.838599, -0.205626,
		32.778442, 39.364288, 52.884491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654488, 39.086296, 53.677078>,  <32.425323, 38.777271, 53.028427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654488, 39.086296, 53.677078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.660946, 39.397720, 53.426136>,  <32.664822, 39.584576, 53.275570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.660946, 39.397720, 53.426136>,  <32.654488, 39.086296, 53.677078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660946, 39.397720, 53.426136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423832, 0.573612, 0.700953,
		0.905597, 0.254574, 0.339244,
		0.016149, 0.778563, -0.627358,
		32.665791, 39.631290, 53.237930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831337, 39.819244, 54.089474>,  <32.654488, 39.086296, 53.677078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831337, 39.819244, 54.089474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.660656, 39.943752, 53.749817>,  <32.558247, 40.018459, 53.546024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.660656, 39.943752, 53.749817>,  <32.831337, 39.819244, 54.089474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660656, 39.943752, 53.749817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414071, 0.767477, 0.489412,
		0.804035, 0.560436, -0.198593,
		-0.426699, 0.311273, -0.849139,
		32.532646, 40.037132, 53.495075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915607, 40.530777, 54.032547>,  <32.831337, 39.819244, 54.089474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915607, 40.530777, 54.032547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.600483, 40.457401, 53.797359>,  <32.411407, 40.413376, 53.656246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.600483, 40.457401, 53.797359>,  <32.915607, 40.530777, 54.032547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600483, 40.457401, 53.797359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492537, 0.760809, 0.422584,
		0.369812, 0.622511, -0.689723,
		-0.787811, -0.183437, -0.587966,
		32.364140, 40.402370, 53.620968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657490, 41.192692, 53.914337>,  <32.915607, 40.530777, 54.032547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657490, 41.192692, 53.914337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363655, 40.943901, 53.805874>,  <32.187355, 40.794628, 53.740795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363655, 40.943901, 53.805874>,  <32.657490, 41.192692, 53.914337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363655, 40.943901, 53.805874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670029, 0.601958, 0.434404,
		-0.106960, 0.500795, -0.858932,
		-0.734588, -0.621974, -0.271162,
		32.143280, 40.757309, 53.724525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117119, 41.639832, 53.684937>,  <32.657490, 41.192692, 53.914337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117119, 41.639832, 53.684937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.944662, 41.286724, 53.759594>,  <31.841188, 41.074860, 53.804390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.944662, 41.286724, 53.759594>,  <32.117119, 41.639832, 53.684937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944662, 41.286724, 53.759594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834395, 0.468796, 0.289854,
		-0.343373, -0.030769, -0.938695,
		-0.431138, -0.882770, 0.186645,
		31.815321, 41.021893, 53.815586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487324, 41.692261, 53.431660>,  <32.117119, 41.639832, 53.684937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487324, 41.692261, 53.431660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.463591, 41.426476, 53.729645>,  <31.449350, 41.267006, 53.908436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.463591, 41.426476, 53.729645>,  <31.487324, 41.692261, 53.431660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463591, 41.426476, 53.729645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780910, 0.495765, 0.379996,
		-0.621819, -0.559202, -0.548301,
		-0.059334, -0.664463, 0.744962,
		31.445791, 41.227139, 53.953133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778587, 41.636490, 53.569008>,  <31.487324, 41.692261, 53.431660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778587, 41.636490, 53.569008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924440, 41.473057, 53.903698>,  <31.011953, 41.374996, 54.104511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924440, 41.473057, 53.903698>,  <30.778587, 41.636490, 53.569008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924440, 41.473057, 53.903698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734590, 0.425971, 0.528135,
		-0.572205, -0.807223, -0.144817,
		0.364635, -0.408582, 0.836721,
		31.033831, 41.350483, 54.154713>
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
