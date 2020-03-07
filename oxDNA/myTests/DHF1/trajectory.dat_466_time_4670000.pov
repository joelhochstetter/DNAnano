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
	<2.641062, 2.605824, 2.029154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.711563, 2.918789, 2.268074>,  <2.753864, 3.106568, 2.411426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.711563, 2.918789, 2.268074>,  <2.641062, 2.605824, 2.029154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.711563, 2.918789, 2.268074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319357, 0.619428, -0.717162,
		-0.931100, -0.064350, 0.359044,
		0.176252, 0.782412, 0.597300,
		2.764439, 3.153512, 2.447264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.055801, 3.021941, 2.221964>,  <2.641062, 2.605824, 2.029154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.055801, 3.021941, 2.221964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.361916, 3.277206, 2.255630>,  <2.545584, 3.430366, 2.275831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.361916, 3.277206, 2.255630>,  <2.055801, 3.021941, 2.221964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.361916, 3.277206, 2.255630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424714, 0.598863, -0.678955,
		-0.483690, 0.483848, 0.729339,
		0.765286, 0.638165, 0.084167,
		2.591501, 3.468656, 2.280881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.904615, 3.748389, 2.418885>,  <2.055801, 3.021941, 2.221964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.904615, 3.748389, 2.418885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.220249, 3.697727, 2.178452>,  <2.409630, 3.667330, 2.034191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.220249, 3.697727, 2.178452>,  <1.904615, 3.748389, 2.418885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.220249, 3.697727, 2.178452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496410, 0.444894, -0.745417,
		0.361829, 0.886582, 0.288187,
		0.789086, -0.126655, -0.601084,
		2.456975, 3.659731, 1.998126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.111452, 4.407489, 2.158950>,  <1.904615, 3.748389, 2.418885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.111452, 4.407489, 2.158950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.222577, 4.120098, 1.903885>,  <2.289251, 3.947664, 1.750846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.222577, 4.120098, 1.903885>,  <2.111452, 4.407489, 2.158950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.222577, 4.120098, 1.903885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482660, 0.469526, -0.739314,
		0.830578, 0.513164, -0.216340,
		0.277811, -0.718477, -0.637662,
		2.305920, 3.904555, 1.712586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.327741, 4.715132, 1.561932>,  <2.111452, 4.407489, 2.158950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.327741, 4.715132, 1.561932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.207855, 4.361435, 1.418663>,  <2.135924, 4.149217, 1.332702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.207855, 4.361435, 1.418663>,  <2.327741, 4.715132, 1.561932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.207855, 4.361435, 1.418663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507976, 0.465697, -0.724628,
		0.807546, -0.035238, -0.588750,
		-0.299714, -0.884242, -0.358172,
		2.117941, 4.096162, 1.311211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.397743, 4.842349, 0.879424>,  <2.327741, 4.715132, 1.561932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.397743, 4.842349, 0.879424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.169427, 4.515724, 0.913895>,  <2.032437, 4.319749, 0.934577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.169427, 4.515724, 0.913895>,  <2.397743, 4.842349, 0.879424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.169427, 4.515724, 0.913895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515883, 0.274986, -0.811325,
		0.638799, -0.507553, -0.578209,
		-0.570790, -0.816562, 0.086177,
		1.998190, 4.270756, 0.939748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.281002, 4.505002, 0.150428>,  <2.397743, 4.842349, 0.879424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.281002, 4.505002, 0.150428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.962759, 4.413849, 0.374954>,  <1.771813, 4.359157, 0.509670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.962759, 4.413849, 0.374954>,  <2.281002, 4.505002, 0.150428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.962759, 4.413849, 0.374954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588120, 0.068260, -0.805888,
		0.145336, -0.971292, -0.188334,
		-0.795608, -0.227888, 0.561316,
		1.724077, 4.345484, 0.543349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.917219, 3.859204, -0.080137>,  <2.281002, 4.505002, 0.150428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.917219, 3.859204, -0.080137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.686823, 4.140190, 0.087090>,  <1.548586, 4.308782, 0.187425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.686823, 4.140190, 0.087090>,  <1.917219, 3.859204, -0.080137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.686823, 4.140190, 0.087090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548893, 0.046633, -0.834591,
		-0.605767, -0.710188, 0.358719,
		-0.575988, 0.702466, 0.418066,
		1.514027, 4.350930, 0.212509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.535327, 4.893245, -0.718861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.309933, 4.941757, -0.391991>,  <0.174696, 4.970864, -0.195869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.309933, 4.941757, -0.391991>,  <0.535327, 4.893245, -0.718861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.309933, 4.941757, -0.391991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528437, -0.707418, 0.469376,
		0.635010, 0.696312, 0.334532,
		-0.563486, 0.121280, 0.817175,
		0.140887, 4.978141, -0.146838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.973278, 5.017993, -0.203868>,  <0.535327, 4.893245, -0.718861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.973278, 5.017993, -0.203868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.660570, 4.843605, -0.025536>,  <0.472945, 4.738972, 0.081464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.660570, 4.843605, -0.025536>,  <0.973278, 5.017993, -0.203868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.660570, 4.843605, -0.025536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619538, -0.624200, 0.475970,
		0.070779, 0.648308, 0.758081,
		-0.781769, -0.435971, 0.445832,
		0.426039, 4.712814, 0.108214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.043719, 5.076623, 0.554827>,  <0.973278, 5.017993, -0.203868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.043719, 5.076623, 0.554827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.837961, 4.746498, 0.461655>,  <0.714507, 4.548423, 0.405751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.837961, 4.746498, 0.461655>,  <1.043719, 5.076623, 0.554827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.837961, 4.746498, 0.461655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706687, -0.561830, 0.430047,
		-0.485791, 0.056604, 0.872240,
		-0.514394, -0.825314, -0.232931,
		0.683643, 4.498904, 0.391775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.721929, 4.632463, 1.159275>,  <1.043719, 5.076623, 0.554827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.721929, 4.632463, 1.159275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.851151, 4.444054, 0.830940>,  <0.928683, 4.331008, 0.633939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.851151, 4.444054, 0.830940>,  <0.721929, 4.632463, 1.159275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.851151, 4.444054, 0.830940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669000, -0.499821, 0.550108,
		-0.669385, -0.726854, 0.153646,
		0.323053, -0.471023, -0.820837,
		0.948066, 4.302747, 0.584689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.744155, 3.856703, 1.181334>,  <0.721929, 4.632463, 1.159275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.744155, 3.856703, 1.181334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.059507, 3.967445, 0.961586>,  <1.248719, 4.033891, 0.829737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.059507, 3.967445, 0.961586>,  <0.744155, 3.856703, 1.181334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.059507, 3.967445, 0.961586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604779, -0.512378, 0.609681,
		-0.112691, -0.812908, -0.571385,
		0.788380, 0.276856, -0.549370,
		1.296021, 4.050502, 0.796775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.150730, 3.325079, 1.133344>,  <0.744155, 3.856703, 1.181334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.150730, 3.325079, 1.133344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.407032, 3.620689, 1.050133>,  <1.560813, 3.798055, 1.000206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.407032, 3.620689, 1.050133>,  <1.150730, 3.325079, 1.133344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.407032, 3.620689, 1.050133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682416, -0.424084, 0.595367,
		0.351770, -0.523445, -0.776056,
		0.640755, 0.739025, -0.208027,
		1.599258, 3.842397, 0.987724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.815789, 2.931721, 0.914142>,  <1.150730, 3.325079, 1.133344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.815789, 2.931721, 0.914142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.905846, 3.299751, 1.042374>,  <1.959880, 3.520570, 1.119313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.905846, 3.299751, 1.042374>,  <1.815789, 2.931721, 0.914142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.905846, 3.299751, 1.042374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632836, -0.388267, 0.669901,
		0.740830, 0.052051, -0.669672,
		0.225143, 0.920076, 0.320580,
		1.973388, 3.575774, 1.138548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.573851, 2.934852, 0.887949>,  <1.815789, 2.931721, 0.914142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.573851, 2.934852, 0.887949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.459873, 3.216591, 1.148010>,  <2.391487, 3.385634, 1.304047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.459873, 3.216591, 1.148010>,  <2.573851, 2.934852, 0.887949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.459873, 3.216591, 1.148010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806161, -0.190847, 0.560073,
		0.518566, 0.683718, -0.513438,
		-0.284944, 0.704348, 0.650154,
		2.374390, 3.427895, 1.343056>
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
