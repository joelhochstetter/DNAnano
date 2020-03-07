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
	<4.678285, 1.456399, 4.590117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.315159, 1.540474, 4.735275>,  <4.097283, 1.590919, 4.822371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.315159, 1.540474, 4.735275>,  <4.678285, 1.456399, 4.590117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.315159, 1.540474, 4.735275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007881, 0.856630, -0.515870,
		-0.419299, -0.471175, -0.776005,
		-0.907814, 0.210188, 0.362897,
		4.042815, 1.603530, 4.844144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.232658, 1.586027, 4.064385>,  <4.678285, 1.456399, 4.590117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.232658, 1.586027, 4.064385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.074375, 1.790833, 4.369347>,  <3.979405, 1.913716, 4.552323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.074375, 1.790833, 4.369347>,  <4.232658, 1.586027, 4.064385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.074375, 1.790833, 4.369347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091866, 0.803932, -0.587584,
		-0.913771, -0.302549, -0.271084,
		-0.395706, 0.512013, 0.762403,
		3.955663, 1.944437, 4.598068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.526029, 1.596939, 3.906846>,  <4.232658, 1.586027, 4.064385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.526029, 1.596939, 3.906846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.675922, 1.921036, 4.087105>,  <3.765858, 2.115494, 4.195260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.675922, 1.921036, 4.087105>,  <3.526029, 1.596939, 3.906846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.675922, 1.921036, 4.087105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187047, 0.542141, -0.819205,
		-0.908068, 0.222692, 0.354711,
		0.374734, 0.810242, 0.450647,
		3.788342, 2.164108, 4.222299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.012821, 2.147782, 3.862436>,  <3.526029, 1.596939, 3.906846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.012821, 2.147782, 3.862436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.398251, 2.254517, 3.855225>,  <3.629508, 2.318557, 3.850898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.398251, 2.254517, 3.855225>,  <3.012821, 2.147782, 3.862436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.398251, 2.254517, 3.855225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098006, 0.289585, -0.952122,
		-0.248839, 0.919206, 0.305188,
		0.963573, 0.266836, -0.018027,
		3.687323, 2.334567, 3.849816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.069305, 2.792023, 3.481215>,  <3.012821, 2.147782, 3.862436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.069305, 2.792023, 3.481215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.429810, 2.620384, 3.457199>,  <3.646112, 2.517401, 3.442789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.429810, 2.620384, 3.457199>,  <3.069305, 2.792023, 3.481215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.429810, 2.620384, 3.457199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077074, 0.295138, -0.952341,
		0.426368, 0.853679, 0.299068,
		0.901260, -0.429098, -0.060041,
		3.700188, 2.491655, 3.439187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.529254, 3.357440, 3.120440>,  <3.069305, 2.792023, 3.481215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.529254, 3.357440, 3.120440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.674828, 2.986198, 3.089012>,  <3.762172, 2.763453, 3.070155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.674828, 2.986198, 3.089012>,  <3.529254, 3.357440, 3.120440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.674828, 2.986198, 3.089012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191624, 0.157156, -0.968804,
		0.911500, 0.337524, 0.235042,
		0.363933, -0.928105, -0.078569,
		3.784008, 2.707767, 3.065441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.155113, 3.457817, 2.740507>,  <3.529254, 3.357440, 3.120440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.155113, 3.457817, 2.740507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.046066, 3.074516, 2.706017>,  <3.980639, 2.844536, 2.685322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.046066, 3.074516, 2.706017>,  <4.155113, 3.457817, 2.740507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.046066, 3.074516, 2.706017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074147, 0.068430, -0.994897,
		0.959262, -0.277618, 0.052397,
		-0.272616, -0.958252, -0.086227,
		3.964282, 2.787041, 2.680149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.593482, 3.187692, 2.253035>,  <4.155113, 3.457817, 2.740507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.593482, 3.187692, 2.253035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.296570, 2.919853, 2.263306>,  <4.118423, 2.759150, 2.269468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.296570, 2.919853, 2.263306>,  <4.593482, 3.187692, 2.253035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.296570, 2.919853, 2.263306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221785, 0.209338, -0.952360,
		0.632323, -0.712612, -0.303894,
		-0.742280, -0.669598, 0.025677,
		4.073886, 2.718974, 2.271009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.362613, 3.448735, 1.189873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.069815, 3.208557, 1.061096>,  <3.894136, 3.064450, 0.983830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.069815, 3.208557, 1.061096>,  <4.362613, 3.448735, 1.189873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.069815, 3.208557, 1.061096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042893, -0.430981, 0.901341,
		-0.679957, 0.673587, 0.289722,
		-0.731996, -0.600446, -0.321941,
		3.850216, 3.028423, 0.964514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.736769, 3.378375, 1.695258>,  <4.362613, 3.448735, 1.189873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.736769, 3.378375, 1.695258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.761110, 3.053543, 1.463112>,  <3.775715, 2.858644, 1.323824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.761110, 3.053543, 1.463112>,  <3.736769, 3.378375, 1.695258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.761110, 3.053543, 1.463112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111046, -0.583341, 0.804600,
		-0.991950, 0.015486, -0.125676,
		0.060852, -0.812079, -0.580365,
		3.779366, 2.809919, 1.289002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.178360, 2.922657, 1.680236>,  <3.736769, 3.378375, 1.695258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.178360, 2.922657, 1.680236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.517962, 2.719940, 1.620430>,  <3.721723, 2.598310, 1.584546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.517962, 2.719940, 1.620430>,  <3.178360, 2.922657, 1.680236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.517962, 2.719940, 1.620430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128242, -0.472143, 0.872144,
		-0.512592, -0.721277, -0.465843,
		0.849002, -0.506795, -0.149519,
		3.772663, 2.567903, 1.575575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.086320, 2.200070, 1.726812>,  <3.178360, 2.922657, 1.680236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.086320, 2.200070, 1.726812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.404015, 2.397514, 1.868538>,  <3.594631, 2.515981, 1.953574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.404015, 2.397514, 1.868538>,  <3.086320, 2.200070, 1.726812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.404015, 2.397514, 1.868538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235264, -0.287817, 0.928338,
		0.560215, -0.820677, -0.112466,
		0.794235, 0.493610, 0.354316,
		3.642285, 2.545597, 1.974833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.079814, 1.884259, 2.356294>,  <3.086320, 2.200070, 1.726812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.079814, 1.884259, 2.356294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.409306, 2.106918, 2.313187>,  <3.607001, 2.240514, 2.287322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.409306, 2.106918, 2.313187>,  <3.079814, 1.884259, 2.356294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.409306, 2.106918, 2.313187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324150, -0.306400, 0.895012,
		0.465186, -0.772180, -0.432828,
		0.823729, 0.556648, -0.107769,
		3.656424, 2.273913, 2.280856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.539544, 1.538688, 2.743970>,  <3.079814, 1.884259, 2.356294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.539544, 1.538688, 2.743970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.679684, 1.912094, 2.713493>,  <3.763767, 2.136138, 2.695207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.679684, 1.912094, 2.713493>,  <3.539544, 1.538688, 2.743970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.679684, 1.912094, 2.713493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423702, -0.085415, 0.901766,
		0.835303, -0.348216, -0.425457,
		0.350350, 0.933515, -0.076193,
		3.784789, 2.192149, 2.690635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.289217, 1.531389, 2.991729>,  <3.539544, 1.538688, 2.743970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.289217, 1.531389, 2.991729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.154100, 1.907066, 3.016426>,  <4.073030, 2.132473, 3.031244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.154100, 1.907066, 3.016426>,  <4.289217, 1.531389, 2.991729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.154100, 1.907066, 3.016426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198211, 0.006855, 0.980135,
		0.920114, 0.343319, -0.188474,
		-0.337791, 0.939194, 0.061743,
		4.052763, 2.188825, 3.034949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.856254, 1.912862, 3.416967>,  <4.289217, 1.531389, 2.991729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.856254, 1.912862, 3.416967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.493395, 2.081161, 3.419952>,  <4.275680, 2.182141, 3.421744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.493395, 2.081161, 3.419952>,  <4.856254, 1.912862, 3.416967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.493395, 2.081161, 3.419952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023353, 0.032625, 0.999195,
		0.420166, 0.906591, -0.039421,
		-0.907147, 0.420748, 0.007464,
		4.221251, 2.207386, 3.422192>
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
