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
	<1.265320, 2.098874, 3.090764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.161064, 1.771910, 2.885277>,  <1.098511, 1.575731, 2.761984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.161064, 1.771910, 2.885277>,  <1.265320, 2.098874, 3.090764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.161064, 1.771910, 2.885277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962363, -0.262399, -0.070742,
		-0.076974, -0.512821, 0.855038,
		-0.260639, -0.817412, -0.513718,
		1.082873, 1.526686, 2.731161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.600195, 1.426243, 3.434392>,  <1.265320, 2.098874, 3.090764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.600195, 1.426243, 3.434392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.514778, 1.415726, 3.043760>,  <1.463528, 1.409415, 2.809381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.514778, 1.415726, 3.043760>,  <1.600195, 1.426243, 3.434392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.514778, 1.415726, 3.043760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949427, -0.241127, -0.201112,
		-0.230192, -0.970138, 0.076454,
		-0.213542, -0.026293, -0.976580,
		1.450716, 1.407838, 2.750786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.762847, 0.686880, 3.135864>,  <1.600195, 1.426243, 3.434392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.762847, 0.686880, 3.135864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.802883, 0.996691, 2.886035>,  <1.826905, 1.182577, 2.736138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.802883, 0.996691, 2.886035>,  <1.762847, 0.686880, 3.135864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.802883, 0.996691, 2.886035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870288, -0.372408, -0.322352,
		-0.482266, -0.511294, -0.711335,
		0.100090, 0.774526, -0.624573,
		1.832910, 1.229048, 2.698663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.996838, 0.458982, 2.508824>,  <1.762847, 0.686880, 3.135864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.996838, 0.458982, 2.508824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.115128, 0.840796, 2.493787>,  <2.186101, 1.069884, 2.484765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.115128, 0.840796, 2.493787>,  <1.996838, 0.458982, 2.508824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.115128, 0.840796, 2.493787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880680, -0.287665, -0.376367,
		-0.370069, 0.078193, -0.925708,
		0.295723, 0.954534, -0.037593,
		2.203845, 1.127156, 2.482509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.362401, 0.604319, 1.832438>,  <1.996838, 0.458982, 2.508824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.362401, 0.604319, 1.832438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.459671, 0.853783, 2.129601>,  <2.518033, 1.003461, 2.307900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.459671, 0.853783, 2.129601>,  <2.362401, 0.604319, 1.832438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.459671, 0.853783, 2.129601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959957, -0.044901, -0.276527,
		-0.139101, 0.780405, -0.609605,
		0.243175, 0.623660, 0.742909,
		2.532624, 1.040881, 2.352474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.751795, 1.167713, 1.535695>,  <2.362401, 0.604319, 1.832438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.751795, 1.167713, 1.535695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.839973, 1.164488, 1.925841>,  <2.892881, 1.162553, 2.159929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.839973, 1.164488, 1.925841>,  <2.751795, 1.167713, 1.535695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.839973, 1.164488, 1.925841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975362, -0.006897, -0.220503,
		0.008505, 0.999944, 0.006345,
		0.220447, -0.008064, 0.975366,
		2.906107, 1.162069, 2.218451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.366225, 1.535249, 1.599787>,  <2.751795, 1.167713, 1.535695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.366225, 1.535249, 1.599787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.342175, 1.379181, 1.967298>,  <3.327744, 1.285540, 2.187804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.342175, 1.379181, 1.967298>,  <3.366225, 1.535249, 1.599787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.342175, 1.379181, 1.967298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997884, -0.046302, 0.045640,
		0.024734, 0.919578, 0.392128,
		-0.060125, -0.390170, 0.918778,
		3.324137, 1.262130, 2.242931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.917270, 1.850604, 2.095574>,  <3.366225, 1.535249, 1.599787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.917270, 1.850604, 2.095574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.822853, 1.487940, 2.235431>,  <3.766203, 1.270341, 2.319345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.822853, 1.487940, 2.235431>,  <3.917270, 1.850604, 2.095574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.822853, 1.487940, 2.235431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971296, -0.209229, 0.113166,
		-0.029448, 0.366319, 0.930023,
		-0.236042, -0.906661, 0.349643,
		3.752040, 1.215942, 2.340324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.946388, -0.687842, 2.159080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.331451, -0.595851, 2.216213>,  <3.562489, -0.540656, 2.250493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.331451, -0.595851, 2.216213>,  <2.946388, -0.687842, 2.159080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.331451, -0.595851, 2.216213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185743, -0.177241, -0.966481,
		-0.196953, 0.956920, -0.213339,
		0.962657, 0.229978, 0.142833,
		3.620249, -0.526858, 2.259063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.209787, -0.221156, 1.549456>,  <2.946388, -0.687842, 2.159080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.209787, -0.221156, 1.549456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.493118, -0.455807, 1.706499>,  <3.663117, -0.596597, 1.800725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.493118, -0.455807, 1.706499>,  <3.209787, -0.221156, 1.549456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.493118, -0.455807, 1.706499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254151, -0.306947, -0.917164,
		0.658543, 0.749435, -0.068328,
		0.708328, -0.586626, 0.392608,
		3.705617, -0.631795, 1.824281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.622478, 0.096146, 2.069897>,  <3.209787, -0.221156, 1.549456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.622478, 0.096146, 2.069897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.820030, 0.351607, 2.305933>,  <3.938561, 0.504884, 2.447554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.820030, 0.351607, 2.305933>,  <3.622478, 0.096146, 2.069897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.820030, 0.351607, 2.305933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863767, 0.438348, 0.248511,
		-0.099952, -0.632434, 0.768139,
		0.493879, 0.638653, 0.590089,
		3.968194, 0.543203, 2.482960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.551799, 0.040327, 2.806119>,  <3.622478, 0.096146, 2.069897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.551799, 0.040327, 2.806119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.616440, 0.417134, 2.688484>,  <3.655225, 0.643219, 2.617903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.616440, 0.417134, 2.688484>,  <3.551799, 0.040327, 2.806119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.616440, 0.417134, 2.688484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935178, 0.241353, 0.259212,
		0.315161, 0.233134, 0.919957,
		0.161603, 0.942018, -0.294087,
		3.664921, 0.699740, 2.600258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.235894, 0.473260, 3.331646>,  <3.551799, 0.040327, 2.806119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.235894, 0.473260, 3.331646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.263962, 0.682942, 2.992167>,  <3.280802, 0.808752, 2.788481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.263962, 0.682942, 2.992167>,  <3.235894, 0.473260, 3.331646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.263962, 0.682942, 2.992167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858953, 0.464360, 0.215799,
		0.507223, 0.713847, 0.482852,
		0.070170, 0.524206, -0.848696,
		3.285013, 0.840204, 2.737559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.168982, 1.196959, 3.487831>,  <3.235894, 0.473260, 3.331646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.168982, 1.196959, 3.487831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.092796, 1.184093, 3.095364>,  <3.047085, 1.176374, 2.859884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.092796, 1.184093, 3.095364>,  <3.168982, 1.196959, 3.487831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.092796, 1.184093, 3.095364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818413, 0.557163, 0.140605,
		0.542148, 0.829780, -0.132442,
		-0.190463, -0.032163, -0.981167,
		3.035657, 1.174445, 2.801013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.004594, 1.860193, 3.320080>,  <3.168982, 1.196959, 3.487831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.004594, 1.860193, 3.320080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.846336, 1.626218, 3.036866>,  <2.751382, 1.485833, 2.866938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.846336, 1.626218, 3.036866>,  <3.004594, 1.860193, 3.320080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.846336, 1.626218, 3.036866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881300, 0.458726, 0.113492,
		0.258408, 0.668894, -0.696998,
		-0.395645, -0.584937, -0.708035,
		2.727643, 1.450737, 2.824456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.659541, 2.346230, 2.848894>,  <3.004594, 1.860193, 3.320080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.659541, 2.346230, 2.848894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.521515, 1.973264, 2.805936>,  <2.438699, 1.749484, 2.780161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.521515, 1.973264, 2.805936>,  <2.659541, 2.346230, 2.848894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.521515, 1.973264, 2.805936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935344, 0.351109, -0.043063,
		0.077860, 0.085592, -0.993283,
		-0.345065, -0.932415, -0.107395,
		2.417995, 1.693539, 2.773717>
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
