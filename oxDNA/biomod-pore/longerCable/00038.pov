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
	<24.486401, 35.143047, 35.341103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.423321, 34.978222, 34.982140>,  <24.385473, 34.879326, 34.766762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.423321, 34.978222, 34.982140>,  <24.486401, 35.143047, 35.341103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.423321, 34.978222, 34.982140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921014, -0.389165, 0.016845,
		-0.356180, -0.823867, 0.440884,
		-0.157698, -0.412061, -0.897406,
		24.376011, 34.854603, 34.712917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.343512, 34.479622, 35.362328>,  <24.486401, 35.143047, 35.341103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.343512, 34.479622, 35.362328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.570982, 34.613537, 35.061787>,  <24.707464, 34.693886, 34.881462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.570982, 34.613537, 35.061787>,  <24.343512, 34.479622, 35.362328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.570982, 34.613537, 35.061787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736681, -0.613645, 0.284150,
		-0.365933, -0.715095, -0.595594,
		0.568678, 0.334783, -0.751349,
		24.741585, 34.713970, 34.836380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.373528, 33.956863, 34.899178>,  <24.343512, 34.479622, 35.362328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.373528, 33.956863, 34.899178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689928, 34.200371, 34.923546>,  <24.879768, 34.346478, 34.938168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689928, 34.200371, 34.923546>,  <24.373528, 33.956863, 34.899178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.689928, 34.200371, 34.923546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589669, -0.785131, 0.189369,
		0.163112, -0.113869, -0.980014,
		0.791003, 0.608772, 0.060919,
		24.927229, 34.383003, 34.941822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.808577, 33.484787, 34.732201>,  <24.373528, 33.956863, 34.899178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.808577, 33.484787, 34.732201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050142, 33.768574, 34.877495>,  <25.195082, 33.938847, 34.964672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050142, 33.768574, 34.877495>,  <24.808577, 33.484787, 34.732201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050142, 33.768574, 34.877495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650142, -0.702115, 0.290431,
		0.461087, 0.060761, -0.885272,
		0.603916, 0.709466, 0.363240,
		25.231318, 33.981415, 34.986465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409372, 33.067924, 34.875999>,  <24.808577, 33.484787, 34.732201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409372, 33.067924, 34.875999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591387, 33.417519, 34.944225>,  <25.700596, 33.627274, 34.985161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591387, 33.417519, 34.944225>,  <25.409372, 33.067924, 34.875999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591387, 33.417519, 34.944225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872385, -0.475949, 0.111430,
		0.178568, 0.098093, -0.979026,
		0.455036, 0.873986, 0.170564,
		25.727898, 33.679714, 34.995396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.015934, 32.698177, 34.907585>,  <25.409372, 33.067924, 34.875999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.015934, 32.698177, 34.907585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086754, 33.074657, 35.022690>,  <26.129246, 33.300545, 35.091751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086754, 33.074657, 35.022690>,  <26.015934, 32.698177, 34.907585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086754, 33.074657, 35.022690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904530, -0.270844, 0.329346,
		0.387916, 0.201975, -0.899293,
		0.177048, 0.941196, 0.287757,
		26.139868, 33.357018, 35.109016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735994, 32.871307, 34.770664>,  <26.015934, 32.698177, 34.907585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735994, 32.871307, 34.770664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599550, 33.116863, 35.055416>,  <26.517683, 33.264198, 35.226269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599550, 33.116863, 35.055416>,  <26.735994, 32.871307, 34.770664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599550, 33.116863, 35.055416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898375, -0.010020, 0.439114,
		0.276702, 0.789325, -0.548089,
		-0.341112, 0.613893, 0.711883,
		26.497217, 33.301033, 35.268982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108643, 33.383713, 34.628071>,  <26.735994, 32.871307, 34.770664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108643, 33.383713, 34.628071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.012774, 33.305767, 35.008511>,  <26.955252, 33.258999, 35.236774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.012774, 33.305767, 35.008511>,  <27.108643, 33.383713, 34.628071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.012774, 33.305767, 35.008511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968449, 0.020924, 0.248332,
		-0.068290, 0.980608, 0.183697,
		-0.239673, -0.194860, 0.951098,
		26.940872, 33.247311, 35.293839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575342, 33.847874, 35.054333>,  <27.108643, 33.383713, 34.628071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575342, 33.847874, 35.054333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438368, 33.575314, 35.313076>,  <27.356182, 33.411777, 35.468323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438368, 33.575314, 35.313076>,  <27.575342, 33.847874, 35.054333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438368, 33.575314, 35.313076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921855, -0.110722, 0.371381,
		-0.181438, 0.723486, 0.666069,
		-0.342438, -0.681402, 0.646860,
		27.335636, 33.370892, 35.507133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784206, 34.089725, 35.640991>,  <27.575342, 33.847874, 35.054333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784206, 34.089725, 35.640991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706333, 33.703445, 35.709728>,  <27.659609, 33.471680, 35.750969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706333, 33.703445, 35.709728>,  <27.784206, 34.089725, 35.640991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706333, 33.703445, 35.709728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895327, -0.103403, 0.433241,
		-0.400611, 0.238200, 0.884744,
		-0.194683, -0.965696, 0.171842,
		27.647928, 33.413738, 35.761280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636946, 33.852398, 36.376053>,  <27.784206, 34.089725, 35.640991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636946, 33.852398, 36.376053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860462, 33.645981, 36.116375>,  <27.994572, 33.522129, 35.960567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860462, 33.645981, 36.116375>,  <27.636946, 33.852398, 36.376053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860462, 33.645981, 36.116375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785928, 0.079659, 0.613165,
		-0.264706, -0.852849, 0.450087,
		0.558791, -0.516045, -0.649192,
		28.028099, 33.491169, 35.921616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970129, 33.190865, 36.672997>,  <27.636946, 33.852398, 36.376053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970129, 33.190865, 36.672997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129253, 33.445354, 36.408585>,  <28.224728, 33.598049, 36.249939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129253, 33.445354, 36.408585>,  <27.970129, 33.190865, 36.672997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129253, 33.445354, 36.408585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575330, 0.388238, 0.719907,
		0.714663, -0.666696, -0.211597,
		0.397809, 0.636229, -0.661030,
		28.248596, 33.636223, 36.210274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517649, 32.749672, 37.061481>,  <27.970129, 33.190865, 36.672997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517649, 32.749672, 37.061481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658768, 32.435600, 36.857906>,  <28.743439, 32.247158, 36.735760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658768, 32.435600, 36.857906>,  <28.517649, 32.749672, 37.061481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658768, 32.435600, 36.857906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912632, 0.408776, 0.001989,
		0.206482, -0.465179, 0.860798,
		0.352800, -0.785182, -0.508942,
		28.764608, 32.200047, 36.705223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116209, 32.721428, 36.644737>,  <28.517649, 32.749672, 37.061481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116209, 32.721428, 36.644737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968994, 32.411564, 36.439037>,  <28.880665, 32.225647, 36.315617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968994, 32.411564, 36.439037>,  <29.116209, 32.721428, 36.644737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968994, 32.411564, 36.439037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759608, 0.569456, -0.314191,
		0.536232, 0.274993, -0.798019,
		-0.368036, -0.774661, -0.514247,
		28.858583, 32.179165, 36.284763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916269, 32.971672, 36.014061>,  <29.116209, 32.721428, 36.644737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916269, 32.971672, 36.014061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702574, 32.645241, 36.102253>,  <28.574356, 32.449383, 36.155167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702574, 32.645241, 36.102253>,  <28.916269, 32.971672, 36.014061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702574, 32.645241, 36.102253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830165, 0.457306, -0.318899,
		0.159420, -0.353399, -0.921789,
		-0.534238, -0.816076, 0.220476,
		28.542303, 32.400417, 36.168396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528889, 32.559532, 35.427151>,  <28.916269, 32.971672, 36.014061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528889, 32.559532, 35.427151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349661, 32.544373, 35.784428>,  <28.242125, 32.535275, 35.998795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349661, 32.544373, 35.784428>,  <28.528889, 32.559532, 35.427151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349661, 32.544373, 35.784428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749352, 0.560793, -0.352112,
		-0.487552, -0.827088, -0.279675,
		-0.448068, -0.037902, 0.893196,
		28.215240, 32.533001, 36.052387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967327, 32.112621, 35.424950>,  <28.528889, 32.559532, 35.427151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967327, 32.112621, 35.424950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942234, 32.444683, 35.646545>,  <27.927177, 32.643921, 35.779503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942234, 32.444683, 35.646545>,  <27.967327, 32.112621, 35.424950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942234, 32.444683, 35.646545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896993, 0.196469, -0.395984,
		-0.437571, -0.521765, 0.732321,
		-0.062732, 0.830158, 0.553988,
		27.923414, 32.693729, 35.812740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367872, 32.138519, 35.802292>,  <27.967327, 32.112621, 35.424950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367872, 32.138519, 35.802292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464174, 32.526192, 35.823166>,  <27.521955, 32.758797, 35.835690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464174, 32.526192, 35.823166>,  <27.367872, 32.138519, 35.802292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464174, 32.526192, 35.823166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904563, 0.243543, -0.349933,
		-0.351858, 0.037046, 0.935320,
		0.240754, 0.969182, 0.052182,
		27.536400, 32.816948, 35.838821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885723, 32.500854, 36.326576>,  <27.367872, 32.138519, 35.802292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885723, 32.500854, 36.326576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032841, 32.772705, 36.072701>,  <27.121111, 32.935814, 35.920376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032841, 32.772705, 36.072701>,  <26.885723, 32.500854, 36.326576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032841, 32.772705, 36.072701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929396, 0.291300, -0.226644,
		0.030852, 0.673239, 0.738782,
		0.367793, 0.679628, -0.634692,
		27.143179, 32.976593, 35.882294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581100, 33.107304, 36.527157>,  <26.885723, 32.500854, 36.326576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581100, 33.107304, 36.527157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679882, 33.138859, 36.140831>,  <26.739151, 33.157791, 35.909035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679882, 33.138859, 36.140831>,  <26.581100, 33.107304, 36.527157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679882, 33.138859, 36.140831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960123, 0.154724, -0.232860,
		0.131063, 0.984803, 0.113955,
		0.246953, 0.078892, -0.965811,
		26.753967, 33.162525, 35.851089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472075, 32.509460, 36.948532>,  <26.581100, 33.107304, 36.527157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472075, 32.509460, 36.948532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642252, 32.266457, 37.216839>,  <26.744358, 32.120655, 37.377823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642252, 32.266457, 37.216839>,  <26.472075, 32.509460, 36.948532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.642252, 32.266457, 37.216839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890538, 0.149127, -0.429770,
		0.161061, 0.780186, 0.604457,
		0.425442, -0.607512, 0.670767,
		26.769884, 32.084202, 37.418068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882792, 32.935299, 37.220215>,  <26.472075, 32.509460, 36.948532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882792, 32.935299, 37.220215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998316, 32.554249, 37.258358>,  <27.067631, 32.325619, 37.281246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998316, 32.554249, 37.258358>,  <26.882792, 32.935299, 37.220215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998316, 32.554249, 37.258358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941171, 0.264252, -0.210639,
		0.175460, 0.150585, 0.972902,
		0.288810, -0.952625, 0.095361,
		27.084959, 32.268459, 37.286964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369745, 32.845161, 37.740929>,  <26.882792, 32.935299, 37.220215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369745, 32.845161, 37.740929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409859, 32.556122, 37.467350>,  <27.433928, 32.382698, 37.303204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409859, 32.556122, 37.467350>,  <27.369745, 32.845161, 37.740929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409859, 32.556122, 37.467350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924355, 0.321997, -0.204662,
		0.368119, -0.611688, 0.700233,
		0.100284, -0.722603, -0.683950,
		27.439943, 32.339340, 37.262165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066645, 32.565334, 37.907970>,  <27.369745, 32.845161, 37.740929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066645, 32.565334, 37.907970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958208, 32.573181, 37.523029>,  <27.893147, 32.577888, 37.292065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958208, 32.573181, 37.523029>,  <28.066645, 32.565334, 37.907970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958208, 32.573181, 37.523029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909450, 0.332713, -0.249405,
		0.315295, -0.942824, -0.108034,
		-0.271090, 0.019615, -0.962354,
		27.876881, 32.579067, 37.234322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657623, 32.977921, 38.090714>,  <28.066645, 32.565334, 37.907970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657623, 32.977921, 38.090714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949568, 33.023521, 37.821106>,  <29.124735, 33.050880, 37.659340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949568, 33.023521, 37.821106>,  <28.657623, 32.977921, 38.090714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949568, 33.023521, 37.821106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660133, -0.373632, 0.651632,
		-0.177551, -0.920545, -0.347954,
		0.729863, 0.113998, -0.674021,
		29.168528, 33.057720, 37.618900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078373, 32.334076, 37.881142>,  <28.657623, 32.977921, 38.090714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078373, 32.334076, 37.881142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296654, 32.666096, 37.835148>,  <29.427622, 32.865307, 37.807552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296654, 32.666096, 37.835148>,  <29.078373, 32.334076, 37.881142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296654, 32.666096, 37.835148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555743, -0.255787, 0.791026,
		0.627183, -0.495565, -0.600880,
		0.545702, 0.830053, -0.114981,
		29.460365, 32.915112, 37.800655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645704, 31.793772, 38.176563>,  <29.078373, 32.334076, 37.881142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645704, 31.793772, 38.176563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935616, 31.610798, 38.382648>,  <29.109562, 31.501013, 38.506298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935616, 31.610798, 38.382648>,  <28.645704, 31.793772, 38.176563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935616, 31.610798, 38.382648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651473, -0.211646, 0.728552,
		-0.224222, -0.863689, -0.451404,
		0.724780, -0.457435, 0.515215,
		29.153049, 31.473566, 38.537212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387062, 31.166050, 38.409603>,  <28.645704, 31.793772, 38.176563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387062, 31.166050, 38.409603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683943, 31.263376, 38.659382>,  <28.862070, 31.321772, 38.809250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683943, 31.263376, 38.659382>,  <28.387062, 31.166050, 38.409603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683943, 31.263376, 38.659382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512533, -0.394263, 0.762802,
		0.431799, -0.886202, -0.167915,
		0.742199, 0.243315, 0.624450,
		28.906603, 31.336370, 38.846718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562212, 30.571558, 38.840321>,  <28.387062, 31.166050, 38.409603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562212, 30.571558, 38.840321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701601, 30.852612, 39.088474>,  <28.785234, 31.021244, 39.237366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701601, 30.852612, 39.088474>,  <28.562212, 30.571558, 38.840321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701601, 30.852612, 39.088474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574463, -0.362895, 0.733689,
		0.740647, -0.612058, 0.277177,
		0.348473, 0.702633, 0.620382,
		28.806143, 31.063402, 39.274590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770596, 30.206066, 39.473404>,  <28.562212, 30.571558, 38.840321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770596, 30.206066, 39.473404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683563, 30.594179, 39.515759>,  <28.631344, 30.827047, 39.541172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683563, 30.594179, 39.515759>,  <28.770596, 30.206066, 39.473404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683563, 30.594179, 39.515759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686876, -0.229290, 0.689658,
		0.693441, 0.077327, 0.716352,
		-0.217581, 0.970282, 0.105885,
		28.618288, 30.885263, 39.547523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801884, 30.356522, 40.186619>,  <28.770596, 30.206066, 39.473404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801884, 30.356522, 40.186619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571966, 30.621943, 39.995075>,  <28.434015, 30.781195, 39.880150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571966, 30.621943, 39.995075>,  <28.801884, 30.356522, 40.186619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571966, 30.621943, 39.995075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781096, -0.270460, 0.562797,
		0.243933, 0.697529, 0.673758,
		-0.574792, 0.663554, -0.478863,
		28.399529, 30.821009, 39.851418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454582, 30.799812, 40.641880>,  <28.801884, 30.356522, 40.186619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454582, 30.799812, 40.641880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243879, 30.766876, 40.303474>,  <28.117458, 30.747114, 40.100430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243879, 30.766876, 40.303474>,  <28.454582, 30.799812, 40.641880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243879, 30.766876, 40.303474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820601, -0.210307, 0.531399,
		-0.221680, 0.974162, 0.043211,
		-0.526757, -0.082342, -0.846018,
		28.085852, 30.742174, 40.049667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917547, 31.209717, 40.726860>,  <28.454582, 30.799812, 40.641880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917547, 31.209717, 40.726860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775757, 30.979681, 40.431938>,  <27.690681, 30.841660, 40.254986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775757, 30.979681, 40.431938>,  <27.917547, 31.209717, 40.726860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775757, 30.979681, 40.431938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833611, -0.162848, 0.527800,
		-0.423601, 0.801717, -0.421677,
		-0.354477, -0.575091, -0.737303,
		27.669415, 30.807154, 40.210747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316952, 31.371309, 40.636044>,  <27.917547, 31.209717, 40.726860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316952, 31.371309, 40.636044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307779, 31.006197, 40.472919>,  <27.302277, 30.787130, 40.375046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307779, 31.006197, 40.472919>,  <27.316952, 31.371309, 40.636044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307779, 31.006197, 40.472919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756478, -0.250850, 0.603999,
		-0.653616, 0.322349, -0.684746,
		-0.022930, -0.912779, -0.407809,
		27.300900, 30.732363, 40.350578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673883, 31.285425, 40.196625>,  <27.316952, 31.371309, 40.636044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673883, 31.285425, 40.196625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528141, 30.914829, 40.234283>,  <26.440695, 30.692472, 40.256878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528141, 30.914829, 40.234283>,  <26.673883, 31.285425, 40.196625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528141, 30.914829, 40.234283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530539, -0.123424, 0.838627,
		-0.765357, 0.355509, 0.536509,
		-0.364357, -0.926488, 0.094148,
		26.418835, 30.636883, 40.262527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574066, 31.037354, 40.874363>,  <26.673883, 31.285425, 40.196625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574066, 31.037354, 40.874363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633488, 30.689150, 40.686684>,  <26.669140, 30.480227, 40.574078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633488, 30.689150, 40.686684>,  <26.574066, 31.037354, 40.874363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633488, 30.689150, 40.686684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638550, -0.277847, 0.717673,
		-0.755106, -0.406217, 0.514590,
		0.148554, -0.870511, -0.469194,
		26.678055, 30.427998, 40.545925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494997, 30.351768, 41.362869>,  <26.574066, 31.037354, 40.874363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494997, 30.351768, 41.362869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765419, 30.264610, 41.081310>,  <26.927671, 30.212315, 40.912376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.765419, 30.264610, 41.081310>,  <26.494997, 30.351768, 41.362869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765419, 30.264610, 41.081310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631266, -0.321462, 0.705808,
		-0.380071, -0.921511, -0.079773,
		0.676053, -0.217899, -0.703897,
		26.968235, 30.199242, 40.870140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931812, 29.705839, 41.051193>,  <26.494997, 30.351768, 41.362869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931812, 29.705839, 41.051193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197580, 29.408457, 41.020679>,  <27.357040, 29.230026, 41.002373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197580, 29.408457, 41.020679>,  <26.931812, 29.705839, 41.051193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197580, 29.408457, 41.020679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704637, -0.657181, 0.267581,
		-0.249065, -0.124036, -0.960511,
		0.664419, -0.743457, -0.076280,
		27.396906, 29.185419, 40.997795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757973, 29.437969, 40.343391>,  <26.931812, 29.705839, 41.051193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757973, 29.437969, 40.343391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892618, 29.809473, 40.405491>,  <26.973406, 30.032375, 40.442749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892618, 29.809473, 40.405491>,  <26.757973, 29.437969, 40.343391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892618, 29.809473, 40.405491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602684, -0.085821, -0.793352,
		-0.723509, 0.360615, -0.588636,
		0.336611, 0.928758, 0.155245,
		26.993601, 30.088100, 40.452065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067354, 29.669794, 39.719410>,  <26.757973, 29.437969, 40.343391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067354, 29.669794, 39.719410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156294, 30.000835, 39.925568>,  <27.209658, 30.199461, 40.049263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156294, 30.000835, 39.925568>,  <27.067354, 29.669794, 39.719410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156294, 30.000835, 39.925568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375140, 0.415310, -0.828726,
		-0.899906, 0.377612, -0.218124,
		0.222348, 0.827603, 0.515397,
		27.222998, 30.249117, 40.080185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015074, 30.163504, 39.313698>,  <27.067354, 29.669794, 39.719410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015074, 30.163504, 39.313698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248640, 30.344067, 39.583595>,  <27.388779, 30.452404, 39.745533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248640, 30.344067, 39.583595>,  <27.015074, 30.163504, 39.313698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248640, 30.344067, 39.583595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492581, 0.463661, -0.736466,
		-0.645297, 0.762398, 0.048384,
		0.583914, 0.451406, 0.674742,
		27.423815, 30.479488, 39.786018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166521, 30.762096, 39.007729>,  <27.015074, 30.163504, 39.313698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166521, 30.762096, 39.007729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455013, 30.720074, 39.281601>,  <27.628109, 30.694860, 39.445923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455013, 30.720074, 39.281601>,  <27.166521, 30.762096, 39.007729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455013, 30.720074, 39.281601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581476, 0.628989, -0.516003,
		-0.376446, 0.770283, 0.514736,
		0.721231, -0.105059, 0.684681,
		27.671383, 30.688557, 39.487003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540918, 31.364424, 39.104748>,  <27.166521, 30.762096, 39.007729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540918, 31.364424, 39.104748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823738, 31.113541, 39.235401>,  <27.993431, 30.963011, 39.313793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823738, 31.113541, 39.235401>,  <27.540918, 31.364424, 39.104748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823738, 31.113541, 39.235401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659441, 0.417983, -0.624842,
		0.255377, 0.657192, 0.709141,
		0.707051, -0.627206, 0.326636,
		28.035852, 30.925379, 39.333393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798872, 31.669104, 39.764973>,  <27.540918, 31.364424, 39.104748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798872, 31.669104, 39.764973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114485, 31.464684, 39.901356>,  <28.303852, 31.342031, 39.983185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114485, 31.464684, 39.901356>,  <27.798872, 31.669104, 39.764973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114485, 31.464684, 39.901356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601544, 0.529939, -0.597753,
		0.124794, 0.676750, 0.725559,
		0.789031, -0.511052, 0.340962,
		28.351194, 31.311367, 40.003643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431013, 32.029831, 39.920868>,  <27.798872, 31.669104, 39.764973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431013, 32.029831, 39.920868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566113, 31.657705, 39.863689>,  <28.647173, 31.434429, 39.829384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566113, 31.657705, 39.863689>,  <28.431013, 32.029831, 39.920868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566113, 31.657705, 39.863689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770513, 0.360505, -0.525686,
		0.540588, 0.067408, 0.838582,
		0.337749, -0.930318, -0.142946,
		28.667437, 31.378611, 39.820805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239712, 31.979437, 40.067436>,  <28.431013, 32.029831, 39.920868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239712, 31.979437, 40.067436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105474, 31.701225, 39.813313>,  <29.024933, 31.534298, 39.660839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105474, 31.701225, 39.813313>,  <29.239712, 31.979437, 40.067436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105474, 31.701225, 39.813313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733074, 0.230716, -0.639821,
		0.591591, -0.680448, 0.432448,
		-0.335592, -0.695529, -0.635309,
		29.004797, 31.492567, 39.622719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868517, 31.689678, 39.741562>,  <29.239712, 31.979437, 40.067436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868517, 31.689678, 39.741562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563715, 31.617329, 39.492844>,  <29.380835, 31.573919, 39.343613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563715, 31.617329, 39.492844>,  <29.868517, 31.689678, 39.741562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563715, 31.617329, 39.492844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593512, 0.189004, -0.782318,
		0.259023, -0.965175, -0.036672,
		-0.762004, -0.180873, -0.621799,
		29.335114, 31.563066, 39.306305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110897, 31.327116, 39.240238>,  <29.868517, 31.689678, 39.741562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110897, 31.327116, 39.240238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795483, 31.486750, 39.053070>,  <29.606234, 31.582529, 38.940769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795483, 31.486750, 39.053070>,  <30.110897, 31.327116, 39.240238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795483, 31.486750, 39.053070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592589, 0.289581, -0.751652,
		-0.164472, -0.869985, -0.464838,
		-0.788535, 0.399084, -0.467916,
		29.558922, 31.606474, 38.912697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029999, 31.069189, 38.646877>,  <30.110897, 31.327116, 39.240238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029999, 31.069189, 38.646877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880444, 31.440126, 38.640629>,  <29.790710, 31.662689, 38.636879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880444, 31.440126, 38.640629>,  <30.029999, 31.069189, 38.646877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880444, 31.440126, 38.640629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692690, 0.268000, -0.669595,
		-0.616758, -0.261172, -0.742563,
		-0.373886, 0.927343, -0.015620,
		29.768278, 31.718328, 38.635944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684984, 31.299595, 38.043255>,  <30.029999, 31.069189, 38.646877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684984, 31.299595, 38.043255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854231, 31.616898, 38.218395>,  <29.955778, 31.807280, 38.323479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854231, 31.616898, 38.218395>,  <29.684984, 31.299595, 38.043255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854231, 31.616898, 38.218395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640669, 0.079787, -0.763661,
		-0.640715, 0.603635, -0.474457,
		0.423116, 0.793259, 0.437851,
		29.981165, 31.854876, 38.349751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652590, 31.976492, 37.653625>,  <29.684984, 31.299595, 38.043255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652590, 31.976492, 37.653625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970102, 31.897982, 37.883892>,  <30.160610, 31.850876, 38.022053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.970102, 31.897982, 37.883892>,  <29.652590, 31.976492, 37.653625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970102, 31.897982, 37.883892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563793, -0.117581, -0.817504,
		0.228141, 0.973474, 0.017324,
		0.793782, -0.196273, 0.575662,
		30.208237, 31.839100, 38.056591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133116, 32.399769, 37.351395>,  <29.652590, 31.976492, 37.653625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133116, 32.399769, 37.351395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328455, 32.125248, 37.566986>,  <30.445658, 31.960535, 37.696342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328455, 32.125248, 37.566986>,  <30.133116, 32.399769, 37.351395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328455, 32.125248, 37.566986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641622, -0.136240, -0.754824,
		0.591470, 0.714440, 0.373816,
		0.488348, -0.686305, 0.538982,
		30.474958, 31.919357, 37.728680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831797, 32.620960, 37.440174>,  <30.133116, 32.399769, 37.351395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831797, 32.620960, 37.440174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786608, 32.223522, 37.441204>,  <30.759495, 31.985060, 37.441822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786608, 32.223522, 37.441204>,  <30.831797, 32.620960, 37.440174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786608, 32.223522, 37.441204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516849, -0.060976, -0.853903,
		0.848590, -0.095140, 0.520427,
		-0.112974, -0.993595, 0.002571,
		30.752716, 31.925444, 37.441975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550207, 32.225388, 37.397911>,  <30.831797, 32.620960, 37.440174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550207, 32.225388, 37.397911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247423, 32.028530, 37.225956>,  <31.065752, 31.910416, 37.122784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247423, 32.028530, 37.225956>,  <31.550207, 32.225388, 37.397911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247423, 32.028530, 37.225956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611847, -0.302778, -0.730731,
		0.229463, -0.816162, 0.530307,
		-0.756961, -0.492143, -0.429890,
		31.020334, 31.880888, 37.096989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698879, 31.535866, 37.074978>,  <31.550207, 32.225388, 37.397911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698879, 31.535866, 37.074978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754032, 31.610746, 37.464016>,  <31.787123, 31.655674, 37.697441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754032, 31.610746, 37.464016>,  <31.698879, 31.535866, 37.074978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754032, 31.610746, 37.464016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958141, -0.273972, -0.083099,
		0.250908, 0.943343, -0.217139,
		0.137880, 0.187200, 0.972597,
		31.795397, 31.666906, 37.755795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226780, 32.118103, 37.140179>,  <31.698879, 31.535866, 37.074978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226780, 32.118103, 37.140179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213840, 31.851709, 37.438286>,  <32.206078, 31.691874, 37.617149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213840, 31.851709, 37.438286>,  <32.226780, 32.118103, 37.140179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213840, 31.851709, 37.438286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950216, -0.251696, -0.183682,
		0.309909, 0.702221, 0.640970,
		-0.032345, -0.665984, 0.745264,
		32.204136, 31.651915, 37.661865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783596, 32.312084, 37.723888>,  <32.226780, 32.118103, 37.140179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783596, 32.312084, 37.723888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699245, 31.929678, 37.642334>,  <32.648636, 31.700235, 37.593403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699245, 31.929678, 37.642334>,  <32.783596, 32.312084, 37.723888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699245, 31.929678, 37.642334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921797, -0.125073, -0.366943,
		0.325302, -0.265322, 0.907625,
		-0.210877, -0.956013, -0.203886,
		32.635983, 31.642874, 37.581169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189499, 31.710699, 37.622787>,  <32.783596, 32.312084, 37.723888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189499, 31.710699, 37.622787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362774, 31.359476, 37.704140>,  <33.466740, 31.148743, 37.752949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362774, 31.359476, 37.704140>,  <33.189499, 31.710699, 37.622787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362774, 31.359476, 37.704140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665572, -0.463792, -0.584731,
		0.607754, 0.117934, -0.785320,
		0.433185, -0.878059, 0.203378,
		33.492729, 31.096058, 37.765152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426731, 31.549967, 38.294712>,  <33.189499, 31.710699, 37.622787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426731, 31.549967, 38.294712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555923, 31.594513, 38.670643>,  <33.633438, 31.621241, 38.896202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555923, 31.594513, 38.670643>,  <33.426731, 31.549967, 38.294712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555923, 31.594513, 38.670643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700534, 0.639579, -0.316529,
		-0.636347, 0.760616, 0.128553,
		0.322977, 0.111367, 0.939832,
		33.652817, 31.627924, 38.952591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415638, 32.304810, 38.712070>,  <33.426731, 31.549967, 38.294712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415638, 32.304810, 38.712070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730259, 32.077065, 38.807701>,  <33.919033, 31.940416, 38.865082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730259, 32.077065, 38.807701>,  <33.415638, 32.304810, 38.712070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730259, 32.077065, 38.807701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617450, 0.731062, -0.290352,
		-0.009467, 0.375998, 0.926572,
		0.786553, -0.569363, 0.239081,
		33.966225, 31.906256, 38.879425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901253, 32.576305, 39.202717>,  <33.415638, 32.304810, 38.712070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901253, 32.576305, 39.202717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114616, 32.334816, 38.965736>,  <34.242634, 32.189922, 38.823547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114616, 32.334816, 38.965736>,  <33.901253, 32.576305, 39.202717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114616, 32.334816, 38.965736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545033, 0.780941, -0.305075,
		0.646846, -0.160173, 0.745611,
		0.533413, -0.603719, -0.592448,
		34.274639, 32.153702, 38.788002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755291, 32.679993, 39.296383>,  <33.901253, 32.576305, 39.202717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755291, 32.679993, 39.296383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663166, 32.532387, 38.936207>,  <34.607891, 32.443825, 38.720100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663166, 32.532387, 38.936207>,  <34.755291, 32.679993, 39.296383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663166, 32.532387, 38.936207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447066, 0.781759, -0.434725,
		0.864344, -0.502676, -0.015071,
		-0.230308, -0.369013, -0.900437,
		34.594074, 32.421684, 38.666077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369865, 32.440609, 38.968662>,  <34.755291, 32.679993, 39.296383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369865, 32.440609, 38.968662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256248, 32.111233, 39.165138>,  <35.188080, 31.913607, 39.283024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256248, 32.111233, 39.165138>,  <35.369865, 32.440609, 38.968662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256248, 32.111233, 39.165138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349173, -0.565944, -0.746851,
		0.892973, -0.040625, 0.448273,
		-0.284038, -0.823442, 0.491187,
		35.171036, 31.864201, 39.312496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830048, 31.865257, 39.032566>,  <35.369865, 32.440609, 38.968662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830048, 31.865257, 39.032566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477066, 31.678398, 39.054626>,  <35.265278, 31.566282, 39.067863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477066, 31.678398, 39.054626>,  <35.830048, 31.865257, 39.032566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477066, 31.678398, 39.054626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286043, -0.625996, -0.725471,
		0.373425, -0.624423, 0.686039,
		-0.882458, -0.467146, 0.055151,
		35.212330, 31.538254, 39.071171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127247, 31.210030, 39.111893>,  <35.830048, 31.865257, 39.032566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127247, 31.210030, 39.111893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756008, 31.175541, 38.967007>,  <35.533264, 31.154846, 38.880074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756008, 31.175541, 38.967007>,  <36.127247, 31.210030, 39.111893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756008, 31.175541, 38.967007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343274, -0.574958, -0.742688,
		-0.144223, -0.813627, 0.563215,
		-0.928096, -0.086225, -0.362219,
		35.477581, 31.149673, 38.858341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910664, 30.509001, 39.182812>,  <36.127247, 31.210030, 39.111893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910664, 30.509001, 39.182812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761181, 30.718927, 38.876896>,  <35.671490, 30.844883, 38.693344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761181, 30.718927, 38.876896>,  <35.910664, 30.509001, 39.182812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761181, 30.718927, 38.876896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447934, -0.619898, -0.644268,
		-0.812217, -0.583345, -0.003422,
		-0.373710, 0.524818, -0.764792,
		35.649067, 30.876373, 38.647457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069988, 30.116488, 38.601063>,  <35.910664, 30.509001, 39.182812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069988, 30.116488, 38.601063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894958, 30.432507, 38.429317>,  <35.789940, 30.622118, 38.326271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894958, 30.432507, 38.429317>,  <36.069988, 30.116488, 38.601063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894958, 30.432507, 38.429317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395351, -0.259832, -0.881013,
		-0.807604, -0.555260, -0.198650,
		-0.437576, 0.790046, -0.429365,
		35.763687, 30.669521, 38.300507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791576, 29.851921, 38.027008>,  <36.069988, 30.116488, 38.601063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791576, 29.851921, 38.027008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844505, 30.246870, 37.992168>,  <35.876263, 30.483839, 37.971264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844505, 30.246870, 37.992168>,  <35.791576, 29.851921, 38.027008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844505, 30.246870, 37.992168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200098, -0.112674, -0.973276,
		-0.970799, 0.111360, -0.212480,
		0.132325, 0.987372, -0.087101,
		35.884201, 30.543081, 37.966038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507702, 29.994856, 37.352604>,  <35.791576, 29.851921, 38.027008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507702, 29.994856, 37.352604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753216, 30.297674, 37.442181>,  <35.900524, 30.479364, 37.495926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753216, 30.297674, 37.442181>,  <35.507702, 29.994856, 37.352604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753216, 30.297674, 37.442181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416579, -0.069611, -0.906430,
		-0.670620, 0.649643, -0.358096,
		0.613784, 0.757046, 0.223945,
		35.937351, 30.524788, 37.509365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351383, 30.467518, 36.877640>,  <35.507702, 29.994856, 37.352604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351383, 30.467518, 36.877640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711433, 30.585863, 37.005539>,  <35.927464, 30.656870, 37.082279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711433, 30.585863, 37.005539>,  <35.351383, 30.467518, 36.877640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711433, 30.585863, 37.005539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334528, 0.000690, -0.942386,
		-0.279039, 0.955230, -0.098353,
		0.900127, 0.295864, 0.319743,
		35.981472, 30.674622, 37.101463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533241, 31.202633, 36.599075>,  <35.351383, 30.467518, 36.877640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533241, 31.202633, 36.599075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872360, 31.013189, 36.694519>,  <36.075832, 30.899523, 36.751785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872360, 31.013189, 36.694519>,  <35.533241, 31.202633, 36.599075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872360, 31.013189, 36.694519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403796, 0.284831, -0.869379,
		0.343784, 0.833406, 0.432721,
		0.847798, -0.473609, 0.238605,
		36.126701, 30.871107, 36.766102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096333, 31.629219, 36.378613>,  <35.533241, 31.202633, 36.599075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096333, 31.629219, 36.378613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275719, 31.272182, 36.397175>,  <36.383350, 31.057961, 36.408314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275719, 31.272182, 36.397175>,  <36.096333, 31.629219, 36.378613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275719, 31.272182, 36.397175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387157, 0.147199, -0.910188,
		0.805596, 0.426158, 0.411588,
		0.448469, -0.892593, 0.046407,
		36.410259, 31.004404, 36.411098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875790, 31.686972, 36.147999>,  <36.096333, 31.629219, 36.378613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875790, 31.686972, 36.147999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805103, 31.293587, 36.132114>,  <36.762691, 31.057556, 36.122585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805103, 31.293587, 36.132114>,  <36.875790, 31.686972, 36.147999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805103, 31.293587, 36.132114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362990, -0.027620, -0.931383,
		0.914882, -0.179005, 0.361868,
		-0.176717, -0.983460, -0.039708,
		36.752087, 30.998549, 36.120201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564896, 31.345284, 35.935585>,  <36.875790, 31.686972, 36.147999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564896, 31.345284, 35.935585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260498, 31.099833, 35.851345>,  <37.077862, 30.952562, 35.800800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260498, 31.099833, 35.851345>,  <37.564896, 31.345284, 35.935585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260498, 31.099833, 35.851345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346293, -0.109690, -0.931692,
		0.548610, -0.781940, 0.295968,
		-0.760992, -0.613627, -0.210603,
		37.032200, 30.915745, 35.788166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832874, 30.906424, 35.433861>,  <37.564896, 31.345284, 35.935585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832874, 30.906424, 35.433861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439480, 30.839046, 35.407387>,  <37.203442, 30.798620, 35.391502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439480, 30.839046, 35.407387>,  <37.832874, 30.906424, 35.433861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439480, 30.839046, 35.407387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118569, -0.323391, -0.938808,
		0.136729, -0.931153, 0.338022,
		-0.983487, -0.168441, -0.066190,
		37.144432, 30.788515, 35.387531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788109, 30.390043, 35.000816>,  <37.832874, 30.906424, 35.433861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788109, 30.390043, 35.000816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428772, 30.560781, 34.959278>,  <37.213169, 30.663225, 34.934357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428772, 30.560781, 34.959278>,  <37.788109, 30.390043, 35.000816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428772, 30.560781, 34.959278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023621, -0.282981, -0.958835,
		-0.438663, -0.858907, 0.264296,
		-0.898341, 0.426849, -0.103845,
		37.159271, 30.688835, 34.928123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416340, 29.980330, 34.537510>,  <37.788109, 30.390043, 35.000816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416340, 29.980330, 34.537510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222557, 30.329779, 34.519226>,  <37.106289, 30.539448, 34.508255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222557, 30.329779, 34.519226>,  <37.416340, 29.980330, 34.537510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222557, 30.329779, 34.519226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093368, -0.103588, -0.990228,
		-0.869819, -0.475453, 0.131752,
		-0.484455, 0.873621, -0.045710,
		37.077221, 30.591866, 34.505512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825428, 29.846777, 34.236347>,  <37.416340, 29.980330, 34.537510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825428, 29.846777, 34.236347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854015, 30.241755, 34.179996>,  <36.871170, 30.478741, 34.146187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854015, 30.241755, 34.179996>,  <36.825428, 29.846777, 34.236347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854015, 30.241755, 34.179996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234483, -0.120649, -0.964604,
		-0.969489, 0.101975, 0.222916,
		0.071471, 0.987444, -0.140879,
		36.875458, 30.537987, 34.137733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238007, 29.988604, 33.729874>,  <36.825428, 29.846777, 34.236347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238007, 29.988604, 33.729874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497120, 30.291536, 33.696823>,  <36.652588, 30.473297, 33.676994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497120, 30.291536, 33.696823>,  <36.238007, 29.988604, 33.729874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497120, 30.291536, 33.696823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337841, 0.188362, -0.922162,
		-0.682821, 0.625273, 0.377875,
		0.647780, 0.757334, -0.082625,
		36.691456, 30.518736, 33.672035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914589, 30.407505, 33.299595>,  <36.238007, 29.988604, 33.729874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914589, 30.407505, 33.299595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289291, 30.547480, 33.297409>,  <36.514114, 30.631464, 33.296097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289291, 30.547480, 33.297409>,  <35.914589, 30.407505, 33.299595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289291, 30.547480, 33.297409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119410, 0.304893, -0.944871,
		-0.328978, 0.885768, 0.327397,
		0.936757, 0.349937, -0.005466,
		36.570320, 30.652460, 33.295769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869164, 31.101347, 33.046040>,  <35.914589, 30.407505, 33.299595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869164, 31.101347, 33.046040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241680, 30.987267, 32.955387>,  <36.465191, 30.918819, 32.900997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241680, 30.987267, 32.955387>,  <35.869164, 31.101347, 33.046040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241680, 30.987267, 32.955387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190944, 0.147641, -0.970434,
		0.310228, 0.947028, 0.083039,
		0.931289, -0.285200, -0.226631,
		36.521069, 30.901707, 32.887398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000877, 31.661251, 32.737465>,  <35.869164, 31.101347, 33.046040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000877, 31.661251, 32.737465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237999, 31.361742, 32.618862>,  <36.380272, 31.182035, 32.547699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237999, 31.361742, 32.618862>,  <36.000877, 31.661251, 32.737465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237999, 31.361742, 32.618862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317366, 0.121186, -0.940528,
		0.740177, 0.651652, -0.165796,
		0.592805, -0.748775, -0.296511,
		36.415840, 31.137110, 32.529907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226910, 31.911331, 32.166603>,  <36.000877, 31.661251, 32.737465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226910, 31.911331, 32.166603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333546, 31.527851, 32.126968>,  <36.397526, 31.297762, 32.103188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333546, 31.527851, 32.126968>,  <36.226910, 31.911331, 32.166603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333546, 31.527851, 32.126968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158042, 0.057935, -0.985731,
		0.950764, 0.278448, -0.136070,
		0.266592, -0.958702, -0.099089,
		36.413525, 31.240240, 32.097240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582928, 31.809801, 31.589441>,  <36.226910, 31.911331, 32.166603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582928, 31.809801, 31.589441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478634, 31.428518, 31.650654>,  <36.416058, 31.199749, 31.687382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478634, 31.428518, 31.650654>,  <36.582928, 31.809801, 31.589441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478634, 31.428518, 31.650654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185687, -0.106037, -0.976871,
		0.947385, -0.283118, -0.149350,
		-0.260733, -0.953205, 0.153030,
		36.400414, 31.142557, 31.696562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885899, 31.329384, 31.029591>,  <36.582928, 31.809801, 31.589441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885899, 31.329384, 31.029591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570026, 31.142395, 31.188520>,  <36.380501, 31.030201, 31.283878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570026, 31.142395, 31.188520>,  <36.885899, 31.329384, 31.029591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570026, 31.142395, 31.188520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416768, -0.066510, -0.906577,
		0.450226, -0.881502, -0.142306,
		-0.789684, -0.467473, 0.397326,
		36.333122, 31.002153, 31.307718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726460, 30.856867, 30.595343>,  <36.885899, 31.329384, 31.029591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726460, 30.856867, 30.595343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383694, 30.800690, 30.793722>,  <36.178032, 30.766983, 30.912750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383694, 30.800690, 30.793722>,  <36.726460, 30.856867, 30.595343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383694, 30.800690, 30.793722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476023, -0.153451, -0.865942,
		0.197719, -0.978125, 0.064641,
		-0.856919, -0.140443, 0.495950,
		36.126617, 30.758558, 30.942507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406799, 30.357897, 30.311693>,  <36.726460, 30.856867, 30.595343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406799, 30.357897, 30.311693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099068, 30.518320, 30.510607>,  <35.914429, 30.614574, 30.629955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099068, 30.518320, 30.510607>,  <36.406799, 30.357897, 30.311693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099068, 30.518320, 30.510607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544697, -0.005036, -0.838618,
		-0.333833, -0.916038, 0.222331,
		-0.769325, 0.401061, 0.497282,
		35.868271, 30.638638, 30.659792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727634, 29.858217, 30.223850>,  <36.406799, 30.357897, 30.311693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727634, 29.858217, 30.223850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618660, 30.229464, 30.325340>,  <35.553276, 30.452211, 30.386234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618660, 30.229464, 30.325340>,  <35.727634, 29.858217, 30.223850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618660, 30.229464, 30.325340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512351, 0.083268, -0.854730,
		-0.814416, -0.362859, 0.452836,
		-0.272439, 0.928116, 0.253726,
		35.536926, 30.507898, 30.401459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094410, 29.876329, 29.938915>,  <35.727634, 29.858217, 30.223850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094410, 29.876329, 29.938915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167248, 30.262724, 30.012358>,  <35.210949, 30.494560, 30.056423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167248, 30.262724, 30.012358>,  <35.094410, 29.876329, 29.938915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167248, 30.262724, 30.012358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467838, 0.249354, -0.847909,
		-0.864852, 0.068499, 0.497331,
		0.182092, 0.965987, 0.183608,
		35.221874, 30.552521, 30.067440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445808, 30.219227, 29.749397>,  <35.094410, 29.876329, 29.938915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445808, 30.219227, 29.749397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737408, 30.493034, 29.749378>,  <34.912365, 30.657318, 29.749367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737408, 30.493034, 29.749378>,  <34.445808, 30.219227, 29.749397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737408, 30.493034, 29.749378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355110, 0.378121, -0.854939,
		-0.585204, 0.623264, 0.518728,
		0.728995, 0.684519, -0.000049,
		34.956104, 30.698391, 29.749363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140697, 30.911833, 29.825350>,  <34.445808, 30.219227, 29.749397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140697, 30.911833, 29.825350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480492, 30.976126, 29.624338>,  <34.684368, 31.014702, 29.503731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480492, 30.976126, 29.624338>,  <34.140697, 30.911833, 29.825350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480492, 30.976126, 29.624338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509013, 0.500302, -0.700431,
		0.138835, 0.850802, 0.506815,
		0.849488, 0.160731, -0.502529,
		34.735336, 31.024345, 29.473579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924831, 31.481480, 29.457632>,  <34.140697, 30.911833, 29.825350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924831, 31.481480, 29.457632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296696, 31.421095, 29.323210>,  <34.519814, 31.384865, 29.242556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296696, 31.421095, 29.323210>,  <33.924831, 31.481480, 29.457632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296696, 31.421095, 29.323210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198775, 0.562479, -0.802562,
		0.310182, 0.812913, 0.492909,
		0.929664, -0.150962, -0.336058,
		34.575596, 31.375807, 29.222393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288811, 32.114971, 29.272627>,  <33.924831, 31.481480, 29.457632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288811, 32.114971, 29.272627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467808, 31.827951, 29.059132>,  <34.575207, 31.655741, 28.931034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467808, 31.827951, 29.059132>,  <34.288811, 32.114971, 29.272627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467808, 31.827951, 29.059132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230256, 0.484264, -0.844080,
		0.864137, 0.500616, 0.051485,
		0.447493, -0.717546, -0.533741,
		34.602055, 31.612688, 28.899010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880314, 32.397987, 28.815260>,  <34.288811, 32.114971, 29.272627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880314, 32.397987, 28.815260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767826, 32.048538, 28.656418>,  <34.700333, 31.838867, 28.561113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767826, 32.048538, 28.656418>,  <34.880314, 32.397987, 28.815260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767826, 32.048538, 28.656418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178682, 0.454237, -0.872778,
		0.942862, -0.174486, -0.283842,
		-0.281219, -0.873626, -0.397105,
		34.683460, 31.786449, 28.537287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422855, 32.128063, 28.356050>,  <34.880314, 32.397987, 28.815260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422855, 32.128063, 28.356050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060799, 32.003788, 28.239988>,  <34.843563, 31.929222, 28.170351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060799, 32.003788, 28.239988>,  <35.422855, 32.128063, 28.356050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060799, 32.003788, 28.239988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022562, 0.646474, -0.762603,
		0.424512, -0.696810, -0.578140,
		-0.905141, -0.310690, -0.290157,
		34.789257, 31.910582, 28.152941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548977, 32.061508, 27.624641>,  <35.422855, 32.128063, 28.356050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548977, 32.061508, 27.624641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155117, 32.021091, 27.681585>,  <34.918800, 31.996843, 27.715752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155117, 32.021091, 27.681585>,  <35.548977, 32.061508, 27.624641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155117, 32.021091, 27.681585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174332, 0.611605, -0.771718,
		-0.009095, -0.784686, -0.619827,
		-0.984645, -0.101037, 0.142358,
		34.859722, 31.990780, 27.724293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360821, 32.027630, 26.969742>,  <35.548977, 32.061508, 27.624641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360821, 32.027630, 26.969742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021091, 32.121902, 27.158680>,  <34.817253, 32.178467, 27.272043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021091, 32.121902, 27.158680>,  <35.360821, 32.027630, 26.969742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021091, 32.121902, 27.158680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197836, 0.687468, -0.698748,
		-0.489404, -0.686907, -0.537254,
		-0.849320, 0.235682, 0.472345,
		34.766296, 32.192608, 27.300383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829899, 32.070072, 26.457722>,  <35.360821, 32.027630, 26.969742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829899, 32.070072, 26.457722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677555, 32.287045, 26.757246>,  <34.586147, 32.417229, 26.936960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677555, 32.287045, 26.757246>,  <34.829899, 32.070072, 26.457722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677555, 32.287045, 26.757246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159448, 0.759183, -0.631045,
		-0.910782, -0.359734, -0.202651,
		-0.380858, 0.542432, 0.748809,
		34.563297, 32.449776, 26.981888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162781, 32.261219, 26.318630>,  <34.829899, 32.070072, 26.457722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162781, 32.261219, 26.318630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287685, 32.537056, 26.579998>,  <34.362629, 32.702557, 26.736818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287685, 32.537056, 26.579998>,  <34.162781, 32.261219, 26.318630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287685, 32.537056, 26.579998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133155, 0.712793, -0.688619,
		-0.940618, 0.128025, 0.314402,
		0.312263, 0.689592, 0.653418,
		34.381363, 32.743935, 26.776024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920368, 32.823784, 26.022190>,  <34.162781, 32.261219, 26.318630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920368, 32.823784, 26.022190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129200, 32.986156, 26.322231>,  <34.254498, 33.083580, 26.502256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129200, 32.986156, 26.322231>,  <33.920368, 32.823784, 26.022190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129200, 32.986156, 26.322231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011654, 0.882786, -0.469630,
		-0.852819, 0.236441, 0.465613,
		0.522077, 0.405936, 0.750101,
		34.285824, 33.107937, 26.547262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632744, 33.409943, 26.125978>,  <33.920368, 32.823784, 26.022190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632744, 33.409943, 26.125978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000099, 33.457100, 26.277058>,  <34.220512, 33.485394, 26.367706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000099, 33.457100, 26.277058>,  <33.632744, 33.409943, 26.125978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000099, 33.457100, 26.277058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039540, 0.922459, -0.384065,
		-0.393690, 0.367657, 0.842518,
		0.918393, 0.117889, 0.377700,
		34.275616, 33.492466, 26.390368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549034, 34.041176, 26.210104>,  <33.632744, 33.409943, 26.125978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549034, 34.041176, 26.210104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944172, 33.984852, 26.236471>,  <34.181255, 33.951057, 26.252293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944172, 33.984852, 26.236471>,  <33.549034, 34.041176, 26.210104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944172, 33.984852, 26.236471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151106, 0.769716, -0.620245,
		0.036596, 0.622664, 0.781633,
		0.987840, -0.140808, 0.065920,
		34.240524, 33.942608, 26.256247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819881, 34.630024, 26.538603>,  <33.549034, 34.041176, 26.210104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819881, 34.630024, 26.538603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100006, 34.454014, 26.313768>,  <34.268082, 34.348408, 26.178867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100006, 34.454014, 26.313768>,  <33.819881, 34.630024, 26.538603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100006, 34.454014, 26.313768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147469, 0.859611, -0.489205,
		0.698436, 0.259707, 0.666888,
		0.700314, -0.440024, -0.562084,
		34.310101, 34.322006, 26.145144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352127, 35.123096, 26.525778>,  <33.819881, 34.630024, 26.538603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352127, 35.123096, 26.525778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416195, 34.880161, 26.214525>,  <34.454636, 34.734402, 26.027775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416195, 34.880161, 26.214525>,  <34.352127, 35.123096, 26.525778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416195, 34.880161, 26.214525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085211, 0.793871, -0.602086,
		0.983405, 0.030129, 0.178905,
		0.160168, -0.607339, -0.778130,
		34.464245, 34.697960, 25.981087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992233, 35.377476, 26.203079>,  <34.352127, 35.123096, 26.525778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992233, 35.377476, 26.203079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807400, 35.157310, 25.924934>,  <34.696499, 35.025211, 25.758047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807400, 35.157310, 25.924934>,  <34.992233, 35.377476, 26.203079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807400, 35.157310, 25.924934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194790, 0.701952, -0.685070,
		0.865178, -0.452010, -0.217148,
		-0.462086, -0.550409, -0.695361,
		34.668774, 34.992188, 25.716326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371468, 35.498833, 25.502867>,  <34.992233, 35.377476, 26.203079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371468, 35.498833, 25.502867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016464, 35.353905, 25.388983>,  <34.803463, 35.266949, 25.320652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016464, 35.353905, 25.388983>,  <35.371468, 35.498833, 25.502867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016464, 35.353905, 25.388983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033197, 0.666533, -0.744736,
		0.459602, -0.651505, -0.603579,
		-0.887505, -0.362319, -0.284712,
		34.750214, 35.245209, 25.303570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374454, 35.362186, 24.742580>,  <35.371468, 35.498833, 25.502867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374454, 35.362186, 24.742580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983044, 35.385921, 24.821545>,  <34.748199, 35.400162, 24.868923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983044, 35.385921, 24.821545>,  <35.374454, 35.362186, 24.742580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983044, 35.385921, 24.821545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115454, 0.635599, -0.763337,
		-0.170773, -0.769735, -0.615097,
		-0.978523, 0.059341, 0.197412,
		34.689487, 35.403725, 24.880768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132141, 35.401669, 24.125828>,  <35.374454, 35.362186, 24.742580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132141, 35.401669, 24.125828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837029, 35.522694, 24.367201>,  <34.659962, 35.595310, 24.512024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837029, 35.522694, 24.367201>,  <35.132141, 35.401669, 24.125828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837029, 35.522694, 24.367201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251360, 0.706502, -0.661569,
		-0.626493, -0.639773, -0.445193,
		-0.737784, 0.302565, 0.603432,
		34.615692, 35.613464, 24.548231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457741, 35.463852, 23.680708>,  <35.132141, 35.401669, 24.125828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457741, 35.463852, 23.680708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420090, 35.684723, 24.012068>,  <34.397499, 35.817245, 24.210884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420090, 35.684723, 24.012068>,  <34.457741, 35.463852, 23.680708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420090, 35.684723, 24.012068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133983, 0.817497, -0.560132,
		-0.986504, -0.163713, -0.002964,
		-0.094124, 0.552175, 0.828398,
		34.391853, 35.850376, 24.260588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881374, 35.814320, 23.505356>,  <34.457741, 35.463852, 23.680708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881374, 35.814320, 23.505356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040413, 36.027348, 23.804228>,  <34.135838, 36.155167, 23.983551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040413, 36.027348, 23.804228>,  <33.881374, 35.814320, 23.505356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040413, 36.027348, 23.804228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152907, 0.841385, -0.518354,
		-0.904729, 0.091849, 0.415969,
		0.397600, 0.532574, 0.747181,
		34.159695, 36.187119, 24.028381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351109, 36.251106, 23.906675>,  <33.881374, 35.814320, 23.505356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351109, 36.251106, 23.906675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730652, 36.376850, 23.895103>,  <33.958378, 36.452297, 23.888161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730652, 36.376850, 23.895103>,  <33.351109, 36.251106, 23.906675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730652, 36.376850, 23.895103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248053, 0.685742, -0.684272,
		-0.195269, 0.656456, 0.728653,
		0.948862, 0.314362, -0.028931,
		34.015312, 36.471157, 23.886423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481297, 37.021965, 24.116070>,  <33.351109, 36.251106, 23.906675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481297, 37.021965, 24.116070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724194, 36.859257, 23.843073>,  <33.869930, 36.761631, 23.679276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724194, 36.859257, 23.843073>,  <33.481297, 37.021965, 24.116070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724194, 36.859257, 23.843073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385344, 0.600427, -0.700713,
		0.694813, 0.688497, 0.207860,
		0.607243, -0.406767, -0.682493,
		33.906368, 36.737228, 23.638325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835648, 37.750778, 24.067839>,  <33.481297, 37.021965, 24.116070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835648, 37.750778, 24.067839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107231, 38.013664, 23.936943>,  <34.270180, 38.171398, 23.858406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107231, 38.013664, 23.936943>,  <33.835648, 37.750778, 24.067839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107231, 38.013664, 23.936943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221348, -0.241740, -0.944758,
		-0.700018, 0.713881, -0.018657,
		0.678955, 0.657218, -0.327238,
		34.310917, 38.210831, 23.838772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447021, 37.995083, 23.552200>,  <33.835648, 37.750778, 24.067839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447021, 37.995083, 23.552200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820778, 38.100136, 23.455923>,  <34.045033, 38.163166, 23.398157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820778, 38.100136, 23.455923>,  <33.447021, 37.995083, 23.552200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820778, 38.100136, 23.455923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173491, -0.254636, -0.951347,
		-0.311142, 0.930691, -0.192367,
		0.934394, 0.262630, -0.240694,
		34.101097, 38.178925, 23.383715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376579, 38.234421, 22.783876>,  <33.447021, 37.995083, 23.552200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376579, 38.234421, 22.783876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766777, 38.178268, 22.851645>,  <34.000896, 38.144577, 22.892305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766777, 38.178268, 22.851645>,  <33.376579, 38.234421, 22.783876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766777, 38.178268, 22.851645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141520, -0.189262, -0.971675,
		0.168468, 0.971840, -0.164758,
		0.975495, -0.140379, 0.169420,
		34.059425, 38.136154, 22.902470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019257, 38.218033, 22.355650>,  <33.376579, 38.234421, 22.783876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019257, 38.218033, 22.355650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124615, 37.997566, 22.672340>,  <34.187832, 37.865284, 22.862354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124615, 37.997566, 22.672340>,  <34.019257, 38.218033, 22.355650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124615, 37.997566, 22.672340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804546, -0.327334, -0.495539,
		0.532286, 0.767505, 0.357223,
		0.263397, -0.551170, 0.791728,
		34.203632, 37.832214, 22.909859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724205, 38.277596, 22.608160>,  <34.019257, 38.218033, 22.355650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724205, 38.277596, 22.608160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566479, 37.911076, 22.636196>,  <34.471844, 37.691166, 22.653017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566479, 37.911076, 22.636196>,  <34.724205, 38.277596, 22.608160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566479, 37.911076, 22.636196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793552, -0.377971, -0.476878,
		0.463454, -0.132421, 0.876171,
		-0.394316, -0.916298, 0.070089,
		34.448185, 37.636185, 22.657223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244324, 37.846207, 22.635691>,  <34.724205, 38.277596, 22.608160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244324, 37.846207, 22.635691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959785, 37.602512, 22.495514>,  <34.789062, 37.456295, 22.411407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959785, 37.602512, 22.495514>,  <35.244324, 37.846207, 22.635691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959785, 37.602512, 22.495514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682710, -0.480488, -0.550489,
		0.166995, -0.630842, 0.757728,
		-0.711350, -0.609238, -0.350443,
		34.746380, 37.419743, 22.390381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314003, 38.567764, 23.107403>,  <35.244324, 37.846207, 22.635691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314003, 38.567764, 23.107403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937420, 38.461792, 23.190802>,  <34.711472, 38.398209, 23.240841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937420, 38.461792, 23.190802>,  <35.314003, 38.567764, 23.107403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937420, 38.461792, 23.190802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088490, 0.402569, 0.911102,
		-0.325314, 0.876213, -0.355558,
		-0.941457, -0.264931, 0.208498,
		34.654984, 38.382313, 23.253351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091274, 39.165474, 23.425621>,  <35.314003, 38.567764, 23.107403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091274, 39.165474, 23.425621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850384, 38.872417, 23.552464>,  <34.705849, 38.696583, 23.628569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850384, 38.872417, 23.552464>,  <35.091274, 39.165474, 23.425621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850384, 38.872417, 23.552464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110340, 0.317014, 0.941981,
		-0.790665, 0.602273, -0.110073,
		-0.602225, -0.732645, 0.317106,
		34.669716, 38.652622, 23.647596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512718, 39.468548, 23.873178>,  <35.091274, 39.165474, 23.425621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512718, 39.468548, 23.873178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583122, 39.088894, 23.977612>,  <34.625366, 38.861103, 24.040272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583122, 39.088894, 23.977612>,  <34.512718, 39.468548, 23.873178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583122, 39.088894, 23.977612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008440, 0.263758, 0.964552,
		-0.984352, -0.171975, 0.038413,
		0.176011, -0.949134, 0.261082,
		34.635925, 38.804153, 24.055937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215439, 39.360374, 24.489355>,  <34.512718, 39.468548, 23.873178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215439, 39.360374, 24.489355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448574, 39.036259, 24.513763>,  <34.588455, 38.841789, 24.528408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448574, 39.036259, 24.513763>,  <34.215439, 39.360374, 24.489355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448574, 39.036259, 24.513763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097725, 0.004653, 0.995203,
		-0.806689, -0.586007, -0.076474,
		0.582840, -0.810292, 0.061021,
		34.623425, 38.793171, 24.532070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952496, 39.101871, 25.094057>,  <34.215439, 39.360374, 24.489355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952496, 39.101871, 25.094057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284264, 38.886169, 25.035732>,  <34.483326, 38.756748, 25.000738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284264, 38.886169, 25.035732>,  <33.952496, 39.101871, 25.094057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284264, 38.886169, 25.035732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107649, -0.101831, 0.988960,
		-0.548151, -0.835962, -0.026411,
		0.829423, -0.539256, -0.145810,
		34.533089, 38.724392, 24.991989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921520, 38.485497, 25.485790>,  <33.952496, 39.101871, 25.094057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921520, 38.485497, 25.485790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313435, 38.534889, 25.422831>,  <34.548584, 38.564526, 25.385056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313435, 38.534889, 25.422831>,  <33.921520, 38.485497, 25.485790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313435, 38.534889, 25.422831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184152, -0.249266, 0.950765,
		0.078169, -0.960530, -0.266967,
		0.979784, 0.123483, -0.157399,
		34.607368, 38.571934, 25.375610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263981, 37.804886, 25.817327>,  <33.921520, 38.485497, 25.485790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263981, 37.804886, 25.817327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529861, 38.102596, 25.791336>,  <34.689392, 38.281223, 25.775742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529861, 38.102596, 25.791336>,  <34.263981, 37.804886, 25.817327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529861, 38.102596, 25.791336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479389, -0.358190, 0.801179,
		0.573022, -0.563698, -0.594887,
		0.664705, 0.744275, -0.064980,
		34.729275, 38.325878, 25.771843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828041, 37.528961, 26.150726>,  <34.263981, 37.804886, 25.817327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828041, 37.528961, 26.150726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920246, 37.918182, 26.148708>,  <34.975567, 38.151714, 26.147497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920246, 37.918182, 26.148708>,  <34.828041, 37.528961, 26.150726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920246, 37.918182, 26.148708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438119, -0.099155, 0.893431,
		0.868860, -0.208153, -0.449171,
		0.230509, 0.973057, -0.005044,
		34.989399, 38.210098, 26.147196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528378, 37.477428, 26.344101>,  <34.828041, 37.528961, 26.150726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528378, 37.477428, 26.344101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395329, 37.845947, 26.424671>,  <35.315498, 38.067059, 26.473013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395329, 37.845947, 26.424671>,  <35.528378, 37.477428, 26.344101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395329, 37.845947, 26.424671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429226, -0.042283, 0.902207,
		0.839718, 0.386553, -0.381380,
		-0.332625, 0.921298, 0.201424,
		35.295540, 38.122337, 26.485098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054184, 37.597942, 26.640062>,  <35.528378, 37.477428, 26.344101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054184, 37.597942, 26.640062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764576, 37.843971, 26.764944>,  <35.590809, 37.991589, 26.839872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764576, 37.843971, 26.764944>,  <36.054184, 37.597942, 26.640062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764576, 37.843971, 26.764944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379063, -0.023349, 0.925076,
		0.576282, 0.788121, -0.216248,
		-0.724023, 0.615077, 0.312203,
		35.547367, 38.028496, 26.858604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305862, 37.995762, 27.116884>,  <36.054184, 37.597942, 26.640062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305862, 37.995762, 27.116884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916695, 38.036533, 27.199875>,  <35.683193, 38.060997, 27.249670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916695, 38.036533, 27.199875>,  <36.305862, 37.995762, 27.116884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916695, 38.036533, 27.199875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184670, -0.197151, 0.962823,
		0.139042, 0.975060, 0.172988,
		-0.972915, 0.101928, 0.207476,
		35.624821, 38.067112, 27.262117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308037, 38.303017, 27.815821>,  <36.305862, 37.995762, 27.116884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308037, 38.303017, 27.815821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944180, 38.144783, 27.765116>,  <35.725864, 38.049843, 27.734694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944180, 38.144783, 27.765116>,  <36.308037, 38.303017, 27.815821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944180, 38.144783, 27.765116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001331, -0.302382, 0.953186,
		-0.415394, 0.867226, 0.274532,
		-0.909641, -0.395582, -0.126761,
		35.671288, 38.026108, 27.727087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926704, 38.355740, 28.489979>,  <36.308037, 38.303017, 27.815821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926704, 38.355740, 28.489979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726261, 38.063896, 28.303837>,  <35.605995, 37.888790, 28.192152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726261, 38.063896, 28.303837>,  <35.926704, 38.355740, 28.489979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726261, 38.063896, 28.303837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148594, -0.457213, 0.876856,
		-0.852532, 0.508548, 0.120697,
		-0.501107, -0.729613, -0.465356,
		35.575928, 37.845013, 28.164230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329823, 38.236591, 28.883331>,  <35.926704, 38.355740, 28.489979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329823, 38.236591, 28.883331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383251, 37.901932, 28.670849>,  <35.415310, 37.701138, 28.543360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383251, 37.901932, 28.670849>,  <35.329823, 38.236591, 28.883331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383251, 37.901932, 28.670849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183481, -0.547619, 0.816363,
		-0.973906, -0.011579, -0.226656,
		0.133574, -0.836648, -0.531205,
		35.423325, 37.650936, 28.511488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725891, 37.906700, 29.044197>,  <35.329823, 38.236591, 28.883331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725891, 37.906700, 29.044197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993683, 37.645496, 28.902563>,  <35.154358, 37.488773, 28.817583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993683, 37.645496, 28.902563>,  <34.725891, 37.906700, 29.044197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993683, 37.645496, 28.902563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116016, -0.562738, 0.818453,
		-0.733715, -0.506858, -0.452501,
		0.669479, -0.653009, -0.354086,
		35.194527, 37.449593, 28.796337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358086, 37.280865, 29.033691>,  <34.725891, 37.906700, 29.044197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358086, 37.280865, 29.033691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748146, 37.196732, 29.061518>,  <34.982182, 37.146252, 29.078213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748146, 37.196732, 29.061518>,  <34.358086, 37.280865, 29.033691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748146, 37.196732, 29.061518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206777, -0.751438, 0.626566,
		-0.079511, -0.625381, -0.776258,
		0.975152, -0.210331, 0.069566,
		35.040691, 37.133633, 29.082388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461830, 36.490204, 28.965004>,  <34.358086, 37.280865, 29.033691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461830, 36.490204, 28.965004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780308, 36.661217, 29.136255>,  <34.971394, 36.763824, 29.239006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780308, 36.661217, 29.136255>,  <34.461830, 36.490204, 28.965004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780308, 36.661217, 29.136255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198031, -0.484488, 0.852089,
		0.571716, -0.763210, -0.301083,
		0.796194, 0.427529, 0.428128,
		35.019165, 36.789474, 29.264694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841698, 35.972851, 29.299297>,  <34.461830, 36.490204, 28.965004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841698, 35.972851, 29.299297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015221, 36.282806, 29.483191>,  <35.119335, 36.468781, 29.593527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015221, 36.282806, 29.483191>,  <34.841698, 35.972851, 29.299297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015221, 36.282806, 29.483191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044041, -0.491400, 0.869820,
		0.899930, -0.397579, -0.179045,
		0.433805, 0.774891, 0.459735,
		35.145363, 36.515274, 29.621111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318321, 35.631008, 29.798992>,  <34.841698, 35.972851, 29.299297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318321, 35.631008, 29.798992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265484, 36.007462, 29.923452>,  <35.233780, 36.233334, 29.998129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265484, 36.007462, 29.923452>,  <35.318321, 35.631008, 29.798992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265484, 36.007462, 29.923452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010169, -0.312598, 0.949831,
		0.991185, 0.128632, 0.031722,
		-0.132095, 0.941136, 0.311151,
		35.225857, 36.289803, 30.016798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878197, 35.741550, 30.253223>,  <35.318321, 35.631008, 29.798992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878197, 35.741550, 30.253223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594433, 36.008675, 30.343346>,  <35.424175, 36.168949, 30.397419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594433, 36.008675, 30.343346>,  <35.878197, 35.741550, 30.253223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594433, 36.008675, 30.343346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045167, -0.275940, 0.960113,
		0.703348, 0.691290, 0.165591,
		-0.709410, 0.667814, 0.225305,
		35.381611, 36.209019, 30.410936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175232, 36.231007, 30.604334>,  <35.878197, 35.741550, 30.253223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175232, 36.231007, 30.604334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786892, 36.250015, 30.698303>,  <35.553886, 36.261421, 30.754684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786892, 36.250015, 30.698303>,  <36.175232, 36.231007, 30.604334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786892, 36.250015, 30.698303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227911, -0.120344, 0.966216,
		0.074189, 0.991594, 0.106005,
		-0.970851, 0.047523, 0.234924,
		35.495636, 36.264271, 30.768780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141823, 36.640427, 31.184814>,  <36.175232, 36.231007, 30.604334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141823, 36.640427, 31.184814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785549, 36.458767, 31.193146>,  <35.571785, 36.349773, 31.198145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785549, 36.458767, 31.193146>,  <36.141823, 36.640427, 31.184814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785549, 36.458767, 31.193146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139212, -0.228835, 0.963460,
		-0.432784, 0.861038, 0.267042,
		-0.890684, -0.454146, 0.020830,
		35.518345, 36.322525, 31.199394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845119, 36.939796, 31.798674>,  <36.141823, 36.640427, 31.184814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845119, 36.939796, 31.798674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659111, 36.598873, 31.702898>,  <35.547504, 36.394321, 31.645432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659111, 36.598873, 31.702898>,  <35.845119, 36.939796, 31.798674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659111, 36.598873, 31.702898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242238, -0.382639, 0.891576,
		-0.851514, 0.356600, 0.384396,
		-0.465021, -0.852305, -0.239440,
		35.519604, 36.343182, 31.631065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353928, 36.796288, 32.288708>,  <35.845119, 36.939796, 31.798674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353928, 36.796288, 32.288708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443844, 36.443722, 32.122536>,  <35.497791, 36.232182, 32.022835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443844, 36.443722, 32.122536>,  <35.353928, 36.796288, 32.288708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443844, 36.443722, 32.122536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165006, -0.385747, 0.907729,
		-0.960335, -0.272594, 0.058727,
		0.224787, -0.881415, -0.415426,
		35.511280, 36.179298, 31.997908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119568, 36.347603, 32.732197>,  <35.353928, 36.796288, 32.288708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119568, 36.347603, 32.732197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352673, 36.110977, 32.509331>,  <35.492535, 35.969002, 32.375610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352673, 36.110977, 32.509331>,  <35.119568, 36.347603, 32.732197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352673, 36.110977, 32.509331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266220, -0.508815, 0.818678,
		-0.767798, -0.625424, -0.139031,
		0.582763, -0.591567, -0.557167,
		35.527500, 35.933506, 32.342182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879654, 35.727463, 32.846275>,  <35.119568, 36.347603, 32.732197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879654, 35.727463, 32.846275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254318, 35.658051, 32.724583>,  <35.479115, 35.616405, 32.651566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254318, 35.658051, 32.724583>,  <34.879654, 35.727463, 32.846275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254318, 35.658051, 32.724583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172425, -0.527629, 0.831792,
		-0.304862, -0.831563, -0.464287,
		0.936658, -0.173527, -0.304236,
		35.535316, 35.605991, 32.633312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006939, 35.000500, 32.856159>,  <34.879654, 35.727463, 32.846275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006939, 35.000500, 32.856159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359325, 35.188652, 32.876709>,  <35.570759, 35.301544, 32.889038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359325, 35.188652, 32.876709>,  <35.006939, 35.000500, 32.856159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359325, 35.188652, 32.876709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177914, -0.429894, 0.885177,
		0.438460, -0.770669, -0.462409,
		0.880965, 0.470384, 0.051378,
		35.623615, 35.329769, 32.892124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480339, 34.459019, 33.007320>,  <35.006939, 35.000500, 32.856159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480339, 34.459019, 33.007320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623634, 34.808918, 33.137852>,  <35.709610, 35.018856, 33.216171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623634, 34.808918, 33.137852>,  <35.480339, 34.459019, 33.007320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623634, 34.808918, 33.137852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208228, -0.415579, 0.885401,
		0.910114, -0.249233, -0.331022,
		0.358237, 0.874744, 0.326327,
		35.731106, 35.071342, 33.235748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980045, 34.290104, 33.489918>,  <35.480339, 34.459019, 33.007320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980045, 34.290104, 33.489918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909050, 34.675064, 33.572166>,  <35.866451, 34.906040, 33.621517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909050, 34.675064, 33.572166>,  <35.980045, 34.290104, 33.489918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909050, 34.675064, 33.572166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060006, -0.197970, 0.978370,
		0.982292, 0.185989, -0.022612,
		-0.177489, 0.962401, 0.205625,
		35.855804, 34.963783, 33.633854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564266, 34.422573, 33.821404>,  <35.980045, 34.290104, 33.489918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564266, 34.422573, 33.821404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322544, 34.724915, 33.922192>,  <36.177509, 34.906319, 33.982666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322544, 34.724915, 33.922192>,  <36.564266, 34.422573, 33.821404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322544, 34.724915, 33.922192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274519, -0.099355, 0.956435,
		0.747963, 0.647153, -0.147456,
		-0.604310, 0.755858, 0.251970,
		36.141251, 34.951672, 33.997784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855648, 34.710670, 34.354881>,  <36.564266, 34.422573, 33.821404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855648, 34.710670, 34.354881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498920, 34.885681, 34.400890>,  <36.284885, 34.990688, 34.428493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498920, 34.885681, 34.400890>,  <36.855648, 34.710670, 34.354881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498920, 34.885681, 34.400890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148655, 0.043288, 0.987941,
		0.427271, 0.898163, -0.103646,
		-0.891819, 0.437526, 0.115020,
		36.231377, 35.016937, 34.435398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006481, 35.185024, 34.817028>,  <36.855648, 34.710670, 34.354881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006481, 35.185024, 34.817028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611736, 35.123203, 34.835880>,  <36.374889, 35.086113, 34.847191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611736, 35.123203, 34.835880>,  <37.006481, 35.185024, 34.817028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611736, 35.123203, 34.835880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045780, 0.012313, 0.998876,
		-0.154956, 0.987908, -0.005075,
		-0.986860, -0.154549, 0.047134,
		36.315678, 35.076839, 34.850021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698051, 35.736042, 35.232048>,  <37.006481, 35.185024, 34.817028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698051, 35.736042, 35.232048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507504, 35.384346, 35.230732>,  <36.393177, 35.173328, 35.229942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507504, 35.384346, 35.230732>,  <36.698051, 35.736042, 35.232048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507504, 35.384346, 35.230732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162870, -0.091918, 0.982357,
		-0.864030, 0.467426, 0.186989,
		-0.476367, -0.879240, -0.003290,
		36.364594, 35.120575, 35.229744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371750, 35.739433, 35.902695>,  <36.698051, 35.736042, 35.232048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371750, 35.739433, 35.902695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287659, 35.375160, 35.760452>,  <36.237206, 35.156597, 35.675106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287659, 35.375160, 35.760452>,  <36.371750, 35.739433, 35.902695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287659, 35.375160, 35.760452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185876, -0.319868, 0.929050,
		-0.959821, 0.261407, -0.102031,
		-0.210224, -0.910687, -0.355606,
		36.224590, 35.101955, 35.653770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621708, 35.412910, 36.176353>,  <36.371750, 35.739433, 35.902695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621708, 35.412910, 36.176353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893295, 35.133492, 36.085991>,  <36.056248, 34.965839, 36.031773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893295, 35.133492, 36.085991>,  <35.621708, 35.412910, 36.176353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893295, 35.133492, 36.085991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258941, -0.515783, 0.816650,
		-0.686984, -0.495986, -0.531084,
		0.678971, -0.698545, -0.225903,
		36.096989, 34.923927, 36.018219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268875, 34.773407, 36.404354>,  <35.621708, 35.412910, 36.176353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268875, 34.773407, 36.404354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652473, 34.678902, 36.341728>,  <35.882633, 34.622200, 36.304153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652473, 34.678902, 36.341728>,  <35.268875, 34.773407, 36.404354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652473, 34.678902, 36.341728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036246, -0.650097, 0.758986,
		-0.281103, -0.722187, -0.632002,
		0.958993, -0.236261, -0.156568,
		35.940170, 34.608025, 36.294758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361862, 33.990360, 36.404209>,  <35.268875, 34.773407, 36.404354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361862, 33.990360, 36.404209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726261, 34.129066, 36.493515>,  <35.944901, 34.212288, 36.547100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726261, 34.129066, 36.493515>,  <35.361862, 33.990360, 36.404209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726261, 34.129066, 36.493515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055620, -0.639707, 0.766603,
		0.408653, -0.685953, -0.602056,
		0.910993, 0.346761, 0.223266,
		35.999557, 34.233093, 36.560493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733418, 33.406281, 36.549606>,  <35.361862, 33.990360, 36.404209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733418, 33.406281, 36.549606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955566, 33.698418, 36.708683>,  <36.088856, 33.873699, 36.804131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955566, 33.698418, 36.708683>,  <35.733418, 33.406281, 36.549606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955566, 33.698418, 36.708683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299526, -0.621808, 0.723629,
		0.775788, -0.282762, -0.564091,
		0.555371, 0.730343, 0.397696,
		36.122177, 33.917522, 36.827991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352123, 33.077381, 36.795609>,  <35.733418, 33.406281, 36.549606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352123, 33.077381, 36.795609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318298, 33.424206, 36.992001>,  <36.298004, 33.632301, 37.109837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318298, 33.424206, 36.992001>,  <36.352123, 33.077381, 36.795609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318298, 33.424206, 36.992001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364791, -0.431595, 0.825017,
		0.927242, 0.248868, -0.279799,
		-0.084561, 0.867058, 0.490978,
		36.292931, 33.684322, 37.139294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011814, 33.155453, 37.179749>,  <36.352123, 33.077381, 36.795609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011814, 33.155453, 37.179749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733421, 33.382027, 37.356277>,  <36.566387, 33.517971, 37.462193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733421, 33.382027, 37.356277>,  <37.011814, 33.155453, 37.179749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733421, 33.382027, 37.356277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097304, -0.534531, 0.839529,
		0.711439, 0.627236, 0.316906,
		-0.695979, 0.566437, 0.441319,
		36.524628, 33.551956, 37.488674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345867, 33.279182, 37.776268>,  <37.011814, 33.155453, 37.179749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345867, 33.279182, 37.776268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970356, 33.384739, 37.864853>,  <36.745049, 33.448074, 37.918003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970356, 33.384739, 37.864853>,  <37.345867, 33.279182, 37.776268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970356, 33.384739, 37.864853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044458, -0.544667, 0.837473,
		0.341630, 0.796051, 0.499591,
		-0.938783, 0.263895, 0.221465,
		36.688721, 33.463909, 37.931293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020164, 33.118481, 37.383656>,  <37.345867, 33.279182, 37.776268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020164, 33.118481, 37.383656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415920, 33.176369, 37.388802>,  <38.653374, 33.211102, 37.391888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415920, 33.176369, 37.388802>,  <38.020164, 33.118481, 37.383656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415920, 33.176369, 37.388802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100127, 0.743327, -0.661392,
		-0.105276, 0.653086, 0.749930,
		0.989389, 0.144717, 0.012863,
		38.712738, 33.219784, 37.392662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152256, 33.886391, 37.273552>,  <38.020164, 33.118481, 37.383656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152256, 33.886391, 37.273552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514446, 33.731541, 37.203995>,  <38.731762, 33.638630, 37.162262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514446, 33.731541, 37.203995>,  <38.152256, 33.886391, 37.273552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514446, 33.731541, 37.203995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181211, 0.723197, -0.666445,
		0.383757, 0.571941, 0.724992,
		0.905480, -0.387129, -0.173890,
		38.786091, 33.615402, 37.151829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575310, 34.488846, 37.173008>,  <38.152256, 33.886391, 37.273552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575310, 34.488846, 37.173008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797081, 34.191399, 37.023533>,  <38.930145, 34.012932, 36.933846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797081, 34.191399, 37.023533>,  <38.575310, 34.488846, 37.173008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797081, 34.191399, 37.023533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332478, 0.609547, -0.719661,
		0.762932, 0.274758, 0.585186,
		0.554431, -0.743614, -0.373692,
		38.963409, 33.968315, 36.911427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243637, 34.745251, 37.035637>,  <38.575310, 34.488846, 37.173008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243637, 34.745251, 37.035637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257282, 34.414150, 36.811611>,  <39.265469, 34.215492, 36.677197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257282, 34.414150, 36.811611>,  <39.243637, 34.745251, 37.035637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257282, 34.414150, 36.811611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478528, 0.505502, -0.717969,
		0.877409, -0.243514, 0.413344,
		0.034111, -0.827749, -0.560060,
		39.267517, 34.165825, 36.643593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926018, 34.834888, 36.679089>,  <39.243637, 34.745251, 37.035637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926018, 34.834888, 36.679089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681252, 34.591263, 36.477261>,  <39.534389, 34.445087, 36.356163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681252, 34.591263, 36.477261>,  <39.926018, 34.834888, 36.679089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681252, 34.591263, 36.477261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114554, 0.562976, -0.818496,
		0.782581, -0.558653, -0.274725,
		-0.611919, -0.609069, -0.504570,
		39.497677, 34.408543, 36.325890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209270, 34.983387, 35.983879>,  <39.926018, 34.834888, 36.679089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209270, 34.983387, 35.983879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875492, 34.772530, 35.919617>,  <39.675224, 34.646015, 35.881058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875492, 34.772530, 35.919617>,  <40.209270, 34.983387, 35.983879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875492, 34.772530, 35.919617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043535, 0.353672, -0.934356,
		0.549362, -0.772679, -0.318071,
		-0.834449, -0.527147, -0.160656,
		39.625156, 34.614388, 35.871422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313431, 34.595238, 35.345425>,  <40.209270, 34.983387, 35.983879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313431, 34.595238, 35.345425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923103, 34.629414, 35.425903>,  <39.688908, 34.649918, 35.474190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923103, 34.629414, 35.425903>,  <40.313431, 34.595238, 35.345425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923103, 34.629414, 35.425903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149598, 0.410097, -0.899690,
		-0.159380, -0.908031, -0.387398,
		-0.975817, 0.085439, 0.201201,
		39.630360, 34.655045, 35.486263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999886, 34.381172, 34.661968>,  <40.313431, 34.595238, 35.345425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999886, 34.381172, 34.661968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714756, 34.554783, 34.882332>,  <39.543678, 34.658947, 35.014549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714756, 34.554783, 34.882332>,  <39.999886, 34.381172, 34.661968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714756, 34.554783, 34.882332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290528, 0.532210, -0.795202,
		-0.638337, -0.726895, -0.253276,
		-0.712824, 0.434024, 0.550913,
		39.500908, 34.684990, 35.047607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413685, 34.399227, 34.265900>,  <39.999886, 34.381172, 34.661968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413685, 34.399227, 34.265900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297024, 34.700443, 34.501820>,  <39.227028, 34.881172, 34.643372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297024, 34.700443, 34.501820>,  <39.413685, 34.399227, 34.265900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297024, 34.700443, 34.501820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102237, 0.588532, -0.801984,
		-0.951044, -0.294202, -0.094659,
		-0.291655, 0.753044, 0.589798,
		39.209526, 34.926357, 34.678761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783783, 34.772621, 33.985752>,  <39.413685, 34.399227, 34.265900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783783, 34.772621, 33.985752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962948, 35.029716, 34.234352>,  <39.070446, 35.183971, 34.383514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962948, 35.029716, 34.234352>,  <38.783783, 34.772621, 33.985752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962948, 35.029716, 34.234352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178663, 0.745457, -0.642163,
		-0.876045, 0.176592, 0.448731,
		0.447910, 0.642736, 0.621504,
		39.097321, 35.222538, 34.420803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267567, 35.357018, 34.045620>,  <38.783783, 34.772621, 33.985752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267567, 35.357018, 34.045620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613258, 35.525776, 34.155251>,  <38.820671, 35.627029, 34.221027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613258, 35.525776, 34.155251>,  <38.267567, 35.357018, 34.045620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613258, 35.525776, 34.155251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214104, 0.801393, -0.558505,
		-0.455273, 0.423995, 0.782915,
		0.864226, 0.421897, 0.274074,
		38.872524, 35.652344, 34.237473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097263, 36.038307, 34.227665>,  <38.267567, 35.357018, 34.045620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097263, 36.038307, 34.227665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489830, 36.020126, 34.153103>,  <38.725372, 36.009216, 34.108364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489830, 36.020126, 34.153103>,  <38.097263, 36.038307, 34.227665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489830, 36.020126, 34.153103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082087, 0.778658, -0.622056,
		0.173423, 0.625800, 0.760460,
		0.981421, -0.045454, -0.186407,
		38.784256, 36.006489, 34.097179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131721, 36.695057, 34.060696>,  <38.097263, 36.038307, 34.227665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131721, 36.695057, 34.060696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451279, 36.495354, 33.926525>,  <38.643013, 36.375534, 33.846024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451279, 36.495354, 33.926525>,  <38.131721, 36.695057, 34.060696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451279, 36.495354, 33.926525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080527, 0.463878, -0.882232,
		0.596057, 0.731821, 0.330386,
		0.798894, -0.499255, -0.335429,
		38.690948, 36.345577, 33.825897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581059, 37.237625, 33.813808>,  <38.131721, 36.695057, 34.060696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581059, 37.237625, 33.813808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661301, 36.890190, 33.632561>,  <38.709446, 36.681728, 33.523811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661301, 36.890190, 33.632561>,  <38.581059, 37.237625, 33.813808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661301, 36.890190, 33.632561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075365, 0.447464, -0.891121,
		0.976768, 0.212915, 0.024304,
		0.200608, -0.868587, -0.453115,
		38.721481, 36.629616, 33.496628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094902, 37.394104, 33.237373>,  <38.581059, 37.237625, 33.813808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094902, 37.394104, 33.237373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940338, 37.033649, 33.158741>,  <38.847599, 36.817379, 33.111561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940338, 37.033649, 33.158741>,  <39.094902, 37.394104, 33.237373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940338, 37.033649, 33.158741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115146, 0.258598, -0.959098,
		0.915111, -0.347970, -0.203687,
		-0.386411, -0.901135, -0.196579,
		38.824413, 36.763309, 33.099766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597889, 37.002937, 32.725552>,  <39.094902, 37.394104, 33.237373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597889, 37.002937, 32.725552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216457, 36.883953, 32.706791>,  <38.987598, 36.812561, 32.695534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216457, 36.883953, 32.706791>,  <39.597889, 37.002937, 32.725552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216457, 36.883953, 32.706791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009340, 0.126467, -0.991927,
		0.300991, -0.946321, -0.117818,
		-0.953582, -0.297461, -0.046904,
		38.930382, 36.794716, 32.692719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515427, 36.682808, 32.082775>,  <39.597889, 37.002937, 32.725552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515427, 36.682808, 32.082775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124210, 36.683468, 32.166138>,  <38.889481, 36.683865, 32.216156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124210, 36.683468, 32.166138>,  <39.515427, 36.682808, 32.082775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124210, 36.683468, 32.166138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207700, -0.090151, -0.974029,
		0.017183, -0.995927, 0.088514,
		-0.978042, 0.001648, 0.208403,
		38.830799, 36.683964, 32.228657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222008, 36.115593, 31.642490>,  <39.515427, 36.682808, 32.082775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222008, 36.115593, 31.642490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938732, 36.378307, 31.746111>,  <38.768768, 36.535934, 31.808283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938732, 36.378307, 31.746111>,  <39.222008, 36.115593, 31.642490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938732, 36.378307, 31.746111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217766, 0.145825, -0.965046,
		-0.671602, -0.739845, 0.039754,
		-0.708187, 0.656784, 0.259049,
		38.726276, 36.575344, 31.823826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590363, 35.899597, 31.312489>,  <39.222008, 36.115593, 31.642490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590363, 35.899597, 31.312489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540405, 36.282761, 31.415874>,  <38.510429, 36.512661, 31.477905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540405, 36.282761, 31.415874>,  <38.590363, 35.899597, 31.312489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540405, 36.282761, 31.415874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302826, 0.211270, -0.929334,
		-0.944827, -0.194337, 0.263694,
		-0.124893, 0.957914, 0.258464,
		38.502937, 36.570133, 31.493414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899563, 36.050579, 31.067383>,  <38.590363, 35.899597, 31.312489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899563, 36.050579, 31.067383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061951, 36.415611, 31.086931>,  <38.159386, 36.634628, 31.098660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061951, 36.415611, 31.086931>,  <37.899563, 36.050579, 31.067383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061951, 36.415611, 31.086931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394997, 0.223440, -0.891096,
		-0.824114, 0.342456, 0.451176,
		0.405972, 0.912578, 0.048871,
		38.183743, 36.689384, 31.101593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395248, 36.488289, 31.031614>,  <37.899563, 36.050579, 31.067383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395248, 36.488289, 31.031614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719063, 36.696499, 30.923027>,  <37.913353, 36.821426, 30.857874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719063, 36.696499, 30.923027>,  <37.395248, 36.488289, 31.031614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719063, 36.696499, 30.923027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446818, 0.246377, -0.860031,
		-0.380787, 0.817526, 0.432033,
		0.809540, 0.520528, -0.271468,
		37.961926, 36.852657, 30.841587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084953, 37.101673, 30.587801>,  <37.395248, 36.488289, 31.031614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084953, 37.101673, 30.587801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472614, 37.055843, 30.500509>,  <37.705212, 37.028343, 30.448135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472614, 37.055843, 30.500509>,  <37.084953, 37.101673, 30.587801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472614, 37.055843, 30.500509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198882, 0.159473, -0.966961,
		0.145594, 0.980531, 0.131765,
		0.969148, -0.114578, -0.218228,
		37.763359, 37.021469, 30.435041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200901, 37.677841, 30.020151>,  <37.084953, 37.101673, 30.587801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200901, 37.677841, 30.020151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493343, 37.406822, 29.988098>,  <37.668808, 37.244213, 29.968866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493343, 37.406822, 29.988098>,  <37.200901, 37.677841, 30.020151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493343, 37.406822, 29.988098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021394, 0.094626, -0.995283,
		0.681932, 0.729369, 0.054686,
		0.731103, -0.677545, -0.080133,
		37.712673, 37.203560, 29.964058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725216, 37.954689, 29.516521>,  <37.200901, 37.677841, 30.020151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725216, 37.954689, 29.516521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785820, 37.559429, 29.506714>,  <37.822182, 37.322273, 29.500830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785820, 37.559429, 29.506714>,  <37.725216, 37.954689, 29.516521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785820, 37.559429, 29.506714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098255, 0.009629, -0.995115,
		0.983561, 0.153177, -0.095632,
		0.151507, -0.988152, -0.024521,
		37.831272, 37.262985, 29.499357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065769, 37.965523, 28.828051>,  <37.725216, 37.954689, 29.516521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065769, 37.965523, 28.828051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035091, 37.579075, 28.926624>,  <38.016685, 37.347206, 28.985769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035091, 37.579075, 28.926624>,  <38.065769, 37.965523, 28.828051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035091, 37.579075, 28.926624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042450, -0.243774, -0.968903,
		0.996151, -0.084768, -0.022316,
		-0.076691, -0.966121, 0.246434,
		38.012085, 37.289238, 29.000555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546650, 37.558510, 28.400990>,  <38.065769, 37.965523, 28.828051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546650, 37.558510, 28.400990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263962, 37.299511, 28.515038>,  <38.094349, 37.144112, 28.583466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263962, 37.299511, 28.515038>,  <38.546650, 37.558510, 28.400990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263962, 37.299511, 28.515038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211950, -0.190727, -0.958489,
		0.674996, -0.737817, -0.002445,
		-0.706723, -0.647494, 0.285120,
		38.051945, 37.105263, 28.600574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715240, 36.951355, 28.044722>,  <38.546650, 37.558510, 28.400990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715240, 36.951355, 28.044722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325409, 36.953064, 28.134315>,  <38.091511, 36.954090, 28.188072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325409, 36.953064, 28.134315>,  <38.715240, 36.951355, 28.044722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325409, 36.953064, 28.134315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218144, -0.245730, -0.944473,
		0.051002, -0.969329, 0.240417,
		-0.974583, 0.004276, 0.223986,
		38.033035, 36.954346, 28.201511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399433, 36.300812, 27.843586>,  <38.715240, 36.951355, 28.044722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399433, 36.300812, 27.843586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103745, 36.568924, 27.869741>,  <37.926331, 36.729790, 27.885435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103745, 36.568924, 27.869741>,  <38.399433, 36.300812, 27.843586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103745, 36.568924, 27.869741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319249, -0.263278, -0.910365,
		-0.592983, -0.693838, 0.408607,
		-0.739223, 0.670278, 0.065388,
		37.881977, 36.770008, 27.889359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875389, 35.975899, 27.669838>,  <38.399433, 36.300812, 27.843586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875389, 35.975899, 27.669838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744041, 36.348198, 27.605490>,  <37.665234, 36.571579, 27.566881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744041, 36.348198, 27.605490>,  <37.875389, 35.975899, 27.669838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744041, 36.348198, 27.605490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205690, -0.236689, -0.949563,
		-0.921880, -0.278722, 0.269168,
		-0.328373, 0.930748, -0.160869,
		37.645531, 36.627422, 27.557230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236652, 35.823002, 27.389050>,  <37.875389, 35.975899, 27.669838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236652, 35.823002, 27.389050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305813, 36.199329, 27.272449>,  <37.347309, 36.425125, 27.202490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305813, 36.199329, 27.272449>,  <37.236652, 35.823002, 27.389050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305813, 36.199329, 27.272449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279450, -0.236938, -0.930467,
		-0.944465, 0.242334, 0.221945,
		0.172896, 0.940816, -0.291500,
		37.357681, 36.481575, 27.184999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655003, 35.977577, 27.003498>,  <37.236652, 35.823002, 27.389050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655003, 35.977577, 27.003498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919197, 36.252510, 26.882614>,  <37.077713, 36.417469, 26.810083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919197, 36.252510, 26.882614>,  <36.655003, 35.977577, 27.003498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919197, 36.252510, 26.882614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334827, -0.090639, -0.937910,
		-0.672050, 0.720663, 0.170273,
		0.660484, 0.687335, -0.302211,
		37.117344, 36.458710, 26.791950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354534, 36.462528, 26.717659>,  <36.655003, 35.977577, 27.003498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354534, 36.462528, 26.717659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709778, 36.558720, 26.560980>,  <36.922924, 36.616436, 26.466972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709778, 36.558720, 26.560980>,  <36.354534, 36.462528, 26.717659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709778, 36.558720, 26.560980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394131, -0.039989, -0.918184,
		-0.236468, 0.969830, 0.059266,
		0.888112, 0.240480, -0.391696,
		36.976212, 36.630863, 26.443472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205486, 36.852005, 26.130905>,  <36.354534, 36.462528, 26.717659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205486, 36.852005, 26.130905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588253, 36.753525, 26.069338>,  <36.817913, 36.694435, 26.032396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588253, 36.753525, 26.069338>,  <36.205486, 36.852005, 26.130905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588253, 36.753525, 26.069338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170671, -0.048078, -0.984154,
		0.234900, 0.968026, -0.088027,
		0.956919, -0.246201, -0.153920,
		36.875328, 36.679665, 26.023161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527409, 37.317009, 25.655504>,  <36.205486, 36.852005, 26.130905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527409, 37.317009, 25.655504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719288, 36.967159, 25.627428>,  <36.834415, 36.757252, 25.610582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719288, 36.967159, 25.627428>,  <36.527409, 37.317009, 25.655504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719288, 36.967159, 25.627428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095666, 0.027384, -0.995037,
		0.872203, 0.484031, -0.070536,
		0.479697, -0.874622, -0.070189,
		36.863197, 36.704773, 25.606371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106148, 37.356255, 25.106880>,  <36.527409, 37.317009, 25.655504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106148, 37.356255, 25.106880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037601, 36.966404, 25.164478>,  <36.996471, 36.732494, 25.199038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037601, 36.966404, 25.164478>,  <37.106148, 37.356255, 25.106880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037601, 36.966404, 25.164478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009903, -0.147853, -0.988960,
		0.985157, -0.168051, 0.034989,
		-0.171369, -0.974627, 0.143994,
		36.986191, 36.674015, 25.207676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573246, 37.087067, 24.678822>,  <37.106148, 37.356255, 25.106880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573246, 37.087067, 24.678822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338306, 36.768070, 24.734005>,  <37.197342, 36.576672, 24.767115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338306, 36.768070, 24.734005>,  <37.573246, 37.087067, 24.678822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338306, 36.768070, 24.734005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064991, -0.216385, -0.974142,
		0.806720, -0.563196, 0.178923,
		-0.587349, -0.797488, 0.137959,
		37.162102, 36.528824, 24.775393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944607, 36.529144, 24.512798>,  <37.573246, 37.087067, 24.678822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944607, 36.529144, 24.512798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549999, 36.489334, 24.460846>,  <37.313232, 36.465450, 24.429674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549999, 36.489334, 24.460846>,  <37.944607, 36.529144, 24.512798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549999, 36.489334, 24.460846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150408, -0.239014, -0.959296,
		0.064428, -0.965902, 0.250762,
		-0.986522, -0.099522, -0.129880,
		37.254044, 36.459476, 24.421883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951717, 36.023846, 24.081255>,  <37.944607, 36.529144, 24.512798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951717, 36.023846, 24.081255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577843, 36.164352, 24.059441>,  <37.353519, 36.248657, 24.046352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577843, 36.164352, 24.059441>,  <37.951717, 36.023846, 24.081255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577843, 36.164352, 24.059441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041185, -0.259400, -0.964891,
		-0.353080, -0.899624, 0.256925,
		-0.934686, 0.351265, -0.054538,
		37.297436, 36.269733, 24.043079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527199, 36.378693, 23.780396>,  <37.951717, 36.023846, 24.081255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527199, 36.378693, 23.780396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851242, 36.265377, 23.575079>,  <39.045670, 36.197388, 23.451889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851242, 36.265377, 23.575079>,  <38.527199, 36.378693, 23.780396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851242, 36.265377, 23.575079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501274, -0.119356, 0.857017,
		-0.304050, -0.951578, 0.045315,
		0.810110, -0.283291, -0.513292,
		39.094276, 36.180389, 23.421091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766945, 35.691330, 23.922848>,  <38.527199, 36.378693, 23.780396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766945, 35.691330, 23.922848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035355, 35.971100, 23.824440>,  <39.196400, 36.138962, 23.765394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035355, 35.971100, 23.824440>,  <38.766945, 35.691330, 23.922848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035355, 35.971100, 23.824440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401356, -0.063665, 0.913707,
		0.623410, -0.711861, -0.323441,
		0.671023, 0.699429, -0.246020,
		39.236660, 36.180927, 23.750633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461227, 35.481621, 23.943094>,  <38.766945, 35.691330, 23.922848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461227, 35.481621, 23.943094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497520, 35.878300, 23.979555>,  <39.519295, 36.116306, 24.001432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497520, 35.878300, 23.979555>,  <39.461227, 35.481621, 23.943094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497520, 35.878300, 23.979555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482883, -0.123861, 0.866881,
		0.870972, -0.034639, -0.490111,
		0.090734, 0.991695, 0.091152,
		39.524742, 36.175808, 24.006901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104591, 35.580246, 24.205999>,  <39.461227, 35.481621, 23.943094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104591, 35.580246, 24.205999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942146, 35.939720, 24.272268>,  <39.844681, 36.155403, 24.312029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942146, 35.939720, 24.272268>,  <40.104591, 35.580246, 24.205999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942146, 35.939720, 24.272268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423039, 0.024187, 0.905789,
		0.810008, 0.437936, -0.390000,
		-0.406110, 0.898681, 0.165672,
		39.820312, 36.209324, 24.321970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683228, 36.113609, 24.319767>,  <40.104591, 35.580246, 24.205999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683228, 36.113609, 24.319767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347820, 36.251835, 24.488277>,  <40.146576, 36.334770, 24.589384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347820, 36.251835, 24.488277>,  <40.683228, 36.113609, 24.319767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347820, 36.251835, 24.488277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458700, 0.030397, 0.888071,
		0.294082, 0.937902, -0.183999,
		-0.838517, 0.345566, 0.421277,
		40.096264, 36.355503, 24.614660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867657, 36.603100, 24.811850>,  <40.683228, 36.113609, 24.319767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867657, 36.603100, 24.811850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504215, 36.484962, 24.929976>,  <40.286148, 36.414082, 25.000851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504215, 36.484962, 24.929976>,  <40.867657, 36.603100, 24.811850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504215, 36.484962, 24.929976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324185, -0.052916, 0.944513,
		-0.263325, 0.953926, 0.143824,
		-0.908606, -0.295340, 0.295314,
		40.231632, 36.396362, 25.018570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758434, 36.990643, 25.349104>,  <40.867657, 36.603100, 24.811850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758434, 36.990643, 25.349104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491913, 36.696373, 25.397787>,  <40.332001, 36.519810, 25.426998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491913, 36.696373, 25.397787>,  <40.758434, 36.990643, 25.349104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491913, 36.696373, 25.397787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154990, 0.023020, 0.987648,
		-0.729393, 0.676940, 0.098684,
		-0.666306, -0.735678, 0.121709,
		40.292023, 36.475670, 25.434299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283867, 37.186741, 25.882130>,  <40.758434, 36.990643, 25.349104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283867, 37.186741, 25.882130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255402, 36.788700, 25.854668>,  <40.238323, 36.549877, 25.838190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255402, 36.788700, 25.854668>,  <40.283867, 37.186741, 25.882130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255402, 36.788700, 25.854668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339419, -0.088877, 0.936427,
		-0.937940, 0.043333, 0.344080,
		-0.071159, -0.995100, -0.068653,
		40.234055, 36.490170, 25.834072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041946, 36.994827, 26.578741>,  <40.283867, 37.186741, 25.882130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041946, 36.994827, 26.578741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204552, 36.657894, 26.437191>,  <40.302116, 36.455734, 26.352261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204552, 36.657894, 26.437191>,  <40.041946, 36.994827, 26.578741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204552, 36.657894, 26.437191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316738, -0.233378, 0.919354,
		-0.856986, -0.485814, 0.171927,
		0.406511, -0.842330, -0.353877,
		40.326504, 36.405197, 26.331028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965908, 36.586201, 27.091537>,  <40.041946, 36.994827, 26.578741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965908, 36.586201, 27.091537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239410, 36.380352, 26.884600>,  <40.403511, 36.256844, 26.760437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239410, 36.380352, 26.884600>,  <39.965908, 36.586201, 27.091537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239410, 36.380352, 26.884600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504731, -0.178481, 0.844625,
		-0.527000, -0.838634, 0.137710,
		0.683753, -0.514624, -0.517344,
		40.444538, 36.225964, 26.729397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057777, 35.879536, 27.446571>,  <39.965908, 36.586201, 27.091537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057777, 35.879536, 27.446571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374950, 36.007961, 27.239429>,  <40.565254, 36.085014, 27.115145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374950, 36.007961, 27.239429>,  <40.057777, 35.879536, 27.446571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374950, 36.007961, 27.239429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563079, -0.061394, 0.824119,
		0.232798, -0.945067, -0.229464,
		0.792935, 0.321059, -0.517855,
		40.612831, 36.104279, 27.084072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457722, 35.277702, 27.586172>,  <40.057777, 35.879536, 27.446571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457722, 35.277702, 27.586172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663570, 35.600380, 27.469959>,  <40.787079, 35.793987, 27.400232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663570, 35.600380, 27.469959>,  <40.457722, 35.277702, 27.586172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663570, 35.600380, 27.469959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462567, 0.024096, 0.886257,
		0.721937, -0.590480, -0.360748,
		0.514625, 0.806692, -0.290533,
		40.817959, 35.842388, 27.382799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186954, 35.259117, 27.656124>,  <40.457722, 35.277702, 27.586172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186954, 35.259117, 27.656124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061855, 35.636448, 27.700537>,  <40.986797, 35.862846, 27.727184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061855, 35.636448, 27.700537>,  <41.186954, 35.259117, 27.656124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061855, 35.636448, 27.700537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233069, -0.037104, 0.971752,
		0.920797, 0.329792, -0.208255,
		-0.312749, 0.943324, 0.111030,
		40.968029, 35.919445, 27.733845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479717, 35.536659, 28.240582>,  <41.186954, 35.259117, 27.656124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479717, 35.536659, 28.240582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238712, 35.853100, 28.198376>,  <41.094109, 36.042965, 28.173052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238712, 35.853100, 28.198376>,  <41.479717, 35.536659, 28.240582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238712, 35.853100, 28.198376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096332, 0.203321, 0.974362,
		0.792276, 0.576899, -0.198712,
		-0.602510, 0.791106, -0.105512,
		41.057961, 36.090431, 28.166721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864681, 36.093266, 28.550413>,  <41.479717, 35.536659, 28.240582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864681, 36.093266, 28.550413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477875, 36.192112, 28.525692>,  <41.245792, 36.251419, 28.510859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477875, 36.192112, 28.525692>,  <41.864681, 36.093266, 28.550413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477875, 36.192112, 28.525692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010279, 0.280288, 0.959861,
		0.254523, 0.927562, -0.273583,
		-0.967012, 0.247119, -0.061805,
		41.187771, 36.266247, 28.507151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752655, 36.613346, 28.981548>,  <41.864681, 36.093266, 28.550413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752655, 36.613346, 28.981548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361794, 36.532871, 28.954113>,  <41.127277, 36.484589, 28.937653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361794, 36.532871, 28.954113>,  <41.752655, 36.613346, 28.981548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361794, 36.532871, 28.954113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111058, 0.208116, 0.971779,
		-0.181232, 0.957190, -0.225704,
		-0.977149, -0.201183, -0.068586,
		41.068649, 36.472515, 28.933537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446922, 37.091965, 29.374846>,  <41.752655, 36.613346, 28.981548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446922, 37.091965, 29.374846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174297, 36.802666, 29.330328>,  <41.010723, 36.629086, 29.303617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174297, 36.802666, 29.330328>,  <41.446922, 37.091965, 29.374846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174297, 36.802666, 29.330328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032442, -0.181805, 0.982799,
		-0.731042, 0.666227, 0.147375,
		-0.681561, -0.723248, -0.111293,
		40.969830, 36.585690, 29.296940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838436, 37.278057, 29.682604>,  <41.446922, 37.091965, 29.374846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838436, 37.278057, 29.682604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814648, 36.878780, 29.686010>,  <40.800377, 36.639214, 29.688055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814648, 36.878780, 29.686010>,  <40.838436, 37.278057, 29.682604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814648, 36.878780, 29.686010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246075, 0.022929, 0.968980,
		-0.967425, 0.055526, -0.246994,
		-0.059467, -0.998194, 0.008518,
		40.796806, 36.579323, 29.688566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241905, 37.137608, 30.088003>,  <40.838436, 37.278057, 29.682604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241905, 37.137608, 30.088003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469223, 36.808640, 30.077671>,  <40.605614, 36.611259, 30.071472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469223, 36.808640, 30.077671>,  <40.241905, 37.137608, 30.088003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469223, 36.808640, 30.077671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081995, -0.087840, 0.992754,
		-0.818730, -0.562058, -0.117354,
		0.568294, -0.822420, -0.025832,
		40.639709, 36.561913, 30.069921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947926, 36.681164, 30.550959>,  <40.241905, 37.137608, 30.088003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947926, 36.681164, 30.550959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318790, 36.538841, 30.504017>,  <40.541309, 36.453449, 30.475851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318790, 36.538841, 30.504017>,  <39.947926, 36.681164, 30.550959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318790, 36.538841, 30.504017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077458, -0.124429, 0.989201,
		-0.366567, -0.926239, -0.087806,
		0.927162, -0.355807, -0.117356,
		40.596939, 36.432098, 30.468811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047573, 36.219326, 31.111485>,  <39.947926, 36.681164, 30.550959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047573, 36.219326, 31.111485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427773, 36.284386, 31.005585>,  <40.655891, 36.323421, 30.942045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427773, 36.284386, 31.005585>,  <40.047573, 36.219326, 31.111485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427773, 36.284386, 31.005585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289437, -0.153554, 0.944800,
		0.113021, -0.974661, -0.193031,
		0.950501, 0.162652, -0.264748,
		40.712921, 36.333179, 30.926161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408543, 35.673790, 31.430079>,  <40.047573, 36.219326, 31.111485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408543, 35.673790, 31.430079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662292, 35.976475, 31.366880>,  <40.814541, 36.158085, 31.328960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662292, 35.976475, 31.366880>,  <40.408543, 35.673790, 31.430079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662292, 35.976475, 31.366880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258745, -0.015254, 0.965825,
		0.728439, -0.653573, -0.205472,
		0.634372, 0.756709, -0.157997,
		40.852604, 36.203487, 31.319481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984474, 35.418587, 31.737999>,  <40.408543, 35.673790, 31.430079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984474, 35.418587, 31.737999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037144, 35.814369, 31.713860>,  <41.068745, 36.051838, 31.699375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037144, 35.814369, 31.713860>,  <40.984474, 35.418587, 31.737999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037144, 35.814369, 31.713860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278747, 0.021467, 0.960124,
		0.951295, -0.143246, -0.272981,
		0.131674, 0.989454, -0.060350,
		41.076645, 36.111206, 31.695755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622742, 35.527233, 32.154144>,  <40.984474, 35.418587, 31.737999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622742, 35.527233, 32.154144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437546, 35.881718, 32.147655>,  <41.326427, 36.094410, 32.143761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437546, 35.881718, 32.147655>,  <41.622742, 35.527233, 32.154144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437546, 35.881718, 32.147655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197623, 0.121051, 0.972775,
		0.864052, 0.447180, -0.231182,
		-0.462990, 0.886215, -0.016221,
		41.298649, 36.147583, 32.142788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054543, 35.986668, 32.522682>,  <41.622742, 35.527233, 32.154144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054543, 35.986668, 32.522682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691422, 36.153599, 32.539284>,  <41.473549, 36.253757, 32.549244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691422, 36.153599, 32.539284>,  <42.054543, 35.986668, 32.522682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691422, 36.153599, 32.539284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100811, 0.121092, 0.987509,
		0.407093, 0.900651, -0.152000,
		-0.907807, 0.417331, 0.041499,
		41.419079, 36.278797, 32.551735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173977, 36.680672, 32.781635>,  <42.054543, 35.986668, 32.522682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173977, 36.680672, 32.781635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783455, 36.638519, 32.857243>,  <41.549141, 36.613228, 32.902607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783455, 36.638519, 32.857243>,  <42.173977, 36.680672, 32.781635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783455, 36.638519, 32.857243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182452, 0.068935, 0.980795,
		-0.116385, 0.992040, -0.048075,
		-0.976302, -0.105378, 0.189023,
		41.490562, 36.606907, 32.913948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000725, 37.116604, 33.302158>,  <42.173977, 36.680672, 32.781635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000725, 37.116604, 33.302158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716507, 36.835289, 33.311138>,  <41.545975, 36.666500, 33.316525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716507, 36.835289, 33.311138>,  <42.000725, 37.116604, 33.302158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716507, 36.835289, 33.311138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059224, -0.027985, 0.997853,
		-0.701151, 0.710352, 0.061536,
		-0.710549, -0.703290, 0.022448,
		41.503342, 36.624302, 33.317871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545792, 37.309959, 33.892609>,  <42.000725, 37.116604, 33.302158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545792, 37.309959, 33.892609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467323, 36.923191, 33.827396>,  <41.420242, 36.691132, 33.788269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467323, 36.923191, 33.827396>,  <41.545792, 37.309959, 33.892609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467323, 36.923191, 33.827396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153831, -0.133851, 0.978989,
		-0.968427, 0.217131, -0.122485,
		-0.196175, -0.966922, -0.163026,
		41.408470, 36.633114, 33.778488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021450, 37.100788, 34.456535>,  <41.545792, 37.309959, 33.892609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021450, 37.100788, 34.456535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186554, 36.763443, 34.318920>,  <41.285618, 36.561035, 34.236351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186554, 36.763443, 34.318920>,  <41.021450, 37.100788, 34.456535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186554, 36.763443, 34.318920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032710, -0.363745, 0.930924,
		-0.910253, -0.395501, -0.122552,
		0.412759, -0.843367, -0.344036,
		41.310383, 36.510433, 34.215710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700588, 36.369450, 34.661537>,  <41.021450, 37.100788, 34.456535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700588, 36.369450, 34.661537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046471, 36.202587, 34.549629>,  <41.253998, 36.102470, 34.482487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046471, 36.202587, 34.549629>,  <40.700588, 36.369450, 34.661537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046471, 36.202587, 34.549629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084639, -0.670039, 0.737485,
		-0.495099, -0.614028, -0.614693,
		0.864704, -0.417155, -0.279765,
		41.305882, 36.077442, 34.465698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615124, 35.600441, 34.594498>,  <40.700588, 36.369450, 34.661537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615124, 35.600441, 34.594498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992023, 35.702724, 34.681015>,  <41.218163, 35.764095, 34.732925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992023, 35.702724, 34.681015>,  <40.615124, 35.600441, 34.594498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992023, 35.702724, 34.681015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004365, -0.655128, 0.755505,
		0.334884, -0.710930, -0.618410,
		0.942249, 0.255706, 0.216289,
		41.274696, 35.779438, 34.745903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934155, 34.945724, 34.833961>,  <40.615124, 35.600441, 34.594498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934155, 34.945724, 34.833961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245022, 35.165970, 34.955837>,  <41.431541, 35.298119, 35.028961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245022, 35.165970, 34.955837>,  <40.934155, 34.945724, 34.833961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245022, 35.165970, 34.955837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036485, -0.522782, 0.851685,
		0.628238, -0.650783, -0.426377,
		0.777165, 0.550618, 0.304688,
		41.478172, 35.331154, 35.047245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419048, 34.511951, 35.125900>,  <40.934155, 34.945724, 34.833961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419048, 34.511951, 35.125900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506649, 34.867897, 35.285988>,  <41.559212, 35.081463, 35.382042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506649, 34.867897, 35.285988>,  <41.419048, 34.511951, 35.125900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506649, 34.867897, 35.285988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057857, -0.421302, 0.905073,
		0.974007, -0.175061, -0.143752,
		0.219006, 0.889864, 0.400223,
		41.572350, 35.134857, 35.406055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069447, 34.493107, 35.470688>,  <41.419048, 34.511951, 35.125900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069447, 34.493107, 35.470688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883659, 34.792278, 35.660370>,  <41.772186, 34.971783, 35.774178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883659, 34.792278, 35.660370>,  <42.069447, 34.493107, 35.470688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883659, 34.792278, 35.660370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268325, -0.391444, 0.880212,
		0.843960, 0.536075, -0.018873,
		-0.464472, 0.747927, 0.474205,
		41.744316, 35.016655, 35.802631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582405, 34.637775, 35.971653>,  <42.069447, 34.493107, 35.470688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582405, 34.637775, 35.971653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246685, 34.828869, 36.075455>,  <42.045254, 34.943527, 36.137737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246685, 34.828869, 36.075455>,  <42.582405, 34.637775, 35.971653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246685, 34.828869, 36.075455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148514, -0.257706, 0.954741,
		0.522991, 0.839855, 0.145342,
		-0.839300, 0.477736, 0.259508,
		41.994896, 34.972191, 36.153309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740887, 34.975281, 36.555992>,  <42.582405, 34.637775, 35.971653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740887, 34.975281, 36.555992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341438, 34.961143, 36.571491>,  <42.101768, 34.952660, 36.580791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341438, 34.961143, 36.571491>,  <42.740887, 34.975281, 36.555992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341438, 34.961143, 36.571491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044163, -0.168230, 0.984758,
		-0.028289, 0.985114, 0.169560,
		-0.998624, -0.035346, 0.038746,
		42.041851, 34.950539, 36.583115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668373, 35.331722, 37.079960>,  <42.740887, 34.975281, 36.555992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668373, 35.331722, 37.079960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320457, 35.134602, 37.070049>,  <42.111710, 35.016327, 37.064102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320457, 35.134602, 37.070049>,  <42.668373, 35.331722, 37.079960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320457, 35.134602, 37.070049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226313, -0.443047, 0.867463,
		-0.438467, 0.748901, 0.496885,
		-0.869787, -0.492805, -0.024776,
		42.059521, 34.986759, 37.062618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241142, 35.449738, 37.683792>,  <42.668373, 35.331722, 37.079960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241142, 35.449738, 37.683792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162552, 35.085655, 37.537956>,  <42.115398, 34.867207, 37.450455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162552, 35.085655, 37.537956>,  <42.241142, 35.449738, 37.683792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162552, 35.085655, 37.537956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240295, -0.405194, 0.882086,
		-0.950608, 0.085698, 0.298328,
		-0.196474, -0.910205, -0.364588,
		42.103611, 34.812595, 37.428581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973705, 35.059841, 38.210995>,  <42.241142, 35.449738, 37.683792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973705, 35.059841, 38.210995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051655, 34.775024, 37.941177>,  <42.098427, 34.604134, 37.779285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051655, 34.775024, 37.941177>,  <41.973705, 35.059841, 38.210995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051655, 34.775024, 37.941177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148742, -0.658323, 0.737893,
		-0.969483, -0.244132, -0.022382,
		0.194878, -0.712046, -0.674546,
		42.110119, 34.561409, 37.738815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555740, 34.565495, 38.420700>,  <41.973705, 35.059841, 38.210995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555740, 34.565495, 38.420700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806610, 34.369389, 38.178612>,  <41.957130, 34.251724, 38.033360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806610, 34.369389, 38.178612>,  <41.555740, 34.565495, 38.420700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806610, 34.369389, 38.178612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098336, -0.720984, 0.685939,
		-0.772649, -0.489717, -0.403969,
		0.627171, -0.490265, -0.605224,
		41.994762, 34.222309, 37.997044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261539, 33.857666, 38.293129>,  <41.555740, 34.565495, 38.420700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261539, 33.857666, 38.293129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656689, 33.862827, 38.231239>,  <41.893780, 33.865925, 38.194107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656689, 33.862827, 38.231239>,  <41.261539, 33.857666, 38.293129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656689, 33.862827, 38.231239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124829, -0.658563, 0.742100,
		-0.092319, -0.752415, -0.652188,
		0.987874, 0.012902, -0.154721,
		41.953053, 33.866699, 38.184822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345596, 33.202068, 38.358738>,  <41.261539, 33.857666, 38.293129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345596, 33.202068, 38.358738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713188, 33.356728, 38.389656>,  <41.933743, 33.449524, 38.408207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713188, 33.356728, 38.389656>,  <41.345596, 33.202068, 38.358738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713188, 33.356728, 38.389656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231912, -0.688572, 0.687085,
		0.318880, -0.613494, -0.722454,
		0.918984, 0.386644, 0.077295,
		41.988884, 33.472721, 38.412846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764595, 32.674492, 38.279514>,  <41.345596, 33.202068, 38.358738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764595, 32.674492, 38.279514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006378, 32.934856, 38.463230>,  <42.151447, 33.091076, 38.573460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006378, 32.934856, 38.463230>,  <41.764595, 32.674492, 38.279514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006378, 32.934856, 38.463230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442390, -0.753734, 0.485980,
		0.662514, -0.090566, -0.743554,
		0.604455, 0.650909, 0.459294,
		42.187714, 33.130131, 38.601017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530499, 32.414482, 38.325371>,  <41.764595, 32.674492, 38.279514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530499, 32.414482, 38.325371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445808, 32.645855, 38.640480>,  <42.394993, 32.784679, 38.829544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445808, 32.645855, 38.640480>,  <42.530499, 32.414482, 38.325371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445808, 32.645855, 38.640480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575802, -0.577473, 0.578772,
		0.789698, 0.576143, -0.210797,
		-0.211726, 0.578432, 0.787774,
		42.382290, 32.819386, 38.876812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156109, 32.389244, 38.794300>,  <42.530499, 32.414482, 38.325371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156109, 32.389244, 38.794300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880478, 32.541977, 39.040676>,  <42.715099, 32.633617, 39.188499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880478, 32.541977, 39.040676>,  <43.156109, 32.389244, 38.794300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880478, 32.541977, 39.040676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426305, -0.473739, 0.770607,
		0.586037, 0.793583, 0.163665,
		-0.689075, 0.381833, 0.615937,
		42.673756, 32.656528, 39.225456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497944, 32.784378, 39.405972>,  <43.156109, 32.389244, 38.794300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497944, 32.784378, 39.405972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136292, 32.657116, 39.520046>,  <42.919300, 32.580757, 39.588490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136292, 32.657116, 39.520046>,  <43.497944, 32.784378, 39.405972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136292, 32.657116, 39.520046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390513, -0.344516, 0.853703,
		-0.173361, 0.883224, 0.435731,
		-0.904127, -0.318157, 0.285185,
		42.865055, 32.561668, 39.605602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500118, 32.862461, 40.081646>,  <43.497944, 32.784378, 39.405972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500118, 32.862461, 40.081646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167889, 32.642303, 40.047676>,  <42.968552, 32.510208, 40.027294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167889, 32.642303, 40.047676>,  <43.500118, 32.862461, 40.081646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167889, 32.642303, 40.047676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182991, -0.413749, 0.891810,
		-0.525981, 0.725177, 0.444367,
		-0.830577, -0.550391, -0.084923,
		42.918716, 32.477184, 40.022198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204025, 32.861019, 40.795998>,  <43.500118, 32.862461, 40.081646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204025, 32.861019, 40.795998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024769, 32.561325, 40.600937>,  <42.917213, 32.381508, 40.483898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024769, 32.561325, 40.600937>,  <43.204025, 32.861019, 40.795998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024769, 32.561325, 40.600937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039665, -0.561627, 0.826439,
		-0.893080, 0.351023, 0.281409,
		-0.448146, -0.749238, -0.487655,
		42.890324, 32.336552, 40.454639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713531, 32.544456, 41.291100>,  <43.204025, 32.861019, 40.795998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713531, 32.544456, 41.291100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740124, 32.255375, 41.015919>,  <42.756081, 32.081924, 40.850811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740124, 32.255375, 41.015919>,  <42.713531, 32.544456, 41.291100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740124, 32.255375, 41.015919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019926, -0.688381, 0.725076,
		-0.997589, -0.061914, -0.031365,
		0.066483, -0.722703, -0.687954,
		42.760067, 32.038563, 40.809532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195560, 32.077328, 41.386993>,  <42.713531, 32.544456, 41.291100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195560, 32.077328, 41.386993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477551, 31.869335, 41.194069>,  <42.646744, 31.744539, 41.078312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477551, 31.869335, 41.194069>,  <42.195560, 32.077328, 41.386993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477551, 31.869335, 41.194069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088140, -0.739017, 0.667897,
		-0.703731, -0.428342, -0.566822,
		0.704979, -0.519979, -0.482314,
		42.689045, 31.713341, 41.049374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958549, 31.437237, 41.505131>,  <42.195560, 32.077328, 41.386993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958549, 31.437237, 41.505131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343319, 31.391981, 41.405613>,  <42.574181, 31.364828, 41.345901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343319, 31.391981, 41.405613>,  <41.958549, 31.437237, 41.505131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343319, 31.391981, 41.405613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096348, -0.711493, 0.696057,
		-0.255768, -0.693526, -0.673502,
		0.961925, -0.113139, -0.248797,
		42.631897, 31.358040, 41.330975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080334, 30.774532, 41.807213>,  <41.958549, 31.437237, 41.505131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080334, 30.774532, 41.807213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453190, 30.896437, 41.728996>,  <42.676903, 30.969580, 41.682064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453190, 30.896437, 41.728996>,  <42.080334, 30.774532, 41.807213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453190, 30.896437, 41.728996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350295, -0.622176, 0.700136,
		0.091711, -0.721122, -0.686711,
		0.932139, 0.304761, -0.195545,
		42.732830, 30.987865, 41.670334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375645, 30.164137, 41.663647>,  <42.080334, 30.774532, 41.807213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375645, 30.164137, 41.663647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634159, 30.447525, 41.777054>,  <42.789268, 30.617558, 41.845097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634159, 30.447525, 41.777054>,  <42.375645, 30.164137, 41.663647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634159, 30.447525, 41.777054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163561, -0.491513, 0.855373,
		0.745359, -0.506444, -0.433537,
		0.646288, 0.708470, 0.283519,
		42.828045, 30.660067, 41.862110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087296, 29.783257, 41.815468>,  <42.375645, 30.164137, 41.663647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087296, 29.783257, 41.815468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079254, 30.141500, 41.993221>,  <43.074429, 30.356447, 42.099873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079254, 30.141500, 41.993221>,  <43.087296, 29.783257, 41.815468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079254, 30.141500, 41.993221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275397, -0.422318, 0.863599,
		0.961120, 0.139745, -0.238158,
		-0.020106, 0.895611, 0.444384,
		43.073223, 30.410183, 42.126537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719696, 30.039547, 42.204716>,  <43.087296, 29.783257, 41.815468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719696, 30.039547, 42.204716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373543, 30.157125, 42.367050>,  <43.165852, 30.227673, 42.464451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373543, 30.157125, 42.367050>,  <43.719696, 30.039547, 42.204716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373543, 30.157125, 42.367050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182441, -0.569474, 0.801508,
		0.466712, 0.767655, 0.439188,
		-0.865387, 0.293948, 0.405832,
		43.113926, 30.245310, 42.488800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808254, 30.169832, 42.957947>,  <43.719696, 30.039547, 42.204716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808254, 30.169832, 42.957947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421764, 30.085930, 42.898052>,  <43.189873, 30.035589, 42.862118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421764, 30.085930, 42.898052>,  <43.808254, 30.169832, 42.957947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421764, 30.085930, 42.898052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026880, -0.659856, 0.750912,
		-0.256310, 0.721521, 0.643205,
		-0.966221, -0.209756, -0.149733,
		43.131897, 30.023003, 42.853134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516079, 30.300102, 43.644543>,  <43.808254, 30.169832, 42.957947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516079, 30.300102, 43.644543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263126, 30.072453, 43.434326>,  <43.111355, 29.935863, 43.308197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263126, 30.072453, 43.434326>,  <43.516079, 30.300102, 43.644543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263126, 30.072453, 43.434326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038491, -0.700666, 0.712450,
		-0.773703, 0.430309, 0.464992,
		-0.632378, -0.569123, -0.525544,
		43.073414, 29.901716, 43.276665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965588, 30.107723, 44.086052>,  <43.516079, 30.300102, 43.644543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965588, 30.107723, 44.086052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993263, 29.833462, 43.796200>,  <43.009869, 29.668905, 43.622288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993263, 29.833462, 43.796200>,  <42.965588, 30.107723, 44.086052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.993263, 29.833462, 43.796200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016266, -0.725503, 0.688027,
		-0.997471, -0.059391, -0.039045,
		0.069190, -0.685652, -0.724634,
		43.014019, 29.627766, 43.578808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410679, 29.703806, 44.207962>,  <42.965588, 30.107723, 44.086052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410679, 29.703806, 44.207962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667126, 29.483349, 43.994343>,  <42.820995, 29.351074, 43.866169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667126, 29.483349, 43.994343>,  <42.410679, 29.703806, 44.207962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667126, 29.483349, 43.994343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245595, -0.806632, 0.537613,
		-0.727082, -0.213514, -0.652506,
		0.641120, -0.551141, -0.534049,
		42.859463, 29.318007, 43.834129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021454, 29.109161, 44.016743>,  <42.410679, 29.703806, 44.207962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021454, 29.109161, 44.016743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416195, 29.044762, 44.010986>,  <42.653038, 29.006123, 44.007534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416195, 29.044762, 44.010986>,  <42.021454, 29.109161, 44.016743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416195, 29.044762, 44.010986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129390, -0.840179, 0.526648,
		-0.096880, -0.517860, -0.849962,
		0.986850, -0.160998, -0.014391,
		42.712250, 28.996462, 44.006668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957111, 28.384790, 43.829643>,  <42.021454, 29.109161, 44.016743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957111, 28.384790, 43.829643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274551, 28.504509, 44.041534>,  <42.465015, 28.576340, 44.168671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274551, 28.504509, 44.041534>,  <41.957111, 28.384790, 43.829643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274551, 28.504509, 44.041534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048074, -0.837079, 0.544966,
		0.606534, -0.457953, -0.649920,
		0.793603, 0.299296, 0.529732,
		42.512630, 28.594297, 44.200455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463783, 27.891266, 43.921570>,  <41.957111, 28.384790, 43.829643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463783, 27.891266, 43.921570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574501, 28.100662, 44.243896>,  <42.640930, 28.226301, 44.437294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574501, 28.100662, 44.243896>,  <42.463783, 27.891266, 43.921570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574501, 28.100662, 44.243896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125103, -0.851075, 0.509922,
		0.952750, -0.040334, -0.301064,
		0.276795, 0.523492, 0.805816,
		42.657539, 28.257710, 44.485641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203445, 27.700916, 44.117123>,  <42.463783, 27.891266, 43.921570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203445, 27.700916, 44.117123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964676, 27.797619, 44.423126>,  <42.821415, 27.855640, 44.606728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964676, 27.797619, 44.423126>,  <43.203445, 27.700916, 44.117123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964676, 27.797619, 44.423126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186725, -0.885473, 0.425524,
		0.780267, 0.396851, 0.483417,
		-0.596923, 0.241757, 0.765008,
		42.785599, 27.870146, 44.652630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631401, 27.698654, 44.800919>,  <43.203445, 27.700916, 44.117123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631401, 27.698654, 44.800919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244148, 27.618435, 44.860928>,  <43.011799, 27.570303, 44.896935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244148, 27.618435, 44.860928>,  <43.631401, 27.698654, 44.800919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244148, 27.618435, 44.860928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245722, -0.876468, 0.414034,
		0.048457, 0.437702, 0.897813,
		-0.968128, -0.200550, 0.150024,
		42.953709, 27.558270, 44.905933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.732895, 28.450962, 44.394585>,  <43.631401, 27.698654, 44.800919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.732895, 28.450962, 44.394585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365391, 28.375179, 44.256027>,  <43.144890, 28.329710, 44.172894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365391, 28.375179, 44.256027>,  <43.732895, 28.450962, 44.394585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365391, 28.375179, 44.256027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167722, 0.606971, -0.776824,
		0.357427, -0.771812, -0.525883,
		-0.918757, -0.189456, -0.346398,
		43.089764, 28.318342, 44.152107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873230, 28.678394, 43.753967>,  <43.732895, 28.450962, 44.394585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873230, 28.678394, 43.753967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475597, 28.707127, 43.786583>,  <43.237019, 28.724365, 43.806152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475597, 28.707127, 43.786583>,  <43.873230, 28.678394, 43.753967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475597, 28.707127, 43.786583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018376, 0.628419, -0.777658,
		-0.107099, -0.774551, -0.623378,
		-0.994078, 0.071831, 0.081537,
		43.177372, 28.728676, 43.811043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575809, 28.547073, 43.102966>,  <43.873230, 28.678394, 43.753967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575809, 28.547073, 43.102966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335926, 28.781864, 43.320518>,  <43.191998, 28.922739, 43.451050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335926, 28.781864, 43.320518>,  <43.575809, 28.547073, 43.102966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335926, 28.781864, 43.320518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142840, 0.590232, -0.794495,
		-0.787368, -0.554152, -0.270123,
		-0.599707, 0.586976, 0.543885,
		43.156013, 28.957956, 43.483685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991879, 28.683216, 42.699722>,  <43.575809, 28.547073, 43.102966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991879, 28.683216, 42.699722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981499, 28.974081, 42.974113>,  <42.975269, 29.148600, 43.138748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981499, 28.974081, 42.974113>,  <42.991879, 28.683216, 42.699722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981499, 28.974081, 42.974113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334151, 0.640426, -0.691518,
		-0.942162, -0.247165, 0.226363,
		-0.025950, 0.727161, 0.685976,
		42.973713, 29.192230, 43.179905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406399, 29.168839, 42.470673>,  <42.991879, 28.683216, 42.699722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406399, 29.168839, 42.470673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599339, 29.389072, 42.743198>,  <42.715103, 29.521212, 42.906715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599339, 29.389072, 42.743198>,  <42.406399, 29.168839, 42.470673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599339, 29.389072, 42.743198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159375, 0.819959, -0.549787,
		-0.861356, 0.156606, 0.483259,
		0.482353, 0.550582, 0.681318,
		42.744045, 29.554247, 42.947594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914829, 29.652561, 42.680546>,  <42.406399, 29.168839, 42.470673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914829, 29.652561, 42.680546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281288, 29.802364, 42.737709>,  <42.501163, 29.892246, 42.772007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281288, 29.802364, 42.737709>,  <41.914829, 29.652561, 42.680546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281288, 29.802364, 42.737709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254661, 0.819110, -0.514011,
		-0.309563, 0.434513, 0.845795,
		0.916143, 0.374510, 0.142913,
		42.556129, 29.914717, 42.780582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913284, 30.470257, 42.912003>,  <41.914829, 29.652561, 42.680546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913284, 30.470257, 42.912003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267097, 30.386030, 42.745506>,  <42.479385, 30.335495, 42.645607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267097, 30.386030, 42.745506>,  <41.913284, 30.470257, 42.912003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267097, 30.386030, 42.745506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017675, 0.876550, -0.480986,
		0.466135, 0.432807, 0.771619,
		0.884537, -0.210566, -0.416240,
		42.532459, 30.322861, 42.620636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337444, 31.076298, 42.928070>,  <41.913284, 30.470257, 42.912003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337444, 31.076298, 42.928070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456036, 30.855850, 42.616077>,  <42.527191, 30.723581, 42.428883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456036, 30.855850, 42.616077>,  <42.337444, 31.076298, 42.928070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456036, 30.855850, 42.616077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066873, 0.826672, -0.558696,
		0.952695, 0.113482, 0.281946,
		0.296479, -0.551121, -0.779978,
		42.544979, 30.690514, 42.382084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878983, 31.533119, 42.718277>,  <42.337444, 31.076298, 42.928070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878983, 31.533119, 42.718277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987823, 31.190575, 42.542732>,  <43.053127, 30.985048, 42.437405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987823, 31.190575, 42.542732>,  <42.878983, 31.533119, 42.718277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987823, 31.190575, 42.542732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045190, 0.466942, -0.883133,
		0.961207, 0.220471, 0.165755,
		0.272103, -0.856363, -0.438865,
		43.069454, 30.933666, 42.411072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643192, 31.586657, 42.304867>,  <42.878983, 31.533119, 42.718277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643192, 31.586657, 42.304867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434368, 31.283161, 42.149036>,  <43.309074, 31.101063, 42.055538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434368, 31.283161, 42.149036>,  <43.643192, 31.586657, 42.304867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434368, 31.283161, 42.149036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155501, 0.364434, -0.918154,
		0.838616, -0.539907, -0.072270,
		-0.522055, -0.758741, -0.389577,
		43.277752, 31.055538, 42.032162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948303, 31.380409, 41.596767>,  <43.643192, 31.586657, 42.304867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948303, 31.380409, 41.596767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563255, 31.272821, 41.609516>,  <43.332226, 31.208269, 41.617165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563255, 31.272821, 41.609516>,  <43.948303, 31.380409, 41.596767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563255, 31.272821, 41.609516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145452, 0.414096, -0.898537,
		0.228483, -0.869586, -0.437740,
		-0.962621, -0.268971, 0.031869,
		43.274467, 31.192129, 41.619076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821327, 30.978315, 41.067181>,  <43.948303, 31.380409, 41.596767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821327, 30.978315, 41.067181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465366, 31.134377, 41.161720>,  <43.251789, 31.228014, 41.218445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465366, 31.134377, 41.161720>,  <43.821327, 30.978315, 41.067181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465366, 31.134377, 41.161720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034291, 0.459452, -0.887540,
		-0.454869, -0.797925, -0.395487,
		-0.889898, 0.390153, 0.236353,
		43.198399, 31.251423, 41.232628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790001, 31.344839, 40.455158>,  <43.821327, 30.978315, 41.067181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790001, 31.344839, 40.455158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452339, 31.435663, 40.649414>,  <43.249741, 31.490158, 40.765968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452339, 31.435663, 40.649414>,  <43.790001, 31.344839, 40.455158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452339, 31.435663, 40.649414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286348, 0.574865, -0.766509,
		-0.453222, -0.786114, -0.420256,
		-0.844153, 0.227059, 0.485643,
		43.199093, 31.503780, 40.795109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230431, 31.184937, 39.967037>,  <43.790001, 31.344839, 40.455158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230431, 31.184937, 39.967037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090363, 31.457378, 40.224243>,  <43.006321, 31.620844, 40.378567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090363, 31.457378, 40.224243>,  <43.230431, 31.184937, 39.967037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090363, 31.457378, 40.224243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494097, 0.448892, -0.744556,
		-0.795768, -0.578437, 0.179343,
		-0.350173, 0.681106, 0.643018,
		42.985310, 31.661711, 40.417149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409721, 31.284597, 39.887451>,  <43.230431, 31.184937, 39.967037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409721, 31.284597, 39.887451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574226, 31.607435, 40.056900>,  <42.672932, 31.801138, 40.158569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574226, 31.607435, 40.056900>,  <42.409721, 31.284597, 39.887451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574226, 31.607435, 40.056900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494255, 0.587950, -0.640333,
		-0.765880, 0.053967, 0.640714,
		0.411264, 0.807095, 0.423626,
		42.697605, 31.849564, 40.183987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848572, 31.738308, 39.826912>,  <42.409721, 31.284597, 39.887451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848572, 31.738308, 39.826912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166500, 31.969391, 39.901218>,  <42.357258, 32.108040, 39.945801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166500, 31.969391, 39.901218>,  <41.848572, 31.738308, 39.826912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166500, 31.969391, 39.901218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257550, 0.598316, -0.758740,
		-0.549476, 0.555221, 0.624344,
		0.794824, 0.577709, 0.185763,
		42.404945, 32.142704, 39.956947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588524, 32.552498, 39.867035>,  <41.848572, 31.738308, 39.826912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588524, 32.552498, 39.867035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979961, 32.547234, 39.784885>,  <42.214825, 32.544075, 39.735596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979961, 32.547234, 39.784885>,  <41.588524, 32.552498, 39.867035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979961, 32.547234, 39.784885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142515, 0.676607, -0.722421,
		0.148466, 0.736227, 0.660249,
		0.978595, -0.013159, -0.205376,
		42.273540, 32.543285, 39.723274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730095, 33.234116, 39.886837>,  <41.588524, 32.552498, 39.867035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730095, 33.234116, 39.886837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037994, 33.070679, 39.690655>,  <42.222733, 32.972614, 39.572945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037994, 33.070679, 39.690655>,  <41.730095, 33.234116, 39.886837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037994, 33.070679, 39.690655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075304, 0.704822, -0.705376,
		0.633895, 0.579892, 0.511764,
		0.769744, -0.408597, -0.490451,
		42.268917, 32.948101, 39.543518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280979, 33.719158, 39.732838>,  <41.730095, 33.234116, 39.886837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280979, 33.719158, 39.732838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307640, 33.448555, 39.439472>,  <42.323639, 33.286194, 39.263454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307640, 33.448555, 39.439472>,  <42.280979, 33.719158, 39.732838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307640, 33.448555, 39.439472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110716, 0.725491, -0.679268,
		0.991614, 0.126478, -0.026542,
		0.066656, -0.676510, -0.733410,
		42.327637, 33.245602, 39.219448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805218, 34.051193, 39.238026>,  <42.280979, 33.719158, 39.732838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805218, 34.051193, 39.238026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593273, 33.766544, 39.053490>,  <42.466106, 33.595753, 38.942768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593273, 33.766544, 39.053490>,  <42.805218, 34.051193, 39.238026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593273, 33.766544, 39.053490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015499, 0.552014, -0.833691,
		0.847941, -0.434592, -0.303521,
		-0.529863, -0.711625, -0.461340,
		42.434315, 33.553059, 38.915089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189423, 33.887802, 38.602200>,  <42.805218, 34.051193, 39.238026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189423, 33.887802, 38.602200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807949, 33.791077, 38.530640>,  <42.579063, 33.733040, 38.487701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807949, 33.791077, 38.530640>,  <43.189423, 33.887802, 38.602200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807949, 33.791077, 38.530640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065655, 0.413075, -0.908327,
		0.293547, -0.878006, -0.378068,
		-0.953687, -0.241814, -0.178903,
		42.521843, 33.718533, 38.476967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190891, 33.565075, 37.950703>,  <43.189423, 33.887802, 38.602200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190891, 33.565075, 37.950703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805653, 33.654842, 38.010136>,  <42.574509, 33.708702, 38.045795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805653, 33.654842, 38.010136>,  <43.190891, 33.565075, 37.950703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805653, 33.654842, 38.010136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032874, 0.449826, -0.892511,
		-0.267128, -0.864462, -0.425850,
		-0.963100, 0.224415, 0.148579,
		42.516724, 33.722168, 38.054710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171555, 34.367863, 37.784973>,  <43.190891, 33.565075, 37.950703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171555, 34.367863, 37.784973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389599, 34.439014, 37.457264>,  <43.520424, 34.481705, 37.260639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389599, 34.439014, 37.457264>,  <43.171555, 34.367863, 37.784973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389599, 34.439014, 37.457264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183026, 0.928410, 0.323351,
		0.818141, -0.326212, 0.473530,
		0.545111, 0.177879, -0.819276,
		43.553131, 34.492378, 37.211479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843513, 34.739441, 37.982189>,  <43.171555, 34.367863, 37.784973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843513, 34.739441, 37.982189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666142, 34.834484, 37.636494>,  <43.559719, 34.891510, 37.429077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666142, 34.834484, 37.636494>,  <43.843513, 34.739441, 37.982189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666142, 34.834484, 37.636494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073131, 0.970598, 0.229329,
		0.893319, 0.038490, -0.447773,
		-0.443434, 0.237609, -0.864239,
		43.533112, 34.905766, 37.377224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224659, 35.245281, 37.613941>,  <43.843513, 34.739441, 37.982189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224659, 35.245281, 37.613941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836479, 35.298042, 37.533108>,  <43.603573, 35.329697, 37.484608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836479, 35.298042, 37.533108>,  <44.224659, 35.245281, 37.613941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836479, 35.298042, 37.533108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118004, 0.989835, 0.079381,
		0.210497, 0.053189, -0.976146,
		-0.970446, 0.131898, -0.202081,
		43.545345, 35.337612, 37.472485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168003, 35.921329, 37.360783>,  <44.224659, 35.245281, 37.613941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168003, 35.921329, 37.360783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777977, 35.846107, 37.407898>,  <43.543961, 35.800972, 37.436165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777977, 35.846107, 37.407898>,  <44.168003, 35.921329, 37.360783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777977, 35.846107, 37.407898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164603, 0.968966, 0.184418,
		-0.148810, 0.160433, -0.975765,
		-0.975070, -0.188057, 0.117784,
		43.485455, 35.789692, 37.443233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222271, 35.858334, 36.620342>,  <44.168003, 35.921329, 37.360783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222271, 35.858334, 36.620342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047092, 36.015026, 36.296677>,  <43.941986, 36.109039, 36.102478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047092, 36.015026, 36.296677>,  <44.222271, 35.858334, 36.620342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047092, 36.015026, 36.296677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627501, -0.777742, -0.036890,
		-0.643772, 0.491596, 0.586422,
		-0.437950, 0.391728, -0.809165,
		43.915707, 36.132545, 36.053928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481895, 35.695961, 36.619705>,  <44.222271, 35.858334, 36.620342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481895, 35.695961, 36.619705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521732, 35.800667, 36.235714>,  <43.545635, 35.863491, 36.005318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521732, 35.800667, 36.235714>,  <43.481895, 35.695961, 36.619705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521732, 35.800667, 36.235714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428675, -0.859365, -0.278800,
		-0.897953, 0.439286, 0.026623,
		0.099594, 0.261762, -0.959980,
		43.551609, 35.879196, 35.947720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829052, 35.660110, 36.311394>,  <43.481895, 35.695961, 36.619705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829052, 35.660110, 36.311394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156441, 35.574837, 36.097984>,  <43.352875, 35.523670, 35.969936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156441, 35.574837, 36.097984>,  <42.829052, 35.660110, 36.311394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156441, 35.574837, 36.097984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362089, -0.912385, -0.190905,
		-0.446083, 0.349435, -0.823957,
		0.818475, -0.213186, -0.533525,
		43.401985, 35.510880, 35.937927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800858, 35.470932, 35.502964>,  <42.829052, 35.660110, 36.311394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800858, 35.470932, 35.502964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098938, 35.309475, 35.715286>,  <43.277786, 35.212601, 35.842678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098938, 35.309475, 35.715286>,  <42.800858, 35.470932, 35.502964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098938, 35.309475, 35.715286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332666, -0.914896, -0.228687,
		0.577941, -0.006164, -0.816056,
		0.745197, -0.403642, 0.530806,
		43.322498, 35.188381, 35.874527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483688, 35.098679, 35.088398>,  <42.800858, 35.470932, 35.502964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483688, 35.098679, 35.088398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358021, 34.940914, 35.433823>,  <43.282619, 34.846256, 35.641079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358021, 34.940914, 35.433823>,  <43.483688, 35.098679, 35.088398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358021, 34.940914, 35.433823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119400, -0.885980, -0.448089,
		0.941830, -0.243884, 0.231253,
		-0.314167, -0.394412, 0.863562,
		43.263771, 34.822590, 35.692890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678337, 34.782719, 34.420593>,  <43.483688, 35.098679, 35.088398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678337, 34.782719, 34.420593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560730, 34.513191, 34.691746>,  <43.490166, 34.351475, 34.854439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560730, 34.513191, 34.691746>,  <43.678337, 34.782719, 34.420593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560730, 34.513191, 34.691746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498423, 0.713252, 0.492794,
		-0.815552, -0.192979, -0.545558,
		-0.294022, -0.673818, 0.677880,
		43.472523, 34.311047, 34.895111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341686, 34.648800, 33.732273>,  <43.678337, 34.782719, 34.420593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341686, 34.648800, 33.732273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163063, 35.006241, 33.714104>,  <43.055889, 35.220703, 33.703201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163063, 35.006241, 33.714104>,  <43.341686, 34.648800, 33.732273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163063, 35.006241, 33.714104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438899, -0.174526, 0.881424,
		0.779711, 0.413548, 0.470136,
		-0.446562, 0.893599, -0.045426,
		43.029095, 35.274319, 33.700478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345146, 34.941811, 33.006874>,  <43.341686, 34.648800, 33.732273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345146, 34.941811, 33.006874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347187, 35.268139, 33.238190>,  <43.348412, 35.463936, 33.376980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347187, 35.268139, 33.238190>,  <43.345146, 34.941811, 33.006874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347187, 35.268139, 33.238190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870806, -0.287915, 0.398500,
		0.491600, 0.501543, -0.711888,
		0.005098, 0.815819, 0.578285,
		43.348717, 35.512886, 33.411674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003975, 35.336483, 32.875584>,  <43.345146, 34.941811, 33.006874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003975, 35.336483, 32.875584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856403, 35.377533, 33.245094>,  <43.767860, 35.402164, 33.466801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856403, 35.377533, 33.245094>,  <44.003975, 35.336483, 32.875584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856403, 35.377533, 33.245094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851229, -0.361801, 0.380144,
		0.373235, 0.926590, 0.046120,
		-0.368924, 0.102624, 0.923777,
		43.745728, 35.408321, 33.522228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570824, 35.468906, 33.371876>,  <44.003975, 35.336483, 32.875584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570824, 35.468906, 33.371876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284412, 35.317089, 33.606224>,  <44.112564, 35.225998, 33.746834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284412, 35.317089, 33.606224>,  <44.570824, 35.468906, 33.371876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284412, 35.317089, 33.606224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671145, -0.605134, 0.428226,
		0.192003, 0.699830, 0.688021,
		-0.716030, -0.379541, 0.585875,
		44.069603, 35.203228, 33.781986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831600, 35.460255, 34.000694>,  <44.570824, 35.468906, 33.371876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831600, 35.460255, 34.000694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543892, 35.185978, 33.956028>,  <44.371265, 35.021412, 33.929230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543892, 35.185978, 33.956028>,  <44.831600, 35.460255, 34.000694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543892, 35.185978, 33.956028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544175, -0.655994, 0.523016,
		-0.431880, 0.315427, 0.844977,
		-0.719273, -0.685695, -0.111663,
		44.328110, 34.980270, 33.922527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362572, 35.258446, 33.543400>,  <44.831600, 35.460255, 34.000694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362572, 35.258446, 33.543400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624001, 35.390442, 33.815857>,  <45.780857, 35.469639, 33.979332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624001, 35.390442, 33.815857>,  <45.362572, 35.258446, 33.543400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624001, 35.390442, 33.815857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185868, -0.802410, 0.567089,
		0.733689, -0.497235, -0.463096,
		0.653570, 0.329993, 0.681140,
		45.820072, 35.489441, 34.020199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.778358, 34.748127, 33.716358>,  <45.362572, 35.258446, 33.543400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.778358, 34.748127, 33.716358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770176, 35.005116, 34.022774>,  <45.765266, 35.159309, 34.206623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770176, 35.005116, 34.022774>,  <45.778358, 34.748127, 33.716358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770176, 35.005116, 34.022774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167736, -0.757541, 0.630869,
		0.985620, -0.115589, 0.123259,
		-0.020452, 0.642472, 0.766036,
		45.764042, 35.197857, 34.252586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.244476, 34.483482, 34.205452>,  <45.778358, 34.748127, 33.716358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.244476, 34.483482, 34.205452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930492, 34.678093, 34.358887>,  <45.742104, 34.794857, 34.450947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930492, 34.678093, 34.358887>,  <46.244476, 34.483482, 34.205452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930492, 34.678093, 34.358887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230572, -0.804068, 0.548006,
		0.575049, 0.341716, 0.743337,
		-0.784956, 0.486523, 0.383588,
		45.695007, 34.824051, 34.473965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.859879, 34.747742, 34.435520>,  <46.244476, 34.483482, 34.205452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.859879, 34.747742, 34.435520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.208496, 34.554859, 34.399986>,  <47.417667, 34.439129, 34.378666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.208496, 34.554859, 34.399986>,  <46.859879, 34.747742, 34.435520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.208496, 34.554859, 34.399986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481119, 0.806083, 0.344610,
		-0.094569, -0.343080, 0.934534,
		0.871540, -0.482211, -0.088832,
		47.469959, 34.410194, 34.373337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.287586, 34.736584, 35.051197>,  <46.859879, 34.747742, 34.435520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.287586, 34.736584, 35.051197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520691, 34.729805, 34.726208>,  <47.660553, 34.725739, 34.531216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.520691, 34.729805, 34.726208>,  <47.287586, 34.736584, 35.051197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.520691, 34.729805, 34.726208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426212, 0.857613, 0.287825,
		0.691908, -0.514016, 0.507002,
		0.582758, -0.016942, -0.812469,
		47.695518, 34.724724, 34.482468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.006672, 34.770630, 35.229351>,  <47.287586, 34.736584, 35.051197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.006672, 34.770630, 35.229351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.969463, 34.918388, 34.859509>,  <47.947140, 35.007042, 34.637604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.969463, 34.918388, 34.859509>,  <48.006672, 34.770630, 35.229351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.969463, 34.918388, 34.859509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275132, 0.902010, 0.332687,
		0.956896, -0.223442, -0.185536,
		-0.093019, 0.369394, -0.924606,
		47.941559, 35.029205, 34.582127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.067249, 30.812151, 28.247972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.720787, 30.678526, 28.396658>,  <38.512909, 30.598351, 28.485868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.720787, 30.678526, 28.396658>,  <39.067249, 30.812151, 28.247972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720787, 30.678526, 28.396658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487075, -0.397703, 0.777554,
		-0.111918, 0.854539, 0.507186,
		-0.866160, -0.334060, 0.371714,
		38.460938, 30.578308, 28.508173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041908, 31.006660, 28.907280>,  <39.067249, 30.812151, 28.247972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041908, 31.006660, 28.907280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788841, 30.696909, 28.903797>,  <38.637001, 30.511059, 28.901707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788841, 30.696909, 28.903797>,  <39.041908, 31.006660, 28.907280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788841, 30.696909, 28.903797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320035, -0.271675, 0.907618,
		-0.705205, 0.571430, 0.419707,
		-0.632664, -0.774377, -0.008709,
		38.599041, 30.464596, 28.901184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733154, 31.113058, 29.557270>,  <39.041908, 31.006660, 28.907280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733154, 31.113058, 29.557270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.646603, 30.745937, 29.424112>,  <38.594673, 30.525665, 29.344217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.646603, 30.745937, 29.424112>,  <38.733154, 31.113058, 29.557270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646603, 30.745937, 29.424112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137183, -0.366169, 0.920381,
		-0.966624, 0.153483, 0.205138,
		-0.216378, -0.917803, -0.332893,
		38.581688, 30.470596, 29.324244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263165, 31.018707, 30.093645>,  <38.733154, 31.113058, 29.557270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263165, 31.018707, 30.093645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382969, 30.675831, 29.926065>,  <38.454853, 30.470106, 29.825518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382969, 30.675831, 29.926065>,  <38.263165, 31.018707, 30.093645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382969, 30.675831, 29.926065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008305, -0.436747, 0.899546,
		-0.954055, -0.272907, -0.123694,
		0.299515, -0.857189, -0.418948,
		38.472824, 30.418674, 29.800381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788712, 30.474367, 30.192024>,  <38.263165, 31.018707, 30.093645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788712, 30.474367, 30.192024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144157, 30.295042, 30.153301>,  <38.357426, 30.187447, 30.130068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.144157, 30.295042, 30.153301>,  <37.788712, 30.474367, 30.192024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144157, 30.295042, 30.153301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104501, -0.403421, 0.909027,
		-0.446585, -0.797661, -0.405337,
		0.888617, -0.448316, -0.096806,
		38.410744, 30.160547, 30.124260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670509, 29.923668, 30.604025>,  <37.788712, 30.474367, 30.192024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670509, 29.923668, 30.604025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065174, 29.945812, 30.542795>,  <38.301971, 29.959099, 30.506058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065174, 29.945812, 30.542795>,  <37.670509, 29.923668, 30.604025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065174, 29.945812, 30.542795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162560, -0.383944, 0.908934,
		-0.008451, -0.921695, -0.387823,
		0.986663, 0.055363, -0.153076,
		38.361172, 29.962421, 30.496872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887791, 29.283211, 30.863497>,  <37.670509, 29.923668, 30.604025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887791, 29.283211, 30.863497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189621, 29.545507, 30.873396>,  <38.370720, 29.702885, 30.879335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189621, 29.545507, 30.873396>,  <37.887791, 29.283211, 30.863497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189621, 29.545507, 30.873396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167739, -0.229205, 0.958817,
		0.634409, -0.719352, -0.282947,
		0.754579, 0.655743, 0.024746,
		38.415997, 29.742229, 30.880819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345169, 28.939365, 31.294523>,  <37.887791, 29.283211, 30.863497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345169, 28.939365, 31.294523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484375, 29.314127, 31.307760>,  <38.567898, 29.538984, 31.315702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484375, 29.314127, 31.307760>,  <38.345169, 28.939365, 31.294523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484375, 29.314127, 31.307760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392561, -0.177689, 0.902398,
		0.851343, -0.301053, -0.429630,
		0.348011, 0.936906, 0.033092,
		38.588779, 29.595200, 31.317688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015297, 28.906185, 31.656473>,  <38.345169, 28.939365, 31.294523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015297, 28.906185, 31.656473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954479, 29.299644, 31.695084>,  <38.917988, 29.535721, 31.718250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954479, 29.299644, 31.695084>,  <39.015297, 28.906185, 31.656473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954479, 29.299644, 31.695084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388184, -0.030383, 0.921081,
		0.908953, 0.177519, -0.377217,
		-0.152048, 0.983648, 0.096526,
		38.908863, 29.594740, 31.724041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621269, 29.166899, 31.998175>,  <39.015297, 28.906185, 31.656473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621269, 29.166899, 31.998175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351593, 29.457542, 32.051098>,  <39.189789, 29.631929, 32.082851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351593, 29.457542, 32.051098>,  <39.621269, 29.166899, 31.998175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351593, 29.457542, 32.051098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238787, 0.044928, 0.970032,
		0.698891, 0.685579, -0.203795,
		-0.674190, 0.726610, 0.132308,
		39.149338, 29.675526, 32.090790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942947, 29.679474, 32.387856>,  <39.621269, 29.166899, 31.998175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942947, 29.679474, 32.387856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.545654, 29.709396, 32.423405>,  <39.307278, 29.727350, 32.444736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.545654, 29.709396, 32.423405>,  <39.942947, 29.679474, 32.387856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545654, 29.709396, 32.423405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102980, 0.212941, 0.971623,
		0.053760, 0.974197, -0.219203,
		-0.993230, 0.074807, 0.088875,
		39.247684, 29.731838, 32.450066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818367, 30.351597, 32.610065>,  <39.942947, 29.679474, 32.387856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818367, 30.351597, 32.610065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.505291, 30.128889, 32.721348>,  <39.317444, 29.995264, 32.788116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.505291, 30.128889, 32.721348>,  <39.818367, 30.351597, 32.610065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505291, 30.128889, 32.721348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156144, 0.257037, 0.953704,
		-0.602503, 0.789897, -0.114244,
		-0.782693, -0.556771, 0.278203,
		39.270485, 29.961857, 32.804810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411686, 30.729559, 33.024776>,  <39.818367, 30.351597, 32.610065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411686, 30.729559, 33.024776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264664, 30.365759, 33.102451>,  <39.176449, 30.147478, 33.149055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.264664, 30.365759, 33.102451>,  <39.411686, 30.729559, 33.024776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264664, 30.365759, 33.102451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006726, 0.211401, 0.977376,
		-0.929977, 0.357934, -0.083819,
		-0.367556, -0.909501, 0.194191,
		39.154396, 30.092909, 33.160709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938396, 30.784115, 33.610058>,  <39.411686, 30.729559, 33.024776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938396, 30.784115, 33.610058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.059498, 30.403410, 33.630020>,  <39.132160, 30.174988, 33.641998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.059498, 30.403410, 33.630020>,  <38.938396, 30.784115, 33.610058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059498, 30.403410, 33.630020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292200, 0.142534, 0.945676,
		-0.907171, -0.271725, 0.321257,
		0.302754, -0.951761, 0.049905,
		39.150326, 30.117882, 33.644993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593136, 30.492426, 34.148956>,  <38.938396, 30.784115, 33.610058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593136, 30.492426, 34.148956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.930378, 30.284275, 34.094723>,  <39.132721, 30.159384, 34.062183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.930378, 30.284275, 34.094723>,  <38.593136, 30.492426, 34.148956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930378, 30.284275, 34.094723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148626, -0.016815, 0.988750,
		-0.516805, -0.853770, 0.063165,
		0.843103, -0.520379, -0.135582,
		39.183308, 30.128160, 34.054047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505882, 30.086153, 34.672684>,  <38.593136, 30.492426, 34.148956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505882, 30.086153, 34.672684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.896816, 30.061646, 34.591633>,  <39.131378, 30.046940, 34.543003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.896816, 30.061646, 34.591633>,  <38.505882, 30.086153, 34.672684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896816, 30.061646, 34.591633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176284, -0.294350, 0.939299,
		-0.117193, -0.953732, -0.276879,
		0.977338, -0.061270, -0.202623,
		39.190018, 30.043264, 34.530846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780827, 29.623629, 35.143955>,  <38.505882, 30.086153, 34.672684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780827, 29.623629, 35.143955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.119102, 29.805994, 35.032990>,  <39.322067, 29.915413, 34.966412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.119102, 29.805994, 35.032990>,  <38.780827, 29.623629, 35.143955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119102, 29.805994, 35.032990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326643, -0.031103, 0.944636,
		0.422044, -0.889480, -0.175224,
		0.845685, 0.455914, -0.277416,
		39.372807, 29.942768, 34.949764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320721, 29.340607, 35.538872>,  <38.780827, 29.623629, 35.143955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320721, 29.340607, 35.538872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.511387, 29.669296, 35.413933>,  <39.625786, 29.866510, 35.338970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.511387, 29.669296, 35.413933>,  <39.320721, 29.340607, 35.538872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511387, 29.669296, 35.413933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579623, -0.026641, 0.814450,
		0.660931, -0.569263, -0.488989,
		0.476663, 0.821724, -0.312349,
		39.654385, 29.915813, 35.320229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085850, 29.181377, 35.596825>,  <39.320721, 29.340607, 35.538872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085850, 29.181377, 35.596825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.064064, 29.580702, 35.604889>,  <40.050991, 29.820297, 35.609726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.064064, 29.580702, 35.604889>,  <40.085850, 29.181377, 35.596825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064064, 29.580702, 35.604889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682088, 0.022455, 0.730925,
		0.729239, 0.053558, -0.682160,
		-0.054464, 0.998312, 0.020156,
		40.047726, 29.880196, 35.610935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741459, 29.444456, 35.796410>,  <40.085850, 29.181377, 35.596825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741459, 29.444456, 35.796410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.497372, 29.756199, 35.853313>,  <40.350922, 29.943245, 35.887455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.497372, 29.756199, 35.853313>,  <40.741459, 29.444456, 35.796410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497372, 29.756199, 35.853313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640631, 0.379777, 0.667354,
		0.466079, 0.498368, -0.731027,
		-0.610215, 0.779358, 0.142264,
		40.314308, 29.990005, 35.895992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124043, 30.044230, 35.888012>,  <40.741459, 29.444456, 35.796410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124043, 30.044230, 35.888012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.780209, 30.160982, 36.055782>,  <40.573910, 30.231033, 36.156445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.780209, 30.160982, 36.055782>,  <41.124043, 30.044230, 35.888012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780209, 30.160982, 36.055782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506744, 0.592525, 0.626199,
		-0.065745, 0.750813, -0.657235,
		-0.859586, 0.291880, 0.419425,
		40.522331, 30.248547, 36.181610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378086, 30.791599, 36.140846>,  <41.124043, 30.044230, 35.888012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378086, 30.791599, 36.140846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.032730, 30.673429, 36.304447>,  <40.825516, 30.602528, 36.402607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.032730, 30.673429, 36.304447>,  <41.378086, 30.791599, 36.140846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032730, 30.673429, 36.304447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126020, 0.658683, 0.741792,
		-0.488550, 0.691997, -0.531469,
		-0.863387, -0.295427, 0.409005,
		40.773712, 30.584801, 36.427147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647255, 31.477533, 36.421467>,  <41.378086, 30.791599, 36.140846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647255, 31.477533, 36.421467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.996788, 31.664093, 36.476433>,  <42.206509, 31.776028, 36.509411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.996788, 31.664093, 36.476433>,  <41.647255, 31.477533, 36.421467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996788, 31.664093, 36.476433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094193, 0.439645, -0.893219,
		-0.477008, 0.767584, 0.428109,
		0.873837, 0.466398, 0.137413,
		42.258938, 31.804012, 36.517658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528999, 32.192791, 36.391773>,  <41.647255, 31.477533, 36.421467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528999, 32.192791, 36.391773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.915054, 32.139915, 36.301411>,  <42.146687, 32.108189, 36.247192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.915054, 32.139915, 36.301411>,  <41.528999, 32.192791, 36.391773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915054, 32.139915, 36.301411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140720, 0.465689, -0.873688,
		0.220699, 0.875019, 0.430852,
		0.965137, -0.132192, -0.225910,
		42.204594, 32.100258, 36.233639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728542, 32.881645, 36.069050>,  <41.528999, 32.192791, 36.391773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728542, 32.881645, 36.069050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.983646, 32.596416, 35.952572>,  <42.136707, 32.425282, 35.882683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.983646, 32.596416, 35.952572>,  <41.728542, 32.881645, 36.069050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983646, 32.596416, 35.952572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004867, 0.374326, -0.927284,
		0.770222, 0.592800, 0.235259,
		0.637758, -0.713069, -0.291199,
		42.174973, 32.382496, 35.865211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150921, 33.273129, 35.570229>,  <41.728542, 32.881645, 36.069050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150921, 33.273129, 35.570229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.233913, 32.888981, 35.495781>,  <42.283707, 32.658493, 35.451111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.233913, 32.888981, 35.495781>,  <42.150921, 33.273129, 35.570229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233913, 32.888981, 35.495781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131601, 0.161132, -0.978120,
		0.969347, 0.227433, -0.092954,
		0.207479, -0.960370, -0.186123,
		42.296158, 32.600868, 35.439945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669365, 33.225353, 35.033482>,  <42.150921, 33.273129, 35.570229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669365, 33.225353, 35.033482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.495857, 32.866173, 35.003731>,  <42.391750, 32.650665, 34.985882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.495857, 32.866173, 35.003731>,  <42.669365, 33.225353, 35.033482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495857, 32.866173, 35.003731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072321, 0.047580, -0.996246,
		0.898115, -0.437523, 0.044302,
		-0.433773, -0.897948, -0.074374,
		42.365726, 32.596790, 34.981419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939163, 32.893894, 34.491184>,  <42.669365, 33.225353, 35.033482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939163, 32.893894, 34.491184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.596664, 32.688984, 34.517765>,  <42.391167, 32.566040, 34.533714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.596664, 32.688984, 34.517765>,  <42.939163, 32.893894, 34.491184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596664, 32.688984, 34.517765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066488, -0.018282, -0.997620,
		0.512268, -0.858628, -0.018406,
		-0.856248, -0.512272, 0.066454,
		42.339790, 32.535301, 34.537701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934116, 32.371284, 33.990204>,  <42.939163, 32.893894, 34.491184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934116, 32.371284, 33.990204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.545994, 32.443771, 34.054295>,  <42.313122, 32.487263, 34.092751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.545994, 32.443771, 34.054295>,  <42.934116, 32.371284, 33.990204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545994, 32.443771, 34.054295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176216, -0.075769, -0.981431,
		-0.165710, -0.980520, 0.105452,
		-0.970303, 0.181216, 0.160227,
		42.254902, 32.498135, 34.102364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595501, 31.907503, 33.607410>,  <42.934116, 32.371284, 33.990204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595501, 31.907503, 33.607410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.276947, 32.131165, 33.699600>,  <42.085815, 32.265362, 33.754913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.276947, 32.131165, 33.699600>,  <42.595501, 31.907503, 33.607410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276947, 32.131165, 33.699600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391950, -0.186954, -0.900790,
		-0.460592, -0.807710, 0.368048,
		-0.796385, 0.559154, 0.230473,
		42.038033, 32.298912, 33.768742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011536, 31.595577, 33.237888>,  <42.595501, 31.907503, 33.607410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011536, 31.595577, 33.237888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.891739, 31.963408, 33.339615>,  <41.819859, 32.184105, 33.400650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.891739, 31.963408, 33.339615>,  <42.011536, 31.595577, 33.237888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891739, 31.963408, 33.339615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470193, 0.089685, -0.877995,
		-0.830193, -0.382535, 0.405519,
		-0.299495, 0.919578, 0.254321,
		41.801891, 32.239281, 33.415913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247269, 31.621874, 33.201397>,  <42.011536, 31.595577, 33.237888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247269, 31.621874, 33.201397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.388432, 31.992033, 33.146114>,  <41.473129, 32.214127, 33.112946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.388432, 31.992033, 33.146114>,  <41.247269, 31.621874, 33.201397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388432, 31.992033, 33.146114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350620, -0.006155, -0.936498,
		-0.867482, 0.378951, 0.322290,
		0.352903, 0.925396, -0.138207,
		41.494301, 32.269653, 33.104652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697338, 32.030613, 33.027981>,  <41.247269, 31.621874, 33.201397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697338, 32.030613, 33.027981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.988110, 32.268669, 32.890938>,  <41.162571, 32.411503, 32.808712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.988110, 32.268669, 32.890938>,  <40.697338, 32.030613, 33.027981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988110, 32.268669, 32.890938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450767, 0.037157, -0.891868,
		-0.518058, 0.802760, 0.295282,
		0.726928, 0.595143, -0.342609,
		41.206188, 32.447212, 32.788155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292210, 32.517639, 32.719822>,  <40.697338, 32.030613, 33.027981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292210, 32.517639, 32.719822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.668564, 32.519012, 32.584343>,  <40.894379, 32.519836, 32.503056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.668564, 32.519012, 32.584343>,  <40.292210, 32.517639, 32.719822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668564, 32.519012, 32.584343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336990, 0.110199, -0.935037,
		0.034112, 0.993904, 0.104843,
		0.940890, 0.003435, -0.338695,
		40.950832, 32.520042, 32.482735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396385, 33.166588, 32.235367>,  <40.292210, 32.517639, 32.719822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396385, 33.166588, 32.235367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.695087, 32.929810, 32.114067>,  <40.874310, 32.787743, 32.041286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.695087, 32.929810, 32.114067>,  <40.396385, 33.166588, 32.235367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695087, 32.929810, 32.114067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327679, 0.069333, -0.942242,
		0.578782, 0.802989, -0.142194,
		0.746752, -0.591947, -0.303251,
		40.919113, 32.752224, 32.023090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698174, 33.438351, 31.739532>,  <40.396385, 33.166588, 32.235367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698174, 33.438351, 31.739532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.808311, 33.065327, 31.646133>,  <40.874393, 32.841511, 31.590094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.808311, 33.065327, 31.646133>,  <40.698174, 33.438351, 31.739532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808311, 33.065327, 31.646133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071550, 0.222332, -0.972342,
		0.958680, 0.284432, -0.005508,
		0.275341, -0.932560, -0.233496,
		40.890915, 32.785561, 31.576084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233650, 33.501789, 31.241932>,  <40.698174, 33.438351, 31.739532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233650, 33.501789, 31.241932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.068913, 33.142757, 31.179022>,  <40.970070, 32.927338, 31.141275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.068913, 33.142757, 31.179022>,  <41.233650, 33.501789, 31.241932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068913, 33.142757, 31.179022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076737, 0.206140, -0.975509,
		0.908019, -0.389687, -0.153774,
		-0.411842, -0.897580, -0.157276,
		40.945358, 32.873482, 31.131840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515358, 33.171055, 30.518990>,  <41.233650, 33.501789, 31.241932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515358, 33.171055, 30.518990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.219769, 32.914940, 30.602846>,  <41.042416, 32.761269, 30.653160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.219769, 32.914940, 30.602846>,  <41.515358, 33.171055, 30.518990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219769, 32.914940, 30.602846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241688, -0.038521, -0.969589,
		0.628895, -0.767165, -0.126285,
		-0.738970, -0.640291, 0.209640,
		40.998077, 32.722851, 30.665739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554287, 32.611801, 30.130156>,  <41.515358, 33.171055, 30.518990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554287, 32.611801, 30.130156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.171234, 32.592068, 30.243645>,  <40.941402, 32.580227, 30.311739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.171234, 32.592068, 30.243645>,  <41.554287, 32.611801, 30.130156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171234, 32.592068, 30.243645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253847, -0.320634, -0.912554,
		0.135995, -0.945917, 0.294527,
		-0.957636, -0.049338, 0.283723,
		40.883942, 32.577267, 30.328762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257389, 31.967703, 29.994413>,  <41.554287, 32.611801, 30.130156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257389, 31.967703, 29.994413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.913639, 32.171463, 30.012262>,  <40.707390, 32.293720, 30.022972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.913639, 32.171463, 30.012262>,  <41.257389, 31.967703, 29.994413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913639, 32.171463, 30.012262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322872, -0.472873, -0.819845,
		-0.396525, -0.718961, 0.570844,
		-0.859373, 0.509399, 0.044626,
		40.655827, 32.324284, 30.025650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.631031, 31.523180, 29.693996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.488064, 31.896318, 29.675894>,  <40.402283, 32.120201, 29.665031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.488064, 31.896318, 29.675894>,  <40.631031, 31.523180, 29.693996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488064, 31.896318, 29.675894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496618, -0.230873, -0.836700,
		-0.790961, -0.276579, 0.545788,
		-0.357422, 0.932846, -0.045258,
		40.380836, 32.176170, 29.662317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887970, 31.427217, 29.527649>,  <40.631031, 31.523180, 29.693996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887970, 31.427217, 29.527649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.983803, 31.805723, 29.440758>,  <40.041302, 32.032825, 29.388624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.983803, 31.805723, 29.440758>,  <39.887970, 31.427217, 29.527649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983803, 31.805723, 29.440758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603284, -0.030209, -0.796955,
		-0.760691, 0.321983, 0.563627,
		0.239579, 0.946263, -0.217227,
		40.055676, 32.089603, 29.375589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247192, 31.653761, 29.298958>,  <39.887970, 31.427217, 29.527649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247192, 31.653761, 29.298958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512436, 31.924030, 29.170111>,  <39.671581, 32.086193, 29.092802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512436, 31.924030, 29.170111>,  <39.247192, 31.653761, 29.298958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512436, 31.924030, 29.170111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462601, 0.031608, -0.886003,
		-0.588466, 0.736525, 0.333526,
		0.663105, 0.675672, -0.322117,
		39.711369, 32.126732, 29.073475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875141, 32.020523, 28.934902>,  <39.247192, 31.653761, 29.298958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875141, 32.020523, 28.934902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.241951, 32.116699, 28.807623>,  <39.462036, 32.174404, 28.731255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.241951, 32.116699, 28.807623>,  <38.875141, 32.020523, 28.934902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241951, 32.116699, 28.807623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356247, 0.135129, -0.924569,
		-0.179308, 0.961212, 0.209574,
		0.917026, 0.240443, -0.318199,
		39.517059, 32.188831, 28.712164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862751, 32.713772, 28.568893>,  <38.875141, 32.020523, 28.934902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862751, 32.713772, 28.568893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.168854, 32.510387, 28.410980>,  <39.352516, 32.388355, 28.316233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.168854, 32.510387, 28.410980>,  <38.862751, 32.713772, 28.568893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168854, 32.510387, 28.410980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240424, 0.343143, -0.907992,
		0.597146, 0.789759, 0.140345,
		0.765254, -0.508461, -0.394784,
		39.398430, 32.357849, 28.292545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224796, 33.179474, 28.105608>,  <38.862751, 32.713772, 28.568893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224796, 33.179474, 28.105608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347912, 32.816216, 27.992090>,  <39.421783, 32.598259, 27.923981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347912, 32.816216, 27.992090>,  <39.224796, 33.179474, 28.105608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347912, 32.816216, 27.992090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109938, 0.262330, -0.958695,
		0.945081, 0.326277, -0.019097,
		0.307791, -0.908144, -0.283794,
		39.440250, 32.543774, 27.906952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688244, 33.310493, 27.621275>,  <39.224796, 33.179474, 28.105608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688244, 33.310493, 27.621275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.619701, 32.929550, 27.520355>,  <39.578575, 32.700985, 27.459803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.619701, 32.929550, 27.520355>,  <39.688244, 33.310493, 27.621275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619701, 32.929550, 27.520355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064190, 0.266334, -0.961741,
		0.983117, -0.148601, -0.106768,
		-0.171352, -0.952357, -0.252299,
		39.568295, 32.643845, 27.444666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074425, 33.108093, 26.980431>,  <39.688244, 33.310493, 27.621275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074425, 33.108093, 26.980431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.829700, 32.791710, 26.983789>,  <39.682865, 32.601879, 26.985806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.829700, 32.791710, 26.983789>,  <40.074425, 33.108093, 26.980431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829700, 32.791710, 26.983789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211697, 0.153500, -0.965206,
		0.762147, -0.592304, -0.261357,
		-0.611814, -0.790957, 0.008399,
		39.646156, 32.554424, 26.986309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321697, 32.686199, 26.471769>,  <40.074425, 33.108093, 26.980431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321697, 32.686199, 26.471769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.938763, 32.594284, 26.541859>,  <39.709003, 32.539135, 26.583912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.938763, 32.594284, 26.541859>,  <40.321697, 32.686199, 26.471769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938763, 32.594284, 26.541859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221230, 0.192699, -0.955994,
		0.185902, -0.953975, -0.235312,
		-0.957339, -0.229779, 0.175225,
		39.651562, 32.525349, 26.594425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115437, 32.394142, 25.912756>,  <40.321697, 32.686199, 26.471769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115437, 32.394142, 25.912756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.770699, 32.503593, 26.083565>,  <39.563854, 32.569263, 26.186050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.770699, 32.503593, 26.083565>,  <40.115437, 32.394142, 25.912756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770699, 32.503593, 26.083565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322640, 0.353827, -0.877901,
		-0.391314, -0.894389, -0.216660,
		-0.861845, 0.273632, 0.427023,
		39.512146, 32.585682, 26.211672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569519, 32.103745, 25.556480>,  <40.115437, 32.394142, 25.912756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569519, 32.103745, 25.556480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.378555, 32.398853, 25.747379>,  <39.263977, 32.575920, 25.861919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.378555, 32.398853, 25.747379>,  <39.569519, 32.103745, 25.556480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378555, 32.398853, 25.747379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495455, 0.222536, -0.839644,
		-0.725673, -0.637312, 0.259292,
		-0.477413, 0.737775, 0.477247,
		39.235332, 32.620186, 25.890553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800091, 32.088062, 25.279215>,  <39.569519, 32.103745, 25.556480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800091, 32.088062, 25.279215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868328, 32.452751, 25.428696>,  <38.909271, 32.671566, 25.518383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.868328, 32.452751, 25.428696>,  <38.800091, 32.088062, 25.279215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868328, 32.452751, 25.428696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331540, 0.410258, -0.849570,
		-0.927890, 0.021034, 0.372261,
		0.170593, 0.911727, 0.373701,
		38.919506, 32.726269, 25.540806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262810, 32.422939, 24.906376>,  <38.800091, 32.088062, 25.279215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262810, 32.422939, 24.906376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506336, 32.714199, 25.032326>,  <38.652451, 32.888954, 25.107895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506336, 32.714199, 25.032326>,  <38.262810, 32.422939, 24.906376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506336, 32.714199, 25.032326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244337, 0.549728, -0.798811,
		-0.754746, 0.409393, 0.512596,
		0.608816, 0.728146, 0.314875,
		38.688980, 32.932644, 25.126789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964451, 33.001232, 24.798223>,  <38.262810, 32.422939, 24.906376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964451, 33.001232, 24.798223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.337036, 33.143398, 24.829355>,  <38.560589, 33.228699, 24.848034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.337036, 33.143398, 24.829355>,  <37.964451, 33.001232, 24.798223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337036, 33.143398, 24.829355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138808, 0.544864, -0.826956,
		-0.336320, 0.759475, 0.556855,
		0.931462, 0.355418, 0.077827,
		38.616474, 33.250023, 24.852703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914387, 33.785820, 24.724096>,  <37.964451, 33.001232, 24.798223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914387, 33.785820, 24.724096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.290924, 33.697662, 24.621887>,  <38.516846, 33.644768, 24.560562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.290924, 33.697662, 24.621887>,  <37.914387, 33.785820, 24.724096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290924, 33.697662, 24.621887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093601, 0.556972, -0.825240,
		0.324198, 0.800754, 0.503675,
		0.941347, -0.220397, -0.255520,
		38.573330, 33.631542, 24.545231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223312, 34.452999, 24.446274>,  <37.914387, 33.785820, 24.724096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223312, 34.452999, 24.446274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459019, 34.163452, 24.302732>,  <38.600445, 33.989723, 24.216608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459019, 34.163452, 24.302732>,  <38.223312, 34.452999, 24.446274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459019, 34.163452, 24.302732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070380, 0.396479, -0.915342,
		0.804865, 0.564640, 0.182687,
		0.589270, -0.723869, -0.358851,
		38.635799, 33.946293, 24.195078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955170, 34.701164, 24.140217>,  <38.223312, 34.452999, 24.446274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955170, 34.701164, 24.140217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.853485, 34.359116, 23.959492>,  <38.792473, 34.153885, 23.851057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.853485, 34.359116, 23.959492>,  <38.955170, 34.701164, 24.140217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853485, 34.359116, 23.959492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044206, 0.456400, -0.888676,
		0.966137, -0.245887, -0.078222,
		-0.254214, -0.855125, -0.451815,
		38.777222, 34.102577, 23.823948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389561, 34.725471, 23.501295>,  <38.955170, 34.701164, 24.140217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389561, 34.725471, 23.501295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.102497, 34.452423, 23.446152>,  <38.930260, 34.288593, 23.413067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.102497, 34.452423, 23.446152>,  <39.389561, 34.725471, 23.501295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102497, 34.452423, 23.446152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102253, 0.299100, -0.948727,
		0.688851, -0.666762, -0.284450,
		-0.717655, -0.682617, -0.137857,
		38.887199, 34.247639, 23.404795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559635, 34.384743, 22.837296>,  <39.389561, 34.725471, 23.501295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559635, 34.384743, 22.837296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.172146, 34.309040, 22.901503>,  <38.939651, 34.263618, 22.940027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.172146, 34.309040, 22.901503>,  <39.559635, 34.384743, 22.837296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172146, 34.309040, 22.901503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194771, 0.179010, -0.964375,
		0.153769, -0.965475, -0.210270,
		-0.968721, -0.189245, 0.160520,
		38.881531, 34.252262, 22.949657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287128, 33.919975, 22.333820>,  <39.559635, 34.384743, 22.837296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287128, 33.919975, 22.333820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957848, 34.088299, 22.486273>,  <38.760281, 34.189293, 22.577744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957848, 34.088299, 22.486273>,  <39.287128, 33.919975, 22.333820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957848, 34.088299, 22.486273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248402, 0.336686, -0.908262,
		-0.510530, -0.842353, -0.172629,
		-0.823199, 0.420813, 0.381130,
		38.710888, 34.214542, 22.600613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737106, 33.693134, 21.944773>,  <39.287128, 33.919975, 22.333820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737106, 33.693134, 21.944773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591991, 34.035583, 22.091980>,  <38.504921, 34.241055, 22.180305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591991, 34.035583, 22.091980>,  <38.737106, 33.693134, 21.944773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591991, 34.035583, 22.091980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338972, 0.246632, -0.907894,
		-0.868034, -0.454122, 0.200726,
		-0.362789, 0.856123, 0.368020,
		38.483154, 34.292419, 22.202385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108711, 33.781944, 21.612831>,  <38.737106, 33.693134, 21.944773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108711, 33.781944, 21.612831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.194939, 34.141563, 21.765272>,  <38.246677, 34.357334, 21.856737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.194939, 34.141563, 21.765272>,  <38.108711, 33.781944, 21.612831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194939, 34.141563, 21.765272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485616, 0.437298, -0.756933,
		-0.847175, -0.021895, 0.530862,
		0.215572, 0.899050, 0.381100,
		38.259609, 34.411278, 21.879602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473824, 34.216721, 21.529146>,  <38.108711, 33.781944, 21.612831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473824, 34.216721, 21.529146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.806248, 34.434589, 21.574173>,  <38.005703, 34.565311, 21.601189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.806248, 34.434589, 21.574173>,  <37.473824, 34.216721, 21.529146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806248, 34.434589, 21.574173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222363, 0.510892, -0.830388,
		-0.509800, 0.665071, 0.545697,
		0.831059, 0.544674, 0.112566,
		38.055565, 34.597992, 21.607943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405983, 34.974422, 21.660336>,  <37.473824, 34.216721, 21.529146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405983, 34.974422, 21.660336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.745930, 34.892067, 21.466290>,  <37.949898, 34.842655, 21.349861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.745930, 34.892067, 21.466290>,  <37.405983, 34.974422, 21.660336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745930, 34.892067, 21.466290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372213, 0.417156, -0.829119,
		0.373072, 0.885207, 0.277895,
		0.849868, -0.205885, -0.485115,
		38.000889, 34.830303, 21.320755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671154, 34.871365, 21.964495>,  <37.405983, 34.974422, 21.660336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671154, 34.871365, 21.964495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281815, 34.787121, 22.000792>,  <36.048210, 34.736576, 22.022570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281815, 34.787121, 22.000792>,  <36.671154, 34.871365, 21.964495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281815, 34.787121, 22.000792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179963, -0.456246, 0.871466,
		-0.142136, 0.864572, 0.481989,
		-0.973350, -0.210607, 0.090742,
		35.989811, 34.723938, 22.028013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389809, 35.135624, 22.582138>,  <36.671154, 34.871365, 21.964495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389809, 35.135624, 22.582138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.170357, 34.819000, 22.474474>,  <36.038685, 34.629025, 22.409876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.170357, 34.819000, 22.474474>,  <36.389809, 35.135624, 22.582138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170357, 34.819000, 22.474474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224529, -0.449598, 0.864551,
		-0.805355, 0.413881, 0.424389,
		-0.548625, -0.791558, -0.269158,
		36.005768, 34.581532, 22.393726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010281, 34.954327, 23.149696>,  <36.389809, 35.135624, 22.582138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010281, 34.954327, 23.149696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.009647, 34.626438, 22.920593>,  <36.009270, 34.429703, 22.783131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.009647, 34.626438, 22.920593>,  <36.010281, 34.954327, 23.149696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009647, 34.626438, 22.920593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113470, -0.569206, 0.814328,
		-0.993540, -0.063704, 0.093914,
		-0.001580, -0.819724, -0.572757,
		36.009174, 34.380520, 22.748766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355095, 34.545925, 23.291346>,  <36.010281, 34.954327, 23.149696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355095, 34.545925, 23.291346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623676, 34.301033, 23.124340>,  <35.784824, 34.154099, 23.024137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623676, 34.301033, 23.124340>,  <35.355095, 34.545925, 23.291346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623676, 34.301033, 23.124340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024509, -0.581451, 0.813212,
		-0.740640, -0.535802, -0.405424,
		0.671455, -0.612234, -0.417514,
		35.825111, 34.117363, 22.999086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177357, 33.957054, 23.706703>,  <35.355095, 34.545925, 23.291346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177357, 33.957054, 23.706703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.526112, 33.858444, 23.537451>,  <35.735363, 33.799278, 23.435900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.526112, 33.858444, 23.537451>,  <35.177357, 33.957054, 23.706703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526112, 33.858444, 23.537451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212907, -0.587290, 0.780872,
		-0.441005, -0.770919, -0.459563,
		0.871886, -0.246524, -0.423132,
		35.787678, 33.784485, 23.410511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179134, 33.195786, 23.746656>,  <35.177357, 33.957054, 23.706703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179134, 33.195786, 23.746656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559719, 33.309490, 23.699480>,  <35.788071, 33.377712, 23.671175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559719, 33.309490, 23.699480>,  <35.179134, 33.195786, 23.746656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559719, 33.309490, 23.699480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274412, -0.610128, 0.743264,
		0.139322, -0.739554, -0.658520,
		0.951466, 0.284259, -0.117939,
		35.845158, 33.394768, 23.664099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527218, 32.500881, 23.672007>,  <35.179134, 33.195786, 23.746656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527218, 32.500881, 23.672007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.797737, 32.770550, 23.790741>,  <35.960049, 32.932350, 23.861982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.797737, 32.770550, 23.790741>,  <35.527218, 32.500881, 23.672007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797737, 32.770550, 23.790741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351320, -0.649383, 0.674445,
		0.647452, -0.351842, -0.676027,
		0.676299, 0.674173, 0.296835,
		36.000626, 32.972801, 23.879791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054314, 32.151714, 23.930279>,  <35.527218, 32.500881, 23.672007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054314, 32.151714, 23.930279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167759, 32.509396, 24.068821>,  <36.235825, 32.724007, 24.151947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167759, 32.509396, 24.068821>,  <36.054314, 32.151714, 23.930279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167759, 32.509396, 24.068821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170556, -0.402466, 0.899406,
		0.943650, -0.196007, -0.266656,
		0.283610, 0.894205, 0.346357,
		36.252842, 32.777657, 24.172728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757549, 32.170658, 24.075623>,  <36.054314, 32.151714, 23.930279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757549, 32.170658, 24.075623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585102, 32.441452, 24.314228>,  <36.481636, 32.603928, 24.457392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585102, 32.441452, 24.314228>,  <36.757549, 32.170658, 24.075623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585102, 32.441452, 24.314228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469856, -0.395962, 0.788955,
		0.770309, 0.620405, -0.147382,
		-0.431114, 0.676987, 0.596514,
		36.455769, 32.644547, 24.493183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296890, 32.322536, 24.537525>,  <36.757549, 32.170658, 24.075623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296890, 32.322536, 24.537525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967594, 32.442371, 24.730406>,  <36.770016, 32.514271, 24.846134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967594, 32.442371, 24.730406>,  <37.296890, 32.322536, 24.537525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967594, 32.442371, 24.730406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336786, -0.426044, 0.839680,
		0.456994, 0.853660, 0.249842,
		-0.823245, 0.299585, 0.482200,
		36.720619, 32.532246, 24.875067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513218, 32.540489, 25.221748>,  <37.296890, 32.322536, 24.537525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513218, 32.540489, 25.221748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120632, 32.481995, 25.271288>,  <36.885078, 32.446899, 25.301012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120632, 32.481995, 25.271288>,  <37.513218, 32.540489, 25.221748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120632, 32.481995, 25.271288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167819, -0.343872, 0.923899,
		-0.092518, 0.927560, 0.362040,
		-0.981467, -0.146235, 0.123847,
		36.826191, 32.438126, 25.308441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300819, 32.918518, 25.779888>,  <37.513218, 32.540489, 25.221748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300819, 32.918518, 25.779888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.032673, 32.623402, 25.748236>,  <36.871784, 32.446331, 25.729244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.032673, 32.623402, 25.748236>,  <37.300819, 32.918518, 25.779888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032673, 32.623402, 25.748236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267113, -0.339435, 0.901906,
		-0.692281, 0.583475, 0.424622,
		-0.670371, -0.737795, -0.079131,
		36.831562, 32.402061, 25.724497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013756, 32.900032, 26.452173>,  <37.300819, 32.918518, 25.779888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013756, 32.900032, 26.452173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.920063, 32.552647, 26.277401>,  <36.863846, 32.344215, 26.172537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.920063, 32.552647, 26.277401>,  <37.013756, 32.900032, 26.452173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920063, 32.552647, 26.277401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000142, -0.449405, 0.893328,
		-0.972180, 0.209310, 0.105143,
		-0.234234, -0.868461, -0.436932,
		36.849792, 32.292107, 26.146322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617599, 32.642593, 26.991518>,  <37.013756, 32.900032, 26.452173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617599, 32.642593, 26.991518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711052, 32.347538, 26.738125>,  <36.767124, 32.170506, 26.586088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711052, 32.347538, 26.738125>,  <36.617599, 32.642593, 26.991518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711052, 32.347538, 26.738125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347736, -0.545036, 0.762899,
		-0.908017, -0.398522, 0.129167,
		0.233631, -0.737642, -0.633483,
		36.781143, 32.126247, 26.548080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381481, 31.965448, 27.252697>,  <36.617599, 32.642593, 26.991518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381481, 31.965448, 27.252697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.681042, 31.849560, 27.014297>,  <36.860779, 31.780027, 26.871258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.681042, 31.849560, 27.014297>,  <36.381481, 31.965448, 27.252697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681042, 31.849560, 27.014297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292693, -0.662279, 0.689723,
		-0.594543, -0.690977, -0.411181,
		0.748899, -0.289720, -0.595997,
		36.905712, 31.762644, 26.835499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278954, 31.190891, 27.314199>,  <36.381481, 31.965448, 27.252697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278954, 31.190891, 27.314199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.652222, 31.257082, 27.186567>,  <36.876183, 31.296797, 27.109987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.652222, 31.257082, 27.186567>,  <36.278954, 31.190891, 27.314199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652222, 31.257082, 27.186567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335730, -0.718330, 0.609333,
		-0.128375, -0.675736, -0.725879,
		0.933170, 0.165477, -0.319080,
		36.932171, 31.306725, 27.090843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671707, 30.494637, 27.244877>,  <36.278954, 31.190891, 27.314199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671707, 30.494637, 27.244877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.942909, 30.784657, 27.293222>,  <37.105633, 30.958668, 27.322229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.942909, 30.784657, 27.293222>,  <36.671707, 30.494637, 27.244877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942909, 30.784657, 27.293222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554033, -0.612141, 0.564209,
		0.483064, -0.315577, -0.816738,
		0.678010, 0.725048, 0.120863,
		37.146313, 31.002171, 27.329481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382534, 30.140432, 27.294477>,  <36.671707, 30.494637, 27.244877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382534, 30.140432, 27.294477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446056, 30.510900, 27.431293>,  <37.484169, 30.733181, 27.513384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446056, 30.510900, 27.431293>,  <37.382534, 30.140432, 27.294477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446056, 30.510900, 27.431293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601980, -0.365421, 0.709991,
		0.782561, 0.093154, -0.615565,
		0.158801, 0.926169, 0.342041,
		37.493698, 30.788752, 27.533905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092033, 30.212372, 27.312229>,  <37.382534, 30.140432, 27.294477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092033, 30.212372, 27.312229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974041, 30.477917, 27.587118>,  <37.903248, 30.637243, 27.752052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974041, 30.477917, 27.587118>,  <38.092033, 30.212372, 27.312229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974041, 30.477917, 27.587118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717349, -0.321246, 0.618232,
		0.631188, 0.675345, -0.381459,
		-0.294978, 0.663860, 0.687225,
		37.885548, 30.677074, 27.793285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697811, 30.540617, 27.621336>,  <38.092033, 30.212372, 27.312229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697811, 30.540617, 27.621336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407070, 30.586761, 27.892151>,  <38.232628, 30.614449, 28.054640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407070, 30.586761, 27.892151>,  <38.697811, 30.540617, 27.621336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407070, 30.586761, 27.892151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634507, -0.264487, 0.726256,
		0.262849, 0.957465, 0.119045,
		-0.726850, 0.115361, 0.677038,
		38.189014, 30.621370, 28.095263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.150543, 32.673264, 31.934002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.787010, 32.641113, 32.097740>,  <41.568890, 32.621822, 32.195984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.787010, 32.641113, 32.097740>,  <42.150543, 32.673264, 31.934002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787010, 32.641113, 32.097740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393876, 0.157915, 0.905497,
		-0.137419, 0.984176, -0.111861,
		-0.908833, -0.080373, 0.409344,
		41.514359, 32.617001, 32.220543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240875, 33.073750, 32.425861>,  <42.150543, 32.673264, 31.934002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240875, 33.073750, 32.425861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.899185, 32.900059, 32.540226>,  <41.694172, 32.795845, 32.608845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.899185, 32.900059, 32.540226>,  <42.240875, 33.073750, 32.425861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899185, 32.900059, 32.540226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297269, 0.043222, 0.953815,
		-0.426527, 0.899767, 0.092161,
		-0.854228, -0.434225, 0.285908,
		41.642918, 32.769791, 32.625999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956863, 33.473511, 32.993137>,  <42.240875, 33.073750, 32.425861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956863, 33.473511, 32.993137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.798401, 33.110592, 33.049530>,  <41.703323, 32.892841, 33.083366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.798401, 33.110592, 33.049530>,  <41.956863, 33.473511, 32.993137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798401, 33.110592, 33.049530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291017, 0.021554, 0.956475,
		-0.870844, 0.419941, 0.255500,
		-0.396156, -0.907295, 0.140980,
		41.679554, 32.838402, 33.091824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623398, 33.535454, 33.590317>,  <41.956863, 33.473511, 32.993137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623398, 33.535454, 33.590317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.685310, 33.147133, 33.517010>,  <41.722458, 32.914139, 33.473026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.685310, 33.147133, 33.517010>,  <41.623398, 33.535454, 33.590317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685310, 33.147133, 33.517010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234997, -0.144001, 0.961270,
		-0.959594, -0.191851, 0.205848,
		0.154778, -0.970802, -0.183267,
		41.731743, 32.855892, 33.462029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130310, 33.114811, 34.081627>,  <41.623398, 33.535454, 33.590317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130310, 33.114811, 34.081627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.442425, 32.894543, 33.963028>,  <41.629692, 32.762383, 33.891869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.442425, 32.894543, 33.963028>,  <41.130310, 33.114811, 34.081627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442425, 32.894543, 33.963028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168406, -0.271578, 0.947568,
		-0.602324, -0.789306, -0.119171,
		0.780285, -0.550674, -0.296502,
		41.676510, 32.729340, 33.874077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058460, 32.518311, 34.547848>,  <41.130310, 33.114811, 34.081627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058460, 32.518311, 34.547848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431858, 32.496616, 34.406055>,  <41.655895, 32.483601, 34.320980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431858, 32.496616, 34.406055>,  <41.058460, 32.518311, 34.547848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431858, 32.496616, 34.406055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289720, -0.468458, 0.834631,
		-0.211322, -0.881819, -0.421589,
		0.933491, -0.054234, -0.354476,
		41.711906, 32.480347, 34.299713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316612, 31.744997, 34.635849>,  <41.058460, 32.518311, 34.547848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316612, 31.744997, 34.635849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.626690, 31.996778, 34.614479>,  <41.812737, 32.147846, 34.601658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.626690, 31.996778, 34.614479>,  <41.316612, 31.744997, 34.635849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626690, 31.996778, 34.614479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383170, -0.401270, 0.831963,
		0.502244, -0.665408, -0.552252,
		0.775198, 0.629455, -0.053429,
		41.859249, 32.185616, 34.598450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733669, 31.471491, 35.083008>,  <41.316612, 31.744997, 34.635849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733669, 31.471491, 35.083008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.948193, 31.804831, 35.029484>,  <42.076904, 32.004833, 34.997372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.948193, 31.804831, 35.029484>,  <41.733669, 31.471491, 35.083008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948193, 31.804831, 35.029484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449720, -0.147989, 0.880824,
		0.714233, -0.532566, -0.454142,
		0.536305, 0.833350, -0.133807,
		42.109085, 32.054836, 34.989342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432934, 31.334267, 35.227600>,  <41.733669, 31.471491, 35.083008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432934, 31.334267, 35.227600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.375439, 31.723112, 35.301720>,  <42.340942, 31.956419, 35.346191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.375439, 31.723112, 35.301720>,  <42.432934, 31.334267, 35.227600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375439, 31.723112, 35.301720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369142, -0.121066, 0.921454,
		0.918191, 0.200849, -0.341446,
		-0.143736, 0.972113, 0.185303,
		42.332317, 32.014748, 35.357311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054070, 31.519238, 35.478962>,  <42.432934, 31.334267, 35.227600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054070, 31.519238, 35.478962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.797813, 31.808138, 35.583218>,  <42.644058, 31.981478, 35.645771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.797813, 31.808138, 35.583218>,  <43.054070, 31.519238, 35.478962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797813, 31.808138, 35.583218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298305, -0.078673, 0.951223,
		0.707527, 0.687142, -0.165050,
		-0.640640, 0.722251, 0.260641,
		42.605621, 32.024815, 35.661411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437881, 31.952690, 35.803528>,  <43.054070, 31.519238, 35.478962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437881, 31.952690, 35.803528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.064274, 31.991360, 35.941082>,  <42.840107, 32.014561, 36.023613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.064274, 31.991360, 35.941082>,  <43.437881, 31.952690, 35.803528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064274, 31.991360, 35.941082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341543, -0.040319, 0.939001,
		0.104644, 0.994499, 0.004640,
		-0.934022, 0.096676, 0.343883,
		42.784065, 32.020363, 36.044247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401684, 32.448807, 36.350594>,  <43.437881, 31.952690, 35.803528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401684, 32.448807, 36.350594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.074944, 32.238430, 36.445374>,  <42.878899, 32.112206, 36.502243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.074944, 32.238430, 36.445374>,  <43.401684, 32.448807, 36.350594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074944, 32.238430, 36.445374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244531, 0.056334, 0.968004,
		-0.522463, 0.848652, 0.082593,
		-0.816846, -0.525942, 0.236955,
		42.829891, 32.080647, 36.516460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393867, 32.529812, 37.051769>,  <43.401684, 32.448807, 36.350594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393867, 32.529812, 37.051769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402245, 32.544540, 37.451408>,  <43.407269, 32.553379, 37.691193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402245, 32.544540, 37.451408>,  <43.393867, 32.529812, 37.051769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402245, 32.544540, 37.451408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919107, 0.392561, -0.033731,
		-0.393451, 0.918988, -0.025628,
		0.020938, 0.036826, 0.999102,
		43.408527, 32.555588, 37.751141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.562836, 33.184875, 37.375919>,  <43.393867, 32.529812, 37.051769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.562836, 33.184875, 37.375919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.674679, 32.917408, 37.651516>,  <43.741783, 32.756927, 37.816872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.674679, 32.917408, 37.651516>,  <43.562836, 33.184875, 37.375919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674679, 32.917408, 37.651516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889164, 0.451075, 0.076932,
		-0.362227, 0.591113, 0.720678,
		0.279604, -0.668668, 0.688988,
		43.758560, 32.716808, 37.858212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973045, 33.698345, 37.271812>,  <43.562836, 33.184875, 37.375919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973045, 33.698345, 37.271812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.664127, 33.828350, 37.490143>,  <42.478775, 33.906353, 37.621143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.664127, 33.828350, 37.490143>,  <42.973045, 33.698345, 37.271812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664127, 33.828350, 37.490143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326193, 0.534409, -0.779747,
		-0.545124, -0.780239, -0.306703,
		-0.772294, 0.325014, 0.545828,
		42.432438, 33.925854, 37.653893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309589, 33.612659, 36.864685>,  <42.973045, 33.698345, 37.271812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309589, 33.612659, 36.864685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.255516, 33.905693, 37.131535>,  <42.223072, 34.081512, 37.291645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.255516, 33.905693, 37.131535>,  <42.309589, 33.612659, 36.864685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255516, 33.905693, 37.131535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564079, 0.496634, -0.659673,
		-0.814579, -0.465486, 0.346098,
		-0.135184, 0.732583, 0.667119,
		42.214962, 34.125469, 37.331669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606197, 33.694141, 36.910416>,  <42.309589, 33.612659, 36.864685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606197, 33.694141, 36.910416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.766926, 34.036335, 37.041069>,  <41.863365, 34.241650, 37.119461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.766926, 34.036335, 37.041069>,  <41.606197, 33.694141, 36.910416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766926, 34.036335, 37.041069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531269, 0.508318, -0.677765,
		-0.745849, 0.098813, 0.658745,
		0.401825, 0.855481, 0.326632,
		41.887474, 34.292980, 37.139057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052380, 34.224689, 36.900681>,  <41.606197, 33.694141, 36.910416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052380, 34.224689, 36.900681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.374813, 34.457691, 36.942471>,  <41.568272, 34.597492, 36.967545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.374813, 34.457691, 36.942471>,  <41.052380, 34.224689, 36.900681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374813, 34.457691, 36.942471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464698, 0.732331, -0.497742,
		-0.366446, 0.352674, 0.861010,
		0.806085, 0.582505, 0.104474,
		41.616638, 34.632442, 36.973812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854263, 34.986023, 36.981228>,  <41.052380, 34.224689, 36.900681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854263, 34.986023, 36.981228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.223686, 34.961720, 36.829781>,  <41.445339, 34.947136, 36.738914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.223686, 34.961720, 36.829781>,  <40.854263, 34.986023, 36.981228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223686, 34.961720, 36.829781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267136, 0.606409, -0.748937,
		0.275100, 0.792828, 0.543823,
		0.923557, -0.060758, -0.378616,
		41.500755, 34.943493, 36.716194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802505, 35.408710, 36.502083>,  <40.854263, 34.986023, 36.981228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802505, 35.408710, 36.502083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.167526, 35.293446, 36.386005>,  <41.386539, 35.224285, 36.316360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.167526, 35.293446, 36.386005>,  <40.802505, 35.408710, 36.502083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167526, 35.293446, 36.386005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102497, 0.525787, -0.844419,
		0.395909, 0.800320, 0.450272,
		0.912552, -0.288162, -0.290194,
		41.441292, 35.206997, 36.298946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111393, 36.013512, 36.251835>,  <40.802505, 35.408710, 36.502083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111393, 36.013512, 36.251835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.322708, 35.704491, 36.110935>,  <41.449497, 35.519077, 36.026398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.322708, 35.704491, 36.110935>,  <41.111393, 36.013512, 36.251835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322708, 35.704491, 36.110935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005434, 0.411781, -0.911267,
		0.849046, 0.483329, 0.213342,
		0.528291, -0.772548, -0.352247,
		41.481197, 35.472725, 36.005260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761253, 36.268963, 35.987923>,  <41.111393, 36.013512, 36.251835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761253, 36.268963, 35.987923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.715836, 35.909225, 35.819027>,  <41.688583, 35.693382, 35.717690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.715836, 35.909225, 35.819027>,  <41.761253, 36.268963, 35.987923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715836, 35.909225, 35.819027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180369, 0.399263, -0.898919,
		0.977023, -0.178228, 0.116879,
		-0.113548, -0.899346, -0.422236,
		41.681770, 35.639423, 35.692356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270039, 36.222694, 35.495457>,  <41.761253, 36.268963, 35.987923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270039, 36.222694, 35.495457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.026974, 35.944431, 35.342194>,  <41.881134, 35.777473, 35.250237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.026974, 35.944431, 35.342194>,  <42.270039, 36.222694, 35.495457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026974, 35.944431, 35.342194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184906, 0.345265, -0.920110,
		0.772372, -0.629962, -0.081173,
		-0.607661, -0.695658, -0.383157,
		41.844677, 35.735733, 35.227245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587040, 35.998661, 34.858292>,  <42.270039, 36.222694, 35.495457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587040, 35.998661, 34.858292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.195702, 35.920071, 34.832253>,  <41.960899, 35.872917, 34.816628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.195702, 35.920071, 34.832253>,  <42.587040, 35.998661, 34.858292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195702, 35.920071, 34.832253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006437, 0.285488, -0.958361,
		0.206875, -0.938028, -0.278042,
		-0.978346, -0.196471, -0.065099,
		41.902199, 35.861130, 34.812721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507084, 35.627171, 34.193584>,  <42.587040, 35.998661, 34.858292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507084, 35.627171, 34.193584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.156055, 35.799683, 34.277370>,  <41.945438, 35.903191, 34.327641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.156055, 35.799683, 34.277370>,  <42.507084, 35.627171, 34.193584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156055, 35.799683, 34.277370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143546, 0.180494, -0.973045,
		-0.457457, -0.883982, -0.096488,
		-0.877569, 0.431275, 0.209461,
		41.892784, 35.929066, 34.340210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955158, 35.530151, 33.660568>,  <42.507084, 35.627171, 34.193584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955158, 35.530151, 33.660568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.750053, 35.813816, 33.854130>,  <41.626991, 35.984016, 33.970268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.750053, 35.813816, 33.854130>,  <41.955158, 35.530151, 33.660568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750053, 35.813816, 33.854130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424613, 0.280402, -0.860859,
		-0.746178, -0.646886, 0.157341,
		-0.512759, 0.709163, 0.483907,
		41.596226, 36.026566, 33.999302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181400, 35.415504, 33.470444>,  <41.955158, 35.530151, 33.660568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181400, 35.415504, 33.470444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.217491, 35.795204, 33.590965>,  <41.239147, 36.023026, 33.663280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.217491, 35.795204, 33.590965>,  <41.181400, 35.415504, 33.470444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217491, 35.795204, 33.590965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404915, 0.311374, -0.859703,
		-0.909891, -0.044433, 0.412461,
		0.090231, 0.949248, 0.301308,
		41.244560, 36.079979, 33.681358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536156, 35.787659, 33.429302>,  <41.181400, 35.415504, 33.470444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536156, 35.787659, 33.429302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.840584, 36.039726, 33.367767>,  <41.023239, 36.190968, 33.330845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.840584, 36.039726, 33.367767>,  <40.536156, 35.787659, 33.429302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840584, 36.039726, 33.367767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330476, 0.172598, -0.927899,
		-0.558177, 0.757034, 0.339613,
		0.761068, 0.630166, -0.153841,
		41.068905, 36.228775, 33.321613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062042, 36.178936, 33.971470>,  <40.536156, 35.787659, 33.429302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062042, 36.178936, 33.971470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.669384, 36.115505, 34.013870>,  <39.433788, 36.077446, 34.039310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.669384, 36.115505, 34.013870>,  <40.062042, 36.178936, 33.971470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669384, 36.115505, 34.013870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189216, -0.739526, 0.645987,
		-0.024048, 0.654183, 0.755954,
		-0.981641, -0.158573, 0.105998,
		39.374893, 36.067932, 34.045670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039375, 36.078938, 34.702003>,  <40.062042, 36.178936, 33.971470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039375, 36.078938, 34.702003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677650, 35.958286, 34.581184>,  <39.460613, 35.885895, 34.508694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677650, 35.958286, 34.581184>,  <40.039375, 36.078938, 34.702003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677650, 35.958286, 34.581184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022869, -0.672352, 0.739879,
		-0.426252, 0.675991, 0.601120,
		-0.904316, -0.301627, -0.302050,
		39.406357, 35.867798, 34.490570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663307, 36.050327, 35.244160>,  <40.039375, 36.078938, 34.702003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663307, 36.050327, 35.244160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490101, 35.802967, 34.981838>,  <39.386177, 35.654552, 34.824444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490101, 35.802967, 34.981838>,  <39.663307, 36.050327, 35.244160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490101, 35.802967, 34.981838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110707, -0.685558, 0.719552,
		-0.894561, 0.384181, 0.228398,
		-0.433019, -0.618398, -0.655804,
		39.360195, 35.617447, 34.785095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070038, 35.884785, 35.531227>,  <39.663307, 36.050327, 35.244160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070038, 35.884785, 35.531227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.150585, 35.595928, 35.266514>,  <39.198914, 35.422615, 35.107685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.150585, 35.595928, 35.266514>,  <39.070038, 35.884785, 35.531227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150585, 35.595928, 35.266514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131821, -0.689456, 0.712232,
		-0.970606, -0.056182, -0.234026,
		0.201366, -0.722146, -0.661784,
		39.210995, 35.379284, 35.067978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563541, 35.421131, 35.549328>,  <39.070038, 35.884785, 35.531227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563541, 35.421131, 35.549328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.885265, 35.210293, 35.439602>,  <39.078300, 35.083790, 35.373768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.885265, 35.210293, 35.439602>,  <38.563541, 35.421131, 35.549328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885265, 35.210293, 35.439602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215697, -0.689148, 0.691773,
		-0.553673, -0.497235, -0.667985,
		0.804314, -0.527098, -0.274311,
		39.126560, 35.052162, 35.357307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324818, 34.749870, 35.644783>,  <38.563541, 35.421131, 35.549328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324818, 34.749870, 35.644783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.720570, 34.722851, 35.593304>,  <38.958019, 34.706638, 35.562416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.720570, 34.722851, 35.593304>,  <38.324818, 34.749870, 35.644783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720570, 34.722851, 35.593304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036737, -0.740489, 0.671063,
		-0.140630, -0.668665, -0.730144,
		0.989380, -0.067548, -0.128700,
		39.017384, 34.702587, 35.554695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470184, 34.107960, 35.661732>,  <38.324818, 34.749870, 35.644783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470184, 34.107960, 35.661732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.839836, 34.245090, 35.729195>,  <39.061626, 34.327370, 35.769672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.839836, 34.245090, 35.729195>,  <38.470184, 34.107960, 35.661732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839836, 34.245090, 35.729195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165628, -0.757271, 0.631751,
		0.344302, -0.555888, -0.756601,
		0.924134, 0.342827, 0.168659,
		39.117077, 34.347939, 35.779793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966576, 33.591705, 35.483006>,  <38.470184, 34.107960, 35.661732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966576, 33.591705, 35.483006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.088318, 33.837498, 35.774151>,  <39.161362, 33.984974, 35.948837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.088318, 33.837498, 35.774151>,  <38.966576, 33.591705, 35.483006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088318, 33.837498, 35.774151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165895, -0.786629, 0.594721,
		0.938003, -0.060255, -0.341350,
		0.304351, 0.614478, 0.727865,
		39.179623, 34.021843, 35.992512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146374, 33.120258, 35.930126>,  <38.966576, 33.591705, 35.483006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146374, 33.120258, 35.930126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.193371, 33.456322, 36.141911>,  <39.221569, 33.657959, 36.268982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.193371, 33.456322, 36.141911>,  <39.146374, 33.120258, 35.930126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193371, 33.456322, 36.141911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055127, -0.537845, 0.841239,
		0.991543, -0.069652, -0.109508,
		0.117493, 0.840161, 0.529457,
		39.228619, 33.708370, 36.300747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562798, 32.891338, 36.453762>,  <39.146374, 33.120258, 35.930126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562798, 32.891338, 36.453762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.405613, 33.236786, 36.580093>,  <39.311302, 33.444054, 36.655891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.405613, 33.236786, 36.580093>,  <39.562798, 32.891338, 36.453762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405613, 33.236786, 36.580093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087730, -0.377098, 0.922009,
		0.915359, 0.334610, 0.223951,
		-0.392965, 0.863617, 0.315824,
		39.287724, 33.495872, 36.674839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995178, 33.130745, 36.968418>,  <39.562798, 32.891338, 36.453762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995178, 33.130745, 36.968418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.622814, 33.265324, 37.025272>,  <39.399395, 33.346069, 37.059387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.622814, 33.265324, 37.025272>,  <39.995178, 33.130745, 36.968418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622814, 33.265324, 37.025272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018068, -0.431115, 0.902116,
		0.364790, 0.837225, 0.407410,
		-0.930915, 0.336444, 0.142139,
		39.343540, 33.366257, 37.067913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958748, 33.431583, 37.617382>,  <39.995178, 33.130745, 36.968418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958748, 33.431583, 37.617382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.573078, 33.341736, 37.560944>,  <39.341675, 33.287827, 37.527081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.573078, 33.341736, 37.560944>,  <39.958748, 33.431583, 37.617382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573078, 33.341736, 37.560944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049308, -0.370898, 0.927364,
		-0.260635, 0.901101, 0.346536,
		-0.964177, -0.224616, -0.141101,
		39.283825, 33.274349, 37.518612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.037308, 37.504906, 30.628824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682892, 37.329350, 30.688560>,  <38.470242, 37.224014, 30.724401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682892, 37.329350, 30.688560>,  <39.037308, 37.504906, 30.628824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682892, 37.329350, 30.688560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226613, -0.128995, 0.965405,
		-0.404442, 0.889234, 0.213753,
		-0.886044, -0.438889, 0.149341,
		38.417080, 37.197681, 30.733362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759724, 37.838459, 31.132372>,  <39.037308, 37.504906, 30.628824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759724, 37.838459, 31.132372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560581, 37.491760, 31.144314>,  <38.441093, 37.283741, 31.151478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560581, 37.491760, 31.144314>,  <38.759724, 37.838459, 31.132372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560581, 37.491760, 31.144314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216109, -0.090650, 0.972152,
		-0.839901, 0.490445, 0.232442,
		-0.497858, -0.866745, 0.029853,
		38.411224, 37.231735, 31.153271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363037, 37.839066, 31.797543>,  <38.759724, 37.838459, 31.132372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363037, 37.839066, 31.797543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412849, 37.457581, 31.688057>,  <38.442738, 37.228687, 31.622366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412849, 37.457581, 31.688057>,  <38.363037, 37.839066, 31.797543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412849, 37.457581, 31.688057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184442, -0.248804, 0.950830,
		-0.974922, -0.168896, 0.144920,
		0.124535, -0.953714, -0.273716,
		38.450211, 37.171467, 31.605942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846813, 37.435669, 32.146694>,  <38.363037, 37.839066, 31.797543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846813, 37.435669, 32.146694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126804, 37.167454, 32.048386>,  <38.294800, 37.006523, 31.989401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126804, 37.167454, 32.048386>,  <37.846813, 37.435669, 32.146694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126804, 37.167454, 32.048386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038473, -0.308231, 0.950533,
		-0.713126, -0.674809, -0.189957,
		0.699979, -0.670542, -0.245770,
		38.336800, 36.966290, 31.974655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578285, 36.830967, 32.404682>,  <37.846813, 37.435669, 32.146694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578285, 36.830967, 32.404682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969730, 36.761238, 32.360985>,  <38.204597, 36.719402, 32.334766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969730, 36.761238, 32.360985>,  <37.578285, 36.830967, 32.404682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969730, 36.761238, 32.360985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044482, -0.339159, 0.939677,
		-0.200853, -0.924437, -0.324150,
		0.978611, -0.174318, -0.109242,
		38.263313, 36.708942, 32.328213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779530, 36.155083, 32.749500>,  <37.578285, 36.830967, 32.404682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779530, 36.155083, 32.749500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129780, 36.346733, 32.725094>,  <38.339928, 36.461723, 32.710449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129780, 36.346733, 32.725094>,  <37.779530, 36.155083, 32.749500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129780, 36.346733, 32.725094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254421, -0.350164, 0.901474,
		0.410558, -0.804872, -0.428512,
		0.875621, 0.479129, -0.061014,
		38.392467, 36.490471, 32.706791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356922, 35.621075, 32.803780>,  <37.779530, 36.155083, 32.749500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356922, 35.621075, 32.803780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499660, 35.983490, 32.894783>,  <38.585304, 36.200939, 32.949387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499660, 35.983490, 32.894783>,  <38.356922, 35.621075, 32.803780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499660, 35.983490, 32.894783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257054, -0.329377, 0.908534,
		0.898101, -0.265724, -0.350436,
		0.356845, 0.906036, 0.227508,
		38.606712, 36.255302, 32.963036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002987, 35.494457, 32.959957>,  <38.356922, 35.621075, 32.803780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002987, 35.494457, 32.959957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888645, 35.840218, 33.125416>,  <38.820042, 36.047672, 33.224693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888645, 35.840218, 33.125416>,  <39.002987, 35.494457, 32.959957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888645, 35.840218, 33.125416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384857, -0.291762, 0.875648,
		0.877595, 0.409502, -0.249269,
		-0.285852, 0.864398, 0.413648,
		38.802891, 36.099537, 33.249512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649761, 35.930309, 33.217300>,  <39.002987, 35.494457, 32.959957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649761, 35.930309, 33.217300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332096, 36.005051, 33.448608>,  <39.141499, 36.049896, 33.587391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332096, 36.005051, 33.448608>,  <39.649761, 35.930309, 33.217300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332096, 36.005051, 33.448608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518534, -0.287859, 0.805146,
		0.316900, 0.939268, 0.131719,
		-0.794164, 0.186850, 0.578265,
		39.093845, 36.061104, 33.622089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228481, 36.451111, 33.059650>,  <39.649761, 35.930309, 33.217300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228481, 36.451111, 33.059650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625439, 36.471653, 33.014881>,  <40.863613, 36.483978, 32.988018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625439, 36.471653, 33.014881>,  <40.228481, 36.451111, 33.059650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625439, 36.471653, 33.014881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118612, 0.154276, -0.980883,
		-0.033102, 0.986693, 0.159192,
		0.992389, 0.051351, -0.111926,
		40.923157, 36.487057, 32.981304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281162, 36.892715, 32.550671>,  <40.228481, 36.451111, 33.059650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281162, 36.892715, 32.550671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645706, 36.728119, 32.554646>,  <40.864433, 36.629360, 32.557030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645706, 36.728119, 32.554646>,  <40.281162, 36.892715, 32.550671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645706, 36.728119, 32.554646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006167, -0.037793, -0.999267,
		0.411569, 0.910628, -0.036981,
		0.911358, -0.411495, 0.009939,
		40.919113, 36.604671, 32.557629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633091, 37.273212, 32.066219>,  <40.281162, 36.892715, 32.550671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633091, 37.273212, 32.066219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862225, 36.946144, 32.089119>,  <40.999706, 36.749905, 32.102859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862225, 36.946144, 32.089119>,  <40.633091, 37.273212, 32.066219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862225, 36.946144, 32.089119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153715, 0.038555, -0.987363,
		0.805128, 0.574397, 0.147773,
		0.572835, -0.817669, 0.057251,
		41.034077, 36.700844, 32.106293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235966, 37.399311, 31.577795>,  <40.633091, 37.273212, 32.066219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235966, 37.399311, 31.577795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210274, 37.002354, 31.619818>,  <41.194859, 36.764179, 31.645031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210274, 37.002354, 31.619818>,  <41.235966, 37.399311, 31.577795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210274, 37.002354, 31.619818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088595, -0.110529, -0.989916,
		0.993995, -0.054276, 0.095020,
		-0.064231, -0.992390, 0.105056,
		41.191006, 36.704636, 31.651335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712357, 37.167755, 31.074017>,  <41.235966, 37.399311, 31.577795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712357, 37.167755, 31.074017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446957, 36.876541, 31.142992>,  <41.287716, 36.701813, 31.184378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446957, 36.876541, 31.142992>,  <41.712357, 37.167755, 31.074017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446957, 36.876541, 31.142992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019587, -0.213498, -0.976747,
		0.747919, -0.651450, 0.127396,
		-0.663501, -0.728033, 0.172439,
		41.247906, 36.658131, 31.194723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883980, 36.651402, 30.534508>,  <41.712357, 37.167755, 31.074017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883980, 36.651402, 30.534508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524368, 36.541264, 30.670706>,  <41.308601, 36.475182, 30.752424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524368, 36.541264, 30.670706>,  <41.883980, 36.651402, 30.534508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524368, 36.541264, 30.670706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241626, -0.336561, -0.910134,
		0.365197, -0.900507, 0.236047,
		-0.899026, -0.275343, 0.340497,
		41.254662, 36.458660, 30.772856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764275, 35.912155, 30.279091>,  <41.883980, 36.651402, 30.534508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764275, 35.912155, 30.279091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402607, 36.065201, 30.355074>,  <41.185608, 36.157028, 30.400663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402607, 36.065201, 30.355074>,  <41.764275, 35.912155, 30.279091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402607, 36.065201, 30.355074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344350, -0.389686, -0.854147,
		-0.252781, -0.837708, 0.484095,
		-0.904170, 0.382610, 0.189959,
		41.131355, 36.179985, 30.412062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425549, 35.549828, 29.874933>,  <41.764275, 35.912155, 30.279091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425549, 35.549828, 29.874933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158459, 35.835625, 29.958498>,  <40.998207, 36.007103, 30.008636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158459, 35.835625, 29.958498>,  <41.425549, 35.549828, 29.874933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158459, 35.835625, 29.958498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276699, 0.022317, -0.960698,
		-0.691077, -0.699283, 0.182799,
		-0.667720, 0.714496, 0.208914,
		40.958141, 36.049973, 30.021172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709335, 35.314110, 29.636295>,  <41.425549, 35.549828, 29.874933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709335, 35.314110, 29.636295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730324, 35.713345, 29.649357>,  <40.742916, 35.952885, 29.657194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730324, 35.713345, 29.649357>,  <40.709335, 35.314110, 29.636295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730324, 35.713345, 29.649357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199152, 0.042500, -0.979047,
		-0.978563, 0.044866, 0.201001,
		0.052468, 0.998089, 0.032654,
		40.746063, 36.012772, 29.659153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218166, 35.557125, 29.264219>,  <40.709335, 35.314110, 29.636295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218166, 35.557125, 29.264219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445389, 35.886261, 29.270557>,  <40.581722, 36.083740, 29.274361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445389, 35.886261, 29.270557>,  <40.218166, 35.557125, 29.264219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445389, 35.886261, 29.270557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083021, 0.076449, -0.993611,
		-0.818790, 0.563114, 0.111740,
		0.568059, 0.822836, 0.015846,
		40.615807, 36.133110, 29.275311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924152, 35.920704, 28.661669>,  <40.218166, 35.557125, 29.264219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924152, 35.920704, 28.661669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270519, 36.091816, 28.765348>,  <40.478340, 36.194481, 28.827557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270519, 36.091816, 28.765348>,  <39.924152, 35.920704, 28.661669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270519, 36.091816, 28.765348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190976, 0.196192, -0.961788,
		-0.462285, 0.882335, 0.088192,
		0.865922, 0.427778, 0.259201,
		40.530296, 36.220150, 28.843109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935902, 36.602520, 28.381239>,  <39.924152, 35.920704, 28.661669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935902, 36.602520, 28.381239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319405, 36.497242, 28.424170>,  <40.549507, 36.434074, 28.449928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319405, 36.497242, 28.424170>,  <39.935902, 36.602520, 28.381239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319405, 36.497242, 28.424170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177987, 0.261514, -0.948647,
		0.221614, 0.928621, 0.297573,
		0.958753, -0.263197, 0.107328,
		40.607029, 36.418282, 28.456367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170963, 36.997467, 27.953640>,  <39.935902, 36.602520, 28.381239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170963, 36.997467, 27.953640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436882, 36.704002, 28.009911>,  <40.596432, 36.527924, 28.043673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436882, 36.704002, 28.009911>,  <40.170963, 36.997467, 27.953640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436882, 36.704002, 28.009911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271665, 0.062013, -0.960392,
		0.695879, 0.676679, 0.240536,
		0.664793, -0.733662, 0.140677,
		40.636318, 36.483902, 28.052114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799244, 37.223190, 27.702734>,  <40.170963, 36.997467, 27.953640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799244, 37.223190, 27.702734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802589, 36.823658, 27.721798>,  <40.804596, 36.583939, 27.733236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802589, 36.823658, 27.721798>,  <40.799244, 37.223190, 27.702734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802589, 36.823658, 27.721798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133748, -0.046114, -0.989942,
		0.990980, 0.014651, 0.133206,
		0.008361, -0.998829, 0.047658,
		40.805099, 36.524010, 27.736095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.854958, 31.137094, 27.800680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136265, 31.386967, 27.936438>,  <34.305050, 31.536890, 28.017893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136265, 31.386967, 27.936438>,  <33.854958, 31.137094, 27.800680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136265, 31.386967, 27.936438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393997, -0.739849, 0.545335,
		0.591761, -0.249796, -0.766434,
		0.703267, 0.624681, 0.339395,
		34.347244, 31.574371, 28.038256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477139, 30.729729, 27.910849>,  <33.854958, 31.137094, 27.800680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477139, 30.729729, 27.910849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.553757, 31.058697, 28.125114>,  <34.599728, 31.256077, 28.253674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.553757, 31.058697, 28.125114>,  <34.477139, 30.729729, 27.910849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553757, 31.058697, 28.125114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198740, -0.566963, 0.799410,
		0.961152, -0.046666, -0.272048,
		0.191546, 0.822421, 0.535663,
		34.611221, 31.305424, 28.285812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185654, 30.738281, 28.113895>,  <34.477139, 30.729729, 27.910849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185654, 30.738281, 28.113895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.002110, 30.987938, 28.366844>,  <34.891983, 31.137732, 28.518614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.002110, 30.987938, 28.366844>,  <35.185654, 30.738281, 28.113895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002110, 30.987938, 28.366844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404472, -0.486968, 0.774122,
		0.791108, 0.610989, -0.028999,
		-0.458858, 0.624143, 0.632372,
		34.864452, 31.175180, 28.556557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659473, 30.833042, 28.615292>,  <35.185654, 30.738281, 28.113895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659473, 30.833042, 28.615292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329102, 30.992414, 28.774836>,  <35.130878, 31.088037, 28.870562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329102, 30.992414, 28.774836>,  <35.659473, 30.833042, 28.615292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329102, 30.992414, 28.774836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416374, -0.045881, 0.908035,
		0.380089, 0.916050, -0.128002,
		-0.825933, 0.398431, 0.398859,
		35.081322, 31.111944, 28.894493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866146, 31.401720, 28.962019>,  <35.659473, 30.833042, 28.615292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866146, 31.401720, 28.962019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.521103, 31.278996, 29.122900>,  <35.314075, 31.205360, 29.219429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.521103, 31.278996, 29.122900>,  <35.866146, 31.401720, 28.962019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521103, 31.278996, 29.122900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450971, -0.106182, 0.886200,
		-0.229191, 0.945828, 0.229957,
		-0.862611, -0.306813, 0.402205,
		35.262321, 31.186951, 29.243561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031776, 31.440012, 29.644739>,  <35.866146, 31.401720, 28.962019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031776, 31.440012, 29.644739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.688255, 31.238472, 29.681812>,  <35.482143, 31.117548, 29.704056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.688255, 31.238472, 29.681812>,  <36.031776, 31.440012, 29.644739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688255, 31.238472, 29.681812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192735, -0.150141, 0.969696,
		-0.474667, 0.850642, 0.226052,
		-0.858804, -0.503851, 0.092682,
		35.430614, 31.087317, 29.709618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659573, 31.771601, 30.209961>,  <36.031776, 31.440012, 29.644739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659573, 31.771601, 30.209961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513401, 31.401096, 30.173067>,  <35.425697, 31.178795, 30.150930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513401, 31.401096, 30.173067>,  <35.659573, 31.771601, 30.209961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513401, 31.401096, 30.173067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091101, -0.134202, 0.986758,
		-0.926372, 0.352183, 0.133423,
		-0.365425, -0.926260, -0.092237,
		35.403774, 31.123219, 30.145395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075504, 31.666391, 30.670147>,  <35.659573, 31.771601, 30.209961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075504, 31.666391, 30.670147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.233906, 31.305969, 30.599400>,  <35.328945, 31.089716, 30.556952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.233906, 31.305969, 30.599400>,  <35.075504, 31.666391, 30.670147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233906, 31.305969, 30.599400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232292, -0.088047, 0.968653,
		-0.888382, -0.424673, 0.174441,
		0.396002, -0.901055, -0.176868,
		35.352707, 31.035652, 30.546339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989403, 31.360285, 31.241179>,  <35.075504, 31.666391, 30.670147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989403, 31.360285, 31.241179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.251862, 31.112705, 31.068493>,  <35.409336, 30.964157, 30.964882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.251862, 31.112705, 31.068493>,  <34.989403, 31.360285, 31.241179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251862, 31.112705, 31.068493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450217, -0.138045, 0.882184,
		-0.605622, -0.773206, 0.188083,
		0.656146, -0.618948, -0.431713,
		35.448704, 30.927021, 30.938978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015862, 30.810358, 31.587385>,  <34.989403, 31.360285, 31.241179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015862, 30.810358, 31.587385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360424, 30.795881, 31.384733>,  <35.567162, 30.787195, 31.263142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360424, 30.795881, 31.384733>,  <35.015862, 30.810358, 31.587385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360424, 30.795881, 31.384733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507390, 0.015800, 0.861572,
		-0.023182, -0.999220, 0.031976,
		0.861405, -0.036197, -0.506628,
		35.618847, 30.785025, 31.232744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417103, 30.196814, 31.754129>,  <35.015862, 30.810358, 31.587385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417103, 30.196814, 31.754129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.685505, 30.464067, 31.625536>,  <35.846546, 30.624420, 31.548380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.685505, 30.464067, 31.625536>,  <35.417103, 30.196814, 31.754129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685505, 30.464067, 31.625536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600067, -0.234669, 0.764755,
		0.435517, -0.706064, -0.558389,
		0.671003, 0.668134, -0.321484,
		35.886806, 30.664507, 31.529091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083164, 29.885340, 31.693272>,  <35.417103, 30.196814, 31.754129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083164, 29.885340, 31.693272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141747, 30.279997, 31.721811>,  <36.176895, 30.516790, 31.738935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141747, 30.279997, 31.721811>,  <36.083164, 29.885340, 31.693272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141747, 30.279997, 31.721811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678251, -0.152656, 0.718798,
		0.720088, -0.056877, -0.691548,
		0.146452, 0.986641, 0.071349,
		36.185680, 30.575989, 31.743216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738499, 30.083670, 31.692602>,  <36.083164, 29.885340, 31.693272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738499, 30.083670, 31.692602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.612633, 30.427605, 31.853430>,  <36.537113, 30.633966, 31.949926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.612633, 30.427605, 31.853430>,  <36.738499, 30.083670, 31.692602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612633, 30.427605, 31.853430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698746, -0.076865, 0.711228,
		0.642447, 0.504746, -0.576622,
		-0.314668, 0.859839, 0.402071,
		36.518234, 30.685556, 31.974051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363049, 30.420872, 32.029160>,  <36.738499, 30.083670, 31.692602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363049, 30.420872, 32.029160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.064739, 30.624447, 32.201115>,  <36.885754, 30.746592, 32.304287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.064739, 30.624447, 32.201115>,  <37.363049, 30.420872, 32.029160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064739, 30.624447, 32.201115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537087, 0.077529, 0.839956,
		0.394155, 0.857306, -0.331162,
		-0.745774, 0.508936, 0.429890,
		36.841007, 30.777128, 32.330082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139927, 30.522690, 32.169865>,  <37.363049, 30.420872, 32.029160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139927, 30.522690, 32.169865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448677, 30.269411, 32.147007>,  <38.633926, 30.117443, 32.133293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448677, 30.269411, 32.147007>,  <38.139927, 30.522690, 32.169865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448677, 30.269411, 32.147007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034663, 0.131663, -0.990688,
		0.634825, 0.762709, 0.123576,
		0.771878, -0.633198, -0.057146,
		38.680241, 30.079453, 32.129864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591660, 30.894352, 31.879873>,  <38.139927, 30.522690, 32.169865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591660, 30.894352, 31.879873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.666317, 30.504934, 31.827147>,  <38.711113, 30.271284, 31.795509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.666317, 30.504934, 31.827147>,  <38.591660, 30.894352, 31.879873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666317, 30.504934, 31.827147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034212, 0.127654, -0.991228,
		0.981832, 0.189515, -0.009482,
		0.186643, -0.973544, -0.131818,
		38.722309, 30.212872, 31.787601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051514, 30.852943, 31.328012>,  <38.591660, 30.894352, 31.879873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051514, 30.852943, 31.328012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894089, 30.485226, 31.329115>,  <38.799633, 30.264595, 31.329777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894089, 30.485226, 31.329115>,  <39.051514, 30.852943, 31.328012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894089, 30.485226, 31.329115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044066, 0.015871, -0.998903,
		0.918243, -0.393248, -0.046756,
		-0.393558, -0.919296, 0.002755,
		38.776020, 30.209436, 31.329941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420582, 30.493505, 30.723684>,  <39.051514, 30.852943, 31.328012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420582, 30.493505, 30.723684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092537, 30.277197, 30.798500>,  <38.895710, 30.147411, 30.843390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092537, 30.277197, 30.798500>,  <39.420582, 30.493505, 30.723684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092537, 30.277197, 30.798500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163303, -0.092079, -0.982270,
		0.548405, -0.836115, -0.012794,
		-0.820112, -0.540771, 0.187037,
		38.846504, 30.114965, 30.854610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668407, 29.942474, 30.417858>,  <39.420582, 30.493505, 30.723684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668407, 29.942474, 30.417858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269405, 29.958515, 30.441130>,  <39.030006, 29.968140, 30.455091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269405, 29.958515, 30.441130>,  <39.668407, 29.942474, 30.417858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269405, 29.958515, 30.441130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055093, 0.074143, -0.995725,
		-0.044246, -0.996441, -0.071749,
		-0.997500, 0.040104, 0.058178,
		38.970154, 29.970545, 30.458582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468487, 29.481014, 29.822659>,  <39.668407, 29.942474, 30.417858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468487, 29.481014, 29.822659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141632, 29.689404, 29.921349>,  <38.945518, 29.814438, 29.980562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141632, 29.689404, 29.921349>,  <39.468487, 29.481014, 29.822659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141632, 29.689404, 29.921349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221817, 0.110878, -0.968764,
		-0.532058, -0.846340, 0.024959,
		-0.817136, 0.520974, 0.246725,
		38.896492, 29.845695, 29.995367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022709, 29.317480, 29.227562>,  <39.468487, 29.481014, 29.822659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022709, 29.317480, 29.227562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853535, 29.635120, 29.402161>,  <38.752029, 29.825705, 29.506920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853535, 29.635120, 29.402161>,  <39.022709, 29.317480, 29.227562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853535, 29.635120, 29.402161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382280, 0.280376, -0.880483,
		-0.821576, -0.539252, 0.184988,
		-0.422936, 0.794101, 0.436496,
		38.726654, 29.873350, 29.533110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294388, 29.235823, 28.955496>,  <39.022709, 29.317480, 29.227562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294388, 29.235823, 28.955496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.402214, 29.603565, 29.070124>,  <38.466911, 29.824211, 29.138901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.402214, 29.603565, 29.070124>,  <38.294388, 29.235823, 28.955496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402214, 29.603565, 29.070124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440336, 0.382329, -0.812360,
		-0.856410, 0.092797, 0.507888,
		0.269565, 0.919355, 0.286569,
		38.483082, 29.879372, 29.156094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646629, 29.628843, 28.987995>,  <38.294388, 29.235823, 28.955496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646629, 29.628843, 28.987995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943035, 29.897066, 28.973858>,  <38.120880, 30.057999, 28.965376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943035, 29.897066, 28.973858>,  <37.646629, 29.628843, 28.987995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943035, 29.897066, 28.973858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475546, 0.486899, -0.732656,
		-0.474076, 0.559720, 0.679681,
		0.741017, 0.670555, -0.035345,
		38.165340, 30.098232, 28.963255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297386, 30.314999, 28.984243>,  <37.646629, 29.628843, 28.987995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297386, 30.314999, 28.984243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666206, 30.373249, 28.840788>,  <37.887497, 30.408199, 28.754715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666206, 30.373249, 28.840788>,  <37.297386, 30.314999, 28.984243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666206, 30.373249, 28.840788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360610, 0.659895, -0.659166,
		0.140671, 0.737111, 0.660968,
		0.922048, 0.145626, -0.358638,
		37.942822, 30.416937, 28.733196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384457, 30.995491, 28.998569>,  <37.297386, 30.314999, 28.984243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384457, 30.995491, 28.998569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.616352, 30.875862, 28.695398>,  <37.755489, 30.804085, 28.513494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.616352, 30.875862, 28.695398>,  <37.384457, 30.995491, 28.998569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616352, 30.875862, 28.695398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388427, 0.716258, -0.579740,
		0.716258, 0.630499, 0.299075,
		0.579740, -0.299075, -0.757929,
		37.790276, 30.786140, 28.468019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533970, 31.622810, 28.621906>,  <37.384457, 30.995491, 28.998569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533970, 31.622810, 28.621906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633751, 31.337852, 28.359528>,  <37.693619, 31.166878, 28.202101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633751, 31.337852, 28.359528>,  <37.533970, 31.622810, 28.621906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633751, 31.337852, 28.359528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219366, 0.618183, -0.754803,
		0.943213, 0.332182, -0.002066,
		0.249455, -0.712394, -0.655948,
		37.708588, 31.124134, 28.162743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763298, 31.970119, 28.107435>,  <37.533970, 31.622810, 28.621906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763298, 31.970119, 28.107435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705345, 31.616875, 27.928944>,  <37.670574, 31.404928, 27.821848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705345, 31.616875, 27.928944>,  <37.763298, 31.970119, 28.107435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705345, 31.616875, 27.928944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322665, 0.468504, -0.822430,
		0.935358, 0.024823, -0.352829,
		-0.144887, -0.883112, -0.446229,
		37.661880, 31.351940, 27.795074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070629, 31.989790, 27.479837>,  <37.763298, 31.970119, 28.107435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070629, 31.989790, 27.479837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.802662, 31.694784, 27.445694>,  <37.641884, 31.517780, 27.425207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.802662, 31.694784, 27.445694>,  <38.070629, 31.989790, 27.479837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802662, 31.694784, 27.445694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266961, 0.346568, -0.899235,
		0.692783, -0.579622, -0.429058,
		-0.669914, -0.737515, -0.085360,
		37.601688, 31.473530, 27.420086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726295, 31.710056, 27.232237>,  <38.070629, 31.989790, 27.479837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726295, 31.710056, 27.232237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023296, 31.964281, 27.147625>,  <39.201496, 32.116817, 27.096859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023296, 31.964281, 27.147625>,  <38.726295, 31.710056, 27.232237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023296, 31.964281, 27.147625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472670, -0.273379, 0.837763,
		0.474624, -0.722027, -0.503397,
		0.742506, 0.635563, -0.211529,
		39.246048, 32.154949, 27.084166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400333, 31.333652, 27.107706>,  <38.726295, 31.710056, 27.232237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400333, 31.333652, 27.107706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.436756, 31.714262, 27.225220>,  <39.458611, 31.942627, 27.295729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.436756, 31.714262, 27.225220>,  <39.400333, 31.333652, 27.107706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436756, 31.714262, 27.225220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424949, -0.303931, 0.852669,
		0.900625, 0.047199, -0.432026,
		0.091061, 0.951524, 0.293785,
		39.464073, 31.999720, 27.313354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989300, 31.430582, 27.495298>,  <39.400333, 31.333652, 27.107706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989300, 31.430582, 27.495298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.812737, 31.769529, 27.613365>,  <39.706799, 31.972898, 27.684206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.812737, 31.769529, 27.613365>,  <39.989300, 31.430582, 27.495298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812737, 31.769529, 27.613365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466408, -0.064348, 0.882226,
		0.766563, 0.527093, -0.366815,
		-0.441412, 0.847368, 0.295167,
		39.680313, 32.023739, 27.701916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503128, 31.727880, 27.928539>,  <39.989300, 31.430582, 27.495298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503128, 31.727880, 27.928539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.169445, 31.921305, 28.034575>,  <39.969234, 32.037361, 28.098196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.169445, 31.921305, 28.034575>,  <40.503128, 31.727880, 27.928539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169445, 31.921305, 28.034575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248737, -0.099086, 0.963489,
		0.492174, 0.869684, -0.037622,
		-0.834203, 0.483562, 0.265090,
		39.919186, 32.066372, 28.114101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774174, 32.266750, 28.201542>,  <40.503128, 31.727880, 27.928539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774174, 32.266750, 28.201542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.402443, 32.241409, 28.347052>,  <40.179405, 32.226204, 28.434359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.402443, 32.241409, 28.347052>,  <40.774174, 32.266750, 28.201542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402443, 32.241409, 28.347052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339778, 0.238959, 0.909642,
		-0.144557, 0.968961, -0.200546,
		-0.929330, -0.063354, 0.363775,
		40.123646, 32.222404, 28.456184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707512, 32.885067, 28.601097>,  <40.774174, 32.266750, 28.201542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707512, 32.885067, 28.601097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416492, 32.648552, 28.740267>,  <40.241879, 32.506645, 28.823769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416492, 32.648552, 28.740267>,  <40.707512, 32.885067, 28.601097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416492, 32.648552, 28.740267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144996, 0.363157, 0.920376,
		-0.670555, 0.720070, -0.178482,
		-0.727552, -0.591284, 0.347925,
		40.198227, 32.471169, 28.844645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417419, 33.276085, 29.037731>,  <40.707512, 32.885067, 28.601097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417419, 33.276085, 29.037731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.278351, 32.915894, 29.142241>,  <40.194912, 32.699780, 29.204947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.278351, 32.915894, 29.142241>,  <40.417419, 33.276085, 29.037731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278351, 32.915894, 29.142241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133186, 0.228403, 0.964414,
		-0.928110, 0.370095, 0.040523,
		-0.347669, -0.900479, 0.261274,
		40.174049, 32.645748, 29.220623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983948, 33.384804, 29.608883>,  <40.417419, 33.276085, 29.037731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983948, 33.384804, 29.608883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.117046, 33.008244, 29.630955>,  <40.196903, 32.782307, 29.644197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.117046, 33.008244, 29.630955>,  <39.983948, 33.384804, 29.608883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117046, 33.008244, 29.630955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184797, 0.122473, 0.975116,
		-0.924734, -0.314265, 0.214720,
		0.332742, -0.941402, 0.055180,
		40.216869, 32.725822, 29.647509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702255, 33.211601, 30.147799>,  <39.983948, 33.384804, 29.608883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702255, 33.211601, 30.147799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.989254, 32.935349, 30.111500>,  <40.161453, 32.769596, 30.089720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.989254, 32.935349, 30.111500>,  <39.702255, 33.211601, 30.147799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989254, 32.935349, 30.111500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141004, 0.016423, 0.989873,
		-0.682143, -0.723025, 0.109165,
		0.717495, -0.690627, -0.090747,
		40.204502, 32.728161, 30.084276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649715, 32.640274, 30.692492>,  <39.702255, 33.211601, 30.147799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649715, 32.640274, 30.692492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.027683, 32.591972, 30.570803>,  <40.254463, 32.562992, 30.497789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.027683, 32.591972, 30.570803>,  <39.649715, 32.640274, 30.692492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027683, 32.591972, 30.570803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262200, -0.277088, 0.924377,
		-0.195920, -0.953226, -0.230163,
		0.944916, -0.120755, -0.304223,
		40.311157, 32.555744, 30.479536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898136, 32.137592, 31.088659>,  <39.649715, 32.640274, 30.692492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898136, 32.137592, 31.088659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.251911, 32.247238, 30.937593>,  <40.464176, 32.313026, 30.846954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.251911, 32.247238, 30.937593>,  <39.898136, 32.137592, 31.088659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251911, 32.247238, 30.937593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453275, -0.312178, 0.834917,
		0.110968, -0.909617, -0.400353,
		0.884437, 0.274119, -0.377665,
		40.517242, 32.329475, 30.824293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566177, 31.639854, 31.165871>,  <39.898136, 32.137592, 31.088659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566177, 31.639854, 31.165871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.695431, 32.017849, 31.145535>,  <40.772984, 32.244648, 31.133333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.695431, 32.017849, 31.145535>,  <40.566177, 31.639854, 31.165871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695431, 32.017849, 31.145535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488079, -0.120385, 0.864457,
		0.810781, -0.304146, -0.500129,
		0.323130, 0.944988, -0.050841,
		40.792370, 32.301346, 31.130281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309914, 31.579092, 31.285660>,  <40.566177, 31.639854, 31.165871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309914, 31.579092, 31.285660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.166409, 31.942249, 31.372393>,  <41.080307, 32.160145, 31.424433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.166409, 31.942249, 31.372393>,  <41.309914, 31.579092, 31.285660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166409, 31.942249, 31.372393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244417, -0.132820, 0.960531,
		0.900860, 0.397600, -0.174254,
		-0.358763, 0.907895, 0.216832,
		41.058781, 32.214619, 31.437443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838226, 31.969398, 31.633385>,  <41.309914, 31.579092, 31.285660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838226, 31.969398, 31.633385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.539852, 32.204983, 31.757778>,  <41.360828, 32.346333, 31.832415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.539852, 32.204983, 31.757778>,  <41.838226, 31.969398, 31.633385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539852, 32.204983, 31.757778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427576, 0.065472, 0.901605,
		0.510649, 0.805505, -0.300663,
		-0.745933, 0.588960, 0.310982,
		41.316071, 32.381672, 31.851072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.851078, 36.558956, 26.901867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.554363, 36.331352, 27.043839>,  <41.376335, 36.194790, 27.129021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.554363, 36.331352, 27.043839>,  <41.851078, 36.558956, 26.901867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554363, 36.331352, 27.043839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479184, 0.079444, -0.874112,
		0.469184, -0.818481, -0.331593,
		-0.741788, -0.569014, 0.354929,
		41.331825, 36.160648, 27.150316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734234, 36.142216, 26.399527>,  <41.851078, 36.558956, 26.901867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734234, 36.142216, 26.399527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.387497, 36.130714, 26.598631>,  <41.179455, 36.123814, 26.718094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.387497, 36.130714, 26.598631>,  <41.734234, 36.142216, 26.399527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387497, 36.130714, 26.598631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498312, 0.016639, -0.866838,
		0.016639, -0.999448, -0.028749,
		0.866838, 0.028749, -0.497760,
		41.127445, 36.122089, 26.747959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337559, 35.538223, 26.047253>,  <41.734234, 36.142216, 26.399527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337559, 35.538223, 26.047253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.062798, 35.744068, 26.252522>,  <40.897942, 35.867573, 26.375683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.062798, 35.744068, 26.252522>,  <41.337559, 35.538223, 26.047253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062798, 35.744068, 26.252522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619634, -0.045719, -0.783558,
		-0.379766, -0.856204, 0.350274,
		-0.686900, 0.514611, 0.513171,
		40.856728, 35.898453, 26.406473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689259, 35.240692, 26.004927>,  <41.337559, 35.538223, 26.047253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689259, 35.240692, 26.004927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.578873, 35.610950, 26.108484>,  <40.512642, 35.833103, 26.170618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.578873, 35.610950, 26.108484>,  <40.689259, 35.240692, 26.004927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578873, 35.610950, 26.108484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601918, 0.043563, -0.797369,
		-0.749357, -0.375882, 0.545140,
		-0.275969, 0.925643, 0.258894,
		40.496082, 35.888645, 26.186153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999786, 35.180763, 25.928930>,  <40.689259, 35.240692, 26.004927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999786, 35.180763, 25.928930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.078987, 35.571968, 25.902754>,  <40.126507, 35.806690, 25.887049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.078987, 35.571968, 25.902754>,  <39.999786, 35.180763, 25.928930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078987, 35.571968, 25.902754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478405, 0.038149, -0.877311,
		-0.855527, 0.205013, 0.475441,
		0.197997, 0.978016, -0.065442,
		40.138386, 35.865372, 25.883121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354645, 35.562317, 25.683460>,  <39.999786, 35.180763, 25.928930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354645, 35.562317, 25.683460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.638741, 35.831310, 25.600203>,  <39.809200, 35.992706, 25.550247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.638741, 35.831310, 25.600203>,  <39.354645, 35.562317, 25.683460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638741, 35.831310, 25.600203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332440, 0.059779, -0.941228,
		-0.620515, 0.737697, 0.266017,
		0.710243, 0.672480, -0.208147,
		39.851814, 36.033054, 25.537758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038513, 36.143539, 25.400734>,  <39.354645, 35.562317, 25.683460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038513, 36.143539, 25.400734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.414574, 36.210781, 25.282167>,  <39.640209, 36.251125, 25.211027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.414574, 36.210781, 25.282167>,  <39.038513, 36.143539, 25.400734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414574, 36.210781, 25.282167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337195, 0.333360, -0.880438,
		-0.049190, 0.927692, 0.370091,
		0.940149, 0.168101, -0.296416,
		39.696617, 36.261211, 25.193243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979332, 36.784504, 25.109591>,  <39.038513, 36.143539, 25.400734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979332, 36.784504, 25.109591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.322945, 36.647835, 24.957108>,  <39.529114, 36.565834, 24.865618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.322945, 36.647835, 24.957108>,  <38.979332, 36.784504, 25.109591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322945, 36.647835, 24.957108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258968, 0.352308, -0.899341,
		0.441582, 0.871286, 0.214163,
		0.859035, -0.341672, -0.381208,
		39.580654, 36.545334, 24.842745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249126, 37.292244, 24.718040>,  <38.979332, 36.784504, 25.109591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249126, 37.292244, 24.718040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.427620, 36.961159, 24.581942>,  <39.534718, 36.762508, 24.500282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.427620, 36.961159, 24.581942>,  <39.249126, 37.292244, 24.718040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427620, 36.961159, 24.581942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188937, 0.284492, -0.939876,
		0.874744, 0.483691, -0.029435,
		0.446235, -0.827712, -0.340245,
		39.561489, 36.712845, 24.479868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551720, 37.502232, 24.130390>,  <39.249126, 37.292244, 24.718040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551720, 37.502232, 24.130390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.563984, 37.103748, 24.097801>,  <39.571342, 36.864658, 24.078247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.563984, 37.103748, 24.097801>,  <39.551720, 37.502232, 24.130390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563984, 37.103748, 24.097801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175869, 0.074864, -0.981563,
		0.983936, 0.044422, -0.172906,
		0.030659, -0.996204, -0.081474,
		39.573181, 36.804886, 24.073359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886597, 37.330223, 23.483856>,  <39.551720, 37.502232, 24.130390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886597, 37.330223, 23.483856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.671497, 37.007591, 23.582045>,  <39.542439, 36.814011, 23.640957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.671497, 37.007591, 23.582045>,  <39.886597, 37.330223, 23.483856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671497, 37.007591, 23.582045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230619, -0.139324, -0.963018,
		0.810951, -0.574472, -0.111091,
		-0.537749, -0.806580, 0.245469,
		39.510174, 36.765617, 23.655685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115074, 36.667912, 23.242218>,  <39.886597, 37.330223, 23.483856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115074, 36.667912, 23.242218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.717228, 36.659023, 23.282713>,  <39.478519, 36.653690, 23.307011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.717228, 36.659023, 23.282713>,  <40.115074, 36.667912, 23.242218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717228, 36.659023, 23.282713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097513, -0.130503, -0.986641,
		0.035133, -0.991199, 0.127633,
		-0.994614, -0.022217, 0.101240,
		39.418842, 36.652359, 23.313086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741722, 36.048916, 23.061232>,  <40.115074, 36.667912, 23.242218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741722, 36.048916, 23.061232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.491714, 36.349289, 22.975960>,  <39.341709, 36.529514, 22.924797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.491714, 36.349289, 22.975960>,  <39.741722, 36.048916, 23.061232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491714, 36.349289, 22.975960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043862, -0.306449, -0.950876,
		-0.779374, -0.584968, 0.224475,
		-0.625022, 0.750934, -0.213181,
		39.304207, 36.574570, 22.912006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955803, 35.897163, 22.722927>,  <39.741722, 36.048916, 23.061232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955803, 35.897163, 22.722927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.147865, 36.209991, 22.564016>,  <39.263103, 36.397686, 22.468670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.147865, 36.209991, 22.564016>,  <38.955803, 35.897163, 22.722927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147865, 36.209991, 22.564016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052610, -0.426407, -0.903000,
		-0.875606, 0.454478, -0.163595,
		0.480151, 0.782066, -0.397275,
		39.291912, 36.444611, 22.444834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380154, 35.603130, 22.410547>,  <38.955803, 35.897163, 22.722927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380154, 35.603130, 22.410547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.339924, 35.237888, 22.252501>,  <38.315784, 35.018742, 22.157673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.339924, 35.237888, 22.252501>,  <38.380154, 35.603130, 22.410547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339924, 35.237888, 22.252501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164925, -0.376336, 0.911686,
		-0.981165, 0.156859, -0.112744,
		-0.100577, -0.913108, -0.395118,
		38.309750, 34.963955, 22.133965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901588, 35.316387, 22.783817>,  <38.380154, 35.603130, 22.410547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901588, 35.316387, 22.783817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.105423, 35.014797, 22.618000>,  <38.227722, 34.833843, 22.518509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.105423, 35.014797, 22.618000>,  <37.901588, 35.316387, 22.783817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105423, 35.014797, 22.618000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083765, -0.436031, 0.896025,
		-0.856335, -0.491323, -0.159037,
		0.509582, -0.753975, -0.414544,
		38.258297, 34.788605, 22.493637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657593, 34.673107, 23.157450>,  <37.901588, 35.316387, 22.783817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657593, 34.673107, 23.157450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998554, 34.556129, 22.984070>,  <38.203133, 34.485943, 22.880041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998554, 34.556129, 22.984070>,  <37.657593, 34.673107, 23.157450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998554, 34.556129, 22.984070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130761, -0.683409, 0.718229,
		-0.506263, -0.668903, -0.544304,
		0.852408, -0.292439, -0.433451,
		38.254276, 34.468399, 22.854034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604568, 33.917503, 23.160208>,  <37.657593, 34.673107, 23.157450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604568, 33.917503, 23.160208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.985191, 34.023800, 23.098331>,  <38.213566, 34.087578, 23.061205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.985191, 34.023800, 23.098331>,  <37.604568, 33.917503, 23.160208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985191, 34.023800, 23.098331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298545, -0.678012, 0.671692,
		0.073615, -0.685333, -0.724500,
		0.951553, 0.265742, -0.154690,
		38.270657, 34.103523, 23.051924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000572, 33.330906, 23.160776>,  <37.604568, 33.917503, 23.160208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000572, 33.330906, 23.160776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.269524, 33.613667, 23.248587>,  <38.430893, 33.783325, 23.301273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.269524, 33.613667, 23.248587>,  <38.000572, 33.330906, 23.160776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269524, 33.613667, 23.248587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384826, -0.587180, 0.712130,
		0.632310, -0.394342, -0.666843,
		0.672379, 0.706905, 0.219527,
		38.471237, 33.825737, 23.314445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697266, 32.945507, 23.258188>,  <38.000572, 33.330906, 23.160776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697266, 32.945507, 23.258188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714916, 33.292755, 23.455944>,  <38.725506, 33.501102, 23.574596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714916, 33.292755, 23.455944>,  <38.697266, 32.945507, 23.258188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714916, 33.292755, 23.455944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415156, -0.466051, 0.781307,
		0.908679, 0.170772, -0.380971,
		0.044127, 0.868120, 0.494388,
		38.728153, 33.553192, 23.604261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337505, 32.958637, 23.709730>,  <38.697266, 32.945507, 23.258188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337505, 32.958637, 23.709730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118130, 33.248600, 23.876448>,  <38.986504, 33.422577, 23.976479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118130, 33.248600, 23.876448>,  <39.337505, 32.958637, 23.709730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118130, 33.248600, 23.876448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280822, -0.309823, 0.908377,
		0.787625, 0.615235, -0.033651,
		-0.548440, 0.724911, 0.416796,
		38.953598, 33.466072, 24.001486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759724, 33.282185, 24.232969>,  <39.337505, 32.958637, 23.709730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759724, 33.282185, 24.232969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393326, 33.401203, 24.340614>,  <39.173489, 33.472614, 24.405201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.393326, 33.401203, 24.340614>,  <39.759724, 33.282185, 24.232969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393326, 33.401203, 24.340614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189740, -0.269734, 0.944056,
		0.353488, 0.915812, 0.190619,
		-0.915994, 0.297544, 0.269114,
		39.118526, 33.490467, 24.421349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815334, 33.777786, 24.813108>,  <39.759724, 33.282185, 24.232969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815334, 33.777786, 24.813108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.457664, 33.598728, 24.816248>,  <39.243061, 33.491295, 24.818132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.457664, 33.598728, 24.816248>,  <39.815334, 33.777786, 24.813108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457664, 33.598728, 24.816248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138387, -0.259669, 0.955731,
		-0.425789, 0.855679, 0.294139,
		-0.894177, -0.447645, 0.007850,
		39.189411, 33.464436, 24.818604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545860, 33.834576, 25.581337>,  <39.815334, 33.777786, 24.813108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545860, 33.834576, 25.581337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279247, 33.569378, 25.444996>,  <39.119282, 33.410259, 25.363192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279247, 33.569378, 25.444996>,  <39.545860, 33.834576, 25.581337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279247, 33.569378, 25.444996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070176, -0.510999, 0.856712,
		-0.742170, 0.547103, 0.387121,
		-0.666528, -0.662992, -0.340854,
		39.079288, 33.370480, 25.342739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937706, 33.928524, 26.087296>,  <39.545860, 33.834576, 25.581337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937706, 33.928524, 26.087296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.928902, 33.565063, 25.920506>,  <38.923618, 33.346989, 25.820431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.928902, 33.565063, 25.920506>,  <38.937706, 33.928524, 26.087296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928902, 33.565063, 25.920506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004303, -0.416986, 0.908903,
		-0.999748, 0.021802, 0.005269,
		-0.022013, -0.908651, -0.416975,
		38.922298, 33.292469, 25.795414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841797, 33.594368, 26.607452>,  <38.937706, 33.928524, 26.087296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841797, 33.594368, 26.607452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.915680, 33.280987, 26.370108>,  <38.960011, 33.092957, 26.227701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.915680, 33.280987, 26.370108>,  <38.841797, 33.594368, 26.607452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915680, 33.280987, 26.370108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239413, -0.549693, 0.800324,
		-0.953186, -0.289888, 0.086035,
		0.184712, -0.783455, -0.593363,
		38.971092, 33.045952, 26.192099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376026, 32.990997, 26.770430>,  <38.841797, 33.594368, 26.607452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376026, 32.990997, 26.770430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.718311, 32.862370, 26.608273>,  <38.923683, 32.785191, 26.510979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.718311, 32.862370, 26.608273>,  <38.376026, 32.990997, 26.770430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718311, 32.862370, 26.608273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266557, -0.397551, 0.878010,
		-0.443509, -0.859385, -0.254472,
		0.855714, -0.321574, -0.405392,
		38.975025, 32.765896, 26.486654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445866, 32.250416, 26.868490>,  <38.376026, 32.990997, 26.770430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445866, 32.250416, 26.868490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.820301, 32.362949, 26.784031>,  <39.044964, 32.430470, 26.733355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.820301, 32.362949, 26.784031>,  <38.445866, 32.250416, 26.868490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820301, 32.362949, 26.784031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323983, -0.455798, 0.829025,
		0.136991, -0.844452, -0.517816,
		0.936092, 0.281333, -0.211148,
		39.101128, 32.447350, 26.720686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148994, 31.639423, 26.793402>,  <38.445866, 32.250416, 26.868490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148994, 31.639423, 26.793402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.778400, 31.507677, 26.866217>,  <37.556042, 31.428629, 26.909906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.778400, 31.507677, 26.866217>,  <38.148994, 31.639423, 26.793402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778400, 31.507677, 26.866217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293285, 0.328841, -0.897690,
		0.235804, -0.885089, -0.401265,
		-0.926488, -0.329364, 0.182041,
		37.500454, 31.408867, 26.920828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842220, 31.462313, 26.008814>,  <38.148994, 31.639423, 26.793402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842220, 31.462313, 26.008814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555950, 31.548786, 26.274466>,  <37.384186, 31.600670, 26.433857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555950, 31.548786, 26.274466>,  <37.842220, 31.462313, 26.008814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555950, 31.548786, 26.274466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626877, 0.220423, -0.747288,
		-0.307941, -0.951145, -0.022231,
		-0.715680, 0.216185, 0.664128,
		37.341248, 31.613642, 26.473703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239628, 31.134987, 25.774775>,  <37.842220, 31.462313, 26.008814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239628, 31.134987, 25.774775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.091702, 31.424141, 26.008242>,  <37.002945, 31.597633, 26.148323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.091702, 31.424141, 26.008242>,  <37.239628, 31.134987, 25.774775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091702, 31.424141, 26.008242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565895, 0.322987, -0.758579,
		-0.736885, -0.610830, 0.289633,
		-0.369816, 0.722887, 0.583670,
		36.980759, 31.641006, 26.183342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597080, 31.152212, 25.581005>,  <37.239628, 31.134987, 25.774775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597080, 31.152212, 25.581005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.653580, 31.500769, 25.768930>,  <36.687481, 31.709902, 25.881685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.653580, 31.500769, 25.768930>,  <36.597080, 31.152212, 25.581005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653580, 31.500769, 25.768930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505736, 0.471489, -0.722446,
		-0.851046, -0.135556, 0.507292,
		0.141251, 0.871391, 0.469814,
		36.695953, 31.762186, 25.909874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891499, 31.498899, 25.740332>,  <36.597080, 31.152212, 25.581005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891499, 31.498899, 25.740332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.183006, 31.772619, 25.730257>,  <36.357910, 31.936852, 25.724213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.183006, 31.772619, 25.730257>,  <35.891499, 31.498899, 25.740332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183006, 31.772619, 25.730257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530977, 0.541492, -0.651805,
		-0.432391, 0.488388, 0.757968,
		0.728767, 0.684298, -0.025187,
		36.401638, 31.977909, 25.722700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561218, 32.185928, 25.644997>,  <35.891499, 31.498899, 25.740332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561218, 32.185928, 25.644997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.940392, 32.248600, 25.534086>,  <36.167896, 32.286201, 25.467539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.940392, 32.248600, 25.534086>,  <35.561218, 32.185928, 25.644997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940392, 32.248600, 25.534086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303928, 0.705204, -0.640559,
		0.095176, 0.691476, 0.716102,
		0.947929, 0.156678, -0.277277,
		36.224770, 32.295605, 25.450903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696068, 32.899734, 25.635874>,  <35.561218, 32.185928, 25.644997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696068, 32.899734, 25.635874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.994083, 32.774792, 25.400129>,  <36.172894, 32.699825, 25.258682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.994083, 32.774792, 25.400129>,  <35.696068, 32.899734, 25.635874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994083, 32.774792, 25.400129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186700, 0.750598, -0.633834,
		0.640358, 0.582265, 0.500908,
		0.745040, -0.312361, -0.589360,
		36.217594, 32.681084, 25.223322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468925, 33.540760, 26.028559>,  <35.696068, 32.899734, 25.635874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468925, 33.540760, 26.028559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.097767, 33.670204, 26.102615>,  <34.875072, 33.747871, 26.147049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.097767, 33.670204, 26.102615>,  <35.468925, 33.540760, 26.028559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097767, 33.670204, 26.102615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037682, -0.575446, 0.816971,
		0.370923, 0.751090, 0.546150,
		-0.927899, 0.323613, 0.185143,
		34.819397, 33.767288, 26.158157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505119, 33.592010, 26.771757>,  <35.468925, 33.540760, 26.028559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505119, 33.592010, 26.771757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121651, 33.595203, 26.657991>,  <34.891571, 33.597118, 26.589731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121651, 33.595203, 26.657991>,  <35.505119, 33.592010, 26.771757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121651, 33.595203, 26.657991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217302, -0.665821, 0.713766,
		-0.183671, 0.746069, 0.640037,
		-0.958668, 0.007983, -0.284414,
		34.834049, 33.597599, 26.572668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223522, 33.688740, 27.342510>,  <35.505119, 33.592010, 26.771757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223522, 33.688740, 27.342510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942451, 33.529785, 27.106430>,  <34.773811, 33.434414, 26.964783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942451, 33.529785, 27.106430>,  <35.223522, 33.688740, 27.342510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942451, 33.529785, 27.106430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253451, -0.635294, 0.729496,
		-0.664841, 0.662185, 0.345686,
		-0.702673, -0.397384, -0.590200,
		34.731651, 33.410568, 26.929371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653797, 33.582306, 27.736629>,  <35.223522, 33.688740, 27.342510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653797, 33.582306, 27.736629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.593594, 33.345341, 27.420048>,  <34.557472, 33.203163, 27.230099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.593594, 33.345341, 27.420048>,  <34.653797, 33.582306, 27.736629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593594, 33.345341, 27.420048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232055, -0.757036, 0.610776,
		-0.960988, 0.275587, -0.023532,
		-0.150507, -0.592409, -0.791454,
		34.548443, 33.167618, 27.182611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064510, 33.163471, 27.993261>,  <34.653797, 33.582306, 27.736629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064510, 33.163471, 27.993261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208076, 32.941143, 27.693331>,  <34.294216, 32.807747, 27.513372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208076, 32.941143, 27.693331>,  <34.064510, 33.163471, 27.993261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208076, 32.941143, 27.693331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178031, -0.829375, 0.529568,
		-0.916234, -0.056578, -0.396629,
		0.358916, -0.555820, -0.749829,
		34.315750, 32.774399, 27.468382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758896, 32.546551, 28.091221>,  <34.064510, 33.163471, 27.993261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758896, 32.546551, 28.091221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.056942, 32.439598, 27.846823>,  <34.235767, 32.375427, 27.700184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.056942, 32.439598, 27.846823>,  <33.758896, 32.546551, 28.091221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056942, 32.439598, 27.846823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021171, -0.906176, 0.422371,
		-0.666603, -0.327649, -0.669542,
		0.745113, -0.267379, -0.610996,
		34.280476, 32.359383, 27.663525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543682, 31.934708, 27.925322>,  <33.758896, 32.546551, 28.091221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543682, 31.934708, 27.925322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.936783, 31.935717, 27.851357>,  <34.172642, 31.936321, 27.806978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.936783, 31.935717, 27.851357>,  <33.543682, 31.934708, 27.925322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936783, 31.935717, 27.851357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101060, -0.844713, 0.525593,
		-0.154872, -0.535214, -0.830398,
		0.982752, 0.002520, -0.184911,
		34.231609, 31.936472, 27.795883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.121517, 36.697941, 24.021906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.478546, 36.517628, 24.017790>,  <36.692764, 36.409439, 24.015320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.478546, 36.517628, 24.017790>,  <36.121517, 36.697941, 24.021906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478546, 36.517628, 24.017790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053991, 0.084194, 0.994986,
		-0.447655, -0.888655, 0.099488,
		0.892575, -0.450782, -0.010290,
		36.746319, 36.382393, 24.014704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024387, 36.224461, 24.546921>,  <36.121517, 36.697941, 24.021906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024387, 36.224461, 24.546921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.418530, 36.239349, 24.480356>,  <36.655014, 36.248283, 24.440416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.418530, 36.239349, 24.480356>,  <36.024387, 36.224461, 24.546921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418530, 36.239349, 24.480356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166936, -0.011419, 0.985902,
		0.034798, -0.999242, -0.017465,
		0.985353, 0.037223, -0.166413,
		36.714134, 36.250519, 24.430433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279995, 35.573853, 24.843323>,  <36.024387, 36.224461, 24.546921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279995, 35.573853, 24.843323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.537704, 35.879723, 24.837912>,  <36.692329, 36.063244, 24.834665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.537704, 35.879723, 24.837912>,  <36.279995, 35.573853, 24.843323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537704, 35.879723, 24.837912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035854, 0.047869, 0.998210,
		0.763953, -0.642637, 0.058257,
		0.644275, 0.764674, -0.013529,
		36.730988, 36.109123, 24.833853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716270, 35.486382, 25.464603>,  <36.279995, 35.573853, 24.843323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716270, 35.486382, 25.464603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.822414, 35.857952, 25.361315>,  <36.886101, 36.080894, 25.299341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.822414, 35.857952, 25.361315>,  <36.716270, 35.486382, 25.464603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822414, 35.857952, 25.361315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186541, 0.213298, 0.959013,
		0.945931, -0.302656, -0.116681,
		0.265363, 0.928926, -0.258222,
		36.902023, 36.136631, 25.283848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400631, 35.547592, 25.641550>,  <36.716270, 35.486382, 25.464603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400631, 35.547592, 25.641550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.235142, 35.910900, 25.616671>,  <37.135849, 36.128887, 25.601744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.235142, 35.910900, 25.616671>,  <37.400631, 35.547592, 25.641550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235142, 35.910900, 25.616671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354827, 0.223788, 0.907754,
		0.838408, 0.353493, -0.414868,
		-0.413726, 0.908274, -0.062197,
		37.111023, 36.183384, 25.598011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944572, 36.004089, 25.624907>,  <37.400631, 35.547592, 25.641550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944572, 36.004089, 25.624907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.629349, 36.202663, 25.770515>,  <37.440212, 36.321808, 25.857882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.629349, 36.202663, 25.770515>,  <37.944572, 36.004089, 25.624907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629349, 36.202663, 25.770515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551828, 0.307596, 0.775158,
		0.272841, 0.811752, -0.516349,
		-0.788063, 0.496431, 0.364023,
		37.392929, 36.351593, 25.879723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191853, 36.676258, 25.963085>,  <37.944572, 36.004089, 25.624907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191853, 36.676258, 25.963085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.818214, 36.660427, 26.105013>,  <37.594032, 36.650928, 26.190170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.818214, 36.660427, 26.105013>,  <38.191853, 36.676258, 25.963085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818214, 36.660427, 26.105013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287445, 0.506095, 0.813169,
		-0.211754, 0.861569, -0.461366,
		-0.934096, -0.039574, 0.354821,
		37.537987, 36.648556, 26.211460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097046, 37.343670, 26.451223>,  <38.191853, 36.676258, 25.963085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097046, 37.343670, 26.451223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813942, 37.082016, 26.557940>,  <37.644077, 36.925022, 26.621969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813942, 37.082016, 26.557940>,  <38.097046, 37.343670, 26.451223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813942, 37.082016, 26.557940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034938, 0.344779, 0.938034,
		-0.705585, 0.673227, -0.221168,
		-0.707763, -0.654136, 0.266792,
		37.601612, 36.885777, 26.637978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615551, 37.709084, 26.825510>,  <38.097046, 37.343670, 26.451223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615551, 37.709084, 26.825510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.528645, 37.335827, 26.940079>,  <37.476501, 37.111874, 27.008820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.528645, 37.335827, 26.940079>,  <37.615551, 37.709084, 26.825510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528645, 37.335827, 26.940079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019175, 0.297454, 0.954543,
		-0.975924, 0.201899, -0.082521,
		-0.217267, -0.933144, 0.286421,
		37.463463, 37.055885, 27.026005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051125, 37.784931, 27.428465>,  <37.615551, 37.709084, 26.825510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051125, 37.784931, 27.428465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.240669, 37.434452, 27.463661>,  <37.354397, 37.224167, 27.484779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.240669, 37.434452, 27.463661>,  <37.051125, 37.784931, 27.428465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240669, 37.434452, 27.463661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128901, 0.167860, 0.977347,
		-0.871116, -0.451782, 0.192484,
		0.473858, -0.876194, 0.087990,
		37.382828, 37.171593, 27.490059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802814, 37.497517, 28.061251>,  <37.051125, 37.784931, 27.428465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802814, 37.497517, 28.061251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143650, 37.294491, 28.010136>,  <37.348152, 37.172676, 27.979467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143650, 37.294491, 28.010136>,  <36.802814, 37.497517, 28.061251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143650, 37.294491, 28.010136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023255, -0.207190, 0.978024,
		-0.522884, -0.836333, -0.164741,
		0.852087, -0.507562, -0.127786,
		37.399277, 37.142223, 27.971800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751633, 37.024475, 28.521021>,  <36.802814, 37.497517, 28.061251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751633, 37.024475, 28.521021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.144276, 37.032619, 28.445084>,  <37.379860, 37.037506, 28.399521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.144276, 37.032619, 28.445084>,  <36.751633, 37.024475, 28.521021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144276, 37.032619, 28.445084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190691, -0.154574, 0.969404,
		-0.009610, -0.987772, -0.155612,
		0.981603, 0.020358, -0.189844,
		37.438755, 37.038727, 28.388130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080421, 36.613865, 28.338476>,  <36.751633, 37.024475, 28.521021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080421, 36.613865, 28.338476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.806267, 36.862297, 28.490534>,  <35.641773, 37.011356, 28.581768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.806267, 36.862297, 28.490534>,  <36.080421, 36.613865, 28.338476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806267, 36.862297, 28.490534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023262, 0.540452, -0.841053,
		-0.727810, -0.567602, -0.384865,
		-0.685385, 0.621079, 0.380143,
		35.600651, 37.048622, 28.604576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562134, 36.580296, 27.797390>,  <36.080421, 36.613865, 28.338476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562134, 36.580296, 27.797390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.515560, 36.907482, 28.022736>,  <35.487617, 37.103794, 28.157942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.515560, 36.907482, 28.022736>,  <35.562134, 36.580296, 27.797390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515560, 36.907482, 28.022736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135899, 0.548764, -0.824857,
		-0.983857, -0.172603, 0.047265,
		-0.116435, 0.817964, 0.563362,
		35.480629, 37.152870, 28.191744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919285, 36.942387, 27.548983>,  <35.562134, 36.580296, 27.797390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919285, 36.942387, 27.548983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.140148, 37.218849, 27.735498>,  <35.272667, 37.384727, 27.847408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.140148, 37.218849, 27.735498>,  <34.919285, 36.942387, 27.548983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140148, 37.218849, 27.735498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135161, 0.626084, -0.767951,
		-0.822709, 0.361008, 0.439116,
		0.552161, 0.691152, 0.466291,
		35.305798, 37.426193, 27.875385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477859, 37.425945, 27.588524>,  <34.919285, 36.942387, 27.548983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477859, 37.425945, 27.588524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.841354, 37.589413, 27.622437>,  <35.059452, 37.687492, 27.642784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.841354, 37.589413, 27.622437>,  <34.477859, 37.425945, 27.588524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841354, 37.589413, 27.622437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151151, 0.511579, -0.845837,
		-0.389041, 0.755827, 0.526661,
		0.908736, 0.408671, 0.084782,
		35.113976, 37.712013, 27.647871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345005, 38.092609, 27.332455>,  <34.477859, 37.425945, 27.588524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345005, 38.092609, 27.332455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.744270, 38.081654, 27.310837>,  <34.983829, 38.075081, 27.297867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.744270, 38.081654, 27.310837>,  <34.345005, 38.092609, 27.332455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744270, 38.081654, 27.310837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041410, 0.342749, -0.938514,
		0.044226, 0.939028, 0.340985,
		0.998163, -0.027386, -0.054043,
		35.043720, 38.073437, 27.294624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534481, 38.802834, 27.170095>,  <34.345005, 38.092609, 27.332455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534481, 38.802834, 27.170095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.819008, 38.541817, 27.065622>,  <34.989723, 38.385208, 27.002937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.819008, 38.541817, 27.065622>,  <34.534481, 38.802834, 27.170095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819008, 38.541817, 27.065622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023363, 0.349442, -0.936667,
		0.702479, 0.672372, 0.233320,
		0.711320, -0.652538, -0.261184,
		35.032406, 38.346054, 26.987267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919746, 39.320518, 26.841764>,  <34.534481, 38.802834, 27.170095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919746, 39.320518, 26.841764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.002384, 38.950226, 26.715059>,  <35.051968, 38.728050, 26.639036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.002384, 38.950226, 26.715059>,  <34.919746, 39.320518, 26.841764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002384, 38.950226, 26.715059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058661, 0.311443, -0.948452,
		0.976667, 0.214525, 0.010038,
		0.206593, -0.925733, -0.316761,
		35.064362, 38.672504, 26.620031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247177, 39.440968, 26.239763>,  <34.919746, 39.320518, 26.841764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247177, 39.440968, 26.239763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.156048, 39.054790, 26.189135>,  <35.101372, 38.823086, 26.158758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.156048, 39.054790, 26.189135>,  <35.247177, 39.440968, 26.239763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156048, 39.054790, 26.189135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138328, 0.160763, -0.977252,
		0.963827, -0.205133, -0.170173,
		-0.227824, -0.965441, -0.126572,
		35.087700, 38.765160, 26.151163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692719, 39.176796, 25.651693>,  <35.247177, 39.440968, 26.239763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692719, 39.176796, 25.651693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.393875, 38.911846, 25.673889>,  <35.214569, 38.752876, 25.687206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.393875, 38.911846, 25.673889>,  <35.692719, 39.176796, 25.651693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393875, 38.911846, 25.673889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079826, 0.006534, -0.996787,
		0.659889, -0.749140, -0.057757,
		-0.747111, -0.662379, 0.055489,
		35.169743, 38.713131, 25.690536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902832, 38.670841, 25.200348>,  <35.692719, 39.176796, 25.651693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902832, 38.670841, 25.200348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.506660, 38.638214, 25.244881>,  <35.268959, 38.618637, 25.271601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.506660, 38.638214, 25.244881>,  <35.902832, 38.670841, 25.200348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506660, 38.638214, 25.244881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097082, -0.161626, -0.982065,
		0.098099, -0.983475, 0.152161,
		-0.990430, -0.081567, 0.111334,
		35.209530, 38.613743, 25.278280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698326, 38.164642, 24.722607>,  <35.902832, 38.670841, 25.200348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698326, 38.164642, 24.722607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.340778, 38.319862, 24.812418>,  <35.126251, 38.412994, 24.866304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.340778, 38.319862, 24.812418>,  <35.698326, 38.164642, 24.722607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340778, 38.319862, 24.812418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324970, -0.215801, -0.920774,
		-0.308854, -0.896017, 0.319002,
		-0.893870, 0.388050, 0.224528,
		35.072617, 38.436279, 24.879776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155674, 37.615631, 24.538282>,  <35.698326, 38.164642, 24.722607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155674, 37.615631, 24.538282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.994274, 37.981590, 24.543087>,  <34.897434, 38.201168, 24.545969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.994274, 37.981590, 24.543087>,  <35.155674, 37.615631, 24.538282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994274, 37.981590, 24.543087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506760, -0.212527, -0.835480,
		-0.761830, -0.343199, 0.549389,
		-0.403496, 0.914902, 0.012010,
		34.873226, 38.256062, 24.546690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476151, 37.491924, 24.412025>,  <35.155674, 37.615631, 24.538282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476151, 37.491924, 24.412025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.504120, 37.874458, 24.298515>,  <34.520901, 38.103981, 24.230410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.504120, 37.874458, 24.298515>,  <34.476151, 37.491924, 24.412025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504120, 37.874458, 24.298515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450167, -0.223609, -0.864493,
		-0.890203, 0.188194, 0.414877,
		0.069922, 0.956338, -0.283776,
		34.525097, 38.161358, 24.213383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741497, 36.840462, 24.964880>,  <34.476151, 37.491924, 24.412025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741497, 36.840462, 24.964880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.545849, 36.642109, 24.677864>,  <34.428459, 36.523098, 24.505653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.545849, 36.642109, 24.677864>,  <34.741497, 36.840462, 24.964880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545849, 36.642109, 24.677864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127821, -0.773030, 0.621359,
		-0.862802, 0.395634, 0.314717,
		-0.489116, -0.495882, -0.717542,
		34.399113, 36.493343, 24.462601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090389, 36.607113, 25.333042>,  <34.741497, 36.840462, 24.964880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090389, 36.607113, 25.333042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.201340, 36.383911, 25.020199>,  <34.267910, 36.249989, 24.832493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.201340, 36.383911, 25.020199>,  <34.090389, 36.607113, 25.333042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201340, 36.383911, 25.020199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071194, -0.823749, 0.562467,
		-0.958119, -0.100335, -0.268217,
		0.277378, -0.558006, -0.782107,
		34.284554, 36.216511, 24.785566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601761, 36.101799, 25.185963>,  <34.090389, 36.607113, 25.333042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601761, 36.101799, 25.185963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.923134, 35.943047, 25.008434>,  <34.115959, 35.847794, 24.901917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.923134, 35.943047, 25.008434>,  <33.601761, 36.101799, 25.185963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923134, 35.943047, 25.008434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062289, -0.797366, 0.600273,
		-0.592126, -0.454635, -0.665352,
		0.803434, -0.396882, -0.443822,
		34.164165, 35.823982, 24.875288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406887, 35.469917, 24.991980>,  <33.601761, 36.101799, 25.185963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406887, 35.469917, 24.991980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.806679, 35.459366, 24.999367>,  <34.046555, 35.453033, 25.003799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.806679, 35.459366, 24.999367>,  <33.406887, 35.469917, 24.991980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806679, 35.459366, 24.999367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032132, -0.854785, 0.517987,
		0.002122, -0.518312, -0.855189,
		0.999481, -0.026380, 0.018468,
		34.106522, 35.451450, 25.004908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591644, 34.758247, 24.976334>,  <33.406887, 35.469917, 24.991980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591644, 34.758247, 24.976334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.937077, 34.923008, 25.092655>,  <34.144337, 35.021862, 25.162449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.937077, 34.923008, 25.092655>,  <33.591644, 34.758247, 24.976334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937077, 34.923008, 25.092655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187739, -0.797963, 0.572721,
		0.467955, -0.439996, -0.766435,
		0.863581, 0.411897, 0.290806,
		34.196152, 35.046577, 25.179897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049763, 34.264439, 24.845133>,  <33.591644, 34.758247, 24.976334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049763, 34.264439, 24.845133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.222317, 34.506763, 25.112537>,  <34.325848, 34.652157, 25.272980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.222317, 34.506763, 25.112537>,  <34.049763, 34.264439, 24.845133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222317, 34.506763, 25.112537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225735, -0.789912, 0.570160,
		0.873471, -0.095051, -0.477507,
		0.431383, 0.605808, 0.668509,
		34.351730, 34.688507, 25.313089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592979, 33.962872, 24.918474>,  <34.049763, 34.264439, 24.845133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592979, 33.962872, 24.918474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.555202, 34.186638, 25.247869>,  <34.532536, 34.320896, 25.445507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.555202, 34.186638, 25.247869>,  <34.592979, 33.962872, 24.918474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555202, 34.186638, 25.247869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276375, -0.779938, 0.561528,
		0.956398, 0.280623, -0.080950,
		-0.094442, 0.559417, 0.823489,
		34.526871, 34.354462, 25.494917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199638, 33.843155, 25.326921>,  <34.592979, 33.962872, 24.918474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199638, 33.843155, 25.326921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.911896, 33.963737, 25.577250>,  <34.739250, 34.036087, 25.727448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.911896, 33.963737, 25.577250>,  <35.199638, 33.843155, 25.326921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911896, 33.963737, 25.577250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149212, -0.812839, 0.563052,
		0.678428, 0.498415, 0.539740,
		-0.719355, 0.301455, 0.625822,
		34.696091, 34.054173, 25.764996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935127, 33.561920, 25.279230>,  <35.199638, 33.843155, 25.326921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935127, 33.561920, 25.279230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.084343, 33.274342, 25.044640>,  <36.173870, 33.101795, 24.903885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.084343, 33.274342, 25.044640>,  <35.935127, 33.561920, 25.279230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084343, 33.274342, 25.044640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193721, 0.557820, -0.807037,
		0.907368, 0.414667, 0.068811,
		0.373036, -0.718949, -0.586478,
		36.196255, 33.058659, 24.868696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426239, 33.904175, 24.790596>,  <35.935127, 33.561920, 25.279230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426239, 33.904175, 24.790596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.393833, 33.558456, 24.592033>,  <36.374390, 33.351025, 24.472895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.393833, 33.558456, 24.592033>,  <36.426239, 33.904175, 24.790596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393833, 33.558456, 24.592033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060689, 0.501399, -0.863085,
		0.994864, -0.039796, -0.093074,
		-0.081014, -0.864300, -0.496408,
		36.369530, 33.299168, 24.443111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885933, 33.935249, 24.228388>,  <36.426239, 33.904175, 24.790596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885933, 33.935249, 24.228388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.610020, 33.666504, 24.120457>,  <36.444473, 33.505257, 24.055698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.610020, 33.666504, 24.120457>,  <36.885933, 33.935249, 24.228388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610020, 33.666504, 24.120457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016485, 0.387158, -0.921866,
		0.723831, -0.631437, -0.278130,
		-0.689780, -0.671861, -0.269828,
		36.403084, 33.464947, 24.039509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104618, 33.666824, 23.633934>,  <36.885933, 33.935249, 24.228388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104618, 33.666824, 23.633934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713326, 33.588017, 23.660006>,  <36.478550, 33.540733, 23.675648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713326, 33.588017, 23.660006>,  <37.104618, 33.666824, 23.633934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713326, 33.588017, 23.660006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112864, 0.241541, -0.963805,
		0.174143, -0.950180, -0.258519,
		-0.978231, -0.197017, 0.065178,
		36.419857, 33.528912, 23.679560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925446, 33.402634, 22.954140>,  <37.104618, 33.666824, 23.633934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925446, 33.402634, 22.954140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.573650, 33.528145, 23.097271>,  <36.362572, 33.603451, 23.183149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.573650, 33.528145, 23.097271>,  <36.925446, 33.402634, 22.954140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573650, 33.528145, 23.097271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218139, 0.402456, -0.889070,
		-0.422984, -0.859983, -0.285507,
		-0.879488, 0.313782, 0.357828,
		36.309803, 33.622280, 23.204618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552643, 33.158684, 22.515387>,  <36.925446, 33.402634, 22.954140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552643, 33.158684, 22.515387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.352444, 33.473797, 22.658998>,  <36.232323, 33.662865, 22.745167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.352444, 33.473797, 22.658998>,  <36.552643, 33.158684, 22.515387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352444, 33.473797, 22.658998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309631, 0.224396, -0.924000,
		-0.808473, -0.573629, 0.131611,
		-0.500500, 0.787779, 0.359031,
		36.202293, 33.710129, 22.766708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071106, 33.331528, 21.957512>,  <36.552643, 33.158684, 22.515387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071106, 33.331528, 21.957512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.038143, 33.637062, 22.213562>,  <36.018364, 33.820385, 22.367191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.038143, 33.637062, 22.213562>,  <36.071106, 33.331528, 21.957512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038143, 33.637062, 22.213562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452840, 0.543473, -0.706805,
		-0.887775, -0.348121, 0.301110,
		-0.082409, 0.763838, 0.640125,
		36.013420, 33.866215, 22.405600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296822, 33.521004, 22.056580>,  <36.071106, 33.331528, 21.957512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296822, 33.521004, 22.056580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.512901, 33.842106, 22.157591>,  <35.642551, 34.034767, 22.218199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.512901, 33.842106, 22.157591>,  <35.296822, 33.521004, 22.056580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512901, 33.842106, 22.157591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410847, 0.513469, -0.753362,
		-0.734428, 0.303217, 0.607185,
		0.540203, 0.802751, 0.252530,
		35.674961, 34.082932, 22.233351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800919, 34.102150, 22.014799>,  <35.296822, 33.521004, 22.056580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800919, 34.102150, 22.014799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.138737, 34.316113, 22.024769>,  <35.341427, 34.444492, 22.030750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.138737, 34.316113, 22.024769>,  <34.800919, 34.102150, 22.014799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138737, 34.316113, 22.024769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409215, 0.674708, -0.614257,
		-0.345388, 0.508567, 0.788712,
		0.844541, 0.534910, 0.024923,
		35.392097, 34.476585, 22.032246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.463409, 30.374096, 37.447479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.435123, 30.124456, 37.136223>,  <39.418152, 29.974672, 36.949471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.435123, 30.124456, 37.136223>,  <39.463409, 30.374096, 37.447479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435123, 30.124456, 37.136223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704210, -0.521253, 0.482062,
		-0.706462, 0.582063, -0.402635,
		-0.070716, -0.624098, -0.778140,
		39.413910, 29.937227, 36.902782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438953, 30.669989, 36.677212>,  <39.463409, 30.374096, 37.447479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438953, 30.669989, 36.677212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.788666, 30.569841, 36.510860>,  <39.998493, 30.509752, 36.411049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.788666, 30.569841, 36.510860>,  <39.438953, 30.669989, 36.677212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788666, 30.569841, 36.510860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457324, -0.137570, -0.878595,
		0.162760, 0.958327, -0.234774,
		0.874279, -0.250368, -0.415875,
		40.050949, 30.494730, 36.386097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475071, 31.004076, 36.025921>,  <39.438953, 30.669989, 36.677212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475071, 31.004076, 36.025921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.747490, 30.713388, 35.990028>,  <39.910942, 30.538975, 35.968494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.747490, 30.713388, 35.990028>,  <39.475071, 31.004076, 36.025921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747490, 30.713388, 35.990028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321544, -0.186720, -0.928302,
		0.657862, 0.661070, -0.360838,
		0.681048, -0.726720, -0.089727,
		39.951805, 30.495373, 35.963112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748440, 31.173376, 35.439877>,  <39.475071, 31.004076, 36.025921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748440, 31.173376, 35.439877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.865860, 30.792801, 35.476971>,  <39.936314, 30.564457, 35.499226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.865860, 30.792801, 35.476971>,  <39.748440, 31.173376, 35.439877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865860, 30.792801, 35.476971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251966, -0.170582, -0.952583,
		0.922140, 0.256265, -0.289803,
		0.293549, -0.951436, 0.092731,
		39.953926, 30.507370, 35.504791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137691, 30.971045, 34.794346>,  <39.748440, 31.173376, 35.439877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137691, 30.971045, 34.794346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.018356, 30.631008, 34.967937>,  <39.946754, 30.426987, 35.072094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.018356, 30.631008, 34.967937>,  <40.137691, 30.971045, 34.794346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018356, 30.631008, 34.967937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244626, -0.371397, -0.895669,
		0.922579, -0.373375, -0.097153,
		-0.298338, -0.850091, 0.433980,
		39.928856, 30.375980, 35.098133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522926, 30.425421, 34.470592>,  <40.137691, 30.971045, 34.794346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522926, 30.425421, 34.470592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.191349, 30.263851, 34.625351>,  <39.992401, 30.166910, 34.718208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.191349, 30.263851, 34.625351>,  <40.522926, 30.425421, 34.470592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191349, 30.263851, 34.625351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225228, -0.392110, -0.891921,
		0.511974, -0.826496, 0.234064,
		-0.828948, -0.403923, 0.386900,
		39.942665, 30.142673, 34.741421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413715, 29.744045, 34.193207>,  <40.522926, 30.425421, 34.470592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413715, 29.744045, 34.193207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.044125, 29.850824, 34.302761>,  <39.822372, 29.914892, 34.368492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.044125, 29.850824, 34.302761>,  <40.413715, 29.744045, 34.193207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044125, 29.850824, 34.302761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344670, -0.270843, -0.898803,
		-0.165751, -0.924870, 0.342259,
		-0.923975, 0.266944, 0.273882,
		39.766933, 29.930908, 34.384926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089577, 29.220057, 33.848137>,  <40.413715, 29.744045, 34.193207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089577, 29.220057, 33.848137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.819080, 29.505762, 33.920277>,  <39.656784, 29.677185, 33.963562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.819080, 29.505762, 33.920277>,  <40.089577, 29.220057, 33.848137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819080, 29.505762, 33.920277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389431, -0.138793, -0.910538,
		-0.625332, -0.685978, 0.372013,
		-0.676242, 0.714262, 0.180350,
		39.616207, 29.720041, 33.974380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362450, 28.859823, 33.710831>,  <40.089577, 29.220057, 33.848137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362450, 28.859823, 33.710831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282097, 29.251167, 33.690998>,  <39.233887, 29.485973, 33.679096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282097, 29.251167, 33.690998>,  <39.362450, 28.859823, 33.710831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282097, 29.251167, 33.690998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421071, -0.131936, -0.897381,
		-0.884504, -0.159389, 0.438462,
		-0.200881, 0.978360, -0.049583,
		39.221832, 29.544676, 33.676125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731007, 28.909357, 33.492889>,  <39.362450, 28.859823, 33.710831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731007, 28.909357, 33.492889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.882389, 29.266399, 33.394890>,  <38.973221, 29.480625, 33.336090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.882389, 29.266399, 33.394890>,  <38.731007, 28.909357, 33.492889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882389, 29.266399, 33.394890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213665, -0.173291, -0.961414,
		-0.900620, 0.416203, 0.125135,
		0.378459, 0.892606, -0.244997,
		38.995926, 29.534182, 33.321392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230286, 29.229080, 33.111759>,  <38.731007, 28.909357, 33.492889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230286, 29.229080, 33.111759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.541107, 29.457581, 33.006035>,  <38.727600, 29.594681, 32.942600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.541107, 29.457581, 33.006035>,  <38.230286, 29.229080, 33.111759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541107, 29.457581, 33.006035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287990, -0.050715, -0.956289,
		-0.559687, 0.819206, 0.125107,
		0.777053, 0.571252, -0.264308,
		38.774223, 29.628956, 32.926743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933151, 29.713236, 32.628876>,  <38.230286, 29.229080, 33.111759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933151, 29.713236, 32.628876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.330097, 29.724356, 32.580803>,  <38.568264, 29.731028, 32.551960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.330097, 29.724356, 32.580803>,  <37.933151, 29.713236, 32.628876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330097, 29.724356, 32.580803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120392, 0.005907, -0.992709,
		-0.026885, 0.999596, 0.009208,
		0.992362, 0.027797, -0.120185,
		38.627808, 29.732695, 32.544746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673820, 30.381289, 32.679829>,  <37.933151, 29.713236, 32.628876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673820, 30.381289, 32.679829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339352, 30.592113, 32.740528>,  <37.138672, 30.718609, 32.776947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339352, 30.592113, 32.740528>,  <37.673820, 30.381289, 32.679829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339352, 30.592113, 32.740528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102662, -0.121384, 0.987282,
		0.538777, 0.841114, 0.047389,
		-0.836169, 0.527060, 0.151749,
		37.088501, 30.750231, 32.786053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802044, 31.049675, 33.115101>,  <37.673820, 30.381289, 32.679829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802044, 31.049675, 33.115101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.418770, 30.950169, 33.171665>,  <37.188805, 30.890465, 33.205605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.418770, 30.950169, 33.171665>,  <37.802044, 31.049675, 33.115101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418770, 30.950169, 33.171665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133929, 0.046833, 0.989884,
		-0.252874, 0.967430, -0.011558,
		-0.958185, -0.248767, 0.141410,
		37.131313, 30.875538, 33.214088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507111, 31.534115, 33.653538>,  <37.802044, 31.049675, 33.115101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507111, 31.534115, 33.653538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.255470, 31.223410, 33.641769>,  <37.104485, 31.036985, 33.634708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.255470, 31.223410, 33.641769>,  <37.507111, 31.534115, 33.653538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255470, 31.223410, 33.641769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185051, 0.112895, 0.976223,
		-0.754974, 0.619590, -0.214764,
		-0.629103, -0.776765, -0.029423,
		37.066738, 30.990379, 33.632942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102825, 31.779295, 34.072342>,  <37.507111, 31.534115, 33.653538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102825, 31.779295, 34.072342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.014500, 31.389193, 34.067982>,  <36.961506, 31.155130, 34.065365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.014500, 31.389193, 34.067982>,  <37.102825, 31.779295, 34.072342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014500, 31.389193, 34.067982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165961, 0.026554, 0.985775,
		-0.961092, 0.219482, -0.167717,
		-0.220813, -0.975255, -0.010905,
		36.948257, 31.096617, 34.064709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510044, 31.713039, 34.485443>,  <37.102825, 31.779295, 34.072342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510044, 31.713039, 34.485443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.659084, 31.341940, 34.493904>,  <36.748508, 31.119280, 34.498981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.659084, 31.341940, 34.493904>,  <36.510044, 31.713039, 34.485443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659084, 31.341940, 34.493904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055511, 0.045031, 0.997442,
		-0.926330, -0.370474, 0.068279,
		0.372601, -0.927751, 0.021149,
		36.770866, 31.063614, 34.500248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025143, 31.262148, 34.818058>,  <36.510044, 31.713039, 34.485443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025143, 31.262148, 34.818058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378765, 31.082863, 34.871063>,  <36.590939, 30.975292, 34.902866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378765, 31.082863, 34.871063>,  <36.025143, 31.262148, 34.818058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378765, 31.082863, 34.871063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177202, -0.059065, 0.982401,
		-0.432496, -0.891974, -0.131640,
		0.884051, -0.448211, 0.132515,
		36.643982, 30.948400, 34.910816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816673, 30.704771, 35.258862>,  <36.025143, 31.262148, 34.818058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816673, 30.704771, 35.258862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.214100, 30.742039, 35.284615>,  <36.452557, 30.764399, 35.300068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.214100, 30.742039, 35.284615>,  <35.816673, 30.704771, 35.258862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214100, 30.742039, 35.284615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048881, -0.160021, 0.985903,
		0.102159, -0.982707, -0.154437,
		0.993567, 0.093169, 0.064384,
		36.512169, 30.769989, 35.303928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065350, 30.110346, 35.451355>,  <35.816673, 30.704771, 35.258862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065350, 30.110346, 35.451355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365612, 30.350140, 35.562447>,  <36.545769, 30.494015, 35.629101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365612, 30.350140, 35.562447>,  <36.065350, 30.110346, 35.451355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365612, 30.350140, 35.562447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207058, -0.185731, 0.960537,
		0.627409, -0.778540, -0.015293,
		0.750657, 0.599483, 0.277732,
		36.590809, 30.529984, 35.645767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438282, 29.717079, 36.045559>,  <36.065350, 30.110346, 35.451355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438282, 29.717079, 36.045559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520679, 30.108212, 36.060619>,  <36.570118, 30.342890, 36.069656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520679, 30.108212, 36.060619>,  <36.438282, 29.717079, 36.045559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520679, 30.108212, 36.060619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140482, -0.008529, 0.990047,
		0.968417, -0.209231, 0.135610,
		0.205992, 0.977829, 0.037653,
		36.582478, 30.401560, 36.071915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893719, 29.847775, 36.622684>,  <36.438282, 29.717079, 36.045559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893719, 29.847775, 36.622684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.773575, 30.223513, 36.556461>,  <36.701488, 30.448956, 36.516727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.773575, 30.223513, 36.556461>,  <36.893719, 29.847775, 36.622684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773575, 30.223513, 36.556461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118767, 0.135392, 0.983648,
		0.946403, 0.315111, 0.070898,
		-0.300359, 0.939348, -0.165560,
		36.683468, 30.505318, 36.506794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256237, 30.280582, 37.061802>,  <36.893719, 29.847775, 36.622684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256237, 30.280582, 37.061802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.923252, 30.485863, 36.978256>,  <36.723461, 30.609032, 36.928127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.923252, 30.485863, 36.978256>,  <37.256237, 30.280582, 37.061802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923252, 30.485863, 36.978256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185912, 0.096389, 0.977827,
		0.521954, 0.852839, 0.015170,
		-0.832466, 0.513201, -0.208863,
		36.673512, 30.639824, 36.915596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212551, 30.875265, 37.485535>,  <37.256237, 30.280582, 37.061802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212551, 30.875265, 37.485535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.831856, 30.830711, 37.371147>,  <36.603439, 30.803980, 37.302513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.831856, 30.830711, 37.371147>,  <37.212551, 30.875265, 37.485535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831856, 30.830711, 37.371147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297217, 0.102343, 0.949309,
		-0.076470, 0.988493, -0.130509,
		-0.951743, -0.111383, -0.285971,
		36.546333, 30.797297, 37.285355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777721, 31.451628, 37.764965>,  <37.212551, 30.875265, 37.485535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777721, 31.451628, 37.764965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.527157, 31.145771, 37.704399>,  <36.376816, 30.962257, 37.668060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.527157, 31.145771, 37.704399>,  <36.777721, 31.451628, 37.764965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527157, 31.145771, 37.704399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380319, 0.130258, 0.915637,
		-0.680412, 0.631153, -0.372404,
		-0.626416, -0.764642, -0.151410,
		36.339233, 30.916378, 37.658978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246357, 31.791729, 37.992802>,  <36.777721, 31.451628, 37.764965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246357, 31.791729, 37.992802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.172977, 31.398613, 37.984116>,  <36.128948, 31.162745, 37.978905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.172977, 31.398613, 37.984116>,  <36.246357, 31.791729, 37.992802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172977, 31.398613, 37.984116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423850, 0.059152, 0.903798,
		-0.886959, 0.175007, -0.427407,
		-0.183453, -0.982789, -0.021711,
		36.117943, 31.103777, 37.977604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013088, 32.497883, 38.183628>,  <36.246357, 31.791729, 37.992802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013088, 32.497883, 38.183628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105385, 32.804794, 38.422977>,  <36.160763, 32.988941, 38.566586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105385, 32.804794, 38.422977>,  <36.013088, 32.497883, 38.183628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105385, 32.804794, 38.422977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066289, 0.601140, -0.796390,
		-0.970755, 0.223424, 0.087844,
		0.230739, 0.767276, 0.598370,
		36.174606, 33.034977, 38.602489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533951, 33.071854, 38.118717>,  <36.013088, 32.497883, 38.183628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533951, 33.071854, 38.118717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889915, 33.209435, 38.238552>,  <36.103493, 33.291985, 38.310455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889915, 33.209435, 38.238552>,  <35.533951, 33.071854, 38.118717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889915, 33.209435, 38.238552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022807, 0.622429, -0.782344,
		-0.455564, 0.703049, 0.546062,
		0.889911, 0.343954, 0.299590,
		36.156887, 33.312622, 38.328430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477245, 33.799633, 38.269951>,  <35.533951, 33.071854, 38.118717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477245, 33.799633, 38.269951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.859669, 33.715385, 38.188377>,  <36.089123, 33.664837, 38.139435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.859669, 33.715385, 38.188377>,  <35.477245, 33.799633, 38.269951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859669, 33.715385, 38.188377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038236, 0.600086, -0.799021,
		0.290666, 0.771710, 0.565665,
		0.956060, -0.210620, -0.203932,
		36.146488, 33.652199, 38.127197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706917, 34.462303, 37.979706>,  <35.477245, 33.799633, 38.269951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706917, 34.462303, 37.979706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980495, 34.201939, 37.847935>,  <36.144642, 34.045719, 37.768871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980495, 34.201939, 37.847935>,  <35.706917, 34.462303, 37.979706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980495, 34.201939, 37.847935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045233, 0.488529, -0.871375,
		0.728124, 0.581077, 0.363573,
		0.683951, -0.650914, -0.329425,
		36.185680, 34.006664, 37.749107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169861, 34.848949, 37.693867>,  <35.706917, 34.462303, 37.979706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169861, 34.848949, 37.693867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.198330, 34.483688, 37.533321>,  <36.215412, 34.264534, 37.436993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.198330, 34.483688, 37.533321>,  <36.169861, 34.848949, 37.693867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198330, 34.483688, 37.533321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077929, 0.396066, -0.914910,
		0.994415, 0.096394, -0.042972,
		0.071172, -0.913149, -0.401366,
		36.219681, 34.209743, 37.412910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755741, 34.931202, 37.264980>,  <36.169861, 34.848949, 37.693867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755741, 34.931202, 37.264980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561264, 34.602184, 37.146973>,  <36.444576, 34.404774, 37.076168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561264, 34.602184, 37.146973>,  <36.755741, 34.931202, 37.264980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561264, 34.602184, 37.146973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137203, 0.261560, -0.955386,
		0.863013, -0.504979, -0.014313,
		-0.486193, -0.822547, -0.295015,
		36.415405, 34.355419, 37.058468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228722, 34.664658, 36.760632>,  <36.755741, 34.931202, 37.264980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228722, 34.664658, 36.760632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849442, 34.546066, 36.714996>,  <36.621872, 34.474911, 36.687614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849442, 34.546066, 36.714996>,  <37.228722, 34.664658, 36.760632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849442, 34.546066, 36.714996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020176, 0.302207, -0.953029,
		0.317040, -0.905961, -0.280570,
		-0.948197, -0.296487, -0.114091,
		36.564980, 34.457123, 36.680771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195728, 34.245441, 36.202278>,  <37.228722, 34.664658, 36.760632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195728, 34.245441, 36.202278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818497, 34.372269, 36.242428>,  <36.592159, 34.448364, 36.266518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818497, 34.372269, 36.242428>,  <37.195728, 34.245441, 36.202278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818497, 34.372269, 36.242428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021299, 0.243618, -0.969637,
		-0.331899, -0.916578, -0.222997,
		-0.943075, 0.317072, 0.100379,
		36.535576, 34.467392, 36.272541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763824, 33.905552, 35.652061>,  <37.195728, 34.245441, 36.202278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763824, 33.905552, 35.652061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561665, 34.232132, 35.763767>,  <36.440369, 34.428078, 35.830791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561665, 34.232132, 35.763767>,  <36.763824, 33.905552, 35.652061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561665, 34.232132, 35.763767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260477, 0.164193, -0.951416,
		-0.822634, -0.553585, 0.129683,
		-0.505397, 0.816446, 0.279267,
		36.410046, 34.477066, 35.847546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090508, 33.866772, 35.288174>,  <36.763824, 33.905552, 35.652061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090508, 33.866772, 35.288174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.096466, 34.245762, 35.415966>,  <36.100040, 34.473156, 35.492641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.096466, 34.245762, 35.415966>,  <36.090508, 33.866772, 35.288174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096466, 34.245762, 35.415966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422387, 0.295570, -0.856871,
		-0.906293, -0.122181, 0.404604,
		0.014895, 0.947476, 0.319481,
		36.100933, 34.530006, 35.511810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399376, 34.229103, 35.200809>,  <36.090508, 33.866772, 35.288174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399376, 34.229103, 35.200809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675995, 34.516628, 35.229321>,  <35.841965, 34.689144, 35.246426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675995, 34.516628, 35.229321>,  <35.399376, 34.229103, 35.200809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675995, 34.516628, 35.229321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288978, 0.365740, -0.884718,
		-0.662012, 0.591225, 0.460645,
		0.691543, 0.718810, 0.071273,
		35.883457, 34.732273, 35.250702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108677, 34.786221, 35.018883>,  <35.399376, 34.229103, 35.200809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108677, 34.786221, 35.018883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484787, 34.910923, 34.964203>,  <35.710453, 34.985744, 34.931396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484787, 34.910923, 34.964203>,  <35.108677, 34.786221, 35.018883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484787, 34.910923, 34.964203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273105, 0.451172, -0.849622,
		-0.203199, 0.836214, 0.509369,
		0.940279, 0.311753, -0.136696,
		35.766872, 35.004448, 34.923195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080090, 35.445728, 34.645859>,  <35.108677, 34.786221, 35.018883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080090, 35.445728, 34.645859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455971, 35.321888, 34.587734>,  <35.681499, 35.247585, 34.552860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455971, 35.321888, 34.587734>,  <35.080090, 35.445728, 34.645859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455971, 35.321888, 34.587734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037461, 0.515491, -0.856076,
		0.339945, 0.799010, 0.496004,
		0.939699, -0.309600, -0.145307,
		35.737881, 35.229008, 34.544144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437103, 36.010357, 34.299431>,  <35.080090, 35.445728, 34.645859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437103, 36.010357, 34.299431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660885, 35.691036, 34.210228>,  <35.795155, 35.499443, 34.156708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660885, 35.691036, 34.210228>,  <35.437103, 36.010357, 34.299431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660885, 35.691036, 34.210228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069605, 0.313350, -0.947083,
		0.825937, 0.514323, 0.230869,
		0.559450, -0.798300, -0.223008,
		35.828720, 35.451546, 34.143326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887794, 36.281933, 33.866547>,  <35.437103, 36.010357, 34.299431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887794, 36.281933, 33.866547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908764, 35.889042, 33.794449>,  <35.921345, 35.653309, 33.751190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.908764, 35.889042, 33.794449>,  <35.887794, 36.281933, 33.866547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908764, 35.889042, 33.794449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108717, 0.185036, -0.976700,
		0.992689, 0.031607, 0.116484,
		0.052424, -0.982223, -0.180247,
		35.924492, 35.594376, 33.740376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428905, 36.124737, 33.441433>,  <35.887794, 36.281933, 33.866547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428905, 36.124737, 33.441433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.236725, 35.782009, 33.366573>,  <36.121418, 35.576370, 33.321659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.236725, 35.782009, 33.366573>,  <36.428905, 36.124737, 33.441433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236725, 35.782009, 33.366573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029319, 0.197580, -0.979848,
		0.876532, -0.476254, -0.069806,
		-0.480449, -0.856822, -0.187149,
		36.092590, 35.524963, 33.310429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814556, 35.801929, 32.910244>,  <36.428905, 36.124737, 33.441433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814556, 35.801929, 32.910244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.450909, 35.635963, 32.895546>,  <36.232719, 35.536385, 32.886726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.450909, 35.635963, 32.895546>,  <36.814556, 35.801929, 32.910244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450909, 35.635963, 32.895546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031219, 0.155838, -0.987289,
		0.415371, -0.896413, -0.154628,
		-0.909116, -0.414919, -0.036745,
		36.178173, 35.511486, 32.884521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781773, 35.429604, 32.235130>,  <36.814556, 35.801929, 32.910244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781773, 35.429604, 32.235130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.403515, 35.490036, 32.350327>,  <36.176559, 35.526295, 32.419445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.403515, 35.490036, 32.350327>,  <36.781773, 35.429604, 32.235130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403515, 35.490036, 32.350327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244354, 0.254287, -0.935750,
		-0.214604, -0.955256, -0.203548,
		-0.945640, 0.151078, 0.287992,
		36.119823, 35.535358, 32.436726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303585, 35.088398, 31.763794>,  <36.781773, 35.429604, 32.235130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303585, 35.088398, 31.763794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057449, 35.358059, 31.927193>,  <35.909767, 35.519855, 32.025230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057449, 35.358059, 31.927193>,  <36.303585, 35.088398, 31.763794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057449, 35.358059, 31.927193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376456, 0.203971, -0.903702,
		-0.692557, -0.709866, 0.128278,
		-0.615342, 0.674156, 0.408495,
		35.872849, 35.560307, 32.049740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656818, 34.988831, 31.419142>,  <36.303585, 35.088398, 31.763794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656818, 34.988831, 31.419142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.612087, 35.344276, 31.597069>,  <35.585247, 35.557545, 31.703825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.612087, 35.344276, 31.597069>,  <35.656818, 34.988831, 31.419142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612087, 35.344276, 31.597069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600195, 0.296358, -0.742926,
		-0.791998, -0.350059, 0.500198,
		-0.111831, 0.888612, 0.444818,
		35.578537, 35.610859, 31.730515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908760, 35.229839, 31.402128>,  <35.656818, 34.988831, 31.419142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908760, 35.229839, 31.402128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107250, 35.572300, 31.459753>,  <35.226345, 35.777779, 31.494328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107250, 35.572300, 31.459753>,  <34.908760, 35.229839, 31.402128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107250, 35.572300, 31.459753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410787, 0.377723, -0.829807,
		-0.764860, 0.352595, 0.539135,
		0.496230, 0.856155, 0.144064,
		35.256119, 35.829147, 31.502972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391357, 35.733994, 31.251442>,  <34.908760, 35.229839, 31.402128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391357, 35.733994, 31.251442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.752060, 35.900177, 31.203712>,  <34.968479, 35.999886, 31.175076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.752060, 35.900177, 31.203712>,  <34.391357, 35.733994, 31.251442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752060, 35.900177, 31.203712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335061, 0.497429, -0.800187,
		-0.273089, 0.761551, 0.587761,
		0.901752, 0.415458, -0.119324,
		35.022587, 36.024815, 31.167915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197311, 36.397491, 31.014610>,  <34.391357, 35.733994, 31.251442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197311, 36.397491, 31.014610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590057, 36.365276, 30.945953>,  <34.825703, 36.345947, 30.904758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590057, 36.365276, 30.945953>,  <34.197311, 36.397491, 31.014610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590057, 36.365276, 30.945953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139010, 0.309835, -0.940573,
		0.128932, 0.947373, 0.293020,
		0.981862, -0.080537, -0.171642,
		34.884617, 36.341114, 30.894461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430336, 37.076153, 30.768429>,  <34.197311, 36.397491, 31.014610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430336, 37.076153, 30.768429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703293, 36.803654, 30.662418>,  <34.867069, 36.640156, 30.598812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703293, 36.803654, 30.662418>,  <34.430336, 37.076153, 30.768429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703293, 36.803654, 30.662418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143389, 0.480270, -0.865321,
		0.716781, 0.552490, 0.425418,
		0.682396, -0.681246, -0.265028,
		34.908012, 36.599281, 30.582911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000980, 37.427814, 30.579550>,  <34.430336, 37.076153, 30.768429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000980, 37.427814, 30.579550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053696, 37.084583, 30.381021>,  <35.085323, 36.878643, 30.261904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053696, 37.084583, 30.381021>,  <35.000980, 37.427814, 30.579550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053696, 37.084583, 30.381021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149348, 0.512160, -0.845806,
		0.979963, 0.037344, 0.195649,
		0.131790, -0.858078, -0.496320,
		35.093231, 36.827160, 30.232126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528679, 37.566841, 30.222975>,  <35.000980, 37.427814, 30.579550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528679, 37.566841, 30.222975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408485, 37.232948, 30.038399>,  <35.336369, 37.032612, 29.927652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408485, 37.232948, 30.038399>,  <35.528679, 37.566841, 30.222975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408485, 37.232948, 30.038399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368402, 0.344677, -0.863410,
		0.879765, -0.429441, 0.203946,
		-0.300488, -0.834732, -0.461442,
		35.318340, 36.982529, 29.899965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118313, 37.220665, 29.793303>,  <35.528679, 37.566841, 30.222975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118313, 37.220665, 29.793303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.775417, 37.105274, 29.622694>,  <35.569679, 37.036041, 29.520329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.775417, 37.105274, 29.622694>,  <36.118313, 37.220665, 29.793303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775417, 37.105274, 29.622694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317417, 0.356173, -0.878856,
		0.405446, -0.888776, -0.213758,
		-0.857240, -0.288478, -0.426521,
		35.518246, 37.018730, 29.494738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378094, 36.880238, 29.101784>,  <36.118313, 37.220665, 29.793303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378094, 36.880238, 29.101784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990402, 36.978695, 29.101086>,  <35.757786, 37.037769, 29.100668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990402, 36.978695, 29.101086>,  <36.378094, 36.880238, 29.101784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990402, 36.978695, 29.101086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083592, 0.322470, -0.942882,
		-0.231526, -0.914016, -0.333124,
		-0.969231, 0.246148, -0.001744,
		35.699635, 37.052540, 29.100563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970596, 36.466530, 28.951708>,  <36.378094, 36.880238, 29.101784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970596, 36.466530, 28.951708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314552, 36.643078, 28.849119>,  <37.520927, 36.749004, 28.787565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314552, 36.643078, 28.849119>,  <36.970596, 36.466530, 28.951708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314552, 36.643078, 28.849119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303409, -0.037858, 0.952108,
		0.410520, -0.896528, -0.166469,
		0.859893, 0.441367, -0.256473,
		37.572521, 36.775490, 28.772177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461628, 36.091003, 29.292355>,  <36.970596, 36.466530, 28.951708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461628, 36.091003, 29.292355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623043, 36.446156, 29.203964>,  <37.719894, 36.659245, 29.150930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623043, 36.446156, 29.203964>,  <37.461628, 36.091003, 29.292355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623043, 36.446156, 29.203964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382840, 0.055506, 0.922146,
		0.831017, -0.456721, -0.317516,
		0.403540, 0.887877, -0.220977,
		37.744106, 36.712517, 29.137671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239681, 36.072571, 29.457911>,  <37.461628, 36.091003, 29.292355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239681, 36.072571, 29.457911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108036, 36.448822, 29.491159>,  <38.029049, 36.674572, 29.511108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108036, 36.448822, 29.491159>,  <38.239681, 36.072571, 29.457911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108036, 36.448822, 29.491159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447622, 0.077896, 0.890824,
		0.831456, 0.330389, -0.446681,
		-0.329113, 0.940625, 0.083122,
		38.009300, 36.731010, 29.516096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709103, 36.378414, 29.919981>,  <38.239681, 36.072571, 29.457911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709103, 36.378414, 29.919981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.422844, 36.657799, 29.919249>,  <38.251087, 36.825428, 29.918808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.422844, 36.657799, 29.919249>,  <38.709103, 36.378414, 29.919981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422844, 36.657799, 29.919249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244107, 0.252570, 0.936280,
		0.654418, 0.669597, -0.351250,
		-0.715646, 0.698461, -0.001834,
		38.208149, 36.867336, 29.918699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033432, 36.909695, 30.134527>,  <38.709103, 36.378414, 29.919981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033432, 36.909695, 30.134527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.650715, 36.985428, 30.222797>,  <38.421085, 37.030869, 30.275761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.650715, 36.985428, 30.222797>,  <39.033432, 36.909695, 30.134527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650715, 36.985428, 30.222797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246747, 0.127190, 0.960697,
		0.153824, 0.973640, -0.168413,
		-0.956794, 0.189334, 0.220678,
		38.363678, 37.042229, 30.289001>
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
