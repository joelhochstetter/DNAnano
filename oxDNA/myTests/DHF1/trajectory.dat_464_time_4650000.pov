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
	<-0.500444, 1.988867, 3.275691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.632078, 1.764416, 3.579491>,  <-0.711058, 1.629745, 3.761770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.632078, 1.764416, 3.579491>,  <-0.500444, 1.988867, 3.275691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.632078, 1.764416, 3.579491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860607, -0.509258, -0.003353,
		0.388662, 0.652527, 0.650500,
		-0.329085, -0.561128, 0.759499,
		-0.730803, 1.596077, 3.807340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.056932, 1.809690, 3.815429>,  <-0.500444, 1.988867, 3.275691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.056932, 1.809690, 3.815429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.226553, 1.528717, 3.841705>,  <-0.396644, 1.360133, 3.857471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.226553, 1.528717, 3.841705>,  <0.056932, 1.809690, 3.815429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.226553, 1.528717, 3.841705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702340, -0.693677, 0.159783,
		-0.066668, 0.159378, 0.984964,
		-0.708713, -0.702432, 0.065691,
		-0.439167, 1.317987, 3.861413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.211535, 1.398100, 4.437234>,  <0.056932, 1.809690, 3.815429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.211535, 1.398100, 4.437234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.032617, 1.225899, 4.123650>,  <-0.074733, 1.122578, 3.935499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.032617, 1.225899, 4.123650>,  <0.211535, 1.398100, 4.437234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.032617, 1.225899, 4.123650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564831, -0.815592, 0.125605,
		-0.693466, -0.386623, 0.607970,
		-0.447293, -0.430503, -0.783962,
		-0.101571, 1.096748, 3.888461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.230276, 0.719287, 4.688264>,  <0.211535, 1.398100, 4.437234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.230276, 0.719287, 4.688264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.133875, 0.711483, 4.300133>,  <0.076034, 0.706801, 4.067254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.133875, 0.711483, 4.300133>,  <0.230276, 0.719287, 4.688264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.133875, 0.711483, 4.300133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340485, -0.937951, -0.065709,
		-0.908838, -0.346218, 0.232691,
		-0.241003, -0.019509, -0.970328,
		0.061574, 0.705630, 4.009034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.233249, 0.141530, 4.526465>,  <0.230276, 0.719287, 4.688264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.233249, 0.141530, 4.526465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.038059, 0.237186, 4.190681>,  <0.079054, 0.294580, 3.989211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.038059, 0.237186, 4.190681>,  <-0.233249, 0.141530, 4.526465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.038059, 0.237186, 4.190681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346331, -0.935839, -0.065277,
		-0.801210, -0.258878, -0.539486,
		0.487973, 0.239141, -0.839460,
		0.108332, 0.308929, 3.938843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.352429, -0.410665, 4.018967>,  <-0.233249, 0.141530, 4.526465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.352429, -0.410665, 4.018967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.051004, -0.201218, 3.859985>,  <0.129851, -0.075549, 3.764597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.051004, -0.201218, 3.859985>,  <-0.352429, -0.410665, 4.018967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.051004, -0.201218, 3.859985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568758, -0.822488, -0.005220,
		-0.329634, -0.222121, -0.917608,
		0.753562, 0.523617, -0.397453,
		0.175065, -0.044132, 3.740749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.036378, -0.775312, 3.387192>,  <-0.352429, -0.410665, 4.018967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.036378, -0.775312, 3.387192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.254334, -0.533325, 3.517303>,  <0.428761, -0.388133, 3.595371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.254334, -0.533325, 3.517303>,  <-0.036378, -0.775312, 3.387192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.254334, -0.533325, 3.517303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635024, -0.772295, 0.017491,
		0.261794, 0.193848, -0.945456,
		0.726780, 0.604966, 0.325280,
		0.472368, -0.351835, 3.614887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.545599, -0.876995, 2.945833>,  <-0.036378, -0.775312, 3.387192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.545599, -0.876995, 2.945833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.700408, -0.710705, 3.275047>,  <0.793293, -0.610931, 3.472576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.700408, -0.710705, 3.275047>,  <0.545599, -0.876995, 2.945833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.700408, -0.710705, 3.275047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765226, -0.642801, -0.035151,
		0.514435, 0.643412, -0.566902,
		0.387022, 0.415725, 0.823035,
		0.816514, -0.585987, 3.521958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.318087, 3.282079, 4.169004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.513824, 3.526833, 4.417564>,  <1.631267, 3.673685, 4.566700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.513824, 3.526833, 4.417564>,  <1.318087, 3.282079, 4.169004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.513824, 3.526833, 4.417564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371650, 0.790916, -0.486136,
		-0.788935, 0.006945, 0.614438,
		0.489345, 0.611885, 0.621400,
		1.660628, 3.710398, 4.603984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.909176, 3.767196, 4.719078>,  <1.318087, 3.282079, 4.169004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.909176, 3.767196, 4.719078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.222897, 3.925018, 4.527580>,  <1.411129, 4.019712, 4.412682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.222897, 3.925018, 4.527580>,  <0.909176, 3.767196, 4.719078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.222897, 3.925018, 4.527580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575662, 0.750529, -0.324530,
		0.231265, 0.530124, 0.815773,
		0.784302, 0.394557, -0.478743,
		1.458187, 4.043386, 4.383957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.978763, 4.358095, 4.846437>,  <0.909176, 3.767196, 4.719078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.978763, 4.358095, 4.846437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.130110, 4.334015, 4.476959>,  <1.220918, 4.319567, 4.255272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.130110, 4.334015, 4.476959>,  <0.978763, 4.358095, 4.846437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.130110, 4.334015, 4.476959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606959, 0.737281, -0.296676,
		0.698884, 0.672898, 0.242423,
		0.378367, -0.060201, -0.923696,
		1.243620, 4.315955, 4.199851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.238817, 5.010203, 4.641586>,  <0.978763, 4.358095, 4.846437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.238817, 5.010203, 4.641586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.140057, 4.829704, 4.298561>,  <1.080800, 4.721405, 4.092746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.140057, 4.829704, 4.298561>,  <1.238817, 5.010203, 4.641586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.140057, 4.829704, 4.298561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540765, 0.798513, -0.264483,
		0.804124, 0.398440, -0.441170,
		-0.246899, -0.451246, -0.857565,
		1.065986, 4.694330, 4.041292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.380033, 5.486538, 4.018495>,  <1.238817, 5.010203, 4.641586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.380033, 5.486538, 4.018495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.103760, 5.224022, 3.897011>,  <0.937996, 5.066512, 3.824120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.103760, 5.224022, 3.897011>,  <1.380033, 5.486538, 4.018495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.103760, 5.224022, 3.897011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619074, 0.753670, -0.220749,
		0.373773, 0.035552, -0.926839,
		-0.690682, -0.656291, -0.303711,
		0.896555, 5.027134, 3.805897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.079670, 5.754899, 3.376286>,  <1.380033, 5.486538, 4.018495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.079670, 5.754899, 3.376286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.797338, 5.502129, 3.504333>,  <0.627939, 5.350467, 3.581162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.797338, 5.502129, 3.504333>,  <1.079670, 5.754899, 3.376286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.797338, 5.502129, 3.504333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706919, 0.599329, -0.375592,
		0.045490, -0.491402, -0.869744,
		-0.705830, -0.631924, 0.320118,
		0.585590, 5.312551, 3.600369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.659904, 5.666637, 2.785032>,  <1.079670, 5.754899, 3.376286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.659904, 5.666637, 2.785032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.484150, 5.577194, 3.133041>,  <0.378698, 5.523528, 3.341847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.484150, 5.577194, 3.133041>,  <0.659904, 5.666637, 2.785032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.484150, 5.577194, 3.133041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688379, 0.706058, -0.166182,
		-0.577128, -0.671923, -0.464158,
		-0.439384, -0.223608, 0.870023,
		0.352335, 5.510112, 3.394048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.073763, 5.725363, 2.743639>,  <0.659904, 5.666637, 2.785032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.073763, 5.725363, 2.743639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.006702, 5.728760, 3.137962>,  <0.033534, 5.730798, 3.374557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.006702, 5.728760, 3.137962>,  <-0.073763, 5.725363, 2.743639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.006702, 5.728760, 3.137962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637440, 0.763741, 0.101828,
		-0.752039, -0.645467, 0.133456,
		0.167652, 0.008492, 0.985810,
		0.043593, 5.731307, 3.433705>
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
