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
	<24.479540, 35.013233, 34.619335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.174517, 34.889778, 34.846756>,  <23.991503, 34.815704, 34.983208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.174517, 34.889778, 34.846756>,  <24.479540, 35.013233, 34.619335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.174517, 34.889778, 34.846756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543843, 0.781791, -0.305022,
		-0.350347, -0.541798, -0.764010,
		-0.762557, -0.308638, 0.568551,
		23.945749, 34.797188, 35.017323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896431, 34.395252, 34.705414>,  <24.479540, 35.013233, 34.619335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896431, 34.395252, 34.705414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285402, 34.314060, 34.659489>,  <25.518785, 34.265347, 34.631935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285402, 34.314060, 34.659489>,  <24.896431, 34.395252, 34.705414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.285402, 34.314060, 34.659489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209276, -0.542382, -0.813649,
		0.102881, 0.815243, -0.569907,
		0.972429, -0.202977, -0.114810,
		25.577131, 34.253166, 34.625046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055874, 34.580742, 34.012402>,  <24.896431, 34.395252, 34.705414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055874, 34.580742, 34.012402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340418, 34.330456, 34.140427>,  <25.511145, 34.180283, 34.217243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340418, 34.330456, 34.140427>,  <25.055874, 34.580742, 34.012402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340418, 34.330456, 34.140427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105754, -0.545507, -0.831407,
		0.694825, 0.557582, -0.454225,
		0.711361, -0.625719, 0.320066,
		25.553825, 34.142738, 34.236446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.347059, 34.393757, 33.421761>,  <25.055874, 34.580742, 34.012402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.347059, 34.393757, 33.421761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424263, 34.106007, 33.688667>,  <25.470585, 33.933357, 33.848812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424263, 34.106007, 33.688667>,  <25.347059, 34.393757, 33.421761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424263, 34.106007, 33.688667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136593, -0.693134, -0.707748,
		0.971643, 0.045458, -0.232043,
		0.193010, -0.719374, 0.667270,
		25.482166, 33.890194, 33.888847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977386, 34.070801, 33.120277>,  <25.347059, 34.393757, 33.421761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977386, 34.070801, 33.120277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790777, 33.820717, 33.370548>,  <25.678812, 33.670666, 33.520710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790777, 33.820717, 33.370548>,  <25.977386, 34.070801, 33.120277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790777, 33.820717, 33.370548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121848, -0.655201, -0.745563,
		0.876076, -0.424060, 0.229486,
		-0.466523, -0.625207, 0.625677,
		25.650820, 33.633156, 33.558250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345444, 33.425961, 33.155079>,  <25.977386, 34.070801, 33.120277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345444, 33.425961, 33.155079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952721, 33.384560, 33.218750>,  <25.717087, 33.359718, 33.256950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952721, 33.384560, 33.218750>,  <26.345444, 33.425961, 33.155079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952721, 33.384560, 33.218750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070171, -0.581184, -0.810742,
		0.176423, -0.807164, 0.563349,
		-0.981810, -0.103503, 0.159174,
		25.658178, 33.353508, 33.266502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243078, 32.706963, 33.191097>,  <26.345444, 33.425961, 33.155079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243078, 32.706963, 33.191097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907980, 32.896084, 33.081814>,  <25.706921, 33.009556, 33.016243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907980, 32.896084, 33.081814>,  <26.243078, 32.706963, 33.191097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907980, 32.896084, 33.081814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064329, -0.411388, -0.909188,
		-0.542259, -0.779243, 0.314223,
		-0.837746, 0.472801, -0.273207,
		25.656656, 33.037926, 32.999851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907516, 32.207657, 32.773415>,  <26.243078, 32.706963, 33.191097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907516, 32.207657, 32.773415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736050, 32.550476, 32.659073>,  <25.633169, 32.756168, 32.590469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736050, 32.550476, 32.659073>,  <25.907516, 32.207657, 32.773415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736050, 32.550476, 32.659073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259125, -0.186474, -0.947672,
		-0.865504, -0.480310, -0.142147,
		-0.428669, 0.857048, -0.285854,
		25.607449, 32.807590, 32.573318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536472, 31.991131, 32.179779>,  <25.907516, 32.207657, 32.773415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536472, 31.991131, 32.179779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554955, 32.390472, 32.166210>,  <25.566044, 32.630077, 32.158070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554955, 32.390472, 32.166210>,  <25.536472, 31.991131, 32.179779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554955, 32.390472, 32.166210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161680, -0.040984, -0.985992,
		-0.985761, 0.040072, -0.163308,
		0.046203, 0.998356, -0.033922,
		25.568815, 32.689980, 32.156033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990774, 32.215286, 31.830069>,  <25.536472, 31.991131, 32.179779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990774, 32.215286, 31.830069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290310, 32.478733, 31.800501>,  <25.470032, 32.636803, 31.782761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290310, 32.478733, 31.800501>,  <24.990774, 32.215286, 31.830069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290310, 32.478733, 31.800501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012928, -0.096995, -0.995201,
		-0.662626, 0.746201, -0.064119,
		0.748839, 0.658617, -0.073919,
		25.514961, 32.676319, 31.778326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857029, 32.614273, 31.163731>,  <24.990774, 32.215286, 31.830069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857029, 32.614273, 31.163731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238897, 32.673012, 31.267296>,  <25.468019, 32.708256, 31.329435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238897, 32.673012, 31.267296>,  <24.857029, 32.614273, 31.163731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.238897, 32.673012, 31.267296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280960, -0.157315, -0.946738,
		-0.098291, 0.976570, -0.191441,
		0.954673, 0.146843, 0.258915,
		25.525299, 32.717064, 31.344971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230795, 33.184063, 30.737551>,  <24.857029, 32.614273, 31.163731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230795, 33.184063, 30.737551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467377, 32.894131, 30.878859>,  <25.609325, 32.720169, 30.963644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467377, 32.894131, 30.878859>,  <25.230795, 33.184063, 30.737551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467377, 32.894131, 30.878859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327016, -0.184846, -0.926764,
		0.737051, 0.663663, 0.127704,
		0.591453, -0.724834, 0.353270,
		25.644814, 32.676682, 30.984840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796646, 33.378693, 30.438051>,  <25.230795, 33.184063, 30.737551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796646, 33.378693, 30.438051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790787, 32.981514, 30.485117>,  <25.787271, 32.743206, 30.513355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790787, 32.981514, 30.485117>,  <25.796646, 33.378693, 30.438051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790787, 32.981514, 30.485117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398521, -0.113724, -0.910081,
		0.917042, 0.033559, 0.397376,
		-0.014649, -0.992945, 0.117664,
		25.786392, 32.683632, 30.520416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469198, 33.046211, 30.428787>,  <25.796646, 33.378693, 30.438051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469198, 33.046211, 30.428787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202225, 32.783184, 30.288994>,  <26.042042, 32.625366, 30.205118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202225, 32.783184, 30.288994>,  <26.469198, 33.046211, 30.428787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202225, 32.783184, 30.288994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551346, -0.120900, -0.825470,
		0.500550, -0.743631, 0.443241,
		-0.667433, -0.657568, -0.349482,
		26.001995, 32.585915, 30.184149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085365, 32.627342, 30.466335>,  <26.469198, 33.046211, 30.428787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085365, 32.627342, 30.466335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296663, 32.703117, 30.797411>,  <27.423443, 32.748585, 30.996056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296663, 32.703117, 30.797411>,  <27.085365, 32.627342, 30.466335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296663, 32.703117, 30.797411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034094, 0.969275, -0.243606,
		-0.848407, 0.156903, 0.505557,
		0.528246, 0.189440, 0.827689,
		27.455137, 32.759949, 31.045717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766161, 32.387848, 31.136963>,  <27.085365, 32.627342, 30.466335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766161, 32.387848, 31.136963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444588, 32.619480, 31.082767>,  <26.251644, 32.758461, 31.050251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444588, 32.619480, 31.082767>,  <26.766161, 32.387848, 31.136963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444588, 32.619480, 31.082767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029852, 0.188236, 0.981670,
		0.593969, 0.793242, -0.134043,
		-0.803934, 0.579080, -0.135487,
		26.203407, 32.793205, 31.042122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744970, 32.928932, 31.627981>,  <26.766161, 32.387848, 31.136963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744970, 32.928932, 31.627981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.356014, 32.900055, 31.539213>,  <26.122641, 32.882729, 31.485952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.356014, 32.900055, 31.539213>,  <26.744970, 32.928932, 31.627981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.356014, 32.900055, 31.539213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233062, 0.349109, 0.907637,
		0.011947, 0.934297, -0.356296,
		-0.972388, -0.072196, -0.221920,
		26.064299, 32.878395, 31.472637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381945, 33.605671, 31.723957>,  <26.744970, 32.928932, 31.627981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381945, 33.605671, 31.723957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100643, 33.321918, 31.742786>,  <25.931862, 33.151669, 31.754084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100643, 33.321918, 31.742786>,  <26.381945, 33.605671, 31.723957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100643, 33.321918, 31.742786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332831, 0.387023, 0.859905,
		-0.628217, 0.589064, -0.508279,
		-0.703254, -0.709378, 0.047076,
		25.889668, 33.109104, 31.756908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820728, 33.938568, 32.024769>,  <26.381945, 33.605671, 31.723957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820728, 33.938568, 32.024769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709444, 33.555901, 32.059155>,  <25.642673, 33.326302, 32.079784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709444, 33.555901, 32.059155>,  <25.820728, 33.938568, 32.024769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709444, 33.555901, 32.059155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398576, 0.196409, 0.895857,
		-0.873920, 0.214974, -0.435947,
		-0.278210, -0.956666, 0.085962,
		25.625980, 33.268902, 32.084942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147213, 34.015842, 32.283295>,  <25.820728, 33.938568, 32.024769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147213, 34.015842, 32.283295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273451, 33.645695, 32.367290>,  <25.349194, 33.423607, 32.417686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273451, 33.645695, 32.367290>,  <25.147213, 34.015842, 32.283295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273451, 33.645695, 32.367290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320335, 0.104408, 0.941533,
		-0.893188, -0.364411, -0.263477,
		0.315596, -0.925367, 0.209990,
		25.368130, 33.368084, 32.430286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.672445, 33.669128, 31.787708>,  <25.147213, 34.015842, 32.283295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.672445, 33.669128, 31.787708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915165, 33.666916, 31.469774>,  <25.060797, 33.665588, 31.279013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915165, 33.666916, 31.469774>,  <24.672445, 33.669128, 31.787708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915165, 33.666916, 31.469774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602385, 0.649209, -0.464391,
		0.518583, 0.760589, 0.390608,
		0.606798, -0.005529, -0.794837,
		25.097204, 33.665257, 31.231323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.605061, 33.680740, 32.591694>,  <24.672445, 33.669128, 31.787708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.605061, 33.680740, 32.591694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941967, 33.506283, 32.718418>,  <25.144112, 33.401608, 32.794453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941967, 33.506283, 32.718418>,  <24.605061, 33.680740, 32.591694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.941967, 33.506283, 32.718418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276898, 0.154196, 0.948446,
		-0.462507, -0.886569, 0.009108,
		0.842268, -0.436141, 0.316806,
		25.194647, 33.375443, 32.813461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.426603, 33.242508, 33.144035>,  <24.605061, 33.680740, 32.591694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.426603, 33.242508, 33.144035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813299, 33.339790, 33.175697>,  <25.045317, 33.398159, 33.194695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813299, 33.339790, 33.175697>,  <24.426603, 33.242508, 33.144035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.813299, 33.339790, 33.175697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149975, 0.288371, 0.945701,
		0.207173, -0.926118, 0.315254,
		0.966740, 0.243204, 0.079152,
		25.103321, 33.412754, 33.199444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631016, 32.951820, 33.812756>,  <24.426603, 33.242508, 33.144035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631016, 32.951820, 33.812756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900782, 33.232124, 33.719719>,  <25.062641, 33.400307, 33.663895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900782, 33.232124, 33.719719>,  <24.631016, 32.951820, 33.812756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.900782, 33.232124, 33.719719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110309, 0.407111, 0.906693,
		0.730067, -0.585829, 0.351862,
		0.674414, 0.700760, -0.232595,
		25.103106, 33.442352, 33.649940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124861, 32.786430, 34.408680>,  <24.631016, 32.951820, 33.812756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124861, 32.786430, 34.408680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303024, 33.017712, 34.135246>,  <25.409924, 33.156483, 33.971188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303024, 33.017712, 34.135246>,  <25.124861, 32.786430, 34.408680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303024, 33.017712, 34.135246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436956, 0.526016, 0.729641,
		0.781460, -0.623686, -0.018358,
		0.445410, 0.578207, -0.683584,
		25.436647, 33.191174, 33.930172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705606, 32.907330, 34.740170>,  <25.124861, 32.786430, 34.408680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705606, 32.907330, 34.740170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637850, 33.196926, 34.472694>,  <25.597197, 33.370682, 34.312210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637850, 33.196926, 34.472694>,  <25.705606, 32.907330, 34.740170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637850, 33.196926, 34.472694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367317, 0.675989, 0.638841,
		0.914541, -0.137408, -0.380439,
		-0.169391, 0.723987, -0.668692,
		25.587032, 33.414124, 34.272087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381777, 33.156723, 34.566273>,  <25.705606, 32.907330, 34.740170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381777, 33.156723, 34.566273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102489, 33.436401, 34.504795>,  <25.934917, 33.604206, 34.467907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102489, 33.436401, 34.504795>,  <26.381777, 33.156723, 34.566273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102489, 33.436401, 34.504795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474147, 0.612510, 0.632468,
		0.536356, 0.368727, -0.759185,
		-0.698217, 0.699194, -0.153693,
		25.893024, 33.646160, 34.458687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732712, 33.678974, 34.440834>,  <26.381777, 33.156723, 34.566273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732712, 33.678974, 34.440834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377380, 33.794788, 34.583405>,  <26.164181, 33.864277, 34.668945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377380, 33.794788, 34.583405>,  <26.732712, 33.678974, 34.440834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377380, 33.794788, 34.583405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459172, 0.569427, 0.681846,
		-0.005540, 0.769365, -0.638786,
		-0.888330, 0.289535, 0.356425,
		26.110882, 33.881649, 34.690331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280247, 33.438370, 33.999321>,  <26.732712, 33.678974, 34.440834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280247, 33.438370, 33.999321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666704, 33.516373, 33.931744>,  <27.898579, 33.563175, 33.891197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666704, 33.516373, 33.931744>,  <27.280247, 33.438370, 33.999321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666704, 33.516373, 33.931744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258006, -0.731469, 0.631178,
		-0.000491, -0.653395, -0.757016,
		0.966143, 0.195005, -0.168939,
		27.956547, 33.574875, 33.881062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929655, 33.053509, 34.183567>,  <27.280247, 33.438370, 33.999321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929655, 33.053509, 34.183567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309162, 33.179813, 34.178925>,  <28.536867, 33.255596, 34.176140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309162, 33.179813, 34.178925>,  <27.929655, 33.053509, 34.183567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309162, 33.179813, 34.178925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212170, 0.663870, 0.717120,
		0.234143, -0.677918, 0.696853,
		0.948768, 0.315760, -0.011607,
		28.593792, 33.274540, 34.175442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240030, 33.029312, 34.828239>,  <27.929655, 33.053509, 34.183567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240030, 33.029312, 34.828239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422091, 33.325542, 34.630501>,  <28.531326, 33.503281, 34.511856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422091, 33.325542, 34.630501>,  <28.240030, 33.029312, 34.828239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422091, 33.325542, 34.630501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165657, 0.615926, 0.770191,
		0.874870, -0.268659, 0.403020,
		0.455148, 0.740580, -0.494350,
		28.558636, 33.547718, 34.482197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666162, 33.308098, 35.314468>,  <28.240030, 33.029312, 34.828239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666162, 33.308098, 35.314468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618498, 33.576542, 35.021782>,  <28.589899, 33.737610, 34.846169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618498, 33.576542, 35.021782>,  <28.666162, 33.308098, 35.314468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618498, 33.576542, 35.021782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321842, 0.671065, 0.667899,
		0.939264, 0.315086, 0.136026,
		-0.119163, 0.671113, -0.731716,
		28.582748, 33.777874, 34.802269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034376, 33.929619, 35.508488>,  <28.666162, 33.308098, 35.314468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034376, 33.929619, 35.508488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746025, 34.038433, 35.253513>,  <28.573013, 34.103722, 35.100529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746025, 34.038433, 35.253513>,  <29.034376, 33.929619, 35.508488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746025, 34.038433, 35.253513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389431, 0.601822, 0.697247,
		0.573304, 0.750869, -0.327901,
		-0.720879, 0.272040, -0.637438,
		28.529762, 34.120045, 35.062283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902399, 34.641148, 35.659637>,  <29.034376, 33.929619, 35.508488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902399, 34.641148, 35.659637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577234, 34.532604, 35.453514>,  <28.382135, 34.467480, 35.329842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577234, 34.532604, 35.453514>,  <28.902399, 34.641148, 35.659637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577234, 34.532604, 35.453514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562771, 0.593727, 0.575132,
		0.149886, 0.757531, -0.635359,
		-0.812910, -0.271357, -0.515308,
		28.333361, 34.451199, 35.298923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545343, 35.119892, 35.226048>,  <28.902399, 34.641148, 35.659637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545343, 35.119892, 35.226048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270561, 34.862663, 35.361427>,  <28.105692, 34.708324, 35.442657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270561, 34.862663, 35.361427>,  <28.545343, 35.119892, 35.226048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270561, 34.862663, 35.361427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591491, 0.765367, 0.253677,
		-0.422172, -0.025926, -0.906145,
		-0.686957, -0.643072, 0.338452,
		28.064474, 34.669743, 35.462963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926416, 35.270199, 34.979607>,  <28.545343, 35.119892, 35.226048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926416, 35.270199, 34.979607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843040, 35.102505, 35.333057>,  <27.793015, 35.001888, 35.545128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843040, 35.102505, 35.333057>,  <27.926416, 35.270199, 34.979607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843040, 35.102505, 35.333057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690456, 0.702959, 0.170645,
		-0.692692, -0.574535, -0.435990,
		-0.208441, -0.419236, 0.883625,
		27.780508, 34.976734, 35.598145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300224, 35.808762, 34.982677>,  <27.926416, 35.270199, 34.979607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300224, 35.808762, 34.982677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323462, 35.464493, 35.185013>,  <27.337404, 35.257931, 35.306412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323462, 35.464493, 35.185013>,  <27.300224, 35.808762, 34.982677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323462, 35.464493, 35.185013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606778, 0.371915, 0.702495,
		-0.792745, -0.347742, -0.500630,
		0.058095, -0.860671, 0.505836,
		27.340891, 35.206291, 35.336765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615564, 35.657860, 35.167377>,  <27.300224, 35.808762, 34.982677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615564, 35.657860, 35.167377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862844, 35.456596, 35.408928>,  <27.011213, 35.335838, 35.553856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862844, 35.456596, 35.408928>,  <26.615564, 35.657860, 35.167377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862844, 35.456596, 35.408928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540810, 0.285236, 0.791306,
		-0.570396, -0.815766, -0.095779,
		0.618201, -0.503156, 0.603872,
		27.048306, 35.305649, 35.590088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292336, 35.554443, 35.890251>,  <26.615564, 35.657860, 35.167377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292336, 35.554443, 35.890251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682930, 35.489357, 35.946815>,  <26.917286, 35.450306, 35.980755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682930, 35.489357, 35.946815>,  <26.292336, 35.554443, 35.890251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682930, 35.489357, 35.946815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078502, 0.342526, 0.936223,
		-0.200777, -0.925310, 0.321698,
		0.976486, -0.162718, 0.141410,
		26.975876, 35.440540, 35.989239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486479, 35.371719, 36.541340>,  <26.292336, 35.554443, 35.890251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486479, 35.371719, 36.541340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824467, 35.530163, 36.397602>,  <27.027260, 35.625229, 36.311359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824467, 35.530163, 36.397602>,  <26.486479, 35.371719, 36.541340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824467, 35.530163, 36.397602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121352, 0.512379, 0.850142,
		0.520877, -0.761945, 0.384872,
		0.844962, 0.396114, -0.359351,
		27.077957, 35.648994, 36.289799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033598, 35.198002, 36.906158>,  <26.486479, 35.371719, 36.541340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033598, 35.198002, 36.906158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099169, 35.544548, 36.717461>,  <27.138512, 35.752476, 36.604240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099169, 35.544548, 36.717461>,  <27.033598, 35.198002, 36.906158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099169, 35.544548, 36.717461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053583, 0.469687, 0.881206,
		0.985016, -0.169730, 0.030572,
		0.163926, 0.866364, -0.471744,
		27.148346, 35.804459, 36.575939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704231, 35.523762, 37.054642>,  <27.033598, 35.198002, 36.906158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704231, 35.523762, 37.054642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403564, 35.778625, 36.986496>,  <27.223164, 35.931545, 36.945610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403564, 35.778625, 36.986496>,  <27.704231, 35.523762, 37.054642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403564, 35.778625, 36.986496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190439, 0.456978, 0.868852,
		0.631451, 0.620643, -0.464835,
		-0.751666, 0.637161, -0.170364,
		27.178064, 35.969772, 36.935387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052973, 35.220257, 36.486259>,  <27.704231, 35.523762, 37.054642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052973, 35.220257, 36.486259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674852, 35.230129, 36.356152>,  <27.447981, 35.236053, 36.278088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674852, 35.230129, 36.356152>,  <28.052973, 35.220257, 36.486259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674852, 35.230129, 36.356152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230455, -0.655185, -0.719460,
		-0.230866, -0.755065, 0.613659,
		-0.945300, 0.024678, -0.325269,
		27.391262, 35.237534, 36.258572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793062, 34.584724, 36.480160>,  <28.052973, 35.220257, 36.486259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793062, 34.584724, 36.480160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545263, 34.771896, 36.228043>,  <27.396584, 34.884201, 36.076775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545263, 34.771896, 36.228043>,  <27.793062, 34.584724, 36.480160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545263, 34.771896, 36.228043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122300, -0.735583, -0.666304,
		-0.775415, -0.489857, 0.398462,
		-0.619495, 0.467930, -0.630292,
		27.359415, 34.912273, 36.038956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367361, 34.069084, 36.035995>,  <27.793062, 34.584724, 36.480160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367361, 34.069084, 36.035995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400005, 34.409676, 35.828796>,  <27.419592, 34.614029, 35.704475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400005, 34.409676, 35.828796>,  <27.367361, 34.069084, 36.035995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400005, 34.409676, 35.828796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378986, -0.507203, -0.774025,
		-0.921797, -0.133145, -0.364092,
		0.081611, 0.851479, -0.517999,
		27.424488, 34.665119, 35.673397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037607, 34.058418, 35.276604>,  <27.367361, 34.069084, 36.035995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037607, 34.058418, 35.276604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345270, 34.314041, 35.277714>,  <27.529867, 34.467415, 35.278378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345270, 34.314041, 35.277714>,  <27.037607, 34.058418, 35.276604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345270, 34.314041, 35.277714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457899, -0.548082, -0.699953,
		-0.445790, 0.539642, -0.714183,
		0.769155, 0.639056, 0.002772,
		27.576017, 34.505756, 35.278545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247021, 34.260464, 34.597145>,  <27.037607, 34.058418, 35.276604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247021, 34.260464, 34.597145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578838, 34.349369, 34.802067>,  <27.777929, 34.402710, 34.925018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578838, 34.349369, 34.802067>,  <27.247021, 34.260464, 34.597145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578838, 34.349369, 34.802067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557585, -0.278971, -0.781840,
		-0.030855, 0.934224, -0.355349,
		0.829546, 0.222261, 0.512302,
		27.827702, 34.416046, 34.955757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714012, 34.624634, 34.181026>,  <27.247021, 34.260464, 34.597145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714012, 34.624634, 34.181026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957243, 34.473534, 34.460323>,  <28.103182, 34.382874, 34.627903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957243, 34.473534, 34.460323>,  <27.714012, 34.624634, 34.181026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957243, 34.473534, 34.460323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607313, -0.345104, -0.715594,
		0.511284, 0.859189, 0.019563,
		0.608079, -0.377752, 0.698243,
		28.139668, 34.360207, 34.669796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477642, 34.730541, 33.985180>,  <27.714012, 34.624634, 34.181026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477642, 34.730541, 33.985180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480206, 34.407829, 34.221504>,  <28.481745, 34.214203, 34.363300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480206, 34.407829, 34.221504>,  <28.477642, 34.730541, 33.985180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480206, 34.407829, 34.221504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697079, -0.420005, -0.581099,
		0.716966, 0.415569, 0.559699,
		0.006410, -0.806782, 0.590814,
		28.482128, 34.165794, 34.398746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194885, 34.524235, 33.996613>,  <28.477642, 34.730541, 33.985180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194885, 34.524235, 33.996613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988474, 34.226715, 34.166542>,  <28.864628, 34.048203, 34.268501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988474, 34.226715, 34.166542>,  <29.194885, 34.524235, 33.996613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988474, 34.226715, 34.166542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471302, -0.660684, -0.584270,
		0.715255, -0.101280, 0.691486,
		-0.516028, -0.743801, 0.424824,
		28.833666, 34.003574, 34.293991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726704, 33.905781, 34.042446>,  <29.194885, 34.524235, 33.996613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726704, 33.905781, 34.042446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374763, 33.723797, 34.097397>,  <29.163599, 33.614605, 34.130367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374763, 33.723797, 34.097397>,  <29.726704, 33.905781, 34.042446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374763, 33.723797, 34.097397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304683, -0.761833, -0.571646,
		0.364736, -0.461106, 0.808918,
		-0.879850, -0.454964, 0.137377,
		29.110809, 33.587307, 34.138611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860168, 33.134216, 34.202332>,  <29.726704, 33.905781, 34.042446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860168, 33.134216, 34.202332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491373, 33.179184, 34.054115>,  <29.270096, 33.206165, 33.965187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491373, 33.179184, 34.054115>,  <29.860168, 33.134216, 34.202332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491373, 33.179184, 34.054115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240364, -0.584088, -0.775285,
		-0.303581, -0.803868, 0.511502,
		-0.921989, 0.112415, -0.370539,
		29.214777, 33.212910, 33.942955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751476, 32.404427, 34.080063>,  <29.860168, 33.134216, 34.202332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751476, 32.404427, 34.080063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604258, 32.709766, 33.867710>,  <29.515926, 32.892971, 33.740299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604258, 32.709766, 33.867710>,  <29.751476, 32.404427, 34.080063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604258, 32.709766, 33.867710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404963, -0.382357, -0.830546,
		-0.836987, -0.520666, -0.168405,
		-0.368046, 0.763354, -0.530879,
		29.493843, 32.938774, 33.708447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889397, 32.711128, 34.780533>,  <29.751476, 32.404427, 34.080063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889397, 32.711128, 34.780533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526142, 32.733788, 34.614601>,  <29.308189, 32.747383, 34.515041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526142, 32.733788, 34.614601>,  <29.889397, 32.711128, 34.780533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526142, 32.733788, 34.614601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234633, 0.751730, 0.616319,
		0.346752, 0.657033, -0.669381,
		-0.908136, 0.056651, -0.414825,
		29.253702, 32.750782, 34.490154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600925, 32.497444, 34.762402>,  <29.889397, 32.711128, 34.780533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600925, 32.497444, 34.762402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919683, 32.466923, 35.002113>,  <31.110939, 32.448612, 35.145939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919683, 32.466923, 35.002113>,  <30.600925, 32.497444, 34.762402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919683, 32.466923, 35.002113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574510, -0.402452, 0.712721,
		0.186799, -0.912256, -0.364548,
		0.796897, -0.076301, 0.599278,
		31.158752, 32.444031, 35.181896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659481, 31.790842, 35.041077>,  <30.600925, 32.497444, 34.762402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659481, 31.790842, 35.041077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889528, 32.000088, 35.292660>,  <31.027557, 32.125633, 35.443611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889528, 32.000088, 35.292660>,  <30.659481, 31.790842, 35.041077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889528, 32.000088, 35.292660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410123, -0.480871, 0.774959,
		0.707841, -0.703644, -0.062016,
		0.575118, 0.523113, 0.628961,
		31.062063, 32.157021, 35.481346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798059, 31.398218, 35.630550>,  <30.659481, 31.790842, 35.041077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798059, 31.398218, 35.630550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877104, 31.755804, 35.791435>,  <30.924530, 31.970356, 35.887966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877104, 31.755804, 35.791435>,  <30.798059, 31.398218, 35.630550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877104, 31.755804, 35.791435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401807, -0.300387, 0.865054,
		0.894148, -0.332559, 0.299841,
		0.197613, 0.893964, 0.402214,
		30.936388, 32.023994, 35.912098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110615, 31.277601, 36.273926>,  <30.798059, 31.398218, 35.630550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110615, 31.277601, 36.273926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899862, 31.617435, 36.283745>,  <30.773411, 31.821335, 36.289639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899862, 31.617435, 36.283745>,  <31.110615, 31.277601, 36.273926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899862, 31.617435, 36.283745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453482, -0.305427, 0.837299,
		0.718854, 0.430024, 0.546195,
		-0.526881, 0.849585, 0.024549,
		30.741798, 31.872311, 36.291111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589571, 30.804756, 36.419464>,  <31.110615, 31.277601, 36.273926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589571, 30.804756, 36.419464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207762, 30.915516, 36.463676>,  <29.978676, 30.981972, 36.490204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207762, 30.915516, 36.463676>,  <30.589571, 30.804756, 36.419464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207762, 30.915516, 36.463676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202767, 0.331132, 0.921540,
		0.218574, 0.902041, -0.372219,
		-0.954521, 0.276899, 0.110527,
		29.921406, 30.998585, 36.496834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568069, 31.476128, 36.798527>,  <30.589571, 30.804756, 36.419464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568069, 31.476128, 36.798527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228415, 31.275042, 36.863323>,  <30.024622, 31.154390, 36.902199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228415, 31.275042, 36.863323>,  <30.568069, 31.476128, 36.798527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228415, 31.275042, 36.863323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070116, 0.196691, 0.977955,
		-0.523496, 0.841777, -0.131769,
		-0.849138, -0.502717, 0.161989,
		29.973673, 31.124226, 36.911919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036877, 31.977198, 36.853966>,  <30.568069, 31.476128, 36.798527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036877, 31.977198, 36.853966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787525, 31.686554, 36.738426>,  <29.637915, 31.512167, 36.669102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787525, 31.686554, 36.738426>,  <30.036877, 31.977198, 36.853966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787525, 31.686554, 36.738426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749978, -0.451116, -0.483764,
		0.221204, -0.518199, 0.826159,
		-0.623379, -0.726611, -0.288849,
		29.600512, 31.468571, 36.651772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046900, 32.602077, 36.274261>,  <30.036877, 31.977198, 36.853966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046900, 32.602077, 36.274261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311062, 32.395313, 36.492130>,  <30.469559, 32.271255, 36.622852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311062, 32.395313, 36.492130>,  <30.046900, 32.602077, 36.274261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311062, 32.395313, 36.492130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734529, 0.294022, -0.611571,
		0.155984, 0.803961, 0.573861,
		0.660406, -0.516913, 0.544670,
		30.509184, 32.240238, 36.655533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474936, 33.099663, 36.505077>,  <30.046900, 32.602077, 36.274261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474936, 33.099663, 36.505077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648939, 32.742977, 36.455082>,  <30.753342, 32.528965, 36.425087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648939, 32.742977, 36.455082>,  <30.474936, 33.099663, 36.505077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648939, 32.742977, 36.455082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581512, 0.384194, -0.717104,
		0.687467, 0.239267, 0.685668,
		0.435009, -0.891710, -0.124985,
		30.779442, 32.475464, 36.417587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100904, 33.197422, 36.400524>,  <30.474936, 33.099663, 36.505077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100904, 33.197422, 36.400524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075695, 32.816345, 36.281586>,  <31.060570, 32.587700, 36.210224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075695, 32.816345, 36.281586>,  <31.100904, 33.197422, 36.400524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075695, 32.816345, 36.281586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713043, 0.165475, -0.681314,
		0.698282, -0.254960, 0.668878,
		-0.063025, -0.952688, -0.297345,
		31.056787, 32.530540, 36.192383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767235, 32.944386, 36.233608>,  <31.100904, 33.197422, 36.400524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767235, 32.944386, 36.233608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544941, 32.697128, 36.011238>,  <31.411566, 32.548775, 35.877815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544941, 32.697128, 36.011238>,  <31.767235, 32.944386, 36.233608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544941, 32.697128, 36.011238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678041, 0.049935, -0.733326,
		0.481063, -0.784476, 0.391377,
		-0.555733, -0.618146, -0.555929,
		31.378222, 32.511684, 35.844460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188793, 32.381962, 35.930103>,  <31.767235, 32.944386, 36.233608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188793, 32.381962, 35.930103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858248, 32.410133, 35.706615>,  <31.659922, 32.427036, 35.572521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858248, 32.410133, 35.706615>,  <32.188793, 32.381962, 35.930103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858248, 32.410133, 35.706615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563142, 0.101249, -0.820134,
		-0.001189, -0.992365, -0.123328,
		-0.826359, 0.070427, -0.558723,
		31.610340, 32.431263, 35.538998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267857, 31.889097, 35.470455>,  <32.188793, 32.381962, 35.930103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267857, 31.889097, 35.470455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010052, 32.134052, 35.287331>,  <31.855370, 32.281025, 35.177456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010052, 32.134052, 35.287331>,  <32.267857, 31.889097, 35.470455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010052, 32.134052, 35.287331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619361, 0.067060, -0.782238,
		-0.448330, -0.787710, -0.422508,
		-0.644509, 0.612386, -0.457811,
		31.816698, 32.317768, 35.149986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225307, 31.680365, 34.751781>,  <32.267857, 31.889097, 35.470455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225307, 31.680365, 34.751781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101906, 32.060799, 34.745285>,  <32.027866, 32.289059, 34.741386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101906, 32.060799, 34.745285>,  <32.225307, 31.680365, 34.751781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101906, 32.060799, 34.745285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492946, 0.145246, -0.857851,
		-0.813531, -0.272652, -0.513643,
		-0.308499, 0.951086, -0.016241,
		32.009357, 32.346123, 34.740414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794722, 31.869940, 34.191383>,  <32.225307, 31.680365, 34.751781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794722, 31.869940, 34.191383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970123, 32.214996, 34.292229>,  <32.075363, 32.422031, 34.352737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970123, 32.214996, 34.292229>,  <31.794722, 31.869940, 34.191383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970123, 32.214996, 34.292229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471435, 0.018043, -0.881716,
		-0.765154, 0.505493, -0.398768,
		0.438506, 0.862642, 0.252113,
		32.101677, 32.473789, 34.367863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787703, 32.243706, 33.619503>,  <31.794722, 31.869940, 34.191383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787703, 32.243706, 33.619503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043022, 32.460434, 33.838230>,  <32.196213, 32.590469, 33.969467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043022, 32.460434, 33.838230>,  <31.787703, 32.243706, 33.619503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043022, 32.460434, 33.838230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418196, 0.352306, -0.837253,
		-0.646285, 0.763094, -0.001709,
		0.638300, 0.541819, 0.546814,
		32.234512, 32.622978, 34.002274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760485, 32.975128, 33.382210>,  <31.787703, 32.243706, 33.619503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760485, 32.975128, 33.382210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108070, 32.912712, 33.570061>,  <32.316624, 32.875263, 33.682770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108070, 32.912712, 33.570061>,  <31.760485, 32.975128, 33.382210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108070, 32.912712, 33.570061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490903, 0.391750, -0.778168,
		-0.062552, 0.906743, 0.417018,
		0.868966, -0.156040, 0.469628,
		32.368759, 32.865902, 33.710949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096008, 33.622620, 33.359585>,  <31.760485, 32.975128, 33.382210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096008, 33.622620, 33.359585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388859, 33.354702, 33.409172>,  <32.564568, 33.193951, 33.438923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388859, 33.354702, 33.409172>,  <32.096008, 33.622620, 33.359585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388859, 33.354702, 33.409172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589078, 0.531189, -0.608954,
		0.342026, 0.518855, 0.783459,
		0.732124, -0.669796, 0.123965,
		32.608498, 33.153763, 33.446362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572956, 34.054363, 33.154922>,  <32.096008, 33.622620, 33.359585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572956, 34.054363, 33.154922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756008, 33.699787, 33.182659>,  <32.865837, 33.487041, 33.199303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756008, 33.699787, 33.182659>,  <32.572956, 34.054363, 33.154922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756008, 33.699787, 33.182659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835397, 0.401953, -0.374893,
		0.304447, 0.229488, 0.924471,
		0.457628, -0.886436, 0.069340,
		32.893295, 33.433857, 33.203461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375252, 34.271622, 33.322220>,  <32.572956, 34.054363, 33.154922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375252, 34.271622, 33.322220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374428, 33.888920, 33.205864>,  <33.373932, 33.659298, 33.136051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374428, 33.888920, 33.205864>,  <33.375252, 34.271622, 33.322220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374428, 33.888920, 33.205864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795560, 0.174672, -0.580151,
		0.605872, -0.232614, 0.760796,
		-0.002062, -0.956755, -0.290887,
		33.373810, 33.601894, 33.118599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107513, 33.960068, 33.389713>,  <33.375252, 34.271622, 33.322220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107513, 33.960068, 33.389713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911194, 33.758015, 33.105755>,  <33.793404, 33.636784, 32.935379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911194, 33.758015, 33.105755>,  <34.107513, 33.960068, 33.389713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911194, 33.758015, 33.105755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680727, 0.286229, -0.674302,
		0.543807, -0.814194, 0.203378,
		-0.490800, -0.505135, -0.709897,
		33.763954, 33.606476, 32.892784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610111, 33.586449, 32.954079>,  <34.107513, 33.960068, 33.389713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610111, 33.586449, 32.954079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281876, 33.584797, 32.725479>,  <34.084934, 33.583805, 32.588318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281876, 33.584797, 32.725479>,  <34.610111, 33.586449, 32.954079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281876, 33.584797, 32.725479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568504, 0.096656, -0.816983,
		0.058616, -0.995309, -0.076965,
		-0.820590, -0.004133, -0.571503,
		34.035698, 33.583557, 32.554028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710705, 33.101559, 32.398159>,  <34.610111, 33.586449, 32.954079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710705, 33.101559, 32.398159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439854, 33.359680, 32.256691>,  <34.277344, 33.514553, 32.171810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439854, 33.359680, 32.256691>,  <34.710705, 33.101559, 32.398159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439854, 33.359680, 32.256691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440365, -0.029720, -0.897327,
		-0.589557, -0.763350, -0.264044,
		-0.677127, 0.645301, -0.353674,
		34.236717, 33.553272, 32.150589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655418, 32.934433, 31.733721>,  <34.710705, 33.101559, 32.398159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655418, 32.934433, 31.733721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476330, 33.292072, 31.729231>,  <34.368877, 33.506657, 31.726538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476330, 33.292072, 31.729231>,  <34.655418, 32.934433, 31.733721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476330, 33.292072, 31.729231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350940, 0.164162, -0.921896,
		-0.822425, -0.416695, -0.387276,
		-0.447725, 0.894101, -0.011224,
		34.342010, 33.560303, 31.725864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365330, 33.031445, 31.102278>,  <34.655418, 32.934433, 31.733721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365330, 33.031445, 31.102278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432201, 33.399170, 31.244780>,  <34.472324, 33.619804, 31.330280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432201, 33.399170, 31.244780>,  <34.365330, 33.031445, 31.102278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432201, 33.399170, 31.244780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303283, 0.295865, -0.905805,
		-0.938120, 0.259481, -0.229348,
		0.167183, 0.919311, 0.356253,
		34.482357, 33.674965, 31.351656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971127, 33.491699, 30.624958>,  <34.365330, 33.031445, 31.102278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971127, 33.491699, 30.624958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224808, 33.730682, 30.821257>,  <34.377018, 33.874073, 30.939035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224808, 33.730682, 30.821257>,  <33.971127, 33.491699, 30.624958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224808, 33.730682, 30.821257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234925, 0.455809, -0.858515,
		-0.736611, 0.659763, 0.148719,
		0.634204, 0.597454, 0.490749,
		34.415070, 33.909920, 30.968481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917747, 34.107563, 30.280607>,  <33.971127, 33.491699, 30.624958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917747, 34.107563, 30.280607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267155, 34.139832, 30.472631>,  <34.476799, 34.159195, 30.587845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267155, 34.139832, 30.472631>,  <33.917747, 34.107563, 30.280607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267155, 34.139832, 30.472631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347364, 0.587583, -0.730811,
		-0.341033, 0.805132, 0.485240,
		0.873518, 0.080675, 0.480060,
		34.529209, 34.164036, 30.616650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043903, 34.830524, 30.410986>,  <33.917747, 34.107563, 30.280607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043903, 34.830524, 30.410986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398243, 34.645004, 30.415878>,  <34.610847, 34.533691, 30.418814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398243, 34.645004, 30.415878>,  <34.043903, 34.830524, 30.410986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398243, 34.645004, 30.415878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359590, 0.669667, -0.649801,
		0.293189, 0.580027, 0.760006,
		0.885853, -0.463805, 0.012233,
		34.663998, 34.505863, 30.419548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556889, 35.300644, 30.620264>,  <34.043903, 34.830524, 30.410986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556889, 35.300644, 30.620264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733120, 35.014393, 30.403461>,  <34.838860, 34.842644, 30.273380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733120, 35.014393, 30.403461>,  <34.556889, 35.300644, 30.620264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733120, 35.014393, 30.403461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399120, 0.696954, -0.595784,
		0.804112, 0.046163, 0.592682,
		0.440576, -0.715629, -0.542004,
		34.865292, 34.799706, 30.240860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197430, 35.524555, 30.517330>,  <34.556889, 35.300644, 30.620264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197430, 35.524555, 30.517330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154907, 35.242222, 30.237190>,  <35.129395, 35.072823, 30.069105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154907, 35.242222, 30.237190>,  <35.197430, 35.524555, 30.517330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154907, 35.242222, 30.237190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383891, 0.620597, -0.683730,
		0.917238, -0.341544, 0.204990,
		-0.106308, -0.705837, -0.700352,
		35.123016, 35.030472, 30.027084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733295, 35.544250, 30.121107>,  <35.197430, 35.524555, 30.517330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733295, 35.544250, 30.121107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501873, 35.336121, 29.869860>,  <35.363022, 35.211243, 29.719110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501873, 35.336121, 29.869860>,  <35.733295, 35.544250, 30.121107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501873, 35.336121, 29.869860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434317, 0.455305, -0.777217,
		0.690394, -0.722465, -0.037432,
		-0.578555, -0.520328, -0.628119,
		35.328308, 35.180023, 29.681423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138897, 35.382668, 29.437586>,  <35.733295, 35.544250, 30.121107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138897, 35.382668, 29.437586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754894, 35.327156, 29.340322>,  <35.524494, 35.293850, 29.281965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754894, 35.327156, 29.340322>,  <36.138897, 35.382668, 29.437586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754894, 35.327156, 29.340322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163605, 0.426705, -0.889469,
		0.227195, -0.893680, -0.386936,
		-0.960008, -0.138778, -0.243156,
		35.466892, 35.285522, 29.267376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273682, 35.153866, 28.852373>,  <36.138897, 35.382668, 29.437586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273682, 35.153866, 28.852373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891232, 35.270451, 28.864208>,  <35.661762, 35.340401, 28.871309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891232, 35.270451, 28.864208>,  <36.273682, 35.153866, 28.852373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891232, 35.270451, 28.864208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111704, 0.456068, -0.882907,
		-0.270825, -0.840865, -0.468615,
		-0.956126, 0.291459, 0.029587,
		35.604393, 35.357887, 28.873085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054398, 34.897358, 28.278872>,  <36.273682, 35.153866, 28.852373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054398, 34.897358, 28.278872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790394, 35.184544, 28.367327>,  <35.631992, 35.356857, 28.420401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790394, 35.184544, 28.367327>,  <36.054398, 34.897358, 28.278872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790394, 35.184544, 28.367327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102206, 0.377437, -0.920378,
		-0.744269, -0.584860, -0.322494,
		-0.660014, 0.717969, 0.221139,
		35.592388, 35.399933, 28.433668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538479, 34.912571, 27.760633>,  <36.054398, 34.897358, 28.278872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538479, 34.912571, 27.760633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518894, 35.283772, 27.908373>,  <35.507145, 35.506493, 27.997017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518894, 35.283772, 27.908373>,  <35.538479, 34.912571, 27.760633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518894, 35.283772, 27.908373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143747, 0.359397, -0.922047,
		-0.988403, -0.098237, 0.115801,
		-0.048961, 0.927999, 0.369351,
		35.504208, 35.562172, 28.019178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019962, 35.279575, 27.347113>,  <35.538479, 34.912571, 27.760633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019962, 35.279575, 27.347113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209934, 35.572750, 27.541948>,  <35.323917, 35.748653, 27.658850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209934, 35.572750, 27.541948>,  <35.019962, 35.279575, 27.347113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209934, 35.572750, 27.541948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072609, 0.584241, -0.808326,
		-0.877024, 0.348529, 0.330690,
		0.474928, 0.732932, 0.487087,
		35.352413, 35.792629, 27.688074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566616, 35.935303, 27.200706>,  <35.019962, 35.279575, 27.347113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566616, 35.935303, 27.200706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920647, 36.058735, 27.340082>,  <35.133064, 36.132793, 27.423708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920647, 36.058735, 27.340082>,  <34.566616, 35.935303, 27.200706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920647, 36.058735, 27.340082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019329, 0.723612, -0.689937,
		-0.465037, 0.617384, 0.634490,
		0.885080, 0.308582, 0.348439,
		35.186172, 36.151310, 27.444614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462635, 36.587753, 27.285673>,  <34.566616, 35.935303, 27.200706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462635, 36.587753, 27.285673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855221, 36.529503, 27.235838>,  <35.090771, 36.494553, 27.205936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855221, 36.529503, 27.235838>,  <34.462635, 36.587753, 27.285673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855221, 36.529503, 27.235838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037523, 0.783528, -0.620223,
		0.187937, 0.604051, 0.774469,
		0.981464, -0.145623, -0.124588,
		35.149658, 36.485817, 27.198462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761642, 37.251377, 27.298170>,  <34.462635, 36.587753, 27.285673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761642, 37.251377, 27.298170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036007, 37.015247, 27.127970>,  <35.200626, 36.873569, 27.025850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036007, 37.015247, 27.127970>,  <34.761642, 37.251377, 27.298170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036007, 37.015247, 27.127970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341879, 0.777595, -0.527698,
		0.642378, 0.216482, 0.735177,
		0.685907, -0.590323, -0.425499,
		35.241779, 36.838150, 27.000320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397854, 37.488358, 27.286690>,  <34.761642, 37.251377, 27.298170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397854, 37.488358, 27.286690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500072, 37.220436, 27.007818>,  <35.561405, 37.059685, 26.840494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500072, 37.220436, 27.007818>,  <35.397854, 37.488358, 27.286690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500072, 37.220436, 27.007818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377730, 0.732979, -0.565741,
		0.889953, -0.118772, 0.440315,
		0.255547, -0.669803, -0.697180,
		35.576736, 37.019497, 26.798664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177773, 37.558720, 27.162355>,  <35.397854, 37.488358, 27.286690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177773, 37.558720, 27.162355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000187, 37.378571, 26.852503>,  <35.893635, 37.270481, 26.666592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000187, 37.378571, 26.852503>,  <36.177773, 37.558720, 27.162355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000187, 37.378571, 26.852503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354557, 0.705648, -0.613473,
		0.822911, -0.547013, -0.153602,
		-0.443967, -0.450374, -0.774633,
		35.866997, 37.243458, 26.620113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682423, 37.458031, 26.603573>,  <36.177773, 37.558720, 27.162355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682423, 37.458031, 26.603573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319263, 37.456985, 26.435902>,  <36.101368, 37.456360, 26.335299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319263, 37.456985, 26.435902>,  <36.682423, 37.458031, 26.603573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319263, 37.456985, 26.435902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355868, 0.523658, -0.774041,
		0.221525, -0.851924, -0.474501,
		-0.907901, -0.002610, -0.419176,
		36.046894, 37.456203, 26.310148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817730, 37.294216, 25.820442>,  <36.682423, 37.458031, 26.603573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817730, 37.294216, 25.820442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443043, 37.434235, 25.822908>,  <36.218231, 37.518246, 25.824389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443043, 37.434235, 25.822908>,  <36.817730, 37.294216, 25.820442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443043, 37.434235, 25.822908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156390, 0.434128, -0.887172,
		-0.313225, -0.830062, -0.461397,
		-0.936713, 0.350043, 0.006166,
		36.162029, 37.539246, 25.824759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588131, 37.196533, 25.146894>,  <36.817730, 37.294216, 25.820442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588131, 37.196533, 25.146894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335915, 37.473881, 25.286417>,  <36.184586, 37.640289, 25.370131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335915, 37.473881, 25.286417>,  <36.588131, 37.196533, 25.146894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335915, 37.473881, 25.286417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075207, 0.501865, -0.861670,
		-0.772504, -0.517085, -0.368592,
		-0.630541, 0.693365, 0.348804,
		36.146751, 37.681889, 25.391058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032429, 37.378864, 24.646164>,  <36.588131, 37.196533, 25.146894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032429, 37.378864, 24.646164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024094, 37.708961, 24.871922>,  <36.019093, 37.907021, 25.007376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024094, 37.708961, 24.871922>,  <36.032429, 37.378864, 24.646164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024094, 37.708961, 24.871922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035250, 0.564771, -0.824494,
		-0.999161, 0.002713, -0.040859,
		-0.020839, 0.825243, 0.564394,
		36.017841, 37.956535, 25.041239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816612, 37.789742, 24.097298>,  <36.032429, 37.378864, 24.646164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816612, 37.789742, 24.097298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909504, 38.038937, 24.396084>,  <35.965237, 38.188454, 24.575356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909504, 38.038937, 24.396084>,  <35.816612, 37.789742, 24.097298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909504, 38.038937, 24.396084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106598, 0.747035, -0.656182,
		-0.966803, 0.232007, 0.107071,
		0.232224, 0.622986, 0.746968,
		35.979172, 38.225834, 24.620174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515385, 38.313049, 23.891592>,  <35.816612, 37.789742, 24.097298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515385, 38.313049, 23.891592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791336, 38.426998, 24.157799>,  <35.956909, 38.495365, 24.317522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791336, 38.426998, 24.157799>,  <35.515385, 38.313049, 23.891592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791336, 38.426998, 24.157799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191474, 0.814779, -0.547242,
		-0.698140, 0.504962, 0.507557,
		0.689882, 0.284867, 0.665517,
		35.998302, 38.512459, 24.357454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409576, 39.080883, 23.904652>,  <35.515385, 38.313049, 23.891592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409576, 39.080883, 23.904652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775394, 39.007740, 24.048971>,  <35.994884, 38.963856, 24.135563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775394, 39.007740, 24.048971>,  <35.409576, 39.080883, 23.904652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775394, 39.007740, 24.048971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346897, 0.813304, -0.467118,
		-0.208023, 0.552359, 0.807233,
		0.914543, -0.182855, 0.360798,
		36.049759, 38.952885, 24.157211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675224, 39.674744, 24.295958>,  <35.409576, 39.080883, 23.904652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675224, 39.674744, 24.295958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975685, 39.454914, 24.149679>,  <36.155964, 39.323017, 24.061913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975685, 39.454914, 24.149679>,  <35.675224, 39.674744, 24.295958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975685, 39.454914, 24.149679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324970, 0.790056, -0.519813,
		0.574597, 0.271620, 0.772050,
		0.751155, -0.549576, -0.365696,
		36.201031, 39.290043, 24.039970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093102, 40.124939, 24.387680>,  <35.675224, 39.674744, 24.295958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093102, 40.124939, 24.387680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251976, 39.869366, 24.124163>,  <36.347301, 39.716022, 23.966051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251976, 39.869366, 24.124163>,  <36.093102, 40.124939, 24.387680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251976, 39.869366, 24.124163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216713, 0.762842, -0.609185,
		0.891784, 0.099189, 0.441454,
		0.397185, -0.638931, -0.658795,
		36.371132, 39.677685, 23.926523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809017, 40.363377, 24.291368>,  <36.093102, 40.124939, 24.387680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809017, 40.363377, 24.291368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705173, 40.138474, 23.977306>,  <36.642868, 40.003532, 23.788868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705173, 40.138474, 23.977306>,  <36.809017, 40.363377, 24.291368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705173, 40.138474, 23.977306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306438, 0.723053, -0.619104,
		0.915805, -0.401328, -0.015416,
		-0.259610, -0.562254, -0.785157,
		36.627289, 39.969799, 23.741758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219471, 40.691368, 23.749676>,  <36.809017, 40.363377, 24.291368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219471, 40.691368, 23.749676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943947, 40.461288, 23.573187>,  <36.778633, 40.323238, 23.467293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943947, 40.461288, 23.573187>,  <37.219471, 40.691368, 23.749676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943947, 40.461288, 23.573187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082542, 0.666906, -0.740556,
		0.720224, -0.473685, -0.506852,
		-0.688813, -0.575203, -0.441223,
		36.737305, 40.288727, 23.440821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323513, 40.794453, 23.021450>,  <37.219471, 40.691368, 23.749676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323513, 40.794453, 23.021450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954098, 40.643311, 23.047657>,  <36.732449, 40.552624, 23.063381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954098, 40.643311, 23.047657>,  <37.323513, 40.794453, 23.021450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954098, 40.643311, 23.047657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245405, 0.451015, -0.858115,
		0.294697, -0.808584, -0.509260,
		-0.923542, -0.377859, 0.065518,
		36.677036, 40.529953, 23.067312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154633, 40.546040, 22.373665>,  <37.323513, 40.794453, 23.021450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154633, 40.546040, 22.373665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814537, 40.646564, 22.558676>,  <36.610477, 40.706879, 22.669682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814537, 40.646564, 22.558676>,  <37.154633, 40.546040, 22.373665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814537, 40.646564, 22.558676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188284, 0.675350, -0.713058,
		-0.491565, -0.693359, -0.526894,
		-0.850243, 0.251309, 0.462526,
		36.559464, 40.721958, 22.697433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710201, 40.672985, 21.724754>,  <37.154633, 40.546040, 22.373665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710201, 40.672985, 21.724754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545952, 40.823437, 22.056999>,  <36.447403, 40.913708, 22.256346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545952, 40.823437, 22.056999>,  <36.710201, 40.672985, 21.724754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545952, 40.823437, 22.056999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262716, 0.823514, -0.502796,
		-0.873138, -0.424674, -0.239336,
		-0.410621, 0.376133, 0.830610,
		36.422764, 40.936275, 22.306183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986961, 40.850307, 21.700449>,  <36.710201, 40.672985, 21.724754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986961, 40.850307, 21.700449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138798, 41.079563, 21.990944>,  <36.229900, 41.217117, 22.165241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138798, 41.079563, 21.990944>,  <35.986961, 40.850307, 21.700449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138798, 41.079563, 21.990944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352968, 0.815336, -0.458957,
		-0.855173, -0.082122, 0.511796,
		0.379595, 0.573135, 0.726239,
		36.252678, 41.251503, 22.208817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467270, 41.258087, 22.068487>,  <35.986961, 40.850307, 21.700449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467270, 41.258087, 22.068487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824150, 41.435654, 22.101759>,  <36.038277, 41.542194, 22.121723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824150, 41.435654, 22.101759>,  <35.467270, 41.258087, 22.068487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824150, 41.435654, 22.101759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393752, 0.854739, -0.338202,
		-0.221233, 0.268990, 0.937390,
		0.892197, 0.443921, 0.083181,
		36.091808, 41.568829, 22.126713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382732, 41.781189, 22.443506>,  <35.467270, 41.258087, 22.068487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382732, 41.781189, 22.443506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692642, 41.884014, 22.212460>,  <35.878590, 41.945709, 22.073832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692642, 41.884014, 22.212460>,  <35.382732, 41.781189, 22.443506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692642, 41.884014, 22.212460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497144, 0.812146, -0.305397,
		0.390605, 0.523774, 0.757026,
		0.774775, 0.257062, -0.577619,
		35.925076, 41.961132, 22.039173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700138, 42.475044, 22.366127>,  <35.382732, 41.781189, 22.443506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700138, 42.475044, 22.366127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876457, 42.781700, 22.552874>,  <35.982246, 42.965694, 22.664921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876457, 42.781700, 22.552874>,  <35.700138, 42.475044, 22.366127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876457, 42.781700, 22.552874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083882, 0.553026, -0.828931,
		-0.893681, 0.326226, 0.308078,
		0.440794, 0.766641, 0.466864,
		36.008694, 43.011692, 22.692932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411789, 43.055695, 21.998329>,  <35.700138, 42.475044, 22.366127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411789, 43.055695, 21.998329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714649, 43.212921, 22.207031>,  <35.896366, 43.307259, 22.332253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714649, 43.212921, 22.207031>,  <35.411789, 43.055695, 21.998329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714649, 43.212921, 22.207031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123988, 0.697721, -0.705558,
		-0.641370, 0.598903, 0.479542,
		0.757147, 0.393066, 0.521754,
		35.941792, 43.330841, 22.363558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356510, 43.841019, 22.058142>,  <35.411789, 43.055695, 21.998329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356510, 43.841019, 22.058142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737755, 43.721462, 22.039223>,  <35.966503, 43.649727, 22.027872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737755, 43.721462, 22.039223>,  <35.356510, 43.841019, 22.058142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737755, 43.721462, 22.039223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196974, 0.731427, -0.652852,
		0.229726, 0.612926, 0.756008,
		0.953115, -0.298891, -0.047297,
		36.023689, 43.631794, 22.025034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932785, 43.773598, 21.463913>,  <35.356510, 43.841019, 22.058142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932785, 43.773598, 21.463913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216873, 44.050461, 21.515284>,  <36.387325, 44.216579, 21.546106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216873, 44.050461, 21.515284>,  <35.932785, 43.773598, 21.463913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216873, 44.050461, 21.515284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282015, -0.446894, 0.848972,
		0.645018, -0.566744, -0.512595,
		0.710225, 0.692162, 0.128425,
		36.429939, 44.258110, 21.553810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695499, 43.419308, 21.640856>,  <35.932785, 43.773598, 21.463913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695499, 43.419308, 21.640856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566532, 43.767403, 21.789845>,  <36.489151, 43.976257, 21.879238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566532, 43.767403, 21.789845>,  <36.695499, 43.419308, 21.640856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566532, 43.767403, 21.789845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024248, -0.400951, 0.915779,
		0.946286, 0.286233, 0.150376,
		-0.322420, 0.870235, 0.372474,
		36.469807, 44.028473, 21.901587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085590, 43.731236, 22.232330>,  <36.695499, 43.419308, 21.640856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085590, 43.731236, 22.232330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696888, 43.816917, 22.271927>,  <36.463665, 43.868324, 22.295685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696888, 43.816917, 22.271927>,  <37.085590, 43.731236, 22.232330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696888, 43.816917, 22.271927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033776, -0.541458, 0.840049,
		0.233540, 0.812983, 0.533402,
		-0.971760, 0.214201, 0.098992,
		36.405361, 43.881176, 22.301624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065277, 43.920845, 22.881422>,  <37.085590, 43.731236, 22.232330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065277, 43.920845, 22.881422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717064, 43.777294, 22.746737>,  <36.508137, 43.691162, 22.665924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717064, 43.777294, 22.746737>,  <37.065277, 43.920845, 22.881422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717064, 43.777294, 22.746737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044377, -0.624195, 0.780008,
		-0.490102, 0.693966, 0.527457,
		-0.870534, -0.358877, -0.336716,
		36.455902, 43.669632, 22.645721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488838, 44.035847, 23.298340>,  <37.065277, 43.920845, 22.881422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488838, 44.035847, 23.298340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384605, 43.700912, 23.106106>,  <36.322067, 43.499950, 22.990767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384605, 43.700912, 23.106106>,  <36.488838, 44.035847, 23.298340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384605, 43.700912, 23.106106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042241, -0.487416, 0.872147,
		-0.964528, 0.247564, 0.091641,
		-0.260579, -0.837339, -0.480584,
		36.306431, 43.449711, 22.961931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956989, 43.844173, 23.659044>,  <36.488838, 44.035847, 23.298340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956989, 43.844173, 23.659044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078094, 43.508686, 23.477987>,  <36.150757, 43.307392, 23.369352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078094, 43.508686, 23.477987>,  <35.956989, 43.844173, 23.659044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078094, 43.508686, 23.477987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052707, -0.459473, 0.886627,
		-0.951609, -0.292292, -0.094903,
		0.302759, -0.838719, -0.452645,
		36.168922, 43.257069, 23.342194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517136, 43.250072, 23.903099>,  <35.956989, 43.844173, 23.659044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517136, 43.250072, 23.903099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842022, 43.074585, 23.749308>,  <36.036953, 42.969292, 23.657032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842022, 43.074585, 23.749308>,  <35.517136, 43.250072, 23.903099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842022, 43.074585, 23.749308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137337, -0.496751, 0.856958,
		-0.566957, -0.748840, -0.343217,
		0.812218, -0.438722, -0.384480,
		36.085686, 42.942970, 23.633965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414417, 42.444759, 23.972155>,  <35.517136, 43.250072, 23.903099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414417, 42.444759, 23.972155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802685, 42.534058, 23.936481>,  <36.035645, 42.587639, 23.915077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802685, 42.534058, 23.936481>,  <35.414417, 42.444759, 23.972155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802685, 42.534058, 23.936481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184618, -0.454624, 0.871340,
		0.153981, -0.862251, -0.482507,
		0.970673, 0.223249, -0.089184,
		36.093887, 42.601032, 23.909727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678917, 41.846649, 24.148895>,  <35.414417, 42.444759, 23.972155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678917, 41.846649, 24.148895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007965, 42.073849, 24.138519>,  <36.205395, 42.210167, 24.132294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007965, 42.073849, 24.138519>,  <35.678917, 41.846649, 24.148895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007965, 42.073849, 24.138519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264899, -0.342482, 0.901407,
		0.503115, -0.748387, -0.432195,
		0.822620, 0.567999, -0.025939,
		36.254749, 42.244247, 24.130737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212730, 41.500549, 24.409403>,  <35.678917, 41.846649, 24.148895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212730, 41.500549, 24.409403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321228, 41.879162, 24.479259>,  <36.386326, 42.106331, 24.521173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321228, 41.879162, 24.479259>,  <36.212730, 41.500549, 24.409403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321228, 41.879162, 24.479259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237141, -0.241567, 0.940962,
		0.932841, -0.213812, -0.289985,
		0.271240, 0.946536, 0.174640,
		36.402599, 42.163124, 24.531652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855259, 41.433899, 24.598686>,  <36.212730, 41.500549, 24.409403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855259, 41.433899, 24.598686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711052, 41.784279, 24.726892>,  <36.624527, 41.994507, 24.803816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711052, 41.784279, 24.726892>,  <36.855259, 41.433899, 24.598686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711052, 41.784279, 24.726892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298192, -0.217352, 0.929430,
		0.883802, 0.430652, -0.182843,
		-0.360520, 0.875955, 0.320513,
		36.602898, 42.047066, 24.823046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395294, 41.811459, 25.077892>,  <36.855259, 41.433899, 24.598686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395294, 41.811459, 25.077892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044437, 41.986645, 25.156698>,  <36.833923, 42.091755, 25.203981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044437, 41.986645, 25.156698>,  <37.395294, 41.811459, 25.077892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044437, 41.986645, 25.156698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199078, -0.041732, 0.979095,
		0.437031, 0.898023, -0.050584,
		-0.877138, 0.437965, 0.197015,
		36.781296, 42.118034, 25.215803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521023, 42.159275, 25.558487>,  <37.395294, 41.811459, 25.077892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521023, 42.159275, 25.558487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124756, 42.116890, 25.592785>,  <36.886997, 42.091457, 25.613363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124756, 42.116890, 25.592785>,  <37.521023, 42.159275, 25.558487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124756, 42.116890, 25.592785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089467, -0.030895, 0.995510,
		-0.102841, 0.993890, 0.040087,
		-0.990666, -0.105966, 0.085743,
		36.827557, 42.085102, 25.618507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375580, 42.474144, 26.237204>,  <37.521023, 42.159275, 25.558487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375580, 42.474144, 26.237204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051594, 42.259136, 26.143370>,  <36.857201, 42.130135, 26.087069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051594, 42.259136, 26.143370>,  <37.375580, 42.474144, 26.237204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051594, 42.259136, 26.143370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028323, -0.363675, 0.931095,
		-0.585790, 0.760801, 0.279341,
		-0.809968, -0.537515, -0.234585,
		36.808605, 42.097881, 26.072994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852375, 42.650471, 26.726295>,  <37.375580, 42.474144, 26.237204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852375, 42.650471, 26.726295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745056, 42.303596, 26.558481>,  <36.680664, 42.095474, 26.457792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745056, 42.303596, 26.558481>,  <36.852375, 42.650471, 26.726295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745056, 42.303596, 26.558481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100829, -0.407833, 0.907472,
		-0.958045, 0.285773, 0.021983,
		-0.268296, -0.867183, -0.419536,
		36.664566, 42.043442, 26.432621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275539, 42.392467, 27.191809>,  <36.852375, 42.650471, 26.726295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275539, 42.392467, 27.191809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413925, 42.078533, 26.986155>,  <36.496956, 41.890171, 26.862762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413925, 42.078533, 26.986155>,  <36.275539, 42.392467, 27.191809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413925, 42.078533, 26.986155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209742, -0.598800, 0.772947,
		-0.914505, -0.159574, -0.371776,
		0.345962, -0.784840, -0.514136,
		36.517715, 41.843082, 26.831913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770226, 41.863377, 27.334366>,  <36.275539, 42.392467, 27.191809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770226, 41.863377, 27.334366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084984, 41.664482, 27.188183>,  <36.273838, 41.545147, 27.100471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084984, 41.664482, 27.188183>,  <35.770226, 41.863377, 27.334366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084984, 41.664482, 27.188183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156219, -0.733452, 0.661546,
		-0.596988, -0.463475, -0.654825,
		0.786893, -0.497231, -0.365459,
		36.321053, 41.515312, 27.078545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481880, 41.244648, 27.176018>,  <35.770226, 41.863377, 27.334366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481880, 41.244648, 27.176018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875187, 41.208736, 27.239414>,  <36.111172, 41.187187, 27.277452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875187, 41.208736, 27.239414>,  <35.481880, 41.244648, 27.176018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875187, 41.208736, 27.239414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177467, -0.668314, 0.722400,
		0.041064, -0.738441, -0.673066,
		0.983270, -0.089783, 0.158493,
		36.170166, 41.181801, 27.286963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629696, 40.468967, 27.166491>,  <35.481880, 41.244648, 27.176018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629696, 40.468967, 27.166491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910851, 40.666412, 27.371349>,  <36.079544, 40.784882, 27.494265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910851, 40.666412, 27.371349>,  <35.629696, 40.468967, 27.166491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910851, 40.666412, 27.371349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088528, -0.653710, 0.751549,
		0.705772, -0.573593, -0.415784,
		0.702885, 0.493614, 0.512149,
		36.121716, 40.814495, 27.524994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075951, 39.951210, 27.410452>,  <35.629696, 40.468967, 27.166491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075951, 39.951210, 27.410452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125080, 40.273174, 27.642670>,  <36.154556, 40.466354, 27.782000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125080, 40.273174, 27.642670>,  <36.075951, 39.951210, 27.410452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125080, 40.273174, 27.642670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015894, -0.586491, 0.809799,
		0.992302, -0.090232, -0.084826,
		0.122820, 0.804914, 0.580542,
		36.161926, 40.514648, 27.816832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646996, 39.754925, 27.816456>,  <36.075951, 39.951210, 27.410452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646996, 39.754925, 27.816456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454895, 40.048470, 28.008627>,  <36.339634, 40.224598, 28.123930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454895, 40.048470, 28.008627>,  <36.646996, 39.754925, 27.816456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454895, 40.048470, 28.008627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097643, -0.589050, 0.802176,
		0.871681, 0.338332, 0.354546,
		-0.480247, 0.733860, 0.480428,
		36.310822, 40.268627, 28.152756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040325, 39.809685, 28.491123>,  <36.646996, 39.754925, 27.816456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040325, 39.809685, 28.491123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679497, 39.977295, 28.532463>,  <36.463001, 40.077862, 28.557266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679497, 39.977295, 28.532463>,  <37.040325, 39.809685, 28.491123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679497, 39.977295, 28.532463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130418, -0.492930, 0.860239,
		0.411409, 0.762519, 0.499307,
		-0.902072, 0.419029, 0.103349,
		36.408875, 40.103004, 28.563467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957493, 40.149017, 29.161160>,  <37.040325, 39.809685, 28.491123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957493, 40.149017, 29.161160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572659, 40.097694, 29.064886>,  <36.341759, 40.066902, 29.007122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572659, 40.097694, 29.064886>,  <36.957493, 40.149017, 29.161160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572659, 40.097694, 29.064886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150441, -0.486431, 0.860669,
		-0.227507, 0.864246, 0.448686,
		-0.962085, -0.128308, -0.240685,
		36.284035, 40.059200, 28.992682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544655, 40.315449, 29.720449>,  <36.957493, 40.149017, 29.161160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544655, 40.315449, 29.720449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309311, 40.061302, 29.520391>,  <36.168106, 39.908813, 29.400356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309311, 40.061302, 29.520391>,  <36.544655, 40.315449, 29.720449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309311, 40.061302, 29.520391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245067, -0.449329, 0.859096,
		-0.770570, 0.628024, 0.108659,
		-0.588357, -0.635365, -0.500147,
		36.132805, 39.870693, 29.370348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854134, 40.387375, 30.012346>,  <36.544655, 40.315449, 29.720449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854134, 40.387375, 30.012346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844196, 40.037327, 29.819040>,  <35.838234, 39.827297, 29.703056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844196, 40.037327, 29.819040>,  <35.854134, 40.387375, 30.012346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844196, 40.037327, 29.819040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381998, -0.438422, 0.813550,
		-0.923829, 0.204815, -0.323404,
		-0.024840, -0.875121, -0.483266,
		35.836742, 39.774792, 29.674061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164646, 40.338081, 29.909630>,  <35.854134, 40.387375, 30.012346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164646, 40.338081, 29.909630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340027, 39.978737, 29.898985>,  <35.445255, 39.763130, 29.892597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340027, 39.978737, 29.898985>,  <35.164646, 40.338081, 29.909630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340027, 39.978737, 29.898985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604984, -0.316907, 0.730455,
		-0.664646, -0.304168, -0.682442,
		0.438452, -0.898361, -0.026614,
		35.471561, 39.709229, 29.891001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603527, 39.814014, 29.857170>,  <35.164646, 40.338081, 29.909630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603527, 39.814014, 29.857170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914169, 39.596630, 29.984632>,  <35.100555, 39.466202, 30.061110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914169, 39.596630, 29.984632>,  <34.603527, 39.814014, 29.857170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914169, 39.596630, 29.984632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606686, -0.508845, 0.610745,
		-0.169768, -0.667630, -0.724878,
		0.776603, -0.543459, 0.318656,
		35.147148, 39.433594, 30.080229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231110, 39.223953, 29.977676>,  <34.603527, 39.814014, 29.857170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231110, 39.223953, 29.977676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576611, 39.148994, 30.164785>,  <34.783913, 39.104019, 30.277050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576611, 39.148994, 30.164785>,  <34.231110, 39.223953, 29.977676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576611, 39.148994, 30.164785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469016, -0.638406, 0.610297,
		0.184259, -0.746539, -0.639319,
		0.863755, -0.187398, 0.467770,
		34.835735, 39.092773, 30.305117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271580, 38.406502, 30.024742>,  <34.231110, 39.223953, 29.977676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271580, 38.406502, 30.024742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512959, 38.564625, 30.301750>,  <34.657787, 38.659500, 30.467955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512959, 38.564625, 30.301750>,  <34.271580, 38.406502, 30.024742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512959, 38.564625, 30.301750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333607, -0.663653, 0.669530,
		0.724262, -0.635056, -0.268604,
		0.603449, 0.395307, 0.692518,
		34.693993, 38.683216, 30.509506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608635, 37.835991, 30.404896>,  <34.271580, 38.406502, 30.024742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608635, 37.835991, 30.404896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596100, 38.136780, 30.668276>,  <34.588581, 38.317253, 30.826303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596100, 38.136780, 30.668276>,  <34.608635, 37.835991, 30.404896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596100, 38.136780, 30.668276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250650, -0.643637, 0.723123,
		0.967571, -0.142381, 0.208650,
		-0.031336, 0.751970, 0.658452,
		34.586700, 38.362370, 30.865810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880962, 37.486702, 30.982626>,  <34.608635, 37.835991, 30.404896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880962, 37.486702, 30.982626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740898, 37.832649, 31.126511>,  <34.656860, 38.040218, 31.212841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740898, 37.832649, 31.126511>,  <34.880962, 37.486702, 30.982626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740898, 37.832649, 31.126511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256123, -0.457793, 0.851367,
		0.900994, 0.205983, 0.381813,
		-0.350158, 0.864868, 0.359712,
		34.635849, 38.092110, 31.234425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034760, 37.520699, 31.688810>,  <34.880962, 37.486702, 30.982626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034760, 37.520699, 31.688810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719990, 37.765739, 31.659250>,  <34.531128, 37.912766, 31.641514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719990, 37.765739, 31.659250>,  <35.034760, 37.520699, 31.688810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719990, 37.765739, 31.659250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393354, -0.405765, 0.825002,
		0.475414, 0.678285, 0.560278,
		-0.786927, 0.612604, -0.073900,
		34.483913, 37.949520, 31.637079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994453, 37.717812, 32.390125>,  <35.034760, 37.520699, 31.688810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994453, 37.717812, 32.390125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652714, 37.812656, 32.205143>,  <34.447670, 37.869564, 32.094154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652714, 37.812656, 32.205143>,  <34.994453, 37.717812, 32.390125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652714, 37.812656, 32.205143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517576, -0.307849, 0.798339,
		0.046926, 0.921417, 0.385732,
		-0.854350, 0.237108, -0.462457,
		34.396408, 37.883789, 32.066406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613976, 37.971455, 32.935467>,  <34.994453, 37.717812, 32.390125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613976, 37.971455, 32.935467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331818, 37.909405, 32.658813>,  <34.162525, 37.872177, 32.492821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331818, 37.909405, 32.658813>,  <34.613976, 37.971455, 32.935467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331818, 37.909405, 32.658813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631961, -0.304267, 0.712774,
		-0.321007, 0.939872, 0.116598,
		-0.705393, -0.155120, -0.691634,
		34.120201, 37.862869, 32.451324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894730, 38.307655, 33.177410>,  <34.613976, 37.971455, 32.935467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894730, 38.307655, 33.177410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836258, 38.004971, 32.922531>,  <33.801174, 37.823360, 32.769604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836258, 38.004971, 32.922531>,  <33.894730, 38.307655, 33.177410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836258, 38.004971, 32.922531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559568, -0.467918, 0.684059,
		-0.815791, 0.456550, -0.355031,
		-0.146182, -0.756713, -0.637193,
		33.792404, 37.777958, 32.731373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154419, 38.172157, 33.077343>,  <33.894730, 38.307655, 33.177410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154419, 38.172157, 33.077343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339550, 37.823612, 33.012203>,  <33.450626, 37.614487, 32.973118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339550, 37.823612, 33.012203>,  <33.154419, 38.172157, 33.077343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339550, 37.823612, 33.012203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549770, -0.426268, 0.718366,
		-0.695376, -0.242945, -0.676336,
		0.462824, -0.871363, -0.162852,
		33.478397, 37.562202, 32.963348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649353, 37.628567, 33.308887>,  <33.154419, 38.172157, 33.077343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649353, 37.628567, 33.308887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971981, 37.397438, 33.258999>,  <33.165558, 37.258759, 33.229065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971981, 37.397438, 33.258999>,  <32.649353, 37.628567, 33.308887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971981, 37.397438, 33.258999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417515, -0.706217, 0.571786,
		-0.418473, -0.409115, -0.810867,
		0.806574, -0.577826, -0.124721,
		33.213955, 37.224091, 33.221584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383801, 37.005424, 33.263355>,  <32.649353, 37.628567, 33.308887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383801, 37.005424, 33.263355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762783, 36.924515, 33.362476>,  <32.990173, 36.875969, 33.421947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762783, 36.924515, 33.362476>,  <32.383801, 37.005424, 33.263355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762783, 36.924515, 33.362476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305116, -0.804100, 0.510223,
		0.096048, -0.559023, -0.823570,
		0.947459, -0.202278, 0.247799,
		33.047020, 36.863831, 33.436817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376926, 36.349617, 33.369907>,  <32.383801, 37.005424, 33.263355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376926, 36.349617, 33.369907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706509, 36.468121, 33.563122>,  <32.904259, 36.539223, 33.679050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706509, 36.468121, 33.563122>,  <32.376926, 36.349617, 33.369907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706509, 36.468121, 33.563122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090326, -0.772869, 0.628104,
		0.559409, -0.561160, -0.610050,
		0.823956, 0.296264, 0.483037,
		32.953697, 36.556999, 33.708035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732368, 35.722191, 33.529510>,  <32.376926, 36.349617, 33.369907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732368, 35.722191, 33.529510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920307, 35.984501, 33.765881>,  <33.033070, 36.141888, 33.907703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920307, 35.984501, 33.765881>,  <32.732368, 35.722191, 33.529510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920307, 35.984501, 33.765881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015198, -0.675328, 0.737360,
		0.882615, -0.337468, -0.327270,
		0.469851, 0.655779, 0.590926,
		33.061264, 36.181236, 33.943157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288742, 35.305656, 33.862865>,  <32.732368, 35.722191, 33.529510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288742, 35.305656, 33.862865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280594, 35.647385, 34.070602>,  <33.275707, 35.852421, 34.195244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280594, 35.647385, 34.070602>,  <33.288742, 35.305656, 33.862865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280594, 35.647385, 34.070602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172668, -0.508638, 0.843489,
		0.984770, 0.106853, -0.137155,
		-0.020367, 0.854324, 0.519341,
		33.274483, 35.903683, 34.226406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919441, 35.365562, 34.340824>,  <33.288742, 35.305656, 33.862865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919441, 35.365562, 34.340824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609680, 35.580292, 34.474766>,  <33.423824, 35.709129, 34.555130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609680, 35.580292, 34.474766>,  <33.919441, 35.365562, 34.340824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609680, 35.580292, 34.474766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027402, -0.500290, 0.865424,
		0.632101, 0.679361, 0.372715,
		-0.774401, 0.536823, 0.334850,
		33.377361, 35.741337, 34.575222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106110, 35.507797, 35.019524>,  <33.919441, 35.365562, 34.340824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106110, 35.507797, 35.019524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712708, 35.580074, 35.022758>,  <33.476665, 35.623440, 35.024700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712708, 35.580074, 35.022758>,  <34.106110, 35.507797, 35.019524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712708, 35.580074, 35.022758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065489, -0.397398, 0.915306,
		0.168601, 0.899680, 0.402677,
		-0.983507, 0.180693, 0.008083,
		33.417656, 35.634281, 35.025185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942352, 35.664551, 35.682926>,  <34.106110, 35.507797, 35.019524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942352, 35.664551, 35.682926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596527, 35.543324, 35.522591>,  <33.389030, 35.470585, 35.426388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596527, 35.543324, 35.522591>,  <33.942352, 35.664551, 35.682926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596527, 35.543324, 35.522591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265395, -0.401971, 0.876347,
		-0.426721, 0.864042, 0.267097,
		-0.864566, -0.303070, -0.400842,
		33.337158, 35.452404, 35.402336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669090, 35.884861, 35.684673>,  <33.942352, 35.664551, 35.682926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669090, 35.884861, 35.684673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051323, 35.772038, 35.718845>,  <35.280663, 35.704342, 35.739349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051323, 35.772038, 35.718845>,  <34.669090, 35.884861, 35.684673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051323, 35.772038, 35.718845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291169, 0.858702, -0.421724,
		0.045590, 0.427868, 0.902691,
		0.955585, -0.282062, 0.085434,
		35.337997, 35.687420, 35.744476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077019, 36.436138, 36.048698>,  <34.669090, 35.884861, 35.684673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077019, 36.436138, 36.048698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331573, 36.220154, 35.828354>,  <35.484306, 36.090565, 35.696148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331573, 36.220154, 35.828354>,  <35.077019, 36.436138, 36.048698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331573, 36.220154, 35.828354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207356, 0.807602, -0.552071,
		0.742975, 0.237107, 0.625914,
		0.636389, -0.539962, -0.550863,
		35.522491, 36.058167, 35.663094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751068, 36.732521, 36.066406>,  <35.077019, 36.436138, 36.048698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751068, 36.732521, 36.066406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834358, 36.488762, 35.760391>,  <35.884331, 36.342506, 35.576782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834358, 36.488762, 35.760391>,  <35.751068, 36.732521, 36.066406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834358, 36.488762, 35.760391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665112, 0.661714, -0.346065,
		0.717125, -0.436775, 0.543102,
		0.208226, -0.609395, -0.765036,
		35.896828, 36.305943, 35.530880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458817, 36.591743, 36.056862>,  <35.751068, 36.732521, 36.066406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458817, 36.591743, 36.056862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358578, 36.518291, 35.676655>,  <36.298435, 36.474220, 35.448532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358578, 36.518291, 35.676655>,  <36.458817, 36.591743, 36.056862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358578, 36.518291, 35.676655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704574, 0.638746, -0.309159,
		0.663910, -0.747182, -0.030684,
		-0.250597, -0.183635, -0.950515,
		36.283398, 36.463200, 35.391499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162899, 36.594849, 35.707134>,  <36.458817, 36.591743, 36.056862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162899, 36.594849, 35.707134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872952, 36.634747, 35.434486>,  <36.698982, 36.658684, 35.270897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872952, 36.634747, 35.434486>,  <37.162899, 36.594849, 35.707134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872952, 36.634747, 35.434486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614378, 0.541175, -0.574169,
		0.311608, -0.834974, -0.453564,
		-0.724873, 0.099744, -0.681624,
		36.655491, 36.664669, 35.230000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564293, 36.502136, 35.129860>,  <37.162899, 36.594849, 35.707134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564293, 36.502136, 35.129860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239819, 36.718899, 35.041927>,  <37.045135, 36.848957, 34.989170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239819, 36.718899, 35.041927>,  <37.564293, 36.502136, 35.129860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239819, 36.718899, 35.041927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544849, 0.563798, -0.620702,
		-0.212423, -0.623275, -0.752599,
		-0.811182, 0.541904, -0.219827,
		36.996464, 36.881470, 34.975979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711102, 36.706676, 34.447517>,  <37.564293, 36.502136, 35.129860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711102, 36.706676, 34.447517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414360, 36.959892, 34.535984>,  <37.236317, 37.111820, 34.589066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414360, 36.959892, 34.535984>,  <37.711102, 36.706676, 34.447517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414360, 36.959892, 34.535984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431690, 0.703247, -0.564878,
		-0.513128, -0.323579, -0.794982,
		-0.741851, 0.633041, 0.221170,
		37.191803, 37.149803, 34.602333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563969, 36.920872, 33.831108>,  <37.711102, 36.706676, 34.447517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563969, 36.920872, 33.831108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420040, 37.189953, 34.089718>,  <37.333683, 37.351402, 34.244884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420040, 37.189953, 34.089718>,  <37.563969, 36.920872, 33.831108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420040, 37.189953, 34.089718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406781, 0.736721, -0.540159,
		-0.839676, 0.068632, -0.538733,
		-0.359824, 0.672705, 0.646525,
		37.312092, 37.391766, 34.283676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238525, 37.408241, 33.368820>,  <37.563969, 36.920872, 33.831108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238525, 37.408241, 33.368820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296490, 37.588974, 33.720921>,  <37.331268, 37.697414, 33.932182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296490, 37.588974, 33.720921>,  <37.238525, 37.408241, 33.368820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296490, 37.588974, 33.720921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332833, 0.815541, -0.473408,
		-0.931785, 0.361580, -0.032203,
		0.144912, 0.451833, 0.880254,
		37.339962, 37.724525, 33.984997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893135, 38.022243, 33.339020>,  <37.238525, 37.408241, 33.368820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893135, 38.022243, 33.339020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159306, 38.087788, 33.630322>,  <37.319008, 38.127113, 33.805103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159306, 38.087788, 33.630322>,  <36.893135, 38.022243, 33.339020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159306, 38.087788, 33.630322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281884, 0.848215, -0.448410,
		-0.691194, 0.503668, 0.518237,
		0.665426, 0.163856, 0.728257,
		37.358932, 38.136944, 33.848797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826717, 38.677944, 33.519535>,  <36.893135, 38.022243, 33.339020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826717, 38.677944, 33.519535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192909, 38.606136, 33.663574>,  <37.412624, 38.563049, 33.749996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192909, 38.606136, 33.663574>,  <36.826717, 38.677944, 33.519535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192909, 38.606136, 33.663574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367281, 0.738339, -0.565651,
		-0.164327, 0.650098, 0.741868,
		0.915479, -0.179522, 0.360098,
		37.467552, 38.552280, 33.771603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983208, 39.362724, 33.768734>,  <36.826717, 38.677944, 33.519535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983208, 39.362724, 33.768734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312992, 39.151089, 33.688408>,  <37.510864, 39.024109, 33.640213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312992, 39.151089, 33.688408>,  <36.983208, 39.362724, 33.768734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312992, 39.151089, 33.688408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263570, 0.673017, -0.691071,
		0.500788, 0.516835, 0.694330,
		0.824465, -0.529084, -0.200817,
		37.560333, 38.992363, 33.628162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476158, 39.830635, 33.730087>,  <36.983208, 39.362724, 33.768734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476158, 39.830635, 33.730087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628296, 39.506538, 33.551716>,  <37.719578, 39.312080, 33.444691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628296, 39.506538, 33.551716>,  <37.476158, 39.830635, 33.730087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628296, 39.506538, 33.551716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375846, 0.575970, -0.725947,
		0.845033, 0.108506, 0.523590,
		0.380342, -0.810237, -0.445932,
		37.742397, 39.263466, 33.417934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094494, 40.185768, 33.520058>,  <37.476158, 39.830635, 33.730087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094494, 40.185768, 33.520058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040310, 39.843647, 33.320011>,  <38.007801, 39.638374, 33.199982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040310, 39.843647, 33.320011>,  <38.094494, 40.185768, 33.520058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040310, 39.843647, 33.320011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271462, 0.453415, -0.848955,
		0.952869, -0.250759, 0.170763,
		-0.135457, -0.855298, -0.500116,
		37.999672, 39.587059, 33.169975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701241, 40.004002, 33.017326>,  <38.094494, 40.185768, 33.520058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701241, 40.004002, 33.017326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390636, 39.813812, 32.851936>,  <38.204273, 39.699699, 32.752701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390636, 39.813812, 32.851936>,  <38.701241, 40.004002, 33.017326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390636, 39.813812, 32.851936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186173, 0.453777, -0.871451,
		0.601977, -0.753666, -0.263840,
		-0.776507, -0.475473, -0.413475,
		38.157684, 39.671169, 32.727894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946156, 39.817280, 32.385319>,  <38.701241, 40.004002, 33.017326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946156, 39.817280, 32.385319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548996, 39.803394, 32.339790>,  <38.310699, 39.795063, 32.312473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548996, 39.803394, 32.339790>,  <38.946156, 39.817280, 32.385319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548996, 39.803394, 32.339790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076686, 0.544727, -0.835100,
		0.090990, -0.837895, -0.538194,
		-0.992895, -0.034714, -0.113819,
		38.251129, 39.792980, 32.305645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898998, 39.722595, 31.768686>,  <38.946156, 39.817280, 32.385319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898998, 39.722595, 31.768686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513153, 39.807289, 31.831533>,  <38.281647, 39.858105, 31.869242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513153, 39.807289, 31.831533>,  <38.898998, 39.722595, 31.768686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513153, 39.807289, 31.831533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039679, 0.472535, -0.880418,
		-0.260659, -0.855499, -0.447413,
		-0.964615, 0.211736, 0.157116,
		38.223770, 39.870811, 31.878668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573696, 39.511276, 31.161879>,  <38.898998, 39.722595, 31.768686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573696, 39.511276, 31.161879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377800, 39.821636, 31.320940>,  <38.260262, 40.007851, 31.416378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377800, 39.821636, 31.320940>,  <38.573696, 39.511276, 31.161879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377800, 39.821636, 31.320940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024931, 0.468372, -0.883179,
		-0.871510, -0.422617, -0.248726,
		-0.489743, 0.775901, 0.397655,
		38.230877, 40.054405, 31.440237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182064, 39.633789, 30.614054>,  <38.573696, 39.511276, 31.161879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182064, 39.633789, 30.614054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116249, 39.962269, 30.832617>,  <38.076759, 40.159355, 30.963755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116249, 39.962269, 30.832617>,  <38.182064, 39.633789, 30.614054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116249, 39.962269, 30.832617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460843, 0.425782, -0.778674,
		-0.872096, -0.379928, 0.308387,
		-0.164535, 0.821197, 0.546410,
		38.066887, 40.208630, 30.996540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500271, 39.987717, 30.520214>,  <38.182064, 39.633789, 30.614054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500271, 39.987717, 30.520214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708042, 40.306633, 30.643194>,  <37.832703, 40.497982, 30.716982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708042, 40.306633, 30.643194>,  <37.500271, 39.987717, 30.520214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708042, 40.306633, 30.643194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219880, 0.472387, -0.853524,
		-0.825742, 0.375739, 0.420677,
		0.519424, 0.797290, 0.307452,
		37.863869, 40.545818, 30.735430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179073, 40.623257, 30.186348>,  <37.500271, 39.987717, 30.520214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179073, 40.623257, 30.186348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527843, 40.757877, 30.328602>,  <37.737106, 40.838650, 30.413954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527843, 40.757877, 30.328602>,  <37.179073, 40.623257, 30.186348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527843, 40.757877, 30.328602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094536, 0.596948, -0.796691,
		-0.480424, 0.728276, 0.488678,
		0.871926, 0.336552, 0.355636,
		37.789421, 40.858845, 30.435293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298988, 41.345306, 29.864458>,  <37.179073, 40.623257, 30.186348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298988, 41.345306, 29.864458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669228, 41.249306, 29.981533>,  <37.891373, 41.191704, 30.051777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669228, 41.249306, 29.981533>,  <37.298988, 41.345306, 29.864458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669228, 41.249306, 29.981533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378353, 0.564785, -0.733394,
		0.010712, 0.789567, 0.613571,
		0.925599, -0.240003, 0.292685,
		37.946907, 41.177303, 30.069338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623188, 41.977463, 29.668720>,  <37.298988, 41.345306, 29.864458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623188, 41.977463, 29.668720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899853, 41.695904, 29.733379>,  <38.065849, 41.526966, 29.772175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899853, 41.695904, 29.733379>,  <37.623188, 41.977463, 29.668720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899853, 41.695904, 29.733379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468958, 0.267498, -0.841738,
		0.549259, 0.658003, 0.515118,
		0.691659, -0.703901, 0.161650,
		38.107349, 41.484734, 29.781874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324875, 42.293900, 29.664902>,  <37.623188, 41.977463, 29.668720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324875, 42.293900, 29.664902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360268, 41.903835, 29.583687>,  <38.381504, 41.669796, 29.534958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360268, 41.903835, 29.583687>,  <38.324875, 42.293900, 29.664902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360268, 41.903835, 29.583687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368802, 0.221426, -0.902749,
		0.925287, 0.005000, 0.379236,
		0.088486, -0.975164, -0.203038,
		38.386814, 41.611286, 29.522776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973633, 42.222858, 29.276192>,  <38.324875, 42.293900, 29.664902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973633, 42.222858, 29.276192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775928, 41.882225, 29.206314>,  <38.657307, 41.677845, 29.164387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775928, 41.882225, 29.206314>,  <38.973633, 42.222858, 29.276192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775928, 41.882225, 29.206314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229783, 0.065827, -0.971013,
		0.838396, -0.520074, 0.163143,
		-0.494260, -0.851581, -0.174694,
		38.627651, 41.626751, 29.153906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458729, 41.800133, 28.929174>,  <38.973633, 42.222858, 29.276192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458729, 41.800133, 28.929174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098694, 41.644096, 28.851540>,  <38.882671, 41.550476, 28.804958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098694, 41.644096, 28.851540>,  <39.458729, 41.800133, 28.929174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098694, 41.644096, 28.851540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264412, -0.134998, -0.954914,
		0.346298, -0.910828, 0.224654,
		-0.900091, -0.390087, -0.194085,
		38.828667, 41.527069, 28.793314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607777, 41.310509, 28.581091>,  <39.458729, 41.800133, 28.929174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607777, 41.310509, 28.581091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226440, 41.355892, 28.469183>,  <38.997639, 41.383121, 28.402039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226440, 41.355892, 28.469183>,  <39.607777, 41.310509, 28.581091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226440, 41.355892, 28.469183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230874, -0.323124, -0.917763,
		-0.194531, -0.939530, 0.281851,
		-0.953339, 0.113461, -0.279771,
		38.940437, 41.389931, 28.385252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442192, 40.722195, 28.178623>,  <39.607777, 41.310509, 28.581091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442192, 40.722195, 28.178623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186508, 41.012524, 28.076960>,  <39.033096, 41.186722, 28.015961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186508, 41.012524, 28.076960>,  <39.442192, 40.722195, 28.178623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186508, 41.012524, 28.076960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118485, -0.233596, -0.965088,
		-0.759848, -0.647009, 0.063319,
		-0.639212, 0.725818, -0.254159,
		38.994743, 41.230270, 28.000711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126446, 40.414425, 27.643360>,  <39.442192, 40.722195, 28.178623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126446, 40.414425, 27.643360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015659, 40.797890, 27.617283>,  <38.949188, 41.027969, 27.601637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015659, 40.797890, 27.617283>,  <39.126446, 40.414425, 27.643360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015659, 40.797890, 27.617283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387785, 0.049443, -0.920423,
		-0.879153, -0.280210, -0.385450,
		-0.276969, 0.958665, -0.065193,
		38.932568, 41.085487, 27.597725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675926, 40.543839, 27.004436>,  <39.126446, 40.414425, 27.643360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675926, 40.543839, 27.004436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847752, 40.894917, 27.089407>,  <38.950848, 41.105564, 27.140388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847752, 40.894917, 27.089407>,  <38.675926, 40.543839, 27.004436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847752, 40.894917, 27.089407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357734, 0.050595, -0.932452,
		-0.829157, 0.476539, -0.292248,
		0.429563, 0.877696, 0.212425,
		38.976620, 41.158226, 27.153135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621212, 40.918221, 26.432890>,  <38.675926, 40.543839, 27.004436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621212, 40.918221, 26.432890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903915, 41.121593, 26.629660>,  <39.073536, 41.243618, 26.747721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903915, 41.121593, 26.629660>,  <38.621212, 40.918221, 26.432890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903915, 41.121593, 26.629660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467824, 0.185723, -0.864088,
		-0.530693, 0.840834, -0.106596,
		0.706757, 0.508433, 0.491925,
		39.115944, 41.274124, 26.777237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656967, 41.600071, 26.117092>,  <38.621212, 40.918221, 26.432890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656967, 41.600071, 26.117092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016239, 41.553799, 26.286747>,  <39.231804, 41.526035, 26.388540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016239, 41.553799, 26.286747>,  <38.656967, 41.600071, 26.117092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016239, 41.553799, 26.286747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439400, 0.205028, -0.874580,
		0.014214, 0.971895, 0.234983,
		0.898179, -0.115683, 0.424137,
		39.285694, 41.519093, 26.413988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011189, 42.048603, 25.880264>,  <38.656967, 41.600071, 26.117092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011189, 42.048603, 25.880264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319714, 41.846828, 26.035507>,  <39.504829, 41.725765, 26.128653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319714, 41.846828, 26.035507>,  <39.011189, 42.048603, 25.880264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319714, 41.846828, 26.035507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542297, 0.201670, -0.815624,
		0.333161, 0.839567, 0.429105,
		0.771309, -0.504437, 0.388106,
		39.551105, 41.695496, 26.151939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627586, 42.514790, 25.809168>,  <39.011189, 42.048603, 25.880264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627586, 42.514790, 25.809168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759972, 42.140217, 25.855757>,  <39.839401, 41.915474, 25.883711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759972, 42.140217, 25.855757>,  <39.627586, 42.514790, 25.809168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759972, 42.140217, 25.855757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680640, 0.151403, -0.716803,
		0.653601, 0.316511, 0.687479,
		0.330962, -0.936428, 0.116472,
		39.859261, 41.859287, 25.890699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350189, 42.632465, 25.820845>,  <39.627586, 42.514790, 25.809168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350189, 42.632465, 25.820845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305351, 42.243168, 25.740610>,  <40.278446, 42.009590, 25.692471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305351, 42.243168, 25.740610>,  <40.350189, 42.632465, 25.820845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305351, 42.243168, 25.740610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655916, 0.079165, -0.750672,
		0.746464, -0.215715, 0.629490,
		-0.112097, -0.973242, -0.200584,
		40.271721, 41.951195, 25.680435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963707, 42.330475, 25.743776>,  <40.350189, 42.632465, 25.820845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963707, 42.330475, 25.743776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744610, 42.059338, 25.547607>,  <40.613152, 41.896656, 25.429907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744610, 42.059338, 25.547607>,  <40.963707, 42.330475, 25.743776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744610, 42.059338, 25.547607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605143, 0.083798, -0.791694,
		0.577738, -0.730419, 0.364290,
		-0.547742, -0.677839, -0.490421,
		40.580288, 41.855988, 25.400480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483913, 41.910221, 25.306038>,  <40.963707, 42.330475, 25.743776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483913, 41.910221, 25.306038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118820, 41.858212, 25.151115>,  <40.899765, 41.827003, 25.058163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118820, 41.858212, 25.151115>,  <41.483913, 41.910221, 25.306038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118820, 41.858212, 25.151115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336524, 0.298252, -0.893195,
		0.231655, -0.945589, -0.228468,
		-0.912736, -0.130028, -0.387304,
		40.844997, 41.819202, 25.034924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190262, 42.029755, 25.094952>,  <41.483913, 41.910221, 25.306038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190262, 42.029755, 25.094952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578156, 42.125420, 25.075243>,  <42.810890, 42.182819, 25.063417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578156, 42.125420, 25.075243>,  <42.190262, 42.029755, 25.094952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578156, 42.125420, 25.075243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228101, 0.815226, -0.532331,
		-0.087144, 0.527456, 0.845101,
		0.969730, 0.239158, -0.049271,
		42.869076, 42.197166, 25.060461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755707, 41.595268, 24.730906>,  <42.190262, 42.029755, 25.094952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755707, 41.595268, 24.730906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109463, 41.408787, 24.739973>,  <42.321716, 41.296898, 24.745413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109463, 41.408787, 24.739973>,  <41.755707, 41.595268, 24.730906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109463, 41.408787, 24.739973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129200, -0.197846, 0.971681,
		-0.448521, -0.862269, -0.235206,
		0.884385, -0.466208, 0.022667,
		42.374779, 41.268925, 24.746773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655521, 40.916065, 24.992201>,  <41.755707, 41.595268, 24.730906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655521, 40.916065, 24.992201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044415, 40.993889, 25.044210>,  <42.277752, 41.040585, 25.075417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044415, 40.993889, 25.044210>,  <41.655521, 40.916065, 24.992201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044415, 40.993889, 25.044210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072293, -0.278738, 0.957642,
		0.222565, -0.940452, -0.256933,
		0.972234, 0.194563, 0.130025,
		42.336086, 41.052258, 25.083218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881702, 40.349628, 25.321148>,  <41.655521, 40.916065, 24.992201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881702, 40.349628, 25.321148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180042, 40.611233, 25.371704>,  <42.359047, 40.768196, 25.402039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180042, 40.611233, 25.371704>,  <41.881702, 40.349628, 25.321148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180042, 40.611233, 25.371704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131289, -0.330358, 0.934680,
		0.653043, -0.680540, -0.332263,
		0.745854, 0.654009, 0.126391,
		42.403797, 40.807434, 25.409622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315742, 39.942810, 25.620832>,  <41.881702, 40.349628, 25.321148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315742, 39.942810, 25.620832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437840, 40.310810, 25.719160>,  <42.511097, 40.531609, 25.778156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437840, 40.310810, 25.719160>,  <42.315742, 39.942810, 25.620832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437840, 40.310810, 25.719160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008436, -0.260741, 0.965372,
		0.952237, -0.292601, -0.087351,
		0.305244, 0.920000, 0.245818,
		42.529411, 40.586811, 25.792906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962273, 39.877190, 25.935953>,  <42.315742, 39.942810, 25.620832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962273, 39.877190, 25.935953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801987, 40.227489, 26.043648>,  <42.705814, 40.437668, 26.108265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801987, 40.227489, 26.043648>,  <42.962273, 39.877190, 25.935953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801987, 40.227489, 26.043648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021176, -0.302635, 0.952871,
		0.915956, 0.376132, 0.139817,
		-0.400719, 0.875749, 0.269235,
		42.681770, 40.490215, 26.124418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316280, 40.096676, 26.574402>,  <42.962273, 39.877190, 25.935953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316280, 40.096676, 26.574402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950512, 40.257549, 26.556156>,  <42.731052, 40.354073, 26.545208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950512, 40.257549, 26.556156>,  <43.316280, 40.096676, 26.574402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950512, 40.257549, 26.556156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252857, -0.479606, 0.840263,
		0.316064, 0.779888, 0.540257,
		-0.914421, 0.402185, -0.045614,
		42.676186, 40.378204, 26.542471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228271, 40.374893, 27.235996>,  <43.316280, 40.096676, 26.574402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228271, 40.374893, 27.235996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853992, 40.339489, 27.099392>,  <42.629425, 40.318249, 27.017429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853992, 40.339489, 27.099392>,  <43.228271, 40.374893, 27.235996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853992, 40.339489, 27.099392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299991, -0.309817, 0.902230,
		-0.185661, 0.946667, 0.263344,
		-0.935700, -0.088508, -0.341513,
		42.573284, 40.312935, 26.996939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755970, 40.704247, 27.744881>,  <43.228271, 40.374893, 27.235996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755970, 40.704247, 27.744881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510929, 40.462276, 27.541399>,  <42.363903, 40.317093, 27.419310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510929, 40.462276, 27.541399>,  <42.755970, 40.704247, 27.744881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510929, 40.462276, 27.541399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390075, -0.328381, 0.860237,
		-0.687431, 0.725415, -0.034801,
		-0.612601, -0.604929, -0.508705,
		42.327148, 40.280796, 27.388788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032776, 40.695370, 28.170990>,  <42.755970, 40.704247, 27.744881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032776, 40.695370, 28.170990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035645, 40.390236, 27.912367>,  <42.037365, 40.207157, 27.757193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035645, 40.390236, 27.912367>,  <42.032776, 40.695370, 28.170990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035645, 40.390236, 27.912367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492727, -0.565330, 0.661529,
		-0.870154, 0.313834, -0.379921,
		0.007170, -0.762830, -0.646559,
		42.037796, 40.161388, 27.718399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437649, 40.404873, 28.281324>,  <42.032776, 40.695370, 28.170990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437649, 40.404873, 28.281324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609451, 40.108715, 28.074503>,  <41.712532, 39.931023, 27.950411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609451, 40.108715, 28.074503>,  <41.437649, 40.404873, 28.281324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609451, 40.108715, 28.074503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511915, -0.671290, 0.536015,
		-0.743957, 0.034469, -0.667338,
		0.429502, -0.740393, -0.517056,
		41.738304, 39.886597, 27.919386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955494, 39.795448, 28.100283>,  <41.437649, 40.404873, 28.281324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955494, 39.795448, 28.100283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301311, 39.603439, 28.040771>,  <41.508804, 39.488232, 28.005064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301311, 39.603439, 28.040771>,  <40.955494, 39.795448, 28.100283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301311, 39.603439, 28.040771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377761, -0.815985, 0.437567,
		-0.331445, -0.322094, -0.886792,
		0.864547, -0.480025, -0.148780,
		41.560677, 39.459431, 27.996138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723503, 39.112572, 27.851332>,  <40.955494, 39.795448, 28.100283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723503, 39.112572, 27.851332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088959, 39.092567, 28.012709>,  <41.308231, 39.080563, 28.109535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088959, 39.092567, 28.012709>,  <40.723503, 39.112572, 27.851332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088959, 39.092567, 28.012709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266883, -0.822394, 0.502436,
		0.306657, -0.566716, -0.764718,
		0.913638, -0.050015, 0.403440,
		41.363049, 39.077564, 28.133741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815094, 38.373020, 27.798338>,  <40.723503, 39.112572, 27.851332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815094, 38.373020, 27.798338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047142, 38.542728, 28.076464>,  <41.186371, 38.644554, 28.243340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047142, 38.542728, 28.076464>,  <40.815094, 38.373020, 27.798338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047142, 38.542728, 28.076464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467328, -0.525795, 0.710735,
		0.667134, -0.737249, -0.106751,
		0.580118, 0.424268, 0.695312,
		41.221176, 38.670010, 28.285057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974205, 37.829498, 28.233562>,  <40.815094, 38.373020, 27.798338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974205, 37.829498, 28.233562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042744, 38.161903, 28.445242>,  <41.083866, 38.361347, 28.572250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042744, 38.161903, 28.445242>,  <40.974205, 37.829498, 28.233562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042744, 38.161903, 28.445242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365721, -0.445113, 0.817388,
		0.914815, -0.333599, 0.227650,
		0.171350, 0.831015, 0.529200,
		41.094151, 38.411209, 28.604002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085732, 37.603706, 28.880999>,  <40.974205, 37.829498, 28.233562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085732, 37.603706, 28.880999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034519, 37.993786, 28.953224>,  <41.003792, 38.227833, 28.996559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034519, 37.993786, 28.953224>,  <41.085732, 37.603706, 28.880999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034519, 37.993786, 28.953224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336087, -0.213952, 0.917208,
		0.933088, 0.056745, 0.355142,
		-0.128030, 0.975195, 0.180565,
		40.996109, 38.286343, 29.007393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422916, 37.658600, 29.509996>,  <41.085732, 37.603706, 28.880999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422916, 37.658600, 29.509996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143871, 37.936687, 29.440699>,  <40.976444, 38.103539, 29.399120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143871, 37.936687, 29.440699>,  <41.422916, 37.658600, 29.509996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143871, 37.936687, 29.440699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411973, -0.191395, 0.890868,
		0.586189, 0.692850, 0.419930,
		-0.697611, 0.695217, -0.173242,
		40.934589, 38.145252, 29.388725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394688, 37.825104, 30.194639>,  <41.422916, 37.658600, 29.509996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394688, 37.825104, 30.194639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078270, 37.962414, 29.992094>,  <40.888420, 38.044800, 29.870567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078270, 37.962414, 29.992094>,  <41.394688, 37.825104, 30.194639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078270, 37.962414, 29.992094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586137, -0.188277, 0.788033,
		0.175174, 0.920171, 0.350141,
		-0.791049, 0.343273, -0.506365,
		40.840954, 38.065395, 29.840185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133003, 38.371506, 30.595764>,  <41.394688, 37.825104, 30.194639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133003, 38.371506, 30.595764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832306, 38.228798, 30.373920>,  <40.651886, 38.143173, 30.240814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832306, 38.228798, 30.373920>,  <41.133003, 38.371506, 30.595764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832306, 38.228798, 30.373920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582188, -0.035957, 0.812259,
		-0.309730, 0.933501, -0.180675,
		-0.751748, -0.356768, -0.554610,
		40.606781, 38.121769, 30.207537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526592, 38.682873, 30.901554>,  <41.133003, 38.371506, 30.595764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526592, 38.682873, 30.901554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388657, 38.372944, 30.689615>,  <40.305897, 38.186985, 30.562452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388657, 38.372944, 30.689615>,  <40.526592, 38.682873, 30.901554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388657, 38.372944, 30.689615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760227, -0.100560, 0.641828,
		-0.550583, 0.624131, -0.554363,
		-0.344838, -0.774821, -0.529848,
		40.285206, 38.140499, 30.530661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861507, 38.783234, 30.827354>,  <40.526592, 38.682873, 30.901554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861507, 38.783234, 30.827354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901794, 38.389004, 30.772959>,  <39.925968, 38.152466, 30.740322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901794, 38.389004, 30.772959>,  <39.861507, 38.783234, 30.827354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901794, 38.389004, 30.772959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689106, -0.167693, 0.704990,
		-0.717627, 0.022705, -0.696057,
		0.100717, -0.985578, -0.135988,
		39.932011, 38.093330, 30.732162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169006, 38.580872, 30.939100>,  <39.861507, 38.783234, 30.827354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169006, 38.580872, 30.939100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407230, 38.259556, 30.941429>,  <39.550167, 38.066765, 30.942825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407230, 38.259556, 30.941429>,  <39.169006, 38.580872, 30.939100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407230, 38.259556, 30.941429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496237, -0.362196, 0.789026,
		-0.631707, -0.472802, -0.614332,
		0.595562, -0.803288, 0.005820,
		39.585899, 38.018570, 30.943174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793640, 38.042362, 31.109377>,  <39.169006, 38.580872, 30.939100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793640, 38.042362, 31.109377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155045, 37.890800, 31.189476>,  <39.371887, 37.799862, 31.237535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155045, 37.890800, 31.189476>,  <38.793640, 38.042362, 31.109377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155045, 37.890800, 31.189476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335968, -0.336135, 0.879851,
		-0.266065, -0.862234, -0.431001,
		0.903512, -0.378900, 0.200249,
		39.426098, 37.777130, 31.249550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715405, 37.347706, 31.472591>,  <38.793640, 38.042362, 31.109377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715405, 37.347706, 31.472591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088264, 37.451195, 31.573917>,  <39.311981, 37.513287, 31.634712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088264, 37.451195, 31.573917>,  <38.715405, 37.347706, 31.472591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088264, 37.451195, 31.573917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097714, -0.493901, 0.864010,
		0.348650, -0.830136, -0.435107,
		0.932145, 0.258721, 0.253314,
		39.367908, 37.528812, 31.649912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026752, 36.647049, 31.738380>,  <38.715405, 37.347706, 31.472591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026752, 36.647049, 31.738380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259819, 36.949818, 31.856752>,  <39.399658, 37.131477, 31.927776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259819, 36.949818, 31.856752>,  <39.026752, 36.647049, 31.738380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259819, 36.949818, 31.856752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034732, -0.386986, 0.921431,
		0.811968, -0.526610, -0.251773,
		0.582668, 0.756917, 0.295930,
		39.434620, 37.176891, 31.945532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630116, 36.379940, 32.015274>,  <39.026752, 36.647049, 31.738380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630116, 36.379940, 32.015274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538017, 36.733528, 32.178040>,  <39.482758, 36.945683, 32.275700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538017, 36.733528, 32.178040>,  <39.630116, 36.379940, 32.015274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538017, 36.733528, 32.178040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060888, -0.404241, 0.912624,
		0.971225, 0.234906, 0.039252,
		-0.230248, 0.883973, 0.406912,
		39.468945, 36.998718, 32.300114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965759, 36.353771, 32.697937>,  <39.630116, 36.379940, 32.015274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965759, 36.353771, 32.697937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755486, 36.684040, 32.779835>,  <39.629322, 36.882202, 32.828972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755486, 36.684040, 32.779835>,  <39.965759, 36.353771, 32.697937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755486, 36.684040, 32.779835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042585, -0.214841, 0.975720,
		0.849613, 0.521641, 0.077777,
		-0.525685, 0.825672, 0.204746,
		39.597778, 36.931740, 32.841259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456192, 36.713360, 33.186104>,  <39.965759, 36.353771, 32.697937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456192, 36.713360, 33.186104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080971, 36.839287, 33.243984>,  <39.855839, 36.914845, 33.278713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080971, 36.839287, 33.243984>,  <40.456192, 36.713360, 33.186104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080971, 36.839287, 33.243984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030298, -0.341503, 0.939392,
		0.345154, 0.885588, 0.310811,
		-0.938057, 0.314818, 0.144702,
		39.799553, 36.933731, 33.287395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474209, 36.903732, 33.880188>,  <40.456192, 36.713360, 33.186104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474209, 36.903732, 33.880188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079952, 36.895916, 33.813103>,  <39.843399, 36.891228, 33.772850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079952, 36.895916, 33.813103>,  <40.474209, 36.903732, 33.880188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079952, 36.895916, 33.813103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144641, -0.414789, 0.898348,
		-0.087118, 0.909708, 0.406008,
		-0.985642, -0.019537, -0.167717,
		39.784260, 36.890057, 33.762787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221851, 37.017632, 34.535229>,  <40.474209, 36.903732, 33.880188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221851, 37.017632, 34.535229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912186, 36.865963, 34.332485>,  <39.726387, 36.774963, 34.210838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912186, 36.865963, 34.332485>,  <40.221851, 37.017632, 34.535229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912186, 36.865963, 34.332485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231235, -0.575992, 0.784069,
		-0.589239, 0.724200, 0.358235,
		-0.774163, -0.379167, -0.506857,
		39.679935, 36.752213, 34.180428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851261, 36.889450, 35.041092>,  <40.221851, 37.017632, 34.535229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851261, 36.889450, 35.041092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647747, 36.694176, 34.757454>,  <39.525639, 36.577011, 34.587273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647747, 36.694176, 34.757454>,  <39.851261, 36.889450, 35.041092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647747, 36.694176, 34.757454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405581, -0.590609, 0.697628,
		-0.759370, 0.642536, 0.102492,
		-0.508784, -0.488190, -0.709091,
		39.495113, 36.547718, 34.544727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159214, 36.870216, 35.274147>,  <39.851261, 36.889450, 35.041092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159214, 36.870216, 35.274147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196999, 36.575188, 35.006695>,  <39.219669, 36.398170, 34.846222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196999, 36.575188, 35.006695>,  <39.159214, 36.870216, 35.274147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196999, 36.575188, 35.006695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370707, -0.649391, 0.663978,
		-0.923934, 0.185146, -0.334765,
		0.094461, -0.737572, -0.668629,
		39.225338, 36.353916, 34.806107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621517, 36.490265, 35.375153>,  <39.159214, 36.870216, 35.274147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621517, 36.490265, 35.375153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862453, 36.235516, 35.182659>,  <39.007015, 36.082668, 35.067165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862453, 36.235516, 35.182659>,  <38.621517, 36.490265, 35.375153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862453, 36.235516, 35.182659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212092, -0.708883, 0.672683,
		-0.769550, -0.303117, -0.562062,
		0.602337, -0.636872, -0.481232,
		39.043156, 36.044453, 35.038292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236588, 35.903900, 35.134964>,  <38.621517, 36.490265, 35.375153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236588, 35.903900, 35.134964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620312, 35.826862, 35.217545>,  <38.850548, 35.780640, 35.267094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620312, 35.826862, 35.217545>,  <38.236588, 35.903900, 35.134964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620312, 35.826862, 35.217545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281796, -0.607764, 0.742438,
		-0.017517, -0.770409, -0.637310,
		0.959314, -0.192596, 0.206452,
		38.908108, 35.769085, 35.279480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261887, 35.247509, 35.260700>,  <38.236588, 35.903900, 35.134964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261887, 35.247509, 35.260700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600719, 35.376373, 35.429779>,  <38.804020, 35.453690, 35.531227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600719, 35.376373, 35.429779>,  <38.261887, 35.247509, 35.260700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600719, 35.376373, 35.429779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015527, -0.779999, 0.625588,
		0.531241, -0.536485, -0.655718,
		0.847079, 0.322157, 0.422697,
		38.854843, 35.473019, 35.556587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687134, 34.605122, 35.451984>,  <38.261887, 35.247509, 35.260700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687134, 34.605122, 35.451984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875740, 34.886574, 35.664616>,  <38.988903, 35.055447, 35.792194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875740, 34.886574, 35.664616>,  <38.687134, 34.605122, 35.451984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875740, 34.886574, 35.664616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033285, -0.616565, 0.786600,
		0.881232, -0.353197, -0.314138,
		0.471511, 0.703633, 0.531580,
		39.017193, 35.097664, 35.824089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314060, 34.297424, 35.826324>,  <38.687134, 34.605122, 35.451984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314060, 34.297424, 35.826324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212284, 34.633083, 36.018616>,  <39.151218, 34.834476, 36.133991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212284, 34.633083, 36.018616>,  <39.314060, 34.297424, 35.826324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212284, 34.633083, 36.018616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024815, -0.502588, 0.864170,
		0.966771, 0.207947, 0.148700,
		-0.254436, 0.839145, 0.480727,
		39.135952, 34.884827, 36.162834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848377, 34.435204, 36.302689>,  <39.314060, 34.297424, 35.826324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848377, 34.435204, 36.302689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513798, 34.617668, 36.424194>,  <39.313049, 34.727146, 36.497097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513798, 34.617668, 36.424194>,  <39.848377, 34.435204, 36.302689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513798, 34.617668, 36.424194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021613, -0.526373, 0.849980,
		0.547621, 0.717529, 0.430424,
		-0.836448, 0.456163, 0.303760,
		39.262863, 34.754517, 36.515324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994381, 34.726822, 36.923809>,  <39.848377, 34.435204, 36.302689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994381, 34.726822, 36.923809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597904, 34.674267, 36.917248>,  <39.360016, 34.642735, 36.913311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597904, 34.674267, 36.917248>,  <39.994381, 34.726822, 36.923809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597904, 34.674267, 36.917248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055595, -0.525418, 0.849026,
		-0.120170, 0.840639, 0.528096,
		-0.991195, -0.131387, -0.016404,
		39.300545, 34.634850, 36.912327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750145, 34.928288, 37.587009>,  <39.994381, 34.726822, 36.923809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750145, 34.928288, 37.587009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452015, 34.703743, 37.443134>,  <39.273136, 34.569016, 37.356812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452015, 34.703743, 37.443134>,  <39.750145, 34.928288, 37.587009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452015, 34.703743, 37.443134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037264, -0.503574, 0.863148,
		-0.665664, 0.656725, 0.354406,
		-0.745321, -0.561360, -0.359683,
		39.228420, 34.535336, 37.335228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500664, 35.228390, 37.777355>,  <39.750145, 34.928288, 37.587009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500664, 35.228390, 37.777355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836021, 35.032299, 37.682049>,  <41.037235, 34.914642, 37.624866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836021, 35.032299, 37.682049>,  <40.500664, 35.228390, 37.777355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836021, 35.032299, 37.682049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505430, 0.862862, 0.003149,
		0.204043, -0.123065, 0.971196,
		0.838396, -0.490229, -0.238262,
		41.087540, 34.885231, 37.610569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070690, 35.230431, 38.290974>,  <40.500664, 35.228390, 37.777355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070690, 35.230431, 38.290974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214462, 35.211052, 37.918209>,  <41.300724, 35.199425, 37.694550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214462, 35.211052, 37.918209>,  <41.070690, 35.230431, 38.290974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214462, 35.211052, 37.918209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602415, 0.774730, 0.192068,
		0.712675, -0.630434, 0.307650,
		0.359431, -0.048451, -0.931913,
		41.322292, 35.196518, 37.638634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745354, 35.137238, 38.415382>,  <41.070690, 35.230431, 38.290974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745354, 35.137238, 38.415382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709263, 35.288498, 38.046848>,  <41.687607, 35.379253, 37.825729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709263, 35.288498, 38.046848>,  <41.745354, 35.137238, 38.415382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709263, 35.288498, 38.046848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673818, 0.704404, 0.223123,
		0.733368, -0.600681, -0.318363,
		-0.090230, 0.378150, -0.921337,
		41.682194, 35.401943, 37.770447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410286, 35.229698, 38.187401>,  <41.745354, 35.137238, 38.415382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410286, 35.229698, 38.187401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187519, 35.475964, 37.964401>,  <42.053860, 35.623722, 37.830601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187519, 35.475964, 37.964401>,  <42.410286, 35.229698, 38.187401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187519, 35.475964, 37.964401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635507, 0.748037, 0.191236,
		0.534764, -0.247789, -0.807854,
		-0.556918, 0.615663, -0.557495,
		42.020443, 35.660664, 37.797153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929939, 35.500961, 37.809090>,  <42.410286, 35.229698, 38.187401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929939, 35.500961, 37.809090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623146, 35.756504, 37.785091>,  <42.439068, 35.909828, 37.770695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623146, 35.756504, 37.785091>,  <42.929939, 35.500961, 37.809090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623146, 35.756504, 37.785091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632858, 0.768584, 0.093645,
		0.105933, 0.033859, -0.993797,
		-0.766987, 0.638852, -0.059991,
		42.393051, 35.948158, 37.767094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107971, 36.096859, 37.325653>,  <42.929939, 35.500961, 37.809090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107971, 36.096859, 37.325653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791508, 36.246857, 37.518917>,  <42.601631, 36.336857, 37.634876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791508, 36.246857, 37.518917>,  <43.107971, 36.096859, 37.325653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791508, 36.246857, 37.518917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461907, 0.884151, 0.070141,
		-0.400888, 0.278670, -0.872715,
		-0.791158, 0.374994, 0.483164,
		42.554161, 36.359356, 37.663868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127666, 36.747238, 37.085045>,  <43.107971, 36.096859, 37.325653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127666, 36.747238, 37.085045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857601, 36.745472, 37.380108>,  <42.695564, 36.744411, 37.557148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857601, 36.745472, 37.380108>,  <43.127666, 36.747238, 37.085045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857601, 36.745472, 37.380108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267145, 0.930642, 0.250079,
		-0.687600, 0.365905, -0.627152,
		-0.675159, -0.004414, 0.737659,
		42.655052, 36.744148, 37.601406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697281, 37.324974, 36.970230>,  <43.127666, 36.747238, 37.085045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697281, 37.324974, 36.970230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704483, 37.201408, 37.350597>,  <42.708805, 37.127270, 37.578819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704483, 37.201408, 37.350597>,  <42.697281, 37.324974, 36.970230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704483, 37.201408, 37.350597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400557, 0.873643, 0.276226,
		-0.916095, 0.375923, 0.139472,
		0.018008, -0.308916, 0.950919,
		42.709885, 37.108734, 37.635872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680111, 37.929356, 37.342606>,  <42.697281, 37.324974, 36.970230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680111, 37.929356, 37.342606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819244, 37.677788, 37.620735>,  <42.902725, 37.526848, 37.787613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819244, 37.677788, 37.620735>,  <42.680111, 37.929356, 37.342606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819244, 37.677788, 37.620735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361426, 0.774261, 0.519511,
		-0.865093, 0.070607, 0.496618,
		0.347831, -0.628915, 0.695327,
		42.923595, 37.489113, 37.829334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369541, 38.128307, 37.926643>,  <42.680111, 37.929356, 37.342606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369541, 38.128307, 37.926643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712212, 37.936581, 38.002914>,  <42.917816, 37.821545, 38.048676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712212, 37.936581, 38.002914>,  <42.369541, 38.128307, 37.926643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712212, 37.936581, 38.002914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373681, 0.831448, 0.411166,
		-0.355614, -0.280985, 0.891395,
		0.856680, -0.479314, 0.190676,
		42.969215, 37.792786, 38.060116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500156, 38.248260, 38.592216>,  <42.369541, 38.128307, 37.926643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500156, 38.248260, 38.592216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864109, 38.130917, 38.474876>,  <43.082481, 38.060513, 38.404472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864109, 38.130917, 38.474876>,  <42.500156, 38.248260, 38.592216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864109, 38.130917, 38.474876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414635, 0.666569, 0.619487,
		0.013806, -0.685294, 0.728136,
		0.909883, -0.293358, -0.293350,
		43.137074, 38.042908, 38.386871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867275, 38.189674, 39.227268>,  <42.500156, 38.248260, 38.592216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867275, 38.189674, 39.227268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130085, 38.237492, 38.929535>,  <43.287769, 38.266182, 38.750896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130085, 38.237492, 38.929535>,  <42.867275, 38.189674, 39.227268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130085, 38.237492, 38.929535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218538, 0.914748, 0.339820,
		0.721500, -0.385934, 0.574885,
		0.657023, 0.119546, -0.744332,
		43.327190, 38.273357, 38.706234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633759, 38.177044, 39.361782>,  <42.867275, 38.189674, 39.227268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633759, 38.177044, 39.361782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580532, 38.419197, 39.047890>,  <43.548595, 38.564487, 38.859554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580532, 38.419197, 39.047890>,  <43.633759, 38.177044, 39.361782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580532, 38.419197, 39.047890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399701, 0.757311, 0.516449,
		0.906936, -0.244937, -0.342745,
		-0.133067, 0.605381, -0.784733,
		43.540611, 38.600811, 38.812469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362545, 38.416050, 38.937622>,  <43.633759, 38.177044, 39.361782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362545, 38.416050, 38.937622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113197, 38.716309, 38.850040>,  <43.963589, 38.896465, 38.797489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113197, 38.716309, 38.850040>,  <44.362545, 38.416050, 38.937622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113197, 38.716309, 38.850040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582721, 0.632691, 0.510037,
		0.521389, 0.190351, -0.831818,
		-0.623369, 0.750645, -0.218957,
		43.926186, 38.941502, 38.784355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742470, 39.017979, 38.646751>,  <44.362545, 38.416050, 38.937622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742470, 39.017979, 38.646751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398869, 39.163410, 38.790932>,  <44.192707, 39.250671, 38.877438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398869, 39.163410, 38.790932>,  <44.742470, 39.017979, 38.646751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398869, 39.163410, 38.790932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501864, 0.737199, 0.452404,
		-0.101235, 0.569512, -0.815725,
		-0.859002, 0.363583, 0.360448,
		44.141167, 39.272484, 38.899067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763779, 39.721531, 38.474674>,  <44.742470, 39.017979, 38.646751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763779, 39.721531, 38.474674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475529, 39.713280, 38.751881>,  <44.302578, 39.708328, 38.918205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475529, 39.713280, 38.751881>,  <44.763779, 39.721531, 38.474674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475529, 39.713280, 38.751881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412083, 0.791099, 0.452052,
		-0.557571, 0.611341, -0.561585,
		-0.720626, -0.020632, 0.693017,
		44.259342, 39.707088, 38.959785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336628, 40.379395, 38.548012>,  <44.763779, 39.721531, 38.474674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336628, 40.379395, 38.548012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344604, 40.192059, 38.901340>,  <44.349392, 40.079659, 39.113338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344604, 40.192059, 38.901340>,  <44.336628, 40.379395, 38.548012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344604, 40.192059, 38.901340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432990, 0.800394, 0.414595,
		-0.901178, 0.374201, 0.218751,
		0.019945, -0.468340, 0.883323,
		44.350590, 40.051556, 39.166336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031582, 40.864197, 38.975327>,  <44.336628, 40.379395, 38.548012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031582, 40.864197, 38.975327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.190971, 40.609585, 39.239464>,  <44.286606, 40.456818, 39.397945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.190971, 40.609585, 39.239464>,  <44.031582, 40.864197, 38.975327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190971, 40.609585, 39.239464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222709, 0.765570, 0.603575,
		-0.889730, -0.093445, 0.446821,
		0.398474, -0.636530, 0.660339,
		44.310513, 40.418625, 39.437565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896847, 41.201996, 39.578697>,  <44.031582, 40.864197, 38.975327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896847, 41.201996, 39.578697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179596, 40.933842, 39.668949>,  <44.349247, 40.772949, 39.723099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179596, 40.933842, 39.668949>,  <43.896847, 41.201996, 39.578697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179596, 40.933842, 39.668949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461407, 0.678793, 0.571265,
		-0.536123, -0.299707, 0.789144,
		0.706877, -0.670385, 0.225629,
		44.391659, 40.732727, 39.736637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888939, 41.103073, 40.306782>,  <43.896847, 41.201996, 39.578697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888939, 41.103073, 40.306782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245087, 41.028545, 40.140640>,  <44.458778, 40.983829, 40.040955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245087, 41.028545, 40.140640>,  <43.888939, 41.103073, 40.306782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245087, 41.028545, 40.140640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413481, 0.712695, 0.566657,
		0.190439, -0.676277, 0.711606,
		0.890374, -0.186322, -0.415353,
		44.512199, 40.972649, 40.016033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407974, 40.835773, 40.768791>,  <43.888939, 41.103073, 40.306782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407974, 40.835773, 40.768791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611076, 40.999985, 40.465832>,  <44.732937, 41.098511, 40.284058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611076, 40.999985, 40.465832>,  <44.407974, 40.835773, 40.768791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611076, 40.999985, 40.465832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394985, 0.670379, 0.628155,
		0.765620, -0.618109, 0.178234,
		0.507752, 0.410528, -0.757399,
		44.763401, 41.123142, 40.238613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149002, 40.791344, 40.751572>,  <44.407974, 40.835773, 40.768791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149002, 40.791344, 40.751572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037216, 41.130417, 40.571201>,  <44.970146, 41.333862, 40.462978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037216, 41.130417, 40.571201>,  <45.149002, 40.791344, 40.751572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037216, 41.130417, 40.571201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513246, 0.528794, 0.675985,
		0.811467, -0.042519, -0.582850,
		-0.279465, 0.847685, -0.450921,
		44.953377, 41.384724, 40.435925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.768520, 41.282745, 40.697514>,  <45.149002, 40.791344, 40.751572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.768520, 41.282745, 40.697514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426075, 41.487553, 40.725525>,  <45.220608, 41.610439, 40.742332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426075, 41.487553, 40.725525>,  <45.768520, 41.282745, 40.697514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426075, 41.487553, 40.725525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472928, 0.721605, 0.505593,
		0.208344, 0.465962, -0.859926,
		-0.856114, 0.512020, 0.070025,
		45.169239, 41.641159, 40.746532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786713, 41.993683, 40.472115>,  <45.768520, 41.282745, 40.697514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786713, 41.993683, 40.472115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480103, 41.995094, 40.728996>,  <45.296135, 41.995941, 40.883125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480103, 41.995094, 40.728996>,  <45.786713, 41.993683, 40.472115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480103, 41.995094, 40.728996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357157, 0.833420, 0.421724,
		-0.533734, 0.552629, -0.640101,
		-0.766529, 0.003528, 0.642200,
		45.250145, 41.996151, 40.921658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203060, 42.029465, 39.970856>,  <45.786713, 41.993683, 40.472115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203060, 42.029465, 39.970856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.539650, 41.817871, 40.014843>,  <45.741604, 41.690914, 40.041233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.539650, 41.817871, 40.014843>,  <45.203060, 42.029465, 39.970856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539650, 41.817871, 40.014843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527001, -0.848465, -0.048760,
		0.119095, -0.016922, -0.992739,
		0.841479, -0.528981, 0.109966,
		45.792095, 41.659176, 40.047832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180214, 41.638496, 39.428921>,  <45.203060, 42.029465, 39.970856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180214, 41.638496, 39.428921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411160, 41.500614, 39.724983>,  <45.549728, 41.417885, 39.902618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411160, 41.500614, 39.724983>,  <45.180214, 41.638496, 39.428921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.411160, 41.500614, 39.724983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578275, -0.812601, 0.072644,
		0.576408, -0.469954, -0.668503,
		0.577366, -0.344706, 0.740153,
		45.584370, 41.397202, 39.947029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505943, 41.051437, 39.290077>,  <45.180214, 41.638496, 39.428921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505943, 41.051437, 39.290077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413147, 41.068501, 39.678791>,  <45.357471, 41.078739, 39.912018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413147, 41.068501, 39.678791>,  <45.505943, 41.051437, 39.290077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413147, 41.068501, 39.678791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619210, -0.776949, -0.113712,
		0.750174, -0.628117, 0.206659,
		-0.231988, 0.042662, 0.971783,
		45.343552, 41.081299, 39.970325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637432, 40.468437, 39.589455>,  <45.505943, 41.051437, 39.290077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637432, 40.468437, 39.589455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295902, 40.611183, 39.741047>,  <45.090984, 40.696831, 39.832001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295902, 40.611183, 39.741047>,  <45.637432, 40.468437, 39.589455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295902, 40.611183, 39.741047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444578, -0.878625, -0.174264,
		0.270793, -0.317278, 0.908849,
		-0.853828, 0.356865, 0.378980,
		45.039753, 40.718243, 39.854740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379177, 39.976109, 40.043205>,  <45.637432, 40.468437, 39.589455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379177, 39.976109, 40.043205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066456, 40.205700, 39.945766>,  <44.878822, 40.343456, 39.887302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066456, 40.205700, 39.945766>,  <45.379177, 39.976109, 40.043205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066456, 40.205700, 39.945766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501494, -0.810972, -0.301376,
		-0.370532, -0.113454, 0.921865,
		-0.781799, 0.573979, -0.243595,
		44.831917, 40.377895, 39.872688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785343, 39.541023, 40.245686>,  <45.379177, 39.976109, 40.043205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785343, 39.541023, 40.245686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632748, 39.825928, 40.010010>,  <44.541191, 39.996872, 39.868603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632748, 39.825928, 40.010010>,  <44.785343, 39.541023, 40.245686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632748, 39.825928, 40.010010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670350, -0.652048, -0.354209,
		-0.636472, 0.259837, 0.726215,
		-0.381491, 0.712262, -0.589192,
		44.518299, 40.039608, 39.833252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003941, 39.373222, 40.244690>,  <44.785343, 39.541023, 40.245686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003941, 39.373222, 40.244690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063381, 39.647926, 39.960079>,  <44.099045, 39.812748, 39.789310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063381, 39.647926, 39.960079>,  <44.003941, 39.373222, 40.244690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063381, 39.647926, 39.960079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499057, -0.569092, -0.653511,
		-0.853732, 0.452209, 0.258163,
		0.148605, 0.686761, -0.711531,
		44.107964, 39.853954, 39.746620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389366, 39.639809, 39.953274>,  <44.003941, 39.373222, 40.244690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389366, 39.639809, 39.953274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642548, 39.669231, 39.645000>,  <43.794456, 39.686886, 39.460037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642548, 39.669231, 39.645000>,  <43.389366, 39.639809, 39.953274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642548, 39.669231, 39.645000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558347, -0.646218, -0.520242,
		-0.536301, 0.759600, -0.367953,
		0.632953, 0.073561, -0.770687,
		43.832432, 39.691299, 39.413795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018528, 39.654087, 39.430759>,  <43.389366, 39.639809, 39.953274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018528, 39.654087, 39.430759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363026, 39.534653, 39.266273>,  <43.569725, 39.462990, 39.167580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363026, 39.534653, 39.266273>,  <43.018528, 39.654087, 39.430759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363026, 39.534653, 39.266273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508172, -0.512344, -0.692289,
		-0.003974, 0.805201, -0.592989,
		0.861246, -0.298590, -0.411217,
		43.621399, 39.445076, 39.142910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952160, 39.812496, 38.748528>,  <43.018528, 39.654087, 39.430759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952160, 39.812496, 38.748528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212162, 39.511543, 38.791271>,  <43.368164, 39.330971, 38.816917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212162, 39.511543, 38.791271>,  <42.952160, 39.812496, 38.748528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212162, 39.511543, 38.791271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516529, -0.540555, -0.664077,
		0.557401, 0.376457, -0.739989,
		0.650001, -0.752383, 0.106855,
		43.407162, 39.285828, 38.823326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210621, 39.578671, 38.055447>,  <42.952160, 39.812496, 38.748528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210621, 39.578671, 38.055447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218464, 39.268562, 38.307980>,  <43.223171, 39.082497, 38.459499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218464, 39.268562, 38.307980>,  <43.210621, 39.578671, 38.055447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218464, 39.268562, 38.307980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533136, -0.542293, -0.649372,
		0.845803, -0.323852, -0.423955,
		0.019608, -0.775266, 0.631330,
		43.224346, 39.035984, 38.497379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577309, 38.807316, 37.849968>,  <43.210621, 39.578671, 38.055447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577309, 38.807316, 37.849968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233700, 38.825588, 38.053925>,  <43.027534, 38.836552, 38.176296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233700, 38.825588, 38.053925>,  <43.577309, 38.807316, 37.849968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233700, 38.825588, 38.053925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476955, -0.433256, -0.764724,
		0.185978, -0.900112, 0.393967,
		-0.859026, 0.045683, 0.509889,
		42.975990, 38.839294, 38.206890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209347, 38.455505, 37.831444>,  <43.577309, 38.807316, 37.849968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209347, 38.455505, 37.831444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918404, 38.395596, 38.099331>,  <43.743839, 38.359650, 38.260063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918404, 38.395596, 38.099331>,  <44.209347, 38.455505, 37.831444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918404, 38.395596, 38.099331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198629, -0.888177, -0.414353,
		0.656888, -0.434408, 0.616270,
		-0.727355, -0.149774, 0.669718,
		43.700195, 38.350662, 38.300247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229538, 37.745876, 37.855423>,  <44.209347, 38.455505, 37.831444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229538, 37.745876, 37.855423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884151, 37.819370, 38.043327>,  <43.676922, 37.863468, 38.156071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884151, 37.819370, 38.043327>,  <44.229538, 37.745876, 37.855423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884151, 37.819370, 38.043327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387909, -0.837175, -0.385569,
		0.322428, -0.515148, 0.794143,
		-0.863462, 0.183737, 0.469760,
		43.625114, 37.874493, 38.184254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016842, 37.057110, 38.231606>,  <44.229538, 37.745876, 37.855423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016842, 37.057110, 38.231606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687737, 37.283154, 38.207218>,  <43.490273, 37.418781, 38.192585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687737, 37.283154, 38.207218>,  <44.016842, 37.057110, 38.231606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687737, 37.283154, 38.207218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546564, -0.816041, -0.188004,
		-0.155999, -0.121356, 0.980274,
		-0.822759, 0.565111, -0.060973,
		43.440910, 37.452686, 38.188927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442524, 36.714275, 38.717739>,  <44.016842, 37.057110, 38.231606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442524, 36.714275, 38.717739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262436, 36.950237, 38.449615>,  <43.154385, 37.091816, 38.288742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262436, 36.950237, 38.449615>,  <43.442524, 36.714275, 38.717739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262436, 36.950237, 38.449615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635476, -0.739042, -0.223578,
		-0.627276, 0.325306, 0.707602,
		-0.450217, 0.589909, -0.670308,
		43.127373, 37.127209, 38.248524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757664, 36.728642, 38.896259>,  <43.442524, 36.714275, 38.717739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757664, 36.728642, 38.896259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766441, 36.846832, 38.514221>,  <42.771706, 36.917747, 38.284996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766441, 36.846832, 38.514221>,  <42.757664, 36.728642, 38.896259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766441, 36.846832, 38.514221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685582, -0.690881, -0.229483,
		-0.727665, 0.659834, 0.187411,
		0.021942, 0.295473, -0.955099,
		42.773026, 36.935474, 38.227692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068851, 37.014690, 38.697338>,  <42.757664, 36.728642, 38.896259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068851, 37.014690, 38.697338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255219, 36.898922, 38.362873>,  <42.367039, 36.829460, 38.162193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255219, 36.898922, 38.362873>,  <42.068851, 37.014690, 38.697338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255219, 36.898922, 38.362873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757653, -0.618609, -0.208052,
		-0.457041, 0.730452, -0.507498,
		0.465914, -0.289419, -0.836159,
		42.394993, 36.812096, 38.112026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530991, 36.922867, 38.225880>,  <42.068851, 37.014690, 38.697338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530991, 36.922867, 38.225880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856953, 36.764790, 38.056293>,  <42.052532, 36.669945, 37.954540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856953, 36.764790, 38.056293>,  <41.530991, 36.922867, 38.225880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856953, 36.764790, 38.056293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532974, -0.798375, -0.280244,
		-0.227736, 0.454338, -0.861228,
		0.814908, -0.395190, -0.423969,
		42.101425, 36.646233, 37.929104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235050, 36.566269, 37.672806>,  <41.530991, 36.922867, 38.225880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235050, 36.566269, 37.672806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606777, 36.423740, 37.711601>,  <41.829811, 36.338223, 37.734879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606777, 36.423740, 37.711601>,  <41.235050, 36.566269, 37.672806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606777, 36.423740, 37.711601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285117, -0.859220, -0.424793,
		0.234696, 0.367115, -0.900080,
		0.929315, -0.356326, 0.096985,
		41.885571, 36.316841, 37.740696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362064, 36.397633, 36.989391>,  <41.235050, 36.566269, 37.672806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362064, 36.397633, 36.989391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586662, 36.181526, 37.240101>,  <41.721420, 36.051865, 37.390526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586662, 36.181526, 37.240101>,  <41.362064, 36.397633, 36.989391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586662, 36.181526, 37.240101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376544, -0.841299, -0.387855,
		0.736847, -0.018230, -0.675814,
		0.561491, -0.540263, 0.626773,
		41.755108, 36.019447, 37.428131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613354, 35.867519, 36.550774>,  <41.362064, 36.397633, 36.989391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613354, 35.867519, 36.550774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625149, 35.732418, 36.927082>,  <41.632225, 35.651356, 37.152866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625149, 35.732418, 36.927082>,  <41.613354, 35.867519, 36.550774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625149, 35.732418, 36.927082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380995, -0.873929, -0.301813,
		0.924107, -0.349530, -0.154453,
		0.029488, -0.337754, 0.940772,
		41.633995, 35.631092, 37.209312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845863, 35.148151, 36.470741>,  <41.613354, 35.867519, 36.550774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845863, 35.148151, 36.470741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641598, 35.178989, 36.813267>,  <41.519039, 35.197495, 37.018784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641598, 35.178989, 36.813267>,  <41.845863, 35.148151, 36.470741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641598, 35.178989, 36.813267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447216, -0.874452, -0.187967,
		0.734317, -0.478946, 0.481030,
		-0.510664, 0.077097, 0.856317,
		41.488400, 35.202118, 37.070164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833679, 34.460690, 36.702698>,  <41.845863, 35.148151, 36.470741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833679, 34.460690, 36.702698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541637, 34.674938, 36.872429>,  <41.366413, 34.803490, 36.974266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541637, 34.674938, 36.872429>,  <41.833679, 34.460690, 36.702698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541637, 34.674938, 36.872429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623696, -0.776049, -0.093545,
		0.279193, -0.332948, 0.900665,
		-0.730106, 0.535624, 0.424326,
		41.322605, 34.835625, 36.999725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336632, 33.968418, 37.138344>,  <41.833679, 34.460690, 36.702698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336632, 33.968418, 37.138344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309834, 34.067265, 37.525009>,  <41.293755, 34.126572, 37.757008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309834, 34.067265, 37.525009>,  <41.336632, 33.968418, 37.138344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309834, 34.067265, 37.525009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983366, -0.180290, -0.022061,
		0.168829, -0.952066, 0.255082,
		-0.066992, 0.247114, 0.966667,
		41.289738, 34.141399, 37.815010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725719, 33.703667, 37.008801>,  <41.336632, 33.968418, 37.138344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725719, 33.703667, 37.008801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937637, 34.030777, 36.918850>,  <41.064789, 34.227043, 36.864880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937637, 34.030777, 36.918850>,  <40.725719, 33.703667, 37.008801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937637, 34.030777, 36.918850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338673, -0.447073, -0.827905,
		-0.777575, 0.362455, -0.513812,
		0.529790, 0.817772, -0.224879,
		41.096573, 34.276108, 36.851387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664608, 33.653015, 36.296276>,  <40.725719, 33.703667, 37.008801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664608, 33.653015, 36.296276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986916, 33.871334, 36.388222>,  <41.180302, 34.002327, 36.443390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986916, 33.871334, 36.388222>,  <40.664608, 33.653015, 36.296276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986916, 33.871334, 36.388222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488402, -0.392887, -0.779168,
		-0.334960, 0.740096, -0.583146,
		0.805770, 0.545800, 0.229864,
		41.228645, 34.035072, 36.457180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936634, 33.953911, 35.715408>,  <40.664608, 33.653015, 36.296276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936634, 33.953911, 35.715408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240074, 33.929085, 35.974846>,  <41.422138, 33.914188, 36.130508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240074, 33.929085, 35.974846>,  <40.936634, 33.953911, 35.715408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240074, 33.929085, 35.974846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614524, -0.262671, -0.743885,
		0.216534, 0.962888, -0.161123,
		0.758600, -0.062062, 0.648594,
		41.467655, 33.910465, 36.169426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437675, 34.125374, 35.245495>,  <40.936634, 33.953911, 35.715408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437675, 34.125374, 35.245495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526348, 34.487190, 35.099804>,  <41.579552, 34.704281, 35.012390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526348, 34.487190, 35.099804>,  <41.437675, 34.125374, 35.245495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526348, 34.487190, 35.099804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948463, -0.113274, 0.295951,
		0.226442, -0.411066, -0.883034,
		0.221680, 0.904541, -0.364231,
		41.592854, 34.758553, 34.990536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992882, 33.947857, 34.963017>,  <41.437675, 34.125374, 35.245495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992882, 33.947857, 34.963017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991302, 34.346745, 34.992809>,  <41.990353, 34.586075, 35.010685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991302, 34.346745, 34.992809>,  <41.992882, 33.947857, 34.963017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991302, 34.346745, 34.992809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997659, -0.001154, 0.068379,
		0.068274, 0.074578, -0.994875,
		-0.003952, 0.997215, 0.074482,
		41.990116, 34.645908, 35.015152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389854, 34.217491, 34.351105>,  <41.992882, 33.947857, 34.963017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389854, 34.217491, 34.351105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416233, 34.446068, 34.678299>,  <42.432060, 34.583214, 34.874615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416233, 34.446068, 34.678299>,  <42.389854, 34.217491, 34.351105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416233, 34.446068, 34.678299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984656, 0.095465, -0.146079,
		-0.161565, 0.815071, -0.556378,
		0.065950, 0.571442, 0.817988,
		42.436020, 34.617500, 34.923695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723259, 34.837208, 34.201279>,  <42.389854, 34.217491, 34.351105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723259, 34.837208, 34.201279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778172, 34.797806, 34.595528>,  <42.811119, 34.774162, 34.832077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778172, 34.797806, 34.595528>,  <42.723259, 34.837208, 34.201279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778172, 34.797806, 34.595528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911814, 0.401304, -0.086895,
		-0.386974, 0.910632, 0.144914,
		0.137284, -0.098508, 0.985621,
		42.819355, 34.768253, 34.891212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081783, 35.484077, 34.478073>,  <42.723259, 34.837208, 34.201279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081783, 35.484077, 34.478073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139904, 35.149040, 34.688721>,  <43.174778, 34.948017, 34.815109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139904, 35.149040, 34.688721>,  <43.081783, 35.484077, 34.478073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139904, 35.149040, 34.688721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977956, 0.040912, -0.204766,
		0.149964, 0.544767, 0.825070,
		0.145305, -0.837589, 0.526622,
		43.183495, 34.897762, 34.846706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596481, 35.594700, 35.050808>,  <43.081783, 35.484077, 34.478073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596481, 35.594700, 35.050808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.573044, 35.230301, 34.887520>,  <43.558979, 35.011662, 34.789547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.573044, 35.230301, 34.887520>,  <43.596481, 35.594700, 35.050808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573044, 35.230301, 34.887520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992339, -0.008602, -0.123245,
		0.108765, -0.412313, 0.904527,
		-0.058596, -0.911002, -0.408219,
		43.555466, 34.957001, 34.765053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977459, 35.126984, 35.500984>,  <43.596481, 35.594700, 35.050808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977459, 35.126984, 35.500984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007374, 35.037811, 35.112198>,  <44.025322, 34.984310, 34.878925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007374, 35.037811, 35.112198>,  <43.977459, 35.126984, 35.500984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007374, 35.037811, 35.112198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980003, 0.196661, 0.030299,
		0.184393, -0.954792, 0.233176,
		0.074786, -0.222926, -0.971962,
		44.029808, 34.970932, 34.820610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514595, 34.621586, 35.408371>,  <43.977459, 35.126984, 35.500984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514595, 34.621586, 35.408371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486603, 34.836002, 35.071857>,  <44.469807, 34.964653, 34.869949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486603, 34.836002, 35.071857>,  <44.514595, 34.621586, 35.408371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486603, 34.836002, 35.071857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990700, 0.135995, 0.004247,
		0.116687, -0.833164, -0.540576,
		-0.069977, 0.536044, -0.841285,
		44.465611, 34.996815, 34.819473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912991, 34.363918, 34.788120>,  <44.514595, 34.621586, 35.408371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912991, 34.363918, 34.788120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865471, 34.749115, 34.691341>,  <44.836960, 34.980232, 34.633274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865471, 34.749115, 34.691341>,  <44.912991, 34.363918, 34.788120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865471, 34.749115, 34.691341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992044, 0.104901, -0.069604,
		-0.041648, -0.248288, -0.967791,
		-0.118804, 0.962990, -0.241943,
		44.829830, 35.038013, 34.618759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288857, 34.614559, 34.210209>,  <44.912991, 34.363918, 34.788120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288857, 34.614559, 34.210209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252541, 34.918884, 34.467247>,  <45.230751, 35.101479, 34.621468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252541, 34.918884, 34.467247>,  <45.288857, 34.614559, 34.210209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252541, 34.918884, 34.467247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979734, 0.183920, -0.079338,
		-0.178547, 0.622366, -0.762090,
		-0.090787, 0.760811, 0.642592,
		45.225304, 35.147129, 34.660023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417095, 35.336918, 33.960190>,  <45.288857, 34.614559, 34.210209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417095, 35.336918, 33.960190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518280, 35.303200, 34.345707>,  <45.578991, 35.282967, 34.577019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518280, 35.303200, 34.345707>,  <45.417095, 35.336918, 33.960190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518280, 35.303200, 34.345707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943407, 0.242321, -0.226416,
		-0.214461, 0.966527, 0.140827,
		0.252963, -0.084299, 0.963796,
		45.594170, 35.277908, 34.634846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.812717, 36.059738, 34.193459>,  <45.417095, 35.336918, 33.960190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.812717, 36.059738, 34.193459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895962, 35.702271, 34.352482>,  <45.945908, 35.487789, 34.447895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895962, 35.702271, 34.352482>,  <45.812717, 36.059738, 34.193459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895962, 35.702271, 34.352482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950253, 0.088426, -0.298664,
		0.231752, 0.439932, 0.867612,
		0.208112, -0.893667, 0.397554,
		45.958397, 35.434170, 34.471748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374943, 36.211754, 34.523895>,  <45.812717, 36.059738, 34.193459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374943, 36.211754, 34.523895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368584, 35.817753, 34.455177>,  <46.364769, 35.581352, 34.413948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368584, 35.817753, 34.455177>,  <46.374943, 36.211754, 34.523895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368584, 35.817753, 34.455177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863504, 0.073093, -0.499017,
		0.504091, -0.156278, 0.849394,
		-0.015901, -0.985005, -0.171792,
		46.363815, 35.522251, 34.403641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.094765, 35.896542, 34.843571>,  <46.374943, 36.211754, 34.523895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.094765, 35.896542, 34.843571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895855, 35.741554, 34.533066>,  <46.776508, 35.648563, 34.346764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895855, 35.741554, 34.533066>,  <47.094765, 35.896542, 34.843571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895855, 35.741554, 34.533066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810842, 0.110738, -0.574694,
		0.308638, -0.915208, 0.259109,
		-0.497271, -0.387468, -0.776267,
		46.746674, 35.625313, 34.300186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.506203, 35.428474, 34.547314>,  <47.094765, 35.896542, 34.843571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.506203, 35.428474, 34.547314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261070, 35.526970, 34.246967>,  <47.113991, 35.586067, 34.066757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261070, 35.526970, 34.246967>,  <47.506203, 35.428474, 34.547314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.261070, 35.526970, 34.246967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788605, 0.251189, -0.561254,
		0.050405, -0.936092, -0.348125,
		-0.612831, 0.246243, -0.750868,
		47.077221, 35.600842, 34.021706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.864685, 35.270142, 35.147892>,  <47.506203, 35.428474, 34.547314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.864685, 35.270142, 35.147892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721039, 34.925907, 35.003437>,  <47.634850, 34.719364, 34.916763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721039, 34.925907, 35.003437>,  <47.864685, 35.270142, 35.147892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.721039, 34.925907, 35.003437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890021, -0.199328, -0.410038,
		0.280888, -0.468674, 0.837524,
		-0.359116, -0.860589, -0.361141,
		47.613304, 34.667732, 34.895096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.076366, 35.269585, 28.025019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.691914, 35.359074, 27.960310>,  <38.461243, 35.412769, 27.921484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.691914, 35.359074, 27.960310>,  <39.076366, 35.269585, 28.025019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691914, 35.359074, 27.960310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249931, -0.456128, 0.854097,
		0.117295, 0.861332, 0.494316,
		-0.961133, 0.223727, -0.161772,
		38.403572, 35.426193, 27.911777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843410, 35.498627, 28.741100>,  <39.076366, 35.269585, 28.025019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843410, 35.498627, 28.741100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.532860, 35.383167, 28.516989>,  <38.346527, 35.313892, 28.382521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.532860, 35.383167, 28.516989>,  <38.843410, 35.498627, 28.741100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532860, 35.383167, 28.516989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470120, -0.326868, 0.819844,
		-0.419785, 0.899910, 0.118074,
		-0.776381, -0.288650, -0.560280,
		38.299946, 35.296574, 28.348906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267162, 35.706688, 29.069174>,  <38.843410, 35.498627, 28.741100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267162, 35.706688, 29.069174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102913, 35.438564, 28.821926>,  <38.004364, 35.277691, 28.673578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102913, 35.438564, 28.821926>,  <38.267162, 35.706688, 29.069174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102913, 35.438564, 28.821926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559530, -0.350015, 0.751276,
		-0.719939, 0.654349, -0.231334,
		-0.410626, -0.670311, -0.618117,
		37.979725, 35.237473, 28.636492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526260, 35.735252, 29.350746>,  <38.267162, 35.706688, 29.069174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526260, 35.735252, 29.350746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.632217, 35.405148, 29.151239>,  <37.695789, 35.207085, 29.031534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.632217, 35.405148, 29.151239>,  <37.526260, 35.735252, 29.350746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632217, 35.405148, 29.151239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422361, -0.564286, 0.709361,
		-0.866859, 0.022758, -0.498033,
		0.264889, -0.825266, -0.498769,
		37.711685, 35.157566, 29.001608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897846, 35.311634, 29.236292>,  <37.526260, 35.735252, 29.350746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897846, 35.311634, 29.236292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197693, 35.053883, 29.175812>,  <37.377602, 34.899231, 29.139524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197693, 35.053883, 29.175812>,  <36.897846, 35.311634, 29.236292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197693, 35.053883, 29.175812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381936, -0.607696, 0.696297,
		-0.540559, -0.464206, -0.701647,
		0.749614, -0.644374, -0.151198,
		37.422577, 34.860569, 29.130451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567787, 34.629494, 29.286825>,  <36.897846, 35.311634, 29.236292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567787, 34.629494, 29.286825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.958797, 34.578876, 29.354280>,  <37.193401, 34.548508, 29.394754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.958797, 34.578876, 29.354280>,  <36.567787, 34.629494, 29.286825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958797, 34.578876, 29.354280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210823, -0.577749, 0.788517,
		-0.002350, -0.806346, -0.591440,
		0.977522, -0.126542, 0.168638,
		37.252052, 34.540913, 29.404871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680565, 33.972256, 29.270300>,  <36.567787, 34.629494, 29.286825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680565, 33.972256, 29.270300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.977001, 34.088238, 29.512526>,  <37.154865, 34.157825, 29.657860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.977001, 34.088238, 29.512526>,  <36.680565, 33.972256, 29.270300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977001, 34.088238, 29.512526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275940, -0.690704, 0.668420,
		0.612077, -0.662460, -0.431866,
		0.741093, 0.289956, 0.605563,
		37.199329, 34.175224, 29.694195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902699, 33.371368, 29.537340>,  <36.680565, 33.972256, 29.270300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902699, 33.371368, 29.537340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071957, 33.629868, 29.791368>,  <37.173512, 33.784966, 29.943785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071957, 33.629868, 29.791368>,  <36.902699, 33.371368, 29.537340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071957, 33.629868, 29.791368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043151, -0.685745, 0.726562,
		0.905032, -0.334847, -0.262287,
		0.423149, 0.646244, 0.635070,
		37.198902, 33.823742, 29.981890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376862, 33.035091, 29.821442>,  <36.902699, 33.371368, 29.537340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376862, 33.035091, 29.821442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.296547, 33.318737, 30.091801>,  <37.248360, 33.488926, 30.254017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.296547, 33.318737, 30.091801>,  <37.376862, 33.035091, 29.821442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296547, 33.318737, 30.091801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059685, -0.679811, 0.730955,
		0.977816, 0.187104, 0.094171,
		-0.200783, 0.709119, 0.675897,
		37.236313, 33.531471, 30.294569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755863, 32.904953, 30.455544>,  <37.376862, 33.035091, 29.821442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755863, 32.904953, 30.455544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.480412, 33.170452, 30.572313>,  <37.315140, 33.329754, 30.642376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.480412, 33.170452, 30.572313>,  <37.755863, 32.904953, 30.455544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480412, 33.170452, 30.572313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117155, -0.499152, 0.858558,
		0.715583, 0.557031, 0.421494,
		-0.688633, 0.663749, 0.291926,
		37.273823, 33.369576, 30.659891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991447, 32.897991, 31.078957>,  <37.755863, 32.904953, 30.455544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991447, 32.897991, 31.078957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.615231, 33.031986, 31.056494>,  <37.389500, 33.112385, 31.043016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.615231, 33.031986, 31.056494>,  <37.991447, 32.897991, 31.078957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615231, 33.031986, 31.056494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217676, -0.467541, 0.856751,
		0.260749, 0.818038, 0.512663,
		-0.940546, 0.334991, -0.056156,
		37.333065, 33.132484, 31.039646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811451, 33.390949, 31.726988>,  <37.991447, 32.897991, 31.078957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811451, 33.390949, 31.726988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476658, 33.240929, 31.567591>,  <37.275780, 33.150917, 31.471952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476658, 33.240929, 31.567591>,  <37.811451, 33.390949, 31.726988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476658, 33.240929, 31.567591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218849, -0.438021, 0.871919,
		-0.501559, 0.816993, 0.284538,
		-0.836985, -0.375048, -0.398491,
		37.225563, 33.128414, 31.448044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306095, 33.533096, 32.200939>,  <37.811451, 33.390949, 31.726988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306095, 33.533096, 32.200939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147579, 33.248894, 31.968342>,  <37.052471, 33.078373, 31.828783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147579, 33.248894, 31.968342>,  <37.306095, 33.533096, 32.200939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147579, 33.248894, 31.968342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298006, -0.499517, 0.813434,
		-0.868418, 0.495641, -0.013784,
		-0.396286, -0.710509, -0.581494,
		37.028694, 33.035740, 31.793894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741241, 33.378853, 32.625149>,  <37.306095, 33.533096, 32.200939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741241, 33.378853, 32.625149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757732, 33.070637, 32.370728>,  <36.767628, 32.885708, 32.218075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.757732, 33.070637, 32.370728>,  <36.741241, 33.378853, 32.625149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757732, 33.070637, 32.370728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298426, -0.617034, 0.728156,
		-0.953542, 0.159798, -0.255386,
		0.041224, -0.770541, -0.636056,
		36.770100, 32.839474, 32.179913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102036, 33.130314, 32.569782>,  <36.741241, 33.378853, 32.625149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102036, 33.130314, 32.569782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.362572, 32.836174, 32.494938>,  <36.518894, 32.659691, 32.450031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.362572, 32.836174, 32.494938>,  <36.102036, 33.130314, 32.569782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362572, 32.836174, 32.494938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405724, -0.545895, 0.733066,
		-0.641205, -0.401562, -0.653915,
		0.651340, -0.735354, -0.187107,
		36.557976, 32.615566, 32.438805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729214, 32.642834, 32.689392>,  <36.102036, 33.130314, 32.569782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729214, 32.642834, 32.689392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100468, 32.494392, 32.700981>,  <36.323219, 32.405327, 32.707935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100468, 32.494392, 32.700981>,  <35.729214, 32.642834, 32.689392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100468, 32.494392, 32.700981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237165, -0.529579, 0.814432,
		-0.286896, -0.762777, -0.579536,
		0.928140, -0.371103, 0.028969,
		36.378910, 32.383060, 32.709671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595371, 31.938107, 32.801399>,  <35.729214, 32.642834, 32.689392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595371, 31.938107, 32.801399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967022, 32.027370, 32.919327>,  <36.190014, 32.080929, 32.990082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967022, 32.027370, 32.919327>,  <35.595371, 31.938107, 32.801399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967022, 32.027370, 32.919327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164617, -0.464294, 0.870249,
		0.331085, -0.857107, -0.394654,
		0.929131, 0.223159, 0.294815,
		36.245762, 32.094318, 33.007771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839725, 31.387766, 33.195873>,  <35.595371, 31.938107, 32.801399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839725, 31.387766, 33.195873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124645, 31.652571, 33.289139>,  <36.295597, 31.811453, 33.345100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124645, 31.652571, 33.289139>,  <35.839725, 31.387766, 33.195873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124645, 31.652571, 33.289139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038407, -0.368473, 0.928845,
		0.700822, -0.652662, -0.287890,
		0.712301, 0.662012, 0.233168,
		36.338337, 31.851173, 33.359089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305405, 30.928463, 33.539062>,  <35.839725, 31.387766, 33.195873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305405, 30.928463, 33.539062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.404972, 31.302341, 33.640553>,  <36.464714, 31.526669, 33.701447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.404972, 31.302341, 33.640553>,  <36.305405, 30.928463, 33.539062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404972, 31.302341, 33.640553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177267, -0.301517, 0.936837,
		0.952163, -0.188221, -0.240745,
		0.248921, 0.934698, 0.253728,
		36.479649, 31.582750, 33.716671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046379, 30.923075, 33.891228>,  <36.305405, 30.928463, 33.539062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046379, 30.923075, 33.891228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808167, 31.225124, 34.000870>,  <36.665241, 31.406355, 34.066654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808167, 31.225124, 34.000870>,  <37.046379, 30.923075, 33.891228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808167, 31.225124, 34.000870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174645, -0.211350, 0.961681,
		0.784122, 0.620578, -0.006015,
		-0.595527, 0.755125, 0.274105,
		36.629509, 31.451662, 34.083099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349846, 31.190960, 34.511024>,  <37.046379, 30.923075, 33.891228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349846, 31.190960, 34.511024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.981747, 31.343073, 34.547962>,  <36.760887, 31.434341, 34.570126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.981747, 31.343073, 34.547962>,  <37.349846, 31.190960, 34.511024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981747, 31.343073, 34.547962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038794, -0.146164, 0.988499,
		0.389407, 0.913247, 0.119755,
		-0.920248, 0.380283, 0.092346,
		36.705673, 31.457157, 34.575665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930073, 31.469088, 34.957542>,  <37.349846, 31.190960, 34.511024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930073, 31.469088, 34.957542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144138, 31.716898, 35.187248>,  <38.272579, 31.865583, 35.325073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144138, 31.716898, 35.187248>,  <37.930073, 31.469088, 34.957542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144138, 31.716898, 35.187248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488229, 0.327931, -0.808761,
		-0.689369, 0.713196, -0.126973,
		0.535167, 0.619526, 0.574268,
		38.304688, 31.902756, 35.359528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037968, 32.138523, 34.601780>,  <37.930073, 31.469088, 34.957542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037968, 32.138523, 34.601780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317547, 32.119297, 34.887203>,  <38.485294, 32.107761, 35.058456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317547, 32.119297, 34.887203>,  <38.037968, 32.138523, 34.601780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317547, 32.119297, 34.887203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687076, 0.322050, -0.651314,
		-0.198495, 0.945502, 0.258121,
		0.698946, -0.048066, 0.713557,
		38.527229, 32.104877, 35.101269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285652, 32.749832, 34.628090>,  <38.037968, 32.138523, 34.601780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285652, 32.749832, 34.628090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582207, 32.561832, 34.819695>,  <38.760139, 32.449032, 34.934658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582207, 32.561832, 34.819695>,  <38.285652, 32.749832, 34.628090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582207, 32.561832, 34.819695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667050, 0.438009, -0.602655,
		0.073439, 0.766321, 0.638247,
		0.741385, -0.470001, 0.479007,
		38.804623, 32.420834, 34.963398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821583, 33.272144, 34.874271>,  <38.285652, 32.749832, 34.628090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821583, 33.272144, 34.874271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.988163, 32.909611, 34.845627>,  <39.088112, 32.692089, 34.828442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.988163, 32.909611, 34.845627>,  <38.821583, 33.272144, 34.874271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988163, 32.909611, 34.845627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770488, 0.393647, -0.501389,
		0.482616, 0.153627, 0.862253,
		0.416450, -0.906334, -0.071612,
		39.113098, 32.637711, 34.824142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560238, 33.473953, 34.794140>,  <38.821583, 33.272144, 34.874271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560238, 33.473953, 34.794140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520500, 33.089012, 34.692936>,  <39.496658, 32.858047, 34.632214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.520500, 33.089012, 34.692936>,  <39.560238, 33.473953, 34.794140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520500, 33.089012, 34.692936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777993, 0.083405, -0.622712,
		0.620369, -0.258704, 0.740415,
		-0.099344, -0.962349, -0.253011,
		39.490696, 32.800308, 34.617031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303474, 33.151836, 34.839474>,  <39.560238, 33.473953, 34.794140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303474, 33.151836, 34.839474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.057213, 32.962666, 34.587341>,  <39.909458, 32.849163, 34.436062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.057213, 32.962666, 34.587341>,  <40.303474, 33.151836, 34.839474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057213, 32.962666, 34.587341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725543, -0.028048, -0.687605,
		0.307510, -0.880653, 0.360399,
		-0.615650, -0.472931, -0.630327,
		39.872517, 32.820786, 34.398243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752705, 32.658585, 34.465691>,  <40.303474, 33.151836, 34.839474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752705, 32.658585, 34.465691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.426666, 32.658241, 34.233959>,  <40.231045, 32.658035, 34.094921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.426666, 32.658241, 34.233959>,  <40.752705, 32.658585, 34.465691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426666, 32.658241, 34.233959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579300, 0.008642, -0.815069,
		0.005642, -0.999962, -0.006592,
		-0.815095, -0.000780, -0.579327,
		40.182137, 32.657986, 34.060162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932976, 32.110825, 33.916122>,  <40.752705, 32.658585, 34.465691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932976, 32.110825, 33.916122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.640015, 32.319195, 33.740749>,  <40.464237, 32.444218, 33.635525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.640015, 32.319195, 33.740749>,  <40.932976, 32.110825, 33.916122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640015, 32.319195, 33.740749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551407, 0.076061, -0.830762,
		-0.399417, -0.850207, -0.342949,
		-0.732405, 0.520925, -0.438430,
		40.420292, 32.475471, 33.609219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008835, 31.882650, 33.182194>,  <40.932976, 32.110825, 33.916122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008835, 31.882650, 33.182194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.794716, 32.220505, 33.179543>,  <40.666245, 32.423218, 33.177952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.794716, 32.220505, 33.179543>,  <41.008835, 31.882650, 33.182194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794716, 32.220505, 33.179543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394174, 0.242855, -0.886368,
		-0.747047, -0.477088, -0.462934,
		-0.535302, 0.844635, -0.006632,
		40.634125, 32.473896, 33.177551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628876, 31.936922, 32.526489>,  <41.008835, 31.882650, 33.182194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628876, 31.936922, 32.526489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.680473, 32.304859, 32.674679>,  <40.711433, 32.525620, 32.763592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.680473, 32.304859, 32.674679>,  <40.628876, 31.936922, 32.526489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680473, 32.304859, 32.674679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155430, 0.350222, -0.923681,
		-0.979388, 0.176736, -0.097793,
		0.128998, 0.919842, 0.370473,
		40.719173, 32.580811, 32.785820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239185, 32.398037, 32.078663>,  <40.628876, 31.936922, 32.526489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239185, 32.398037, 32.078663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.496204, 32.652042, 32.250191>,  <40.650417, 32.804447, 32.353107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.496204, 32.652042, 32.250191>,  <40.239185, 32.398037, 32.078663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496204, 32.652042, 32.250191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085075, 0.497054, -0.863539,
		-0.761509, 0.591346, 0.265356,
		0.642546, 0.635018, 0.428820,
		40.688969, 32.842548, 32.378838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982147, 33.085068, 31.900679>,  <40.239185, 32.398037, 32.078663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982147, 33.085068, 31.900679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.372036, 33.123016, 31.981583>,  <40.605968, 33.145786, 32.030125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.372036, 33.123016, 31.981583>,  <39.982147, 33.085068, 31.900679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372036, 33.123016, 31.981583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145320, 0.418382, -0.896570,
		-0.169677, 0.903303, 0.394022,
		0.974727, 0.094868, 0.202258,
		40.664455, 33.151478, 32.042259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056519, 33.724308, 31.772909>,  <39.982147, 33.085068, 31.900679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056519, 33.724308, 31.772909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.434586, 33.593685, 31.774454>,  <40.661427, 33.515312, 31.775381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.434586, 33.593685, 31.774454>,  <40.056519, 33.724308, 31.772909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434586, 33.593685, 31.774454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153166, 0.432812, -0.888377,
		0.288431, 0.840260, 0.459098,
		0.945171, -0.326554, 0.003863,
		40.718136, 33.495720, 31.775614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487709, 34.292625, 31.576252>,  <40.056519, 33.724308, 31.772909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487709, 34.292625, 31.576252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.712925, 33.968475, 31.511408>,  <40.848053, 33.773983, 31.472502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.712925, 33.968475, 31.511408>,  <40.487709, 34.292625, 31.576252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712925, 33.968475, 31.511408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335044, 0.403138, -0.851601,
		0.755471, 0.425169, 0.498493,
		0.563036, -0.810377, -0.162109,
		40.881836, 33.725361, 31.462774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281246, 34.469803, 31.410847>,  <40.487709, 34.292625, 31.576252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281246, 34.469803, 31.410847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.227531, 34.104198, 31.257715>,  <41.195301, 33.884838, 31.165836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.227531, 34.104198, 31.257715>,  <41.281246, 34.469803, 31.410847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227531, 34.104198, 31.257715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309832, 0.328232, -0.892338,
		0.941260, -0.238445, 0.239110,
		-0.134290, -0.914006, -0.382830,
		41.187244, 33.829998, 31.142866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855953, 34.284172, 30.846817>,  <41.281246, 34.469803, 31.410847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855953, 34.284172, 30.846817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.548538, 34.045139, 30.755384>,  <41.364090, 33.901718, 30.700525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.548538, 34.045139, 30.755384>,  <41.855953, 34.284172, 30.846817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548538, 34.045139, 30.755384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033936, 0.318689, -0.947252,
		0.638906, -0.735754, -0.224645,
		-0.768536, -0.597581, -0.228581,
		41.317978, 33.865864, 30.686810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123943, 33.855831, 30.336355>,  <41.855953, 34.284172, 30.846817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123943, 33.855831, 30.336355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.725250, 33.877666, 30.312550>,  <41.486034, 33.890766, 30.298265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.725250, 33.877666, 30.312550>,  <42.123943, 33.855831, 30.336355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725250, 33.877666, 30.312550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074005, 0.322345, -0.943725,
		-0.032332, -0.945047, -0.325332,
		-0.996734, 0.054589, -0.059517,
		41.426231, 33.894043, 30.294695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024231, 33.577908, 29.617329>,  <42.123943, 33.855831, 30.336355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024231, 33.577908, 29.617329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.677143, 33.749523, 29.717722>,  <41.468891, 33.852493, 29.777958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.677143, 33.749523, 29.717722>,  <42.024231, 33.577908, 29.617329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677143, 33.749523, 29.717722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145040, 0.264415, -0.953440,
		-0.475426, -0.863719, -0.167210,
		-0.867718, 0.429038, 0.250984,
		41.416828, 33.878235, 29.793016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572643, 33.480679, 29.042379>,  <42.024231, 33.577908, 29.617329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572643, 33.480679, 29.042379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.418209, 33.788322, 29.246111>,  <41.325550, 33.972908, 29.368351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.418209, 33.788322, 29.246111>,  <41.572643, 33.480679, 29.042379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418209, 33.788322, 29.246111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164383, 0.485941, -0.858393,
		-0.907699, -0.415137, -0.061186,
		-0.386084, 0.769105, 0.509330,
		41.302383, 34.019054, 29.398911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.458157, 33.784096, 28.598104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.650394, 34.032818, 28.845451>,  <40.765739, 34.182053, 28.993860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.650394, 34.032818, 28.845451>,  <40.458157, 33.784096, 28.598104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650394, 34.032818, 28.845451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092904, 0.737276, -0.669173,
		-0.872006, 0.264154, 0.412102,
		0.480598, 0.621809, 0.618368,
		40.794575, 34.219360, 29.030962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144680, 34.359295, 28.497965>,  <40.458157, 33.784096, 28.598104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144680, 34.359295, 28.497965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.468597, 34.514481, 28.674021>,  <40.662949, 34.607594, 28.779655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.468597, 34.514481, 28.674021>,  <40.144680, 34.359295, 28.497965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468597, 34.514481, 28.674021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056659, 0.798375, -0.599488,
		-0.583979, 0.460521, 0.668497,
		0.809789, 0.387965, 0.440142,
		40.711533, 34.630871, 28.806063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049015, 35.060646, 28.647404>,  <40.144680, 34.359295, 28.497965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049015, 35.060646, 28.647404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447769, 35.029709, 28.641289>,  <40.687023, 35.011147, 28.637619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447769, 35.029709, 28.641289>,  <40.049015, 35.060646, 28.647404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447769, 35.029709, 28.641289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055895, 0.830107, -0.554796,
		0.055602, 0.552214, 0.831846,
		0.996887, -0.077344, -0.015290,
		40.746834, 35.006504, 28.636702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261818, 35.738796, 28.781403>,  <40.049015, 35.060646, 28.647404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261818, 35.738796, 28.781403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.584114, 35.574432, 28.610790>,  <40.777493, 35.475815, 28.508423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.584114, 35.574432, 28.610790>,  <40.261818, 35.738796, 28.781403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584114, 35.574432, 28.610790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141833, 0.833092, -0.534641,
		0.575029, 0.370288, 0.729540,
		0.805745, -0.410906, -0.426533,
		40.825836, 35.451160, 28.482830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742123, 36.221642, 28.724552>,  <40.261818, 35.738796, 28.781403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742123, 36.221642, 28.724552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.864990, 35.953587, 28.454275>,  <40.938709, 35.792751, 28.292109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.864990, 35.953587, 28.454275>,  <40.742123, 36.221642, 28.724552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864990, 35.953587, 28.454275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166420, 0.736902, -0.655194,
		0.936992, 0.088803, 0.337876,
		0.307165, -0.670141, -0.675693,
		40.957138, 35.752544, 28.251568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124722, 36.589172, 28.314249>,  <40.742123, 36.221642, 28.724552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124722, 36.589172, 28.314249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.066833, 36.273235, 28.075851>,  <41.032101, 36.083672, 27.932814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.066833, 36.273235, 28.075851>,  <41.124722, 36.589172, 28.314249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066833, 36.273235, 28.075851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074057, 0.591997, -0.802530,
		0.986697, -0.160281, -0.027182,
		-0.144722, -0.789841, -0.595992,
		41.023418, 36.036282, 27.897055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654156, 36.738300, 27.782061>,  <41.124722, 36.589172, 28.314249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654156, 36.738300, 27.782061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.394093, 36.470928, 27.637568>,  <41.238056, 36.310505, 27.550871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.394093, 36.470928, 27.637568>,  <41.654156, 36.738300, 27.782061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394093, 36.470928, 27.637568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024915, 0.493934, -0.869142,
		0.759390, -0.556080, -0.337790,
		-0.650159, -0.668434, -0.361234,
		41.199043, 36.270397, 27.529198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888355, 36.491119, 27.108028>,  <41.654156, 36.738300, 27.782061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888355, 36.491119, 27.108028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493080, 36.436680, 27.079830>,  <41.255917, 36.404015, 27.062912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493080, 36.436680, 27.079830>,  <41.888355, 36.491119, 27.108028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493080, 36.436680, 27.079830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026523, 0.301140, -0.953211,
		0.150960, -0.943818, -0.293972,
		-0.988184, -0.136100, -0.070493,
		41.196625, 36.395851, 27.058681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806602, 36.102940, 26.561783>,  <41.888355, 36.491119, 27.108028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806602, 36.102940, 26.561783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.457047, 36.295212, 26.590797>,  <41.247314, 36.410576, 26.608206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.457047, 36.295212, 26.590797>,  <41.806602, 36.102940, 26.561783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457047, 36.295212, 26.590797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013578, 0.173291, -0.984777,
		-0.485937, -0.859600, -0.157964,
		-0.873888, 0.480685, 0.072537,
		41.194881, 36.439419, 26.612558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495525, 35.899288, 26.038898>,  <41.806602, 36.102940, 26.561783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495525, 35.899288, 26.038898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.306713, 36.234798, 26.147451>,  <41.193428, 36.436104, 26.212584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.306713, 36.234798, 26.147451>,  <41.495525, 35.899288, 26.038898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306713, 36.234798, 26.147451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027424, 0.321656, -0.946460,
		-0.881158, -0.439312, -0.174833,
		-0.472027, 0.838775, 0.271382,
		41.165104, 36.486431, 26.228867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884460, 36.037407, 25.426956>,  <41.495525, 35.899288, 26.038898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884460, 36.037407, 25.426956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.930828, 36.370083, 25.644157>,  <40.958649, 36.569687, 25.774479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.930828, 36.370083, 25.644157>,  <40.884460, 36.037407, 25.426956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930828, 36.370083, 25.644157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166995, 0.555227, -0.814761,
		-0.979120, 0.003766, 0.203248,
		0.115917, 0.831691, 0.543005,
		40.965603, 36.619591, 25.807058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386375, 36.445068, 25.112432>,  <40.884460, 36.037407, 25.426956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386375, 36.445068, 25.112432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.641445, 36.688377, 25.301481>,  <40.794487, 36.834362, 25.414911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.641445, 36.688377, 25.301481>,  <40.386375, 36.445068, 25.112432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641445, 36.688377, 25.301481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107471, 0.677803, -0.727346,
		-0.762772, 0.413018, 0.497590,
		0.637675, 0.608275, 0.472622,
		40.832748, 36.870861, 25.443268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142349, 37.143589, 25.153509>,  <40.386375, 36.445068, 25.112432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142349, 37.143589, 25.153509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.523182, 37.239643, 25.229280>,  <40.751682, 37.297276, 25.274744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.523182, 37.239643, 25.229280>,  <40.142349, 37.143589, 25.153509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523182, 37.239643, 25.229280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094051, 0.819193, -0.565753,
		-0.291035, 0.520825, 0.802521,
		0.952078, 0.240132, 0.189430,
		40.808804, 37.311684, 25.286110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181450, 37.875931, 25.255037>,  <40.142349, 37.143589, 25.153509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181450, 37.875931, 25.255037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.562351, 37.773701, 25.188223>,  <40.790890, 37.712364, 25.148134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.562351, 37.773701, 25.188223>,  <40.181450, 37.875931, 25.255037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562351, 37.773701, 25.188223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107901, 0.793484, -0.598950,
		0.285614, 0.552327, 0.783172,
		0.952251, -0.255574, -0.167034,
		40.848026, 37.697029, 25.138113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602833, 38.475033, 25.273750>,  <40.181450, 37.875931, 25.255037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602833, 38.475033, 25.273750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.866337, 38.242752, 25.082411>,  <41.024441, 38.103382, 24.967607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.866337, 38.242752, 25.082411>,  <40.602833, 38.475033, 25.273750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866337, 38.242752, 25.082411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294269, 0.784029, -0.546538,
		0.692416, 0.219275, 0.687371,
		0.658760, -0.580704, -0.478349,
		41.063965, 38.068542, 24.938906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222618, 38.909138, 25.157494>,  <40.602833, 38.475033, 25.273750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222618, 38.909138, 25.157494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.207153, 38.620159, 24.881357>,  <41.197876, 38.446770, 24.715675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.207153, 38.620159, 24.881357>,  <41.222618, 38.909138, 25.157494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207153, 38.620159, 24.881357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298259, 0.651024, -0.698004,
		0.953702, -0.232886, 0.190308,
		-0.038660, -0.722449, -0.690343,
		41.195557, 38.403423, 24.674253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006470, 38.827518, 24.858885>,  <41.222618, 38.909138, 25.157494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006470, 38.827518, 24.858885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.735138, 38.695084, 24.596512>,  <41.572338, 38.615623, 24.439089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.735138, 38.695084, 24.596512>,  <42.006470, 38.827518, 24.858885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735138, 38.695084, 24.596512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458898, 0.506289, -0.730126,
		0.573829, -0.796273, -0.191494,
		-0.678331, -0.331091, -0.655931,
		41.531639, 38.595757, 24.399733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264454, 38.548050, 24.199265>,  <42.006470, 38.827518, 24.858885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264454, 38.548050, 24.199265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.893681, 38.601318, 24.058945>,  <41.671215, 38.633278, 23.974752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.893681, 38.601318, 24.058945>,  <42.264454, 38.548050, 24.199265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893681, 38.601318, 24.058945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371296, 0.460507, -0.806271,
		0.054173, -0.877610, -0.476305,
		-0.926933, 0.133172, -0.350800,
		41.615601, 38.641270, 23.953705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241428, 38.358727, 23.525740>,  <42.264454, 38.548050, 24.199265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241428, 38.358727, 23.525740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.880787, 38.531582, 23.518089>,  <41.664402, 38.635296, 23.513498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.880787, 38.531582, 23.518089>,  <42.241428, 38.358727, 23.525740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880787, 38.531582, 23.518089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275443, 0.539462, -0.795684,
		-0.333527, -0.722660, -0.605411,
		-0.901605, 0.432138, -0.019127,
		41.610306, 38.661224, 23.512352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985695, 38.169888, 22.902004>,  <42.241428, 38.358727, 23.525740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985695, 38.169888, 22.902004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.830837, 38.512993, 23.037271>,  <41.737923, 38.718857, 23.118431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.830837, 38.512993, 23.037271>,  <41.985695, 38.169888, 22.902004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830837, 38.512993, 23.037271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328793, 0.471090, -0.818516,
		-0.861403, -0.205695, -0.464407,
		-0.387142, 0.857767, 0.338167,
		41.714695, 38.770325, 23.138721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813744, 38.501980, 22.235310>,  <41.985695, 38.169888, 22.902004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813744, 38.501980, 22.235310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.809006, 38.809101, 22.491539>,  <41.806164, 38.993374, 22.645277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.809006, 38.809101, 22.491539>,  <41.813744, 38.501980, 22.235310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809006, 38.809101, 22.491539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214383, 0.627672, -0.748377,
		-0.976678, 0.128462, -0.172041,
		-0.011847, 0.767806, 0.640574,
		41.805450, 39.039444, 22.683710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479965, 39.045525, 21.883993>,  <41.813744, 38.501980, 22.235310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479965, 39.045525, 21.883993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668648, 39.236416, 22.180573>,  <41.781857, 39.350952, 22.358521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668648, 39.236416, 22.180573>,  <41.479965, 39.045525, 21.883993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668648, 39.236416, 22.180573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302552, 0.702229, -0.644467,
		-0.828223, 0.528327, 0.186862,
		0.471709, 0.477227, 0.741448,
		41.810162, 39.379585, 22.403008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705643, 38.774776, 21.844778>,  <41.479965, 39.045525, 21.883993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705643, 38.774776, 21.844778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.501026, 38.710571, 21.507124>,  <40.378258, 38.672047, 21.304531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.501026, 38.710571, 21.507124>,  <40.705643, 38.774776, 21.844778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501026, 38.710571, 21.507124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819706, -0.203473, 0.535426,
		-0.257703, 0.965833, -0.027492,
		-0.511539, -0.160517, -0.844134,
		40.347565, 38.662415, 21.253883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222469, 39.276871, 21.778070>,  <40.705643, 38.774776, 21.844778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222469, 39.276871, 21.778070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.092266, 38.939754, 21.606609>,  <40.014145, 38.737484, 21.503733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.092266, 38.939754, 21.606609>,  <40.222469, 39.276871, 21.778070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092266, 38.939754, 21.606609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715765, -0.076590, 0.694129,
		-0.617837, 0.532761, -0.578311,
		-0.325512, -0.842793, -0.428652,
		39.994614, 38.686916, 21.478014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734406, 39.546867, 21.210140>,  <40.222469, 39.276871, 21.778070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734406, 39.546867, 21.210140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343098, 39.489449, 21.150299>,  <39.108315, 39.454998, 21.114395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343098, 39.489449, 21.150299>,  <39.734406, 39.546867, 21.210140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343098, 39.489449, 21.150299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024640, -0.635958, 0.771330,
		-0.205864, 0.758256, 0.618602,
		-0.978270, -0.143547, -0.149604,
		39.049618, 39.446384, 21.105417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353085, 39.756355, 21.793566>,  <39.734406, 39.546867, 21.210140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353085, 39.756355, 21.793566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.098003, 39.513107, 21.604452>,  <38.944954, 39.367157, 21.490984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.098003, 39.513107, 21.604452>,  <39.353085, 39.756355, 21.793566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098003, 39.513107, 21.604452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219755, -0.444639, 0.868334,
		-0.738271, 0.657635, 0.149909,
		-0.637702, -0.608122, -0.472783,
		38.906693, 39.330669, 21.462618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782589, 39.780102, 22.278353>,  <39.353085, 39.756355, 21.793566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782589, 39.780102, 22.278353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762241, 39.470821, 22.025503>,  <38.750034, 39.285255, 21.873795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762241, 39.470821, 22.025503>,  <38.782589, 39.780102, 22.278353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762241, 39.470821, 22.025503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177805, -0.615818, 0.767564,
		-0.982750, 0.151440, -0.106152,
		-0.050870, -0.773197, -0.632122,
		38.746979, 39.238861, 21.835867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115196, 39.448582, 22.365089>,  <38.782589, 39.780102, 22.278353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115196, 39.448582, 22.365089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.352123, 39.172535, 22.198763>,  <38.494278, 39.006908, 22.098967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.352123, 39.172535, 22.198763>,  <38.115196, 39.448582, 22.365089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352123, 39.172535, 22.198763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276882, -0.659005, 0.699320,
		-0.756637, -0.299086, -0.581419,
		0.592315, -0.690116, -0.415816,
		38.529819, 38.965500, 22.074018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640499, 38.792812, 22.385899>,  <38.115196, 39.448582, 22.365089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640499, 38.792812, 22.385899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.018852, 38.674629, 22.332228>,  <38.245865, 38.603718, 22.300026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.018852, 38.674629, 22.332228>,  <37.640499, 38.792812, 22.385899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018852, 38.674629, 22.332228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065929, -0.579836, 0.812061,
		-0.317732, -0.759271, -0.567938,
		0.945886, -0.295462, -0.134175,
		38.302616, 38.585991, 22.291975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631596, 37.988895, 22.422224>,  <37.640499, 38.792812, 22.385899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631596, 37.988895, 22.422224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006393, 38.121628, 22.465900>,  <38.231274, 38.201267, 22.492105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006393, 38.121628, 22.465900>,  <37.631596, 37.988895, 22.422224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006393, 38.121628, 22.465900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080786, -0.509922, 0.856419,
		0.339865, -0.793642, -0.504603,
		0.936998, 0.331831, 0.109190,
		38.287495, 38.221176, 22.498657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102016, 37.396008, 22.474915>,  <37.631596, 37.988895, 22.422224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102016, 37.396008, 22.474915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.285431, 37.701874, 22.656036>,  <38.395481, 37.885391, 22.764709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.285431, 37.701874, 22.656036>,  <38.102016, 37.396008, 22.474915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285431, 37.701874, 22.656036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066338, -0.537561, 0.840611,
		0.886195, -0.355415, -0.297219,
		0.458539, 0.764662, 0.452806,
		38.422993, 37.931271, 22.791878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729080, 37.170616, 22.815836>,  <38.102016, 37.396008, 22.474915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729080, 37.170616, 22.815836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.674019, 37.521637, 22.999554>,  <38.640984, 37.732250, 23.109783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.674019, 37.521637, 22.999554>,  <38.729080, 37.170616, 22.815836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674019, 37.521637, 22.999554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172005, -0.435482, 0.883612,
		0.975431, 0.200633, -0.090999,
		-0.137654, 0.877554, 0.459293,
		38.632721, 37.784904, 23.137341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142231, 37.133259, 23.416187>,  <38.729080, 37.170616, 22.815836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142231, 37.133259, 23.416187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.906319, 37.441162, 23.513872>,  <38.764771, 37.625904, 23.572483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.906319, 37.441162, 23.513872>,  <39.142231, 37.133259, 23.416187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906319, 37.441162, 23.513872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085590, -0.241118, 0.966714,
		0.803015, 0.591051, 0.076324,
		-0.589781, 0.769754, 0.244210,
		38.729385, 37.672089, 23.587135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380116, 37.169094, 24.020882>,  <39.142231, 37.133259, 23.416187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380116, 37.169094, 24.020882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058765, 37.406910, 24.034248>,  <38.865955, 37.549599, 24.042269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058765, 37.406910, 24.034248>,  <39.380116, 37.169094, 24.020882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058765, 37.406910, 24.034248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019824, -0.029381, 0.999372,
		0.595145, 0.803531, 0.011818,
		-0.803374, 0.594537, 0.033415,
		38.817753, 37.585270, 24.044273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586571, 37.666897, 24.414852>,  <39.380116, 37.169094, 24.020882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586571, 37.666897, 24.414852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187599, 37.677673, 24.441401>,  <38.948215, 37.684139, 24.457329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187599, 37.677673, 24.441401>,  <39.586571, 37.666897, 24.414852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187599, 37.677673, 24.441401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063768, -0.088024, 0.994075,
		0.032625, 0.995754, 0.086080,
		-0.997431, 0.026943, 0.066369,
		38.888371, 37.685757, 24.461311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332241, 38.148037, 25.073408>,  <39.586571, 37.666897, 24.414852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332241, 38.148037, 25.073408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.043922, 37.880104, 25.002106>,  <38.870930, 37.719345, 24.959324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.043922, 37.880104, 25.002106>,  <39.332241, 38.148037, 25.073408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043922, 37.880104, 25.002106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024668, -0.232221, 0.972350,
		-0.692706, 0.705265, 0.150862,
		-0.720798, -0.669831, -0.178258,
		38.827682, 37.679153, 24.948627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859493, 38.211033, 25.563616>,  <39.332241, 38.148037, 25.073408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859493, 38.211033, 25.563616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.756096, 37.844391, 25.441618>,  <38.694057, 37.624405, 25.368420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.756096, 37.844391, 25.441618>,  <38.859493, 38.211033, 25.563616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756096, 37.844391, 25.441618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174430, -0.266249, 0.947990,
		-0.950136, 0.298246, -0.091061,
		-0.258489, -0.916603, -0.304995,
		38.678551, 37.569408, 25.350119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398235, 37.915981, 26.070841>,  <38.859493, 38.211033, 25.563616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398235, 37.915981, 26.070841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.484161, 37.578819, 25.873512>,  <38.535717, 37.376522, 25.755116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.484161, 37.578819, 25.873512>,  <38.398235, 37.915981, 26.070841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484161, 37.578819, 25.873512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262507, -0.536358, 0.802128,
		-0.940715, -0.042808, -0.336486,
		0.214815, -0.842904, -0.493323,
		38.548607, 37.325947, 25.725515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885876, 37.503288, 26.229792>,  <38.398235, 37.915981, 26.070841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885876, 37.503288, 26.229792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.168594, 37.253231, 26.097345>,  <38.338226, 37.103195, 26.017878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.168594, 37.253231, 26.097345>,  <37.885876, 37.503288, 26.229792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168594, 37.253231, 26.097345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126296, -0.572048, 0.810439,
		-0.696055, -0.530994, -0.483272,
		0.706793, -0.625145, -0.331114,
		38.380634, 37.065689, 25.998011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596756, 36.821617, 26.225405>,  <37.885876, 37.503288, 26.229792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596756, 36.821617, 26.225405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993202, 36.770561, 26.240343>,  <38.231071, 36.739929, 26.249306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993202, 36.770561, 26.240343>,  <37.596756, 36.821617, 26.225405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993202, 36.770561, 26.240343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112365, -0.653519, 0.748523,
		-0.071135, -0.746071, -0.662056,
		0.991117, -0.127638, 0.037344,
		38.290539, 36.732269, 26.251547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714283, 36.115654, 26.107931>,  <37.596756, 36.821617, 26.225405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714283, 36.115654, 26.107931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006821, 36.268436, 26.333937>,  <38.182343, 36.360107, 26.469540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006821, 36.268436, 26.333937>,  <37.714283, 36.115654, 26.107931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006821, 36.268436, 26.333937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171617, -0.698732, 0.694494,
		0.660060, -0.604882, -0.445465,
		0.731347, 0.381958, 0.565013,
		38.226223, 36.383022, 26.503441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878361, 35.513283, 26.429760>,  <37.714283, 36.115654, 26.107931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878361, 35.513283, 26.429760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086803, 35.787334, 26.633347>,  <38.211868, 35.951767, 26.755499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.086803, 35.787334, 26.633347>,  <37.878361, 35.513283, 26.429760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086803, 35.787334, 26.633347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042136, -0.616258, 0.786416,
		0.852451, -0.388361, -0.350005,
		0.521106, 0.685129, 0.508966,
		38.243134, 35.992874, 26.786036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431473, 35.139675, 26.730581>,  <37.878361, 35.513283, 26.429760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431473, 35.139675, 26.730581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367931, 35.465034, 26.954420>,  <38.329807, 35.660248, 27.088724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367931, 35.465034, 26.954420>,  <38.431473, 35.139675, 26.730581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367931, 35.465034, 26.954420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117045, -0.578314, 0.807374,
		0.980339, 0.062758, 0.187072,
		-0.158856, 0.813397, 0.559599,
		38.320274, 35.709053, 27.122299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860355, 35.022308, 27.277525>,  <38.431473, 35.139675, 26.730581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860355, 35.022308, 27.277525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594955, 35.294079, 27.402834>,  <38.435715, 35.457142, 27.478020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594955, 35.294079, 27.402834>,  <38.860355, 35.022308, 27.277525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594955, 35.294079, 27.402834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050004, -0.458052, 0.887518,
		0.746501, 0.573205, 0.337893,
		-0.663502, 0.679429, 0.313274,
		38.395905, 35.497910, 27.496817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.974045, 32.994987, 31.777807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.598408, 33.132256, 31.770515>,  <41.373024, 33.214619, 31.766140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.598408, 33.132256, 31.770515>,  <41.974045, 32.994987, 31.777807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598408, 33.132256, 31.770515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070976, -0.141777, 0.987351,
		0.336248, 0.928510, 0.157499,
		-0.939095, 0.343174, -0.018230,
		41.316681, 33.235207, 31.765047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893887, 33.245663, 32.415886>,  <41.974045, 32.994987, 31.777807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893887, 33.245663, 32.415886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.517864, 33.208725, 32.284573>,  <41.292252, 33.186562, 32.205784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.517864, 33.208725, 32.284573>,  <41.893887, 33.245663, 32.415886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517864, 33.208725, 32.284573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287024, -0.305604, 0.907868,
		-0.184159, 0.947670, 0.260780,
		-0.940055, -0.092341, -0.328284,
		41.235847, 33.181023, 32.186089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494518, 33.768215, 32.891838>,  <41.893887, 33.245663, 32.415886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494518, 33.768215, 32.891838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.288422, 33.453339, 32.756279>,  <41.164764, 33.264412, 32.674946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.288422, 33.453339, 32.756279>,  <41.494518, 33.768215, 32.891838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288422, 33.453339, 32.756279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269075, -0.226848, 0.936023,
		-0.813710, 0.573467, -0.094932,
		-0.515243, -0.787195, -0.338894,
		41.133850, 33.217178, 32.654610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881657, 33.805820, 33.275349>,  <41.494518, 33.768215, 32.891838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881657, 33.805820, 33.275349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.824127, 33.443371, 33.116230>,  <40.789608, 33.225899, 33.020760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.824127, 33.443371, 33.116230>,  <40.881657, 33.805820, 33.275349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824127, 33.443371, 33.116230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421000, -0.307763, 0.853253,
		-0.895585, 0.290195, -0.337215,
		-0.143827, -0.906129, -0.397800,
		40.780979, 33.171532, 32.996891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121052, 33.673988, 33.262638>,  <40.881657, 33.805820, 33.275349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121052, 33.673988, 33.262638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.288609, 33.311508, 33.239548>,  <40.389141, 33.094021, 33.225693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.288609, 33.311508, 33.239548>,  <40.121052, 33.673988, 33.262638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288609, 33.311508, 33.239548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645244, -0.341791, 0.683256,
		-0.638898, -0.248959, -0.727893,
		0.418890, -0.906200, -0.057730,
		40.414276, 33.039650, 33.222229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593548, 33.188072, 33.030407>,  <40.121052, 33.673988, 33.262638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593548, 33.188072, 33.030407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.863953, 32.989250, 33.248005>,  <40.026196, 32.869957, 33.378563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.863953, 32.989250, 33.248005>,  <39.593548, 33.188072, 33.030407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863953, 32.989250, 33.248005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733578, -0.384069, 0.560674,
		-0.069754, -0.778091, -0.624267,
		0.676017, -0.497058, 0.544000,
		40.066757, 32.840134, 33.411205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114765, 32.748348, 33.273960>,  <39.593548, 33.188072, 33.030407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114765, 32.748348, 33.273960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.434608, 32.702511, 33.509754>,  <39.626514, 32.675007, 33.651230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.434608, 32.702511, 33.509754>,  <39.114765, 32.748348, 33.273960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434608, 32.702511, 33.509754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572779, -0.440445, 0.691327,
		0.180414, -0.890436, -0.417821,
		0.799609, -0.114594, 0.589485,
		39.674492, 32.668133, 33.686600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105885, 32.031677, 33.668133>,  <39.114765, 32.748348, 33.273960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105885, 32.031677, 33.668133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.338203, 32.268543, 33.891563>,  <39.477596, 32.410664, 34.025623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.338203, 32.268543, 33.891563>,  <39.105885, 32.031677, 33.668133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338203, 32.268543, 33.891563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398274, -0.391739, 0.829409,
		0.709963, -0.704190, 0.008321,
		0.580802, 0.592164, 0.558580,
		39.512444, 32.446194, 34.059139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374165, 31.592493, 34.196426>,  <39.105885, 32.031677, 33.668133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374165, 31.592493, 34.196426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.430752, 31.967178, 34.324524>,  <39.464706, 32.191990, 34.401382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.430752, 31.967178, 34.324524>,  <39.374165, 31.592493, 34.196426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430752, 31.967178, 34.324524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490967, -0.214514, 0.844355,
		0.859615, -0.276680, 0.429548,
		0.141472, 0.936713, 0.320240,
		39.473194, 32.248192, 34.420597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727146, 31.463335, 34.859989>,  <39.374165, 31.592493, 34.196426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727146, 31.463335, 34.859989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555840, 31.824789, 34.862213>,  <39.453056, 32.041660, 34.863548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555840, 31.824789, 34.862213>,  <39.727146, 31.463335, 34.859989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555840, 31.824789, 34.862213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463302, -0.224858, 0.857199,
		0.775845, 0.364535, 0.514955,
		-0.428271, 0.903633, 0.005565,
		39.427357, 32.095879, 34.863884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623665, 31.525288, 35.509243>,  <39.727146, 31.463335, 34.859989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623665, 31.525288, 35.509243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.384186, 31.801216, 35.346416>,  <39.240498, 31.966774, 35.248718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.384186, 31.801216, 35.346416>,  <39.623665, 31.525288, 35.509243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384186, 31.801216, 35.346416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653280, -0.126479, 0.746477,
		0.463452, 0.712844, 0.526371,
		-0.598697, 0.689824, -0.407070,
		39.204578, 32.008163, 35.224297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442432, 32.025829, 36.039276>,  <39.623665, 31.525288, 35.509243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442432, 32.025829, 36.039276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.166100, 32.042019, 35.750523>,  <39.000301, 32.051731, 35.577271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.166100, 32.042019, 35.750523>,  <39.442432, 32.025829, 36.039276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166100, 32.042019, 35.750523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722810, -0.062591, 0.688206,
		-0.017330, 0.997218, 0.072493,
		-0.690829, 0.040472, -0.721884,
		38.958851, 32.054161, 35.533958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034935, 32.611320, 36.179577>,  <39.442432, 32.025829, 36.039276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034935, 32.611320, 36.179577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.833424, 32.338791, 35.967159>,  <38.712517, 32.175274, 35.839710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.833424, 32.338791, 35.967159>,  <39.034935, 32.611320, 36.179577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833424, 32.338791, 35.967159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708937, -0.025163, 0.704823,
		-0.493573, 0.731552, -0.470337,
		-0.503780, -0.681321, -0.531044,
		38.682289, 32.134396, 35.807846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409489, 32.901154, 36.181862>,  <39.034935, 32.611320, 36.179577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409489, 32.901154, 36.181862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368336, 32.508171, 36.119656>,  <38.343643, 32.272381, 36.082333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368336, 32.508171, 36.119656>,  <38.409489, 32.901154, 36.181862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368336, 32.508171, 36.119656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806209, -0.009213, 0.591559,
		-0.582616, 0.186242, -0.791121,
		-0.102884, -0.982461, -0.155518,
		38.337471, 32.213432, 36.073002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760990, 33.425682, 36.716480>,  <38.409489, 32.901154, 36.181862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760990, 33.425682, 36.716480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.919552, 33.784073, 36.636387>,  <39.014690, 33.999107, 36.588329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.919552, 33.784073, 36.636387>,  <38.760990, 33.425682, 36.716480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919552, 33.784073, 36.636387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915504, -0.369461, 0.159222,
		0.068679, -0.246434, -0.966723,
		0.396404, 0.895974, -0.200237,
		39.038471, 34.052864, 36.576317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184090, 34.005760, 36.834961>,  <38.760990, 33.425682, 36.716480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184090, 34.005760, 36.834961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.470634, 34.197281, 37.037971>,  <38.642559, 34.312191, 37.159779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.470634, 34.197281, 37.037971>,  <38.184090, 34.005760, 36.834961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470634, 34.197281, 37.037971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171236, 0.825791, -0.537352,
		-0.676392, 0.298031, 0.673551,
		0.716360, 0.478797, 0.507525,
		38.685543, 34.340919, 37.190228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938992, 34.709213, 36.941753>,  <38.184090, 34.005760, 36.834961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938992, 34.709213, 36.941753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338097, 34.682491, 36.942131>,  <38.577560, 34.666458, 36.942360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338097, 34.682491, 36.942131>,  <37.938992, 34.709213, 36.941753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338097, 34.682491, 36.942131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055807, 0.825568, -0.561536,
		0.036730, 0.560334, 0.827452,
		0.997766, -0.066803, 0.000947,
		38.637424, 34.662449, 36.942413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206161, 35.382805, 36.967602>,  <37.938992, 34.709213, 36.941753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206161, 35.382805, 36.967602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.526558, 35.192234, 36.822590>,  <38.718796, 35.077892, 36.735584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.526558, 35.192234, 36.822590>,  <38.206161, 35.382805, 36.967602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526558, 35.192234, 36.822590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064688, 0.670879, -0.738740,
		0.595169, 0.568274, 0.568188,
		0.800992, -0.476431, -0.362526,
		38.766857, 35.049305, 36.713833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712646, 35.933514, 36.809742>,  <38.206161, 35.382805, 36.967602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712646, 35.933514, 36.809742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.845734, 35.605812, 36.622932>,  <38.925587, 35.409191, 36.510845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.845734, 35.605812, 36.622932>,  <38.712646, 35.933514, 36.809742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845734, 35.605812, 36.622932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099220, 0.522908, -0.846594,
		0.937791, 0.235341, 0.255269,
		0.332721, -0.819257, -0.467028,
		38.945549, 35.360035, 36.482822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467644, 36.105495, 36.542557>,  <38.712646, 35.933514, 36.809742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467644, 36.105495, 36.542557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.319126, 35.793736, 36.340691>,  <39.230015, 35.606682, 36.219570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.319126, 35.793736, 36.340691>,  <39.467644, 36.105495, 36.542557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319126, 35.793736, 36.340691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162949, 0.480387, -0.861786,
		0.914107, -0.402207, -0.051361,
		-0.371290, -0.779396, -0.504664,
		39.207741, 35.559917, 36.189293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962368, 35.972237, 35.977859>,  <39.467644, 36.105495, 36.542557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962368, 35.972237, 35.977859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.605530, 35.825748, 35.871990>,  <39.391426, 35.737854, 35.808468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.605530, 35.825748, 35.871990>,  <39.962368, 35.972237, 35.977859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605530, 35.825748, 35.871990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235592, 0.122848, -0.964056,
		0.385577, -0.922381, -0.023312,
		-0.892092, -0.366226, -0.264673,
		39.337902, 35.715881, 35.792587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158745, 35.369484, 35.480652>,  <39.962368, 35.972237, 35.977859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158745, 35.369484, 35.480652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.801083, 35.542656, 35.434952>,  <39.586483, 35.646561, 35.407532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.801083, 35.542656, 35.434952>,  <40.158745, 35.369484, 35.480652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801083, 35.542656, 35.434952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246555, 0.263070, -0.932741,
		-0.373753, -0.862187, -0.341967,
		-0.894158, 0.432929, -0.114253,
		39.532837, 35.672535, 35.400677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023449, 35.214344, 34.739906>,  <40.158745, 35.369484, 35.480652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023449, 35.214344, 34.739906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748508, 35.485706, 34.843693>,  <39.583546, 35.648521, 34.905964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748508, 35.485706, 34.843693>,  <40.023449, 35.214344, 34.739906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748508, 35.485706, 34.843693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078815, 0.285456, -0.955145,
		-0.722041, -0.676966, -0.142739,
		-0.687347, 0.678404, 0.259466,
		39.542305, 35.689228, 34.921532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462097, 35.183380, 34.267876>,  <40.023449, 35.214344, 34.739906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462097, 35.183380, 34.267876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.421253, 35.553150, 34.414848>,  <39.396748, 35.775013, 34.503033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.421253, 35.553150, 34.414848>,  <39.462097, 35.183380, 34.267876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421253, 35.553150, 34.414848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041854, 0.373024, -0.926877,
		-0.993892, -0.079267, -0.076781,
		-0.102112, 0.924430, 0.367428,
		39.390621, 35.830479, 34.525078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128761, 35.600086, 33.733894>,  <39.462097, 35.183380, 34.267876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128761, 35.600086, 33.733894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.230839, 35.894806, 33.984337>,  <39.292084, 36.071636, 34.134602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.230839, 35.894806, 33.984337>,  <39.128761, 35.600086, 33.733894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230839, 35.894806, 33.984337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039391, 0.639084, -0.768128,
		-0.966087, 0.220685, 0.134068,
		0.255195, 0.736797, 0.626103,
		39.307396, 36.115845, 34.172169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806595, 36.175327, 33.443192>,  <39.128761, 35.600086, 33.733894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806595, 36.175327, 33.443192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.073891, 36.343887, 33.688427>,  <39.234268, 36.445023, 33.835567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.073891, 36.343887, 33.688427>,  <38.806595, 36.175327, 33.443192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073891, 36.343887, 33.688427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110529, 0.758718, -0.641974,
		-0.735689, 0.496756, 0.460429,
		0.668240, 0.421402, 0.613087,
		39.274364, 36.470306, 33.872353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517605, 36.850582, 33.572861>,  <38.806595, 36.175327, 33.443192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517605, 36.850582, 33.572861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914089, 36.845181, 33.625492>,  <39.151981, 36.841938, 33.657070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914089, 36.845181, 33.625492>,  <38.517605, 36.850582, 33.572861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914089, 36.845181, 33.625492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109046, 0.646486, -0.755093,
		-0.074867, 0.762806, 0.642278,
		0.991213, -0.013506, 0.131582,
		39.211452, 36.841129, 33.664967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642262, 37.519238, 33.408016>,  <38.517605, 36.850582, 33.572861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642262, 37.519238, 33.408016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.994476, 37.331944, 33.378582>,  <39.205803, 37.219566, 33.360920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.994476, 37.331944, 33.378582>,  <38.642262, 37.519238, 33.408016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994476, 37.331944, 33.378582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202994, 0.512832, -0.834145,
		0.428313, 0.719555, 0.546615,
		0.880535, -0.468235, -0.073588,
		39.258636, 37.191475, 33.356506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695080, 38.322468, 33.443043>,  <38.642262, 37.519238, 33.408016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695080, 38.322468, 33.443043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.353062, 38.525776, 33.484127>,  <38.147850, 38.647762, 33.508778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.353062, 38.525776, 33.484127>,  <38.695080, 38.322468, 33.443043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353062, 38.525776, 33.484127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240937, -0.564814, 0.789262,
		0.459176, 0.650109, 0.605405,
		-0.855048, 0.508275, 0.102714,
		38.096546, 38.678257, 33.514942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694462, 38.430767, 34.209827>,  <38.695080, 38.322468, 33.443043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694462, 38.430767, 34.209827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.322018, 38.458809, 34.066658>,  <38.098549, 38.475636, 33.980755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.322018, 38.458809, 34.066658>,  <38.694462, 38.430767, 34.209827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322018, 38.458809, 34.066658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316060, -0.644838, 0.695910,
		-0.182018, 0.761098, 0.622575,
		-0.931115, 0.070103, -0.357925,
		38.042683, 38.479839, 33.959282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254250, 38.261860, 34.769817>,  <38.694462, 38.430767, 34.209827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254250, 38.261860, 34.769817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.980972, 38.235283, 34.478935>,  <37.817005, 38.219337, 34.304405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.980972, 38.235283, 34.478935>,  <38.254250, 38.261860, 34.769817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980972, 38.235283, 34.478935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546850, -0.613424, 0.569795,
		-0.483945, 0.786954, 0.382754,
		-0.683193, -0.066441, -0.727209,
		37.776016, 38.215351, 34.260773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663788, 38.336964, 35.098534>,  <38.254250, 38.261860, 34.769817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663788, 38.336964, 35.098534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.590546, 38.136372, 34.760303>,  <37.546600, 38.016018, 34.557365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.590546, 38.136372, 34.760303>,  <37.663788, 38.336964, 35.098534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590546, 38.136372, 34.760303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616152, -0.611680, 0.496190,
		-0.766048, 0.611856, -0.196984,
		-0.183105, -0.501478, -0.845572,
		37.535614, 37.985928, 34.506630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929626, 38.331150, 35.118954>,  <37.663788, 38.336964, 35.098534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929626, 38.331150, 35.118954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.031437, 38.053944, 34.849155>,  <37.092522, 37.887619, 34.687275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.031437, 38.053944, 34.849155>,  <36.929626, 38.331150, 35.118954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031437, 38.053944, 34.849155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646773, -0.640515, 0.414035,
		-0.718958, 0.330864, -0.611251,
		0.254526, -0.693015, -0.674497,
		37.107796, 37.846039, 34.646805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357178, 38.023697, 34.970547>,  <36.929626, 38.331150, 35.118954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357178, 38.023697, 34.970547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.610237, 37.738647, 34.849270>,  <36.762074, 37.567619, 34.776505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.610237, 37.738647, 34.849270>,  <36.357178, 38.023697, 34.970547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610237, 37.738647, 34.849270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650465, -0.701430, 0.291360,
		-0.420297, 0.012887, -0.907295,
		0.632650, -0.712622, -0.303192,
		36.800034, 37.524860, 34.758312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942162, 37.539394, 34.544971>,  <36.357178, 38.023697, 34.970547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942162, 37.539394, 34.544971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.272301, 37.356800, 34.677883>,  <36.470387, 37.247242, 34.757629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.272301, 37.356800, 34.677883>,  <35.942162, 37.539394, 34.544971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272301, 37.356800, 34.677883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533258, -0.823629, 0.193055,
		0.185551, -0.336532, -0.923210,
		0.825352, -0.456488, 0.332283,
		36.519905, 37.219852, 34.777569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894638, 36.960548, 34.186737>,  <35.942162, 37.539394, 34.544971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894638, 36.960548, 34.186737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.134361, 36.859936, 34.490726>,  <36.278194, 36.799568, 34.673119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.134361, 36.859936, 34.490726>,  <35.894638, 36.960548, 34.186737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134361, 36.859936, 34.490726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514576, -0.848280, 0.125029,
		0.613221, -0.465995, -0.637816,
		0.599310, -0.251535, 0.759973,
		36.314156, 36.784477, 34.718719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988716, 36.074177, 34.195793>,  <35.894638, 36.960548, 34.186737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988716, 36.074177, 34.195793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.077888, 36.212788, 34.560257>,  <36.131393, 36.295956, 34.778934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.077888, 36.212788, 34.560257>,  <35.988716, 36.074177, 34.195793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077888, 36.212788, 34.560257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439260, -0.798709, 0.411234,
		0.870260, -0.491914, -0.025839,
		0.222930, 0.346531, 0.911164,
		36.144768, 36.316746, 34.833607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295242, 35.566601, 34.536167>,  <35.988716, 36.074177, 34.195793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295242, 35.566601, 34.536167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.147182, 35.807159, 34.819382>,  <36.058346, 35.951492, 34.989311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.147182, 35.807159, 34.819382>,  <36.295242, 35.566601, 34.536167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147182, 35.807159, 34.819382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445453, -0.783736, 0.432816,
		0.815206, -0.155190, 0.557992,
		-0.370150, 0.601394, 0.708036,
		36.036137, 35.987579, 35.031792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373474, 35.219425, 35.075108>,  <36.295242, 35.566601, 34.536167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373474, 35.219425, 35.075108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.111164, 35.484100, 35.220505>,  <35.953777, 35.642906, 35.307743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.111164, 35.484100, 35.220505>,  <36.373474, 35.219425, 35.075108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111164, 35.484100, 35.220505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350307, -0.693201, 0.629887,
		0.668763, 0.285730, 0.686378,
		-0.655775, 0.661688, 0.363494,
		35.914433, 35.682606, 35.329552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460926, 35.100712, 35.729382>,  <36.373474, 35.219425, 35.075108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460926, 35.100712, 35.729382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.104809, 35.282360, 35.715782>,  <35.891140, 35.391350, 35.707623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.104809, 35.282360, 35.715782>,  <36.460926, 35.100712, 35.729382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104809, 35.282360, 35.715782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414630, -0.777468, 0.472890,
		0.188317, 0.435106, 0.880465,
		-0.890291, 0.454121, -0.033997,
		35.837723, 35.418598, 35.705582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.923111, 41.432068, 30.798899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578884, 41.254883, 30.698330>,  <38.372349, 41.148571, 30.637989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578884, 41.254883, 30.698330>,  <38.923111, 41.432068, 30.798899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578884, 41.254883, 30.698330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176342, -0.203980, 0.962962,
		-0.477839, 0.873028, 0.097426,
		-0.860566, -0.442960, -0.251421,
		38.320713, 41.121994, 30.622904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441647, 41.502476, 31.400530>,  <38.923111, 41.432068, 30.798899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441647, 41.502476, 31.400530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274609, 41.207264, 31.188519>,  <38.174385, 41.030136, 31.061312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274609, 41.207264, 31.188519>,  <38.441647, 41.502476, 31.400530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274609, 41.207264, 31.188519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203849, -0.492357, 0.846185,
		-0.885473, 0.461407, 0.055158,
		-0.417593, -0.738030, -0.530026,
		38.149330, 40.985855, 31.029510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838314, 41.376503, 31.747948>,  <38.441647, 41.502476, 31.400530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838314, 41.376503, 31.747948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922432, 41.055023, 31.525293>,  <37.972900, 40.862133, 31.391701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922432, 41.055023, 31.525293>,  <37.838314, 41.376503, 31.747948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922432, 41.055023, 31.525293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246732, -0.594566, 0.765255,
		-0.945992, -0.023587, -0.323331,
		0.210292, -0.803701, -0.556634,
		37.985519, 40.813911, 31.358303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665298, 40.838757, 32.254173>,  <37.838314, 41.376503, 31.747948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665298, 40.838757, 32.254173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802971, 40.588665, 31.973993>,  <37.885574, 40.438610, 31.805885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802971, 40.588665, 31.973993>,  <37.665298, 40.838757, 32.254173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802971, 40.588665, 31.973993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265883, -0.780396, 0.565940,
		-0.900470, -0.008548, -0.434835,
		0.344181, -0.625227, -0.700450,
		37.906227, 40.401096, 31.763859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078564, 40.304367, 32.127254>,  <37.665298, 40.838757, 32.254173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078564, 40.304367, 32.127254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436672, 40.147667, 32.042389>,  <37.651539, 40.053646, 31.991468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436672, 40.147667, 32.042389>,  <37.078564, 40.304367, 32.127254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436672, 40.147667, 32.042389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176855, -0.749605, 0.637820,
		-0.408909, -0.533501, -0.740385,
		0.895274, -0.391751, -0.212168,
		37.705254, 40.030140, 31.978739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942432, 39.662632, 32.121174>,  <37.078564, 40.304367, 32.127254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942432, 39.662632, 32.121174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338734, 39.690865, 32.167515>,  <37.576515, 39.707806, 32.195320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338734, 39.690865, 32.167515>,  <36.942432, 39.662632, 32.121174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338734, 39.690865, 32.167515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027191, -0.733348, 0.679310,
		0.132913, -0.676179, -0.724648,
		0.990755, 0.070585, 0.115857,
		37.635960, 39.712040, 32.202271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176792, 38.994045, 32.056698>,  <36.942432, 39.662632, 32.121174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176792, 38.994045, 32.056698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461525, 39.187695, 32.260231>,  <37.632366, 39.303883, 32.382351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461525, 39.187695, 32.260231>,  <37.176792, 38.994045, 32.056698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461525, 39.187695, 32.260231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218347, -0.841123, 0.494810,
		0.667543, -0.241121, -0.704448,
		0.711837, 0.484121, 0.508838,
		37.675076, 39.332932, 32.412884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827347, 38.555935, 32.189800>,  <37.176792, 38.994045, 32.056698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827347, 38.555935, 32.189800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833824, 38.832283, 32.478920>,  <37.837711, 38.998093, 32.652393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833824, 38.832283, 32.478920>,  <37.827347, 38.555935, 32.189800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833824, 38.832283, 32.478920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205641, -0.709742, 0.673779,
		0.978493, 0.137727, -0.153564,
		0.016194, 0.690867, 0.722800,
		37.838684, 39.039543, 32.695759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358501, 38.347401, 32.754074>,  <37.827347, 38.555935, 32.189800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358501, 38.347401, 32.754074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142998, 38.614407, 32.959660>,  <38.013695, 38.774612, 33.083012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142998, 38.614407, 32.959660>,  <38.358501, 38.347401, 32.754074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142998, 38.614407, 32.959660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033465, -0.592634, 0.804777,
		0.841794, 0.450782, 0.296949,
		-0.538760, 0.667519, 0.513961,
		37.981369, 38.814663, 33.113850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813686, 37.746052, 32.522663>,  <38.358501, 38.347401, 32.754074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813686, 37.746052, 32.522663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122307, 37.562366, 32.698769>,  <39.307480, 37.452156, 32.804432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122307, 37.562366, 32.698769>,  <38.813686, 37.746052, 32.522663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122307, 37.562366, 32.698769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529649, 0.080342, -0.844403,
		0.352392, 0.884684, 0.305211,
		0.771551, -0.459216, 0.440261,
		39.353771, 37.424603, 32.830849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370560, 38.242046, 32.576038>,  <38.813686, 37.746052, 32.522663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370560, 38.242046, 32.576038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477215, 37.857803, 32.544701>,  <39.541206, 37.627258, 32.525898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477215, 37.857803, 32.544701>,  <39.370560, 38.242046, 32.576038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477215, 37.857803, 32.544701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387590, 0.181301, -0.903827,
		0.882428, 0.210627, 0.420663,
		0.266637, -0.960607, -0.078348,
		39.557205, 37.569622, 32.521194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046421, 38.275928, 32.422970>,  <39.370560, 38.242046, 32.576038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046421, 38.275928, 32.422970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899532, 37.932964, 32.278755>,  <39.811398, 37.727184, 32.192226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899532, 37.932964, 32.278755>,  <40.046421, 38.275928, 32.422970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899532, 37.932964, 32.278755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363081, 0.224729, -0.904251,
		0.856340, -0.462968, 0.228785,
		-0.367224, -0.857413, -0.360539,
		39.789364, 37.675739, 32.170593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498108, 38.020653, 31.879492>,  <40.046421, 38.275928, 32.422970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498108, 38.020653, 31.879492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159172, 37.823425, 31.800598>,  <39.955811, 37.705090, 31.753262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159172, 37.823425, 31.800598>,  <40.498108, 38.020653, 31.879492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159172, 37.823425, 31.800598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105788, 0.207237, -0.972554,
		0.520409, -0.844948, -0.123439,
		-0.847339, -0.493068, -0.197233,
		39.904972, 37.675507, 31.741428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616230, 37.384361, 31.551212>,  <40.498108, 38.020653, 31.879492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616230, 37.384361, 31.551212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249615, 37.504677, 31.445774>,  <40.029644, 37.576866, 31.382511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249615, 37.504677, 31.445774>,  <40.616230, 37.384361, 31.551212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249615, 37.504677, 31.445774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307807, 0.109685, -0.945105,
		-0.255363, -0.947363, -0.193115,
		-0.916540, 0.300787, -0.263596,
		39.974651, 37.594913, 31.366695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418949, 36.951023, 30.988636>,  <40.616230, 37.384361, 31.551212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418949, 36.951023, 30.988636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160336, 37.256065, 30.996820>,  <40.005169, 37.439091, 31.001732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160336, 37.256065, 30.996820>,  <40.418949, 36.951023, 30.988636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160336, 37.256065, 30.996820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089724, 0.102648, -0.990663,
		-0.757590, -0.638662, -0.134790,
		-0.646535, 0.762610, 0.020462,
		39.966373, 37.484848, 31.002958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046295, 36.834831, 30.400747>,  <40.418949, 36.951023, 30.988636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046295, 36.834831, 30.400747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023975, 37.219799, 30.507059>,  <40.010586, 37.450779, 30.570847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023975, 37.219799, 30.507059>,  <40.046295, 36.834831, 30.400747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023975, 37.219799, 30.507059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434996, 0.263034, -0.861157,
		-0.898702, 0.067563, -0.433324,
		-0.055796, 0.962418, 0.265779,
		40.007236, 37.508526, 30.586792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927402, 37.115166, 29.794937>,  <40.046295, 36.834831, 30.400747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927402, 37.115166, 29.794937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024452, 37.427372, 30.025391>,  <40.082680, 37.614697, 30.163664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024452, 37.427372, 30.025391>,  <39.927402, 37.115166, 29.794937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024452, 37.427372, 30.025391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493515, 0.411990, -0.765968,
		-0.835211, 0.470172, -0.285237,
		0.242622, 0.780514, 0.576136,
		40.097240, 37.661526, 30.198231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539185, 37.738640, 29.540695>,  <39.927402, 37.115166, 29.794937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539185, 37.738640, 29.540695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878902, 37.838696, 29.726652>,  <40.082733, 37.898727, 29.838226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878902, 37.838696, 29.726652>,  <39.539185, 37.738640, 29.540695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878902, 37.838696, 29.726652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273277, 0.545135, -0.792557,
		-0.451675, 0.800162, 0.394627,
		0.849299, 0.250136, 0.464890,
		40.133694, 37.913738, 29.866119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771042, 38.405945, 29.170731>,  <39.539185, 37.738640, 29.540695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771042, 38.405945, 29.170731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098297, 38.330456, 29.387999>,  <40.294651, 38.285160, 29.518360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098297, 38.330456, 29.387999>,  <39.771042, 38.405945, 29.170731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098297, 38.330456, 29.387999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554548, 0.508779, -0.658499,
		-0.152077, 0.839956, 0.520909,
		0.818138, -0.188727, 0.543169,
		40.343739, 38.273838, 29.550949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026371, 39.029896, 29.143026>,  <39.771042, 38.405945, 29.170731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026371, 39.029896, 29.143026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317776, 38.770401, 29.231041>,  <40.492619, 38.614704, 29.283850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317776, 38.770401, 29.231041>,  <40.026371, 39.029896, 29.143026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317776, 38.770401, 29.231041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612326, 0.472662, -0.633757,
		0.307138, 0.596431, 0.741577,
		0.728508, -0.648737, 0.220037,
		40.536327, 38.575779, 29.297052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662983, 39.490387, 29.262390>,  <40.026371, 39.029896, 29.143026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662983, 39.490387, 29.262390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783672, 39.114952, 29.195440>,  <40.856087, 38.889690, 29.155272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783672, 39.114952, 29.195440>,  <40.662983, 39.490387, 29.262390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783672, 39.114952, 29.195440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682618, 0.335232, -0.649348,
		0.665579, 0.081672, 0.741845,
		0.301724, -0.938589, -0.167373,
		40.874191, 38.833374, 29.145229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374653, 39.496136, 29.315495>,  <40.662983, 39.490387, 29.262390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374653, 39.496136, 29.315495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286823, 39.158394, 29.120003>,  <41.234127, 38.955750, 29.002708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286823, 39.158394, 29.120003>,  <41.374653, 39.496136, 29.315495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286823, 39.158394, 29.120003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567497, 0.296941, -0.767967,
		0.793559, -0.445975, 0.413968,
		-0.219570, -0.844353, -0.488730,
		41.220951, 38.905087, 28.973383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033958, 39.268833, 29.239397>,  <41.374653, 39.496136, 29.315495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033958, 39.268833, 29.239397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811138, 39.072121, 28.971710>,  <41.677448, 38.954094, 28.811098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811138, 39.072121, 28.971710>,  <42.033958, 39.268833, 29.239397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811138, 39.072121, 28.971710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633004, 0.270199, -0.725464,
		0.537589, -0.827736, 0.160784,
		-0.557049, -0.491778, -0.669216,
		41.644024, 38.924587, 28.770945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.374043, 36.516808, 25.606558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.522789, 36.745853, 25.898811>,  <35.612038, 36.883282, 26.074163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.522789, 36.745853, 25.898811>,  <35.374043, 36.516808, 25.606558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522789, 36.745853, 25.898811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048162, -0.774115, 0.631210,
		0.927035, -0.269917, -0.260291,
		0.371870, 0.572617, 0.730632,
		35.634350, 36.917637, 26.118000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668598, 36.017796, 26.016125>,  <35.374043, 36.516808, 25.606558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668598, 36.017796, 26.016125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.629292, 36.343044, 26.245619>,  <35.605709, 36.538193, 26.383316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.629292, 36.343044, 26.245619>,  <35.668598, 36.017796, 26.016125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629292, 36.343044, 26.245619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245949, -0.578486, 0.777729,
		0.964289, -0.064686, 0.256832,
		-0.098265, 0.813123, 0.573737,
		35.599812, 36.586983, 26.417740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144566, 36.045723, 26.577084>,  <35.668598, 36.017796, 26.016125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144566, 36.045723, 26.577084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844810, 36.281456, 26.697819>,  <35.664959, 36.422897, 26.770260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844810, 36.281456, 26.697819>,  <36.144566, 36.045723, 26.577084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844810, 36.281456, 26.697819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023789, -0.431599, 0.901752,
		0.661706, 0.682940, 0.309414,
		-0.749386, 0.589335, 0.301838,
		35.619995, 36.458256, 26.788370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410145, 36.155731, 27.153330>,  <36.144566, 36.045723, 26.577084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410145, 36.155731, 27.153330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025757, 36.266212, 27.159651>,  <35.795124, 36.332500, 27.163443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025757, 36.266212, 27.159651>,  <36.410145, 36.155731, 27.153330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025757, 36.266212, 27.159651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113521, -0.445768, 0.887921,
		0.252287, 0.851472, 0.459725,
		-0.960970, 0.276200, 0.015802,
		35.737465, 36.349072, 27.164391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363853, 36.494122, 27.711100>,  <36.410145, 36.155731, 27.153330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363853, 36.494122, 27.711100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.977589, 36.410793, 27.649000>,  <35.745831, 36.360798, 27.611740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.977589, 36.410793, 27.649000>,  <36.363853, 36.494122, 27.711100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977589, 36.410793, 27.649000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066226, -0.380453, 0.922426,
		-0.251223, 0.901032, 0.353592,
		-0.965661, -0.208318, -0.155251,
		35.687889, 36.348297, 27.602425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016155, 36.692303, 28.372641>,  <36.363853, 36.494122, 27.711100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016155, 36.692303, 28.372641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.801121, 36.437721, 28.151398>,  <35.672100, 36.284973, 28.018652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.801121, 36.437721, 28.151398>,  <36.016155, 36.692303, 28.372641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801121, 36.437721, 28.151398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314709, -0.457110, 0.831870,
		-0.782279, 0.621269, 0.045437,
		-0.537585, -0.636455, -0.553107,
		35.639847, 36.246784, 27.985466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293251, 36.731022, 28.454758>,  <36.016155, 36.692303, 28.372641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293251, 36.731022, 28.454758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375130, 36.357883, 28.336166>,  <35.424255, 36.133999, 28.265013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375130, 36.357883, 28.336166>,  <35.293251, 36.731022, 28.454758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375130, 36.357883, 28.336166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447539, -0.358572, 0.819228,
		-0.870522, -0.035009, -0.490883,
		0.204698, -0.932845, -0.296477,
		35.436539, 36.078030, 28.247223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670708, 36.274124, 28.441332>,  <35.293251, 36.731022, 28.454758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670708, 36.274124, 28.441332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.982002, 36.025738, 28.478748>,  <35.168777, 35.876705, 28.501198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.982002, 36.025738, 28.478748>,  <34.670708, 36.274124, 28.441332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982002, 36.025738, 28.478748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502128, -0.525888, 0.686520,
		-0.377112, -0.581245, -0.721069,
		0.778238, -0.620964, 0.093541,
		35.215473, 35.839447, 28.506811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369499, 35.753403, 28.818573>,  <34.670708, 36.274124, 28.441332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369499, 35.753403, 28.818573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.743874, 35.612797, 28.827160>,  <34.968498, 35.528435, 28.832312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.743874, 35.612797, 28.827160>,  <34.369499, 35.753403, 28.818573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743874, 35.612797, 28.827160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233073, -0.572577, 0.786023,
		-0.264004, -0.740673, -0.617824,
		0.935938, -0.351511, 0.021469,
		35.024654, 35.507343, 28.833601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288475, 34.996838, 28.803547>,  <34.369499, 35.753403, 28.818573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288475, 34.996838, 28.803547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.649437, 35.073093, 28.958118>,  <34.866013, 35.118847, 29.050861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.649437, 35.073093, 28.958118>,  <34.288475, 34.996838, 28.803547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649437, 35.073093, 28.958118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139468, -0.719302, 0.680553,
		0.407703, -0.668026, -0.622510,
		0.902400, 0.190643, 0.386430,
		34.920158, 35.130287, 29.074047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617832, 34.407131, 28.962212>,  <34.288475, 34.996838, 28.803547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617832, 34.407131, 28.962212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.861599, 34.638752, 29.178846>,  <35.007858, 34.777725, 29.308826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.861599, 34.638752, 29.178846>,  <34.617832, 34.407131, 28.962212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861599, 34.638752, 29.178846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026587, -0.697628, 0.715967,
		0.792407, -0.421921, -0.440539,
		0.609413, 0.579050, 0.541588,
		35.044422, 34.812466, 29.341322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188412, 33.991783, 29.255749>,  <34.617832, 34.407131, 28.962212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188412, 33.991783, 29.255749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.154858, 34.318829, 29.483601>,  <35.134727, 34.515057, 29.620312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.154858, 34.318829, 29.483601>,  <35.188412, 33.991783, 29.255749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154858, 34.318829, 29.483601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087234, -0.575474, 0.813154,
		0.992650, 0.018517, 0.119595,
		-0.083881, 0.817610, 0.569629,
		35.129692, 34.564110, 29.654490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652618, 33.876343, 29.804291>,  <35.188412, 33.991783, 29.255749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652618, 33.876343, 29.804291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406887, 34.156204, 29.950214>,  <35.259449, 34.324120, 30.037769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406887, 34.156204, 29.950214>,  <35.652618, 33.876343, 29.804291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406887, 34.156204, 29.950214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092718, -0.523147, 0.847184,
		0.783586, 0.486623, 0.386253,
		-0.614326, 0.699654, 0.364811,
		35.222588, 34.366100, 30.059658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836285, 33.947144, 30.465622>,  <35.652618, 33.876343, 29.804291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836285, 33.947144, 30.465622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484497, 34.137489, 30.461763>,  <35.273426, 34.251698, 30.459448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484497, 34.137489, 30.461763>,  <35.836285, 33.947144, 30.465622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484497, 34.137489, 30.461763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222167, -0.392508, 0.892513,
		0.420930, 0.787077, 0.450919,
		-0.879466, 0.475864, -0.009644,
		35.220657, 34.280251, 30.458870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389610, 34.260227, 30.925240>,  <35.836285, 33.947144, 30.465622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389610, 34.260227, 30.925240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.665348, 33.974442, 30.877323>,  <36.830788, 33.802971, 30.848574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.665348, 33.974442, 30.877323>,  <36.389610, 34.260227, 30.925240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665348, 33.974442, 30.877323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465174, 0.563308, -0.682860,
		0.555359, 0.414998, 0.720661,
		0.689340, -0.714465, -0.119792,
		36.872150, 33.760101, 30.841385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974140, 34.653408, 30.963243>,  <36.389610, 34.260227, 30.925240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974140, 34.653408, 30.963243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.037540, 34.305756, 30.775846>,  <37.075581, 34.097164, 30.663408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.037540, 34.305756, 30.775846>,  <36.974140, 34.653408, 30.963243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037540, 34.305756, 30.775846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487947, 0.481450, -0.728089,
		0.858363, -0.113199, 0.500399,
		0.158498, -0.869133, -0.468494,
		37.085091, 34.045017, 30.635298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656536, 34.734810, 30.766262>,  <36.974140, 34.653408, 30.963243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656536, 34.734810, 30.766262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510780, 34.442169, 30.535789>,  <37.423325, 34.266586, 30.397507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510780, 34.442169, 30.535789>,  <37.656536, 34.734810, 30.766262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510780, 34.442169, 30.535789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511528, 0.359773, -0.780322,
		0.778176, -0.579074, 0.243135,
		-0.364391, -0.731599, -0.576179,
		37.401463, 34.222691, 30.362936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188435, 34.508617, 30.375277>,  <37.656536, 34.734810, 30.766262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188435, 34.508617, 30.375277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873341, 34.393372, 30.157482>,  <37.684284, 34.324226, 30.026806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873341, 34.393372, 30.157482>,  <38.188435, 34.508617, 30.375277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873341, 34.393372, 30.157482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436001, 0.363643, -0.823205,
		0.435176, -0.885864, -0.160836,
		-0.787734, -0.288114, -0.544486,
		37.637020, 34.306938, 29.994137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474018, 34.241966, 29.688320>,  <38.188435, 34.508617, 30.375277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474018, 34.241966, 29.688320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.095104, 34.323650, 29.589573>,  <37.867756, 34.372662, 29.530325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.095104, 34.323650, 29.589573>,  <38.474018, 34.241966, 29.688320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095104, 34.323650, 29.589573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295784, 0.261348, -0.918809,
		-0.123114, -0.943396, -0.307974,
		-0.947288, 0.204212, -0.246866,
		37.810917, 34.384914, 29.515512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397820, 34.073406, 28.967365>,  <38.474018, 34.241966, 29.688320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397820, 34.073406, 28.967365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.071278, 34.296280, 29.028168>,  <37.875351, 34.430004, 29.064650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.071278, 34.296280, 29.028168>,  <38.397820, 34.073406, 28.967365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071278, 34.296280, 29.028168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105735, 0.402935, -0.909100,
		-0.567783, -0.726080, -0.387853,
		-0.816359, 0.557182, 0.152008,
		37.826370, 34.463436, 29.073771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931080, 34.007641, 28.347958>,  <38.397820, 34.073406, 28.967365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931080, 34.007641, 28.347958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.874901, 34.361439, 28.525921>,  <37.841194, 34.573719, 28.632698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.874901, 34.361439, 28.525921>,  <37.931080, 34.007641, 28.347958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874901, 34.361439, 28.525921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112118, 0.460678, -0.880457,
		-0.983719, -0.073777, -0.163870,
		-0.140449, 0.884496, 0.444906,
		37.832767, 34.626789, 28.659393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417721, 34.334305, 27.956785>,  <37.931080, 34.007641, 28.347958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417721, 34.334305, 27.956785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589428, 34.634605, 28.157621>,  <37.692451, 34.814785, 28.278124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589428, 34.634605, 28.157621>,  <37.417721, 34.334305, 27.956785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589428, 34.634605, 28.157621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065065, 0.580177, -0.811887,
		-0.900831, 0.315847, 0.297899,
		0.429266, 0.750756, 0.502091,
		37.718208, 34.859833, 28.308249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179054, 35.048363, 27.561560>,  <37.417721, 34.334305, 27.956785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179054, 35.048363, 27.561560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489212, 35.118183, 27.804310>,  <37.675308, 35.160076, 27.949961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489212, 35.118183, 27.804310>,  <37.179054, 35.048363, 27.561560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489212, 35.118183, 27.804310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306675, 0.736008, -0.603525,
		-0.552010, 0.654083, 0.517166,
		0.775393, 0.174550, 0.606875,
		37.721828, 35.170547, 27.986372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157566, 35.759563, 27.842623>,  <37.179054, 35.048363, 27.561560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157566, 35.759563, 27.842623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.541576, 35.650711, 27.868872>,  <37.771980, 35.585400, 27.884621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.541576, 35.650711, 27.868872>,  <37.157566, 35.759563, 27.842623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541576, 35.650711, 27.868872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258772, 0.773335, -0.578783,
		0.106753, 0.572626, 0.812837,
		0.960021, -0.272126, 0.065624,
		37.829582, 35.569073, 27.888559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560165, 36.371647, 27.959187>,  <37.157566, 35.759563, 27.842623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560165, 36.371647, 27.959187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.824127, 36.107777, 27.815327>,  <37.982506, 35.949455, 27.729012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.824127, 36.107777, 27.815327>,  <37.560165, 36.371647, 27.959187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824127, 36.107777, 27.815327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277715, 0.658933, -0.699057,
		0.698137, 0.361433, 0.618038,
		0.659908, -0.659676, -0.359650,
		38.022099, 35.909874, 27.707432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187988, 36.770065, 27.847548>,  <37.560165, 36.371647, 27.959187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187988, 36.770065, 27.847548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237431, 36.448772, 27.614466>,  <38.267094, 36.255997, 27.474617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237431, 36.448772, 27.614466>,  <38.187988, 36.770065, 27.847548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237431, 36.448772, 27.614466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436631, 0.571333, -0.694933,
		0.891109, -0.168531, 0.421333,
		0.123604, -0.803228, -0.582706,
		38.274513, 36.207806, 27.439653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877457, 36.780556, 27.529486>,  <38.187988, 36.770065, 27.847548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877457, 36.780556, 27.529486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.684700, 36.521816, 27.293055>,  <38.569046, 36.366573, 27.151196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.684700, 36.521816, 27.293055>,  <38.877457, 36.780556, 27.529486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684700, 36.521816, 27.293055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421359, 0.420389, -0.803574,
		0.768271, -0.636289, 0.069974,
		-0.481889, -0.646846, -0.591078,
		38.540134, 36.327763, 27.115730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383904, 36.677551, 27.134350>,  <38.877457, 36.780556, 27.529486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383904, 36.677551, 27.134350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.037540, 36.610809, 26.945728>,  <38.829723, 36.570763, 26.832556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.037540, 36.610809, 26.945728>,  <39.383904, 36.677551, 27.134350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037540, 36.610809, 26.945728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291820, 0.597152, -0.747162,
		0.406255, -0.784583, -0.468387,
		-0.865908, -0.166854, -0.471553,
		38.777767, 36.560753, 26.804262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979710, 36.132294, 27.214769>,  <39.383904, 36.677551, 27.134350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979710, 36.132294, 27.214769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.367153, 36.215374, 27.160135>,  <40.599621, 36.265221, 27.127354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.367153, 36.215374, 27.160135>,  <39.979710, 36.132294, 27.214769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367153, 36.215374, 27.160135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247155, -0.745734, 0.618705,
		0.026649, -0.633042, -0.773659,
		0.968610, 0.207701, -0.136586,
		40.657738, 36.277683, 27.119160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241184, 35.450871, 27.155376>,  <39.979710, 36.132294, 27.214769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241184, 35.450871, 27.155376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.538177, 35.698540, 27.257626>,  <40.716373, 35.847141, 27.318975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.538177, 35.698540, 27.257626>,  <40.241184, 35.450871, 27.155376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538177, 35.698540, 27.257626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268955, -0.625052, 0.732784,
		0.613497, -0.475330, -0.630621,
		0.742486, 0.619169, 0.255625,
		40.760921, 35.884289, 27.334312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845806, 34.983322, 27.151764>,  <40.241184, 35.450871, 27.155376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845806, 34.983322, 27.151764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.880943, 35.309486, 27.380638>,  <40.902027, 35.505184, 27.517963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.880943, 35.309486, 27.380638>,  <40.845806, 34.983322, 27.151764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880943, 35.309486, 27.380638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312925, -0.567916, 0.761281,
		0.945707, 0.112179, -0.305048,
		0.087841, 0.815406, 0.572186,
		40.907295, 35.554108, 27.552294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482613, 34.904541, 27.472017>,  <40.845806, 34.983322, 27.151764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482613, 34.904541, 27.472017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.323807, 35.183147, 27.711098>,  <41.228523, 35.350311, 27.854546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.323807, 35.183147, 27.711098>,  <41.482613, 34.904541, 27.472017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323807, 35.183147, 27.711098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024832, -0.642833, 0.765604,
		0.917476, 0.318798, 0.237919,
		-0.397015, 0.696515, 0.597700,
		41.204700, 35.392101, 27.890408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855961, 34.884903, 27.969351>,  <41.482613, 34.904541, 27.472017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855961, 34.884903, 27.969351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.540173, 35.056534, 28.144907>,  <41.350700, 35.159512, 28.250240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.540173, 35.056534, 28.144907>,  <41.855961, 34.884903, 27.969351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540173, 35.056534, 28.144907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074165, -0.643129, 0.762158,
		0.609292, 0.634251, 0.475908,
		-0.789470, 0.429081, 0.438892,
		41.303333, 35.185257, 28.276575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978271, 34.820061, 28.654804>,  <41.855961, 34.884903, 27.969351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978271, 34.820061, 28.654804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.588646, 34.910526, 28.657635>,  <41.354870, 34.964806, 28.659332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.588646, 34.910526, 28.657635>,  <41.978271, 34.820061, 28.654804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588646, 34.910526, 28.657635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112723, -0.512116, 0.851487,
		0.196203, 0.828604, 0.524328,
		-0.974063, 0.226168, 0.007076,
		41.296429, 34.978378, 28.659758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733147, 35.213066, 29.331078>,  <41.978271, 34.820061, 28.654804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733147, 35.213066, 29.331078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.440769, 35.003357, 29.156330>,  <41.265343, 34.877533, 29.051481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.440769, 35.003357, 29.156330>,  <41.733147, 35.213066, 29.331078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440769, 35.003357, 29.156330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068652, -0.580427, 0.811413,
		-0.678973, 0.623092, 0.388269,
		-0.730947, -0.524272, -0.436871,
		41.221485, 34.846077, 29.025269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242928, 35.145538, 29.849384>,  <41.733147, 35.213066, 29.331078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242928, 35.145538, 29.849384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.167065, 34.850765, 29.589859>,  <41.121548, 34.673901, 29.434145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.167065, 34.850765, 29.589859>,  <41.242928, 35.145538, 29.849384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167065, 34.850765, 29.589859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098205, -0.643254, 0.759329,
		-0.976927, 0.207729, 0.049628,
		-0.189658, -0.736935, -0.648812,
		41.110168, 34.629684, 29.395216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752598, 34.881264, 30.191013>,  <41.242928, 35.145538, 29.849384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752598, 34.881264, 30.191013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.922699, 34.638683, 29.922274>,  <41.024761, 34.493137, 29.761030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.922699, 34.638683, 29.922274>,  <40.752598, 34.881264, 30.191013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922699, 34.638683, 29.922274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101482, -0.769581, 0.630433,
		-0.899367, -0.199913, -0.388810,
		0.425253, -0.606448, -0.671848,
		41.050274, 34.456749, 29.720718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240913, 34.385567, 30.022581>,  <40.752598, 34.881264, 30.191013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240913, 34.385567, 30.022581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.599400, 34.221836, 29.954170>,  <40.814491, 34.123600, 29.913124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.599400, 34.221836, 29.954170>,  <40.240913, 34.385567, 30.022581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599400, 34.221836, 29.954170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167091, -0.668602, 0.724604,
		-0.410946, -0.620826, -0.667607,
		0.896216, -0.409325, -0.171025,
		40.868263, 34.099037, 29.902863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132828, 33.717770, 30.146261>,  <40.240913, 34.385567, 30.022581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132828, 33.717770, 30.146261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.532043, 33.735668, 30.163792>,  <40.771572, 33.746407, 30.174309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.532043, 33.735668, 30.163792>,  <40.132828, 33.717770, 30.146261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532043, 33.735668, 30.163792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016662, -0.484835, 0.874447,
		0.060373, -0.873460, -0.483137,
		0.998036, 0.044743, 0.043825,
		40.831455, 33.749092, 30.176939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380890, 33.025471, 30.354248>,  <40.132828, 33.717770, 30.146261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380890, 33.025471, 30.354248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.665054, 33.289082, 30.453045>,  <40.835552, 33.447247, 30.512323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.665054, 33.289082, 30.453045>,  <40.380890, 33.025471, 30.354248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665054, 33.289082, 30.453045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089632, -0.432808, 0.897019,
		0.698056, -0.615115, -0.366541,
		0.710412, 0.659023, 0.246991,
		40.878178, 33.486790, 30.527142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929424, 32.688435, 30.607323>,  <40.380890, 33.025471, 30.354248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929424, 32.688435, 30.607323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.981403, 33.045494, 30.779970>,  <41.012589, 33.259731, 30.883558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.981403, 33.045494, 30.779970>,  <40.929424, 32.688435, 30.607323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981403, 33.045494, 30.779970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032408, -0.431251, 0.901650,
		0.990991, -0.131153, -0.027110,
		0.129946, 0.892649, 0.431616,
		41.020386, 33.313290, 30.909454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301628, 32.515457, 31.239687>,  <40.929424, 32.688435, 30.607323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301628, 32.515457, 31.239687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.202785, 32.898361, 31.299801>,  <41.143478, 33.128105, 31.335869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.202785, 32.898361, 31.299801>,  <41.301628, 32.515457, 31.239687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202785, 32.898361, 31.299801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041462, -0.144505, 0.988635,
		0.968100, 0.250532, -0.003982,
		-0.247110, 0.957263, 0.150283,
		41.128654, 33.185539, 31.344885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.551018, 39.159958, 28.716228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.195568, 39.110703, 28.539513>,  <41.982296, 39.081150, 28.433483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.195568, 39.110703, 28.539513>,  <42.551018, 39.159958, 28.716228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195568, 39.110703, 28.539513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331658, 0.492791, -0.804463,
		0.316773, -0.861390, -0.397066,
		-0.888627, -0.123142, -0.441790,
		41.928982, 39.073761, 28.406975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689636, 38.948441, 28.087061>,  <42.551018, 39.159958, 28.716228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689636, 38.948441, 28.087061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.332546, 39.128559, 28.080523>,  <42.118290, 39.236629, 28.076599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.332546, 39.128559, 28.080523>,  <42.689636, 38.948441, 28.087061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332546, 39.128559, 28.080523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276218, 0.518228, -0.809409,
		-0.356002, -0.727099, -0.587017,
		-0.892729, 0.450296, -0.016348,
		42.064728, 39.263649, 28.075619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294338, 38.875336, 27.494604>,  <42.689636, 38.948441, 28.087061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294338, 38.875336, 27.494604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.137070, 39.218456, 27.627022>,  <42.042709, 39.424328, 27.706472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.137070, 39.218456, 27.627022>,  <42.294338, 38.875336, 27.494604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137070, 39.218456, 27.627022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230189, 0.440403, -0.867789,
		-0.890187, -0.264984, -0.370610,
		-0.393167, 0.857805, 0.331044,
		42.019119, 39.475800, 27.726336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060291, 39.148651, 26.905178>,  <42.294338, 38.875336, 27.494604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060291, 39.148651, 26.905178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.060196, 39.452515, 27.165306>,  <42.060139, 39.634834, 27.321383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.060196, 39.452515, 27.165306>,  <42.060291, 39.148651, 26.905178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060196, 39.452515, 27.165306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260084, 0.627986, -0.733478,
		-0.965586, 0.168966, -0.197723,
		-0.000235, 0.759661, 0.650320,
		42.060127, 39.680412, 27.360401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492325, 39.575687, 26.695108>,  <42.060291, 39.148651, 26.905178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492325, 39.575687, 26.695108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.754940, 39.788212, 26.909273>,  <41.912510, 39.915726, 27.037771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.754940, 39.788212, 26.909273>,  <41.492325, 39.575687, 26.695108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754940, 39.788212, 26.909273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246382, 0.519831, -0.817968,
		-0.712916, 0.668946, 0.210386,
		0.656541, 0.531307, 0.535412,
		41.951904, 39.947605, 27.069897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395180, 40.251179, 26.419832>,  <41.492325, 39.575687, 26.695108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395180, 40.251179, 26.419832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.747387, 40.257557, 26.609333>,  <41.958710, 40.261383, 26.723034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.747387, 40.257557, 26.609333>,  <41.395180, 40.251179, 26.419832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747387, 40.257557, 26.609333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327980, 0.701076, -0.633183,
		-0.342235, 0.712908, 0.612076,
		0.880513, 0.015949, 0.473753,
		42.011539, 40.262341, 26.751459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516960, 40.928364, 26.606951>,  <41.395180, 40.251179, 26.419832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516960, 40.928364, 26.606951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.875000, 40.752422, 26.577726>,  <42.089825, 40.646858, 26.560192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.875000, 40.752422, 26.577726>,  <41.516960, 40.928364, 26.606951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875000, 40.752422, 26.577726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232097, 0.599543, -0.765949,
		0.380705, 0.668641, 0.638736,
		0.895095, -0.439849, -0.073059,
		42.143528, 40.620468, 26.555809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039585, 41.554893, 26.452356>,  <41.516960, 40.928364, 26.606951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039585, 41.554893, 26.452356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.221455, 41.219303, 26.332764>,  <42.330574, 41.017948, 26.261007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.221455, 41.219303, 26.332764>,  <42.039585, 41.554893, 26.452356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221455, 41.219303, 26.332764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380210, 0.486395, -0.786677,
		0.805428, 0.244003, 0.540137,
		0.454671, -0.838977, -0.298984,
		42.357857, 40.967609, 26.243069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758560, 41.752316, 26.283926>,  <42.039585, 41.554893, 26.452356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758560, 41.752316, 26.283926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.653717, 41.409775, 26.105951>,  <42.590813, 41.204250, 25.999166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.653717, 41.409775, 26.105951>,  <42.758560, 41.752316, 26.283926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653717, 41.409775, 26.105951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270599, 0.377342, -0.885658,
		0.926324, -0.352537, 0.132823,
		-0.262107, -0.856348, -0.444937,
		42.575085, 41.152870, 25.972469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294811, 41.716599, 25.676640>,  <42.758560, 41.752316, 26.283926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294811, 41.716599, 25.676640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.032070, 41.424858, 25.600119>,  <42.874428, 41.249813, 25.554205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.032070, 41.424858, 25.600119>,  <43.294811, 41.716599, 25.676640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032070, 41.424858, 25.600119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192713, 0.082901, -0.977747,
		0.728979, -0.679099, 0.086102,
		-0.656849, -0.729350, -0.191304,
		42.835014, 41.206055, 25.542727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598858, 41.322735, 25.153076>,  <43.294811, 41.716599, 25.676640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598858, 41.322735, 25.153076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.215263, 41.214222, 25.120190>,  <42.985107, 41.149113, 25.100458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.215263, 41.214222, 25.120190>,  <43.598858, 41.322735, 25.153076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215263, 41.214222, 25.120190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055640, 0.104252, -0.992993,
		0.277952, -0.956837, -0.084882,
		-0.958982, -0.271282, -0.082215,
		42.927570, 41.132839, 25.095526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576660, 40.739708, 24.614744>,  <43.598858, 41.322735, 25.153076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576660, 40.739708, 24.614744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.203842, 40.875084, 24.666508>,  <42.980152, 40.956310, 24.697565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.203842, 40.875084, 24.666508>,  <43.576660, 40.739708, 24.614744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203842, 40.875084, 24.666508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108114, 0.081113, -0.990824,
		-0.345830, -0.937486, -0.039011,
		-0.932047, 0.338439, 0.129407,
		42.924229, 40.976616, 24.705330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186234, 40.476665, 24.107204>,  <43.576660, 40.739708, 24.614744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186234, 40.476665, 24.107204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.024723, 40.812889, 24.251663>,  <42.927818, 41.014622, 24.338339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.024723, 40.812889, 24.251663>,  <43.186234, 40.476665, 24.107204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024723, 40.812889, 24.251663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020710, 0.403055, -0.914941,
		-0.914624, -0.361952, -0.180152,
		-0.403776, 0.840558, 0.361148,
		42.903591, 41.065056, 24.360008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530708, 40.753967, 23.720112>,  <43.186234, 40.476665, 24.107204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530708, 40.753967, 23.720112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.736061, 41.048386, 23.896601>,  <42.859272, 41.225037, 24.002495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.736061, 41.048386, 23.896601>,  <42.530708, 40.753967, 23.720112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736061, 41.048386, 23.896601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010151, 0.508905, -0.860763,
		-0.858098, 0.446382, 0.253792,
		0.513385, 0.736043, 0.441222,
		42.890076, 41.269199, 24.028967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405991, 40.070759, 23.368000>,  <42.530708, 40.753967, 23.720112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405991, 40.070759, 23.368000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.188927, 39.877750, 23.092989>,  <42.058689, 39.761948, 22.927982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.188927, 39.877750, 23.092989>,  <42.405991, 40.070759, 23.368000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188927, 39.877750, 23.092989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473035, -0.500823, 0.724854,
		-0.694084, 0.718576, 0.043530,
		-0.542664, -0.482519, -0.687525,
		42.026127, 39.732994, 22.886732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691566, 40.032745, 23.503740>,  <42.405991, 40.070759, 23.368000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691566, 40.032745, 23.503740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.737709, 39.718197, 23.260984>,  <41.765396, 39.529469, 23.115332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.737709, 39.718197, 23.260984>,  <41.691566, 40.032745, 23.503740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737709, 39.718197, 23.260984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512204, -0.570569, 0.641949,
		-0.851082, 0.236796, -0.468602,
		0.115359, -0.786371, -0.606889,
		41.772316, 39.482285, 23.078918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993752, 39.775822, 23.478256>,  <41.691566, 40.032745, 23.503740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993752, 39.775822, 23.478256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.248714, 39.485363, 23.375162>,  <41.401691, 39.311089, 23.313307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.248714, 39.485363, 23.375162>,  <40.993752, 39.775822, 23.478256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248714, 39.485363, 23.375162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564923, -0.667872, 0.484570,
		-0.524002, -0.163268, -0.835922,
		0.637404, -0.726148, -0.257733,
		41.439934, 39.267517, 23.297842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468342, 39.252598, 23.397175>,  <40.993752, 39.775822, 23.478256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468342, 39.252598, 23.397175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.822063, 39.074471, 23.453316>,  <41.034298, 38.967594, 23.487001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.822063, 39.074471, 23.453316>,  <40.468342, 39.252598, 23.397175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822063, 39.074471, 23.453316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439531, -0.692514, 0.572046,
		-0.157545, -0.567552, -0.808124,
		0.884304, -0.445318, 0.140355,
		41.087353, 38.940876, 23.495422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393490, 38.535030, 23.536915>,  <40.468342, 39.252598, 23.397175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393490, 38.535030, 23.536915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.769588, 38.594074, 23.659645>,  <40.995247, 38.629501, 23.733284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.769588, 38.594074, 23.659645>,  <40.393490, 38.535030, 23.536915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769588, 38.594074, 23.659645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071995, -0.794567, 0.602893,
		0.332789, -0.588959, -0.736463,
		0.940249, 0.147614, 0.306825,
		41.051662, 38.638359, 23.751692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672218, 37.974003, 23.560268>,  <40.393490, 38.535030, 23.536915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672218, 37.974003, 23.560268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.916798, 38.159882, 23.816452>,  <41.063545, 38.271408, 23.970161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.916798, 38.159882, 23.816452>,  <40.672218, 37.974003, 23.560268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916798, 38.159882, 23.816452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049400, -0.830229, 0.555229,
		0.789741, -0.307855, -0.530598,
		0.611448, 0.464698, 0.640458,
		41.100231, 38.299290, 24.008589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252964, 37.480846, 23.742262>,  <40.672218, 37.974003, 23.560268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252964, 37.480846, 23.742262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.243038, 37.756844, 24.031620>,  <41.237083, 37.922440, 24.205235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.243038, 37.756844, 24.031620>,  <41.252964, 37.480846, 23.742262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243038, 37.756844, 24.031620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093810, -0.718816, 0.688842,
		0.995281, 0.084952, -0.046894,
		-0.024811, 0.689990, 0.723393,
		41.235596, 37.963840, 24.248638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799671, 37.333969, 24.174364>,  <41.252964, 37.480846, 23.742262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799671, 37.333969, 24.174364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.564548, 37.569946, 24.395796>,  <41.423477, 37.711533, 24.528654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.564548, 37.569946, 24.395796>,  <41.799671, 37.333969, 24.174364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564548, 37.569946, 24.395796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070174, -0.718876, 0.691587,
		0.805954, 0.367671, 0.463957,
		-0.587804, 0.589945, 0.553580,
		41.388206, 37.746929, 24.561871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058136, 37.345654, 24.845709>,  <41.799671, 37.333969, 24.174364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058136, 37.345654, 24.845709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.683163, 37.449703, 24.938272>,  <41.458179, 37.512135, 24.993811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.683163, 37.449703, 24.938272>,  <42.058136, 37.345654, 24.845709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683163, 37.449703, 24.938272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021073, -0.705838, 0.708060,
		0.347520, 0.658884, 0.667159,
		-0.937436, 0.260124, 0.231408,
		41.401932, 37.527740, 25.007694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081436, 37.440533, 25.472298>,  <42.058136, 37.345654, 24.845709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081436, 37.440533, 25.472298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.686554, 37.401669, 25.421726>,  <41.449623, 37.378349, 25.391384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.686554, 37.401669, 25.421726>,  <42.081436, 37.440533, 25.472298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686554, 37.401669, 25.421726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046127, -0.584984, 0.809732,
		-0.152628, 0.805205, 0.573019,
		-0.987207, -0.097156, -0.126427,
		41.390392, 37.372520, 25.383799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744915, 37.561466, 26.107561>,  <42.081436, 37.440533, 25.472298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744915, 37.561466, 26.107561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465435, 37.343544, 25.922089>,  <41.297745, 37.212791, 25.810804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.465435, 37.343544, 25.922089>,  <41.744915, 37.561466, 26.107561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465435, 37.343544, 25.922089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235231, -0.437143, 0.868085,
		-0.675635, 0.715605, 0.177277,
		-0.698702, -0.544808, -0.463682,
		41.255825, 37.180103, 25.782984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149906, 37.764729, 26.380985>,  <41.744915, 37.561466, 26.107561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149906, 37.764729, 26.380985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.089020, 37.401665, 26.224529>,  <41.052486, 37.183826, 26.130655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.089020, 37.401665, 26.224529>,  <41.149906, 37.764729, 26.380985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089020, 37.401665, 26.224529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404649, -0.303828, 0.862524,
		-0.901714, 0.289566, -0.321034,
		-0.152218, -0.907656, -0.391139,
		41.043354, 37.129368, 26.107187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445480, 37.482567, 26.521229>,  <41.149906, 37.764729, 26.380985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445480, 37.482567, 26.521229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.668362, 37.163319, 26.429560>,  <40.802090, 36.971767, 26.374557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.668362, 37.163319, 26.429560>,  <40.445480, 37.482567, 26.521229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668362, 37.163319, 26.429560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253480, -0.426299, 0.868341,
		-0.790741, -0.425753, -0.439845,
		0.557204, -0.798125, -0.229172,
		40.835522, 36.923882, 26.360807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035393, 36.948666, 26.685419>,  <40.445480, 37.482567, 26.521229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035393, 36.948666, 26.685419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.400467, 36.785286, 26.680058>,  <40.619511, 36.687260, 26.676842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.400467, 36.785286, 26.680058>,  <40.035393, 36.948666, 26.685419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400467, 36.785286, 26.680058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196195, -0.466697, 0.862382,
		-0.358495, -0.784451, -0.506081,
		0.912682, -0.408450, -0.013403,
		40.674271, 36.662750, 26.676037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515057, 36.453690, 26.410887>,  <40.035393, 36.948666, 26.685419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515057, 36.453690, 26.410887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.135803, 36.576157, 26.376717>,  <38.908249, 36.649635, 26.356215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.135803, 36.576157, 26.376717>,  <39.515057, 36.453690, 26.410887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135803, 36.576157, 26.376717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214171, 0.416754, -0.883429,
		-0.234873, -0.855909, -0.460712,
		-0.948138, 0.306165, -0.085426,
		38.851360, 36.668007, 26.351089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382919, 36.285419, 25.711544>,  <39.515057, 36.453690, 26.410887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382919, 36.285419, 25.711544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.066467, 36.514168, 25.798338>,  <38.876598, 36.651417, 25.850414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.066467, 36.514168, 25.798338>,  <39.382919, 36.285419, 25.711544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066467, 36.514168, 25.798338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028960, 0.319335, -0.947199,
		-0.610967, -0.755638, -0.236073,
		-0.791126, 0.571871, 0.216986,
		38.829128, 36.685730, 25.863434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872520, 36.226055, 25.153061>,  <39.382919, 36.285419, 25.711544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872520, 36.226055, 25.153061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.739471, 36.560276, 25.327974>,  <38.659641, 36.760807, 25.432922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.739471, 36.560276, 25.327974>,  <38.872520, 36.226055, 25.153061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739471, 36.560276, 25.327974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122856, 0.421344, -0.898541,
		-0.935024, -0.352596, -0.037495,
		-0.332620, 0.835550, 0.437286,
		38.639687, 36.810940, 25.459160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329311, 36.442051, 24.807133>,  <38.872520, 36.226055, 25.153061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329311, 36.442051, 24.807133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.461891, 36.782906, 24.969120>,  <38.541439, 36.987419, 25.066313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.461891, 36.782906, 24.969120>,  <38.329311, 36.442051, 24.807133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461891, 36.782906, 24.969120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194036, 0.481623, -0.854628,
		-0.923305, 0.204687, 0.324980,
		0.331449, 0.852140, 0.404968,
		38.561325, 37.038548, 25.090611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913261, 36.925819, 24.549688>,  <38.329311, 36.442051, 24.807133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913261, 36.925819, 24.549688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.207592, 37.159676, 24.686367>,  <38.384190, 37.299992, 24.768373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.207592, 37.159676, 24.686367>,  <37.913261, 36.925819, 24.549688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207592, 37.159676, 24.686367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193246, 0.664900, -0.721502,
		-0.649016, 0.464866, 0.602228,
		0.735823, 0.584644, 0.341697,
		38.428337, 37.335068, 24.788876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602268, 37.530262, 24.526491>,  <37.913261, 36.925819, 24.549688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602268, 37.530262, 24.526491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.999149, 37.579014, 24.516083>,  <38.237278, 37.608265, 24.509838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.999149, 37.579014, 24.516083>,  <37.602268, 37.530262, 24.526491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999149, 37.579014, 24.516083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076268, 0.428723, -0.900211,
		-0.098559, 0.895178, 0.434676,
		0.992204, 0.121875, -0.026019,
		38.296810, 37.615578, 24.508278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744312, 38.162205, 24.381420>,  <37.602268, 37.530262, 24.526491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744312, 38.162205, 24.381420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.075207, 37.988743, 24.238522>,  <38.273743, 37.884666, 24.152782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.075207, 37.988743, 24.238522>,  <37.744312, 38.162205, 24.381420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075207, 37.988743, 24.238522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120122, 0.484629, -0.866433,
		0.548861, 0.759659, 0.348812,
		0.827238, -0.433651, -0.357246,
		38.323380, 37.858646, 24.131348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329914, 38.780792, 24.450203>,  <37.744312, 38.162205, 24.381420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329914, 38.780792, 24.450203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940212, 38.839706, 24.381935>,  <36.706390, 38.875057, 24.340975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940212, 38.839706, 24.381935>,  <37.329914, 38.780792, 24.450203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940212, 38.839706, 24.381935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220220, -0.459831, 0.860267,
		0.048228, 0.875706, 0.480430,
		-0.974257, 0.147289, -0.170671,
		36.647934, 38.883892, 24.330734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061829, 38.955654, 25.064072>,  <37.329914, 38.780792, 24.450203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061829, 38.955654, 25.064072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.738266, 38.805553, 24.883028>,  <36.544128, 38.715492, 24.774401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.738266, 38.805553, 24.883028>,  <37.061829, 38.955654, 25.064072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738266, 38.805553, 24.883028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355335, -0.301294, 0.884850,
		-0.468410, 0.876589, 0.110378,
		-0.808906, -0.375251, -0.452611,
		36.495594, 38.692978, 24.747244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538609, 39.032738, 25.464182>,  <37.061829, 38.955654, 25.064072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538609, 39.032738, 25.464182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.362522, 38.769707, 25.219625>,  <36.256870, 38.611889, 25.072891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.362522, 38.769707, 25.219625>,  <36.538609, 39.032738, 25.464182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362522, 38.769707, 25.219625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335631, -0.511046, 0.791318,
		-0.832801, 0.553556, 0.004269,
		-0.440221, -0.657578, -0.611390,
		36.230457, 38.572433, 25.036209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833096, 39.017033, 25.692726>,  <36.538609, 39.032738, 25.464182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833096, 39.017033, 25.692726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921528, 38.682869, 25.491442>,  <35.974586, 38.482372, 25.370670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921528, 38.682869, 25.491442>,  <35.833096, 39.017033, 25.692726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921528, 38.682869, 25.491442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299204, -0.549197, 0.780295,
		-0.928225, -0.021944, -0.371373,
		0.221079, -0.835405, -0.503213,
		35.987850, 38.432247, 25.340479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323292, 38.541084, 25.931141>,  <35.833096, 39.017033, 25.692726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323292, 38.541084, 25.931141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.561043, 38.279873, 25.743406>,  <35.703693, 38.123146, 25.630766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.561043, 38.279873, 25.743406>,  <35.323292, 38.541084, 25.931141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561043, 38.279873, 25.743406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240222, -0.701143, 0.671336,
		-0.767473, -0.286279, -0.573612,
		0.594373, -0.653026, -0.469338,
		35.739357, 38.083965, 25.602606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976234, 37.998718, 25.971567>,  <35.323292, 38.541084, 25.931141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976234, 37.998718, 25.971567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.344662, 37.847694, 25.933435>,  <35.565716, 37.757080, 25.910557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.344662, 37.847694, 25.933435>,  <34.976234, 37.998718, 25.971567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344662, 37.847694, 25.933435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205209, -0.678668, 0.705194,
		-0.330950, -0.629968, -0.702576,
		0.921065, -0.377559, -0.095330,
		35.620983, 37.734428, 25.904837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864128, 37.338425, 25.788923>,  <34.976234, 37.998718, 25.971567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864128, 37.338425, 25.788923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.233299, 37.360519, 25.941319>,  <35.454803, 37.373775, 26.032757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.233299, 37.360519, 25.941319>,  <34.864128, 37.338425, 25.788923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233299, 37.360519, 25.941319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195493, -0.785314, 0.587422,
		0.331642, -0.616629, -0.713990,
		0.922928, 0.055234, 0.380990,
		35.510178, 37.377090, 26.055616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.674446, 42.181702, 24.442938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.054340, 42.056576, 24.447807>,  <40.282276, 41.981503, 24.450729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.054340, 42.056576, 24.447807>,  <39.674446, 42.181702, 24.442938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054340, 42.056576, 24.447807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189947, -0.544915, 0.816693,
		-0.248837, -0.777956, -0.576944,
		0.949737, -0.312812, 0.012176,
		40.339260, 41.962730, 24.451460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600834, 41.557938, 24.569380>,  <39.674446, 42.181702, 24.442938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600834, 41.557938, 24.569380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.967331, 41.647762, 24.702084>,  <40.187229, 41.701656, 24.781706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.967331, 41.647762, 24.702084>,  <39.600834, 41.557938, 24.569380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967331, 41.647762, 24.702084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129454, -0.617742, 0.775652,
		0.379122, -0.753636, -0.536934,
		0.916247, 0.224559, 0.331761,
		40.242207, 41.715130, 24.801611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938881, 40.932850, 24.808552>,  <39.600834, 41.557938, 24.569380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938881, 40.932850, 24.808552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.119450, 41.236206, 24.996622>,  <40.227791, 41.418221, 25.109465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.119450, 41.236206, 24.996622>,  <39.938881, 40.932850, 24.808552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119450, 41.236206, 24.996622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190083, -0.433094, 0.881078,
		0.871831, -0.487108, -0.051350,
		0.451420, 0.758390, 0.470176,
		40.254875, 41.463722, 25.137674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078049, 40.662838, 25.459480>,  <39.938881, 40.932850, 24.808552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078049, 40.662838, 25.459480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.131870, 41.054070, 25.523048>,  <40.164162, 41.288807, 25.561190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.131870, 41.054070, 25.523048>,  <40.078049, 40.662838, 25.459480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131870, 41.054070, 25.523048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356254, -0.101907, 0.928815,
		0.924650, -0.181591, 0.334733,
		0.134553, 0.978080, 0.158921,
		40.172237, 41.347492, 25.570724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500912, 40.747196, 26.017065>,  <40.078049, 40.662838, 25.459480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500912, 40.747196, 26.017065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.285389, 41.081444, 25.974298>,  <40.156075, 41.281990, 25.948639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.285389, 41.081444, 25.974298>,  <40.500912, 40.747196, 26.017065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285389, 41.081444, 25.974298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347344, -0.104737, 0.931871,
		0.767489, 0.539235, 0.346680,
		-0.538807, 0.835617, -0.106915,
		40.123745, 41.332130, 25.942225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537983, 40.990601, 26.632696>,  <40.500912, 40.747196, 26.017065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537983, 40.990601, 26.632696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.218185, 41.170055, 26.472933>,  <40.026306, 41.277729, 26.377075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.218185, 41.170055, 26.472933>,  <40.537983, 40.990601, 26.632696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218185, 41.170055, 26.472933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388320, 0.121266, 0.913511,
		0.458270, 0.885449, 0.077262,
		-0.799498, 0.448637, -0.399410,
		39.978336, 41.304646, 26.353109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447823, 41.628941, 26.950020>,  <40.537983, 40.990601, 26.632696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447823, 41.628941, 26.950020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.081226, 41.602013, 26.792280>,  <39.861267, 41.585857, 26.697638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.081226, 41.602013, 26.792280>,  <40.447823, 41.628941, 26.950020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081226, 41.602013, 26.792280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399986, 0.172121, 0.900214,
		0.007274, 0.982773, -0.184674,
		-0.916493, -0.067318, -0.394347,
		39.806278, 41.581818, 26.673977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024700, 41.927849, 27.465408>,  <40.447823, 41.628941, 26.950020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024700, 41.927849, 27.465408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.750706, 41.739170, 27.243313>,  <39.586308, 41.625961, 27.110056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.750706, 41.739170, 27.243313>,  <40.024700, 41.927849, 27.465408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750706, 41.739170, 27.243313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579215, -0.109693, 0.807761,
		-0.441925, 0.874910, -0.198076,
		-0.684991, -0.471698, -0.555237,
		39.545208, 41.597660, 27.076742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435410, 42.352367, 27.427710>,  <40.024700, 41.927849, 27.465408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435410, 42.352367, 27.427710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.271709, 41.995846, 27.349640>,  <39.173489, 41.781933, 27.302797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.271709, 41.995846, 27.349640>,  <39.435410, 42.352367, 27.427710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271709, 41.995846, 27.349640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462732, 0.018385, 0.886308,
		-0.786382, 0.453031, -0.419960,
		-0.409246, -0.891305, -0.195175,
		39.148937, 41.728455, 27.291088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706566, 42.394459, 27.584808>,  <39.435410, 42.352367, 27.427710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706566, 42.394459, 27.584808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.769096, 41.999462, 27.576612>,  <38.806614, 41.762463, 27.571695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.769096, 41.999462, 27.576612>,  <38.706566, 42.394459, 27.584808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769096, 41.999462, 27.576612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579801, -0.108543, 0.807495,
		-0.799620, -0.114353, -0.589518,
		0.156327, -0.987493, -0.020491,
		38.815994, 41.703213, 27.570465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068924, 42.061897, 27.805077>,  <38.706566, 42.394459, 27.584808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068924, 42.061897, 27.805077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359634, 41.795258, 27.871351>,  <38.534061, 41.635277, 27.911116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359634, 41.795258, 27.871351>,  <38.068924, 42.061897, 27.805077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359634, 41.795258, 27.871351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396771, -0.210516, 0.893451,
		-0.560690, -0.715076, -0.417483,
		0.726773, -0.666595, 0.165687,
		38.577667, 41.595280, 27.921057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692623, 41.558510, 28.051071>,  <38.068924, 42.061897, 27.805077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692623, 41.558510, 28.051071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.070225, 41.505024, 28.171726>,  <38.296783, 41.472935, 28.244120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.070225, 41.505024, 28.171726>,  <37.692623, 41.558510, 28.051071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070225, 41.505024, 28.171726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308500, -0.033485, 0.950635,
		-0.117015, -0.990454, -0.072861,
		0.944000, -0.133717, 0.301636,
		38.353424, 41.464912, 28.262217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467152, 41.030769, 27.559883>,  <37.692623, 41.558510, 28.051071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467152, 41.030769, 27.559883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.079544, 41.044449, 27.462048>,  <36.846977, 41.052658, 27.403345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.079544, 41.044449, 27.462048>,  <37.467152, 41.030769, 27.559883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079544, 41.044449, 27.462048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214511, 0.607336, -0.764937,
		0.122388, -0.793709, -0.595859,
		-0.969023, 0.034199, -0.244590,
		36.788837, 41.054710, 27.388670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364883, 40.835930, 26.837927>,  <37.467152, 41.030769, 27.559883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364883, 40.835930, 26.837927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.039726, 41.052830, 26.922937>,  <36.844631, 41.182972, 26.973944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.039726, 41.052830, 26.922937>,  <37.364883, 40.835930, 26.837927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039726, 41.052830, 26.922937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101905, 0.491702, -0.864780,
		-0.573429, -0.681315, -0.454959,
		-0.812892, 0.542252, 0.212528,
		36.795860, 41.215504, 26.986696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915882, 40.743687, 26.235228>,  <37.364883, 40.835930, 26.837927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915882, 40.743687, 26.235228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.806057, 41.079788, 26.422239>,  <36.740162, 41.281448, 26.534447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.806057, 41.079788, 26.422239>,  <36.915882, 40.743687, 26.235228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806057, 41.079788, 26.422239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045215, 0.474396, -0.879149,
		-0.960506, -0.262520, -0.092259,
		-0.274562, 0.840257, 0.467530,
		36.723690, 41.331863, 26.562498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300385, 40.893806, 25.973801>,  <36.915882, 40.743687, 26.235228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300385, 40.893806, 25.973801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.400448, 41.251808, 26.121521>,  <36.460487, 41.466610, 26.210154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.400448, 41.251808, 26.121521>,  <36.300385, 40.893806, 25.973801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400448, 41.251808, 26.121521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187527, 0.418997, -0.888412,
		-0.949870, 0.152991, 0.272654,
		0.250161, 0.895006, 0.369303,
		36.475494, 41.520309, 26.232311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847031, 41.362045, 25.676651>,  <36.300385, 40.893806, 25.973801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847031, 41.362045, 25.676651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.141376, 41.592239, 25.819384>,  <36.317982, 41.730354, 25.905024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.141376, 41.592239, 25.819384>,  <35.847031, 41.362045, 25.676651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141376, 41.592239, 25.819384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085647, 0.601844, -0.794008,
		-0.671693, 0.553718, 0.492163,
		0.735862, 0.575482, 0.356830,
		36.362137, 41.764885, 25.926434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540974, 42.031723, 25.725018>,  <35.847031, 41.362045, 25.676651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540974, 42.031723, 25.725018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.939304, 42.042149, 25.690041>,  <36.178303, 42.048405, 25.669054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.939304, 42.042149, 25.690041>,  <35.540974, 42.031723, 25.725018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939304, 42.042149, 25.690041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089817, 0.448724, -0.889146,
		0.016063, 0.893290, 0.449193,
		0.995829, 0.026063, -0.087440,
		36.238052, 42.049969, 25.663809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665703, 42.646725, 25.532930>,  <35.540974, 42.031723, 25.725018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665703, 42.646725, 25.532930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012207, 42.474476, 25.431618>,  <36.220112, 42.371128, 25.370831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012207, 42.474476, 25.431618>,  <35.665703, 42.646725, 25.532930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012207, 42.474476, 25.431618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077082, 0.616121, -0.783871,
		0.493602, 0.659517, 0.566917,
		0.866265, -0.430620, -0.253282,
		36.272087, 42.345291, 25.355633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191029, 43.177792, 25.363537>,  <35.665703, 42.646725, 25.532930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191029, 43.177792, 25.363537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.318874, 42.839897, 25.191833>,  <36.395580, 42.637161, 25.088812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.318874, 42.839897, 25.191833>,  <36.191029, 43.177792, 25.363537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318874, 42.839897, 25.191833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061154, 0.433688, -0.898985,
		0.945571, 0.313581, 0.086954,
		0.319616, -0.844737, -0.429260,
		36.414761, 42.586475, 25.063055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762741, 43.361816, 24.817873>,  <36.191029, 43.177792, 25.363537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762741, 43.361816, 24.817873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.615730, 43.000187, 24.730627>,  <36.527523, 42.783211, 24.678280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.615730, 43.000187, 24.730627>,  <36.762741, 43.361816, 24.817873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615730, 43.000187, 24.730627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008300, 0.231329, -0.972840,
		0.929974, -0.359359, -0.077516,
		-0.367531, -0.904073, -0.218113,
		36.505470, 42.728966, 24.665194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044991, 43.259991, 24.108364>,  <36.762741, 43.361816, 24.817873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044991, 43.259991, 24.108364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.811207, 42.935947, 24.126867>,  <36.670937, 42.741524, 24.137970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.811207, 42.935947, 24.126867>,  <37.044991, 43.259991, 24.108364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811207, 42.935947, 24.126867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028003, -0.036839, -0.998929,
		0.810942, -0.585126, -0.001155,
		-0.584456, -0.810105, 0.046260,
		36.635868, 42.692917, 24.140745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296501, 42.801659, 23.584789>,  <37.044991, 43.259991, 24.108364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296501, 42.801659, 23.584789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.918217, 42.701103, 23.667183>,  <36.691246, 42.640770, 23.716619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.918217, 42.701103, 23.667183>,  <37.296501, 42.801659, 23.584789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918217, 42.701103, 23.667183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226329, 0.054580, -0.972521,
		0.233238, -0.966346, -0.108513,
		-0.945714, -0.251388, 0.205982,
		36.634502, 42.625687, 23.728977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101383, 42.376102, 23.103947>,  <37.296501, 42.801659, 23.584789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101383, 42.376102, 23.103947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.770592, 42.543083, 23.254595>,  <36.572117, 42.643272, 23.344984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.770592, 42.543083, 23.254595>,  <37.101383, 42.376102, 23.103947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770592, 42.543083, 23.254595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281578, 0.272288, -0.920094,
		-0.486645, -0.866944, -0.107630,
		-0.826977, 0.417453, 0.376621,
		36.522499, 42.668320, 23.367580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521637, 42.178734, 22.594631>,  <37.101383, 42.376102, 23.103947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521637, 42.178734, 22.594631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.432064, 42.490898, 22.828146>,  <36.378319, 42.678196, 22.968254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.432064, 42.490898, 22.828146>,  <36.521637, 42.178734, 22.594631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432064, 42.490898, 22.828146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344734, 0.496847, -0.796430,
		-0.911599, -0.379598, 0.157775,
		-0.223933, 0.780415, 0.583785,
		36.364883, 42.725021, 23.003283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525791, 41.970047, 23.294287>,  <36.521637, 42.178734, 22.594631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525791, 41.970047, 23.294287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435150, 41.751347, 22.971867>,  <36.380764, 41.620125, 22.778416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435150, 41.751347, 22.971867>,  <36.525791, 41.970047, 23.294287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435150, 41.751347, 22.971867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121616, -0.836982, 0.533545,
		-0.966365, 0.022875, 0.256156,
		-0.226603, -0.546752, -0.806048,
		36.367168, 41.587322, 22.730053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961094, 41.380959, 23.442814>,  <36.525791, 41.970047, 23.294287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961094, 41.380959, 23.442814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.086399, 41.244499, 23.088305>,  <36.161583, 41.162624, 22.875599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.086399, 41.244499, 23.088305>,  <35.961094, 41.380959, 23.442814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086399, 41.244499, 23.088305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114384, -0.912900, 0.391830,
		-0.942754, -0.224120, -0.246953,
		0.313260, -0.341151, -0.886275,
		36.180378, 41.142155, 22.822422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436790, 41.029835, 23.192162>,  <35.961094, 41.380959, 23.442814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436790, 41.029835, 23.192162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.796192, 40.923454, 23.052473>,  <36.011833, 40.859627, 22.968660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.796192, 40.923454, 23.052473>,  <35.436790, 41.029835, 23.192162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796192, 40.923454, 23.052473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055736, -0.858245, 0.510204,
		-0.435409, -0.438957, -0.785962,
		0.898506, -0.265953, -0.349222,
		36.065742, 40.843670, 22.947706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380730, 40.271282, 23.093616>,  <35.436790, 41.029835, 23.192162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380730, 40.271282, 23.093616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.770088, 40.357540, 23.124577>,  <36.003704, 40.409294, 23.143152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.770088, 40.357540, 23.124577>,  <35.380730, 40.271282, 23.093616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770088, 40.357540, 23.124577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132625, -0.805808, 0.577135,
		0.186825, -0.551518, -0.812973,
		0.973400, 0.215644, 0.077400,
		36.062107, 40.422234, 23.147797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714500, 39.562302, 22.921244>,  <35.380730, 40.271282, 23.093616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714500, 39.562302, 22.921244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.018959, 39.778835, 23.064135>,  <36.201633, 39.908756, 23.149870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.018959, 39.778835, 23.064135>,  <35.714500, 39.562302, 22.921244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018959, 39.778835, 23.064135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192695, -0.714663, 0.672403,
		0.619292, -0.442962, -0.648277,
		0.761148, 0.541333, 0.357228,
		36.247303, 39.941235, 23.171303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202404, 39.089584, 22.880867>,  <35.714500, 39.562302, 22.921244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202404, 39.089584, 22.880867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.335350, 39.373028, 23.129835>,  <36.415119, 39.543095, 23.279217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.335350, 39.373028, 23.129835>,  <36.202404, 39.089584, 22.880867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335350, 39.373028, 23.129835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292255, -0.704832, 0.646373,
		0.896728, -0.032927, -0.441356,
		0.332365, 0.708609, 0.622420,
		36.435059, 39.585609, 23.316561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917343, 38.829887, 23.103718>,  <36.202404, 39.089584, 22.880867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917343, 38.829887, 23.103718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.784966, 39.101219, 23.366121>,  <36.705540, 39.264019, 23.523563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.784966, 39.101219, 23.366121>,  <36.917343, 38.829887, 23.103718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784966, 39.101219, 23.366121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055949, -0.708064, 0.703928,
		0.941990, 0.196258, 0.272281,
		-0.330944, 0.678328, 0.656009,
		36.685684, 39.304718, 23.562923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270531, 38.631802, 23.690718>,  <36.917343, 38.829887, 23.103718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270531, 38.631802, 23.690718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.946629, 38.839634, 23.799767>,  <36.752285, 38.964333, 23.865196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.946629, 38.839634, 23.799767>,  <37.270531, 38.631802, 23.690718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946629, 38.839634, 23.799767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053963, -0.528595, 0.847157,
		0.584277, 0.671281, 0.456072,
		-0.809758, 0.519585, 0.272622,
		36.703701, 38.995510, 23.881554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957680, 38.675495, 23.890808>,  <37.270531, 38.631802, 23.690718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957680, 38.675495, 23.890808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.178707, 38.355694, 23.796598>,  <38.311321, 38.163815, 23.740072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.178707, 38.355694, 23.796598>,  <37.957680, 38.675495, 23.890808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178707, 38.355694, 23.796598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188240, 0.394991, -0.899193,
		0.811934, 0.452528, 0.368757,
		0.552565, -0.799500, -0.235523,
		38.344475, 38.115845, 23.725941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538601, 38.959591, 23.639210>,  <37.957680, 38.675495, 23.890808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538601, 38.959591, 23.639210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.555096, 38.587688, 23.492865>,  <38.564991, 38.364548, 23.405058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.555096, 38.587688, 23.492865>,  <38.538601, 38.959591, 23.639210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555096, 38.587688, 23.492865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216090, 0.365805, -0.905258,
		0.975502, -0.041731, 0.215995,
		0.041234, -0.929755, -0.365862,
		38.567467, 38.308762, 23.383106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091148, 38.996193, 23.183540>,  <38.538601, 38.959591, 23.639210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091148, 38.996193, 23.183540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.889721, 38.666260, 23.080721>,  <38.768864, 38.468300, 23.019030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.889721, 38.666260, 23.080721>,  <39.091148, 38.996193, 23.183540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889721, 38.666260, 23.080721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116052, 0.230248, -0.966187,
		0.856125, -0.516373, -0.020223,
		-0.503570, -0.824830, -0.257047,
		38.738651, 38.418812, 23.003607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528008, 38.557743, 22.775640>,  <39.091148, 38.996193, 23.183540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528008, 38.557743, 22.775640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.149391, 38.473198, 22.678158>,  <38.922222, 38.422470, 22.619669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.149391, 38.473198, 22.678158>,  <39.528008, 38.557743, 22.775640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149391, 38.473198, 22.678158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177388, 0.289971, -0.940452,
		0.269438, -0.933405, -0.236977,
		-0.946539, -0.211356, -0.243704,
		38.865429, 38.409790, 22.605045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519318, 38.212543, 22.091347>,  <39.528008, 38.557743, 22.775640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519318, 38.212543, 22.091347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.137264, 38.317928, 22.145466>,  <38.908031, 38.381157, 22.177937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.137264, 38.317928, 22.145466>,  <39.519318, 38.212543, 22.091347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137264, 38.317928, 22.145466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004550, 0.443719, -0.896154,
		-0.296135, -0.856564, -0.422613,
		-0.955135, 0.263460, 0.135298,
		38.850723, 38.396965, 22.186056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120171, 37.965244, 21.448481>,  <39.519318, 38.212543, 22.091347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120171, 37.965244, 21.448481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.945259, 38.273308, 21.634228>,  <38.840313, 38.458145, 21.745676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.945259, 38.273308, 21.634228>,  <39.120171, 37.965244, 21.448481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945259, 38.273308, 21.634228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030145, 0.503509, -0.863464,
		-0.898819, -0.391576, -0.196959,
		-0.437283, 0.770160, 0.464368,
		38.814075, 38.504356, 21.773539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614674, 38.208378, 20.991144>,  <39.120171, 37.965244, 21.448481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614674, 38.208378, 20.991144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.634499, 38.520290, 21.240778>,  <38.646393, 38.707439, 21.390558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.634499, 38.520290, 21.240778>,  <38.614674, 38.208378, 20.991144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634499, 38.520290, 21.240778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019459, 0.625490, -0.779990,
		-0.998581, 0.026513, 0.046174,
		0.049561, 0.779782, 0.624087,
		38.649368, 38.754227, 21.428003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200706, 38.534958, 20.723898>,  <38.614674, 38.208378, 20.991144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200706, 38.534958, 20.723898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.392071, 38.794014, 20.961111>,  <38.506889, 38.949448, 21.103439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.392071, 38.794014, 20.961111>,  <38.200706, 38.534958, 20.723898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392071, 38.794014, 20.961111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019212, 0.667453, -0.744404,
		-0.877926, 0.367525, 0.306875,
		0.478411, 0.647636, 0.593035,
		38.535595, 38.988304, 21.139021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834602, 39.134693, 20.637268>,  <38.200706, 38.534958, 20.723898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834602, 39.134693, 20.637268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.198952, 39.220951, 20.778011>,  <38.417561, 39.272705, 20.862457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.198952, 39.220951, 20.778011>,  <37.834602, 39.134693, 20.637268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198952, 39.220951, 20.778011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115480, 0.685354, -0.718995,
		-0.396196, 0.695547, 0.599369,
		0.910875, 0.215648, 0.351857,
		38.472214, 39.285645, 20.883568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.622261, 31.319092, 34.648129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.900074, 31.499163, 34.872616>,  <36.066761, 31.607206, 35.007309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.900074, 31.499163, 34.872616>,  <35.622261, 31.319092, 34.648129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900074, 31.499163, 34.872616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328905, 0.495102, -0.804174,
		-0.639882, 0.743111, 0.195797,
		0.694530, 0.450178, 0.561220,
		36.108433, 31.634216, 35.040981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632355, 32.177734, 34.581478>,  <35.622261, 31.319092, 34.648129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632355, 32.177734, 34.581478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966927, 31.962324, 34.622234>,  <36.167667, 31.833078, 34.646687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966927, 31.962324, 34.622234>,  <35.632355, 32.177734, 34.581478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966927, 31.962324, 34.622234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345544, 0.373850, -0.860718,
		0.425426, 0.755135, 0.498782,
		0.836428, -0.538523, 0.101887,
		36.217854, 31.800768, 34.652802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193184, 32.630798, 34.478703>,  <35.632355, 32.177734, 34.581478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193184, 32.630798, 34.478703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284298, 32.258747, 34.363480>,  <36.338966, 32.035515, 34.294346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284298, 32.258747, 34.363480>,  <36.193184, 32.630798, 34.478703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284298, 32.258747, 34.363480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164922, 0.328412, -0.930025,
		0.959642, 0.164342, 0.228207,
		0.227788, -0.930127, -0.288054,
		36.352634, 31.979710, 34.277065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799740, 32.751610, 34.167931>,  <36.193184, 32.630798, 34.478703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799740, 32.751610, 34.167931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680916, 32.398624, 34.022053>,  <36.609619, 32.186832, 33.934525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680916, 32.398624, 34.022053>,  <36.799740, 32.751610, 34.167931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680916, 32.398624, 34.022053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137054, 0.338576, -0.930904,
		0.944970, -0.326521, 0.020367,
		-0.297064, -0.882468, -0.364696,
		36.591797, 32.133884, 33.912643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310024, 32.718651, 33.702293>,  <36.799740, 32.751610, 34.167931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310024, 32.718651, 33.702293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016796, 32.465607, 33.602364>,  <36.840858, 32.313782, 33.542408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016796, 32.465607, 33.602364>,  <37.310024, 32.718651, 33.702293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016796, 32.465607, 33.602364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113180, 0.248721, -0.961940,
		0.670666, -0.733447, -0.110732,
		-0.733074, -0.632608, -0.249820,
		36.796875, 32.275826, 33.527416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577240, 32.346188, 33.233616>,  <37.310024, 32.718651, 33.702293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577240, 32.346188, 33.233616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.189175, 32.268631, 33.175400>,  <36.956333, 32.222095, 33.140469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.189175, 32.268631, 33.175400>,  <37.577240, 32.346188, 33.233616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189175, 32.268631, 33.175400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145289, 0.015587, -0.989266,
		0.194081, -0.980899, 0.013049,
		-0.970167, -0.193894, -0.145539,
		36.898125, 32.210464, 33.131737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544239, 31.780251, 32.794468>,  <37.577240, 32.346188, 33.233616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544239, 31.780251, 32.794468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.190166, 31.962536, 32.757000>,  <36.977722, 32.071907, 32.734520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.190166, 31.962536, 32.757000>,  <37.544239, 31.780251, 32.794468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190166, 31.962536, 32.757000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218184, 0.228794, -0.948709,
		-0.410910, -0.860219, -0.301954,
		-0.885183, 0.455716, -0.093673,
		36.924610, 32.099251, 32.728897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377869, 31.641394, 32.088287>,  <37.544239, 31.780251, 32.794468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377869, 31.641394, 32.088287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.151230, 31.946625, 32.212662>,  <37.015247, 32.129765, 32.287285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.151230, 31.946625, 32.212662>,  <37.377869, 31.641394, 32.088287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151230, 31.946625, 32.212662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089907, 0.432349, -0.897213,
		-0.819078, -0.480400, -0.313572,
		-0.566593, 0.763080, 0.310936,
		36.981251, 32.175549, 32.305943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924732, 31.795931, 31.398521>,  <37.377869, 31.641394, 32.088287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924732, 31.795931, 31.398521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.884609, 32.119583, 31.630125>,  <36.860535, 32.313774, 31.769087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.884609, 32.119583, 31.630125>,  <36.924732, 31.795931, 31.398521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884609, 32.119583, 31.630125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092450, 0.587004, -0.804288,
		-0.990652, -0.027144, -0.133683,
		-0.100304, 0.809129, 0.579008,
		36.854519, 32.362320, 31.803827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381058, 32.153000, 31.127232>,  <36.924732, 31.795931, 31.398521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381058, 32.153000, 31.127232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605225, 32.425369, 31.315813>,  <36.739727, 32.588791, 31.428963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605225, 32.425369, 31.315813>,  <36.381058, 32.153000, 31.127232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605225, 32.425369, 31.315813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034408, 0.549613, -0.834711,
		-0.827494, 0.484010, 0.284584,
		0.560419, 0.680926, 0.471455,
		36.773350, 32.629646, 31.457249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017067, 32.856339, 31.086817>,  <36.381058, 32.153000, 31.127232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017067, 32.856339, 31.086817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396828, 32.934124, 31.185457>,  <36.624683, 32.980797, 31.244640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396828, 32.934124, 31.185457>,  <36.017067, 32.856339, 31.086817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396828, 32.934124, 31.185457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009322, 0.767428, -0.641068,
		-0.313913, 0.610933, 0.726788,
		0.949406, 0.194464, 0.246600,
		36.681648, 32.992462, 31.259438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124214, 33.596107, 31.173075>,  <36.017067, 32.856339, 31.086817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124214, 33.596107, 31.173075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498817, 33.459549, 31.141064>,  <36.723579, 33.377613, 31.121857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498817, 33.459549, 31.141064>,  <36.124214, 33.596107, 31.173075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498817, 33.459549, 31.141064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241986, 0.794400, -0.557110,
		0.253767, 0.502372, 0.826574,
		0.936507, -0.341395, -0.080025,
		36.779770, 33.357132, 31.117056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721321, 34.183643, 31.163536>,  <36.124214, 33.596107, 31.173075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721321, 34.183643, 31.163536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.355911, 34.205063, 31.002237>,  <35.136665, 34.217915, 30.905458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.355911, 34.205063, 31.002237>,  <35.721321, 34.183643, 31.163536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355911, 34.205063, 31.002237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395138, -0.352314, 0.848375,
		-0.096642, 0.934349, 0.343005,
		-0.913524, 0.053546, -0.403245,
		35.081856, 34.221127, 30.881264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277603, 34.585754, 31.637115>,  <35.721321, 34.183643, 31.163536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277603, 34.585754, 31.637115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008434, 34.372814, 31.431677>,  <34.846935, 34.245049, 31.308413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008434, 34.372814, 31.431677>,  <35.277603, 34.585754, 31.637115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008434, 34.372814, 31.431677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514356, -0.162252, 0.842088,
		-0.531620, 0.830828, -0.164636,
		-0.672918, -0.532352, -0.513598,
		34.806561, 34.213108, 31.277597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570793, 34.855682, 31.876982>,  <35.277603, 34.585754, 31.637115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570793, 34.855682, 31.876982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531761, 34.503574, 31.691246>,  <34.508343, 34.292309, 31.579805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.531761, 34.503574, 31.691246>,  <34.570793, 34.855682, 31.876982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531761, 34.503574, 31.691246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660274, -0.291837, 0.692004,
		-0.744659, 0.374115, -0.552740,
		-0.097579, -0.880266, -0.464338,
		34.502487, 34.239494, 31.551945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906631, 34.710590, 31.985859>,  <34.570793, 34.855682, 31.876982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906631, 34.710590, 31.985859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.035992, 34.347782, 31.877991>,  <34.113605, 34.130096, 31.813271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.035992, 34.347782, 31.877991>,  <33.906631, 34.710590, 31.985859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035992, 34.347782, 31.877991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655474, -0.420267, 0.627479,
		-0.682473, -0.026162, -0.730443,
		0.323397, -0.907023, -0.269672,
		34.133011, 34.075676, 31.797089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291862, 34.274864, 31.739157>,  <33.906631, 34.710590, 31.985859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291862, 34.274864, 31.739157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.604088, 34.077114, 31.892159>,  <33.791424, 33.958462, 31.983959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.604088, 34.077114, 31.892159>,  <33.291862, 34.274864, 31.739157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604088, 34.077114, 31.892159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608494, -0.460956, 0.645952,
		-0.143028, -0.736959, -0.660632,
		0.780562, -0.494380, 0.382506,
		33.838257, 33.928799, 32.006912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991982, 33.657574, 31.845495>,  <33.291862, 34.274864, 31.739157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991982, 33.657574, 31.845495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318268, 33.636314, 32.075897>,  <33.514038, 33.623558, 32.214138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318268, 33.636314, 32.075897>,  <32.991982, 33.657574, 31.845495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318268, 33.636314, 32.075897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472176, -0.636397, 0.609959,
		0.334150, -0.769529, -0.544214,
		0.815717, -0.053147, 0.576005,
		33.562984, 33.620369, 32.248699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004353, 32.839527, 32.078278>,  <32.991982, 33.657574, 31.845495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004353, 32.839527, 32.078278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.235046, 33.069912, 32.310017>,  <33.373463, 33.208141, 32.449062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.235046, 33.069912, 32.310017>,  <33.004353, 32.839527, 32.078278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235046, 33.069912, 32.310017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254510, -0.547207, 0.797364,
		0.776274, -0.607319, -0.169006,
		0.576735, 0.575959, 0.579351,
		33.408066, 33.242699, 32.483822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358627, 32.436516, 32.557549>,  <33.004353, 32.839527, 32.078278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358627, 32.436516, 32.557549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368420, 32.796558, 32.731537>,  <33.374294, 33.012585, 32.835930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368420, 32.796558, 32.731537>,  <33.358627, 32.436516, 32.557549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368420, 32.796558, 32.731537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366334, -0.396762, 0.841653,
		0.930161, -0.179947, 0.320029,
		0.024478, 0.900111, 0.434973,
		33.375763, 33.066593, 32.862030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624985, 32.322994, 33.224781>,  <33.358627, 32.436516, 32.557549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624985, 32.322994, 33.224781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429810, 32.672031, 33.233685>,  <33.312702, 32.881454, 33.239025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429810, 32.672031, 33.233685>,  <33.624985, 32.322994, 33.224781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429810, 32.672031, 33.233685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559403, -0.332180, 0.759424,
		0.670062, 0.358102, 0.650215,
		-0.487940, 0.872594, 0.022258,
		33.283428, 32.933811, 33.240360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589111, 32.354736, 33.888447>,  <33.624985, 32.322994, 33.224781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589111, 32.354736, 33.888447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327316, 32.629456, 33.761986>,  <33.170238, 32.794289, 33.686111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327316, 32.629456, 33.761986>,  <33.589111, 32.354736, 33.888447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327316, 32.629456, 33.761986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456979, -0.026210, 0.889091,
		0.602344, 0.726371, 0.331008,
		-0.654486, 0.686803, -0.316150,
		33.130970, 32.835495, 33.667141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478687, 32.777885, 34.426506>,  <33.589111, 32.354736, 33.888447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478687, 32.777885, 34.426506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152607, 32.820946, 34.198872>,  <32.956959, 32.846783, 34.062290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152607, 32.820946, 34.198872>,  <33.478687, 32.777885, 34.426506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152607, 32.820946, 34.198872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574383, -0.024078, 0.818233,
		0.074383, 0.993897, 0.081462,
		-0.815200, 0.107652, -0.569086,
		32.908047, 32.853241, 34.028145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121658, 33.191418, 34.692966>,  <33.478687, 32.777885, 34.426506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121658, 33.191418, 34.692966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823238, 33.044666, 34.470684>,  <32.644188, 32.956615, 34.337315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823238, 33.044666, 34.470684>,  <33.121658, 33.191418, 34.692966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823238, 33.044666, 34.470684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636379, 0.147137, 0.757214,
		-0.196044, 0.918557, -0.343248,
		-0.746049, -0.366883, -0.555705,
		32.599422, 32.934601, 34.303974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576210, 33.591892, 34.742149>,  <33.121658, 33.191418, 34.692966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576210, 33.591892, 34.742149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.419994, 33.239563, 34.635094>,  <32.326263, 33.028168, 34.570862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.419994, 33.239563, 34.635094>,  <32.576210, 33.591892, 34.742149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419994, 33.239563, 34.635094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723366, 0.113797, 0.681023,
		-0.569403, 0.459570, -0.681598,
		-0.390542, -0.880821, -0.267640,
		32.302834, 32.975315, 34.554802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837938, 33.651169, 34.733459>,  <32.576210, 33.591892, 34.742149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837938, 33.651169, 34.733459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.914608, 33.260582, 34.772991>,  <31.960609, 33.026230, 34.796711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.914608, 33.260582, 34.772991>,  <31.837938, 33.651169, 34.733459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914608, 33.260582, 34.772991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660200, -0.053771, 0.749163,
		-0.726221, -0.208842, -0.654972,
		0.191675, -0.976470, 0.098828,
		31.972111, 32.967640, 34.802639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229092, 34.263767, 34.433445>,  <31.837938, 33.651169, 34.733459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229092, 34.263767, 34.433445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.883457, 34.442928, 34.525307>,  <31.676077, 34.550426, 34.580421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.883457, 34.442928, 34.525307>,  <32.229092, 34.263767, 34.433445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883457, 34.442928, 34.525307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360621, -0.232585, -0.903248,
		-0.351158, -0.863299, 0.362497,
		-0.864084, 0.447906, 0.229650,
		31.624231, 34.577301, 34.594200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694118, 34.544830, 34.875965>,  <32.229092, 34.263767, 34.433445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694118, 34.544830, 34.875965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705635, 34.814632, 35.171047>,  <32.712547, 34.976513, 35.348099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705635, 34.814632, 35.171047>,  <32.694118, 34.544830, 34.875965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705635, 34.814632, 35.171047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081594, 0.737139, -0.670797,
		-0.996250, -0.040878, 0.076260,
		0.028794, 0.674504, 0.737710,
		32.714272, 35.016983, 35.392361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203281, 35.167305, 34.827793>,  <32.694118, 34.544830, 34.875965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203281, 35.167305, 34.827793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527504, 35.258289, 35.043667>,  <32.722038, 35.312881, 35.173191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.527504, 35.258289, 35.043667>,  <32.203281, 35.167305, 34.827793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527504, 35.258289, 35.043667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132628, 0.826268, -0.547441,
		-0.570449, 0.515308, 0.639567,
		0.810554, 0.227463, 0.539688,
		32.770672, 35.326527, 35.205574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144470, 35.892406, 35.067715>,  <32.203281, 35.167305, 34.827793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144470, 35.892406, 35.067715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535301, 35.809452, 35.048523>,  <32.769802, 35.759682, 35.037006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.535301, 35.809452, 35.048523>,  <32.144470, 35.892406, 35.067715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535301, 35.809452, 35.048523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132777, 0.769976, -0.624106,
		0.166375, 0.603432, 0.779865,
		0.977082, -0.207383, -0.047983,
		32.828426, 35.747238, 35.034126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511299, 36.582237, 35.099243>,  <32.144470, 35.892406, 35.067715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511299, 36.582237, 35.099243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755169, 36.313408, 34.931141>,  <32.901493, 36.152111, 34.830280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755169, 36.313408, 34.931141>,  <32.511299, 36.582237, 35.099243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755169, 36.313408, 34.931141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245417, 0.664186, -0.706136,
		0.753701, 0.327378, 0.569876,
		0.609677, -0.672073, -0.420253,
		32.938072, 36.111786, 34.805065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020798, 36.992374, 34.998436>,  <32.511299, 36.582237, 35.099243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020798, 36.992374, 34.998436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110897, 36.672985, 34.775112>,  <33.164959, 36.481354, 34.641117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110897, 36.672985, 34.775112>,  <33.020798, 36.992374, 34.998436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110897, 36.672985, 34.775112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348224, 0.601162, -0.719266,
		0.909947, -0.032401, 0.413458,
		0.225250, -0.798470, -0.558308,
		33.178471, 36.433445, 34.607620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651833, 37.153347, 34.750931>,  <33.020798, 36.992374, 34.998436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651833, 37.153347, 34.750931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492367, 36.876778, 34.509930>,  <33.396687, 36.710838, 34.365330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492367, 36.876778, 34.509930>,  <33.651833, 37.153347, 34.750931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492367, 36.876778, 34.509930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292131, 0.527003, -0.798077,
		0.869327, -0.494171, -0.008110,
		-0.398660, -0.691421, -0.602501,
		33.372768, 36.669350, 34.329178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056263, 37.014515, 34.255169>,  <33.651833, 37.153347, 34.750931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056263, 37.014515, 34.255169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.729427, 36.854027, 34.089577>,  <33.533325, 36.757732, 33.990223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.729427, 36.854027, 34.089577>,  <34.056263, 37.014515, 34.255169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729427, 36.854027, 34.089577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188040, 0.493331, -0.849274,
		0.544980, -0.771779, -0.327649,
		-0.817091, -0.401226, -0.413981,
		33.484299, 36.733658, 33.965382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320358, 36.834320, 33.603260>,  <34.056263, 37.014515, 34.255169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320358, 36.834320, 33.603260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923172, 36.838009, 33.556053>,  <33.684860, 36.840221, 33.527729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923172, 36.838009, 33.556053>,  <34.320358, 36.834320, 33.603260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923172, 36.838009, 33.556053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112546, 0.382713, -0.916987,
		0.036709, -0.923821, -0.381060,
		-0.992968, 0.009225, -0.118021,
		33.625282, 36.840775, 33.520645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273319, 36.462078, 33.055756>,  <34.320358, 36.834320, 33.603260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273319, 36.462078, 33.055756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948971, 36.692890, 33.094791>,  <33.754360, 36.831379, 33.118214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948971, 36.692890, 33.094791>,  <34.273319, 36.462078, 33.055756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948971, 36.692890, 33.094791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202761, 0.433437, -0.878078,
		-0.548978, -0.692220, -0.468460,
		-0.810871, 0.577031, 0.097592,
		33.705711, 36.866001, 33.124069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036472, 36.487114, 32.433334>,  <34.273319, 36.462078, 33.055756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036472, 36.487114, 32.433334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856659, 36.806961, 32.592594>,  <33.748772, 36.998871, 32.688148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856659, 36.806961, 32.592594>,  <34.036472, 36.487114, 32.433334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856659, 36.806961, 32.592594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119818, 0.495675, -0.860204,
		-0.885190, -0.338987, -0.318633,
		-0.449536, 0.799621, 0.398149,
		33.721798, 37.046848, 32.712040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509174, 36.781578, 31.905882>,  <34.036472, 36.487114, 32.433334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509174, 36.781578, 31.905882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619484, 37.076683, 32.152348>,  <33.685669, 37.253746, 32.300228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619484, 37.076683, 32.152348>,  <33.509174, 36.781578, 31.905882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619484, 37.076683, 32.152348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108899, 0.612915, -0.782609,
		-0.955035, 0.282920, 0.088682,
		0.275770, 0.737761, 0.616165,
		33.702213, 37.298012, 32.337196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234570, 37.458256, 31.600033>,  <33.509174, 36.781578, 31.905882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234570, 37.458256, 31.600033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518864, 37.571629, 31.857565>,  <33.689442, 37.639652, 32.012085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518864, 37.571629, 31.857565>,  <33.234570, 37.458256, 31.600033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518864, 37.571629, 31.857565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361355, 0.638152, -0.679841,
		-0.603554, 0.715839, 0.351136,
		0.710735, 0.283436, 0.643831,
		33.732086, 37.656658, 32.050713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254807, 38.102554, 31.485956>,  <33.234570, 37.458256, 31.600033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254807, 38.102554, 31.485956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607613, 38.016903, 31.653864>,  <33.819294, 37.965511, 31.754608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607613, 38.016903, 31.653864>,  <33.254807, 38.102554, 31.485956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607613, 38.016903, 31.653864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450429, 0.644824, -0.617507,
		-0.138451, 0.733724, 0.665192,
		0.882012, -0.214127, 0.419767,
		33.872215, 37.952663, 31.779795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469837, 38.687683, 31.490623>,  <33.254807, 38.102554, 31.485956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469837, 38.687683, 31.490623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784336, 38.445080, 31.537889>,  <33.973038, 38.299519, 31.566250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784336, 38.445080, 31.537889>,  <33.469837, 38.687683, 31.490623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784336, 38.445080, 31.537889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486363, 0.489491, -0.723774,
		0.381131, 0.626539, 0.679844,
		0.786250, -0.606504, 0.118165,
		34.020210, 38.263130, 31.573339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090599, 39.155586, 31.692009>,  <33.469837, 38.687683, 31.490623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090599, 39.155586, 31.692009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.295670, 38.840919, 31.554420>,  <34.418713, 38.652119, 31.471867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.295670, 38.840919, 31.554420>,  <34.090599, 39.155586, 31.692009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295670, 38.840919, 31.554420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411052, 0.576616, -0.706081,
		0.753793, 0.220597, 0.618978,
		0.512672, -0.786671, -0.343972,
		34.449471, 38.604919, 31.451229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737686, 39.261368, 31.725140>,  <34.090599, 39.155586, 31.692009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737686, 39.261368, 31.725140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718235, 38.979797, 31.441696>,  <34.706566, 38.810856, 31.271629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718235, 38.979797, 31.441696>,  <34.737686, 39.261368, 31.725140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718235, 38.979797, 31.441696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400682, 0.636114, -0.659403,
		0.914926, -0.315991, 0.251118,
		-0.048625, -0.703923, -0.708609,
		34.703648, 38.768620, 31.229113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383446, 39.344265, 31.416870>,  <34.737686, 39.261368, 31.725140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383446, 39.344265, 31.416870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183411, 39.117519, 31.155006>,  <35.063389, 38.981472, 30.997889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183411, 39.117519, 31.155006>,  <35.383446, 39.344265, 31.416870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183411, 39.117519, 31.155006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409998, 0.510894, -0.755571,
		0.762768, -0.646260, -0.023077,
		-0.500086, -0.566864, -0.654660,
		35.033386, 38.947460, 30.958609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935097, 39.042812, 31.020592>,  <35.383446, 39.344265, 31.416870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935097, 39.042812, 31.020592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.611675, 39.044025, 30.785227>,  <35.417622, 39.044754, 30.644009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.611675, 39.044025, 30.785227>,  <35.935097, 39.042812, 31.020592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611675, 39.044025, 30.785227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552458, 0.348137, -0.757358,
		0.202554, -0.937438, -0.283162,
		-0.808556, 0.003029, -0.588412,
		35.369110, 39.044933, 30.608704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183468, 38.691666, 30.393579>,  <35.935097, 39.042812, 31.020592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183468, 38.691666, 30.393579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.867004, 38.921875, 30.310781>,  <35.677128, 39.060001, 30.261103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.867004, 38.921875, 30.310781>,  <36.183468, 38.691666, 30.393579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867004, 38.921875, 30.310781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464211, 0.344689, -0.815903,
		-0.398222, -0.741596, -0.539866,
		-0.791156, 0.575522, -0.206994,
		35.629658, 39.094532, 30.248684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993069, 38.576786, 29.731268>,  <36.183468, 38.691666, 30.393579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993069, 38.576786, 29.731268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.836040, 38.940464, 29.786766>,  <35.741825, 39.158672, 29.820065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.836040, 38.940464, 29.786766>,  <35.993069, 38.576786, 29.731268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836040, 38.940464, 29.786766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416623, 0.310283, -0.854488,
		-0.819949, -0.277638, -0.500600,
		-0.392566, 0.909198, 0.138746,
		35.718269, 39.213223, 29.828390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501877, 38.664177, 29.147312>,  <35.993069, 38.576786, 29.731268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501877, 38.664177, 29.147312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628761, 39.001732, 29.320391>,  <35.704891, 39.204266, 29.424238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628761, 39.001732, 29.320391>,  <35.501877, 38.664177, 29.147312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628761, 39.001732, 29.320391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225158, 0.376195, -0.898766,
		-0.921237, 0.382527, -0.070674,
		0.317216, 0.843890, 0.432694,
		35.723927, 39.254898, 29.450199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265759, 39.189552, 28.713490>,  <35.501877, 38.664177, 29.147312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265759, 39.189552, 28.713490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524632, 39.406406, 28.927872>,  <35.679955, 39.536518, 29.056501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524632, 39.406406, 28.927872>,  <35.265759, 39.189552, 28.713490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524632, 39.406406, 28.927872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053183, 0.669223, -0.741156,
		-0.760481, 0.508164, 0.404275,
		0.647179, 0.542134, 0.535957,
		35.718784, 39.569046, 29.088659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026180, 39.887634, 28.676102>,  <35.265759, 39.189552, 28.713490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026180, 39.887634, 28.676102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415874, 39.907574, 28.764086>,  <35.649693, 39.919537, 28.816875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415874, 39.907574, 28.764086>,  <35.026180, 39.887634, 28.676102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415874, 39.907574, 28.764086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149876, 0.585690, -0.796558,
		-0.168537, 0.809001, 0.563128,
		0.974234, 0.049850, 0.219960,
		35.708145, 39.922527, 28.830074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189198, 40.567768, 28.688505>,  <35.026180, 39.887634, 28.676102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189198, 40.567768, 28.688505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.557831, 40.418175, 28.646900>,  <35.779011, 40.328419, 28.621937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.557831, 40.418175, 28.646900>,  <35.189198, 40.567768, 28.688505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557831, 40.418175, 28.646900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271725, 0.812871, -0.515176,
		0.277220, 0.446514, 0.850749,
		0.921583, -0.373987, -0.104015,
		35.834305, 40.305977, 28.615696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670959, 41.166550, 28.830397>,  <35.189198, 40.567768, 28.688505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670959, 41.166550, 28.830397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.878941, 40.898880, 28.618040>,  <36.003731, 40.738277, 28.490625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.878941, 40.898880, 28.618040>,  <35.670959, 41.166550, 28.830397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878941, 40.898880, 28.618040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251514, 0.713898, -0.653522,
		0.816325, 0.206277, 0.539503,
		0.519957, -0.669178, -0.530891,
		36.034927, 40.698128, 28.458773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355480, 41.463207, 28.629770>,  <35.670959, 41.166550, 28.830397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355480, 41.463207, 28.629770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299625, 41.164753, 28.369375>,  <36.266113, 40.985680, 28.213139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299625, 41.164753, 28.369375>,  <36.355480, 41.463207, 28.629770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299625, 41.164753, 28.369375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399177, 0.559226, -0.726584,
		0.906178, -0.361320, 0.219748,
		-0.139640, -0.746133, -0.650989,
		36.257732, 40.940914, 28.174078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997547, 41.268021, 28.294806>,  <36.355480, 41.463207, 28.629770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997547, 41.268021, 28.294806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.693859, 41.176376, 28.051136>,  <36.511646, 41.121391, 27.904934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.693859, 41.176376, 28.051136>,  <36.997547, 41.268021, 28.294806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693859, 41.176376, 28.051136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495196, 0.404016, -0.769124,
		0.422342, -0.885592, -0.193273,
		-0.759215, -0.229125, -0.609175,
		36.466091, 41.107643, 27.868385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704552, 40.982384, 28.540613>,  <36.997547, 41.268021, 28.294806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704552, 40.982384, 28.540613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.054577, 41.165066, 28.604729>,  <38.264591, 41.274673, 28.643198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.054577, 41.165066, 28.604729>,  <37.704552, 40.982384, 28.540613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054577, 41.165066, 28.604729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115274, -0.124985, 0.985439,
		0.470090, -0.880794, -0.056723,
		0.875059, 0.456706, 0.160287,
		38.317093, 41.302078, 28.652815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035896, 40.504745, 28.831339>,  <37.704552, 40.982384, 28.540613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035896, 40.504745, 28.831339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.223076, 40.844486, 28.929012>,  <38.335384, 41.048328, 28.987617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.223076, 40.844486, 28.929012>,  <38.035896, 40.504745, 28.831339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223076, 40.844486, 28.929012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043798, -0.298254, 0.953481,
		0.882667, -0.435489, -0.176769,
		0.467953, 0.849349, 0.244186,
		38.363461, 41.099289, 29.002268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501892, 40.344112, 29.316925>,  <38.035896, 40.504745, 28.831339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501892, 40.344112, 29.316925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464699, 40.739223, 29.366957>,  <38.442383, 40.976292, 29.396976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464699, 40.739223, 29.366957>,  <38.501892, 40.344112, 29.316925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464699, 40.739223, 29.366957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018798, -0.123862, 0.992121,
		0.995490, 0.094602, -0.007052,
		-0.092983, 0.987780, 0.125081,
		38.436802, 41.035557, 29.404482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070427, 40.554569, 29.828503>,  <38.501892, 40.344112, 29.316925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070427, 40.554569, 29.828503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766754, 40.814892, 29.824453>,  <38.584553, 40.971085, 29.822023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766754, 40.814892, 29.824453>,  <39.070427, 40.554569, 29.828503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766754, 40.814892, 29.824453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119299, -0.123845, 0.985104,
		0.639857, 0.749077, 0.171661,
		-0.759178, 0.650805, -0.010121,
		38.539001, 41.010132, 29.821417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169243, 40.802280, 30.452717>,  <39.070427, 40.554569, 29.828503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169243, 40.802280, 30.452717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.804981, 40.931393, 30.349546>,  <38.586426, 41.008862, 30.287643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.804981, 40.931393, 30.349546>,  <39.169243, 40.802280, 30.452717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804981, 40.931393, 30.349546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277404, -0.015008, 0.960636,
		0.306205, 0.946354, 0.103208,
		-0.910651, 0.322782, -0.257927,
		38.531784, 41.028229, 30.272169>
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
