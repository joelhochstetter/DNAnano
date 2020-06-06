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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<51.218201, 41.570602, 46.248333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.412148, 41.920189, 46.261475>,  <51.528515, 42.129940, 46.269360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.412148, 41.920189, 46.261475>,  <51.218201, 41.570602, 46.248333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.412148, 41.920189, 46.261475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135457, 0.037931, 0.990057,
		0.864035, -0.484496, 0.136777,
		0.484867, 0.873971, 0.032855,
		51.557606, 42.182381, 46.271332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.774059, 41.611488, 46.765450>,  <51.218201, 41.570602, 46.248333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.774059, 41.611488, 46.765450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.664597, 41.993614, 46.720768>,  <51.598919, 42.222889, 46.693958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.664597, 41.993614, 46.720768>,  <51.774059, 41.611488, 46.765450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.664597, 41.993614, 46.720768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151965, 0.071730, 0.985780,
		0.949746, 0.286740, 0.125546,
		-0.273657, 0.955319, -0.111699,
		51.582500, 42.280209, 46.687260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.078629, 41.942440, 47.401295>,  <51.774059, 41.611488, 46.765450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.078629, 41.942440, 47.401295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.812943, 42.197647, 47.245472>,  <51.653530, 42.350769, 47.151978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.812943, 42.197647, 47.245472>,  <52.078629, 41.942440, 47.401295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.812943, 42.197647, 47.245472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236365, 0.315134, 0.919142,
		0.709188, 0.702587, -0.058513,
		-0.664217, 0.638014, -0.389556,
		51.613678, 42.389050, 47.128605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.233608, 42.528103, 47.696514>,  <52.078629, 41.942440, 47.401295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.233608, 42.528103, 47.696514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.863548, 42.585785, 47.556057>,  <51.641514, 42.620392, 47.471783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.863548, 42.585785, 47.556057>,  <52.233608, 42.528103, 47.696514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.863548, 42.585785, 47.556057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340739, 0.092243, 0.935622,
		0.167310, 0.985239, -0.036203,
		-0.925151, 0.144203, -0.351143,
		51.586002, 42.629047, 47.450714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.978321, 43.130871, 47.978020>,  <52.233608, 42.528103, 47.696514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.978321, 43.130871, 47.978020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.650391, 42.928490, 47.870766>,  <51.453632, 42.807060, 47.806412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.650391, 42.928490, 47.870766>,  <51.978321, 43.130871, 47.978020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.650391, 42.928490, 47.870766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351578, 0.075157, 0.933137,
		-0.451968, 0.859282, -0.239497,
		-0.819828, -0.505950, -0.268136,
		51.404442, 42.776703, 47.790325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.473713, 43.398777, 48.251961>,  <51.978321, 43.130871, 47.978020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.473713, 43.398777, 48.251961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.302017, 43.044960, 48.178932>,  <51.198997, 42.832668, 48.135117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.302017, 43.044960, 48.178932>,  <51.473713, 43.398777, 48.251961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.302017, 43.044960, 48.178932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411448, 0.011560, 0.911360,
		-0.804029, 0.466311, -0.368906,
		-0.429241, -0.884546, -0.182568,
		51.173244, 42.779598, 48.124161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.812386, 43.415806, 48.513134>,  <51.473713, 43.398777, 48.251961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.812386, 43.415806, 48.513134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.896431, 43.025269, 48.492699>,  <50.946857, 42.790947, 48.480438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.896431, 43.025269, 48.492699>,  <50.812386, 43.415806, 48.513134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.896431, 43.025269, 48.492699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400037, -0.133532, 0.906719,
		-0.892090, -0.170074, -0.418629,
		0.210110, -0.976342, -0.051087,
		50.959465, 42.732365, 48.477371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.233067, 43.052441, 48.680458>,  <50.812386, 43.415806, 48.513134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.233067, 43.052441, 48.680458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.523407, 42.787018, 48.752937>,  <50.697609, 42.627762, 48.796425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.523407, 42.787018, 48.752937>,  <50.233067, 43.052441, 48.680458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.523407, 42.787018, 48.752937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406416, -0.201184, 0.891264,
		-0.554951, -0.720565, -0.415710,
		0.725848, -0.663559, 0.181202,
		50.741161, 42.587952, 48.807297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.927361, 42.457108, 48.948933>,  <50.233067, 43.052441, 48.680458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.927361, 42.457108, 48.948933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.306366, 42.420288, 49.071404>,  <50.533768, 42.398197, 49.144886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.306366, 42.420288, 49.071404>,  <49.927361, 42.457108, 48.948933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.306366, 42.420288, 49.071404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319504, -0.237894, 0.917237,
		-0.011595, -0.966919, -0.254819,
		0.947514, -0.092051, 0.306177,
		50.590622, 42.392673, 49.163258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.027100, 41.801311, 49.367870>,  <49.927361, 42.457108, 48.948933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.027100, 41.801311, 49.367870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.341919, 42.023849, 49.474480>,  <50.530811, 42.157372, 49.538445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.341919, 42.023849, 49.474480>,  <50.027100, 41.801311, 49.367870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.341919, 42.023849, 49.474480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156111, -0.238351, 0.958550,
		0.596806, -0.796036, -0.100744,
		0.787052, 0.556341, 0.266520,
		50.578033, 42.190750, 49.554436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.385303, 41.436020, 49.872437>,  <50.027100, 41.801311, 49.367870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.385303, 41.436020, 49.872437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.489838, 41.818642, 49.924145>,  <50.552559, 42.048214, 49.955170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.489838, 41.818642, 49.924145>,  <50.385303, 41.436020, 49.872437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.489838, 41.818642, 49.924145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012909, -0.130452, 0.991371,
		0.965161, -0.260751, -0.021744,
		0.261337, 0.956552, 0.129273,
		50.568237, 42.105606, 49.962925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.773819, 41.369709, 50.459545>,  <50.385303, 41.436020, 49.872437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.773819, 41.369709, 50.459545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.662750, 41.753036, 50.432648>,  <50.596111, 41.983032, 50.416512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.662750, 41.753036, 50.432648>,  <50.773819, 41.369709, 50.459545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.662750, 41.753036, 50.432648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130047, 0.031853, 0.990996,
		0.951834, 0.283913, 0.115782,
		-0.277669, 0.958321, -0.067241,
		50.579449, 42.040531, 50.412476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.074764, 41.727543, 50.985699>,  <50.773819, 41.369709, 50.459545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.074764, 41.727543, 50.985699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.771156, 41.976128, 50.908066>,  <50.588993, 42.125278, 50.861485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.771156, 41.976128, 50.908066>,  <51.074764, 41.727543, 50.985699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.771156, 41.976128, 50.908066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182019, 0.083663, 0.979729,
		0.625105, 0.778962, 0.049617,
		-0.759021, 0.621465, -0.194084,
		50.543449, 42.162567, 50.849842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.065937, 42.213978, 51.506496>,  <51.074764, 41.727543, 50.985699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.065937, 42.213978, 51.506496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.695015, 42.281845, 51.373039>,  <50.472462, 42.322563, 51.292965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.695015, 42.281845, 51.373039>,  <51.065937, 42.213978, 51.506496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.695015, 42.281845, 51.373039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299870, 0.196728, 0.933475,
		0.224014, 0.965667, -0.131550,
		-0.927305, 0.169664, -0.333644,
		50.416824, 42.332745, 51.272945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.883793, 42.817085, 51.801128>,  <51.065937, 42.213978, 51.506496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.883793, 42.817085, 51.801128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.541924, 42.626686, 51.718227>,  <50.336803, 42.512447, 51.668488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.541924, 42.626686, 51.718227>,  <50.883793, 42.817085, 51.801128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.541924, 42.626686, 51.718227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334931, 0.200512, 0.920661,
		-0.396679, 0.856281, -0.330800,
		-0.854674, -0.476002, -0.207256,
		50.285522, 42.483887, 51.656052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.444221, 43.343201, 51.908703>,  <50.883793, 42.817085, 51.801128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.444221, 43.343201, 51.908703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.246048, 42.996475, 51.931221>,  <50.127144, 42.788441, 51.944733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.246048, 42.996475, 51.931221>,  <50.444221, 43.343201, 51.908703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.246048, 42.996475, 51.931221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287616, 0.224854, 0.930977,
		-0.819645, 0.445049, -0.360712,
		-0.495438, -0.866817, 0.056298,
		50.097416, 42.736431, 51.948109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.766529, 43.436852, 52.220131>,  <50.444221, 43.343201, 51.908703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.766529, 43.436852, 52.220131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.789818, 43.046066, 52.302261>,  <49.803791, 42.811596, 52.351540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.789818, 43.046066, 52.302261>,  <49.766529, 43.436852, 52.220131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.789818, 43.046066, 52.302261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371001, 0.169772, 0.912982,
		-0.926805, -0.129329, -0.352570,
		0.058219, -0.976960, 0.205327,
		49.807281, 42.752979, 52.363861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.114597, 43.260902, 52.577171>,  <49.766529, 43.436852, 52.220131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.114597, 43.260902, 52.577171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.327011, 42.936226, 52.674461>,  <49.454460, 42.741421, 52.732834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.327011, 42.936226, 52.674461>,  <49.114597, 43.260902, 52.577171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.327011, 42.936226, 52.674461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503597, -0.071484, 0.860976,
		-0.681460, -0.579697, -0.446726,
		0.531039, -0.811690, 0.243221,
		49.486324, 42.692719, 52.747429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.643635, 42.831512, 52.927078>,  <49.114597, 43.260902, 52.577171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.643635, 42.831512, 52.927078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.009216, 42.705307, 53.029160>,  <49.228565, 42.629581, 53.090408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.009216, 42.705307, 53.029160>,  <48.643635, 42.831512, 52.927078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.009216, 42.705307, 53.029160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288995, -0.064563, 0.955151,
		-0.284889, -0.946721, -0.150190,
		0.913958, -0.315516, 0.255205,
		49.283405, 42.610653, 53.105721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.543003, 42.269341, 53.395077>,  <48.643635, 42.831512, 52.927078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.543003, 42.269341, 53.395077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.922714, 42.390678, 53.428207>,  <49.150539, 42.463482, 53.448086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.922714, 42.390678, 53.428207>,  <48.543003, 42.269341, 53.395077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.922714, 42.390678, 53.428207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089447, 0.007972, 0.995960,
		0.301461, -0.952847, 0.034701,
		0.949273, 0.303347, 0.082826,
		49.207497, 42.481682, 53.453056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.850807, 41.871105, 53.922516>,  <48.543003, 42.269341, 53.395077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.850807, 41.871105, 53.922516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.072418, 42.202721, 53.892181>,  <49.205383, 42.401688, 53.873981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.072418, 42.202721, 53.892181>,  <48.850807, 41.871105, 53.922516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.072418, 42.202721, 53.892181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062215, 0.049602, 0.996830,
		0.830170, -0.556989, -0.024097,
		0.554028, 0.829037, -0.075832,
		49.238628, 42.451431, 53.869431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.387276, 41.794994, 54.410408>,  <48.850807, 41.871105, 53.922516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.387276, 41.794994, 54.410408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.361916, 42.185890, 54.329437>,  <49.346699, 42.420429, 54.280853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.361916, 42.185890, 54.329437>,  <49.387276, 41.794994, 54.410408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.361916, 42.185890, 54.329437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026411, 0.204410, 0.978529,
		0.997639, 0.056695, -0.038770,
		-0.063403, 0.977242, -0.202430,
		49.342896, 42.479061, 54.268707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.911327, 42.097313, 54.747696>,  <49.387276, 41.794994, 54.410408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.911327, 42.097313, 54.747696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.648163, 42.390533, 54.678673>,  <49.490265, 42.566467, 54.637260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.648163, 42.390533, 54.678673>,  <49.911327, 42.097313, 54.747696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.648163, 42.390533, 54.678673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126973, 0.333827, 0.934044,
		0.742310, 0.592612, -0.312708,
		-0.657916, 0.733056, -0.172558,
		49.450787, 42.610451, 54.626904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.120960, 42.634083, 55.165344>,  <49.911327, 42.097313, 54.747696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.120960, 42.634083, 55.165344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.747910, 42.752411, 55.082684>,  <49.524078, 42.823406, 55.033085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.747910, 42.752411, 55.082684>,  <50.120960, 42.634083, 55.165344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.747910, 42.752411, 55.082684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045734, 0.471171, 0.880856,
		0.357944, 0.830957, -0.425895,
		-0.932622, 0.295820, -0.206656,
		49.468124, 42.841156, 55.020687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.072109, 43.372437, 55.302799>,  <50.120960, 42.634083, 55.165344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.072109, 43.372437, 55.302799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.707130, 43.209213, 55.314991>,  <49.488144, 43.111279, 55.322308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.707130, 43.209213, 55.314991>,  <50.072109, 43.372437, 55.302799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.707130, 43.209213, 55.314991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139023, 0.379208, 0.914808,
		-0.384853, 0.830477, -0.402736,
		-0.912448, -0.408056, 0.030483,
		49.433395, 43.086796, 55.324135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.689907, 43.869648, 55.714329>,  <50.072109, 43.372437, 55.302799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.689907, 43.869648, 55.714329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.417793, 43.576752, 55.701389>,  <49.254524, 43.401016, 55.693626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.417793, 43.576752, 55.701389>,  <49.689907, 43.869648, 55.714329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.417793, 43.576752, 55.701389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276323, 0.215337, 0.936630,
		-0.678870, 0.646110, -0.348824,
		-0.680281, -0.732238, -0.032350,
		49.213711, 43.357079, 55.691685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.031670, 44.115425, 55.792744>,  <49.689907, 43.869648, 55.714329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.031670, 44.115425, 55.792744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.026314, 43.736801, 55.921638>,  <49.023102, 43.509624, 55.998974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.026314, 43.736801, 55.921638>,  <49.031670, 44.115425, 55.792744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.026314, 43.736801, 55.921638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352927, 0.306000, 0.884198,
		-0.935555, -0.101886, -0.338166,
		-0.013391, -0.946564, 0.322238,
		49.022297, 43.452831, 56.018311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.400784, 44.095779, 56.153595>,  <49.031670, 44.115425, 55.792744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.400784, 44.095779, 56.153595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.563713, 43.757713, 56.292038>,  <48.661469, 43.554874, 56.375103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.563713, 43.757713, 56.292038>,  <48.400784, 44.095779, 56.153595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.563713, 43.757713, 56.292038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286775, 0.241442, 0.927074,
		-0.867093, -0.476872, -0.144027,
		0.407321, -0.845162, 0.346108,
		48.685909, 43.504166, 56.395870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.900547, 43.696430, 56.493420>,  <48.400784, 44.095779, 56.153595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.900547, 43.696430, 56.493420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.250580, 43.591843, 56.656326>,  <48.460598, 43.529091, 56.754070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.250580, 43.591843, 56.656326>,  <47.900547, 43.696430, 56.493420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.250580, 43.591843, 56.656326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391564, 0.112081, 0.913299,
		-0.284452, -0.958681, -0.004304,
		0.875080, -0.261475, 0.407267,
		48.513103, 43.513401, 56.778507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.729500, 43.222782, 56.964474>,  <47.900547, 43.696430, 56.493420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.729500, 43.222782, 56.964474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.082130, 43.369293, 57.083580>,  <48.293709, 43.457199, 57.155045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.082130, 43.369293, 57.083580>,  <47.729500, 43.222782, 56.964474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.082130, 43.369293, 57.083580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416080, 0.305019, 0.856645,
		0.222939, -0.879095, 0.421296,
		0.881576, 0.366273, 0.297773,
		48.346603, 43.479176, 57.172913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.798332, 42.999802, 57.603195>,  <47.729500, 43.222782, 56.964474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.798332, 42.999802, 57.603195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.035004, 43.320862, 57.573051>,  <48.177006, 43.513496, 57.554966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.035004, 43.320862, 57.573051>,  <47.798332, 42.999802, 57.603195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.035004, 43.320862, 57.573051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426545, 0.391007, 0.815582,
		0.684092, -0.450413, 0.573713,
		0.591674, 0.802647, -0.075363,
		48.212505, 43.561657, 57.550442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.103577, 43.003838, 58.210384>,  <47.798332, 42.999802, 57.603195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.103577, 43.003838, 58.210384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.134430, 43.370155, 58.052715>,  <48.152943, 43.589947, 57.958115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.134430, 43.370155, 58.052715>,  <48.103577, 43.003838, 58.210384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.134430, 43.370155, 58.052715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321505, 0.397076, 0.859630,
		0.943761, 0.060420, 0.325062,
		0.077135, 0.915795, -0.394170,
		48.157570, 43.644894, 57.934464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.453400, 43.421425, 58.743572>,  <48.103577, 43.003838, 58.210384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.453400, 43.421425, 58.743572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.305832, 43.696815, 58.493805>,  <48.217289, 43.862049, 58.343945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.305832, 43.696815, 58.493805>,  <48.453400, 43.421425, 58.743572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.305832, 43.696815, 58.493805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398421, 0.489817, 0.775461,
		0.839736, 0.534867, 0.093598,
		-0.368923, 0.688474, -0.624419,
		48.195156, 43.903358, 58.306480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.613003, 43.987064, 59.072273>,  <48.453400, 43.421425, 58.743572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.613003, 43.987064, 59.072273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.341652, 44.115845, 58.808105>,  <48.178841, 44.193115, 58.649605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.341652, 44.115845, 58.808105>,  <48.613003, 43.987064, 59.072273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.341652, 44.115845, 58.808105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407743, 0.582776, 0.702935,
		0.611188, 0.746135, -0.264067,
		-0.678376, 0.321954, -0.660417,
		48.138138, 44.212429, 58.609982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.641396, 44.781902, 59.004112>,  <48.613003, 43.987064, 59.072273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.641396, 44.781902, 59.004112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.281082, 44.655579, 58.884880>,  <48.064896, 44.579784, 58.813339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.281082, 44.655579, 58.884880>,  <48.641396, 44.781902, 59.004112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.281082, 44.655579, 58.884880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433629, 0.616913, 0.656798,
		-0.023534, 0.720890, -0.692650,
		-0.900784, -0.315811, -0.298080,
		48.010845, 44.560837, 58.795456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.236237, 45.408863, 58.724281>,  <48.641396, 44.781902, 59.004112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.236237, 45.408863, 58.724281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.005402, 45.120377, 58.877544>,  <47.866901, 44.947285, 58.969501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.005402, 45.120377, 58.877544>,  <48.236237, 45.408863, 58.724281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.005402, 45.120377, 58.877544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503987, 0.683677, 0.527809,
		-0.642622, 0.111488, -0.758029,
		-0.577091, -0.721218, 0.383157,
		47.832275, 44.904011, 58.992493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.523998, 45.634754, 58.570934>,  <48.236237, 45.408863, 58.724281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.523998, 45.634754, 58.570934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531616, 45.372650, 58.873001>,  <47.536186, 45.215389, 59.054241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531616, 45.372650, 58.873001>,  <47.523998, 45.634754, 58.570934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.531616, 45.372650, 58.873001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489832, 0.652333, 0.578382,
		-0.871609, -0.380922, -0.308540,
		0.019048, -0.655256, 0.755167,
		47.537331, 45.176075, 59.099552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.896957, 45.745483, 58.832878>,  <47.523998, 45.634754, 58.570934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.896957, 45.745483, 58.832878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069923, 45.534668, 59.125523>,  <47.173702, 45.408176, 59.301109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069923, 45.534668, 59.125523>,  <46.896957, 45.745483, 58.832878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.069923, 45.534668, 59.125523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451631, 0.575671, 0.681640,
		-0.780417, -0.625165, 0.010897,
		0.432410, -0.527042, 0.731607,
		47.199646, 45.376556, 59.345005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.365753, 45.626316, 59.313427>,  <46.896957, 45.745483, 58.832878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.365753, 45.626316, 59.313427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701218, 45.554398, 59.519077>,  <46.902496, 45.511246, 59.642467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.701218, 45.554398, 59.519077>,  <46.365753, 45.626316, 59.313427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701218, 45.554398, 59.519077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268666, 0.684546, 0.677654,
		-0.473782, -0.706449, 0.525796,
		0.838660, -0.179797, 0.514124,
		46.952816, 45.500458, 59.673313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141201, 45.549911, 59.949139>,  <46.365753, 45.626316, 59.313427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141201, 45.549911, 59.949139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530006, 45.624847, 60.005852>,  <46.763290, 45.669807, 60.039879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530006, 45.624847, 60.005852>,  <46.141201, 45.549911, 59.949139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.530006, 45.624847, 60.005852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231596, 0.662503, 0.712358,
		0.039521, -0.725255, 0.687346,
		0.972009, 0.187339, 0.141783,
		46.821609, 45.681049, 60.048386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.154037, 45.411934, 60.645527>,  <46.141201, 45.549911, 59.949139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.154037, 45.411934, 60.645527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454796, 45.651489, 60.535263>,  <46.635250, 45.795223, 60.469105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454796, 45.651489, 60.535263>,  <46.154037, 45.411934, 60.645527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.454796, 45.651489, 60.535263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188383, 0.595853, 0.780686,
		0.631800, -0.535062, 0.560838,
		0.751892, 0.598889, -0.275663,
		46.680363, 45.831154, 60.452564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.448772, 45.455132, 61.215885>,  <46.154037, 45.411934, 60.645527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.448772, 45.455132, 61.215885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594841, 45.766258, 61.011276>,  <46.682484, 45.952934, 60.888512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594841, 45.766258, 61.011276>,  <46.448772, 45.455132, 61.215885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594841, 45.766258, 61.011276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116757, 0.583398, 0.803751,
		0.923589, -0.233784, 0.303856,
		0.365173, 0.777812, -0.511524,
		46.704391, 45.999603, 60.857819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.115742, 45.722725, 61.418556>,  <46.448772, 45.455132, 61.215885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.115742, 45.722725, 61.418556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.838257, 45.984688, 61.298653>,  <46.671764, 46.141865, 61.226711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.838257, 45.984688, 61.298653>,  <47.115742, 45.722725, 61.418556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.838257, 45.984688, 61.298653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027200, 0.392071, 0.919532,
		0.719734, 0.646048, -0.254173,
		-0.693716, 0.654906, -0.299760,
		46.630142, 46.181160, 61.208725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.189888, 46.360439, 61.699238>,  <47.115742, 45.722725, 61.418556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.189888, 46.360439, 61.699238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.799271, 46.326302, 61.620163>,  <46.564899, 46.305817, 61.572720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.799271, 46.326302, 61.620163>,  <47.189888, 46.360439, 61.699238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.799271, 46.326302, 61.620163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212604, 0.236696, 0.948037,
		-0.034121, 0.967828, -0.249289,
		-0.976542, -0.085348, -0.197688,
		46.506310, 46.300697, 61.560856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.928753, 46.951900, 61.970688>,  <47.189888, 46.360439, 61.699238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.928753, 46.951900, 61.970688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659538, 46.656258, 61.959763>,  <46.498009, 46.478874, 61.953205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659538, 46.656258, 61.959763>,  <46.928753, 46.951900, 61.970688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.659538, 46.656258, 61.959763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223957, 0.168460, 0.959930,
		-0.704886, 0.652186, -0.278907,
		-0.673038, -0.739104, -0.027316,
		46.457626, 46.434528, 61.951569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220051, 47.094875, 62.178116>,  <46.928753, 46.951900, 61.970688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220051, 47.094875, 62.178116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341080, 46.732086, 62.295315>,  <46.413696, 46.514412, 62.365635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341080, 46.732086, 62.295315>,  <46.220051, 47.094875, 62.178116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.341080, 46.732086, 62.295315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143978, 0.260386, 0.954709,
		-0.942190, -0.331050, -0.051800,
		0.302568, -0.906976, 0.292997,
		46.431850, 46.459995, 62.383213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.685356, 46.673267, 62.440613>,  <46.220051, 47.094875, 62.178116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.685356, 46.673267, 62.440613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.040306, 46.629730, 62.619820>,  <46.253277, 46.603607, 62.727345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.040306, 46.629730, 62.619820>,  <45.685356, 46.673267, 62.440613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.040306, 46.629730, 62.619820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388804, 0.345570, 0.854056,
		-0.247782, -0.932059, 0.264330,
		0.887375, -0.108847, 0.448014,
		46.306519, 46.597076, 62.754223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777508, 46.224922, 61.751022>,  <45.685356, 46.673267, 62.440613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777508, 46.224922, 61.751022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694931, 46.156738, 61.365623>,  <45.645386, 46.115829, 61.134384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694931, 46.156738, 61.365623>,  <45.777508, 46.224922, 61.751022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694931, 46.156738, 61.365623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978088, 0.063036, 0.198417,
		0.026914, 0.983347, -0.179736,
		-0.206443, -0.170457, -0.963496,
		45.632999, 46.105602, 61.076576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227375, 46.732220, 61.622780>,  <45.777508, 46.224922, 61.751022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227375, 46.732220, 61.622780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.238926, 46.410858, 61.384888>,  <45.245857, 46.218040, 61.242153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.238926, 46.410858, 61.384888>,  <45.227375, 46.732220, 61.622780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.238926, 46.410858, 61.384888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983407, -0.129438, 0.127112,
		-0.179103, 0.581190, -0.793814,
		0.028874, -0.803408, -0.594729,
		45.247589, 46.169834, 61.206470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563335, 46.818558, 61.302235>,  <45.227375, 46.732220, 61.622780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563335, 46.818558, 61.302235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738083, 46.463181, 61.358536>,  <44.842930, 46.249954, 61.392315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738083, 46.463181, 61.358536>,  <44.563335, 46.818558, 61.302235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738083, 46.463181, 61.358536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849671, -0.356203, 0.388817,
		-0.295308, -0.289452, -0.910500,
		0.436867, -0.888446, 0.140749,
		44.869144, 46.196648, 61.400761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600754, 47.143261, 60.602161>,  <44.563335, 46.818558, 61.302235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600754, 47.143261, 60.602161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798012, 47.436302, 60.789822>,  <44.916367, 47.612125, 60.902416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798012, 47.436302, 60.789822>,  <44.600754, 47.143261, 60.602161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798012, 47.436302, 60.789822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533376, 0.171414, -0.828328,
		-0.687255, 0.658718, -0.306221,
		0.493144, 0.732603, 0.469149,
		44.945953, 47.656082, 60.930565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542000, 47.713608, 60.182995>,  <44.600754, 47.143261, 60.602161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542000, 47.713608, 60.182995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894890, 47.771233, 60.362289>,  <45.106625, 47.805809, 60.469868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894890, 47.771233, 60.362289>,  <44.542000, 47.713608, 60.182995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894890, 47.771233, 60.362289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429168, 0.145441, -0.891438,
		-0.193618, 0.978822, 0.066484,
		0.882229, 0.144065, 0.448239,
		45.159557, 47.814453, 60.496761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842403, 48.376991, 59.927715>,  <44.542000, 47.713608, 60.182995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842403, 48.376991, 59.927715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147415, 48.140793, 60.033440>,  <45.330421, 47.999073, 60.096874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147415, 48.140793, 60.033440>,  <44.842403, 48.376991, 59.927715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147415, 48.140793, 60.033440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475206, 0.233997, -0.848189,
		0.439007, 0.772371, 0.459038,
		0.762531, -0.590498, 0.264309,
		45.376175, 47.963642, 60.112732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495476, 48.787518, 59.878742>,  <44.842403, 48.376991, 59.927715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495476, 48.787518, 59.878742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551262, 48.396980, 59.812653>,  <45.584736, 48.162659, 59.772999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551262, 48.396980, 59.812653>,  <45.495476, 48.787518, 59.878742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551262, 48.396980, 59.812653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567866, 0.215548, -0.794397,
		0.811219, 0.016970, 0.584496,
		0.139468, -0.976346, -0.165220,
		45.593102, 48.104076, 59.763088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.178688, 48.767384, 59.781727>,  <45.495476, 48.787518, 59.878742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.178688, 48.767384, 59.781727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028839, 48.436508, 59.614197>,  <45.938931, 48.237984, 59.513680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028839, 48.436508, 59.614197>,  <46.178688, 48.767384, 59.781727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.028839, 48.436508, 59.614197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561013, 0.157411, -0.812703,
		0.738188, -0.539423, 0.405094,
		-0.374624, -0.827191, -0.418822,
		45.916451, 48.188351, 59.488548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660378, 48.456104, 59.371422>,  <46.178688, 48.767384, 59.781727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.660378, 48.456104, 59.371422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350952, 48.269325, 59.200043>,  <46.165298, 48.157257, 59.097218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350952, 48.269325, 59.200043>,  <46.660378, 48.456104, 59.371422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350952, 48.269325, 59.200043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474694, 0.020953, -0.879902,
		0.419842, -0.884039, 0.205447,
		-0.773562, -0.466944, -0.428445,
		46.118885, 48.129242, 59.071510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.001698, 47.978756, 58.862858>,  <46.660378, 48.456104, 59.371422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.001698, 47.978756, 58.862858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.613899, 48.011627, 58.770485>,  <46.381222, 48.031349, 58.715061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.613899, 48.011627, 58.770485>,  <47.001698, 47.978756, 58.862858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.613899, 48.011627, 58.770485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217714, -0.144173, -0.965305,
		-0.112613, -0.986135, 0.121885,
		-0.969494, 0.082170, -0.230932,
		46.323051, 48.036278, 58.701206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.911533, 47.384888, 58.403980>,  <47.001698, 47.978756, 58.862858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.911533, 47.384888, 58.403980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.607910, 47.643425, 58.372822>,  <46.425735, 47.798550, 58.354126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.607910, 47.643425, 58.372822>,  <46.911533, 47.384888, 58.403980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.607910, 47.643425, 58.372822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177717, 0.090616, -0.979901,
		-0.626297, -0.757644, -0.183650,
		-0.759058, 0.646346, -0.077894,
		46.380192, 47.837330, 58.349453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496719, 47.016449, 57.939041>,  <46.911533, 47.384888, 58.403980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.496719, 47.016449, 57.939041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.387352, 47.401192, 57.935776>,  <46.321732, 47.632038, 57.933815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.387352, 47.401192, 57.935776>,  <46.496719, 47.016449, 57.939041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.387352, 47.401192, 57.935776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028651, -0.016630, -0.999451,
		-0.961469, -0.273031, 0.032105,
		-0.273415, 0.961861, -0.008167,
		46.305328, 47.689751, 57.933327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.830898, 47.110695, 57.455227>,  <46.496719, 47.016449, 57.939041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.830898, 47.110695, 57.455227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005653, 47.467255, 57.503456>,  <46.110508, 47.681190, 57.532394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005653, 47.467255, 57.503456>,  <45.830898, 47.110695, 57.455227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005653, 47.467255, 57.503456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014479, 0.140999, -0.989904,
		-0.899399, 0.430733, 0.074507,
		0.436890, 0.891397, 0.120578,
		46.136719, 47.734673, 57.539631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501278, 47.534161, 57.091831>,  <45.830898, 47.110695, 57.455227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501278, 47.534161, 57.091831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839752, 47.739227, 57.150009>,  <46.042835, 47.862267, 57.184917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839752, 47.739227, 57.150009>,  <45.501278, 47.534161, 57.091831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.839752, 47.739227, 57.150009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125553, 0.073455, -0.989364,
		-0.517894, 0.855442, -0.002210,
		0.846181, 0.512663, 0.145445,
		46.093605, 47.893024, 57.193642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.485489, 48.071384, 56.600960>,  <45.501278, 47.534161, 57.091831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.485489, 48.071384, 56.600960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871414, 48.042213, 56.702003>,  <46.102970, 48.024712, 56.762630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871414, 48.042213, 56.702003>,  <45.485489, 48.071384, 56.600960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871414, 48.042213, 56.702003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259642, 0.112861, -0.959087,
		0.041431, 0.990931, 0.127824,
		0.964816, -0.072924, 0.252611,
		46.160858, 48.020336, 56.777786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857010, 48.649784, 56.255596>,  <45.485489, 48.071384, 56.600960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857010, 48.649784, 56.255596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.125137, 48.367386, 56.347023>,  <46.286015, 48.197945, 56.401878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.125137, 48.367386, 56.347023>,  <45.857010, 48.649784, 56.255596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.125137, 48.367386, 56.347023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166137, -0.157420, -0.973457,
		0.723239, 0.690497, 0.011772,
		0.670316, -0.705997, 0.228569,
		46.326233, 48.155586, 56.415592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455418, 48.868813, 55.806644>,  <45.857010, 48.649784, 56.255596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455418, 48.868813, 55.806644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520950, 48.486618, 55.904793>,  <46.560268, 48.257301, 55.963680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520950, 48.486618, 55.904793>,  <46.455418, 48.868813, 55.806644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.520950, 48.486618, 55.904793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318236, -0.184245, -0.929935,
		0.933748, 0.230438, 0.273885,
		0.163830, -0.955485, 0.245372,
		46.570099, 48.199974, 55.978405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.034721, 48.719112, 55.426529>,  <46.455418, 48.868813, 55.806644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.034721, 48.719112, 55.426529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.872826, 48.363800, 55.513371>,  <46.775688, 48.150612, 55.565475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.872826, 48.363800, 55.513371>,  <47.034721, 48.719112, 55.426529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.872826, 48.363800, 55.513371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409380, -0.388316, -0.825602,
		0.817676, -0.245274, 0.520813,
		-0.404739, -0.888285, 0.217106,
		46.751404, 48.097313, 55.578503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.506081, 48.175491, 55.250751>,  <47.034721, 48.719112, 55.426529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.506081, 48.175491, 55.250751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161705, 47.972267, 55.261086>,  <46.955082, 47.850334, 55.267288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161705, 47.972267, 55.261086>,  <47.506081, 48.175491, 55.250751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.161705, 47.972267, 55.261086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262400, -0.487016, -0.833044,
		0.435817, -0.710417, 0.552604,
		-0.860936, -0.508057, 0.025837,
		46.903423, 47.819851, 55.268837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.594913, 47.518322, 55.498840>,  <47.506081, 48.175491, 55.250751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.594913, 47.518322, 55.498840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.258690, 47.517509, 55.282154>,  <47.056957, 47.517021, 55.152142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.258690, 47.517509, 55.282154>,  <47.594913, 47.518322, 55.498840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.258690, 47.517509, 55.282154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346699, -0.770391, -0.535068,
		-0.416247, -0.637569, 0.648262,
		-0.840558, -0.002032, -0.541718,
		47.006523, 47.516899, 55.119640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.419544, 46.840164, 55.391834>,  <47.594913, 47.518322, 55.498840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.419544, 46.840164, 55.391834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.263947, 47.048248, 55.087715>,  <47.170586, 47.173100, 54.905243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.263947, 47.048248, 55.087715>,  <47.419544, 46.840164, 55.391834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.263947, 47.048248, 55.087715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453279, -0.610410, -0.649567,
		-0.802009, -0.597309, 0.001646,
		-0.388997, 0.520213, -0.760302,
		47.147247, 47.204311, 54.859623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306843, 46.338669, 54.858318>,  <47.419544, 46.840164, 55.391834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306843, 46.338669, 54.858318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268219, 46.685501, 54.662830>,  <47.245045, 46.893600, 54.545536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268219, 46.685501, 54.662830>,  <47.306843, 46.338669, 54.858318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.268219, 46.685501, 54.662830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514098, -0.377002, -0.770437,
		-0.852279, -0.325643, -0.409361,
		-0.096557, 0.867079, -0.488723,
		47.239250, 46.945625, 54.516212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.199707, 46.056992, 54.159157>,  <47.306843, 46.338669, 54.858318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.199707, 46.056992, 54.159157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343567, 46.429665, 54.138657>,  <47.429882, 46.653267, 54.126354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343567, 46.429665, 54.138657>,  <47.199707, 46.056992, 54.159157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.343567, 46.429665, 54.138657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629493, -0.282809, -0.723711,
		-0.688762, 0.228016, -0.688197,
		0.359646, 0.931680, -0.051254,
		47.451462, 46.709167, 54.123280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.207359, 46.209400, 53.399906>,  <47.199707, 46.056992, 54.159157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.207359, 46.209400, 53.399906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.453674, 46.467072, 53.581387>,  <47.601463, 46.621674, 53.690273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.453674, 46.467072, 53.581387>,  <47.207359, 46.209400, 53.399906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.453674, 46.467072, 53.581387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626879, -0.051726, -0.777398,
		-0.477316, 0.763124, -0.435674,
		0.615786, 0.644179, 0.453696,
		47.638409, 46.660324, 53.717495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.354725, 46.623726, 52.823895>,  <47.207359, 46.209400, 53.399906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.354725, 46.623726, 52.823895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641090, 46.632996, 53.103016>,  <47.812908, 46.638557, 53.270489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641090, 46.632996, 53.103016>,  <47.354725, 46.623726, 52.823895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.641090, 46.632996, 53.103016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697169, -0.077751, -0.712678,
		0.037738, 0.996703, -0.071820,
		0.715913, 0.023176, 0.697805,
		47.855865, 46.639950, 53.312359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.932400, 46.769527, 52.398453>,  <47.354725, 46.623726, 52.823895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.932400, 46.769527, 52.398453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.103745, 46.713287, 52.755493>,  <48.206551, 46.679543, 52.969719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.103745, 46.713287, 52.755493>,  <47.932400, 46.769527, 52.398453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.103745, 46.713287, 52.755493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888618, -0.113635, -0.444348,
		0.163908, 0.983523, 0.076267,
		0.428360, -0.140604, 0.892602,
		48.232254, 46.671104, 53.023273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.448444, 47.337334, 52.485149>,  <47.932400, 46.769527, 52.398453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.448444, 47.337334, 52.485149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.539215, 47.003220, 52.685471>,  <48.593678, 46.802750, 52.805664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.539215, 47.003220, 52.685471>,  <48.448444, 47.337334, 52.485149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.539215, 47.003220, 52.685471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736238, -0.189486, -0.649653,
		0.637540, 0.516136, 0.571968,
		0.226929, -0.835284, 0.500803,
		48.607292, 46.752636, 52.835712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.186630, 47.295647, 52.633904>,  <48.448444, 47.337334, 52.485149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.186630, 47.295647, 52.633904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.068375, 46.913849, 52.649590>,  <48.997421, 46.684769, 52.659000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.068375, 46.913849, 52.649590>,  <49.186630, 47.295647, 52.633904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.068375, 46.913849, 52.649590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781055, -0.265143, -0.565377,
		0.550047, -0.136519, 0.823900,
		-0.295636, -0.954495, 0.039212,
		48.979683, 46.627499, 52.661354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.910511, 46.927864, 52.687443>,  <49.186630, 47.295647, 52.633904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.910511, 46.927864, 52.687443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.650902, 46.635567, 52.602791>,  <49.495136, 46.460190, 52.551998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.650902, 46.635567, 52.602791>,  <49.910511, 46.927864, 52.687443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.650902, 46.635567, 52.602791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621845, -0.349313, -0.700920,
		0.438265, -0.586516, 0.681120,
		-0.649024, -0.730739, -0.211630,
		49.456196, 46.416344, 52.539303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.274731, 46.259022, 52.592716>,  <49.910511, 46.927864, 52.687443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.274731, 46.259022, 52.592716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.925194, 46.211769, 52.404060>,  <49.715469, 46.183418, 52.290867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.925194, 46.211769, 52.404060>,  <50.274731, 46.259022, 52.592716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.925194, 46.211769, 52.404060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481685, -0.342289, -0.806733,
		-0.066135, -0.932139, 0.356010,
		-0.873845, -0.118131, -0.471635,
		49.663040, 46.176331, 52.262569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.258965, 45.576393, 52.311794>,  <50.274731, 46.259022, 52.592716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.258965, 45.576393, 52.311794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.005478, 45.796783, 52.094601>,  <49.853386, 45.929016, 51.964283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.005478, 45.796783, 52.094601>,  <50.258965, 45.576393, 52.311794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.005478, 45.796783, 52.094601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430652, -0.331814, -0.839308,
		-0.642609, -0.765718, -0.027005,
		-0.633713, 0.550977, -0.542985,
		49.815365, 45.962078, 51.931705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.218884, 45.222336, 51.620796>,  <50.258965, 45.576393, 52.311794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.218884, 45.222336, 51.620796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.042091, 45.569939, 51.531818>,  <49.936016, 45.778500, 51.478432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.042091, 45.569939, 51.531818>,  <50.218884, 45.222336, 51.620796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.042091, 45.569939, 51.531818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348322, -0.062259, -0.935305,
		-0.826634, -0.490871, -0.275176,
		-0.441982, 0.869004, -0.222447,
		49.909496, 45.830639, 51.465084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.772697, 44.959480, 51.081474>,  <50.218884, 45.222336, 51.620796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.772697, 44.959480, 51.081474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.807594, 45.356987, 51.053719>,  <49.828533, 45.595490, 51.037064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.807594, 45.356987, 51.053719>,  <49.772697, 44.959480, 51.081474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.807594, 45.356987, 51.053719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264190, -0.090243, -0.960239,
		-0.960517, 0.065440, -0.270416,
		0.087241, 0.993767, -0.069392,
		49.833767, 45.655117, 51.032902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.362717, 45.104202, 50.542091>,  <49.772697, 44.959480, 51.081474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.362717, 45.104202, 50.542091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.625290, 45.402100, 50.590179>,  <49.782833, 45.580837, 50.619034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.625290, 45.402100, 50.590179>,  <49.362717, 45.104202, 50.542091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.625290, 45.402100, 50.590179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388557, -0.197189, -0.900078,
		-0.646617, 0.637558, -0.418816,
		0.656438, 0.744739, 0.120221,
		49.822220, 45.625523, 50.626247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.302402, 45.574646, 49.992352>,  <49.362717, 45.104202, 50.542091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.302402, 45.574646, 49.992352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.668030, 45.627647, 50.145676>,  <49.887405, 45.659447, 50.237671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.668030, 45.627647, 50.145676>,  <49.302402, 45.574646, 49.992352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.668030, 45.627647, 50.145676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397655, -0.107034, -0.911271,
		-0.079715, 0.985387, -0.150525,
		0.914066, 0.132499, 0.383312,
		49.942249, 45.667397, 50.260670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.578823, 45.936836, 49.449875>,  <49.302402, 45.574646, 49.992352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.578823, 45.936836, 49.449875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.882957, 45.811188, 49.677280>,  <50.065437, 45.735798, 49.813725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.882957, 45.811188, 49.677280>,  <49.578823, 45.936836, 49.449875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.882957, 45.811188, 49.677280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532061, -0.200824, -0.822545,
		0.372552, 0.927899, 0.014438,
		0.760340, -0.314122, 0.568516,
		50.111061, 45.716949, 49.847836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.134472, 46.291664, 49.053162>,  <49.578823, 45.936836, 49.449875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.134472, 46.291664, 49.053162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.268562, 45.992386, 49.282185>,  <50.349018, 45.812817, 49.419598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.268562, 45.992386, 49.282185>,  <50.134472, 46.291664, 49.053162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.268562, 45.992386, 49.282185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438544, -0.413953, -0.797698,
		0.833848, 0.518501, 0.189351,
		0.335225, -0.748198, 0.572560,
		50.369129, 45.767925, 49.453953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.822330, 46.410393, 49.088058>,  <50.134472, 46.291664, 49.053162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.822330, 46.410393, 49.088058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.737907, 46.029541, 49.176521>,  <50.687252, 45.801029, 49.229599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.737907, 46.029541, 49.176521>,  <50.822330, 46.410393, 49.088058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.737907, 46.029541, 49.176521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558440, -0.303148, -0.772170,
		0.802246, -0.039473, 0.595688,
		-0.211061, -0.952126, 0.221156,
		50.674587, 45.743904, 49.242867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.454136, 46.038692, 48.912029>,  <50.822330, 46.410393, 49.088058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.454136, 46.038692, 48.912029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.179451, 45.752220, 48.961864>,  <51.014641, 45.580338, 48.991764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.179451, 45.752220, 48.961864>,  <51.454136, 46.038692, 48.912029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.179451, 45.752220, 48.961864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415187, -0.527093, -0.741480,
		0.596699, -0.457454, 0.659307,
		-0.686709, -0.716176, 0.124586,
		50.973438, 45.537369, 48.999241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.795277, 45.399780, 48.934158>,  <51.454136, 46.038692, 48.912029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.795277, 45.399780, 48.934158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.423264, 45.336067, 48.801697>,  <51.200054, 45.297840, 48.722218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.423264, 45.336067, 48.801697>,  <51.795277, 45.399780, 48.934158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.423264, 45.336067, 48.801697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364841, -0.507944, -0.780310,
		-0.043916, -0.846534, 0.530520,
		-0.930034, -0.159287, -0.331157,
		51.144253, 45.288280, 48.702351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.814163, 44.782650, 48.638737>,  <51.795277, 45.399780, 48.934158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.814163, 44.782650, 48.638737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.467613, 44.916077, 48.490078>,  <51.259682, 44.996132, 48.400883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.467613, 44.916077, 48.490078>,  <51.814163, 44.782650, 48.638737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.467613, 44.916077, 48.490078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234341, -0.385620, -0.892402,
		-0.440995, -0.860248, 0.255923,
		-0.866376, 0.333572, -0.371648,
		51.207699, 45.016148, 48.378582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.352234, 44.215019, 48.330658>,  <51.814163, 44.782650, 48.638737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.352234, 44.215019, 48.330658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.252487, 44.558815, 48.152176>,  <51.192638, 44.765091, 48.045086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.252487, 44.558815, 48.152176>,  <51.352234, 44.215019, 48.330658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.252487, 44.558815, 48.152176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227962, -0.395719, -0.889629,
		-0.941196, -0.323561, -0.097252,
		-0.249365, 0.859485, -0.446209,
		51.177677, 44.816662, 48.018314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.068703, 44.047325, 47.605999>,  <51.352234, 44.215019, 48.330658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.068703, 44.047325, 47.605999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.160789, 44.435242, 47.573734>,  <51.216042, 44.667992, 47.554375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.160789, 44.435242, 47.573734>,  <51.068703, 44.047325, 47.605999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.160789, 44.435242, 47.573734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191537, -0.126427, -0.973309,
		-0.954104, 0.208620, -0.214856,
		0.230215, 0.969791, -0.080666,
		51.229855, 44.726177, 47.549534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.784019, 44.314430, 46.912228>,  <51.068703, 44.047325, 47.605999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.784019, 44.314430, 46.912228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.043205, 44.602859, 47.010368>,  <51.198715, 44.775917, 47.069252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.043205, 44.602859, 47.010368>,  <50.784019, 44.314430, 46.912228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.043205, 44.602859, 47.010368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358582, -0.004601, -0.933487,
		-0.671984, 0.692843, -0.261546,
		0.647963, 0.721074, 0.245349,
		51.237595, 44.819183, 47.083973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.718315, 44.841637, 46.318058>,  <50.784019, 44.314430, 46.912228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.718315, 44.841637, 46.318058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.054337, 44.905800, 46.525356>,  <51.255951, 44.944298, 46.649734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.054337, 44.905800, 46.525356>,  <50.718315, 44.841637, 46.318058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.054337, 44.905800, 46.525356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519041, 0.040222, -0.853803,
		-0.157802, 0.986231, -0.049470,
		0.840057, 0.160409, 0.518241,
		51.306355, 44.953922, 46.680828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.204781, 45.249382, 46.163845>,  <50.718315, 44.841637, 46.318058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.204781, 45.249382, 46.163845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.914146, 45.423286, 45.951031>,  <49.739765, 45.527630, 45.823341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.914146, 45.423286, 45.951031>,  <50.204781, 45.249382, 46.163845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.914146, 45.423286, 45.951031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366058, 0.410354, 0.835231,
		0.581446, 0.801621, -0.139010,
		-0.726582, 0.434756, -0.532039,
		49.696171, 45.553715, 45.791420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.194462, 46.005531, 46.350227>,  <50.204781, 45.249382, 46.163845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.194462, 46.005531, 46.350227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.840042, 45.889618, 46.205482>,  <49.627392, 45.820068, 46.118637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.840042, 45.889618, 46.205482>,  <50.194462, 46.005531, 46.350227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.840042, 45.889618, 46.205482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458386, 0.430964, 0.777273,
		-0.069292, 0.854573, -0.514688,
		-0.886048, -0.289784, -0.361862,
		49.574226, 45.802681, 46.096924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.734158, 46.551064, 46.555622>,  <50.194462, 46.005531, 46.350227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.734158, 46.551064, 46.555622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.482643, 46.281929, 46.399712>,  <49.331734, 46.120449, 46.306164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.482643, 46.281929, 46.399712>,  <49.734158, 46.551064, 46.555622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.482643, 46.281929, 46.399712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727052, 0.330975, 0.601540,
		-0.275732, 0.661625, -0.697298,
		-0.628782, -0.672836, -0.389776,
		49.294010, 46.080078, 46.282780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.096241, 46.907394, 46.355598>,  <49.734158, 46.551064, 46.555622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.096241, 46.907394, 46.355598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.992523, 46.525261, 46.412308>,  <48.930294, 46.295979, 46.446335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.992523, 46.525261, 46.412308>,  <49.096241, 46.907394, 46.355598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.992523, 46.525261, 46.412308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766912, 0.292891, 0.571018,
		-0.587038, 0.039333, -0.808603,
		-0.259293, -0.955337, 0.141774,
		48.914734, 46.238659, 46.454842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.372490, 46.895576, 46.225681>,  <49.096241, 46.907394, 46.355598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.372490, 46.895576, 46.225681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.434265, 46.571907, 46.452446>,  <48.471329, 46.377705, 46.588505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.434265, 46.571907, 46.452446>,  <48.372490, 46.895576, 46.225681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.434265, 46.571907, 46.452446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642415, 0.353702, 0.679851,
		-0.750634, -0.469188, -0.465200,
		0.154436, -0.809171, 0.566914,
		48.480595, 46.329155, 46.622520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.721359, 46.624611, 46.356300>,  <48.372490, 46.895576, 46.225681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.721359, 46.624611, 46.356300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.959106, 46.481133, 46.644207>,  <48.101753, 46.395046, 46.816952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.959106, 46.481133, 46.644207>,  <47.721359, 46.624611, 46.356300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.959106, 46.481133, 46.644207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727574, 0.141422, 0.671295,
		-0.342582, -0.922679, -0.176922,
		0.594369, -0.358697, 0.719765,
		48.137417, 46.373524, 46.860138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.348083, 46.065372, 46.690998>,  <47.721359, 46.624611, 46.356300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.348083, 46.065372, 46.690998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618828, 46.177856, 46.963112>,  <47.781273, 46.245346, 47.126381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618828, 46.177856, 46.963112>,  <47.348083, 46.065372, 46.690998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.618828, 46.177856, 46.963112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719357, 0.056613, 0.692330,
		0.156174, -0.957976, 0.240607,
		0.676857, 0.281206, 0.680285,
		47.821884, 46.262218, 47.167198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.165890, 45.701698, 47.345005>,  <47.348083, 46.065372, 46.690998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.165890, 45.701698, 47.345005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.416153, 45.979851, 47.486423>,  <47.566311, 46.146744, 47.571274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.416153, 45.979851, 47.486423>,  <47.165890, 45.701698, 47.345005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.416153, 45.979851, 47.486423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571314, 0.099849, 0.814636,
		0.531183, -0.711668, 0.459754,
		0.625656, 0.695384, 0.353547,
		47.603851, 46.188465, 47.592487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.194546, 45.593380, 48.146557>,  <47.165890, 45.701698, 47.345005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.194546, 45.593380, 48.146557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296890, 45.972183, 48.068882>,  <47.358299, 46.199467, 48.022278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296890, 45.972183, 48.068882>,  <47.194546, 45.593380, 48.146557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.296890, 45.972183, 48.068882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473523, 0.297902, 0.828873,
		0.842798, -0.120128, 0.524653,
		0.255865, 0.947008, -0.194188,
		47.373650, 46.256287, 48.010624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.464741, 45.809780, 48.743454>,  <47.194546, 45.593380, 48.146557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.464741, 45.809780, 48.743454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.357002, 46.139008, 48.543453>,  <47.292358, 46.336544, 48.423450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.357002, 46.139008, 48.543453>,  <47.464741, 45.809780, 48.743454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.357002, 46.139008, 48.543453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396972, 0.378143, 0.836314,
		0.877420, 0.423746, 0.224885,
		-0.269346, 0.823072, -0.500005,
		47.276199, 46.385929, 48.393452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.884846, 46.339149, 49.019386>,  <47.464741, 45.809780, 48.743454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.884846, 46.339149, 49.019386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552780, 46.495659, 48.860527>,  <47.353542, 46.589565, 48.765209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552780, 46.495659, 48.860527>,  <47.884846, 46.339149, 49.019386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.552780, 46.495659, 48.860527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225143, 0.416404, 0.880862,
		0.510037, 0.820676, -0.257591,
		-0.830164, 0.391277, -0.397151,
		47.303730, 46.613041, 48.741383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.828751, 46.980999, 49.292152>,  <47.884846, 46.339149, 49.019386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.828751, 46.980999, 49.292152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.456749, 46.932121, 49.153496>,  <47.233547, 46.902794, 49.070301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.456749, 46.932121, 49.153496>,  <47.828751, 46.980999, 49.292152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.456749, 46.932121, 49.153496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367503, 0.323591, 0.871912,
		0.005625, 0.938273, -0.345849,
		-0.930005, -0.122196, -0.346639,
		47.177746, 46.895462, 49.049503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.461487, 47.511944, 49.534401>,  <47.828751, 46.980999, 49.292152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.461487, 47.511944, 49.534401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.160500, 47.258354, 49.462982>,  <46.979908, 47.106201, 49.420132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.160500, 47.258354, 49.462982>,  <47.461487, 47.511944, 49.534401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.160500, 47.258354, 49.462982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392312, 0.213674, 0.894670,
		-0.529046, 0.743251, -0.409497,
		-0.752464, -0.633972, -0.178543,
		46.934761, 47.068161, 49.409420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.878086, 47.923019, 49.740364>,  <47.461487, 47.511944, 49.534401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.878086, 47.923019, 49.740364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753548, 47.544067, 49.710617>,  <46.678825, 47.316696, 49.692768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.753548, 47.544067, 49.710617>,  <46.878086, 47.923019, 49.740364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.753548, 47.544067, 49.710617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651501, 0.155822, 0.742473,
		-0.691817, 0.279617, -0.665735,
		-0.311344, -0.947383, -0.074370,
		46.660145, 47.259853, 49.688305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.155655, 47.833923, 49.715054>,  <46.878086, 47.923019, 49.740364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.155655, 47.833923, 49.715054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.269447, 47.477989, 49.857750>,  <46.337723, 47.264427, 49.943367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.269447, 47.477989, 49.857750>,  <46.155655, 47.833923, 49.715054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.269447, 47.477989, 49.857750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551453, 0.152502, 0.820148,
		-0.784200, -0.430043, -0.447319,
		0.284482, -0.889835, 0.356740,
		46.354794, 47.211040, 49.964771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569069, 47.511875, 49.989243>,  <46.155655, 47.833923, 49.715054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569069, 47.511875, 49.989243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862633, 47.312599, 50.173927>,  <46.038773, 47.193031, 50.284740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862633, 47.312599, 50.173927>,  <45.569069, 47.511875, 49.989243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.862633, 47.312599, 50.173927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562988, -0.065844, 0.823838,
		-0.380031, -0.864561, -0.328801,
		0.733908, -0.498195, 0.461714,
		46.082806, 47.163139, 50.312443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223507, 46.940800, 50.315018>,  <45.569069, 47.511875, 49.989243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223507, 46.940800, 50.315018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581322, 47.000534, 50.483540>,  <45.796009, 47.036373, 50.584652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581322, 47.000534, 50.483540>,  <45.223507, 46.940800, 50.315018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581322, 47.000534, 50.483540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424236, -0.013261, 0.905454,
		0.140803, -0.988698, 0.051491,
		0.894538, 0.149335, 0.421308,
		45.849682, 47.045334, 50.609932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235687, 46.549202, 50.842033>,  <45.223507, 46.940800, 50.315018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235687, 46.549202, 50.842033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523689, 46.806747, 50.945595>,  <45.696491, 46.961277, 51.007732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523689, 46.806747, 50.945595>,  <45.235687, 46.549202, 50.842033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523689, 46.806747, 50.945595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333669, -0.005929, 0.942672,
		0.608489, -0.765116, 0.210569,
		0.720005, 0.643866, 0.258904,
		45.739689, 46.999908, 51.023266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.617760, 46.359253, 51.415798>,  <45.235687, 46.549202, 50.842033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.617760, 46.359253, 51.415798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664886, 46.756439, 51.411057>,  <45.693161, 46.994751, 51.408211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664886, 46.756439, 51.411057>,  <45.617760, 46.359253, 51.415798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664886, 46.756439, 51.411057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276943, 0.044315, 0.959864,
		0.953636, -0.109805, 0.280216,
		0.117816, 0.992965, -0.011850,
		45.700230, 47.054329, 51.407501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.988583, 46.524471, 52.024883>,  <45.617760, 46.359253, 51.415798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.988583, 46.524471, 52.024883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855301, 46.885498, 51.915817>,  <45.775333, 47.102116, 51.850380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.855301, 46.885498, 51.915817>,  <45.988583, 46.524471, 52.024883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.855301, 46.885498, 51.915817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303921, 0.170935, 0.937237,
		0.892529, 0.395158, 0.217354,
		-0.333203, 0.902569, -0.272662,
		45.755341, 47.156269, 51.834019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182961, 46.947308, 52.567905>,  <45.988583, 46.524471, 52.024883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182961, 46.947308, 52.567905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889572, 47.141258, 52.377357>,  <45.713539, 47.257629, 52.263031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889572, 47.141258, 52.377357>,  <46.182961, 46.947308, 52.567905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889572, 47.141258, 52.377357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444103, 0.188718, 0.875876,
		0.514587, 0.853982, 0.076915,
		-0.733466, 0.484872, -0.476368,
		45.669533, 47.286720, 52.234447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.125748, 47.557182, 52.943626>,  <46.182961, 46.947308, 52.567905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.125748, 47.557182, 52.943626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780434, 47.508720, 52.747643>,  <45.573246, 47.479645, 52.630051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780434, 47.508720, 52.747643>,  <46.125748, 47.557182, 52.943626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.780434, 47.508720, 52.747643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504298, 0.246797, 0.827511,
		0.020664, 0.961464, -0.274153,
		-0.863282, -0.121155, -0.489964,
		45.521450, 47.472374, 52.600655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777977, 48.132465, 53.082203>,  <46.125748, 47.557182, 52.943626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777977, 48.132465, 53.082203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520340, 47.838852, 52.996094>,  <45.365757, 47.662685, 52.944427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520340, 47.838852, 52.996094>,  <45.777977, 48.132465, 53.082203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520340, 47.838852, 52.996094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598902, 0.308824, 0.738880,
		-0.475877, 0.604838, -0.638523,
		-0.644094, -0.734029, -0.215276,
		45.327110, 47.618645, 52.931511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.158329, 48.434299, 53.345776>,  <45.777977, 48.132465, 53.082203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.158329, 48.434299, 53.345776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.091526, 48.042770, 53.298409>,  <45.051445, 47.807854, 53.269989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.091526, 48.042770, 53.298409>,  <45.158329, 48.434299, 53.345776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.091526, 48.042770, 53.298409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515479, -0.015701, 0.856759,
		-0.840471, 0.204125, -0.501938,
		-0.167005, -0.978819, -0.118418,
		45.041424, 47.749126, 53.262882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423203, 48.299397, 53.410717>,  <45.158329, 48.434299, 53.345776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423203, 48.299397, 53.410717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606853, 47.955307, 53.499451>,  <44.717045, 47.748852, 53.552692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606853, 47.955307, 53.499451>,  <44.423203, 48.299397, 53.410717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606853, 47.955307, 53.499451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607516, -0.121835, 0.784908,
		-0.648173, -0.495140, -0.578540,
		0.459126, -0.860228, 0.221835,
		44.744591, 47.697239, 53.566002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904060, 47.971226, 53.686523>,  <44.423203, 48.299397, 53.410717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904060, 47.971226, 53.686523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205124, 47.727760, 53.786953>,  <44.385761, 47.581680, 53.847210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205124, 47.727760, 53.786953>,  <43.904060, 47.971226, 53.686523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205124, 47.727760, 53.786953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544389, -0.360805, 0.757271,
		-0.370358, -0.706628, -0.602920,
		0.752646, -0.608685, 0.251054,
		44.430920, 47.545162, 53.862274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611618, 47.289944, 53.701675>,  <43.904060, 47.971226, 53.686523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611618, 47.289944, 53.701675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929611, 47.334908, 53.940125>,  <44.120407, 47.361885, 54.083195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929611, 47.334908, 53.940125>,  <43.611618, 47.289944, 53.701675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929611, 47.334908, 53.940125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541982, -0.309807, 0.781201,
		0.272495, -0.944132, -0.185370,
		0.794986, 0.112406, 0.596124,
		44.168106, 47.368629, 54.118961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489605, 46.782436, 54.161499>,  <43.611618, 47.289944, 53.701675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489605, 46.782436, 54.161499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764641, 47.007736, 54.344788>,  <43.929661, 47.142918, 54.454762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764641, 47.007736, 54.344788>,  <43.489605, 46.782436, 54.161499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764641, 47.007736, 54.344788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423833, -0.201071, 0.883140,
		0.589563, -0.801449, 0.100469,
		0.687591, 0.563249, 0.458225,
		43.970917, 47.176712, 54.482254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783527, 46.366341, 54.774990>,  <43.489605, 46.782436, 54.161499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783527, 46.366341, 54.774990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843033, 46.755516, 54.845715>,  <43.878735, 46.989021, 54.888149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843033, 46.755516, 54.845715>,  <43.783527, 46.366341, 54.774990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843033, 46.755516, 54.845715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354147, -0.114521, 0.928151,
		0.923282, -0.200689, 0.327527,
		0.148761, 0.972938, 0.176809,
		43.887661, 47.047398, 54.898758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138752, 46.300827, 55.376873>,  <43.783527, 46.366341, 54.774990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138752, 46.300827, 55.376873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020981, 46.682922, 55.365314>,  <43.950317, 46.912178, 55.358379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020981, 46.682922, 55.365314>,  <44.138752, 46.300827, 55.376873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020981, 46.682922, 55.365314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216153, -0.037108, 0.975654,
		0.930908, 0.293506, 0.217403,
		-0.294428, 0.955237, -0.028898,
		43.932652, 46.969494, 55.356644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423935, 46.630199, 56.023258>,  <44.138752, 46.300827, 55.376873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423935, 46.630199, 56.023258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109245, 46.849655, 55.910080>,  <43.920429, 46.981327, 55.842175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109245, 46.849655, 55.910080>,  <44.423935, 46.630199, 56.023258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109245, 46.849655, 55.910080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355664, -0.028225, 0.934187,
		0.504544, 0.835583, 0.217337,
		-0.786726, 0.548638, -0.282946,
		43.873226, 47.014248, 55.825195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325047, 47.087276, 56.490826>,  <44.423935, 46.630199, 56.023258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325047, 47.087276, 56.490826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968090, 47.126953, 56.314735>,  <43.753918, 47.150761, 56.209080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968090, 47.126953, 56.314735>,  <44.325047, 47.087276, 56.490826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968090, 47.126953, 56.314735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435740, 0.064259, 0.897776,
		0.117339, 0.992992, -0.014123,
		-0.892392, 0.099191, -0.440226,
		43.700371, 47.156712, 56.182667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979786, 47.758110, 56.720322>,  <44.325047, 47.087276, 56.490826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979786, 47.758110, 56.720322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698559, 47.493912, 56.614922>,  <43.529823, 47.335392, 56.551682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698559, 47.493912, 56.614922>,  <43.979786, 47.758110, 56.720322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698559, 47.493912, 56.614922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440134, 0.113129, 0.890777,
		-0.558548, 0.742255, -0.370246,
		-0.703069, -0.660500, -0.263504,
		43.487637, 47.295761, 56.535870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265984, 47.984905, 56.972332>,  <43.979786, 47.758110, 56.720322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265984, 47.984905, 56.972332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183144, 47.599617, 56.903851>,  <43.133438, 47.368443, 56.862762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183144, 47.599617, 56.903851>,  <43.265984, 47.984905, 56.972332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183144, 47.599617, 56.903851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436849, -0.065535, 0.897144,
		-0.875370, 0.260589, -0.407211,
		-0.207099, -0.963223, -0.171205,
		43.121014, 47.310650, 56.852489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667053, 47.961544, 57.306152>,  <43.265984, 47.984905, 56.972332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667053, 47.961544, 57.306152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808220, 47.588531, 57.275578>,  <42.892921, 47.364723, 57.257233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808220, 47.588531, 57.275578>,  <42.667053, 47.961544, 57.306152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808220, 47.588531, 57.275578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346279, -0.206064, 0.915220,
		-0.869218, -0.296530, -0.395638,
		0.352918, -0.932527, -0.076433,
		42.914097, 47.308773, 57.252647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134251, 47.553036, 57.475815>,  <42.667053, 47.961544, 57.306152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134251, 47.553036, 57.475815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469284, 47.337128, 57.509521>,  <42.670303, 47.207584, 57.529747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469284, 47.337128, 57.509521>,  <42.134251, 47.553036, 57.475815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469284, 47.337128, 57.509521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252615, -0.245893, 0.935800,
		-0.484397, -0.805099, -0.342310,
		0.837583, -0.539771, 0.084270,
		42.720558, 47.175198, 57.534801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838623, 46.987019, 57.791416>,  <42.134251, 47.553036, 57.475815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838623, 46.987019, 57.791416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234413, 47.010246, 57.844421>,  <42.471889, 47.024185, 57.876225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234413, 47.010246, 57.844421>,  <41.838623, 46.987019, 57.791416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234413, 47.010246, 57.844421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125378, -0.112846, 0.985670,
		0.072196, -0.991914, -0.104377,
		0.989479, 0.058075, 0.132511,
		42.531258, 47.027668, 57.884174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997871, 46.488335, 58.221066>,  <41.838623, 46.987019, 57.791416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997871, 46.488335, 58.221066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297867, 46.751495, 58.248413>,  <42.477863, 46.909393, 58.264824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297867, 46.751495, 58.248413>,  <41.997871, 46.488335, 58.221066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297867, 46.751495, 58.248413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126409, 0.041101, 0.991126,
		0.649255, -0.751980, 0.113990,
		0.749992, 0.657903, 0.068372,
		42.522865, 46.948868, 58.268925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124138, 45.733791, 57.981743>,  <41.997871, 46.488335, 58.221066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124138, 45.733791, 57.981743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894817, 45.411606, 58.041805>,  <41.757225, 45.218292, 58.077843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894817, 45.411606, 58.041805>,  <42.124138, 45.733791, 57.981743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894817, 45.411606, 58.041805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110887, -0.257854, -0.959800,
		0.811806, -0.533604, 0.237144,
		-0.573302, -0.805467, 0.150158,
		41.722828, 45.169964, 58.086853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423138, 45.285255, 57.579281>,  <42.124138, 45.733791, 57.981743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423138, 45.285255, 57.579281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055546, 45.132607, 57.618980>,  <41.834991, 45.041019, 57.642799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055546, 45.132607, 57.618980>,  <42.423138, 45.285255, 57.579281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055546, 45.132607, 57.618980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023177, -0.198988, -0.979728,
		0.393632, -0.902646, 0.174020,
		-0.918976, -0.381619, 0.099249,
		41.779854, 45.018120, 57.648754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464539, 44.623356, 57.270866>,  <42.423138, 45.285255, 57.579281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464539, 44.623356, 57.270866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080582, 44.735313, 57.264427>,  <41.850208, 44.802490, 57.260563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080582, 44.735313, 57.264427>,  <42.464539, 44.623356, 57.270866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080582, 44.735313, 57.264427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039375, -0.191452, -0.980712,
		-0.277584, -0.940746, 0.194795,
		-0.959894, 0.279900, -0.016102,
		41.792614, 44.819283, 57.259598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175228, 44.147018, 56.920082>,  <42.464539, 44.623356, 57.270866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175228, 44.147018, 56.920082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923485, 44.456329, 56.889221>,  <41.772438, 44.641914, 56.870705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923485, 44.456329, 56.889221>,  <42.175228, 44.147018, 56.920082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923485, 44.456329, 56.889221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060109, -0.147421, -0.987246,
		-0.774788, -0.616692, 0.139262,
		-0.629357, 0.773277, -0.077152,
		41.734676, 44.688313, 56.866077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654552, 43.892593, 56.593342>,  <42.175228, 44.147018, 56.920082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654552, 43.892593, 56.593342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620514, 44.285049, 56.523930>,  <41.600090, 44.520523, 56.482281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620514, 44.285049, 56.523930>,  <41.654552, 43.892593, 56.593342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620514, 44.285049, 56.523930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231189, -0.188854, -0.954403,
		-0.969181, -0.041093, 0.242899,
		-0.085092, 0.981145, -0.173534,
		41.594986, 44.579391, 56.471870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154030, 44.031445, 56.059925>,  <41.654552, 43.892593, 56.593342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154030, 44.031445, 56.059925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322929, 44.393776, 56.046219>,  <41.424271, 44.611176, 56.037994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322929, 44.393776, 56.046219>,  <41.154030, 44.031445, 56.059925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322929, 44.393776, 56.046219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020212, -0.028386, -0.999393,
		-0.906252, 0.422690, 0.006322,
		0.422254, 0.905830, -0.034268,
		41.449604, 44.665524, 56.035938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781616, 44.348057, 55.510231>,  <41.154030, 44.031445, 56.059925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781616, 44.348057, 55.510231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109230, 44.573746, 55.551868>,  <41.305798, 44.709160, 55.576851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109230, 44.573746, 55.551868>,  <40.781616, 44.348057, 55.510231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109230, 44.573746, 55.551868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102477, 0.034657, -0.994131,
		-0.564521, 0.824893, -0.029435,
		0.819032, 0.564225, 0.104097,
		41.354939, 44.743011, 55.583099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767979, 44.899784, 54.941238>,  <40.781616, 44.348057, 55.510231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767979, 44.899784, 54.941238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151749, 44.904381, 55.053925>,  <41.382011, 44.907139, 55.121536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151749, 44.904381, 55.053925>,  <40.767979, 44.899784, 54.941238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151749, 44.904381, 55.053925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276306, 0.160599, -0.947556,
		-0.056129, 0.986953, 0.150909,
		0.959429, 0.011488, 0.281715,
		41.439579, 44.907825, 55.138439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116020, 45.571152, 54.707787>,  <40.767979, 44.899784, 54.941238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116020, 45.571152, 54.707787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407784, 45.304352, 54.768547>,  <41.582840, 45.144272, 54.805004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407784, 45.304352, 54.768547>,  <41.116020, 45.571152, 54.707787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407784, 45.304352, 54.768547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450671, 0.301486, -0.840239,
		0.514644, 0.681335, 0.520504,
		0.729409, -0.667000, 0.151900,
		41.626606, 45.104252, 54.814117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808491, 45.900978, 54.566437>,  <41.116020, 45.571152, 54.707787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808491, 45.900978, 54.566437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869102, 45.506378, 54.541603>,  <41.905468, 45.269619, 54.526703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869102, 45.506378, 54.541603>,  <41.808491, 45.900978, 54.566437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869102, 45.506378, 54.541603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444886, 0.124150, -0.886940,
		0.882676, 0.106776, 0.457693,
		0.151527, -0.986502, -0.062081,
		41.914562, 45.210426, 54.522980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510117, 45.837654, 54.179195>,  <41.808491, 45.900978, 54.566437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510117, 45.837654, 54.179195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354713, 45.469269, 54.167278>,  <42.261471, 45.248238, 54.160130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354713, 45.469269, 54.167278>,  <42.510117, 45.837654, 54.179195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354713, 45.469269, 54.167278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385203, -0.132958, -0.913203,
		0.837065, -0.366265, 0.406413,
		-0.388510, -0.920963, -0.029792,
		42.238159, 45.192982, 54.158340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095409, 45.324615, 54.128452>,  <42.510117, 45.837654, 54.179195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095409, 45.324615, 54.128452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760891, 45.178185, 53.965183>,  <42.560181, 45.090324, 53.867222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760891, 45.178185, 53.965183>,  <43.095409, 45.324615, 54.128452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760891, 45.178185, 53.965183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528856, -0.342178, -0.776676,
		0.144657, -0.865391, 0.479762,
		-0.836293, -0.366077, -0.408169,
		42.510002, 45.068363, 53.842731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345024, 44.699139, 53.678143>,  <43.095409, 45.324615, 54.128452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345024, 44.699139, 53.678143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975571, 44.792587, 53.556610>,  <42.753899, 44.848656, 53.483692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975571, 44.792587, 53.556610>,  <43.345024, 44.699139, 53.678143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975571, 44.792587, 53.556610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255450, -0.215740, -0.942444,
		-0.285729, -0.948090, 0.139585,
		-0.923636, 0.233627, -0.303833,
		42.698479, 44.862675, 53.465462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138626, 44.121826, 53.162689>,  <43.345024, 44.699139, 53.678143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138626, 44.121826, 53.162689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894051, 44.428810, 53.085594>,  <42.747307, 44.612999, 53.039337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894051, 44.428810, 53.085594>,  <43.138626, 44.121826, 53.162689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894051, 44.428810, 53.085594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327071, 0.023322, -0.944712,
		-0.720533, -0.640673, -0.265274,
		-0.611438, 0.767459, -0.192741,
		42.710621, 44.659046, 53.027771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871002, 43.952362, 52.553955>,  <43.138626, 44.121826, 53.162689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871002, 43.952362, 52.553955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847031, 44.350258, 52.587166>,  <42.832649, 44.588997, 52.607094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847031, 44.350258, 52.587166>,  <42.871002, 43.952362, 52.553955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847031, 44.350258, 52.587166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381171, 0.099682, -0.919115,
		-0.922560, -0.023434, -0.385141,
		-0.059930, 0.994743, 0.083030,
		42.829052, 44.648682, 52.612076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609962, 44.199310, 51.884956>,  <42.871002, 43.952362, 52.553955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609962, 44.199310, 51.884956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766224, 44.527565, 52.051781>,  <42.859982, 44.724518, 52.151875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766224, 44.527565, 52.051781>,  <42.609962, 44.199310, 51.884956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766224, 44.527565, 52.051781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205370, 0.363950, -0.908495,
		-0.897336, 0.440561, -0.026356,
		0.390655, 0.820638, 0.417063,
		42.883419, 44.773758, 52.176899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474102, 44.700897, 51.486572>,  <42.609962, 44.199310, 51.884956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474102, 44.700897, 51.486572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779198, 44.868324, 51.683762>,  <42.962257, 44.968781, 51.802074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779198, 44.868324, 51.683762>,  <42.474102, 44.700897, 51.486572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779198, 44.868324, 51.683762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418947, 0.260899, -0.869721,
		-0.492652, 0.869905, 0.023643,
		0.762743, 0.418565, 0.492977,
		43.008022, 44.993893, 51.831654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573139, 45.351444, 51.091652>,  <42.474102, 44.700897, 51.486572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573139, 45.351444, 51.091652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912403, 45.289230, 51.294209>,  <43.115963, 45.251900, 51.415741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912403, 45.289230, 51.294209>,  <42.573139, 45.351444, 51.091652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912403, 45.289230, 51.294209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519946, 0.061487, -0.851984,
		0.101379, 0.985915, 0.133022,
		0.848162, -0.155538, 0.506388,
		43.166851, 45.242569, 51.446125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085442, 45.947937, 51.006828>,  <42.573139, 45.351444, 51.091652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085442, 45.947937, 51.006828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322845, 45.645500, 51.117153>,  <43.465286, 45.464039, 51.183346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322845, 45.645500, 51.117153>,  <43.085442, 45.947937, 51.006828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322845, 45.645500, 51.117153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657163, 0.257429, -0.708426,
		0.464635, 0.601709, 0.649662,
		0.593508, -0.756093, 0.275810,
		43.500896, 45.418671, 51.199898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848106, 46.176094, 50.997601>,  <43.085442, 45.947937, 51.006828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848106, 46.176094, 50.997601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846863, 45.776680, 50.975967>,  <43.846119, 45.537033, 50.962990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846863, 45.776680, 50.975967>,  <43.848106, 46.176094, 50.997601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846863, 45.776680, 50.975967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722686, 0.035137, -0.690282,
		0.691169, -0.041228, 0.721516,
		-0.003107, -0.998532, -0.054081,
		43.845932, 45.477119, 50.959743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530941, 46.006039, 50.970974>,  <43.848106, 46.176094, 50.997601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530941, 46.006039, 50.970974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349995, 45.684326, 50.816833>,  <44.241425, 45.491299, 50.724350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349995, 45.684326, 50.816833>,  <44.530941, 46.006039, 50.970974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349995, 45.684326, 50.816833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688383, -0.040180, -0.724234,
		0.567002, -0.592893, 0.571827,
		-0.452369, -0.804278, -0.385355,
		44.214283, 45.443043, 50.701225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.111336, 45.594482, 50.774906>,  <44.530941, 46.006039, 50.970974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.111336, 45.594482, 50.774906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803024, 45.445000, 50.568512>,  <44.618038, 45.355309, 50.444675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803024, 45.445000, 50.568512>,  <45.111336, 45.594482, 50.774906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803024, 45.445000, 50.568512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552678, 0.010688, -0.833326,
		0.316939, -0.927483, 0.198305,
		-0.770777, -0.373712, -0.515987,
		44.571793, 45.332886, 50.413715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372746, 45.038715, 50.367302>,  <45.111336, 45.594482, 50.774906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372746, 45.038715, 50.367302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029095, 45.143692, 50.191563>,  <44.822903, 45.206676, 50.086121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029095, 45.143692, 50.191563>,  <45.372746, 45.038715, 50.367302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029095, 45.143692, 50.191563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442770, -0.049318, -0.895278,
		-0.256627, -0.963686, -0.073831,
		-0.859126, 0.262443, -0.439348,
		44.771358, 45.222424, 50.059757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374443, 44.655655, 49.769535>,  <45.372746, 45.038715, 50.367302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374443, 44.655655, 49.769535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.091930, 44.921028, 49.670719>,  <44.922424, 45.080254, 49.611427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.091930, 44.921028, 49.670719>,  <45.374443, 44.655655, 49.769535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.091930, 44.921028, 49.670719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350103, 0.024025, -0.936403,
		-0.615306, -0.747850, -0.249238,
		-0.706277, 0.663433, -0.247042,
		44.880047, 45.120056, 49.596607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.002148, 44.334942, 49.188877>,  <45.374443, 44.655655, 49.769535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.002148, 44.334942, 49.188877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902008, 44.720634, 49.154037>,  <44.841923, 44.952049, 49.133133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902008, 44.720634, 49.154037>,  <45.002148, 44.334942, 49.188877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902008, 44.720634, 49.154037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181592, -0.041602, -0.982494,
		-0.950973, -0.261785, -0.164681,
		-0.250351, 0.964229, -0.087100,
		44.826904, 45.009903, 49.127907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502659, 44.380157, 48.649136>,  <45.002148, 44.334942, 49.188877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502659, 44.380157, 48.649136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684357, 44.735977, 48.668564>,  <44.793377, 44.949471, 48.680222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684357, 44.735977, 48.668564>,  <44.502659, 44.380157, 48.649136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684357, 44.735977, 48.668564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108446, -0.001102, -0.994102,
		-0.884251, 0.456833, -0.096969,
		0.454245, 0.889552, 0.048568,
		44.820629, 45.002842, 48.683136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267868, 44.764942, 48.153065>,  <44.502659, 44.380157, 48.649136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267868, 44.764942, 48.153065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602768, 44.965775, 48.239716>,  <44.803707, 45.086273, 48.291706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602768, 44.965775, 48.239716>,  <44.267868, 44.764942, 48.153065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602768, 44.965775, 48.239716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105982, 0.239653, -0.965056,
		-0.536449, 0.830954, 0.147439,
		0.837252, 0.502078, 0.216628,
		44.853943, 45.116398, 48.304703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260895, 45.481789, 47.764519>,  <44.267868, 44.764942, 48.153065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260895, 45.481789, 47.764519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.648361, 45.430588, 47.849651>,  <44.880840, 45.399868, 47.900730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.648361, 45.430588, 47.849651>,  <44.260895, 45.481789, 47.764519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.648361, 45.430588, 47.849651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221221, 0.055185, -0.973661,
		0.112885, 0.990237, 0.081772,
		0.968668, -0.128001, 0.212832,
		44.938961, 45.392189, 47.913502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627796, 45.979332, 47.314545>,  <44.260895, 45.481789, 47.764519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627796, 45.979332, 47.314545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927605, 45.734901, 47.416367>,  <45.107491, 45.588242, 47.477459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927605, 45.734901, 47.416367>,  <44.627796, 45.979332, 47.314545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927605, 45.734901, 47.416367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319468, -0.002883, -0.947592,
		0.579790, 0.791563, 0.193060,
		0.749523, -0.611081, 0.254551,
		45.152462, 45.551579, 47.492733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259338, 46.233856, 46.951290>,  <44.627796, 45.979332, 47.314545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259338, 46.233856, 46.951290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369049, 45.862907, 47.053082>,  <45.434875, 45.640339, 47.114159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369049, 45.862907, 47.053082>,  <45.259338, 46.233856, 46.951290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369049, 45.862907, 47.053082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309234, -0.165521, -0.936471,
		0.910574, 0.335549, 0.241375,
		0.274279, -0.927367, 0.254482,
		45.451332, 45.584698, 47.129425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963142, 46.161823, 46.658718>,  <45.259338, 46.233856, 46.951290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963142, 46.161823, 46.658718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813110, 45.792847, 46.695412>,  <45.723091, 45.571461, 46.717426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813110, 45.792847, 46.695412>,  <45.963142, 46.161823, 46.658718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.813110, 45.792847, 46.695412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355569, -0.234556, -0.904740,
		0.856086, -0.306735, 0.415970,
		-0.375084, -0.922441, 0.091734,
		45.700584, 45.516113, 46.722931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455860, 45.750195, 46.370457>,  <45.963142, 46.161823, 46.658718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455860, 45.750195, 46.370457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128784, 45.521355, 46.344872>,  <45.932541, 45.384052, 46.329521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128784, 45.521355, 46.344872>,  <46.455860, 45.750195, 46.370457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.128784, 45.521355, 46.344872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322486, -0.363188, -0.874127,
		0.476855, -0.735390, 0.481467,
		-0.817687, -0.572098, -0.063965,
		45.883476, 45.349724, 46.325684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634346, 45.229794, 45.895710>,  <46.455860, 45.750195, 46.370457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634346, 45.229794, 45.895710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.245773, 45.146049, 45.940399>,  <46.012630, 45.095802, 45.967213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.245773, 45.146049, 45.940399>,  <46.634346, 45.229794, 45.895710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.245773, 45.146049, 45.940399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059954, -0.672056, -0.738069,
		0.229607, -0.710288, 0.665411,
		-0.971435, -0.209360, 0.111725,
		45.954342, 45.083241, 45.973915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.597584, 44.469582, 45.969742>,  <46.634346, 45.229794, 45.895710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.597584, 44.469582, 45.969742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.267075, 44.616524, 45.798943>,  <46.068768, 44.704689, 45.696465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.267075, 44.616524, 45.798943>,  <46.597584, 44.469582, 45.969742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.267075, 44.616524, 45.798943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090120, -0.662080, -0.743995,
		-0.556013, -0.653224, 0.513953,
		-0.826273, 0.367353, -0.426993,
		46.019192, 44.726730, 45.670845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206654, 43.860252, 45.769188>,  <46.597584, 44.469582, 45.969742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206654, 43.860252, 45.769188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080849, 44.175812, 45.558010>,  <46.005367, 44.365147, 45.431305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080849, 44.175812, 45.558010>,  <46.206654, 43.860252, 45.769188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.080849, 44.175812, 45.558010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009591, -0.558777, -0.829263,
		-0.949204, -0.255751, 0.183310,
		-0.314514, 0.788898, -0.527941,
		45.986496, 44.412479, 45.399628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638672, 43.551842, 45.409248>,  <46.206654, 43.860252, 45.769188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638672, 43.551842, 45.409248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736404, 43.876900, 45.197620>,  <45.795044, 44.071934, 45.070644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736404, 43.876900, 45.197620>,  <45.638672, 43.551842, 45.409248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736404, 43.876900, 45.197620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059208, -0.557087, -0.828340,
		-0.967882, 0.171065, -0.184229,
		0.244332, 0.812644, -0.529067,
		45.809704, 44.120693, 45.038898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243839, 43.560005, 44.783192>,  <45.638672, 43.551842, 45.409248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243839, 43.560005, 44.783192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535812, 43.821594, 44.703674>,  <45.710999, 43.978546, 44.655964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535812, 43.821594, 44.703674>,  <45.243839, 43.560005, 44.783192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535812, 43.821594, 44.703674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246888, -0.523459, -0.815498,
		-0.637370, 0.546182, -0.543548,
		0.729935, 0.653970, -0.198791,
		45.754791, 44.017784, 44.644035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110813, 43.866718, 44.237431>,  <45.243839, 43.560005, 44.783192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110813, 43.866718, 44.237431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505974, 43.923378, 44.262691>,  <45.743069, 43.957375, 44.277847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505974, 43.923378, 44.262691>,  <45.110813, 43.866718, 44.237431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.505974, 43.923378, 44.262691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124462, -0.481143, -0.867762,
		-0.092532, 0.865122, -0.492951,
		0.987900, 0.141649, 0.063154,
		45.802345, 43.965874, 44.281639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253735, 44.109787, 43.605019>,  <45.110813, 43.866718, 44.237431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253735, 44.109787, 43.605019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600487, 43.956413, 43.732452>,  <45.808537, 43.864388, 43.808914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600487, 43.956413, 43.732452>,  <45.253735, 44.109787, 43.605019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600487, 43.956413, 43.732452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144664, -0.418075, -0.896820,
		0.477068, 0.823522, -0.306950,
		0.866879, -0.383439, 0.318584,
		45.860550, 43.841381, 43.828026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623463, 44.121872, 42.965244>,  <45.253735, 44.109787, 43.605019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623463, 44.121872, 42.965244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824646, 43.880569, 43.212826>,  <45.945358, 43.735786, 43.361374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824646, 43.880569, 43.212826>,  <45.623463, 44.121872, 42.965244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824646, 43.880569, 43.212826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341610, -0.519071, -0.783498,
		0.793935, 0.605511, -0.054993,
		0.502961, -0.603260, 0.618957,
		45.975533, 43.699593, 43.398514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<45.725399, 41.788841, 53.865051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.102737, 41.791397, 53.997749>,  <46.329140, 41.792931, 54.077366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.102737, 41.791397, 53.997749>,  <45.725399, 41.788841, 53.865051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.102737, 41.791397, 53.997749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330918, 0.054941, -0.942059,
		-0.024244, 0.998469, 0.049715,
		0.943348, 0.006388, 0.331743,
		46.385742, 41.793312, 54.097271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.015324, 42.238014, 53.420876>,  <45.725399, 41.788841, 53.865051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.015324, 42.238014, 53.420876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.310341, 42.012154, 53.569038>,  <46.487350, 41.876637, 53.657936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.310341, 42.012154, 53.569038>,  <46.015324, 42.238014, 53.420876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.310341, 42.012154, 53.569038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345788, -0.155359, -0.925362,
		0.580049, 0.810577, 0.080664,
		0.737545, -0.564648, 0.370404,
		46.531605, 41.842758, 53.680161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.663284, 42.588287, 53.206245>,  <46.015324, 42.238014, 53.420876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.663284, 42.588287, 53.206245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.737923, 42.203339, 53.285267>,  <46.782707, 41.972370, 53.332680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.737923, 42.203339, 53.285267>,  <46.663284, 42.588287, 53.206245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.737923, 42.203339, 53.285267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200197, -0.159614, -0.966667,
		0.961822, 0.219927, 0.162880,
		0.186598, -0.962370, 0.197549,
		46.793903, 41.914627, 53.344532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.308144, 42.564857, 52.995960>,  <46.663284, 42.588287, 53.206245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.308144, 42.564857, 52.995960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.217674, 42.175774, 53.016644>,  <47.163391, 41.942322, 53.029053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.217674, 42.175774, 53.016644>,  <47.308144, 42.564857, 52.995960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.217674, 42.175774, 53.016644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361950, -0.133208, -0.922631,
		0.904343, -0.189959, 0.382202,
		-0.226174, -0.972713, 0.051710,
		47.149822, 41.883961, 53.032158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.918152, 42.137257, 52.830891>,  <47.308144, 42.564857, 52.995960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.918152, 42.137257, 52.830891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.618706, 41.882996, 52.755493>,  <47.439037, 41.730438, 52.710255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.618706, 41.882996, 52.755493>,  <47.918152, 42.137257, 52.830891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.618706, 41.882996, 52.755493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416823, -0.230128, -0.879375,
		0.515597, -0.736878, 0.437230,
		-0.748611, -0.635650, -0.188494,
		47.394123, 41.692299, 52.698944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.218765, 41.468658, 52.694942>,  <47.918152, 42.137257, 52.830891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.218765, 41.468658, 52.694942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.857849, 41.506760, 52.526752>,  <47.641300, 41.529621, 52.425838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.857849, 41.506760, 52.526752>,  <48.218765, 41.468658, 52.694942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.857849, 41.506760, 52.526752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404813, -0.148309, -0.902292,
		-0.148309, -0.984343, 0.095257,
		0.902292, -0.095257, 0.420470,
		47.587162, 41.535336, 52.400612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.367908, 41.053719, 52.156998>,  <48.218765, 41.468658, 52.694942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.367908, 41.053719, 52.156998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.022446, 41.223289, 52.047905>,  <47.815166, 41.325031, 51.982449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.022446, 41.223289, 52.047905>,  <48.367908, 41.053719, 52.156998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.022446, 41.223289, 52.047905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232063, -0.145915, -0.961694,
		-0.447484, -0.893865, 0.027643,
		-0.863658, 0.423927, -0.272727,
		47.763348, 41.350468, 51.966087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.147846, 40.640373, 51.610630>,  <48.367908, 41.053719, 52.156998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.147846, 40.640373, 51.610630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.926620, 40.970787, 51.567200>,  <47.793884, 41.169037, 51.541142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.926620, 40.970787, 51.567200>,  <48.147846, 40.640373, 51.610630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.926620, 40.970787, 51.567200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076260, -0.079579, -0.993907,
		-0.829641, -0.557975, -0.018981,
		-0.553065, 0.826033, -0.108573,
		47.760700, 41.218597, 51.534626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.738632, 40.587975, 51.012421>,  <48.147846, 40.640373, 51.610630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.738632, 40.587975, 51.012421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.717285, 40.981964, 51.078129>,  <47.704475, 41.218357, 51.117554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.717285, 40.981964, 51.078129>,  <47.738632, 40.587975, 51.012421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.717285, 40.981964, 51.078129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271361, 0.172617, -0.946872,
		-0.960997, -0.005961, -0.276495,
		-0.053372, 0.984971, 0.164267,
		47.701275, 41.277454, 51.127411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.350845, 40.813412, 50.427231>,  <47.738632, 40.587975, 51.012421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.350845, 40.813412, 50.427231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.537903, 41.131828, 50.580914>,  <47.650139, 41.322880, 50.673122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.537903, 41.131828, 50.580914>,  <47.350845, 40.813412, 50.427231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.537903, 41.131828, 50.580914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189073, 0.334521, -0.923226,
		-0.863457, 0.504388, 0.005927,
		0.467647, 0.796045, 0.384211,
		47.678196, 41.370644, 50.696178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.999546, 41.335548, 50.189827>,  <47.350845, 40.813412, 50.427231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.999546, 41.335548, 50.189827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.352669, 41.498589, 50.283218>,  <47.564541, 41.596413, 50.339252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.352669, 41.498589, 50.283218>,  <46.999546, 41.335548, 50.189827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.352669, 41.498589, 50.283218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022826, 0.459233, -0.888022,
		-0.469185, 0.789280, 0.396109,
		0.882805, 0.407605, 0.233481,
		47.617512, 41.620869, 50.353264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.889023, 42.093307, 50.030113>,  <46.999546, 41.335548, 50.189827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.889023, 42.093307, 50.030113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.275093, 41.989388, 50.042351>,  <47.506737, 41.927036, 50.049694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.275093, 41.989388, 50.042351>,  <46.889023, 42.093307, 50.030113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.275093, 41.989388, 50.042351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163812, 0.509055, -0.845002,
		0.203957, 0.820589, 0.533887,
		0.965177, -0.259801, 0.030597,
		47.564648, 41.911446, 50.051529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.242172, 42.672226, 49.853374>,  <46.889023, 42.093307, 50.030113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.242172, 42.672226, 49.853374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.503059, 42.383606, 49.760445>,  <47.659592, 42.210434, 49.704685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.503059, 42.383606, 49.760445>,  <47.242172, 42.672226, 49.853374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.503059, 42.383606, 49.760445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199745, 0.459242, -0.865563,
		0.731241, 0.518130, 0.443653,
		0.652218, -0.721552, -0.232323,
		47.698723, 42.167141, 49.690746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.684078, 43.026924, 49.501564>,  <47.242172, 42.672226, 49.853374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.684078, 43.026924, 49.501564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.805756, 42.657669, 49.407513>,  <47.878761, 42.436115, 49.351082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.805756, 42.657669, 49.407513>,  <47.684078, 43.026924, 49.501564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.805756, 42.657669, 49.407513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363785, 0.340689, -0.866944,
		0.880413, 0.178183, 0.439459,
		0.304193, -0.923137, -0.235126,
		47.897015, 42.380730, 49.336975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.355827, 43.117580, 49.096989>,  <47.684078, 43.026924, 49.501564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.355827, 43.117580, 49.096989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.190613, 42.761406, 49.020546>,  <48.091484, 42.547699, 48.974682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.190613, 42.761406, 49.020546>,  <48.355827, 43.117580, 49.096989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.190613, 42.761406, 49.020546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082606, 0.172343, -0.981567,
		0.906960, -0.421209, 0.002372,
		-0.413036, -0.890438, -0.191102,
		48.066704, 42.494274, 48.963215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.882187, 42.708626, 48.689682>,  <48.355827, 43.117580, 49.096989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.882187, 42.708626, 48.689682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.511635, 42.579529, 48.612061>,  <48.289303, 42.502071, 48.565487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.511635, 42.579529, 48.612061>,  <48.882187, 42.708626, 48.689682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.511635, 42.579529, 48.612061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175093, 0.087087, -0.980693,
		0.333415, -0.942470, -0.024165,
		-0.926378, -0.322747, -0.194056,
		48.233723, 42.482704, 48.553844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.028202, 42.353691, 48.051212>,  <48.882187, 42.708626, 48.689682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.028202, 42.353691, 48.051212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.633423, 42.397331, 48.098606>,  <48.396557, 42.423515, 48.127045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.633423, 42.397331, 48.098606>,  <49.028202, 42.353691, 48.051212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.633423, 42.397331, 48.098606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104624, 0.125056, -0.986618,
		-0.122461, -0.986133, -0.112009,
		-0.986944, 0.109103, 0.118488,
		48.337341, 42.430061, 48.134151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.718170, 41.981670, 47.491619>,  <49.028202, 42.353691, 48.051212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.718170, 41.981670, 47.491619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.424728, 42.216225, 47.629009>,  <48.248665, 42.356956, 47.711441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.424728, 42.216225, 47.629009>,  <48.718170, 41.981670, 47.491619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.424728, 42.216225, 47.629009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346687, 0.111774, -0.931297,
		-0.584495, -0.802280, 0.121296,
		-0.733603, 0.586390, 0.343471,
		48.204647, 42.392143, 47.732052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.226269, 41.718658, 47.094227>,  <48.718170, 41.981670, 47.491619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.226269, 41.718658, 47.094227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.121597, 42.085098, 47.215736>,  <48.058796, 42.304962, 47.288643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.121597, 42.085098, 47.215736>,  <48.226269, 41.718658, 47.094227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.121597, 42.085098, 47.215736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263390, 0.235017, -0.935624,
		-0.928521, -0.324844, 0.179794,
		-0.261677, 0.916102, 0.303778,
		48.043095, 42.359928, 47.306870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.614338, 41.779591, 46.826977>,  <48.226269, 41.718658, 47.094227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.614338, 41.779591, 46.826977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.722237, 42.157814, 46.899815>,  <47.786976, 42.384747, 46.943516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.722237, 42.157814, 46.899815>,  <47.614338, 41.779591, 46.826977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.722237, 42.157814, 46.899815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226095, 0.246007, -0.942529,
		-0.936012, 0.213072, 0.280145,
		0.269744, 0.945559, 0.182092,
		47.803162, 42.441483, 46.954441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075546, 42.193535, 46.434547>,  <47.614338, 41.779591, 46.826977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075546, 42.193535, 46.434547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.398628, 42.425591, 46.476604>,  <47.592476, 42.564823, 46.501839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.398628, 42.425591, 46.476604>,  <47.075546, 42.193535, 46.434547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.398628, 42.425591, 46.476604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140093, 0.362057, -0.921569,
		-0.572708, 0.729622, 0.373708,
		0.807700, 0.580143, 0.105138,
		47.640938, 42.599632, 46.508144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.871727, 42.830223, 46.178856>,  <47.075546, 42.193535, 46.434547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.871727, 42.830223, 46.178856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.271362, 42.835953, 46.162724>,  <47.511143, 42.839390, 46.153042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.271362, 42.835953, 46.162724>,  <46.871727, 42.830223, 46.178856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.271362, 42.835953, 46.162724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042550, 0.434329, -0.899749,
		0.004631, 0.900641, 0.434540,
		0.999084, 0.014323, -0.040333,
		47.571087, 42.840248, 46.150623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.746357, 42.471588, 45.537888>,  <46.871727, 42.830223, 46.178856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.746357, 42.471588, 45.537888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.449242, 42.231796, 45.418633>,  <46.270973, 42.087921, 45.347080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.449242, 42.231796, 45.418633>,  <46.746357, 42.471588, 45.537888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449242, 42.231796, 45.418633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301228, -0.098461, 0.948455,
		-0.597938, 0.794308, -0.107446,
		-0.742787, -0.599483, -0.298142,
		46.226406, 42.051952, 45.329189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086075, 42.776844, 45.761467>,  <46.746357, 42.471588, 45.537888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086075, 42.776844, 45.761467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.021652, 42.385162, 45.712112>,  <45.982998, 42.150154, 45.682499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.021652, 42.385162, 45.712112>,  <46.086075, 42.776844, 45.761467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.021652, 42.385162, 45.712112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472300, -0.033306, 0.880808,
		-0.866600, 0.200132, -0.457113,
		-0.161053, -0.979203, -0.123385,
		45.973335, 42.091400, 45.675098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372879, 42.759628, 45.825989>,  <46.086075, 42.776844, 45.761467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372879, 42.759628, 45.825989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.515533, 42.389908, 45.880360>,  <45.601128, 42.168076, 45.912983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.515533, 42.389908, 45.880360>,  <45.372879, 42.759628, 45.825989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515533, 42.389908, 45.880360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607913, -0.119117, 0.785018,
		-0.709402, -0.362600, -0.604376,
		0.356639, -0.924301, 0.135927,
		45.622524, 42.112617, 45.921139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816624, 42.359440, 45.998001>,  <45.372879, 42.759628, 45.825989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816624, 42.359440, 45.998001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.128670, 42.162956, 46.152985>,  <45.315899, 42.045067, 46.245975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.128670, 42.162956, 46.152985>,  <44.816624, 42.359440, 45.998001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.128670, 42.162956, 46.152985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574422, -0.316973, 0.754697,
		-0.247895, -0.811323, -0.529437,
		0.780120, -0.491206, 0.387466,
		45.362705, 42.015594, 46.269222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490650, 41.846790, 46.216099>,  <44.816624, 42.359440, 45.998001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490650, 41.846790, 46.216099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.843872, 41.846558, 46.403805>,  <45.055805, 41.846420, 46.516430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.843872, 41.846558, 46.403805>,  <44.490650, 41.846790, 46.216099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843872, 41.846558, 46.403805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465832, -0.121805, 0.876450,
		0.056655, -0.992554, -0.107828,
		0.883058, -0.000574, 0.469264,
		45.108788, 41.846386, 46.544582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388088, 41.388332, 46.718258>,  <44.490650, 41.846790, 46.216099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388088, 41.388332, 46.718258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.697205, 41.614319, 46.833916>,  <44.882675, 41.749908, 46.903313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.697205, 41.614319, 46.833916>,  <44.388088, 41.388332, 46.718258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697205, 41.614319, 46.833916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323132, -0.041868, 0.945428,
		0.546237, -0.824054, 0.150202,
		0.772794, 0.564962, 0.289148,
		44.929043, 41.783806, 46.920662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571651, 41.064972, 47.312958>,  <44.388088, 41.388332, 46.718258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571651, 41.064972, 47.312958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.754135, 41.418457, 47.354752>,  <44.863625, 41.630550, 47.379829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.754135, 41.418457, 47.354752>,  <44.571651, 41.064972, 47.312958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754135, 41.418457, 47.354752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345065, 0.067452, 0.936152,
		0.820246, -0.463134, 0.335712,
		0.456209, 0.883718, 0.104484,
		44.890999, 41.683571, 47.386097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919083, 41.091824, 47.942051>,  <44.571651, 41.064972, 47.312958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919083, 41.091824, 47.942051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.897644, 41.484047, 47.866535>,  <44.884781, 41.719379, 47.821224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.897644, 41.484047, 47.866535>,  <44.919083, 41.091824, 47.942051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897644, 41.484047, 47.866535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009516, 0.188549, 0.982018,
		0.998517, 0.054431, -0.000775,
		-0.053598, 0.980554, -0.188788,
		44.881565, 41.778214, 47.809898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298069, 41.404354, 48.388073>,  <44.919083, 41.091824, 47.942051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298069, 41.404354, 48.388073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.054127, 41.707474, 48.295280>,  <44.907761, 41.889343, 48.239605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.054127, 41.707474, 48.295280>,  <45.298069, 41.404354, 48.388073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.054127, 41.707474, 48.295280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043011, 0.260642, 0.964477,
		0.791342, 0.598173, -0.126361,
		-0.609860, 0.757796, -0.231985,
		44.871170, 41.934811, 48.225685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579189, 41.957287, 48.706299>,  <45.298069, 41.404354, 48.388073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579189, 41.957287, 48.706299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.207794, 42.081871, 48.625397>,  <44.984959, 42.156620, 48.576855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.207794, 42.081871, 48.625397>,  <45.579189, 41.957287, 48.706299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.207794, 42.081871, 48.625397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087131, 0.346707, 0.933918,
		0.361000, 0.884752, -0.294775,
		-0.928486, 0.311460, -0.202251,
		44.929249, 42.175308, 48.564720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527195, 42.481430, 49.009254>,  <45.579189, 41.957287, 48.706299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527195, 42.481430, 49.009254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.135265, 42.413864, 48.966522>,  <44.900108, 42.373325, 48.940884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.135265, 42.413864, 48.966522>,  <45.527195, 42.481430, 49.009254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135265, 42.413864, 48.966522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145016, 0.233041, 0.961594,
		-0.137531, 0.957685, -0.252834,
		-0.979824, -0.168914, -0.106830,
		44.841316, 42.363190, 48.934475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106224, 43.086586, 49.329483>,  <45.527195, 42.481430, 49.009254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106224, 43.086586, 49.329483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.878189, 42.758011, 49.335712>,  <44.741367, 42.560867, 49.339451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.878189, 42.758011, 49.335712>,  <45.106224, 43.086586, 49.329483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878189, 42.758011, 49.335712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106639, 0.092774, 0.989960,
		-0.814633, 0.562705, -0.140487,
		-0.570089, -0.821436, 0.015571,
		44.707161, 42.511581, 49.340385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770512, 43.217579, 49.890945>,  <45.106224, 43.086586, 49.329483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770512, 43.217579, 49.890945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.627380, 42.855125, 49.800713>,  <44.541504, 42.637653, 49.746571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.627380, 42.855125, 49.800713>,  <44.770512, 43.217579, 49.890945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627380, 42.855125, 49.800713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110355, -0.198854, 0.973796,
		-0.927244, 0.373344, -0.028840,
		-0.357826, -0.906130, -0.225587,
		44.520031, 42.583286, 49.733036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103016, 43.101509, 50.320351>,  <44.770512, 43.217579, 49.890945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103016, 43.101509, 50.320351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.297245, 42.766136, 50.221359>,  <44.413784, 42.564911, 50.161964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.297245, 42.766136, 50.221359>,  <44.103016, 43.101509, 50.320351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.297245, 42.766136, 50.221359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084682, -0.326870, 0.941268,
		-0.870086, -0.436096, -0.229719,
		0.485572, -0.838437, -0.247476,
		44.442917, 42.514606, 50.147118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656368, 42.608498, 50.523743>,  <44.103016, 43.101509, 50.320351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656368, 42.608498, 50.523743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.035271, 42.480736, 50.513184>,  <44.262611, 42.404079, 50.506847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.035271, 42.480736, 50.513184>,  <43.656368, 42.608498, 50.523743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035271, 42.480736, 50.513184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097472, -0.365571, 0.925666,
		-0.305308, -0.874266, -0.377420,
		0.947252, -0.319401, -0.026395,
		44.319447, 42.384914, 50.505264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658081, 41.927238, 50.944061>,  <43.656368, 42.608498, 50.523743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658081, 41.927238, 50.944061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.046059, 42.022339, 50.923328>,  <44.278847, 42.079399, 50.910889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.046059, 42.022339, 50.923328>,  <43.658081, 41.927238, 50.944061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046059, 42.022339, 50.923328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116921, -0.268567, 0.956139,
		0.213399, -0.933460, -0.288292,
		0.969943, 0.237747, -0.051829,
		44.337040, 42.093662, 50.907780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996082, 41.445908, 51.204845>,  <43.658081, 41.927238, 50.944061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996082, 41.445908, 51.204845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.275291, 41.731056, 51.231892>,  <44.442818, 41.902145, 51.248119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.275291, 41.731056, 51.231892>,  <43.996082, 41.445908, 51.204845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275291, 41.731056, 51.231892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168025, -0.254840, 0.952273,
		0.696082, -0.653349, -0.297666,
		0.698024, 0.712875, 0.067611,
		44.484699, 41.944920, 51.252174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489418, 41.145290, 51.621395>,  <43.996082, 41.445908, 51.204845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489418, 41.145290, 51.621395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.542854, 41.540977, 51.645382>,  <44.574917, 41.778389, 51.659775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.542854, 41.540977, 51.645382>,  <44.489418, 41.145290, 51.621395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542854, 41.540977, 51.645382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040619, -0.065924, 0.996998,
		0.990203, -0.130757, -0.048988,
		0.133594, 0.989220, 0.059967,
		44.582932, 41.837742, 51.663372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<44.976742, 41.162704, 52.143154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.834999, 41.535141, 52.108509>,  <44.749954, 41.758602, 52.087723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.834999, 41.535141, 52.108509>,  <44.976742, 41.162704, 52.143154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834999, 41.535141, 52.108509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173530, 0.156493, 0.972315,
		0.918869, 0.329515, -0.217026,
		-0.354356, 0.931091, -0.086616,
		44.728691, 41.814468, 52.082523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381958, 41.564083, 52.503174>,  <44.976742, 41.162704, 52.143154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381958, 41.564083, 52.503174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.036415, 41.763992, 52.477936>,  <44.829090, 41.883938, 52.462791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.036415, 41.763992, 52.477936>,  <45.381958, 41.564083, 52.503174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036415, 41.763992, 52.477936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134662, 0.349811, 0.927091,
		0.485411, 0.792374, -0.369486,
		-0.863853, 0.499776, -0.063099,
		44.777260, 41.913925, 52.459007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413601, 42.021675, 53.041180>,  <45.381958, 41.564083, 52.503174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413601, 42.021675, 53.041180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.019089, 42.073730, 53.000549>,  <44.782383, 42.104965, 52.976173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.019089, 42.073730, 53.000549>,  <45.413601, 42.021675, 53.041180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019089, 42.073730, 53.000549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066629, 0.249137, 0.966174,
		0.151044, 0.959684, -0.237047,
		-0.986279, 0.130141, -0.101574,
		44.723206, 42.112774, 52.970078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203506, 42.703156, 53.438000>,  <45.413601, 42.021675, 53.041180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203506, 42.703156, 53.438000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.882225, 42.468933, 53.394222>,  <44.689457, 42.328400, 53.367954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.882225, 42.468933, 53.394222>,  <45.203506, 42.703156, 53.438000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.882225, 42.468933, 53.394222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259124, 0.178008, 0.949299,
		-0.536389, 0.790843, -0.294710,
		-0.803207, -0.585560, -0.109445,
		44.641262, 42.293266, 53.361389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678391, 43.094261, 53.839539>,  <45.203506, 42.703156, 53.438000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678391, 43.094261, 53.839539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.537590, 42.723122, 53.790218>,  <44.453110, 42.500439, 53.760628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.537590, 42.723122, 53.790218>,  <44.678391, 43.094261, 53.839539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537590, 42.723122, 53.790218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474167, 0.063189, 0.878164,
		-0.807009, 0.367576, -0.462196,
		-0.351998, -0.927844, -0.123299,
		44.431992, 42.444767, 53.753227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003212, 43.054951, 54.022976>,  <44.678391, 43.094261, 53.839539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003212, 43.054951, 54.022976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.073986, 42.661972, 54.046631>,  <44.116451, 42.426186, 54.060822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.073986, 42.661972, 54.046631>,  <44.003212, 43.054951, 54.022976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073986, 42.661972, 54.046631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491178, -0.036074, 0.870312,
		-0.852900, -0.183030, -0.488939,
		0.176931, -0.982445, 0.059133,
		44.127064, 42.367237, 54.064369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388287, 42.590492, 54.169353>,  <44.003212, 43.054951, 54.022976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388287, 42.590492, 54.169353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.692772, 42.371017, 54.307625>,  <43.875462, 42.239334, 54.390587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.692772, 42.371017, 54.307625>,  <43.388287, 42.590492, 54.169353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692772, 42.371017, 54.307625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446684, -0.057189, 0.892862,
		-0.470134, -0.834068, -0.288624,
		0.761214, -0.548689, 0.345679,
		43.921135, 42.206409, 54.411327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066925, 42.230476, 54.723839>,  <43.388287, 42.590492, 54.169353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066925, 42.230476, 54.723839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.457336, 42.155899, 54.768757>,  <43.691582, 42.111153, 54.795708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.457336, 42.155899, 54.768757>,  <43.066925, 42.230476, 54.723839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457336, 42.155899, 54.768757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112606, 0.008955, 0.993599,
		-0.186257, -0.982425, -0.012254,
		0.976027, -0.186445, 0.112295,
		43.750145, 42.099964, 54.802444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202919, 41.512108, 55.053326>,  <43.066925, 42.230476, 54.723839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202919, 41.512108, 55.053326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.512657, 41.748787, 55.143028>,  <43.698498, 41.890793, 55.196850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.512657, 41.748787, 55.143028>,  <43.202919, 41.512108, 55.053326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512657, 41.748787, 55.143028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152741, -0.169144, 0.973684,
		0.614056, -0.788218, -0.040599,
		0.774342, 0.591695, 0.224257,
		43.744961, 41.926296, 55.210304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440929, 41.318615, 55.773136>,  <43.202919, 41.512108, 55.053326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440929, 41.318615, 55.773136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.604919, 41.681122, 55.731949>,  <43.703312, 41.898624, 55.707237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.604919, 41.681122, 55.731949>,  <43.440929, 41.318615, 55.773136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604919, 41.681122, 55.731949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219532, 0.207619, 0.953258,
		0.885284, -0.368204, 0.284073,
		0.409973, 0.906267, -0.102969,
		43.727913, 41.953003, 55.701057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761284, 41.408001, 56.388142>,  <43.440929, 41.318615, 55.773136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761284, 41.408001, 56.388142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.803490, 41.780792, 56.249413>,  <43.828815, 42.004467, 56.166176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.803490, 41.780792, 56.249413>,  <43.761284, 41.408001, 56.388142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803490, 41.780792, 56.249413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206694, 0.361708, 0.909090,
		0.972699, -0.024239, 0.230801,
		0.105518, 0.931976, -0.346823,
		43.835144, 42.060387, 56.145367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296848, 41.792530, 56.793362>,  <43.761284, 41.408001, 56.388142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296848, 41.792530, 56.793362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.050976, 42.058807, 56.624123>,  <43.903450, 42.218575, 56.522579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.050976, 42.058807, 56.624123>,  <44.296848, 41.792530, 56.793362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050976, 42.058807, 56.624123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236134, 0.356498, 0.903964,
		0.752598, 0.655561, -0.061940,
		-0.614684, 0.665695, -0.423100,
		43.866570, 42.258514, 56.497192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529808, 42.531040, 57.028076>,  <44.296848, 41.792530, 56.793362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529808, 42.531040, 57.028076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.142223, 42.546295, 56.930382>,  <43.909672, 42.555447, 56.871765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.142223, 42.546295, 56.930382>,  <44.529808, 42.531040, 57.028076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142223, 42.546295, 56.930382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204138, 0.433741, 0.877608,
		0.139402, 0.900230, -0.412496,
		-0.968966, 0.038134, -0.244236,
		43.851532, 42.557735, 56.857113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362026, 43.190544, 57.283962>,  <44.529808, 42.531040, 57.028076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362026, 43.190544, 57.283962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.020596, 42.988197, 57.234161>,  <43.815735, 42.866791, 57.204281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.020596, 42.988197, 57.234161>,  <44.362026, 43.190544, 57.283962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020596, 42.988197, 57.234161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387677, 0.457139, 0.800457,
		-0.348008, 0.731521, -0.586316,
		-0.853579, -0.505867, -0.124506,
		43.764523, 42.836437, 57.196808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905846, 43.690327, 57.340408>,  <44.362026, 43.190544, 57.283962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905846, 43.690327, 57.340408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.692055, 43.359215, 57.408657>,  <43.563778, 43.160549, 57.449604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.692055, 43.359215, 57.408657>,  <43.905846, 43.690327, 57.340408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692055, 43.359215, 57.408657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387211, 0.419267, 0.821147,
		-0.751265, 0.372821, -0.544616,
		-0.534480, -0.827780, 0.170620,
		43.531712, 43.110882, 57.459843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190758, 43.884483, 57.586514>,  <43.905846, 43.690327, 57.340408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190758, 43.884483, 57.586514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.232925, 43.503922, 57.702248>,  <43.258228, 43.275585, 57.771687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.232925, 43.503922, 57.702248>,  <43.190758, 43.884483, 57.586514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232925, 43.503922, 57.702248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627175, 0.162180, 0.761806,
		-0.771711, -0.261774, -0.579601,
		0.105422, -0.951405, 0.289334,
		43.264553, 43.218498, 57.789047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583965, 43.809914, 57.894070>,  <43.190758, 43.884483, 57.586514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583965, 43.809914, 57.894070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.788765, 43.485062, 58.006004>,  <42.911644, 43.290150, 58.073166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.788765, 43.485062, 58.006004>,  <42.583965, 43.809914, 57.894070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788765, 43.485062, 58.006004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429815, 0.039842, 0.902038,
		-0.743719, -0.582118, -0.328665,
		0.511998, -0.812128, 0.279834,
		42.942364, 43.241425, 58.089954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101456, 43.301727, 58.158752>,  <42.583965, 43.809914, 57.894070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101456, 43.301727, 58.158752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.456100, 43.200661, 58.313713>,  <42.668888, 43.140018, 58.406689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.456100, 43.200661, 58.313713>,  <42.101456, 43.301727, 58.158752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456100, 43.200661, 58.313713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401716, -0.005554, 0.915747,
		-0.229232, -0.967536, -0.106427,
		0.886610, -0.252672, 0.387402,
		42.722084, 43.124859, 58.429935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011284, 42.806629, 58.699364>,  <42.101456, 43.301727, 58.158752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011284, 42.806629, 58.699364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.359619, 42.975029, 58.800873>,  <42.568619, 43.076069, 58.861778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.359619, 42.975029, 58.800873>,  <42.011284, 42.806629, 58.699364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359619, 42.975029, 58.800873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316610, 0.085445, 0.944700,
		0.376034, -0.903028, 0.207701,
		0.870837, 0.420999, 0.253777,
		42.620869, 43.101330, 58.877007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159760, 42.526230, 59.384220>,  <42.011284, 42.806629, 58.699364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159760, 42.526230, 59.384220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.410988, 42.836472, 59.359062>,  <42.561726, 43.022617, 59.343967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.410988, 42.836472, 59.359062>,  <42.159760, 42.526230, 59.384220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410988, 42.836472, 59.359062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168899, 0.214781, 0.961947,
		0.759603, -0.593550, 0.265897,
		0.628073, 0.775608, -0.062898,
		42.599411, 43.069153, 59.340191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582397, 42.390388, 59.899452>,  <42.159760, 42.526230, 59.384220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582397, 42.390388, 59.899452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.608917, 42.780716, 59.816139>,  <42.624828, 43.014912, 59.766151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.608917, 42.780716, 59.816139>,  <42.582397, 42.390388, 59.899452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608917, 42.780716, 59.816139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222725, 0.217946, 0.950207,
		0.972625, -0.016606, 0.231788,
		0.066296, 0.975820, -0.208281,
		42.628807, 43.073463, 59.753654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055740, 42.649517, 60.356445>,  <42.582397, 42.390388, 59.899452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055740, 42.649517, 60.356445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.826927, 42.950294, 60.225384>,  <42.689640, 43.130760, 60.146748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.826927, 42.950294, 60.225384>,  <43.055740, 42.649517, 60.356445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826927, 42.950294, 60.225384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232821, 0.234186, 0.943902,
		0.786491, 0.616233, 0.041104,
		-0.572037, 0.751940, -0.327657,
		42.655315, 43.175877, 60.127087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158566, 43.473850, 60.598701>,  <43.055740, 42.649517, 60.356445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158566, 43.473850, 60.598701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.772385, 43.370026, 60.607941>,  <42.540676, 43.307732, 60.613483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.772385, 43.370026, 60.607941>,  <43.158566, 43.473850, 60.598701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772385, 43.370026, 60.607941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080221, 0.380379, 0.921345,
		-0.247934, 0.887659, -0.388059,
		-0.965450, -0.259563, 0.023100,
		42.482750, 43.292156, 60.614872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692627, 43.944576, 61.030491>,  <43.158566, 43.473850, 60.598701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692627, 43.944576, 61.030491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.555489, 43.568832, 61.033669>,  <42.473206, 43.343388, 61.035576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.555489, 43.568832, 61.033669>,  <42.692627, 43.944576, 61.030491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555489, 43.568832, 61.033669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179317, -0.057141, 0.982131,
		-0.922119, 0.338141, 0.188033,
		-0.342843, -0.939359, 0.007943,
		42.452637, 43.287025, 61.036053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418156, 44.193787, 60.806110>,  <42.692627, 43.944576, 61.030491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418156, 44.193787, 60.806110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.680183, 44.068352, 61.081078>,  <43.837402, 43.993092, 61.246059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.680183, 44.068352, 61.081078>,  <43.418156, 44.193787, 60.806110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680183, 44.068352, 61.081078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696595, -0.101710, -0.710219,
		0.292633, 0.944096, 0.151816,
		0.655074, -0.313588, 0.687416,
		43.876705, 43.974274, 61.287304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014702, 44.572308, 60.743671>,  <43.418156, 44.193787, 60.806110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014702, 44.572308, 60.743671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.178577, 44.257370, 60.927956>,  <44.276901, 44.068409, 61.038525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.178577, 44.257370, 60.927956>,  <44.014702, 44.572308, 60.743671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178577, 44.257370, 60.927956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643794, -0.108258, -0.757502,
		0.646288, 0.606939, 0.462533,
		0.409685, -0.787340, 0.460710,
		44.301483, 44.021168, 61.066170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767971, 44.715923, 60.778133>,  <44.014702, 44.572308, 60.743671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767971, 44.715923, 60.778133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.698730, 44.322685, 60.802017>,  <44.657188, 44.086742, 60.816345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.698730, 44.322685, 60.802017>,  <44.767971, 44.715923, 60.778133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.698730, 44.322685, 60.802017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533723, -0.144579, -0.833208,
		0.827753, -0.112362, 0.549726,
		-0.173100, -0.983093, 0.059705,
		44.646801, 44.027756, 60.819927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.347824, 44.446041, 60.418610>,  <44.767971, 44.715923, 60.778133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.347824, 44.446041, 60.418610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.097145, 44.134430, 60.410950>,  <44.946739, 43.947464, 60.406353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.097145, 44.134430, 60.410950>,  <45.347824, 44.446041, 60.418610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097145, 44.134430, 60.410950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591917, -0.459901, -0.661910,
		0.506837, -0.426155, 0.749338,
		-0.626698, -0.779027, -0.019154,
		44.909134, 43.900723, 60.405205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655914, 43.908115, 60.592484>,  <45.347824, 44.446041, 60.418610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655914, 43.908115, 60.592484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.349525, 43.778290, 60.370514>,  <45.165691, 43.700394, 60.237331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.349525, 43.778290, 60.370514>,  <45.655914, 43.908115, 60.592484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349525, 43.778290, 60.370514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634318, -0.521910, -0.570308,
		-0.104522, -0.788841, 0.605645,
		-0.765974, -0.324562, -0.554926,
		45.119732, 43.680920, 60.204037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819019, 43.165985, 60.438732>,  <45.655914, 43.908115, 60.592484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819019, 43.165985, 60.438732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.550049, 43.295113, 60.172310>,  <45.388668, 43.372589, 60.012455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.550049, 43.295113, 60.172310>,  <45.819019, 43.165985, 60.438732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550049, 43.295113, 60.172310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513303, -0.444938, -0.733860,
		-0.533260, -0.835354, 0.133481,
		-0.672424, 0.322822, -0.666057,
		45.348320, 43.391960, 59.972492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777027, 42.605515, 59.916943>,  <45.819019, 43.165985, 60.438732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777027, 42.605515, 59.916943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.616920, 42.921188, 59.730621>,  <45.520859, 43.110592, 59.618828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.616920, 42.921188, 59.730621>,  <45.777027, 42.605515, 59.916943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.616920, 42.921188, 59.730621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373205, -0.323860, -0.869387,
		-0.836963, -0.521825, -0.164899,
		-0.400263, 0.789186, -0.465806,
		45.496841, 43.157944, 59.590881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.327599, 42.344978, 59.413998>,  <45.777027, 42.605515, 59.916943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.327599, 42.344978, 59.413998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.377937, 42.717850, 59.278233>,  <45.408142, 42.941574, 59.196774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.377937, 42.717850, 59.278233>,  <45.327599, 42.344978, 59.413998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377937, 42.717850, 59.278233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247354, -0.360817, -0.899237,
		-0.960717, 0.029214, -0.275987,
		0.125852, 0.932179, -0.339417,
		45.415691, 42.997505, 59.176407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060860, 42.339088, 58.754066>,  <45.327599, 42.344978, 59.413998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.060860, 42.339088, 58.754066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.303574, 42.657013, 58.757553>,  <45.449203, 42.847767, 58.759647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.303574, 42.657013, 58.757553>,  <45.060860, 42.339088, 58.754066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303574, 42.657013, 58.757553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248030, -0.178908, -0.952089,
		-0.755174, 0.579881, -0.305697,
		0.606789, 0.794815, 0.008721,
		45.485611, 42.895458, 58.760170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872173, 42.814980, 58.206341>,  <45.060860, 42.339088, 58.754066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872173, 42.814980, 58.206341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.246983, 42.914856, 58.304031>,  <45.471867, 42.974781, 58.362644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.246983, 42.914856, 58.304031>,  <44.872173, 42.814980, 58.206341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246983, 42.914856, 58.304031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297072, -0.202010, -0.933242,
		-0.183689, 0.947019, -0.263465,
		0.937020, 0.249694, 0.244226,
		45.528088, 42.989765, 58.377300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030136, 43.150322, 57.639797>,  <44.872173, 42.814980, 58.206341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.030136, 43.150322, 57.639797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.385704, 43.058472, 57.798336>,  <45.599045, 43.003361, 57.893459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.385704, 43.058472, 57.798336>,  <45.030136, 43.150322, 57.639797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385704, 43.058472, 57.798336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338152, -0.254699, -0.905970,
		0.308980, 0.939362, -0.148761,
		0.888923, -0.229622, 0.396345,
		45.652382, 42.989586, 57.917240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513973, 43.464752, 57.257702>,  <45.030136, 43.150322, 57.639797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513973, 43.464752, 57.257702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.709694, 43.160370, 57.428131>,  <45.827126, 42.977741, 57.530388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.709694, 43.160370, 57.428131>,  <45.513973, 43.464752, 57.257702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709694, 43.160370, 57.428131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332877, -0.288605, -0.897719,
		0.806088, 0.581083, 0.112089,
		0.489300, -0.760953, 0.426070,
		45.856483, 42.932083, 57.555954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150368, 43.459541, 56.948620>,  <45.513973, 43.464752, 57.257702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150368, 43.459541, 56.948620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.094208, 43.085358, 57.078358>,  <46.060513, 42.860847, 57.156200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.094208, 43.085358, 57.078358>,  <46.150368, 43.459541, 56.948620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094208, 43.085358, 57.078358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435245, -0.352552, -0.828413,
		0.889297, 0.024856, 0.456654,
		-0.140403, -0.935462, 0.324342,
		46.052086, 42.804718, 57.175659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.681004, 43.148148, 56.723438>,  <46.150368, 43.459541, 56.948620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.681004, 43.148148, 56.723438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.444908, 42.836258, 56.806999>,  <46.303249, 42.649124, 56.857136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.444908, 42.836258, 56.806999>,  <46.681004, 43.148148, 56.723438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.444908, 42.836258, 56.806999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320929, -0.464129, -0.825584,
		0.740690, -0.420249, 0.524184,
		-0.590240, -0.779727, 0.208905,
		46.267838, 42.602341, 56.869671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084679, 42.542564, 56.458824>,  <46.681004, 43.148148, 56.723438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084679, 42.542564, 56.458824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.705376, 42.424469, 56.505547>,  <46.477795, 42.353611, 56.533581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.705376, 42.424469, 56.505547>,  <47.084679, 42.542564, 56.458824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.705376, 42.424469, 56.505547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078497, -0.574467, -0.814755,
		0.307652, -0.763427, 0.567917,
		-0.948255, -0.295241, 0.116809,
		46.420898, 42.335896, 56.540588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.078114, 41.822113, 56.334999>,  <47.084679, 42.542564, 56.458824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.078114, 41.822113, 56.334999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.699501, 41.931198, 56.266052>,  <46.472332, 41.996647, 56.224686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.699501, 41.931198, 56.266052>,  <47.078114, 41.822113, 56.334999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.699501, 41.931198, 56.266052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039223, -0.433042, -0.900520,
		-0.320220, -0.859131, 0.399191,
		-0.946531, 0.272707, -0.172366,
		46.415543, 42.013012, 56.214340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.877155, 41.379490, 55.945572>,  <47.078114, 41.822113, 56.334999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.877155, 41.379490, 55.945572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.593544, 41.651428, 55.870644>,  <46.423378, 41.814590, 55.825687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.593544, 41.651428, 55.870644>,  <46.877155, 41.379490, 55.945572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.593544, 41.651428, 55.870644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008979, -0.256910, -0.966394,
		-0.705119, -0.686886, 0.176053,
		-0.709032, 0.679842, -0.187320,
		46.380833, 41.855381, 55.814449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265644, 41.022282, 55.681179>,  <46.877155, 41.379490, 55.945572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265644, 41.022282, 55.681179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.298836, 41.396599, 55.544121>,  <46.318752, 41.621189, 55.461887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.298836, 41.396599, 55.544121>,  <46.265644, 41.022282, 55.681179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.298836, 41.396599, 55.544121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264732, -0.352173, -0.897714,
		-0.960745, -0.016217, -0.276958,
		0.082979, 0.935794, -0.342642,
		46.323730, 41.677338, 55.441330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.962868, 40.938602, 55.008522>,  <46.265644, 41.022282, 55.681179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.962868, 40.938602, 55.008522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.093872, 41.315544, 54.981094>,  <46.172474, 41.541710, 54.964638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.093872, 41.315544, 54.981094>,  <45.962868, 40.938602, 55.008522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093872, 41.315544, 54.981094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206874, -0.142330, -0.967960,
		-0.921922, 0.302831, -0.241563,
		0.327510, 0.942356, -0.068569,
		46.192123, 41.598251, 54.960522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686935, 41.212311, 54.376343>,  <45.962868, 40.938602, 55.008522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.686935, 41.212311, 54.376343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.001503, 41.446007, 54.456558>,  <46.190243, 41.586224, 54.504688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.001503, 41.446007, 54.456558>,  <45.686935, 41.212311, 54.376343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.001503, 41.446007, 54.456558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273776, -0.038645, -0.961017,
		-0.553710, 0.810663, -0.190341,
		0.786417, 0.584236, 0.200543,
		46.237427, 41.621277, 54.516720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.729774, 41.687359, 49.272076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038353, 41.940384, 49.299599>,  <44.223499, 42.092201, 49.316113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038353, 41.940384, 49.299599>,  <43.729774, 41.687359, 49.272076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038353, 41.940384, 49.299599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041456, 0.057935, -0.997459,
		-0.634945, 0.772337, 0.018469,
		0.771444, 0.632566, 0.068803,
		44.269787, 42.130154, 49.320240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570137, 42.201866, 48.845650>,  <43.729774, 41.687359, 49.272076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570137, 42.201866, 48.845650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.966179, 42.241089, 48.885788>,  <44.203804, 42.264622, 48.909870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.966179, 42.241089, 48.885788>,  <43.570137, 42.201866, 48.845650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966179, 42.241089, 48.885788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102809, -0.020385, -0.994492,
		-0.095471, 0.994972, -0.030264,
		0.990109, 0.098057, 0.100346,
		44.263210, 42.270508, 48.915894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715752, 42.569324, 48.339520>,  <43.570137, 42.201866, 48.845650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715752, 42.569324, 48.339520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.084869, 42.431076, 48.407627>,  <44.306339, 42.348129, 48.448490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.084869, 42.431076, 48.407627>,  <43.715752, 42.569324, 48.339520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084869, 42.431076, 48.407627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113209, -0.179188, -0.977280,
		0.368274, 0.921109, -0.126227,
		0.922799, -0.345617, 0.170268,
		44.361710, 42.327393, 48.458706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146854, 42.942509, 47.897404>,  <43.715752, 42.569324, 48.339520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146854, 42.942509, 47.897404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376808, 42.631233, 47.998535>,  <44.514782, 42.444466, 48.059216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376808, 42.631233, 47.998535>,  <44.146854, 42.942509, 47.897404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376808, 42.631233, 47.998535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262243, -0.117459, -0.957827,
		0.775071, 0.616943, 0.136551,
		0.574886, -0.778193, 0.252828,
		44.549274, 42.397774, 48.074383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774662, 43.065708, 47.570789>,  <44.146854, 42.942509, 47.897404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774662, 43.065708, 47.570789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.787086, 42.674438, 47.652977>,  <44.794540, 42.439678, 47.702290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.787086, 42.674438, 47.652977>,  <44.774662, 43.065708, 47.570789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.787086, 42.674438, 47.652977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538772, -0.156763, -0.827738,
		0.841879, 0.136407, 0.522143,
		0.031057, -0.978171, 0.205468,
		44.796402, 42.380989, 47.714619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.418232, 42.859062, 47.438419>,  <44.774662, 43.065708, 47.570789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.418232, 42.859062, 47.438419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276558, 42.484993, 47.438400>,  <45.191555, 42.260551, 47.438389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276558, 42.484993, 47.438400>,  <45.418232, 42.859062, 47.438419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276558, 42.484993, 47.438400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568878, -0.215413, -0.793710,
		0.742248, -0.281146, 0.608297,
		-0.354183, -0.935176, -0.000048,
		45.170303, 42.204441, 47.438385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006435, 42.420193, 47.327602>,  <45.418232, 42.859062, 47.438419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006435, 42.420193, 47.327602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.680351, 42.227272, 47.199345>,  <45.484699, 42.111519, 47.122391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.680351, 42.227272, 47.199345>,  <46.006435, 42.420193, 47.327602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680351, 42.227272, 47.199345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498708, -0.303070, -0.812058,
		0.294477, -0.821910, 0.487593,
		-0.815213, -0.482300, -0.320646,
		45.435787, 42.082581, 47.103149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.286602, 41.771915, 47.139244>,  <46.006435, 42.420193, 47.327602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.286602, 41.771915, 47.139244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.927216, 41.807457, 46.967262>,  <45.711582, 41.828781, 46.864075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.927216, 41.807457, 46.967262>,  <46.286602, 41.771915, 47.139244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927216, 41.807457, 46.967262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390471, -0.285984, -0.875069,
		-0.200711, -0.954106, 0.222253,
		-0.898470, 0.088852, -0.429951,
		45.657677, 41.834114, 46.838276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237114, 41.180428, 46.693531>,  <46.286602, 41.771915, 47.139244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237114, 41.180428, 46.693531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.967651, 41.440918, 46.553768>,  <45.805973, 41.597214, 46.469910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.967651, 41.440918, 46.553768>,  <46.237114, 41.180428, 46.693531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967651, 41.440918, 46.553768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288975, -0.203034, -0.935559,
		-0.680205, -0.731217, -0.051414,
		-0.673658, 0.651229, -0.349408,
		45.765553, 41.636288, 46.448944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882309, 40.838516, 46.188015>,  <46.237114, 41.180428, 46.693531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882309, 40.838516, 46.188015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.819626, 41.225807, 46.110054>,  <45.782017, 41.458179, 46.063278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.819626, 41.225807, 46.110054>,  <45.882309, 40.838516, 46.188015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.819626, 41.225807, 46.110054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031074, -0.192413, -0.980822,
		-0.987157, -0.159754, 0.000065,
		-0.156703, 0.968223, -0.194906,
		45.772614, 41.516273, 46.051582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595585, 40.856632, 45.511353>,  <45.882309, 40.838516, 46.188015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595585, 40.856632, 45.511353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.732643, 41.224037, 45.590271>,  <45.814877, 41.444481, 45.637623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.732643, 41.224037, 45.590271>,  <45.595585, 40.856632, 45.511353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.732643, 41.224037, 45.590271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143461, 0.156386, -0.977222,
		-0.928446, 0.363145, -0.078186,
		0.342646, 0.918515, 0.197293,
		45.835438, 41.499592, 45.649460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407356, 41.199284, 44.807713>,  <45.595585, 40.856632, 45.511353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407356, 41.199284, 44.807713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.682785, 41.423164, 44.992149>,  <45.848042, 41.557491, 45.102810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.682785, 41.423164, 44.992149>,  <45.407356, 41.199284, 44.807713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.682785, 41.423164, 44.992149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490195, 0.109314, -0.864731,
		-0.534393, 0.821454, -0.199092,
		0.688573, 0.559700, 0.461089,
		45.889359, 41.591076, 45.130478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664486, 41.619762, 44.299942>,  <45.407356, 41.199284, 44.807713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664486, 41.619762, 44.299942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.988358, 41.625404, 44.534626>,  <46.182678, 41.628792, 44.675434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.988358, 41.625404, 44.534626>,  <45.664486, 41.619762, 44.299942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988358, 41.625404, 44.534626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585828, -0.079177, -0.806558,
		0.035076, 0.996761, -0.072372,
		0.809676, 0.014106, 0.586708,
		46.231262, 41.629635, 44.710640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.200172, 42.106796, 44.187889>,  <45.664486, 41.619762, 44.299942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.200172, 42.106796, 44.187889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.399048, 41.788315, 44.325802>,  <46.518372, 41.597225, 44.408550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.399048, 41.788315, 44.325802>,  <46.200172, 42.106796, 44.187889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.399048, 41.788315, 44.325802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531415, -0.034677, -0.846402,
		0.685860, 0.604040, 0.405871,
		0.497186, -0.796199, 0.344779,
		46.548203, 41.549454, 44.429237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.476250, 42.852661, 44.329063>,  <46.200172, 42.106796, 44.187889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.476250, 42.852661, 44.329063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.356903, 43.111229, 44.048172>,  <46.285297, 43.266369, 43.879639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.356903, 43.111229, 44.048172>,  <46.476250, 42.852661, 44.329063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.356903, 43.111229, 44.048172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070823, 0.748705, 0.659109,
		0.951821, 0.146919, -0.269167,
		-0.298363, 0.646417, -0.702228,
		46.267395, 43.305153, 43.837505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.937271, 43.403152, 44.347298>,  <46.476250, 42.852661, 44.329063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.937271, 43.403152, 44.347298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.594749, 43.528816, 44.183323>,  <46.389236, 43.604214, 44.084938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.594749, 43.528816, 44.183323>,  <46.937271, 43.403152, 44.347298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594749, 43.528816, 44.183323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010525, 0.804175, 0.594299,
		0.516367, 0.504585, -0.691923,
		-0.856302, 0.314159, -0.409939,
		46.337860, 43.623062, 44.060341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.111076, 44.117790, 44.230747>,  <46.937271, 43.403152, 44.347298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.111076, 44.117790, 44.230747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.715828, 44.064354, 44.261143>,  <46.478680, 44.032291, 44.279381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.715828, 44.064354, 44.261143>,  <47.111076, 44.117790, 44.230747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.715828, 44.064354, 44.261143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063869, 0.806665, 0.587547,
		-0.139789, 0.575713, -0.805614,
		-0.988119, -0.133586, 0.075993,
		46.419392, 44.024277, 44.283939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.799149, 44.770306, 44.473606>,  <47.111076, 44.117790, 44.230747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.799149, 44.770306, 44.473606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.479027, 44.532776, 44.506805>,  <46.286953, 44.390259, 44.526726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.479027, 44.532776, 44.506805>,  <46.799149, 44.770306, 44.473606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479027, 44.532776, 44.506805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384516, 0.614491, 0.688875,
		-0.460071, 0.519395, -0.720114,
		-0.800301, -0.593827, 0.082994,
		46.238937, 44.354630, 44.531704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208111, 45.211964, 44.404705>,  <46.799149, 44.770306, 44.473606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208111, 45.211964, 44.404705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106781, 44.881195, 44.605515>,  <46.045982, 44.682735, 44.726002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106781, 44.881195, 44.605515>,  <46.208111, 45.211964, 44.404705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106781, 44.881195, 44.605515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367086, 0.562309, 0.740983,
		-0.895027, 0.003425, -0.445999,
		-0.253327, -0.826920, 0.502025,
		46.030785, 44.633118, 44.756123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444916, 45.334515, 44.619301>,  <46.208111, 45.211964, 44.404705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444916, 45.334515, 44.619301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.634590, 45.060326, 44.840305>,  <45.748394, 44.895813, 44.972908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.634590, 45.060326, 44.840305>,  <45.444916, 45.334515, 44.619301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634590, 45.060326, 44.840305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304197, 0.461344, 0.833442,
		-0.826201, -0.563283, 0.010246,
		0.474190, -0.685474, 0.552512,
		45.776848, 44.854683, 45.006058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927803, 45.196934, 45.139862>,  <45.444916, 45.334515, 44.619301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927803, 45.196934, 45.139862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293846, 45.097488, 45.266842>,  <45.513470, 45.037819, 45.343029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293846, 45.097488, 45.266842>,  <44.927803, 45.196934, 45.139862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293846, 45.097488, 45.266842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185265, 0.440011, 0.878674,
		-0.358134, -0.862890, 0.356596,
		0.915105, -0.248618, 0.317446,
		45.568378, 45.022903, 45.362076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.760044, 45.252956, 45.856136>,  <44.927803, 45.196934, 45.139862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.760044, 45.252956, 45.856136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.143509, 45.142395, 45.883156>,  <45.373589, 45.076057, 45.899368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.143509, 45.142395, 45.883156>,  <44.760044, 45.252956, 45.856136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143509, 45.142395, 45.883156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001081, 0.240947, 0.970538,
		-0.284538, -0.930347, 0.231286,
		0.958665, -0.276405, 0.067552,
		45.431107, 45.059475, 45.903423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768261, 44.657692, 46.295475>,  <44.760044, 45.252956, 45.856136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768261, 44.657692, 46.295475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.112621, 44.861183, 46.297840>,  <45.319237, 44.983280, 46.299259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.112621, 44.861183, 46.297840>,  <44.768261, 44.657692, 46.295475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112621, 44.861183, 46.297840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019411, 0.021235, 0.999586,
		0.508395, -0.860664, 0.028156,
		0.860905, 0.508731, 0.005910,
		45.370892, 45.013802, 46.299614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267803, 44.288975, 46.724640>,  <44.768261, 44.657692, 46.295475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267803, 44.288975, 46.724640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385826, 44.671165, 46.725353>,  <45.456638, 44.900478, 46.725780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385826, 44.671165, 46.725353>,  <45.267803, 44.288975, 46.724640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385826, 44.671165, 46.725353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012774, 0.002080, 0.999916,
		0.955394, -0.295055, 0.012819,
		0.295057, 0.955478, 0.001781,
		45.474342, 44.957809, 46.725887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679089, 44.324631, 47.362839>,  <45.267803, 44.288975, 46.724640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679089, 44.324631, 47.362839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621635, 44.712158, 47.282089>,  <45.587162, 44.944675, 47.233639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621635, 44.712158, 47.282089>,  <45.679089, 44.324631, 47.362839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621635, 44.712158, 47.282089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129144, 0.183894, 0.974425,
		0.981168, 0.166032, 0.098705,
		-0.143634, 0.968822, -0.201873,
		45.578545, 45.002804, 47.221527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.088207, 44.730892, 47.853939>,  <45.679089, 44.324631, 47.362839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.088207, 44.730892, 47.853939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.800911, 44.983803, 47.737766>,  <45.628532, 45.135551, 47.668060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.800911, 44.983803, 47.737766>,  <46.088207, 44.730892, 47.853939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800911, 44.983803, 47.737766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160930, 0.255141, 0.953417,
		0.676927, 0.731524, -0.081500,
		-0.718242, 0.632278, -0.290436,
		45.585438, 45.173485, 47.650635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.202847, 45.402546, 48.171406>,  <46.088207, 44.730892, 47.853939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.202847, 45.402546, 48.171406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811569, 45.371986, 48.094154>,  <45.576801, 45.353649, 48.047802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811569, 45.371986, 48.094154>,  <46.202847, 45.402546, 48.171406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811569, 45.371986, 48.094154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204854, 0.201720, 0.957781,
		-0.034215, 0.976459, -0.212972,
		-0.978194, -0.076399, -0.193130,
		45.518112, 45.349068, 48.036217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918839, 45.869465, 48.560265>,  <46.202847, 45.402546, 48.171406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918839, 45.869465, 48.560265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.600121, 45.642960, 48.475910>,  <45.408890, 45.507057, 48.425297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.600121, 45.642960, 48.475910>,  <45.918839, 45.869465, 48.560265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600121, 45.642960, 48.475910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391263, 0.217538, 0.894198,
		-0.460475, 0.795000, -0.394890,
		-0.796791, -0.566262, -0.210883,
		45.361084, 45.473080, 48.412643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.023617, 46.533947, 48.515686>,  <45.918839, 45.869465, 48.560265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.023617, 46.533947, 48.515686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.356812, 46.679787, 48.682152>,  <46.556728, 46.767292, 48.782032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.356812, 46.679787, 48.682152>,  <46.023617, 46.533947, 48.515686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.356812, 46.679787, 48.682152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448678, -0.005009, -0.893679,
		-0.323750, 0.931151, -0.167759,
		0.832991, 0.364598, 0.416166,
		46.606709, 46.789165, 48.807003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263721, 47.095760, 48.150265>,  <46.023617, 46.533947, 48.515686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263721, 47.095760, 48.150265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.581757, 46.950356, 48.344460>,  <46.772579, 46.863113, 48.460976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.581757, 46.950356, 48.344460>,  <46.263721, 47.095760, 48.150265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.581757, 46.950356, 48.344460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492594, -0.079932, -0.866581,
		0.353819, 0.928154, 0.115511,
		0.795087, -0.363513, 0.485484,
		46.820282, 46.841301, 48.490105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.871067, 47.515316, 47.916271>,  <46.263721, 47.095760, 48.150265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.871067, 47.515316, 47.916271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.977173, 47.156357, 48.057301>,  <47.040836, 46.940983, 48.141918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.977173, 47.156357, 48.057301>,  <46.871067, 47.515316, 47.916271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.977173, 47.156357, 48.057301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621136, -0.120633, -0.774362,
		0.737444, 0.424409, 0.525407,
		0.265265, -0.897399, 0.352576,
		47.056751, 46.887138, 48.163074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.652992, 47.503353, 47.823284>,  <46.871067, 47.515316, 47.916271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.652992, 47.503353, 47.823284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.574402, 47.113739, 47.868282>,  <47.527248, 46.879971, 47.895283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.574402, 47.113739, 47.868282>,  <47.652992, 47.503353, 47.823284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.574402, 47.113739, 47.868282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717084, -0.220990, -0.661025,
		0.668722, -0.049203, 0.741883,
		-0.196474, -0.974034, 0.112498,
		47.515461, 46.821529, 47.902031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.320545, 47.147957, 48.040054>,  <47.652992, 47.503353, 47.823284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.320545, 47.147957, 48.040054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.102142, 46.838936, 47.910416>,  <47.971100, 46.653522, 47.832634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.102142, 46.838936, 47.910416>,  <48.320545, 47.147957, 48.040054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.102142, 46.838936, 47.910416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724989, -0.241849, -0.644903,
		0.419838, -0.587090, 0.692143,
		-0.546010, -0.772551, -0.324096,
		47.938339, 46.607170, 47.813187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.800774, 46.560993, 48.036575>,  <48.320545, 47.147957, 48.040054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.800774, 46.560993, 48.036575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.504387, 46.471107, 47.783447>,  <48.326553, 46.417175, 47.631569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.504387, 46.471107, 47.783447>,  <48.800774, 46.560993, 48.036575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.504387, 46.471107, 47.783447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670277, -0.305206, -0.676445,
		-0.041134, -0.925393, 0.376770,
		-0.740970, -0.224715, -0.632824,
		48.282097, 46.403694, 47.593601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.982437, 45.882080, 47.797890>,  <48.800774, 46.560993, 48.036575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.982437, 45.882080, 47.797890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.719299, 46.022430, 47.531319>,  <48.561417, 46.106640, 47.371376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.719299, 46.022430, 47.531319>,  <48.982437, 45.882080, 47.797890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.719299, 46.022430, 47.531319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484187, -0.480734, -0.731066,
		-0.576887, -0.803604, 0.146360,
		-0.657848, 0.350877, -0.666424,
		48.521946, 46.127693, 47.331390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.799095, 45.286812, 47.340160>,  <48.982437, 45.882080, 47.797890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.799095, 45.286812, 47.340160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.685471, 45.590652, 47.106133>,  <48.617294, 45.772957, 46.965717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.685471, 45.590652, 47.106133>,  <48.799095, 45.286812, 47.340160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.685471, 45.590652, 47.106133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539524, -0.377797, -0.752451,
		-0.792604, -0.529403, -0.302508,
		-0.284063, 0.759606, -0.585069,
		48.600250, 45.818535, 46.930611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.599495, 45.002205, 46.634823>,  <48.799095, 45.286812, 47.340160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.599495, 45.002205, 46.634823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.703552, 45.386147, 46.592857>,  <48.765987, 45.616512, 46.567680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.703552, 45.386147, 46.592857>,  <48.599495, 45.002205, 46.634823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.703552, 45.386147, 46.592857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403460, -0.206768, -0.891329,
		-0.877237, 0.189548, -0.441052,
		0.260145, 0.959853, -0.104910,
		48.781597, 45.674103, 46.561386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.420055, 45.201168, 45.888958>,  <48.599495, 45.002205, 46.634823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.420055, 45.201168, 45.888958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.690018, 45.465591, 46.020111>,  <48.851994, 45.624245, 46.098801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.690018, 45.465591, 46.020111>,  <48.420055, 45.201168, 45.888958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.690018, 45.465591, 46.020111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508803, -0.095079, -0.855616,
		-0.534439, 0.744285, -0.400519,
		0.674903, 0.661060, 0.327880,
		48.892490, 45.663910, 46.118477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.555267, 45.653088, 45.300404>,  <48.420055, 45.201168, 45.888958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.555267, 45.653088, 45.300404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.864708, 45.664726, 45.553604>,  <49.050373, 45.671707, 45.705524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.864708, 45.664726, 45.553604>,  <48.555267, 45.653088, 45.300404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.864708, 45.664726, 45.553604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633673, -0.035857, -0.772770,
		0.000216, 0.998933, -0.046174,
		0.773601, 0.029092, 0.633005,
		49.096786, 45.673454, 45.743507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.895184, 46.244282, 45.047775>,  <48.555267, 45.653088, 45.300404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.895184, 46.244282, 45.047775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.127563, 46.012108, 45.276020>,  <49.266991, 45.872803, 45.412968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<49.127563, 46.012108, 45.276020>,  <48.895184, 46.244282, 45.047775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.127563, 46.012108, 45.276020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555468, -0.229692, -0.799185,
		0.594937, 0.781242, 0.188972,
		0.580952, -0.580433, 0.570608,
		49.301849, 45.837978, 45.447201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.804089, 47.944386, 51.554745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083511, 47.757431, 51.771477>,  <45.251163, 47.645260, 51.901516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083511, 47.757431, 51.771477>,  <44.804089, 47.944386, 51.554745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083511, 47.757431, 51.771477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594902, -0.041439, -0.802729,
		0.397635, 0.883083, 0.249100,
		0.698554, -0.467384, 0.541825,
		45.293079, 47.617214, 51.934025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472801, 48.320877, 51.394470>,  <44.804089, 47.944386, 51.554745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472801, 48.320877, 51.394470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550529, 47.952888, 51.530643>,  <45.597164, 47.732094, 51.612347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550529, 47.952888, 51.530643>,  <45.472801, 48.320877, 51.394470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550529, 47.952888, 51.530643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684398, -0.121474, -0.718918,
		0.702737, 0.372690, 0.606022,
		0.194317, -0.919971, 0.340433,
		45.608826, 47.676899, 51.632774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.180054, 48.277630, 51.221638>,  <45.472801, 48.320877, 51.394470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.180054, 48.277630, 51.221638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019821, 47.916298, 51.282997>,  <45.923679, 47.699501, 51.319813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019821, 47.916298, 51.282997>,  <46.180054, 48.277630, 51.221638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019821, 47.916298, 51.282997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645994, -0.397171, -0.651880,
		0.649787, -0.162037, 0.742645,
		-0.400585, -0.903327, 0.153402,
		45.899647, 47.645298, 51.329018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.716587, 47.824284, 51.270992>,  <46.180054, 48.277630, 51.221638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.716587, 47.824284, 51.270992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.411720, 47.576134, 51.196972>,  <46.228802, 47.427246, 51.152561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.411720, 47.576134, 51.196972>,  <46.716587, 47.824284, 51.270992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.411720, 47.576134, 51.196972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535921, -0.444265, -0.717926,
		0.363168, -0.646351, 0.671073,
		-0.762166, -0.620370, -0.185050,
		46.183071, 47.390022, 51.141457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.083141, 47.186401, 51.128849>,  <46.716587, 47.824284, 51.270992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.083141, 47.186401, 51.128849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.718758, 47.175613, 50.964203>,  <46.500126, 47.169140, 50.865417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.718758, 47.175613, 50.964203>,  <47.083141, 47.186401, 51.128849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.718758, 47.175613, 50.964203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395548, -0.340188, -0.853120,
		-0.117017, -0.939970, 0.320566,
		-0.910961, -0.026970, -0.411611,
		46.445469, 47.167522, 50.840721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.952721, 46.477291, 50.987087>,  <47.083141, 47.186401, 51.128849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.952721, 46.477291, 50.987087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.710854, 46.701660, 50.760906>,  <46.565731, 46.836281, 50.625198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.710854, 46.701660, 50.760906>,  <46.952721, 46.477291, 50.987087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.710854, 46.701660, 50.760906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337225, -0.462870, -0.819775,
		-0.721562, -0.686380, 0.090728,
		-0.604672, 0.560922, -0.565454,
		46.529453, 46.869938, 50.591270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747818, 46.111275, 50.489773>,  <46.952721, 46.477291, 50.987087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747818, 46.111275, 50.489773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.651604, 46.461700, 50.322605>,  <46.593876, 46.671955, 50.222305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.651604, 46.461700, 50.322605>,  <46.747818, 46.111275, 50.489773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.651604, 46.461700, 50.322605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361572, -0.318701, -0.876182,
		-0.900782, -0.361862, -0.240101,
		-0.240537, 0.876063, -0.417919,
		46.579441, 46.724518, 50.197227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.410378, 45.969631, 49.789665>,  <46.747818, 46.111275, 50.489773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.410378, 45.969631, 49.789665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.433685, 46.366219, 49.743034>,  <46.447670, 46.604172, 49.715057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.433685, 46.366219, 49.743034>,  <46.410378, 45.969631, 49.789665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.433685, 46.366219, 49.743034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296749, -0.128695, -0.946244,
		-0.953176, 0.020542, -0.301717,
		0.058267, 0.991471, -0.116573,
		46.451164, 46.663658, 49.708061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983185, 46.207523, 49.214680>,  <46.410378, 45.969631, 49.789665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983185, 46.207523, 49.214680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.275391, 46.474205, 49.273827>,  <46.450714, 46.634212, 49.309315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.275391, 46.474205, 49.273827>,  <45.983185, 46.207523, 49.214680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.275391, 46.474205, 49.273827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336848, -0.163431, -0.927267,
		-0.594044, 0.727186, -0.343965,
		0.730510, 0.666701, 0.147866,
		46.494545, 46.674217, 49.318188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318188, 46.158401, 48.868977>,  <45.983185, 46.207523, 49.214680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318188, 46.158401, 48.868977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148232, 45.807213, 48.780762>,  <45.046257, 45.596500, 48.727833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148232, 45.807213, 48.780762>,  <45.318188, 46.158401, 48.868977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148232, 45.807213, 48.780762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593185, 0.086003, 0.800459,
		-0.683811, 0.470928, -0.557341,
		-0.424892, -0.877969, -0.220538,
		45.020763, 45.543823, 48.714600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604782, 46.241180, 48.923340>,  <45.318188, 46.158401, 48.868977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604782, 46.241180, 48.923340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689026, 45.856308, 48.992458>,  <44.739571, 45.625385, 49.033932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689026, 45.856308, 48.992458>,  <44.604782, 46.241180, 48.923340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689026, 45.856308, 48.992458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476918, 0.053172, 0.877338,
		-0.853342, -0.267186, -0.447681,
		0.210609, -0.962177, 0.172800,
		44.752209, 45.567654, 49.044300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001114, 45.983929, 49.232040>,  <44.604782, 46.241180, 48.923340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001114, 45.983929, 49.232040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268349, 45.723312, 49.375793>,  <44.428688, 45.566944, 49.462044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268349, 45.723312, 49.375793>,  <44.001114, 45.983929, 49.232040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268349, 45.723312, 49.375793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603514, -0.191964, 0.773900,
		-0.435240, -0.733923, -0.521463,
		0.668085, -0.651542, 0.359382,
		44.468773, 45.527851, 49.483608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615685, 45.471851, 49.455681>,  <44.001114, 45.983929, 49.232040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615685, 45.471851, 49.455681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963032, 45.384331, 49.633694>,  <44.171440, 45.331818, 49.740501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963032, 45.384331, 49.633694>,  <43.615685, 45.471851, 49.455681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963032, 45.384331, 49.633694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492417, -0.274062, 0.826084,
		-0.058784, -0.936491, -0.345731,
		0.868372, -0.218804, 0.445034,
		44.223545, 45.318691, 49.767204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580849, 44.865391, 49.749332>,  <43.615685, 45.471851, 49.455681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580849, 44.865391, 49.749332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887085, 45.010452, 49.961880>,  <44.070827, 45.097488, 50.089409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887085, 45.010452, 49.961880>,  <43.580849, 44.865391, 49.749332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887085, 45.010452, 49.961880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484192, -0.219033, 0.847103,
		0.423591, -0.905819, 0.007904,
		0.765590, 0.362653, 0.531371,
		44.116760, 45.119247, 50.121292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767178, 44.322598, 50.248001>,  <43.580849, 44.865391, 49.749332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767178, 44.322598, 50.248001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875702, 44.676926, 50.398575>,  <43.940819, 44.889523, 50.488918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875702, 44.676926, 50.398575>,  <43.767178, 44.322598, 50.248001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875702, 44.676926, 50.398575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396467, -0.253526, 0.882348,
		0.877042, -0.388638, 0.282415,
		0.271315, 0.885824, 0.376436,
		43.957096, 44.942673, 50.511505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985371, 44.157383, 50.922680>,  <43.767178, 44.322598, 50.248001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985371, 44.157383, 50.922680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952950, 44.555626, 50.941414>,  <43.933495, 44.794571, 50.952652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952950, 44.555626, 50.941414>,  <43.985371, 44.157383, 50.922680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952950, 44.555626, 50.941414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379283, -0.074261, 0.922296,
		0.921724, 0.056994, 0.383636,
		-0.081055, 0.995609, 0.046831,
		43.928635, 44.854309, 50.955463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090324, 44.389301, 51.691154>,  <43.985371, 44.157383, 50.922680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090324, 44.389301, 51.691154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914963, 44.712311, 51.533318>,  <43.809746, 44.906116, 51.438618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914963, 44.712311, 51.533318>,  <44.090324, 44.389301, 51.691154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914963, 44.712311, 51.533318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408648, 0.211934, 0.887745,
		0.800506, 0.550438, 0.237083,
		-0.438402, 0.807528, -0.394590,
		43.783443, 44.954571, 51.414940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205925, 44.949081, 52.200855>,  <44.090324, 44.389301, 51.691154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205925, 44.949081, 52.200855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896488, 45.044724, 51.966118>,  <43.710827, 45.102108, 51.825275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896488, 45.044724, 51.966118>,  <44.205925, 44.949081, 52.200855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896488, 45.044724, 51.966118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492519, 0.355842, 0.794230,
		0.398732, 0.903440, -0.157510,
		-0.773587, 0.239108, -0.586847,
		43.664413, 45.116455, 51.790062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954632, 45.658558, 52.411591>,  <44.205925, 44.949081, 52.200855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954632, 45.658558, 52.411591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675991, 45.427620, 52.241222>,  <43.508804, 45.289055, 52.139000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675991, 45.427620, 52.241222>,  <43.954632, 45.658558, 52.411591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675991, 45.427620, 52.241222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611921, 0.168186, 0.772830,
		-0.374559, 0.798988, -0.470451,
		-0.696605, -0.577349, -0.425922,
		43.467010, 45.254414, 52.113445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327148, 45.945782, 52.623875>,  <43.954632, 45.658558, 52.411591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327148, 45.945782, 52.623875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201424, 45.585167, 52.504925>,  <43.125988, 45.368797, 52.433556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201424, 45.585167, 52.504925>,  <43.327148, 45.945782, 52.623875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201424, 45.585167, 52.504925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671998, -0.009964, 0.740486,
		-0.670542, 0.432579, -0.602702,
		-0.314313, -0.901541, -0.297373,
		43.107128, 45.314705, 52.415714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605488, 45.979141, 52.691189>,  <43.327148, 45.945782, 52.623875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605488, 45.979141, 52.691189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679169, 45.587479, 52.656979>,  <42.723377, 45.352482, 52.636452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679169, 45.587479, 52.656979>,  <42.605488, 45.979141, 52.691189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679169, 45.587479, 52.656979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674210, -0.189187, 0.713898,
		-0.715201, -0.073837, -0.695008,
		0.184198, -0.979161, -0.085525,
		42.734428, 45.293732, 52.631321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963261, 45.691841, 52.778362>,  <42.605488, 45.979141, 52.691189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963261, 45.691841, 52.778362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206863, 45.386322, 52.863895>,  <42.353027, 45.203011, 52.915215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206863, 45.386322, 52.863895>,  <41.963261, 45.691841, 52.778362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206863, 45.386322, 52.863895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542833, -0.204798, 0.814488,
		-0.578308, -0.612107, -0.539337,
		0.609009, -0.763795, 0.213835,
		42.389565, 45.157185, 52.928047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561954, 45.142273, 52.901154>,  <41.963261, 45.691841, 52.778362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561954, 45.142273, 52.901154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908707, 45.087807, 53.092979>,  <42.116756, 45.055126, 53.208076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908707, 45.087807, 53.092979>,  <41.561954, 45.142273, 52.901154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908707, 45.087807, 53.092979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498482, -0.248971, 0.830379,
		0.006329, -0.958891, -0.283703,
		0.866877, -0.136166, 0.479565,
		42.168770, 45.046959, 53.236851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<49.391724, 42.546303, 56.906673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.184128, 42.848907, 56.747509>,  <49.059570, 43.030472, 56.652012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.184128, 42.848907, 56.747509>,  <49.391724, 42.546303, 56.906673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.184128, 42.848907, 56.747509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042172, -0.487604, -0.872046,
		-0.853737, -0.435805, 0.284967,
		-0.518993, 0.756516, -0.397907,
		49.028431, 43.075863, 56.628136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.989590, 42.254051, 56.412239>,  <49.391724, 42.546303, 56.906673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.989590, 42.254051, 56.412239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.970970, 42.633041, 56.285667>,  <48.959797, 42.860435, 56.209724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.970970, 42.633041, 56.285667>,  <48.989590, 42.254051, 56.412239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.970970, 42.633041, 56.285667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071613, -0.312796, -0.947117,
		-0.996346, -0.066750, -0.053290,
		-0.046551, 0.947472, -0.316433,
		48.957005, 42.917282, 56.190739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.497269, 42.263191, 55.816113>,  <48.989590, 42.254051, 56.412239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.497269, 42.263191, 55.816113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.727859, 42.587540, 55.775795>,  <48.866215, 42.782150, 55.751606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.727859, 42.587540, 55.775795>,  <48.497269, 42.263191, 55.816113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.727859, 42.587540, 55.775795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008596, -0.129364, -0.991560,
		-0.817069, 0.570744, -0.081546,
		0.576476, 0.810874, -0.100793,
		48.900803, 42.830803, 55.745556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.190346, 42.693985, 55.257572>,  <48.497269, 42.263191, 55.816113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.190346, 42.693985, 55.257572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.578636, 42.780418, 55.299538>,  <48.811611, 42.832279, 55.324715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.578636, 42.780418, 55.299538>,  <48.190346, 42.693985, 55.257572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.578636, 42.780418, 55.299538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104718, 0.012380, -0.994425,
		-0.216175, 0.976297, -0.010610,
		0.970723, 0.216081, 0.104912,
		48.869854, 42.845242, 55.331013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.224277, 43.130135, 54.689548>,  <48.190346, 42.693985, 55.257572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.224277, 43.130135, 54.689548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.602470, 43.050568, 54.792694>,  <48.829388, 43.002827, 54.854580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.602470, 43.050568, 54.792694>,  <48.224277, 43.130135, 54.689548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.602470, 43.050568, 54.792694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263445, 0.001661, -0.964673,
		0.191464, 0.980014, 0.053975,
		0.945483, -0.198920, 0.257862,
		48.886116, 42.990891, 54.870052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.613533, 43.567505, 54.228985>,  <48.224277, 43.130135, 54.689548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.613533, 43.567505, 54.228985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.864418, 43.293587, 54.377396>,  <49.014950, 43.129234, 54.466442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.864418, 43.293587, 54.377396>,  <48.613533, 43.567505, 54.228985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.864418, 43.293587, 54.377396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464645, -0.053321, -0.883890,
		0.625070, 0.726779, 0.284745,
		0.627209, -0.684799, 0.371024,
		49.052582, 43.088146, 54.488701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.251198, 43.744701, 53.942596>,  <48.613533, 43.567505, 54.228985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.251198, 43.744701, 53.942596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.289116, 43.359032, 54.041702>,  <49.311867, 43.127632, 54.101166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.289116, 43.359032, 54.041702>,  <49.251198, 43.744701, 53.942596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.289116, 43.359032, 54.041702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272936, -0.214177, -0.937888,
		0.957350, 0.156535, 0.242853,
		0.094799, -0.964171, 0.247766,
		49.317554, 43.069782, 54.116032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.889111, 43.573353, 53.693256>,  <49.251198, 43.744701, 53.942596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.889111, 43.573353, 53.693256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.697571, 43.226669, 53.749138>,  <49.582645, 43.018658, 53.782669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.697571, 43.226669, 53.749138>,  <49.889111, 43.573353, 53.693256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.697571, 43.226669, 53.749138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276250, -0.299816, -0.913124,
		0.833299, -0.398657, 0.382996,
		-0.478852, -0.866708, 0.139708,
		49.553917, 42.966656, 53.791050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.384251, 43.051720, 53.530926>,  <49.889111, 43.573353, 53.693256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.384251, 43.051720, 53.530926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<50.027603, 42.874207, 53.494987>,  <49.813614, 42.767700, 53.473423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<50.027603, 42.874207, 53.494987>,  <50.384251, 43.051720, 53.530926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<50.027603, 42.874207, 53.494987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264045, -0.348418, -0.899381,
		0.367825, -0.825629, 0.427834,
		-0.891619, -0.443782, -0.089846,
		49.760117, 42.741074, 53.468033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.481205, 42.233261, 53.504826>,  <50.384251, 43.051720, 53.530926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.481205, 42.233261, 53.504826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<50.122643, 42.346916, 53.368759>,  <49.907505, 42.415108, 53.287121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<50.122643, 42.346916, 53.368759>,  <50.481205, 42.233261, 53.504826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<50.122643, 42.346916, 53.368759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215112, -0.392130, -0.894405,
		-0.387494, -0.874938, 0.290400,
		-0.896423, 0.284108, -0.340158,
		49.853718, 42.432156, 53.266708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.186417, 41.706264, 53.094215>,  <50.481205, 42.233261, 53.504826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.186417, 41.706264, 53.094215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.973724, 42.023697, 52.975895>,  <49.846111, 42.214157, 52.904903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.973724, 42.023697, 52.975895>,  <50.186417, 41.706264, 53.094215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.973724, 42.023697, 52.975895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230335, -0.200598, -0.952211,
		-0.814992, -0.574450, -0.076126,
		-0.531727, 0.793579, -0.295801,
		49.814205, 42.261772, 52.887154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.778645, 41.492821, 52.466599>,  <50.186417, 41.706264, 53.094215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.778645, 41.492821, 52.466599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.786400, 41.891785, 52.438866>,  <49.791054, 42.131161, 52.422226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.786400, 41.891785, 52.438866>,  <49.778645, 41.492821, 52.466599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.786400, 41.891785, 52.438866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152096, -0.071477, -0.985778,
		-0.988176, 0.008568, -0.153087,
		0.019388, 0.997405, -0.069329,
		49.792217, 42.191006, 52.418068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.351051, 41.613647, 51.849155>,  <49.778645, 41.492821, 52.466599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.351051, 41.613647, 51.849155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.576294, 41.938568, 51.909908>,  <49.711441, 42.133522, 51.946362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.576294, 41.938568, 51.909908>,  <49.351051, 41.613647, 51.849155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.576294, 41.938568, 51.909908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198598, 0.045388, -0.979030,
		-0.802165, 0.581464, -0.135764,
		0.563108, 0.812305, 0.151887,
		49.745228, 42.182259, 51.955475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.063091, 42.109253, 51.408535>,  <49.351051, 41.613647, 51.849155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.063091, 42.109253, 51.408535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.446564, 42.210808, 51.459873>,  <49.676647, 42.271740, 51.490677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<49.446564, 42.210808, 51.459873>,  <49.063091, 42.109253, 51.408535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.446564, 42.210808, 51.459873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080063, 0.192148, -0.978095,
		-0.272986, 0.947957, 0.163882,
		0.958681, 0.253885, 0.128350,
		49.734169, 42.286972, 51.498379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.437855, 42.391262, 51.131660>,  <49.063091, 42.109253, 51.408535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.437855, 42.391262, 51.131660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.191681, 42.105042, 50.999462>,  <48.043976, 41.933308, 50.920143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.191681, 42.105042, 50.999462>,  <48.437855, 42.391262, 51.131660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.191681, 42.105042, 50.999462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299280, -0.175765, 0.937837,
		-0.729162, 0.676085, -0.105980,
		-0.615430, -0.715553, -0.330500,
		48.007053, 41.890377, 50.900311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.788383, 42.549553, 51.261387>,  <48.437855, 42.391262, 51.131660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.788383, 42.549553, 51.261387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.767624, 42.151581, 51.226917>,  <47.755169, 41.912800, 51.206234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.767624, 42.151581, 51.226917>,  <47.788383, 42.549553, 51.261387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.767624, 42.151581, 51.226917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537264, -0.044925, 0.842217,
		-0.841816, 0.090011, -0.532207,
		-0.051899, -0.994927, -0.086179,
		47.752052, 41.853104, 51.201065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.069317, 42.327911, 51.394711>,  <47.788383, 42.549553, 51.261387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.069317, 42.327911, 51.394711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.292221, 42.000015, 51.447617>,  <47.425964, 41.803280, 51.479362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.292221, 42.000015, 51.447617>,  <47.069317, 42.327911, 51.394711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.292221, 42.000015, 51.447617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541176, -0.237742, 0.806602,
		-0.629758, -0.521063, -0.576106,
		0.557256, -0.819739, 0.132266,
		47.459396, 41.754093, 51.487297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610531, 41.889969, 51.618511>,  <47.069317, 42.327911, 51.394711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.610531, 41.889969, 51.618511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.964005, 41.737656, 51.727406>,  <47.176086, 41.646267, 51.792744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.964005, 41.737656, 51.727406>,  <46.610531, 41.889969, 51.618511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964005, 41.737656, 51.727406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376837, -0.233706, 0.896312,
		-0.277683, -0.894640, -0.350017,
		0.883678, -0.380789, 0.272237,
		47.229107, 41.623421, 51.809078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.396633, 41.305130, 51.921955>,  <46.610531, 41.889969, 51.618511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.396633, 41.305130, 51.921955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.764122, 41.379028, 52.061569>,  <46.984615, 41.423367, 52.145336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.764122, 41.379028, 52.061569>,  <46.396633, 41.305130, 51.921955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764122, 41.379028, 52.061569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297395, -0.257846, 0.919278,
		0.259829, -0.948359, -0.181946,
		0.918720, 0.184745, 0.349033,
		47.039738, 41.434452, 52.166279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413242, 40.863049, 52.563885>,  <46.396633, 41.305130, 51.921955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.413242, 40.863049, 52.563885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.700241, 41.140640, 52.587830>,  <46.872440, 41.307198, 52.602196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.700241, 41.140640, 52.587830>,  <46.413242, 40.863049, 52.563885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700241, 41.140640, 52.587830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158938, 0.079441, 0.984087,
		0.678185, -0.715595, 0.167299,
		0.717498, 0.693983, 0.059860,
		46.915489, 41.348835, 52.605789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.784355, 40.615238, 53.133945>,  <46.413242, 40.863049, 52.563885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.784355, 40.615238, 53.133945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.885849, 41.001076, 53.105186>,  <46.946747, 41.232578, 53.087933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.885849, 41.001076, 53.105186>,  <46.784355, 40.615238, 53.133945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.885849, 41.001076, 53.105186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225474, 0.131267, 0.965366,
		0.940627, -0.228737, 0.250799,
		0.253736, 0.964598, -0.071899,
		46.961971, 41.290455, 53.083618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.206570, 40.718548, 53.679436>,  <46.784355, 40.615238, 53.133945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.206570, 40.718548, 53.679436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.078110, 41.086327, 53.588684>,  <47.001034, 41.306995, 53.534233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.078110, 41.086327, 53.588684>,  <47.206570, 40.718548, 53.679436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.078110, 41.086327, 53.588684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096918, 0.206405, 0.973655,
		0.942057, 0.334676, 0.022825,
		-0.321147, 0.919451, -0.226881,
		46.981766, 41.362164, 53.520618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.519180, 41.144650, 54.206665>,  <47.206570, 40.718548, 53.679436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.519180, 41.144650, 54.206665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.224579, 41.365463, 54.050293>,  <47.047817, 41.497952, 53.956470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.224579, 41.365463, 54.050293>,  <47.519180, 41.144650, 54.206665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.224579, 41.365463, 54.050293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190051, 0.385777, 0.902805,
		0.649187, 0.739215, -0.179212,
		-0.736503, 0.552030, -0.390930,
		47.003628, 41.531071, 53.933014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.584587, 41.736393, 54.510468>,  <47.519180, 41.144650, 54.206665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.584587, 41.736393, 54.510468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.204185, 41.740303, 54.386852>,  <46.975945, 41.742649, 54.312683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.204185, 41.740303, 54.386852>,  <47.584587, 41.736393, 54.510468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.204185, 41.740303, 54.386852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281498, 0.386048, 0.878479,
		0.127893, 0.922427, -0.364379,
		-0.951001, 0.009779, -0.309034,
		46.918884, 41.743237, 54.294144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.311340, 42.376812, 54.773800>,  <47.584587, 41.736393, 54.510468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.311340, 42.376812, 54.773800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.989494, 42.152618, 54.695358>,  <46.796387, 42.018101, 54.648293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.989494, 42.152618, 54.695358>,  <47.311340, 42.376812, 54.773800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.989494, 42.152618, 54.695358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401510, 0.270223, 0.875082,
		-0.437479, 0.782839, -0.442465,
		-0.804613, -0.560484, -0.196101,
		46.748112, 41.984474, 54.636528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788960, 42.777828, 54.954987>,  <47.311340, 42.376812, 54.773800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788960, 42.777828, 54.954987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.596558, 42.427216, 54.947750>,  <46.481117, 42.216846, 54.943409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.596558, 42.427216, 54.947750>,  <46.788960, 42.777828, 54.954987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596558, 42.427216, 54.947750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487498, 0.250254, 0.836492,
		-0.728683, 0.411178, -0.547680,
		-0.481006, -0.876531, -0.018093,
		46.452255, 42.164257, 54.942322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160397, 42.933090, 55.219128>,  <46.788960, 42.777828, 54.954987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160397, 42.933090, 55.219128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.195274, 42.536446, 55.257275>,  <46.216202, 42.298458, 55.280163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.195274, 42.536446, 55.257275>,  <46.160397, 42.933090, 55.219128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195274, 42.536446, 55.257275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454600, 0.045576, 0.889529,
		-0.886418, -0.120914, -0.446814,
		0.087192, -0.991616, 0.095366,
		46.221432, 42.238960, 55.285885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473148, 42.610104, 55.359192>,  <46.160397, 42.933090, 55.219128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473148, 42.610104, 55.359192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.781731, 42.410210, 55.516731>,  <45.966881, 42.290276, 55.611256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.781731, 42.410210, 55.516731>,  <45.473148, 42.610104, 55.359192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781731, 42.410210, 55.516731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356091, 0.173887, 0.918130,
		-0.527303, -0.848547, -0.043802,
		0.771460, -0.499731, 0.393851,
		46.013168, 42.260292, 55.634888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069992, 42.028816, 55.056992>,  <45.473148, 42.610104, 55.359192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069992, 42.028816, 55.056992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.675350, 42.038193, 54.992420>,  <44.438564, 42.043819, 54.953678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.675350, 42.038193, 54.992420>,  <45.069992, 42.028816, 55.056992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675350, 42.038193, 54.992420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151650, -0.232713, -0.960649,
		-0.060083, -0.972263, 0.226042,
		-0.986606, 0.023440, -0.161425,
		44.379368, 42.045223, 54.943993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.907169, 41.412033, 54.721889>,  <45.069992, 42.028816, 55.056992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.907169, 41.412033, 54.721889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.602150, 41.652550, 54.626419>,  <44.419140, 41.796860, 54.569138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.602150, 41.652550, 54.626419>,  <44.907169, 41.412033, 54.721889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602150, 41.652550, 54.626419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074787, -0.284526, -0.955747,
		-0.642596, -0.746651, 0.171996,
		-0.762547, 0.601296, -0.238675,
		44.373386, 41.832939, 54.554817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587677, 41.145988, 54.207703>,  <44.907169, 41.412033, 54.721889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587677, 41.145988, 54.207703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.449696, 41.520027, 54.175194>,  <44.366909, 41.744450, 54.155689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.449696, 41.520027, 54.175194>,  <44.587677, 41.145988, 54.207703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449696, 41.520027, 54.175194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069717, -0.060818, -0.995711,
		-0.936029, -0.349135, -0.044213,
		-0.344949, 0.935097, -0.081268,
		44.346210, 41.800556, 54.150814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094135, 41.193699, 53.617764>,  <44.587677, 41.145988, 54.207703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094135, 41.193699, 53.617764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.200100, 41.577164, 53.659309>,  <44.263680, 41.807243, 53.684238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.200100, 41.577164, 53.659309>,  <44.094135, 41.193699, 53.617764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200100, 41.577164, 53.659309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077225, 0.086278, -0.993274,
		-0.961177, 0.271147, -0.051177,
		0.264907, 0.958664, 0.103868,
		44.279572, 41.864761, 53.690468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681385, 41.412960, 53.140903>,  <44.094135, 41.193699, 53.617764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681385, 41.412960, 53.140903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.958061, 41.692795, 53.212627>,  <44.124065, 41.860695, 53.255661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.958061, 41.692795, 53.212627>,  <43.681385, 41.412960, 53.140903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958061, 41.692795, 53.212627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148621, 0.105078, -0.983296,
		-0.706741, 0.706781, -0.031292,
		0.691686, 0.699586, 0.179306,
		44.165565, 41.902672, 53.266418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474468, 41.970905, 52.761787>,  <43.681385, 41.412960, 53.140903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474468, 41.970905, 52.761787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.867424, 42.017609, 52.820137>,  <44.103199, 42.045631, 52.855148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.867424, 42.017609, 52.820137>,  <43.474468, 41.970905, 52.761787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867424, 42.017609, 52.820137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115803, 0.232212, -0.965747,
		-0.146637, 0.965631, 0.214601,
		0.982389, 0.116763, 0.145873,
		44.162140, 42.052639, 52.863899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683685, 42.599533, 52.463192>,  <43.474468, 41.970905, 52.761787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683685, 42.599533, 52.463192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.001892, 42.357170, 52.465401>,  <44.192818, 42.211754, 52.466724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.001892, 42.357170, 52.465401>,  <43.683685, 42.599533, 52.463192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001892, 42.357170, 52.465401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176355, 0.222807, -0.958778,
		0.579700, 0.763698, 0.284101,
		0.795517, -0.605907, 0.005520,
		44.240547, 42.175400, 52.467056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182854, 42.967205, 52.050236>,  <43.683685, 42.599533, 52.463192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182854, 42.967205, 52.050236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.360535, 42.609894, 52.077782>,  <44.467144, 42.395508, 52.094311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.360535, 42.609894, 52.077782>,  <44.182854, 42.967205, 52.050236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360535, 42.609894, 52.077782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198866, 0.023360, -0.979748,
		0.873575, 0.448905, 0.188018,
		0.444206, -0.893274, 0.068865,
		44.493797, 42.341911, 52.098442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778904, 43.097065, 51.725899>,  <44.182854, 42.967205, 52.050236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778904, 43.097065, 51.725899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.702354, 42.704544, 51.717720>,  <44.656425, 42.469032, 51.712811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.702354, 42.704544, 51.717720>,  <44.778904, 43.097065, 51.725899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702354, 42.704544, 51.717720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220768, -0.022734, -0.975061,
		0.956368, -0.191112, 0.220991,
		-0.191370, -0.981305, -0.020449,
		44.644943, 42.410152, 51.711586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402588, 42.902721, 51.350182>,  <44.778904, 43.097065, 51.725899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402588, 42.902721, 51.350182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.142639, 42.599319, 51.330795>,  <44.986671, 42.417278, 51.319164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.142639, 42.599319, 51.330795>,  <45.402588, 42.902721, 51.350182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142639, 42.599319, 51.330795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087389, -0.011226, -0.996111,
		0.755007, -0.651576, 0.073580,
		-0.649868, -0.758500, -0.048465,
		44.947678, 42.371769, 51.316257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700600, 42.262642, 50.931179>,  <45.402588, 42.902721, 51.350182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.700600, 42.262642, 50.931179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.301437, 42.241470, 50.916286>,  <45.061939, 42.228767, 50.907349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.301437, 42.241470, 50.916286>,  <45.700600, 42.262642, 50.931179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301437, 42.241470, 50.916286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047714, -0.213105, -0.975864,
		0.043715, -0.975595, 0.215184,
		-0.997904, -0.052927, -0.037233,
		45.002068, 42.225594, 50.905117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487648, 41.763126, 50.363041>,  <45.700600, 42.262642, 50.931179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487648, 41.763126, 50.363041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.136570, 41.943932, 50.426720>,  <44.925922, 42.052414, 50.464928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.136570, 41.943932, 50.426720>,  <45.487648, 41.763126, 50.363041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136570, 41.943932, 50.426720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151911, 0.052644, -0.986991,
		-0.454513, -0.890457, 0.022460,
		-0.877691, 0.452012, 0.159197,
		44.873264, 42.079536, 50.474480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913948, 41.369038, 50.102951>,  <45.487648, 41.763126, 50.363041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913948, 41.369038, 50.102951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.790104, 41.749374, 50.105423>,  <44.715797, 41.977577, 50.106907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.790104, 41.749374, 50.105423>,  <44.913948, 41.369038, 50.102951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790104, 41.749374, 50.105423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212631, -0.062903, -0.975106,
		-0.926783, -0.303219, 0.221654,
		-0.309614, 0.950842, 0.006176,
		44.697220, 42.034626, 50.107277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375256, 41.307014, 49.578190>,  <44.913948, 41.369038, 50.102951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375256, 41.307014, 49.578190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.452133, 41.693871, 49.644760>,  <44.498260, 41.925983, 49.684704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.452133, 41.693871, 49.644760>,  <44.375256, 41.307014, 49.578190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452133, 41.693871, 49.644760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026573, 0.164396, -0.986036,
		-0.980996, 0.193937, 0.005897,
		0.192199, 0.967141, 0.166426,
		44.509792, 41.984013, 49.694687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.468605, 44.554489, 53.360981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.783890, 44.740074, 53.522705>,  <41.973061, 44.851425, 53.619740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.783890, 44.740074, 53.522705>,  <41.468605, 44.554489, 53.360981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783890, 44.740074, 53.522705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213921, -0.409444, 0.886901,
		0.577029, -0.785554, -0.223477,
		0.788210, 0.463962, 0.404308,
		42.020351, 44.879261, 53.643997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624489, 44.084248, 53.878918>,  <41.468605, 44.554489, 53.360981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624489, 44.084248, 53.878918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.810303, 44.422813, 53.983059>,  <41.921791, 44.625954, 54.045544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.810303, 44.422813, 53.983059>,  <41.624489, 44.084248, 53.878918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810303, 44.422813, 53.983059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099934, -0.242013, 0.965113,
		0.879898, -0.474346, -0.027837,
		0.464535, 0.846419, 0.260350,
		41.949665, 44.676739, 54.061165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128643, 43.924316, 54.476246>,  <41.624489, 44.084248, 53.878918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128643, 43.924316, 54.476246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.068211, 44.319588, 54.486729>,  <42.031952, 44.556751, 54.493019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.068211, 44.319588, 54.486729>,  <42.128643, 43.924316, 54.476246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068211, 44.319588, 54.486729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033236, -0.031578, 0.998948,
		0.987962, 0.150053, 0.037614,
		-0.151083, 0.988173, 0.026211,
		42.022884, 44.616039, 54.494591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608807, 44.228756, 55.080036>,  <42.128643, 43.924316, 54.476246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608807, 44.228756, 55.080036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.317795, 44.488045, 54.990143>,  <42.143188, 44.643620, 54.936207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.317795, 44.488045, 54.990143>,  <42.608807, 44.228756, 55.080036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317795, 44.488045, 54.990143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140894, 0.179416, 0.973632,
		0.671454, 0.740008, -0.039199,
		-0.727529, 0.648226, -0.224733,
		42.099537, 44.682514, 54.922722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633106, 44.783176, 55.483574>,  <42.608807, 44.228756, 55.080036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633106, 44.783176, 55.483574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.258469, 44.843697, 55.357147>,  <42.033684, 44.880009, 55.281292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.258469, 44.843697, 55.357147>,  <42.633106, 44.783176, 55.483574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258469, 44.843697, 55.357147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287401, 0.184349, 0.939902,
		0.200473, 0.971146, -0.129177,
		-0.936595, 0.151299, -0.316065,
		41.977489, 44.889088, 55.262329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471298, 45.390884, 55.796204>,  <42.633106, 44.783176, 55.483574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471298, 45.390884, 55.796204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.131271, 45.191681, 55.727646>,  <41.927258, 45.072159, 55.686512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.131271, 45.191681, 55.727646>,  <42.471298, 45.390884, 55.796204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131271, 45.191681, 55.727646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301311, 0.192937, 0.933802,
		-0.431974, 0.845436, -0.314065,
		-0.850065, -0.498009, -0.171395,
		41.876251, 45.042278, 55.676228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935596, 45.825970, 56.002380>,  <42.471298, 45.390884, 55.796204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935596, 45.825970, 56.002380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.796371, 45.451057, 56.009922>,  <41.712837, 45.226109, 56.014446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.796371, 45.451057, 56.009922>,  <41.935596, 45.825970, 56.002380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796371, 45.451057, 56.009922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341709, 0.145570, 0.928463,
		-0.872975, 0.316724, -0.370946,
		-0.348066, -0.937281, 0.018852,
		41.691952, 45.169872, 56.015579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415512, 45.840168, 56.362888>,  <41.935596, 45.825970, 56.002380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415512, 45.840168, 56.362888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.472420, 45.445374, 56.392891>,  <41.506565, 45.208496, 56.410892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.472420, 45.445374, 56.392891>,  <41.415512, 45.840168, 56.362888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472420, 45.445374, 56.392891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188124, 0.047439, 0.980999,
		-0.971787, -0.153677, -0.178926,
		0.142269, -0.986982, 0.075011,
		41.515102, 45.149281, 56.415394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904552, 45.663998, 56.811020>,  <41.415512, 45.840168, 56.362888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904552, 45.663998, 56.811020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.147007, 45.346321, 56.828213>,  <41.292480, 45.155716, 56.838528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.147007, 45.346321, 56.828213>,  <40.904552, 45.663998, 56.811020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147007, 45.346321, 56.828213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065751, 0.003822, 0.997829,
		-0.792636, -0.607650, -0.049902,
		0.606140, -0.794196, 0.042983,
		41.328850, 45.108063, 56.841106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551918, 45.176792, 57.193684>,  <40.904552, 45.663998, 56.811020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551918, 45.176792, 57.193684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.942116, 45.092224, 57.218063>,  <41.176235, 45.041485, 57.232693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.942116, 45.092224, 57.218063>,  <40.551918, 45.176792, 57.193684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942116, 45.092224, 57.218063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074393, -0.056204, 0.995644,
		-0.207076, -0.975777, -0.070554,
		0.975492, -0.211422, 0.060952,
		41.234764, 45.028797, 57.236347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537846, 44.654209, 57.733204>,  <40.551918, 45.176792, 57.193684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537846, 44.654209, 57.733204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.918236, 44.775780, 57.710281>,  <41.146469, 44.848721, 57.696526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.918236, 44.775780, 57.710281>,  <40.537846, 44.654209, 57.733204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918236, 44.775780, 57.710281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083441, -0.073696, 0.993784,
		0.297811, -0.949842, -0.095443,
		0.950971, 0.303924, -0.057308,
		41.203526, 44.866955, 57.693089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937424, 44.149712, 58.134518>,  <40.537846, 44.654209, 57.733204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937424, 44.149712, 58.134518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.160900, 44.481163, 58.120422>,  <41.294987, 44.680035, 58.111965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.160900, 44.481163, 58.120422>,  <40.937424, 44.149712, 58.134518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160900, 44.481163, 58.120422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042307, 0.070901, 0.996586,
		0.828295, -0.555294, 0.074668,
		0.558692, 0.828626, -0.035234,
		41.328506, 44.729752, 58.109852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550518, 43.976120, 58.490993>,  <40.937424, 44.149712, 58.134518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550518, 43.976120, 58.490993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453915, 44.364082, 58.478561>,  <41.395954, 44.596859, 58.471104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453915, 44.364082, 58.478561>,  <41.550518, 43.976120, 58.490993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453915, 44.364082, 58.478561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177788, -0.012738, 0.983986,
		0.953974, 0.243163, 0.175513,
		-0.241505, 0.969902, -0.031080,
		41.381462, 44.655052, 58.469238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912209, 44.510609, 58.999447>,  <41.550518, 43.976120, 58.490993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912209, 44.510609, 58.999447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.520226, 44.565834, 58.941998>,  <41.285038, 44.598969, 58.907528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.520226, 44.565834, 58.941998>,  <41.912209, 44.510609, 58.999447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520226, 44.565834, 58.941998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124106, 0.140904, 0.982214,
		0.155846, 0.980349, -0.120945,
		-0.979954, 0.138064, -0.143626,
		41.226238, 44.607254, 58.898911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911930, 44.114147, 59.675003>,  <41.912209, 44.510609, 58.999447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911930, 44.114147, 59.675003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.162476, 43.846161, 59.834412>,  <42.312801, 43.685368, 59.930058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.162476, 43.846161, 59.834412>,  <41.911930, 44.114147, 59.675003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162476, 43.846161, 59.834412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446338, -0.110903, -0.887966,
		0.639104, 0.734060, 0.229566,
		0.626361, -0.669967, 0.398518,
		42.350384, 43.645172, 59.953968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601933, 44.367508, 59.489872>,  <41.911930, 44.114147, 59.675003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601933, 44.367508, 59.489872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.641594, 43.975945, 59.561310>,  <42.665390, 43.741005, 59.604172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.641594, 43.975945, 59.561310>,  <42.601933, 44.367508, 59.489872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641594, 43.975945, 59.561310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397804, -0.125519, -0.908844,
		0.912096, 0.161165, 0.376970,
		0.099157, -0.978913, 0.178598,
		42.671341, 43.682270, 59.614887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306553, 44.136372, 59.324249>,  <42.601933, 44.367508, 59.489872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306553, 44.136372, 59.324249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.076836, 43.809074, 59.313843>,  <42.939007, 43.612698, 59.307598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.076836, 43.809074, 59.313843>,  <43.306553, 44.136372, 59.324249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076836, 43.809074, 59.313843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532042, -0.348892, -0.771496,
		0.622193, -0.456901, 0.635702,
		-0.574289, -0.818239, -0.026013,
		42.904549, 43.563602, 59.306038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777435, 43.661404, 59.233845>,  <43.306553, 44.136372, 59.324249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777435, 43.661404, 59.233845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.428005, 43.505707, 59.116989>,  <43.218346, 43.412289, 59.046875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.428005, 43.505707, 59.116989>,  <43.777435, 43.661404, 59.233845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428005, 43.505707, 59.116989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457346, -0.451305, -0.766263,
		0.166420, -0.803001, 0.572271,
		-0.873578, -0.389247, -0.292143,
		43.165932, 43.388931, 59.029346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912445, 42.979744, 58.963474>,  <43.777435, 43.661404, 59.233845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912445, 42.979744, 58.963474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.540009, 43.008484, 58.820419>,  <43.316547, 43.025730, 58.734589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.540009, 43.008484, 58.820419>,  <43.912445, 42.979744, 58.963474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540009, 43.008484, 58.820419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311576, -0.353199, -0.882140,
		-0.189700, -0.932785, 0.306474,
		-0.931093, 0.071852, -0.357635,
		43.260681, 43.030041, 58.713127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712013, 42.368286, 58.635189>,  <43.912445, 42.979744, 58.963474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712013, 42.368286, 58.635189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.464188, 42.635254, 58.469929>,  <43.315495, 42.795437, 58.370773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.464188, 42.635254, 58.469929>,  <43.712013, 42.368286, 58.635189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464188, 42.635254, 58.469929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221612, -0.356194, -0.907752,
		-0.753015, -0.653966, 0.072775,
		-0.619561, 0.667424, -0.413146,
		43.278320, 42.835480, 58.345985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355408, 42.033398, 58.289001>,  <43.712013, 42.368286, 58.635189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355408, 42.033398, 58.289001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.332504, 42.395157, 58.119865>,  <43.318764, 42.612213, 58.018383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.332504, 42.395157, 58.119865>,  <43.355408, 42.033398, 58.289001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332504, 42.395157, 58.119865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204959, -0.403862, -0.891565,
		-0.977094, -0.137715, -0.162239,
		-0.057260, 0.904395, -0.422837,
		43.315327, 42.666477, 57.993015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919777, 42.014080, 57.690899>,  <43.355408, 42.033398, 58.289001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919777, 42.014080, 57.690899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.111343, 42.356262, 57.612061>,  <43.226284, 42.561569, 57.564758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.111343, 42.356262, 57.612061>,  <42.919777, 42.014080, 57.690899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111343, 42.356262, 57.612061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139825, -0.295981, -0.944904,
		-0.866655, 0.424969, -0.261363,
		0.478914, 0.855451, -0.197092,
		43.255016, 42.612896, 57.552933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687027, 42.204205, 57.031639>,  <42.919777, 42.014080, 57.690899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687027, 42.204205, 57.031639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.027809, 42.403824, 57.095047>,  <43.232277, 42.523594, 57.133091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.027809, 42.403824, 57.095047>,  <42.687027, 42.204205, 57.031639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027809, 42.403824, 57.095047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303998, -0.224921, -0.925741,
		-0.426336, 0.836876, -0.343332,
		0.851952, 0.499049, 0.158517,
		43.283394, 42.553539, 57.142601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654205, 42.780941, 56.508957>,  <42.687027, 42.204205, 57.031639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654205, 42.780941, 56.508957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.025665, 42.691833, 56.627602>,  <43.248543, 42.638371, 56.698788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.025665, 42.691833, 56.627602>,  <42.654205, 42.780941, 56.508957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025665, 42.691833, 56.627602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284878, -0.083853, -0.954889,
		0.237590, 0.971259, -0.014408,
		0.928652, -0.222768, 0.296613,
		43.304260, 42.625004, 56.716587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029636, 43.074051, 55.953468>,  <42.654205, 42.780941, 56.508957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029636, 43.074051, 55.953468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.278042, 42.816643, 56.132454>,  <43.427086, 42.662197, 56.239845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.278042, 42.816643, 56.132454>,  <43.029636, 43.074051, 55.953468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278042, 42.816643, 56.132454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391282, -0.240133, -0.888389,
		0.679146, 0.726787, 0.102671,
		0.621015, -0.643519, 0.447464,
		43.464348, 42.623589, 56.266693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551479, 43.203571, 55.532658>,  <43.029636, 43.074051, 55.953468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551479, 43.203571, 55.532658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.635311, 42.868248, 55.733978>,  <43.685612, 42.667053, 55.854771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.635311, 42.868248, 55.733978>,  <43.551479, 43.203571, 55.532658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635311, 42.868248, 55.733978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423859, -0.385969, -0.819372,
		0.881146, 0.385055, 0.274433,
		0.209581, -0.838308, 0.503304,
		43.698185, 42.616756, 55.884968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255928, 43.120697, 55.537838>,  <43.551479, 43.203571, 55.532658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255928, 43.120697, 55.537838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.079849, 42.762627, 55.565807>,  <43.974201, 42.547787, 55.582588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.079849, 42.762627, 55.565807>,  <44.255928, 43.120697, 55.537838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079849, 42.762627, 55.565807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487888, -0.303840, -0.818319,
		0.753785, -0.326104, 0.570494,
		-0.440197, -0.895174, 0.069928,
		43.947792, 42.494076, 55.586784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769825, 42.638546, 55.564613>,  <44.255928, 43.120697, 55.537838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769825, 42.638546, 55.564613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.447235, 42.450348, 55.421371>,  <44.253681, 42.337429, 55.335426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.447235, 42.450348, 55.421371>,  <44.769825, 42.638546, 55.564613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.447235, 42.450348, 55.421371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496891, -0.211044, -0.841760,
		0.320467, -0.856794, 0.403985,
		-0.806474, -0.470493, -0.358101,
		44.205292, 42.309200, 55.313942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.173038, 42.337749, 56.056999>,  <44.769825, 42.638546, 55.564613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.173038, 42.337749, 56.056999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.559250, 42.243858, 56.102013>,  <45.790977, 42.187523, 56.129021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.559250, 42.243858, 56.102013>,  <45.173038, 42.337749, 56.056999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559250, 42.243858, 56.102013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065906, 0.197799, 0.978024,
		-0.251832, -0.951723, 0.175510,
		0.965524, -0.234731, 0.112536,
		45.848907, 42.173439, 56.135773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150204, 41.909912, 56.601040>,  <45.173038, 42.337749, 56.056999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150204, 41.909912, 56.601040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.524490, 42.047562, 56.570023>,  <45.749062, 42.130154, 56.551414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.524490, 42.047562, 56.570023>,  <45.150204, 41.909912, 56.601040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.524490, 42.047562, 56.570023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046540, 0.338326, 0.939877,
		0.349685, -0.875844, 0.332592,
		0.935711, 0.344140, -0.077546,
		45.805206, 42.150799, 56.546761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313545, 41.726292, 57.163364>,  <45.150204, 41.909912, 56.601040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313545, 41.726292, 57.163364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.596077, 41.988487, 57.056458>,  <45.765598, 42.145805, 56.992313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.596077, 41.988487, 57.056458>,  <45.313545, 41.726292, 57.163364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596077, 41.988487, 57.056458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004215, 0.381450, 0.924380,
		0.707868, -0.651793, 0.272194,
		0.706332, 0.655486, -0.267269,
		45.807976, 42.185135, 56.976276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920204, 41.633709, 57.572376>,  <45.313545, 41.726292, 57.163364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920204, 41.633709, 57.572376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.938911, 42.009117, 57.435562>,  <45.950134, 42.234364, 57.353474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.938911, 42.009117, 57.435562>,  <45.920204, 41.633709, 57.572376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938911, 42.009117, 57.435562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119587, 0.334683, 0.934712,
		0.991722, -0.084615, -0.096583,
		0.046766, 0.938524, -0.342031,
		45.952942, 42.290676, 57.332954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.387245, 41.952415, 58.138859>,  <45.920204, 41.633709, 57.572376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.387245, 41.952415, 58.138859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.242584, 42.274460, 57.950813>,  <46.155788, 42.467686, 57.837986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.242584, 42.274460, 57.950813>,  <46.387245, 41.952415, 58.138859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242584, 42.274460, 57.950813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010807, 0.500592, 0.865616,
		0.932249, 0.318136, -0.172341,
		-0.361656, 0.805107, -0.470115,
		46.134087, 42.515991, 57.809780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.801174, 42.638683, 58.377533>,  <46.387245, 41.952415, 58.138859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.801174, 42.638683, 58.377533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.441940, 42.750977, 58.242104>,  <46.226398, 42.818352, 58.160847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.441940, 42.750977, 58.242104>,  <46.801174, 42.638683, 58.377533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441940, 42.750977, 58.242104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131441, 0.563300, 0.815730,
		0.419720, 0.777098, -0.468992,
		-0.898086, 0.280733, -0.338571,
		46.172516, 42.835197, 58.140533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.725185, 43.354221, 58.642597>,  <46.801174, 42.638683, 58.377533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.725185, 43.354221, 58.642597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.362274, 43.219299, 58.542141>,  <46.144527, 43.138348, 58.481869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.362274, 43.219299, 58.542141>,  <46.725185, 43.354221, 58.642597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.362274, 43.219299, 58.542141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394628, 0.476560, 0.785595,
		-0.145299, 0.811861, -0.565482,
		-0.907280, -0.337301, -0.251139,
		46.090092, 43.118111, 58.466801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.871147, 44.143749, 58.400177>,  <46.725185, 43.354221, 58.642597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.871147, 44.143749, 58.400177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.214142, 44.307274, 58.525131>,  <47.419941, 44.405388, 58.600101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.214142, 44.307274, 58.525131>,  <46.871147, 44.143749, 58.400177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.214142, 44.307274, 58.525131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466171, -0.360440, -0.807940,
		-0.217700, 0.838425, -0.499650,
		0.857491, 0.408811, 0.312382,
		47.471390, 44.429916, 58.618847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110920, 44.606293, 57.809490>,  <46.871147, 44.143749, 58.400177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110920, 44.606293, 57.809490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.418365, 44.488045, 58.036415>,  <47.602833, 44.417095, 58.172569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.418365, 44.488045, 58.036415>,  <47.110920, 44.606293, 57.809490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.418365, 44.488045, 58.036415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465193, -0.350457, -0.812881,
		0.439124, 0.888700, -0.131844,
		0.768613, -0.295622, 0.567311,
		47.648949, 44.399357, 58.206608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.677017, 44.881947, 57.541542>,  <47.110920, 44.606293, 57.809490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.677017, 44.881947, 57.541542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.834373, 44.589188, 57.764099>,  <47.928787, 44.413532, 57.897633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.834373, 44.589188, 57.764099>,  <47.677017, 44.881947, 57.541542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.834373, 44.589188, 57.764099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555910, -0.292652, -0.778022,
		0.732260, 0.615372, 0.291741,
		0.393395, -0.731896, 0.556389,
		47.952393, 44.369617, 57.931015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.426212, 44.908100, 57.585480>,  <47.677017, 44.881947, 57.541542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.426212, 44.908100, 57.585480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.333580, 44.527679, 57.667324>,  <48.278000, 44.299427, 57.716431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.333580, 44.527679, 57.667324>,  <48.426212, 44.908100, 57.585480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.333580, 44.527679, 57.667324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590066, -0.304543, -0.747714,
		0.773428, -0.052425, 0.631712,
		-0.231582, -0.951055, 0.204608,
		48.264107, 44.242363, 57.728706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.040535, 44.570553, 57.450150>,  <48.426212, 44.908100, 57.585480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.040535, 44.570553, 57.450150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.801468, 44.251884, 57.486191>,  <48.658028, 44.060684, 57.507816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<48.801468, 44.251884, 57.486191>,  <49.040535, 44.570553, 57.450150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.801468, 44.251884, 57.486191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556608, -0.493183, -0.668550,
		0.577048, -0.349418, 0.738189,
		-0.597665, -0.796667, 0.090101,
		48.622169, 44.012886, 57.513222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.522827, 43.942089, 57.523266>,  <49.040535, 44.570553, 57.450150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.522827, 43.942089, 57.523266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<49.164963, 43.802086, 57.412216>,  <48.950245, 43.718086, 57.345585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<49.164963, 43.802086, 57.412216>,  <49.522827, 43.942089, 57.523266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.164963, 43.802086, 57.412216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440891, -0.591518, -0.675072,
		0.072059, -0.726364, 0.683523,
		-0.894663, -0.350004, -0.277624,
		48.896564, 43.697086, 57.328930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.653019, 43.258446, 57.356030>,  <49.522827, 43.942089, 57.523266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.653019, 43.258446, 57.356030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<49.299034, 43.335892, 57.186630>,  <49.086643, 43.382359, 57.084991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<49.299034, 43.335892, 57.186630>,  <49.653019, 43.258446, 57.356030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.299034, 43.335892, 57.186630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257197, -0.554919, -0.791147,
		-0.388185, -0.809060, 0.441287,
		-0.884965, 0.193614, -0.423499,
		49.033546, 43.393974, 57.059582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.676300, 47.614544, 58.401787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.327133, 47.422569, 58.366749>,  <43.117634, 47.307384, 58.345726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.327133, 47.422569, 58.366749>,  <43.676300, 47.614544, 58.401787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327133, 47.422569, 58.366749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262906, -0.311516, -0.913147,
		0.410962, -0.820135, 0.398107,
		-0.872920, -0.479934, -0.087597,
		43.065258, 47.278587, 58.340469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835499, 46.999630, 58.111027>,  <43.676300, 47.614544, 58.401787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835499, 46.999630, 58.111027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.444389, 47.023582, 58.030647>,  <43.209724, 47.037952, 57.982418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.444389, 47.023582, 58.030647>,  <43.835499, 46.999630, 58.111027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444389, 47.023582, 58.030647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194233, -0.102415, -0.975594,
		-0.078991, -0.992938, 0.088509,
		-0.977770, 0.059872, -0.200952,
		43.151058, 47.041546, 57.970360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712543, 46.387970, 57.668037>,  <43.835499, 46.999630, 58.111027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712543, 46.387970, 57.668037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.400307, 46.632126, 57.614212>,  <43.212967, 46.778618, 57.581917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.400307, 46.632126, 57.614212>,  <43.712543, 46.387970, 57.668037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400307, 46.632126, 57.614212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074960, -0.122313, -0.989657,
		-0.620533, -0.782602, 0.049722,
		-0.780589, 0.610388, -0.134563,
		43.166130, 46.815243, 57.573845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446861, 46.094471, 57.151745>,  <43.712543, 46.387970, 57.668037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446861, 46.094471, 57.151745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.270195, 46.451996, 57.182819>,  <43.164196, 46.666512, 57.201466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.270195, 46.451996, 57.182819>,  <43.446861, 46.094471, 57.151745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270195, 46.451996, 57.182819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201462, 0.183183, -0.962215,
		-0.874267, -0.409328, -0.260975,
		-0.441668, 0.893809, 0.077687,
		43.137695, 46.720139, 57.206127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827534, 46.109863, 56.709785>,  <43.446861, 46.094471, 57.151745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827534, 46.109863, 56.709785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.929192, 46.495682, 56.738251>,  <42.990185, 46.727173, 56.755329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.929192, 46.495682, 56.738251>,  <42.827534, 46.109863, 56.709785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929192, 46.495682, 56.738251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075596, 0.053544, -0.995700,
		-0.964208, 0.258429, -0.059308,
		0.254142, 0.964545, 0.071163,
		43.005436, 46.785046, 56.759602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541096, 46.538387, 56.031132>,  <42.827534, 46.109863, 56.709785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541096, 46.538387, 56.031132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.817661, 46.786278, 56.179661>,  <42.983601, 46.935013, 56.268780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.817661, 46.786278, 56.179661>,  <42.541096, 46.538387, 56.031132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817661, 46.786278, 56.179661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272802, 0.251967, -0.928489,
		-0.668972, 0.743270, 0.005151,
		0.691416, 0.619728, 0.371324,
		43.025085, 46.972195, 56.291058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547077, 47.216923, 55.665890>,  <42.541096, 46.538387, 56.031132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547077, 47.216923, 55.665890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.909714, 47.191605, 55.832787>,  <43.127296, 47.176414, 55.932922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.909714, 47.191605, 55.832787>,  <42.547077, 47.216923, 55.665890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909714, 47.191605, 55.832787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420300, 0.224382, -0.879204,
		-0.037971, 0.972443, 0.230026,
		0.906590, -0.063296, 0.417238,
		43.181690, 47.172615, 55.957958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902069, 47.847153, 55.543938>,  <42.547077, 47.216923, 55.665890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902069, 47.847153, 55.543938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.194157, 47.582703, 55.612869>,  <43.369408, 47.424034, 55.654228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.194157, 47.582703, 55.612869>,  <42.902069, 47.847153, 55.543938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194157, 47.582703, 55.612869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521773, 0.376811, -0.765354,
		0.441060, 0.648790, 0.620111,
		0.730219, -0.661124, 0.172325,
		43.413223, 47.384365, 55.664566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454521, 48.166462, 55.341740>,  <42.902069, 47.847153, 55.543938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454521, 48.166462, 55.341740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.599777, 47.794151, 55.358654>,  <43.686928, 47.570766, 55.368805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.599777, 47.794151, 55.358654>,  <43.454521, 48.166462, 55.341740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599777, 47.794151, 55.358654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544066, 0.174980, -0.820594,
		0.756389, 0.320995, 0.569945,
		0.363135, -0.930776, 0.042290,
		43.708717, 47.514919, 55.371342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169964, 48.271397, 55.237560>,  <43.454521, 48.166462, 55.341740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169964, 48.271397, 55.237560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.086193, 47.893356, 55.137222>,  <44.035931, 47.666531, 55.077019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.086193, 47.893356, 55.137222>,  <44.169964, 48.271397, 55.237560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086193, 47.893356, 55.137222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629082, 0.066170, -0.774517,
		0.748597, -0.320001, 0.580691,
		-0.209422, -0.945104, -0.250842,
		44.023365, 47.609825, 55.061970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848305, 47.859634, 55.088982>,  <44.169964, 48.271397, 55.237560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848305, 47.859634, 55.088982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.573784, 47.657654, 54.879593>,  <44.409073, 47.536465, 54.753960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.573784, 47.657654, 54.879593>,  <44.848305, 47.859634, 55.088982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573784, 47.657654, 54.879593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617906, -0.025145, -0.785850,
		0.383650, -0.862784, 0.329268,
		-0.686298, -0.504948, -0.523472,
		44.367893, 47.506168, 54.722549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269436, 47.388493, 54.843468>,  <44.848305, 47.859634, 55.088982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269436, 47.388493, 54.843468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.950485, 47.375061, 54.602448>,  <44.759117, 47.367004, 54.457836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.950485, 47.375061, 54.602448>,  <45.269436, 47.388493, 54.843468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950485, 47.375061, 54.602448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602389, -0.104448, -0.791339,
		-0.036366, -0.993964, 0.103510,
		-0.797374, -0.033575, -0.602551,
		44.711273, 47.364990, 54.421680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818661, 47.156834, 55.322716>,  <45.269436, 47.388493, 54.843468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818661, 47.156834, 55.322716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.166565, 47.352699, 55.298206>,  <46.375305, 47.470219, 55.283501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.166565, 47.352699, 55.298206>,  <45.818661, 47.156834, 55.322716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.166565, 47.352699, 55.298206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075528, 0.254790, 0.964042,
		0.487668, -0.833854, 0.258589,
		0.869756, 0.489663, -0.061273,
		46.427490, 47.499599, 55.279823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267662, 46.895691, 55.796600>,  <45.818661, 47.156834, 55.322716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267662, 46.895691, 55.796600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.397926, 47.268600, 55.733597>,  <46.476086, 47.492348, 55.695793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.397926, 47.268600, 55.733597>,  <46.267662, 46.895691, 55.796600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397926, 47.268600, 55.733597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160674, 0.109600, 0.980903,
		0.931734, -0.344750, -0.114100,
		0.325661, 0.932274, -0.157511,
		46.495625, 47.548283, 55.686344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766918, 46.950386, 56.282883>,  <46.267662, 46.895691, 55.796600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766918, 46.950386, 56.282883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.709373, 47.338043, 56.202812>,  <46.674847, 47.570637, 56.154770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.709373, 47.338043, 56.202812>,  <46.766918, 46.950386, 56.282883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.709373, 47.338043, 56.202812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037609, 0.196782, 0.979726,
		0.988884, 0.148469, 0.008140,
		-0.143857, 0.969141, -0.200178,
		46.666218, 47.628784, 56.142757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.248154, 47.297066, 56.681644>,  <46.766918, 46.950386, 56.282883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.248154, 47.297066, 56.681644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.973129, 47.574196, 56.594700>,  <46.808113, 47.740475, 56.542534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.973129, 47.574196, 56.594700>,  <47.248154, 47.297066, 56.681644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.973129, 47.574196, 56.594700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067066, 0.237471, 0.969077,
		0.723019, 0.680881, -0.116812,
		-0.687565, 0.692827, -0.217360,
		46.766861, 47.782043, 56.529491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.457020, 47.975906, 56.997196>,  <47.248154, 47.297066, 56.681644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.457020, 47.975906, 56.997196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.060776, 47.994019, 56.945587>,  <46.823029, 48.004887, 56.914623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.060776, 47.994019, 56.945587>,  <47.457020, 47.975906, 56.997196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.060776, 47.994019, 56.945587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116967, 0.208134, 0.971081,
		0.070823, 0.977052, -0.200884,
		-0.990607, 0.045278, -0.129023,
		46.763592, 48.007603, 56.906879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.214924, 48.609470, 57.283539>,  <47.457020, 47.975906, 56.997196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.214924, 48.609470, 57.283539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.886642, 48.382874, 57.253784>,  <46.689674, 48.246918, 57.235931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.886642, 48.382874, 57.253784>,  <47.214924, 48.609470, 57.283539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.886642, 48.382874, 57.253784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217878, 0.189950, 0.957313,
		-0.528177, 0.801879, -0.279319,
		-0.820706, -0.566488, -0.074384,
		46.640430, 48.212929, 57.231468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747272, 48.901817, 57.686829>,  <47.214924, 48.609470, 57.283539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747272, 48.901817, 57.686829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.592491, 48.535599, 57.642941>,  <46.499622, 48.315868, 57.616608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.592491, 48.535599, 57.642941>,  <46.747272, 48.901817, 57.686829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.592491, 48.535599, 57.642941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397760, 0.058376, 0.915631,
		-0.831899, 0.397948, -0.386757,
		-0.386951, -0.915549, -0.109725,
		46.476406, 48.260933, 57.610023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101864, 48.944344, 57.873253>,  <46.747272, 48.901817, 57.686829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101864, 48.944344, 57.873253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.182350, 48.554161, 57.909023>,  <46.230640, 48.320053, 57.930485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.182350, 48.554161, 57.909023>,  <46.101864, 48.944344, 57.873253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182350, 48.554161, 57.909023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195904, 0.049378, 0.979379,
		-0.959757, -0.214585, -0.181160,
		0.201215, -0.975456, 0.089429,
		46.242714, 48.261524, 57.935852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405537, 48.635246, 58.146107>,  <46.101864, 48.944344, 57.873253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405537, 48.635246, 58.146107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.707436, 48.382950, 58.218239>,  <45.888577, 48.231571, 58.261517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.707436, 48.382950, 58.218239>,  <45.405537, 48.635246, 58.146107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707436, 48.382950, 58.218239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297467, -0.084056, 0.951025,
		-0.584691, -0.771429, -0.251066,
		0.754751, -0.630740, 0.180328,
		45.933861, 48.193729, 58.272339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042137, 48.110901, 58.421917>,  <45.405537, 48.635246, 58.146107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042137, 48.110901, 58.421917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.432304, 48.075096, 58.502464>,  <45.666405, 48.053612, 58.550793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.432304, 48.075096, 58.502464>,  <45.042137, 48.110901, 58.421917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432304, 48.075096, 58.502464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219854, -0.333091, 0.916905,
		-0.015000, -0.938636, -0.344582,
		0.975417, -0.089511, 0.201367,
		45.724930, 48.048244, 58.562874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153133, 47.426025, 58.664425>,  <45.042137, 48.110901, 58.421917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153133, 47.426025, 58.664425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.463669, 47.629761, 58.812946>,  <45.649990, 47.752003, 58.902058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.463669, 47.629761, 58.812946>,  <45.153133, 47.426025, 58.664425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463669, 47.629761, 58.812946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275908, -0.255036, 0.926731,
		0.566720, -0.821904, -0.057463,
		0.776339, 0.509343, 0.371304,
		45.696571, 47.782562, 58.924339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497528, 46.975677, 59.129528>,  <45.153133, 47.426025, 58.664425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497528, 46.975677, 59.129528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.624794, 47.339767, 59.235558>,  <45.701153, 47.558220, 59.299175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.624794, 47.339767, 59.235558>,  <45.497528, 46.975677, 59.129528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624794, 47.339767, 59.235558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172407, -0.219385, 0.960284,
		0.932227, -0.351228, 0.087129,
		0.318164, 0.910225, 0.265071,
		45.720242, 47.612835, 59.315079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951488, 46.871853, 59.643284>,  <45.497528, 46.975677, 59.129528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951488, 46.871853, 59.643284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.841827, 47.253883, 59.688320>,  <45.776031, 47.483101, 59.715343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.841827, 47.253883, 59.688320>,  <45.951488, 46.871853, 59.643284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.841827, 47.253883, 59.688320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157693, -0.160140, 0.974417,
		0.948668, 0.249386, 0.194511,
		-0.274155, 0.955072, 0.112593,
		45.759583, 47.540405, 59.722099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.292576, 47.091347, 60.308445>,  <45.951488, 46.871853, 59.643284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.292576, 47.091347, 60.308445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.987488, 47.342857, 60.247917>,  <45.804436, 47.493763, 60.211601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.987488, 47.342857, 60.247917>,  <46.292576, 47.091347, 60.308445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.987488, 47.342857, 60.247917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352851, -0.208503, 0.912153,
		0.541992, 0.749109, 0.380895,
		-0.762719, 0.628779, -0.151317,
		45.758671, 47.531490, 60.202522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.988472, 47.013763, 60.029430>,  <46.292576, 47.091347, 60.308445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.988472, 47.013763, 60.029430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.938026, 46.713814, 60.289207>,  <46.907757, 46.533844, 60.445076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.938026, 46.713814, 60.289207>,  <46.988472, 47.013763, 60.029430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.938026, 46.713814, 60.289207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518374, -0.607997, -0.601355,
		0.845803, 0.260813, 0.465396,
		-0.126118, -0.749877, 0.649445,
		46.900192, 46.488850, 60.484039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.633842, 46.685631, 60.124554>,  <46.988472, 47.013763, 60.029430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.633842, 46.685631, 60.124554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.370995, 46.414749, 60.256969>,  <47.213284, 46.252220, 60.336418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.370995, 46.414749, 60.256969>,  <47.633842, 46.685631, 60.124554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.370995, 46.414749, 60.256969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344625, -0.660493, -0.667071,
		0.670390, -0.324264, 0.667406,
		-0.657124, -0.677202, 0.331038,
		47.173859, 46.211590, 60.356281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.067188, 46.009178, 60.238796>,  <47.633842, 46.685631, 60.124554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.067188, 46.009178, 60.238796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.685303, 45.891777, 60.219261>,  <47.456173, 45.821335, 60.207539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.685303, 45.891777, 60.219261>,  <48.067188, 46.009178, 60.238796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.685303, 45.891777, 60.219261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281920, -0.839839, -0.463887,
		0.095136, -0.456646, 0.884547,
		-0.954709, -0.293504, -0.048839,
		47.398891, 45.803726, 60.204609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.000153, 45.241959, 60.453613>,  <48.067188, 46.009178, 60.238796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.000153, 45.241959, 60.453613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.690247, 45.319496, 60.212891>,  <47.504303, 45.366020, 60.068459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.690247, 45.319496, 60.212891>,  <48.000153, 45.241959, 60.453613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.690247, 45.319496, 60.212891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212852, -0.816308, -0.536969,
		-0.595346, -0.544118, 0.591184,
		-0.774763, 0.193847, -0.601802,
		47.457817, 45.377651, 60.032349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.619766, 44.669292, 60.315552>,  <48.000153, 45.241959, 60.453613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.619766, 44.669292, 60.315552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.504364, 44.899963, 60.009819>,  <47.435123, 45.038364, 59.826378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.504364, 44.899963, 60.009819>,  <47.619766, 44.669292, 60.315552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.504364, 44.899963, 60.009819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318433, -0.695050, -0.644597,
		-0.902975, -0.429361, 0.016895,
		-0.288508, 0.576675, -0.764336,
		47.417812, 45.072968, 59.780518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.116512, 44.196083, 59.898075>,  <47.619766, 44.669292, 60.315552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.116512, 44.196083, 59.898075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.260841, 44.493195, 59.672478>,  <47.347439, 44.671463, 59.537117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.260841, 44.493195, 59.672478>,  <47.116512, 44.196083, 59.898075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.260841, 44.493195, 59.672478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234212, -0.657519, -0.716110,
		-0.902748, 0.126292, -0.411213,
		0.360819, 0.742778, -0.563995,
		47.369087, 44.716026, 59.503281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.828457, 44.123714, 59.184155>,  <47.116512, 44.196083, 59.898075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.828457, 44.123714, 59.184155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.152924, 44.354095, 59.143581>,  <47.347603, 44.492325, 59.119240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.152924, 44.354095, 59.143581>,  <46.828457, 44.123714, 59.184155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.152924, 44.354095, 59.143581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258280, -0.508423, -0.821461,
		-0.524692, 0.640144, -0.561172,
		0.811166, 0.575953, -0.101429,
		47.396275, 44.526882, 59.113152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.290211, 43.899857, 58.788643>,  <46.828457, 44.123714, 59.184155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.290211, 43.899857, 58.788643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.056686, 43.575104, 58.789871>,  <45.916573, 43.380253, 58.790607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.056686, 43.575104, 58.789871>,  <46.290211, 43.899857, 58.788643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056686, 43.575104, 58.789871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555802, 0.402421, 0.727421,
		-0.591816, 0.422972, -0.686184,
		-0.583814, -0.811882, 0.003071,
		45.881542, 43.331539, 58.790791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624592, 44.211224, 58.746151>,  <46.290211, 43.899857, 58.788643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624592, 44.211224, 58.746151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.587074, 43.840012, 58.890354>,  <45.564564, 43.617287, 58.976875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.587074, 43.840012, 58.890354>,  <45.624592, 44.211224, 58.746151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587074, 43.840012, 58.890354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684422, 0.323072, 0.653598,
		-0.723028, -0.185440, -0.665464,
		-0.093789, -0.928028, 0.360509,
		45.558937, 43.561604, 58.998508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916592, 44.145233, 59.014740>,  <45.624592, 44.211224, 58.746151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916592, 44.145233, 59.014740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.096977, 43.840981, 59.201534>,  <45.205208, 43.658428, 59.313610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.096977, 43.840981, 59.201534>,  <44.916592, 44.145233, 59.014740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096977, 43.840981, 59.201534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700485, 0.022623, 0.713309,
		-0.553129, -0.648791, -0.522608,
		0.450965, -0.760631, 0.466982,
		45.232265, 43.612793, 59.341629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456142, 43.499084, 59.100277>,  <44.916592, 44.145233, 59.014740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456142, 43.499084, 59.100277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.737579, 43.501526, 59.384506>,  <44.906441, 43.502991, 59.555042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.737579, 43.501526, 59.384506>,  <44.456142, 43.499084, 59.100277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737579, 43.501526, 59.384506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708573, 0.081503, 0.700915,
		-0.053640, -0.996654, 0.061666,
		0.703597, 0.006098, 0.710574,
		44.948658, 43.503357, 59.597679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101406, 43.161633, 59.647465>,  <44.456142, 43.499084, 59.100277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101406, 43.161633, 59.647465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.424942, 43.309219, 59.830612>,  <44.619064, 43.397770, 59.940502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.424942, 43.309219, 59.830612>,  <44.101406, 43.161633, 59.647465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424942, 43.309219, 59.830612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540599, 0.160192, 0.825888,
		0.231382, -0.915532, 0.329034,
		0.808836, 0.368971, 0.457870,
		44.667595, 43.419910, 59.967976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171520, 42.855732, 60.338142>,  <44.101406, 43.161633, 59.647465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171520, 42.855732, 60.338142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.402321, 43.180450, 60.374046>,  <44.540802, 43.375282, 60.395588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.402321, 43.180450, 60.374046>,  <44.171520, 42.855732, 60.338142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402321, 43.180450, 60.374046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323874, 0.126533, 0.937601,
		0.749783, -0.570069, 0.335929,
		0.577002, 0.811795, 0.089759,
		44.575420, 43.423988, 60.400974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406105, 42.745136, 60.962490>,  <44.171520, 42.855732, 60.338142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406105, 42.745136, 60.962490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.464581, 43.133118, 60.884693>,  <44.499668, 43.365906, 60.838017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.464581, 43.133118, 60.884693>,  <44.406105, 42.745136, 60.962490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464581, 43.133118, 60.884693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389678, 0.237170, 0.889889,
		0.909274, -0.054305, 0.412640,
		0.146192, 0.969949, -0.194491,
		44.508438, 43.424103, 60.826347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732792, 42.934669, 61.539364>,  <44.406105, 42.745136, 60.962490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732792, 42.934669, 61.539364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.557976, 43.260834, 61.387520>,  <44.453087, 43.456532, 61.296413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.557976, 43.260834, 61.387520>,  <44.732792, 42.934669, 61.539364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557976, 43.260834, 61.387520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432634, 0.179446, 0.883530,
		0.788560, 0.550368, 0.274350,
		-0.437036, 0.815410, -0.379612,
		44.426865, 43.505455, 61.273636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667057, 43.438309, 62.134590>,  <44.732792, 42.934669, 61.539364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667057, 43.438309, 62.134590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.403202, 43.569046, 61.863869>,  <44.244888, 43.647488, 61.701435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.403202, 43.569046, 61.863869>,  <44.667057, 43.438309, 62.134590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403202, 43.569046, 61.863869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657369, 0.185645, 0.730344,
		0.364349, 0.926667, 0.092396,
		-0.659633, 0.326839, -0.676802,
		44.205311, 43.667099, 61.660828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<48.869617, 42.993336, 46.233185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.472092, 42.963074, 46.200684>,  <48.233574, 42.944916, 46.181183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.472092, 42.963074, 46.200684>,  <48.869617, 42.993336, 46.233185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.472092, 42.963074, 46.200684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077135, -0.055827, 0.995457,
		-0.079848, 0.995570, 0.049647,
		-0.993818, -0.075656, -0.081251,
		48.173946, 42.940376, 46.176308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.681541, 43.405750, 46.770866>,  <48.869617, 42.993336, 46.233185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.681541, 43.405750, 46.770866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.355446, 43.186501, 46.696095>,  <48.159790, 43.054951, 46.651230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.355446, 43.186501, 46.696095>,  <48.681541, 43.405750, 46.770866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.355446, 43.186501, 46.696095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196122, -0.042408, 0.979662,
		-0.544908, 0.835318, -0.072927,
		-0.815237, -0.548128, -0.186933,
		48.110874, 43.022060, 46.640015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.251640, 43.651627, 47.172752>,  <48.681541, 43.405750, 46.770866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.251640, 43.651627, 47.172752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.094864, 43.289505, 47.107250>,  <48.000797, 43.072231, 47.067951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.094864, 43.289505, 47.107250>,  <48.251640, 43.651627, 47.172752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.094864, 43.289505, 47.107250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094331, -0.137511, 0.985998,
		-0.915143, 0.401897, -0.031502,
		-0.391938, -0.905301, -0.163754,
		47.977283, 43.017914, 47.058125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.723610, 43.577892, 47.613411>,  <48.251640, 43.651627, 47.172752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.723610, 43.577892, 47.613411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.838478, 43.203598, 47.531506>,  <47.907398, 42.979023, 47.482361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.838478, 43.203598, 47.531506>,  <47.723610, 43.577892, 47.613411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.838478, 43.203598, 47.531506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184804, -0.263879, 0.946686,
		-0.939883, -0.234020, -0.248707,
		0.287173, -0.935736, -0.204768,
		47.924629, 42.922878, 47.470074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.372223, 43.287552, 48.101460>,  <47.723610, 43.577892, 47.613411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.372223, 43.287552, 48.101460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.620590, 42.998421, 47.980141>,  <47.769611, 42.824944, 47.907349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.620590, 42.998421, 47.980141>,  <47.372223, 43.287552, 48.101460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.620590, 42.998421, 47.980141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229527, -0.537613, 0.811350,
		-0.749521, -0.434164, -0.499720,
		0.620914, -0.722823, -0.303300,
		47.806866, 42.781574, 47.889153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.066246, 42.690804, 48.231857>,  <47.372223, 43.287552, 48.101460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.066246, 42.690804, 48.231857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.453941, 42.592712, 48.223473>,  <47.686558, 42.533855, 48.218441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.453941, 42.592712, 48.223473>,  <47.066246, 42.690804, 48.231857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.453941, 42.592712, 48.223473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118294, -0.538831, 0.834067,
		-0.215834, -0.805929, -0.551265,
		0.969238, -0.245231, -0.020962,
		47.744713, 42.519142, 48.217182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.170128, 41.901943, 48.229984>,  <47.066246, 42.690804, 48.231857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.170128, 41.901943, 48.229984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.510452, 42.060204, 48.368309>,  <47.714645, 42.155159, 48.451305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.510452, 42.060204, 48.368309>,  <47.170128, 41.901943, 48.229984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.510452, 42.060204, 48.368309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126996, -0.483758, 0.865939,
		0.509902, -0.780663, -0.361337,
		0.850806, 0.395656, 0.345810,
		47.765694, 42.178902, 48.472054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.594662, 41.374134, 48.582851>,  <47.170128, 41.901943, 48.229984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.594662, 41.374134, 48.582851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.762314, 41.712860, 48.713837>,  <47.862907, 41.916096, 48.792427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.762314, 41.712860, 48.713837>,  <47.594662, 41.374134, 48.582851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.762314, 41.712860, 48.713837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113116, -0.406565, 0.906592,
		0.900851, -0.342942, -0.266194,
		0.419134, 0.846815, 0.327462,
		47.888054, 41.966904, 48.812077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.192768, 41.196983, 48.907337>,  <47.594662, 41.374134, 48.582851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.192768, 41.196983, 48.907337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.091225, 41.556686, 49.049820>,  <48.030300, 41.772511, 49.135311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.091225, 41.556686, 49.049820>,  <48.192768, 41.196983, 48.907337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.091225, 41.556686, 49.049820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137841, -0.330878, 0.933552,
		0.957369, 0.286090, -0.039959,
		-0.253858, 0.899262, 0.356207,
		48.015068, 41.826466, 49.156681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.719685, 41.384972, 49.426590>,  <48.192768, 41.196983, 48.907337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.719685, 41.384972, 49.426590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.374886, 41.571808, 49.505371>,  <48.168007, 41.683910, 49.552639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.374886, 41.571808, 49.505371>,  <48.719685, 41.384972, 49.426590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.374886, 41.571808, 49.505371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053133, -0.303131, 0.951466,
		0.504120, 0.830626, 0.236481,
		-0.861998, 0.467088, 0.196948,
		48.116287, 41.711933, 49.564457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.897877, 41.589279, 49.999954>,  <48.719685, 41.384972, 49.426590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.897877, 41.589279, 49.999954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.502655, 41.650864, 50.002308>,  <48.265522, 41.687817, 50.003719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.502655, 41.650864, 50.002308>,  <48.897877, 41.589279, 49.999954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.502655, 41.650864, 50.002308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033487, -0.251847, 0.967188,
		0.150393, 0.955442, 0.253995,
		-0.988059, 0.153964, 0.005881,
		48.206238, 41.697052, 50.004074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.829369, 41.889732, 50.615597>,  <48.897877, 41.589279, 49.999954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.829369, 41.889732, 50.615597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.444756, 41.825241, 50.526642>,  <48.213989, 41.786545, 50.473267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.444756, 41.825241, 50.526642>,  <48.829369, 41.889732, 50.615597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.444756, 41.825241, 50.526642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194593, -0.171602, 0.965757,
		-0.193871, 0.971884, 0.133627,
		-0.961534, -0.161230, -0.222390,
		48.156296, 41.776871, 50.459927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.227566, 42.464634, 50.771191>,  <48.829369, 41.889732, 50.615597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.227566, 42.464634, 50.771191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.589027, 42.464615, 50.942493>,  <49.805904, 42.464603, 51.045273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.589027, 42.464615, 50.942493>,  <49.227566, 42.464634, 50.771191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.589027, 42.464615, 50.942493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427277, 0.067654, -0.901586,
		-0.028927, 0.997709, 0.061158,
		0.903658, -0.000052, 0.428255,
		49.860126, 42.464600, 51.070969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.691540, 43.025433, 50.504162>,  <49.227566, 42.464634, 50.771191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.691540, 43.025433, 50.504162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.968056, 42.764496, 50.628464>,  <50.133965, 42.607933, 50.703045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.968056, 42.764496, 50.628464>,  <49.691540, 43.025433, 50.504162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.968056, 42.764496, 50.628464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475690, 0.087137, -0.875286,
		0.543905, 0.752902, 0.370548,
		0.691293, -0.652339, 0.310754,
		50.175442, 42.568794, 50.721691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.363499, 43.293980, 50.337734>,  <49.691540, 43.025433, 50.504162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.363499, 43.293980, 50.337734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.435234, 42.900894, 50.356125>,  <50.478275, 42.665043, 50.367157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.435234, 42.900894, 50.356125>,  <50.363499, 43.293980, 50.337734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.435234, 42.900894, 50.356125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492173, 0.049161, -0.869108,
		0.851823, 0.178492, 0.492481,
		0.179340, -0.982712, 0.045973,
		50.489037, 42.606079, 50.369915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.078011, 43.230236, 50.210430>,  <50.363499, 43.293980, 50.337734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.078011, 43.230236, 50.210430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.907516, 42.879425, 50.121754>,  <50.805222, 42.668938, 50.068550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.907516, 42.879425, 50.121754>,  <51.078011, 43.230236, 50.210430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.907516, 42.879425, 50.121754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467242, -0.003600, -0.884122,
		0.774602, -0.480426, 0.411319,
		-0.426236, -0.877028, -0.221687,
		50.779644, 42.616318, 50.055248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.572552, 43.035244, 49.758999>,  <51.078011, 43.230236, 50.210430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.572552, 43.035244, 49.758999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.291679, 42.756676, 49.699749>,  <51.123154, 42.589535, 49.664200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.291679, 42.756676, 49.699749>,  <51.572552, 43.035244, 49.758999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.291679, 42.756676, 49.699749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322310, -0.125408, -0.938290,
		0.634866, -0.706595, 0.312521,
		-0.702184, -0.696417, -0.148125,
		51.081024, 42.547752, 49.655312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.869423, 42.326981, 49.456390>,  <51.572552, 43.035244, 49.758999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.869423, 42.326981, 49.456390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.478668, 42.301651, 49.374718>,  <51.244217, 42.286453, 49.325714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.478668, 42.301651, 49.374718>,  <51.869423, 42.326981, 49.456390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.478668, 42.301651, 49.374718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211656, -0.152462, -0.965379,
		0.030001, -0.986279, 0.162341,
		-0.976884, -0.063323, -0.204178,
		51.185604, 42.282654, 49.313465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.743927, 41.729225, 48.913490>,  <51.869423, 42.326981, 49.456390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.743927, 41.729225, 48.913490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.463898, 42.014175, 48.893852>,  <51.295879, 42.185146, 48.882069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.463898, 42.014175, 48.893852>,  <51.743927, 41.729225, 48.913490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.463898, 42.014175, 48.893852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075998, 0.005964, -0.997090,
		-0.710011, -0.701772, -0.058314,
		-0.700077, 0.712377, -0.049099,
		51.253876, 42.227890, 48.879124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.260849, 41.489002, 48.383343>,  <51.743927, 41.729225, 48.913490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.260849, 41.489002, 48.383343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.164864, 41.875938, 48.416000>,  <51.107273, 42.108101, 48.435596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.164864, 41.875938, 48.416000>,  <51.260849, 41.489002, 48.383343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.164864, 41.875938, 48.416000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007529, 0.082245, -0.996584,
		-0.970752, -0.239761, -0.012453,
		-0.239966, 0.967342, 0.081645,
		51.092873, 42.166142, 48.440495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.776646, 41.542286, 47.846603>,  <51.260849, 41.489002, 48.383343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.776646, 41.542286, 47.846603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.894768, 41.914864, 47.931656>,  <50.965641, 42.138409, 47.982689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.894768, 41.914864, 47.931656>,  <50.776646, 41.542286, 47.846603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.894768, 41.914864, 47.931656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087363, 0.247953, -0.964825,
		-0.951401, 0.266339, 0.154595,
		0.295303, 0.931441, 0.212635,
		50.983360, 42.194298, 47.995445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.388935, 42.038479, 47.537666>,  <50.776646, 41.542286, 47.846603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.388935, 42.038479, 47.537666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.710060, 42.263435, 47.616879>,  <50.902733, 42.398407, 47.664406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.710060, 42.263435, 47.616879>,  <50.388935, 42.038479, 47.537666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.710060, 42.263435, 47.616879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042721, 0.277027, -0.959912,
		-0.594705, 0.779085, 0.198374,
		0.802808, 0.562390, 0.198033,
		50.950901, 42.432152, 47.676289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.318874, 42.718822, 47.182995>,  <50.388935, 42.038479, 47.537666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.318874, 42.718822, 47.182995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.710297, 42.664787, 47.245205>,  <50.945148, 42.632366, 47.282532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.710297, 42.664787, 47.245205>,  <50.318874, 42.718822, 47.182995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.710297, 42.664787, 47.245205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185526, 0.249774, -0.950365,
		0.089537, 0.958835, 0.269479,
		0.978552, -0.135088, 0.155525,
		51.003860, 42.624260, 47.291862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.658428, 43.270561, 46.855381>,  <50.318874, 42.718822, 47.182995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.658428, 43.270561, 46.855381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.938370, 42.989235, 46.905266>,  <51.106335, 42.820438, 46.935196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.938370, 42.989235, 46.905266>,  <50.658428, 43.270561, 46.855381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.938370, 42.989235, 46.905266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386634, 0.226199, -0.894063,
		0.600598, 0.673931, 0.430231,
		0.699854, -0.703315, 0.124710,
		51.148327, 42.778240, 46.942680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.279079, 43.535702, 46.576515>,  <50.658428, 43.270561, 46.855381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.279079, 43.535702, 46.576515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.386253, 43.151123, 46.601303>,  <51.450558, 42.920376, 46.616177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.386253, 43.151123, 46.601303>,  <51.279079, 43.535702, 46.576515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.386253, 43.151123, 46.601303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277120, 0.015305, -0.960713,
		0.922723, 0.274578, 0.270536,
		0.267932, -0.961443, 0.061969,
		51.466633, 42.862690, 46.619892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.154514, 43.439182, 46.556015>,  <51.279079, 43.535702, 46.576515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.154514, 43.439182, 46.556015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.921219, 43.140778, 46.427452>,  <51.781242, 42.961735, 46.350315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.921219, 43.140778, 46.427452>,  <52.154514, 43.439182, 46.556015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.921219, 43.140778, 46.427452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514670, -0.033253, -0.856743,
		0.628451, -0.665104, 0.403343,
		-0.583236, -0.746010, -0.321411,
		51.746246, 42.916973, 46.331028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.151176, 44.208275, 46.164955>,  <52.154514, 43.439182, 46.556015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.151176, 44.208275, 46.164955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.183571, 44.606316, 46.187599>,  <52.203007, 44.845142, 46.201183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.183571, 44.606316, 46.187599>,  <52.151176, 44.208275, 46.164955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<52.183571, 44.606316, 46.187599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703936, 0.016900, 0.710063,
		0.705631, -0.097355, 0.701859,
		0.080990, 0.995107, 0.056607,
		52.207867, 44.904846, 46.204582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.450062, 44.464466, 46.912605>,  <52.151176, 44.208275, 46.164955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.450062, 44.464466, 46.912605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.208199, 44.731934, 46.739510>,  <52.063080, 44.892414, 46.635651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.208199, 44.731934, 46.739510>,  <52.450062, 44.464466, 46.912605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<52.208199, 44.731934, 46.739510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485996, 0.120707, 0.865585,
		0.631027, 0.733695, 0.251984,
		-0.604659, 0.668671, -0.432742,
		52.026802, 44.932533, 46.609688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.473015, 45.195351, 47.228947>,  <52.450062, 44.464466, 46.912605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.473015, 45.195351, 47.228947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.118797, 45.124710, 47.057079>,  <51.906265, 45.082325, 46.953957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<52.118797, 45.124710, 47.057079>,  <52.473015, 45.195351, 47.228947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<52.118797, 45.124710, 47.057079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458267, 0.180491, 0.870296,
		-0.076147, 0.967592, -0.240765,
		-0.885547, -0.176605, -0.429672,
		51.853134, 45.071728, 46.928177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.096951, 45.722797, 47.469261>,  <52.473015, 45.195351, 47.228947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.096951, 45.722797, 47.469261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.826508, 45.455147, 47.345875>,  <51.664242, 45.294556, 47.271843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.826508, 45.455147, 47.345875>,  <52.096951, 45.722797, 47.469261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.826508, 45.455147, 47.345875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569186, 0.208471, 0.795341,
		-0.467875, 0.713311, -0.521805,
		-0.676106, -0.669124, -0.308469,
		51.623676, 45.254410, 47.253334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.458279, 46.008827, 47.400612>,  <52.096951, 45.722797, 47.469261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.458279, 46.008827, 47.400612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.383751, 45.622208, 47.471111>,  <51.339035, 45.390236, 47.513412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<51.383751, 45.622208, 47.471111>,  <51.458279, 46.008827, 47.400612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<51.383751, 45.622208, 47.471111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642099, 0.255572, 0.722766,
		-0.743636, 0.021492, -0.668240,
		-0.186318, -0.966551, 0.176253,
		51.327854, 45.332241, 47.523987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.814449, 45.994995, 47.650650>,  <51.458279, 46.008827, 47.400612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.814449, 45.994995, 47.650650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.930351, 45.629074, 47.763206>,  <50.999893, 45.409523, 47.830742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.930351, 45.629074, 47.763206>,  <50.814449, 45.994995, 47.650650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.930351, 45.629074, 47.763206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508513, 0.101933, 0.855000,
		-0.810838, -0.390830, -0.435653,
		0.289753, -0.914801, 0.281393,
		51.017277, 45.354633, 47.847626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.135017, 45.569626, 47.927757>,  <50.814449, 45.994995, 47.650650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.135017, 45.569626, 47.927757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.470016, 45.408020, 48.074928>,  <50.671017, 45.311058, 48.163231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.470016, 45.408020, 48.074928>,  <50.135017, 45.569626, 47.927757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.470016, 45.408020, 48.074928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455518, -0.144251, 0.878462,
		-0.301838, -0.903307, -0.304846,
		0.837494, -0.404015, 0.367932,
		50.721264, 45.286816, 48.185307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.996048, 44.938625, 48.253456>,  <50.135017, 45.569626, 47.927757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.996048, 44.938625, 48.253456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.346725, 45.044449, 48.414162>,  <50.557133, 45.107941, 48.510586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.346725, 45.044449, 48.414162>,  <49.996048, 44.938625, 48.253456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.346725, 45.044449, 48.414162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424490, 0.032559, 0.904847,
		0.226302, -0.963820, 0.140846,
		0.876696, 0.264556, 0.401764,
		50.609734, 45.123817, 48.534691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.949833, 44.701572, 48.983013>,  <49.996048, 44.938625, 48.253456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.949833, 44.701572, 48.983013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.273453, 44.936638, 48.986874>,  <50.467625, 45.077675, 48.989189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.273453, 44.936638, 48.986874>,  <49.949833, 44.701572, 48.983013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.273453, 44.936638, 48.986874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098630, 0.119569, 0.987915,
		0.579404, -0.800225, 0.154698,
		0.809051, 0.587659, 0.009647,
		50.516167, 45.112934, 48.989769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.405472, 44.447029, 49.523739>,  <49.949833, 44.701572, 48.983013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.405472, 44.447029, 49.523739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.497322, 44.827858, 49.442921>,  <50.552433, 45.056355, 49.394432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.497322, 44.827858, 49.442921>,  <50.405472, 44.447029, 49.523739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.497322, 44.827858, 49.442921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312385, 0.268702, 0.911161,
		0.921784, -0.146116, 0.359117,
		0.229630, 0.952077, -0.202041,
		50.566212, 45.113480, 49.382309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.759892, 44.739197, 50.112679>,  <50.405472, 44.447029, 49.523739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.759892, 44.739197, 50.112679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.661591, 45.079132, 49.926178>,  <50.602612, 45.283092, 49.814278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.661591, 45.079132, 49.926178>,  <50.759892, 44.739197, 50.112679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.661591, 45.079132, 49.926178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199694, 0.426297, 0.882266,
		0.948540, 0.309924, 0.064944,
		-0.245750, 0.849834, -0.466250,
		50.587864, 45.334084, 49.786304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.102634, 45.253803, 50.514977>,  <50.759892, 44.739197, 50.112679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.102634, 45.253803, 50.514977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.805252, 45.426712, 50.310852>,  <50.626823, 45.530457, 50.188377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.805252, 45.426712, 50.310852>,  <51.102634, 45.253803, 50.514977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.805252, 45.426712, 50.310852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298009, 0.468978, 0.831415,
		0.598720, 0.770197, -0.219844,
		-0.743455, 0.432269, -0.510312,
		50.582214, 45.556393, 50.157757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.080173, 45.890663, 50.705723>,  <51.102634, 45.253803, 50.514977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.080173, 45.890663, 50.705723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.710030, 45.845428, 50.560993>,  <50.487942, 45.818287, 50.474155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.710030, 45.845428, 50.560993>,  <51.080173, 45.890663, 50.705723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.710030, 45.845428, 50.560993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374694, 0.417743, 0.827705,
		0.057550, 0.901500, -0.428935,
		-0.925361, -0.113085, -0.361828,
		50.432423, 45.811504, 50.452446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.681343, 46.634979, 50.722511>,  <51.080173, 45.890663, 50.705723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.681343, 46.634979, 50.722511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.397903, 46.355713, 50.681614>,  <50.227840, 46.188152, 50.657074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.397903, 46.355713, 50.681614>,  <50.681343, 46.634979, 50.722511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.397903, 46.355713, 50.681614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409718, 0.289133, 0.865179,
		-0.574475, 0.654956, -0.490930,
		-0.708598, -0.698166, -0.102248,
		50.185326, 46.146263, 50.650940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.066338, 46.912949, 50.886486>,  <50.681343, 46.634979, 50.722511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.066338, 46.912949, 50.886486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.976486, 46.523949, 50.911098>,  <49.922577, 46.290550, 50.925865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.976486, 46.523949, 50.911098>,  <50.066338, 46.912949, 50.886486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.976486, 46.523949, 50.911098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568180, 0.182015, 0.802523,
		-0.791653, 0.145309, -0.593440,
		-0.224629, -0.972500, 0.061531,
		49.909100, 46.232197, 50.929558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.332745, 46.916645, 51.051090>,  <50.066338, 46.912949, 50.886486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.332745, 46.916645, 51.051090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.507278, 46.579262, 51.176426>,  <49.612000, 46.376831, 51.251629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.507278, 46.579262, 51.176426>,  <49.332745, 46.916645, 51.051090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.507278, 46.579262, 51.176426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520945, 0.047130, 0.852288,
		-0.733639, -0.535120, -0.418832,
		0.436337, -0.843461, 0.313344,
		49.638180, 46.326225, 51.270428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.839001, 46.565380, 51.281059>,  <49.332745, 46.916645, 51.051090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.839001, 46.565380, 51.281059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.129692, 46.367233, 51.471420>,  <49.304108, 46.248344, 51.585636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.129692, 46.367233, 51.471420>,  <48.839001, 46.565380, 51.281059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.129692, 46.367233, 51.471420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566609, -0.040600, 0.822986,
		-0.388357, -0.867736, -0.310183,
		0.726728, -0.495365, 0.475899,
		49.347710, 46.218624, 51.614189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.563541, 45.987862, 51.593201>,  <48.839001, 46.565380, 51.281059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.563541, 45.987862, 51.593201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.904640, 46.040886, 51.795288>,  <49.109299, 46.072701, 51.916542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.904640, 46.040886, 51.795288>,  <48.563541, 45.987862, 51.593201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.904640, 46.040886, 51.795288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507094, -0.021745, 0.861616,
		0.125205, -0.990936, 0.048680,
		0.852748, 0.132564, 0.505220,
		49.160465, 46.080654, 51.946854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.556126, 45.538876, 52.221237>,  <48.563541, 45.987862, 51.593201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.556126, 45.538876, 52.221237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.834152, 45.812332, 52.310246>,  <49.000969, 45.976406, 52.363651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.834152, 45.812332, 52.310246>,  <48.556126, 45.538876, 52.221237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.834152, 45.812332, 52.310246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491163, 0.225505, 0.841372,
		0.525019, -0.694102, 0.492521,
		0.695064, 0.683645, 0.222523,
		49.042671, 46.017426, 52.377003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.773041, 45.385571, 52.888111>,  <48.556126, 45.538876, 52.221237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.773041, 45.385571, 52.888111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.845894, 45.774132, 52.827183>,  <48.889606, 46.007267, 52.790627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.845894, 45.774132, 52.827183>,  <48.773041, 45.385571, 52.888111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.845894, 45.774132, 52.827183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653758, 0.235345, 0.719176,
		0.734458, -0.031405, 0.677927,
		0.182133, 0.971404, -0.152320,
		48.900536, 46.065552, 52.781487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.831951, 45.684082, 53.556683>,  <48.773041, 45.385571, 52.888111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.831951, 45.684082, 53.556683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.764534, 46.019600, 53.349602>,  <48.724083, 46.220913, 53.225353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.764534, 46.019600, 53.349602>,  <48.831951, 45.684082, 53.556683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.764534, 46.019600, 53.349602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530520, 0.365458, 0.764846,
		0.830748, 0.403557, 0.383404,
		-0.168541, 0.838798, -0.517699,
		48.713970, 46.271240, 53.194294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.987366, 46.320824, 54.012108>,  <48.831951, 45.684082, 53.556683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.987366, 46.320824, 54.012108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.735886, 46.410042, 53.714119>,  <48.584995, 46.463573, 53.535324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.735886, 46.410042, 53.714119>,  <48.987366, 46.320824, 54.012108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.735886, 46.410042, 53.714119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614721, 0.444198, 0.651771,
		0.476289, 0.867721, -0.142160,
		-0.628702, 0.223042, -0.744973,
		48.547276, 46.476955, 53.490627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.752392, 46.851738, 54.270309>,  <48.987366, 46.320824, 54.012108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.752392, 46.851738, 54.270309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.496078, 46.801598, 53.967339>,  <48.342293, 46.771515, 53.785557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.496078, 46.801598, 53.967339>,  <48.752392, 46.851738, 54.270309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.496078, 46.801598, 53.967339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723106, 0.429976, 0.540591,
		0.257912, 0.894097, -0.366158,
		-0.640780, -0.125346, -0.757423,
		48.303844, 46.763992, 53.740112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.421040, 47.511246, 54.268745>,  <48.752392, 46.851738, 54.270309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.421040, 47.511246, 54.268745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.169823, 47.258911, 54.086491>,  <48.019093, 47.107510, 53.977139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.169823, 47.258911, 54.086491>,  <48.421040, 47.511246, 54.268745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.169823, 47.258911, 54.086491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767423, 0.405093, 0.496952,
		-0.128923, 0.661772, -0.738537,
		-0.628045, -0.630839, -0.455633,
		47.981411, 47.069660, 53.949802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.860180, 47.956196, 54.009872>,  <48.421040, 47.511246, 54.268745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.860180, 47.956196, 54.009872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.748993, 47.574753, 54.056114>,  <47.682281, 47.345886, 54.083858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.748993, 47.574753, 54.056114>,  <47.860180, 47.956196, 54.009872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.748993, 47.574753, 54.056114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813015, 0.297654, 0.500409,
		-0.511604, 0.045111, -0.858037,
		-0.277972, -0.953608, 0.115605,
		47.665600, 47.288670, 54.090797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.154839, 48.012028, 53.839340>,  <47.860180, 47.956196, 54.009872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.154839, 48.012028, 53.839340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.182793, 47.678032, 54.057663>,  <47.199566, 47.477634, 54.188656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.182793, 47.678032, 54.057663>,  <47.154839, 48.012028, 53.839340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.182793, 47.678032, 54.057663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798172, 0.281389, 0.532675,
		-0.598363, -0.472876, -0.646800,
		0.069887, -0.834990, 0.545808,
		47.203758, 47.427536, 54.221405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.440544, 47.810829, 53.990597>,  <47.154839, 48.012028, 53.839340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.440544, 47.810829, 53.990597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.670158, 47.617661, 54.255104>,  <46.807926, 47.501759, 54.413807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.670158, 47.617661, 54.255104>,  <46.440544, 47.810829, 53.990597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.670158, 47.617661, 54.255104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697878, 0.133885, 0.703591,
		-0.428315, -0.865367, -0.260168,
		0.574032, -0.482924, 0.661265,
		46.842369, 47.472782, 54.453484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992626, 47.396343, 54.319130>,  <46.440544, 47.810829, 53.990597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.992626, 47.396343, 54.319130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.295906, 47.463287, 54.571198>,  <46.477875, 47.503456, 54.722439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.295906, 47.463287, 54.571198>,  <45.992626, 47.396343, 54.319130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.295906, 47.463287, 54.571198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650610, 0.257710, 0.714347,
		-0.042846, -0.951617, 0.304285,
		0.758202, 0.167364, 0.630173,
		46.523365, 47.513496, 54.760250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.431721, 46.877705, 54.326626>,  <45.992626, 47.396343, 54.319130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.431721, 46.877705, 54.326626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.127464, 47.093323, 54.181923>,  <44.944912, 47.222694, 54.095100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.127464, 47.093323, 54.181923>,  <45.431721, 46.877705, 54.326626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127464, 47.093323, 54.181923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409836, -0.033430, -0.911547,
		-0.503455, -0.841616, -0.195490,
		-0.760637, 0.539041, -0.361755,
		44.899273, 47.255035, 54.073395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220047, 46.512264, 53.730854>,  <45.431721, 46.877705, 54.326626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220047, 46.512264, 53.730854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.077209, 46.880539, 53.667835>,  <44.991505, 47.101501, 53.630024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.077209, 46.880539, 53.667835>,  <45.220047, 46.512264, 53.730854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077209, 46.880539, 53.667835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354744, -0.022352, -0.934697,
		-0.864083, -0.389666, -0.318625,
		-0.357098, 0.920685, -0.157546,
		44.970081, 47.156746, 53.620571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831974, 46.492649, 53.045910>,  <45.220047, 46.512264, 53.730854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831974, 46.492649, 53.045910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.895424, 46.879189, 53.126915>,  <44.933495, 47.111111, 53.175518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.895424, 46.879189, 53.126915>,  <44.831974, 46.492649, 53.045910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895424, 46.879189, 53.126915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332492, 0.140852, -0.932529,
		-0.929671, 0.215254, -0.298961,
		0.158622, 0.966347, 0.202516,
		44.943012, 47.169094, 53.187672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383507, 46.803383, 52.598927>,  <44.831974, 46.492649, 53.045910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383507, 46.803383, 52.598927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.679451, 47.053673, 52.697784>,  <44.857018, 47.203846, 52.757099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.679451, 47.053673, 52.697784>,  <44.383507, 46.803383, 52.598927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679451, 47.053673, 52.697784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275617, 0.053203, -0.959794,
		-0.613716, 0.778227, -0.133098,
		0.739856, 0.625725, 0.247144,
		44.901409, 47.241390, 52.771927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376305, 47.241081, 52.086277>,  <44.383507, 46.803383, 52.598927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376305, 47.241081, 52.086277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.741135, 47.308533, 52.235779>,  <44.960033, 47.349003, 52.325478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.741135, 47.308533, 52.235779>,  <44.376305, 47.241081, 52.086277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.741135, 47.308533, 52.235779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373350, 0.035308, -0.927018,
		-0.169521, 0.985047, -0.030755,
		0.912070, 0.168631, 0.373752,
		45.014755, 47.359123, 52.347904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
