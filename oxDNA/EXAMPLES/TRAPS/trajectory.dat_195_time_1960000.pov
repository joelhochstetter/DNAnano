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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.734043, 53.401169, 50.384632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582100, 53.032589, 50.352020>,  <36.490936, 52.811443, 50.332451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582100, 53.032589, 50.352020>,  <36.734043, 53.401169, 50.384632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582100, 53.032589, 50.352020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911824, -0.358121, -0.200817,
		0.155844, -0.150624, 0.976230,
		-0.379856, -0.921446, -0.081531,
		36.468143, 52.756157, 50.327560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072159, 52.900532, 50.870544>,  <36.734043, 53.401169, 50.384632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072159, 52.900532, 50.870544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961300, 52.711037, 50.536179>,  <36.894783, 52.597340, 50.335560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961300, 52.711037, 50.536179>,  <37.072159, 52.900532, 50.870544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961300, 52.711037, 50.536179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945458, -0.289448, -0.149430,
		-0.171163, -0.831739, 0.528123,
		-0.277151, -0.473741, -0.835917,
		36.878155, 52.568913, 50.285404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310959, 52.165882, 50.883606>,  <37.072159, 52.900532, 50.870544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310959, 52.165882, 50.883606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273273, 52.372803, 50.543365>,  <37.250664, 52.496956, 50.339222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273273, 52.372803, 50.543365>,  <37.310959, 52.165882, 50.883606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273273, 52.372803, 50.543365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995008, 0.077176, -0.063272,
		0.032915, -0.852315, -0.521992,
		-0.094213, 0.517303, -0.850601,
		37.245010, 52.527992, 50.288185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855053, 52.533604, 51.235245>,  <37.310959, 52.165882, 50.883606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855053, 52.533604, 51.235245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046535, 52.219299, 51.078568>,  <38.161423, 52.030716, 50.984562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046535, 52.219299, 51.078568>,  <37.855053, 52.533604, 51.235245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046535, 52.219299, 51.078568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311555, 0.265064, -0.912510,
		0.820838, 0.558855, -0.117921,
		0.478704, -0.785762, -0.391689,
		38.190147, 51.983570, 50.961060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124111, 52.896801, 50.590290>,  <37.855053, 52.533604, 51.235245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124111, 52.896801, 50.590290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092735, 52.499214, 50.559616>,  <38.073910, 52.260662, 50.541214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092735, 52.499214, 50.559616>,  <38.124111, 52.896801, 50.590290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092735, 52.499214, 50.559616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427255, 0.103014, -0.898243,
		0.900722, -0.037694, -0.432757,
		-0.078438, -0.993965, -0.076682,
		38.069202, 52.201023, 50.536610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773438, 53.616547, 50.544899>,  <38.124111, 52.896801, 50.590290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773438, 53.616547, 50.544899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802326, 53.963524, 50.347992>,  <37.819660, 54.171711, 50.229847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802326, 53.963524, 50.347992>,  <37.773438, 53.616547, 50.544899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802326, 53.963524, 50.347992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353799, 0.439181, 0.825801,
		0.932529, -0.233804, -0.275182,
		0.072221, 0.867442, -0.492268,
		37.823994, 54.223755, 50.200310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450871, 53.829407, 50.541401>,  <37.773438, 53.616547, 50.544899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450871, 53.829407, 50.541401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214268, 54.150803, 50.514503>,  <38.072308, 54.343639, 50.498363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214268, 54.150803, 50.514503>,  <38.450871, 53.829407, 50.541401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214268, 54.150803, 50.514503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466028, 0.408747, 0.784694,
		0.657984, 0.432809, -0.616225,
		-0.591503, 0.803494, -0.067248,
		38.036816, 54.391850, 50.494328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819695, 54.512119, 50.273994>,  <38.450871, 53.829407, 50.541401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819695, 54.512119, 50.273994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518024, 54.494980, 50.536102>,  <38.337021, 54.484695, 50.693367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518024, 54.494980, 50.536102>,  <38.819695, 54.512119, 50.273994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518024, 54.494980, 50.536102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616111, 0.299088, 0.728666,
		-0.227202, 0.953263, -0.199169,
		-0.754179, -0.042845, 0.655269,
		38.291771, 54.482128, 50.732681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839878, 55.124443, 50.681961>,  <38.819695, 54.512119, 50.273994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839878, 55.124443, 50.681961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639317, 54.837769, 50.875847>,  <38.518978, 54.665764, 50.992180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639317, 54.837769, 50.875847>,  <38.839878, 55.124443, 50.681961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639317, 54.837769, 50.875847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558783, 0.159488, 0.813834,
		-0.660571, 0.678914, 0.320504,
		-0.501406, -0.716687, 0.484719,
		38.488895, 54.622761, 51.021263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626198, 55.307716, 51.377190>,  <38.839878, 55.124443, 50.681961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626198, 55.307716, 51.377190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710327, 54.916969, 51.392677>,  <38.760807, 54.682522, 51.401970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710327, 54.916969, 51.392677>,  <38.626198, 55.307716, 51.377190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710327, 54.916969, 51.392677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784714, 0.192309, 0.589272,
		-0.583084, -0.093559, 0.807007,
		0.210326, -0.976865, 0.038716,
		38.773426, 54.623909, 51.404293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765629, 55.077732, 51.985676>,  <38.626198, 55.307716, 51.377190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765629, 55.077732, 51.985676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967018, 54.835106, 51.739555>,  <39.087852, 54.689529, 51.591885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967018, 54.835106, 51.739555>,  <38.765629, 55.077732, 51.985676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967018, 54.835106, 51.739555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845188, 0.197917, 0.496473,
		-0.179367, -0.770002, 0.612311,
		0.503472, -0.606569, -0.615296,
		39.118061, 54.653133, 51.554966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116127, 54.345467, 52.292664>,  <38.765629, 55.077732, 51.985676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116127, 54.345467, 52.292664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309563, 54.519325, 51.988762>,  <39.425625, 54.623642, 51.806423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309563, 54.519325, 51.988762>,  <39.116127, 54.345467, 52.292664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309563, 54.519325, 51.988762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848591, -0.020045, 0.528670,
		0.214556, -0.900377, -0.378532,
		0.483590, 0.434648, -0.759751,
		39.454639, 54.649719, 51.760838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584003, 53.995560, 51.971340>,  <39.116127, 54.345467, 52.292664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584003, 53.995560, 51.971340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733662, 54.364578, 51.933567>,  <39.823456, 54.585991, 51.910904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733662, 54.364578, 51.933567>,  <39.584003, 53.995560, 51.971340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733662, 54.364578, 51.933567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818321, -0.280527, 0.501653,
		0.436309, -0.264965, -0.859900,
		0.374145, 0.922550, -0.094430,
		39.845905, 54.641342, 51.905239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239677, 53.953388, 51.769054>,  <39.584003, 53.995560, 51.971340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239677, 53.953388, 51.769054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181404, 54.285782, 51.983803>,  <40.146439, 54.485218, 52.112652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181404, 54.285782, 51.983803>,  <40.239677, 53.953388, 51.769054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181404, 54.285782, 51.983803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678755, -0.310854, 0.665328,
		0.719769, 0.461334, -0.518752,
		-0.145683, 0.830988, 0.536876,
		40.137699, 54.535080, 52.144867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519104, 53.602386, 52.273991>,  <40.239677, 53.953388, 51.769054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519104, 53.602386, 52.273991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392868, 53.715710, 52.636238>,  <40.317127, 53.783703, 52.853584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392868, 53.715710, 52.636238>,  <40.519104, 53.602386, 52.273991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392868, 53.715710, 52.636238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944971, 0.180554, 0.272819,
		-0.086220, 0.941879, -0.324700,
		-0.315588, 0.283310, 0.905616,
		40.298191, 53.800701, 52.907925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822617, 53.931343, 52.804832>,  <40.519104, 53.602386, 52.273991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822617, 53.931343, 52.804832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776333, 53.804325, 53.181297>,  <40.748562, 53.728115, 53.407177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776333, 53.804325, 53.181297>,  <40.822617, 53.931343, 52.804832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776333, 53.804325, 53.181297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986367, 0.074885, 0.146533,
		-0.117009, 0.945282, 0.304549,
		-0.115709, -0.317543, 0.941158,
		40.741619, 53.709061, 53.463646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294212, 54.324913, 53.116756>,  <40.822617, 53.931343, 52.804832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294212, 54.324913, 53.116756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204250, 54.028008, 53.369251>,  <41.150272, 53.849865, 53.520748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204250, 54.028008, 53.369251>,  <41.294212, 54.324913, 53.116756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204250, 54.028008, 53.369251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860053, 0.153257, 0.486642,
		-0.457958, 0.652347, 0.603918,
		-0.224906, -0.742264, 0.631239,
		41.136780, 53.805328, 53.558624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274593, 54.503365, 53.904655>,  <41.294212, 54.324913, 53.116756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274593, 54.503365, 53.904655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363586, 54.115650, 53.862717>,  <41.416981, 53.883022, 53.837555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363586, 54.115650, 53.862717>,  <41.274593, 54.503365, 53.904655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363586, 54.115650, 53.862717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833603, 0.133358, 0.536024,
		-0.505577, -0.206654, 0.837667,
		0.222481, -0.969283, -0.104845,
		41.430332, 53.824863, 53.831264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229736, 54.112209, 54.541954>,  <41.274593, 54.503365, 53.904655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229736, 54.112209, 54.541954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495705, 54.001934, 54.264286>,  <41.655285, 53.935768, 54.097687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495705, 54.001934, 54.264286>,  <41.229736, 54.112209, 54.541954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495705, 54.001934, 54.264286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740472, 0.121519, 0.661010,
		-0.097879, -0.953534, 0.284942,
		0.664922, -0.275691, -0.694171,
		41.695183, 53.919228, 54.056034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923210, 53.941853, 54.880688>,  <41.229736, 54.112209, 54.541954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923210, 53.941853, 54.880688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019390, 53.990364, 54.495464>,  <42.077099, 54.019470, 54.264332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019390, 53.990364, 54.495464>,  <41.923210, 53.941853, 54.880688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019390, 53.990364, 54.495464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921750, 0.282450, 0.265704,
		0.304240, -0.951584, -0.043876,
		0.240447, 0.121280, -0.963056,
		42.091526, 54.026749, 54.206547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359337, 53.340775, 54.509697>,  <41.923210, 53.941853, 54.880688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359337, 53.340775, 54.509697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412888, 53.695427, 54.332623>,  <42.445019, 53.908218, 54.226379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412888, 53.695427, 54.332623>,  <42.359337, 53.340775, 54.509697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412888, 53.695427, 54.332623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969463, -0.024550, 0.244005,
		0.205473, -0.461832, -0.862839,
		0.133872, 0.886627, -0.442685,
		42.453049, 53.961414, 54.199818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808998, 53.305401, 53.897720>,  <42.359337, 53.340775, 54.509697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808998, 53.305401, 53.897720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777958, 53.626293, 54.134499>,  <42.759335, 53.818829, 54.276566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777958, 53.626293, 54.134499>,  <42.808998, 53.305401, 53.897720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777958, 53.626293, 54.134499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934608, -0.148183, 0.323341,
		0.347111, 0.578328, -0.738275,
		-0.077598, 0.802233, 0.591946,
		42.754677, 53.866962, 54.312084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439392, 53.834026, 53.797810>,  <42.808998, 53.305401, 53.897720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439392, 53.834026, 53.797810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286736, 53.801765, 54.166122>,  <43.195141, 53.782410, 54.387112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286736, 53.801765, 54.166122>,  <43.439392, 53.834026, 53.797810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286736, 53.801765, 54.166122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891566, -0.294928, 0.343696,
		0.243845, 0.952109, 0.184466,
		-0.381640, -0.080656, 0.920785,
		43.172245, 53.777569, 54.442360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988132, 53.985828, 54.193333>,  <43.439392, 53.834026, 53.797810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988132, 53.985828, 54.193333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750385, 53.805336, 54.459602>,  <43.607738, 53.697041, 54.619366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750385, 53.805336, 54.459602>,  <43.988132, 53.985828, 54.193333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750385, 53.805336, 54.459602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804193, -0.330997, 0.493675,
		-0.002426, 0.828753, 0.559609,
		-0.594363, -0.451231, 0.665675,
		43.572075, 53.669968, 54.659306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036366, 54.181393, 54.982384>,  <43.988132, 53.985828, 54.193333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036366, 54.181393, 54.982384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946865, 53.801235, 54.895950>,  <43.893166, 53.573143, 54.844090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946865, 53.801235, 54.895950>,  <44.036366, 54.181393, 54.982384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946865, 53.801235, 54.895950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830399, -0.301964, 0.468246,
		-0.510267, -0.074666, 0.856769,
		-0.223752, -0.950391, -0.216085,
		43.879738, 53.516117, 54.831123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939404, 53.763927, 55.625782>,  <44.036366, 54.181393, 54.982384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939404, 53.763927, 55.625782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078224, 53.536957, 55.327095>,  <44.161518, 53.400776, 55.147884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078224, 53.536957, 55.327095>,  <43.939404, 53.763927, 55.625782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078224, 53.536957, 55.327095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768568, -0.284205, 0.573176,
		-0.537453, -0.772826, 0.337468,
		0.347055, -0.567422, -0.746716,
		44.182343, 53.366730, 55.103081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850391, 52.921829, 55.835526>,  <43.939404, 53.763927, 55.625782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850391, 52.921829, 55.835526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148582, 53.054138, 55.604057>,  <44.327496, 53.133526, 55.465176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148582, 53.054138, 55.604057>,  <43.850391, 52.921829, 55.835526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148582, 53.054138, 55.604057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635848, -0.092529, 0.766248,
		0.199912, -0.939162, -0.279301,
		0.745475, 0.330775, -0.578667,
		44.372227, 53.153370, 55.430458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428513, 52.425392, 55.781216>,  <43.850391, 52.921829, 55.835526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.428513, 52.425392, 55.781216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603798, 52.779209, 55.717270>,  <44.708969, 52.991497, 55.678902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603798, 52.779209, 55.717270>,  <44.428513, 52.425392, 55.781216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603798, 52.779209, 55.717270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721069, -0.239747, 0.650062,
		0.536680, -0.400139, -0.742875,
		0.438217, 0.884540, -0.159860,
		44.735264, 53.044571, 55.669312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033230, 52.467735, 55.551323>,  <44.428513, 52.425392, 55.781216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033230, 52.467735, 55.551323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031178, 52.768890, 55.814575>,  <45.029945, 52.949581, 55.972527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031178, 52.768890, 55.814575>,  <45.033230, 52.467735, 55.551323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031178, 52.768890, 55.814575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811420, -0.381519, 0.442765,
		0.584442, 0.536293, -0.608948,
		-0.005126, 0.752883, 0.658134,
		45.029640, 52.994755, 56.012016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.677879, 52.729237, 55.665062>,  <45.033230, 52.467735, 55.551323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.677879, 52.729237, 55.665062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531517, 52.842155, 56.019783>,  <45.443699, 52.909908, 56.232616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531517, 52.842155, 56.019783>,  <45.677879, 52.729237, 55.665062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531517, 52.842155, 56.019783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810975, -0.370733, 0.452633,
		0.456546, 0.884796, -0.093285,
		-0.365904, 0.282300, 0.886804,
		45.421745, 52.926846, 56.285824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.308525, 53.269096, 55.791840>,  <45.677879, 52.729237, 55.665062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.308525, 53.269096, 55.791840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169601, 53.209507, 56.162178>,  <46.086246, 53.173756, 56.384380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169601, 53.209507, 56.162178>,  <46.308525, 53.269096, 55.791840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.169601, 53.209507, 56.162178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750926, -0.635543, 0.179430,
		0.561683, 0.757558, 0.332593,
		-0.347305, -0.148970, 0.925844,
		46.065411, 53.164818, 56.439930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865002, 53.426643, 56.264557>,  <46.308525, 53.269096, 55.791840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865002, 53.426643, 56.264557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.604935, 53.172146, 56.430679>,  <46.448895, 53.019447, 56.530354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.604935, 53.172146, 56.430679>,  <46.865002, 53.426643, 56.264557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.604935, 53.172146, 56.430679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754059, -0.607357, 0.250025,
		0.093164, 0.475725, 0.874646,
		-0.650166, -0.636241, 0.415309,
		46.409885, 52.981274, 56.555271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.113758, 53.269005, 56.931770>,  <46.865002, 53.426643, 56.264557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.113758, 53.269005, 56.931770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892643, 52.947495, 56.843788>,  <46.759975, 52.754589, 56.791000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892643, 52.947495, 56.843788>,  <47.113758, 53.269005, 56.931770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892643, 52.947495, 56.843788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761099, -0.594454, 0.259524,
		-0.339352, -0.023947, 0.940355,
		-0.552783, -0.803773, -0.219955,
		46.726807, 52.706364, 56.777802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.774452, 53.478630, 57.056782>,  <47.113758, 53.269005, 56.931770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.774452, 53.478630, 57.056782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.923027, 53.691433, 57.361153>,  <48.012173, 53.819115, 57.543774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.923027, 53.691433, 57.361153>,  <47.774452, 53.478630, 57.056782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.923027, 53.691433, 57.361153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580845, 0.772520, -0.256576,
		-0.724329, -0.346677, 0.595954,
		0.371438, 0.532003, 0.760925,
		48.034458, 53.851032, 57.589432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.312057, 53.226734, 57.492531>,  <47.774452, 53.478630, 57.056782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.312057, 53.226734, 57.492531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.278252, 53.152046, 57.884041>,  <48.257969, 53.107235, 58.118946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.278252, 53.152046, 57.884041>,  <48.312057, 53.226734, 57.492531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.278252, 53.152046, 57.884041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942485, -0.303818, -0.139340,
		0.323386, -0.934254, -0.150304,
		-0.084514, -0.186720, 0.978771,
		48.252899, 53.096031, 58.177673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.970226, 53.119255, 57.838512>,  <48.312057, 53.226734, 57.492531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.970226, 53.119255, 57.838512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.046684, 52.846806, 58.121223>,  <49.092560, 52.683334, 58.290852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.046684, 52.846806, 58.121223>,  <48.970226, 53.119255, 57.838512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.046684, 52.846806, 58.121223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981459, 0.143069, -0.127552,
		-0.014239, 0.718054, 0.695842,
		0.191143, -0.681124, 0.706778,
		49.104027, 52.642467, 58.333256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.275127, 53.281155, 58.440262>,  <48.970226, 53.119255, 57.838512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.275127, 53.281155, 58.440262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.448471, 52.921650, 58.413673>,  <49.552479, 52.705948, 58.397720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.448471, 52.921650, 58.413673>,  <49.275127, 53.281155, 58.440262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.448471, 52.921650, 58.413673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901172, 0.431401, 0.042216,
		-0.009264, -0.078201, 0.996895,
		0.433363, -0.898765, -0.066476,
		49.578480, 52.652020, 58.393730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.783386, 53.271980, 58.930725>,  <49.275127, 53.281155, 58.440262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.783386, 53.271980, 58.930725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.886929, 53.041451, 58.620667>,  <49.949055, 52.903133, 58.434631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.886929, 53.041451, 58.620667>,  <49.783386, 53.271980, 58.930725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.886929, 53.041451, 58.620667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930733, 0.363438, 0.040602,
		0.258316, -0.731961, 0.630480,
		0.258859, -0.576321, -0.775143,
		49.964588, 52.868553, 58.388123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.569668, 53.101933, 59.054245>,  <49.783386, 53.271980, 58.930725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.569668, 53.101933, 59.054245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.469658, 52.959610, 58.694046>,  <50.409653, 52.874218, 58.477928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.469658, 52.959610, 58.694046>,  <50.569668, 53.101933, 59.054245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.469658, 52.959610, 58.694046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855047, 0.355229, -0.377764,
		0.454292, -0.864416, 0.215413,
		-0.250025, -0.355804, -0.900495,
		50.394650, 52.852867, 58.423897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.120171, 52.750095, 58.886009>,  <50.569668, 53.101933, 59.054245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.120171, 52.750095, 58.886009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.920616, 52.844952, 58.552574>,  <50.800884, 52.901867, 58.352512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.920616, 52.844952, 58.552574>,  <51.120171, 52.750095, 58.886009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.920616, 52.844952, 58.552574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796220, 0.505264, -0.332781,
		0.342267, -0.829742, -0.440886,
		-0.498886, 0.237143, -0.833592,
		50.770950, 52.916096, 58.302498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.560097, 52.686272, 58.343704>,  <51.120171, 52.750095, 58.886009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.560097, 52.686272, 58.343704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.268570, 52.939728, 58.239914>,  <51.093655, 53.091801, 58.177639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.268570, 52.939728, 58.239914>,  <51.560097, 52.686272, 58.343704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.268570, 52.939728, 58.239914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682951, 0.645624, -0.341683,
		-0.048981, -0.426232, -0.903287,
		-0.728820, 0.633637, -0.259473,
		51.049923, 53.129818, 58.162071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.521210, 52.935200, 57.619526>,  <51.560097, 52.686272, 58.343704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.521210, 52.935200, 57.619526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.526917, 52.977867, 57.221848>,  <51.530342, 53.003468, 56.983242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.526917, 52.977867, 57.221848>,  <51.521210, 52.935200, 57.619526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.526917, 52.977867, 57.221848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957101, 0.286322, 0.044459,
		0.289402, -0.952177, -0.098009,
		0.014271, 0.106671, -0.994192,
		51.531197, 53.009869, 56.923592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.035156, 52.660435, 57.334923>,  <51.521210, 52.935200, 57.619526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.035156, 52.660435, 57.334923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.985077, 52.949501, 57.063019>,  <51.955029, 53.122940, 56.899876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.985077, 52.949501, 57.063019>,  <52.035156, 52.660435, 57.334923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.985077, 52.949501, 57.063019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992076, 0.083917, -0.093508,
		-0.010532, -0.686082, -0.727448,
		-0.125200, 0.722668, -0.679761,
		51.947517, 53.166302, 56.859089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.289268, 52.493713, 56.799240>,  <52.035156, 52.660435, 57.334923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.289268, 52.493713, 56.799240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.319469, 52.892323, 56.813293>,  <52.337589, 53.131489, 56.821724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.319469, 52.892323, 56.813293>,  <52.289268, 52.493713, 56.799240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.319469, 52.892323, 56.813293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996496, -0.074133, -0.038729,
		-0.035990, 0.037934, -0.998632,
		0.075501, 0.996527, 0.035133,
		52.342121, 53.191280, 56.823833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.707970, 52.934635, 56.208687>,  <52.289268, 52.493713, 56.799240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.707970, 52.934635, 56.208687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.730743, 53.093918, 56.574898>,  <52.744408, 53.189487, 56.794624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.730743, 53.093918, 56.574898>,  <52.707970, 52.934635, 56.208687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.730743, 53.093918, 56.574898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998354, -0.016369, -0.054961,
		-0.006900, 0.917149, -0.398484,
		0.056931, 0.398207, 0.915527,
		52.747822, 53.213379, 56.849556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.339279, 53.172062, 56.190666>,  <52.707970, 52.934635, 56.208687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.339279, 53.172062, 56.190666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.224541, 53.297047, 56.552902>,  <53.155697, 53.372036, 56.770245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.224541, 53.297047, 56.552902>,  <53.339279, 53.172062, 56.190666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.224541, 53.297047, 56.552902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947508, 0.231912, 0.220102,
		-0.141244, 0.921187, -0.362579,
		-0.286842, 0.312459, 0.905589,
		53.138489, 53.390785, 56.824577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.520756, 53.455460, 55.494564>,  <53.339279, 53.172062, 56.190666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.520756, 53.455460, 55.494564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.804020, 53.185986, 55.410034>,  <53.973976, 53.024300, 55.359314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.804020, 53.185986, 55.410034>,  <53.520756, 53.455460, 55.494564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.804020, 53.185986, 55.410034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660237, 0.737909, -0.139923,
		0.250204, -0.040438, 0.967348,
		0.708156, -0.673688, -0.211327,
		54.016468, 52.983879, 55.346638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.176033, 53.573593, 55.835541>,  <53.520756, 53.455460, 55.494564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.176033, 53.573593, 55.835541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.278603, 53.330605, 55.534813>,  <54.340145, 53.184811, 55.354378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.278603, 53.330605, 55.534813>,  <54.176033, 53.573593, 55.835541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.278603, 53.330605, 55.534813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847832, 0.514870, -0.126847,
		0.464144, -0.604889, 0.647054,
		0.256420, -0.607469, -0.751818,
		54.355530, 53.148365, 55.309269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.845348, 53.142506, 55.898949>,  <54.176033, 53.573593, 55.835541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.845348, 53.142506, 55.898949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.764648, 53.225643, 55.516098>,  <54.716228, 53.275524, 55.286388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.764648, 53.225643, 55.516098>,  <54.845348, 53.142506, 55.898949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.764648, 53.225643, 55.516098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854037, 0.515745, -0.068023,
		0.479497, -0.831149, -0.281554,
		-0.201748, 0.207841, -0.957131,
		54.704124, 53.287994, 55.228958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.307243, 52.845989, 55.375778>,  <54.845348, 53.142506, 55.898949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.307243, 52.845989, 55.375778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.150528, 53.205982, 55.299324>,  <55.056499, 53.421978, 55.253452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.150528, 53.205982, 55.299324>,  <55.307243, 52.845989, 55.375778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.150528, 53.205982, 55.299324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920046, 0.384251, -0.076590,
		0.004513, -0.205857, -0.978572,
		-0.391784, 0.899985, -0.191132,
		55.032993, 53.475979, 55.241985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.533981, 53.002731, 54.723389>,  <55.307243, 52.845989, 55.375778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.533981, 53.002731, 54.723389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.484421, 53.338070, 54.935738>,  <55.454685, 53.539272, 55.063148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.484421, 53.338070, 54.935738>,  <55.533981, 53.002731, 54.723389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.484421, 53.338070, 54.935738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961026, 0.234628, -0.146216,
		-0.247137, 0.492064, -0.834743,
		-0.123906, 0.838345, 0.530871,
		55.447250, 53.589573, 55.094997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.834793, 53.548351, 54.300030>,  <55.533981, 53.002731, 54.723389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.834793, 53.548351, 54.300030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.866028, 53.535507, 54.698601>,  <55.884769, 53.527802, 54.937744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.866028, 53.535507, 54.698601>,  <55.834793, 53.548351, 54.300030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.866028, 53.535507, 54.698601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995008, 0.064822, -0.075882,
		-0.062153, 0.997380, 0.037014,
		0.078082, -0.032113, 0.996430,
		55.889454, 53.525875, 54.997528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.266453, 54.102261, 54.648422>,  <55.834793, 53.548351, 54.300030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.266453, 54.102261, 54.648422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.240982, 53.734341, 54.803299>,  <56.225700, 53.513588, 54.896225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.240982, 53.734341, 54.803299>,  <56.266453, 54.102261, 54.648422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.240982, 53.734341, 54.803299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994933, -0.088760, -0.047228,
		0.077807, 0.382220, 0.920790,
		-0.063678, -0.919799, 0.387189,
		56.221878, 53.458401, 54.919456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.487072, 54.050484, 55.380180>,  <56.266453, 54.102261, 54.648422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.487072, 54.050484, 55.380180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.561302, 53.734798, 55.146019>,  <56.605839, 53.545387, 55.005520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.561302, 53.734798, 55.146019>,  <56.487072, 54.050484, 55.380180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.561302, 53.734798, 55.146019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963922, 0.030514, 0.264428,
		-0.190828, -0.613358, 0.766405,
		0.185575, -0.789215, -0.585407,
		56.616974, 53.498035, 54.970398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.822052, 53.365711, 55.706753>,  <56.487072, 54.050484, 55.380180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.822052, 53.365711, 55.706753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.936523, 53.474434, 55.339226>,  <57.005207, 53.539665, 55.118710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.936523, 53.474434, 55.339226>,  <56.822052, 53.365711, 55.706753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.936523, 53.474434, 55.339226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905372, 0.237228, 0.352173,
		0.313690, -0.932655, -0.178194,
		0.286183, 0.271805, -0.918815,
		57.022377, 53.555977, 55.063580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.533409, 53.054989, 55.633038>,  <56.822052, 53.365711, 55.706753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.533409, 53.054989, 55.633038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.448959, 53.368397, 55.399277>,  <57.398289, 53.556442, 55.259022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.448959, 53.368397, 55.399277>,  <57.533409, 53.054989, 55.633038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.448959, 53.368397, 55.399277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795561, 0.485104, 0.362981,
		0.567897, -0.388290, -0.725757,
		-0.211126, 0.783521, -0.584398,
		57.385620, 53.603455, 55.223957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.159657, 53.328953, 55.426804>,  <57.533409, 53.054989, 55.633038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.159657, 53.328953, 55.426804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.893745, 53.619347, 55.356354>,  <57.734200, 53.793583, 55.314083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.893745, 53.619347, 55.356354>,  <58.159657, 53.328953, 55.426804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.893745, 53.619347, 55.356354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605473, 0.661703, 0.442212,
		0.437583, 0.187331, -0.879448,
		-0.664773, 0.725986, -0.176126,
		57.694313, 53.837143, 55.303516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.557690, 53.971355, 55.088196>,  <58.159657, 53.328953, 55.426804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.557690, 53.971355, 55.088196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.220924, 54.057610, 55.286057>,  <58.018864, 54.109360, 55.404774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.220924, 54.057610, 55.286057>,  <58.557690, 53.971355, 55.088196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.220924, 54.057610, 55.286057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493535, 0.678345, 0.544308,
		-0.218175, 0.702389, -0.677531,
		-0.841916, 0.215631, 0.494652,
		57.968349, 54.122299, 55.434452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.726734, 53.292431, 54.803791>,  <58.557690, 53.971355, 55.088196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.726734, 53.292431, 54.803791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.787369, 53.553391, 54.506767>,  <58.823750, 53.709965, 54.328552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.787369, 53.553391, 54.506767>,  <58.726734, 53.292431, 54.803791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.787369, 53.553391, 54.506767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588849, 0.543782, 0.597962,
		0.793902, -0.527897, -0.301737,
		0.151584, 0.652400, -0.742561,
		58.832844, 53.749111, 54.284000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.272068, 53.606754, 55.011929>,  <58.726734, 53.292431, 54.803791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.272068, 53.606754, 55.011929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.168884, 53.843285, 54.706303>,  <59.106976, 53.985203, 54.522926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.168884, 53.843285, 54.706303>,  <59.272068, 53.606754, 55.011929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.168884, 53.843285, 54.706303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599188, 0.718289, 0.353603,
		0.757913, -0.366604, -0.539602,
		-0.257958, 0.591323, -0.764065,
		59.091496, 54.020683, 54.477081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.959873, 53.866802, 54.590603>,  <59.272068, 53.606754, 55.011929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.959873, 53.866802, 54.590603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.637726, 54.103882, 54.594292>,  <59.444435, 54.246128, 54.596504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.637726, 54.103882, 54.594292>,  <59.959873, 53.866802, 54.590603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.637726, 54.103882, 54.594292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571846, 0.772750, 0.275408,
		0.156111, 0.227077, -0.961283,
		-0.805371, 0.592700, 0.009218,
		59.396114, 54.281693, 54.597057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.047077, 54.466724, 54.132889>,  <59.959873, 53.866802, 54.590603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.047077, 54.466724, 54.132889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.817894, 54.531105, 54.454338>,  <59.680382, 54.569733, 54.647209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.817894, 54.531105, 54.454338>,  <60.047077, 54.466724, 54.132889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.817894, 54.531105, 54.454338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448732, 0.882109, 0.143263,
		-0.685826, 0.442696, -0.577636,
		-0.572960, 0.160950, 0.803625,
		59.646008, 54.579391, 54.695427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.427757, 54.852489, 53.988728>,  <60.047077, 54.466724, 54.132889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.427757, 54.852489, 53.988728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.599640, 54.888416, 54.348122>,  <59.702770, 54.909973, 54.563759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.599640, 54.888416, 54.348122>,  <59.427757, 54.852489, 53.988728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.599640, 54.888416, 54.348122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361080, 0.894929, -0.262152,
		-0.827630, 0.437076, 0.352126,
		0.429708, 0.089819, 0.898489,
		59.728554, 54.915363, 54.617668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.519421, 55.664944, 54.113476>,  <59.427757, 54.852489, 53.988728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.519421, 55.664944, 54.113476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.765144, 55.439270, 54.334137>,  <59.912579, 55.303867, 54.466534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.765144, 55.439270, 54.334137>,  <59.519421, 55.664944, 54.113476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.765144, 55.439270, 54.334137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603724, 0.786224, 0.131791,
		-0.508074, 0.252083, 0.823599,
		0.614311, -0.564186, 0.551649,
		59.949436, 55.270016, 54.499630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.572670, 55.994049, 54.756229>,  <59.519421, 55.664944, 54.113476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.572670, 55.994049, 54.756229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.908859, 55.785133, 54.698509>,  <60.110573, 55.659782, 54.663876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.908859, 55.785133, 54.698509>,  <59.572670, 55.994049, 54.756229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.908859, 55.785133, 54.698509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535304, 0.759020, 0.370593,
		-0.084027, -0.388719, 0.917517,
		0.840470, -0.522290, -0.144304,
		60.160999, 55.628445, 54.655216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.110058, 56.081455, 55.425526>,  <59.572670, 55.994049, 54.756229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.110058, 56.081455, 55.425526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.303017, 55.925308, 55.111862>,  <60.418793, 55.831619, 54.923664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.303017, 55.925308, 55.111862>,  <60.110058, 56.081455, 55.425526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.303017, 55.925308, 55.111862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861044, 0.375781, 0.342626,
		0.160919, -0.840475, 0.517404,
		0.482399, -0.390372, -0.784156,
		60.447735, 55.808197, 54.876614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.744583, 55.673126, 55.533352>,  <60.110058, 56.081455, 55.425526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.744583, 55.673126, 55.533352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.785881, 55.797958, 55.155579>,  <60.810661, 55.872856, 54.928917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.785881, 55.797958, 55.155579>,  <60.744583, 55.673126, 55.533352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.785881, 55.797958, 55.155579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975945, 0.151518, 0.156761,
		0.192019, -0.937897, -0.288925,
		0.103248, 0.312076, -0.944430,
		60.816856, 55.891582, 54.872250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.367401, 55.402252, 55.215065>,  <60.744583, 55.673126, 55.533352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.367401, 55.402252, 55.215065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.268890, 55.748463, 55.040611>,  <61.209785, 55.956188, 54.935940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.268890, 55.748463, 55.040611>,  <61.367401, 55.402252, 55.215065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.268890, 55.748463, 55.040611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903029, 0.368334, 0.221062,
		0.351978, -0.339396, -0.872308,
		-0.246273, 0.865529, -0.436130,
		61.195007, 56.008121, 54.909771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.744156, 55.699188, 54.501930>,  <61.367401, 55.402252, 55.215065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.744156, 55.699188, 54.501930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.662140, 55.978279, 54.776489>,  <61.612930, 56.145733, 54.941223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.662140, 55.978279, 54.776489>,  <61.744156, 55.699188, 54.501930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.662140, 55.978279, 54.776489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968388, 0.246413, 0.038799,
		-0.142066, 0.672653, -0.726192,
		-0.205042, 0.697724, 0.686396,
		61.600628, 56.187595, 54.982407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.005344, 56.379040, 54.311939>,  <61.744156, 55.699188, 54.501930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.005344, 56.379040, 54.311939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.989792, 56.393970, 54.711357>,  <61.980461, 56.402927, 54.951008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.989792, 56.393970, 54.711357>,  <62.005344, 56.379040, 54.311939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.989792, 56.393970, 54.711357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943992, 0.329059, 0.024462,
		-0.327668, 0.943572, -0.048027,
		-0.038885, 0.037322, 0.998546,
		61.978127, 56.405167, 55.010921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.168297, 57.095104, 54.548023>,  <62.005344, 56.379040, 54.311939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.168297, 57.095104, 54.548023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.260101, 56.803383, 54.805840>,  <62.315182, 56.628349, 54.960529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.260101, 56.803383, 54.805840>,  <62.168297, 57.095104, 54.548023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.260101, 56.803383, 54.805840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963496, 0.264029, -0.044327,
		-0.137850, 0.631188, 0.763281,
		0.229507, -0.729308, 0.644544,
		62.328953, 56.584591, 54.999203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.465855, 57.380627, 55.094414>,  <62.168297, 57.095104, 54.548023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.465855, 57.380627, 55.094414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.587318, 57.000359, 55.069031>,  <62.660194, 56.772198, 55.053802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.587318, 57.000359, 55.069031>,  <62.465855, 57.380627, 55.094414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.587318, 57.000359, 55.069031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949927, 0.307226, -0.057016,
		0.073699, -0.042967, 0.996355,
		0.303656, -0.950666, -0.063457,
		62.678417, 56.715160, 55.049995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.048351, 57.259518, 55.503658>,  <62.465855, 57.380627, 55.094414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.048351, 57.259518, 55.503658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.087875, 56.955666, 55.246536>,  <63.111591, 56.773354, 55.092262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.087875, 56.955666, 55.246536>,  <63.048351, 57.259518, 55.503658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.087875, 56.955666, 55.246536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963504, 0.234537, -0.129047,
		0.248790, -0.606596, 0.755079,
		0.098814, -0.759627, -0.642808,
		63.117519, 56.727776, 55.053696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.520412, 56.737255, 55.644817>,  <63.048351, 57.259518, 55.503658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.520412, 56.737255, 55.644817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.474503, 56.804565, 55.253204>,  <63.446957, 56.844952, 55.018234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.474503, 56.804565, 55.253204>,  <63.520412, 56.737255, 55.644817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.474503, 56.804565, 55.253204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955506, 0.288284, -0.062461,
		0.271730, -0.942642, -0.193877,
		-0.114770, 0.168279, -0.979035,
		63.440071, 56.855049, 54.959496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.300377, 56.874008, 56.330448>,  <63.520412, 56.737255, 55.644817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.300377, 56.874008, 56.330448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.527351, 56.812187, 56.653961>,  <63.663536, 56.775097, 56.848068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.527351, 56.812187, 56.653961>,  <63.300377, 56.874008, 56.330448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.527351, 56.812187, 56.653961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106685, 0.987747, 0.113899,
		-0.816475, 0.021654, 0.576975,
		0.567439, -0.154551, 0.808781,
		63.697582, 56.765823, 56.896595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.124027, 57.354031, 56.797958>,  <63.300377, 56.874008, 56.330448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.124027, 57.354031, 56.797958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.464119, 57.263306, 56.987976>,  <63.668175, 57.208870, 57.101986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.464119, 57.263306, 56.987976>,  <63.124027, 57.354031, 56.797958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.464119, 57.263306, 56.987976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069581, 0.942918, 0.325676,
		-0.521797, -0.243845, 0.817476,
		0.850227, -0.226817, 0.475044,
		63.719189, 57.195259, 57.130489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.246178, 57.515087, 57.539104>,  <63.124027, 57.354031, 56.797958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.246178, 57.515087, 57.539104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.637146, 57.499462, 57.456032>,  <63.871727, 57.490086, 57.406189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.637146, 57.499462, 57.456032>,  <63.246178, 57.515087, 57.539104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.637146, 57.499462, 57.456032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070320, 0.986881, 0.145329,
		0.199279, -0.156651, 0.967341,
		0.977417, -0.039062, -0.207681,
		63.930370, 57.487743, 57.393726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.628448, 57.909237, 58.086342>,  <63.246178, 57.515087, 57.539104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.628448, 57.909237, 58.086342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.853821, 57.870350, 57.758171>,  <63.989044, 57.847019, 57.561268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.853821, 57.870350, 57.758171>,  <63.628448, 57.909237, 58.086342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.853821, 57.870350, 57.758171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293225, 0.951931, 0.088574,
		0.772375, -0.290474, 0.564855,
		0.563432, -0.097217, -0.820423,
		64.022850, 57.841187, 57.512043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.275284, 58.071499, 58.321548>,  <63.628448, 57.909237, 58.086342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.275284, 58.071499, 58.321548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.240372, 58.170204, 57.935493>,  <64.219421, 58.229427, 57.703861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.240372, 58.170204, 57.935493>,  <64.275284, 58.071499, 58.321548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.240372, 58.170204, 57.935493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221439, 0.949401, 0.222717,
		0.971260, -0.194280, -0.137508,
		-0.087281, 0.246766, -0.965137,
		64.214188, 58.244232, 57.645954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.916283, 58.373707, 58.682522>,  <64.275284, 58.071499, 58.321548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.916283, 58.373707, 58.682522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.141380, 58.139824, 58.448792>,  <65.276436, 57.999496, 58.308552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.141380, 58.139824, 58.448792>,  <64.916283, 58.373707, 58.682522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.141380, 58.139824, 58.448792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529171, -0.288247, 0.798054,
		-0.635056, -0.758311, 0.147198,
		0.562744, -0.584703, -0.584330,
		65.310204, 57.964413, 58.273491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.157463, 57.926430, 59.178364>,  <64.916283, 58.373707, 58.682522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.157463, 57.926430, 59.178364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.392281, 57.866806, 58.860077>,  <65.533173, 57.831032, 58.669106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.392281, 57.866806, 58.860077>,  <65.157463, 57.926430, 59.178364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.392281, 57.866806, 58.860077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743690, -0.289051, 0.602806,
		-0.319858, -0.945637, -0.058828,
		0.587040, -0.149063, -0.795716,
		65.568390, 57.822090, 58.621361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.529625, 57.269119, 59.118160>,  <65.157463, 57.926430, 59.178364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.529625, 57.269119, 59.118160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.772202, 57.525772, 58.930313>,  <65.917747, 57.679764, 58.817604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.772202, 57.525772, 58.930313>,  <65.529625, 57.269119, 59.118160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.772202, 57.525772, 58.930313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774353, -0.342433, 0.532087,
		0.180590, -0.686329, -0.704514,
		0.606436, 0.641632, -0.469621,
		65.954132, 57.718262, 58.789429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.160645, 56.904793, 58.802742>,  <65.529625, 57.269119, 59.118160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.160645, 56.904793, 58.802742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.271210, 57.267647, 58.929680>,  <66.337547, 57.485359, 59.005844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.271210, 57.267647, 58.929680>,  <66.160645, 56.904793, 58.802742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.271210, 57.267647, 58.929680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829671, -0.391889, 0.397578,
		0.485020, 0.153398, -0.860944,
		0.276407, 0.907134, 0.317344,
		66.354134, 57.539787, 59.024883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.848465, 57.023380, 58.482048>,  <66.160645, 56.904793, 58.802742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.848465, 57.023380, 58.482048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.745094, 57.166595, 58.840942>,  <66.683075, 57.252525, 59.056278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.745094, 57.166595, 58.840942>,  <66.848465, 57.023380, 58.482048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.745094, 57.166595, 58.840942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960218, -0.006527, 0.279174,
		0.105810, 0.933686, -0.342103,
		-0.258428, 0.358033, 0.897233,
		66.667564, 57.274006, 59.110111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.293549, 57.461346, 58.550663>,  <66.848465, 57.023380, 58.482048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.293549, 57.461346, 58.550663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.181389, 57.375465, 58.924889>,  <67.114090, 57.323936, 59.149426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.181389, 57.375465, 58.924889>,  <67.293549, 57.461346, 58.550663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.181389, 57.375465, 58.924889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955962, 0.025542, 0.292376,
		-0.086669, 0.976347, 0.198081,
		-0.280401, -0.214697, 0.935564,
		67.097267, 57.311054, 59.205559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.957184, 57.998234, 58.083744>,  <67.293549, 57.461346, 58.550663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.957184, 57.998234, 58.083744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.918312, 58.126827, 58.460510>,  <66.894989, 58.203983, 58.686569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.918312, 58.126827, 58.460510>,  <66.957184, 57.998234, 58.083744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.918312, 58.126827, 58.460510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903371, -0.368706, 0.219037,
		0.417707, 0.872183, -0.254594,
		-0.097170, 0.321487, 0.941915,
		66.889160, 58.223274, 58.743084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.389320, 58.520615, 58.316372>,  <66.957184, 57.998234, 58.083744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.389320, 58.520615, 58.316372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.311958, 58.297569, 58.639275>,  <67.265541, 58.163742, 58.833015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.311958, 58.297569, 58.639275>,  <67.389320, 58.520615, 58.316372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.311958, 58.297569, 58.639275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964135, -0.260453, 0.051077,
		0.181770, 0.788180, 0.587990,
		-0.193401, -0.557617, 0.807254,
		67.253937, 58.130283, 58.881451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.634964, 58.783028, 58.920090>,  <67.389320, 58.520615, 58.316372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.634964, 58.783028, 58.920090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.638130, 58.383087, 58.913979>,  <67.640030, 58.143124, 58.910313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.638130, 58.383087, 58.913979>,  <67.634964, 58.783028, 58.920090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.638130, 58.383087, 58.913979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999290, 0.008469, -0.036727,
		0.036851, -0.014979, 0.999209,
		0.007913, -0.999852, -0.015280,
		67.640503, 58.083130, 58.909393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.178177, 58.543270, 59.364353>,  <67.634964, 58.783028, 58.920090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.178177, 58.543270, 59.364353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.109833, 58.273369, 59.077156>,  <68.068825, 58.111427, 58.904839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.109833, 58.273369, 59.077156>,  <68.178177, 58.543270, 59.364353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.109833, 58.273369, 59.077156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985200, -0.106840, -0.134034,
		0.013730, -0.730270, 0.683021,
		-0.170855, -0.674753, -0.717995,
		68.058578, 58.070942, 58.861759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.856010, 58.459461, 59.668278>,  <68.178177, 58.543270, 59.364353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.856010, 58.459461, 59.668278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.753479, 58.384342, 60.047546>,  <68.691956, 58.339272, 60.275108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.753479, 58.384342, 60.047546>,  <68.856010, 58.459461, 59.668278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.753479, 58.384342, 60.047546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932491, 0.210196, 0.293730,
		-0.254462, 0.959453, 0.121235,
		-0.256337, -0.187794, 0.948169,
		68.676575, 58.328003, 60.331997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.949654, 59.292213, 59.781361>,  <68.856010, 58.459461, 59.668278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.949654, 59.292213, 59.781361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.137001, 59.038002, 59.535843>,  <69.249405, 58.885475, 59.388535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.137001, 59.038002, 59.535843>,  <68.949654, 59.292213, 59.781361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.137001, 59.038002, 59.535843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862689, 0.478967, 0.162353,
		0.190805, -0.605550, 0.772595,
		0.468360, -0.635532, -0.613790,
		69.277512, 58.847343, 59.351707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.564240, 58.995918, 60.159962>,  <68.949654, 59.292213, 59.781361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.564240, 58.995918, 60.159962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.614624, 58.977692, 59.763565>,  <69.644852, 58.966755, 59.525726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.614624, 58.977692, 59.763565>,  <69.564240, 58.995918, 60.159962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.614624, 58.977692, 59.763565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958263, 0.264019, 0.109660,
		0.256643, -0.963440, 0.076919,
		0.125960, -0.045566, -0.990988,
		69.652412, 58.964024, 59.466267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.136833, 58.623165, 60.003967>,  <69.564240, 58.995918, 60.159962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.136833, 58.623165, 60.003967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.085381, 58.867531, 59.691498>,  <70.054512, 59.014153, 59.504017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.085381, 58.867531, 59.691498>,  <70.136833, 58.623165, 60.003967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.085381, 58.867531, 59.691498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991473, 0.062629, -0.114270,
		-0.020885, -0.789213, -0.613764,
		-0.128623, 0.610918, -0.781176,
		70.046791, 59.050808, 59.457146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.497711, 58.358730, 59.363659>,  <70.136833, 58.623165, 60.003967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.497711, 58.358730, 59.363659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.464485, 58.757347, 59.362228>,  <70.444550, 58.996517, 59.361370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.464485, 58.757347, 59.362228>,  <70.497711, 58.358730, 59.363659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.464485, 58.757347, 59.362228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996430, 0.082995, -0.015478,
		-0.015127, -0.004850, -0.999874,
		-0.083060, 0.996538, -0.003577,
		70.439568, 59.056309, 59.361156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.128372, 58.515892, 59.172771>,  <70.497711, 58.358730, 59.363659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.128372, 58.515892, 59.172771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.973801, 58.872833, 59.266052>,  <70.881058, 59.086998, 59.322021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.973801, 58.872833, 59.266052>,  <71.128372, 58.515892, 59.172771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.973801, 58.872833, 59.266052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920230, 0.356020, 0.162561,
		0.062038, 0.277414, -0.958745,
		-0.386429, 0.892351, 0.233198,
		70.857872, 59.140537, 59.336010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.737404, 58.174522, 59.303871>,  <71.128372, 58.515892, 59.172771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.737404, 58.174522, 59.303871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.669510, 58.352516, 59.655594>,  <71.628769, 58.459312, 59.866627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.669510, 58.352516, 59.655594>,  <71.737404, 58.174522, 59.303871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.669510, 58.352516, 59.655594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821011, -0.429673, 0.375928,
		0.545096, 0.785728, -0.292406,
		-0.169739, 0.444985, 0.879305,
		71.618591, 58.486012, 59.919384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.407715, 58.297394, 59.370628>,  <71.737404, 58.174522, 59.303871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.407715, 58.297394, 59.370628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.211899, 58.326546, 59.718201>,  <72.094414, 58.344036, 59.926746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.211899, 58.326546, 59.718201>,  <72.407715, 58.297394, 59.370628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.211899, 58.326546, 59.718201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724301, -0.520886, 0.451737,
		0.485536, 0.850510, 0.202207,
		-0.489534, 0.072876, 0.868934,
		72.065041, 58.348408, 59.978882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.455956, 57.583637, 59.451500>,  <72.407715, 58.297394, 59.370628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.455956, 57.583637, 59.451500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.468681, 57.315895, 59.748405>,  <72.476318, 57.155251, 59.926548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.468681, 57.315895, 59.748405>,  <72.455956, 57.583637, 59.451500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.468681, 57.315895, 59.748405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999076, 0.042759, -0.004259,
		-0.028888, 0.741714, 0.670094,
		0.031812, -0.669352, 0.742264,
		72.478226, 57.115089, 59.971085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.805466, 57.966179, 59.938755>,  <72.455956, 57.583637, 59.451500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.805466, 57.966179, 59.938755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.870300, 57.571491, 59.942955>,  <72.909203, 57.334679, 59.945477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.870300, 57.571491, 59.942955>,  <72.805466, 57.966179, 59.938755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.870300, 57.571491, 59.942955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986363, 0.162316, 0.027237,
		-0.028580, 0.005941, 0.999574,
		0.162085, -0.986721, 0.010499,
		72.918922, 57.275475, 59.946106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.202019, 57.947712, 60.495464>,  <72.805466, 57.966179, 59.938755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.202019, 57.947712, 60.495464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.254883, 57.645027, 60.239365>,  <73.286598, 57.463417, 60.085705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.254883, 57.645027, 60.239365>,  <73.202019, 57.947712, 60.495464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.254883, 57.645027, 60.239365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988615, 0.147500, 0.029736,
		0.071935, -0.636889, 0.767592,
		0.132158, -0.756714, -0.640249,
		73.294533, 57.418015, 60.047291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
