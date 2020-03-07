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
	<36.170704, 53.219894, 50.381630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176422, 53.172874, 49.984444>,  <36.179852, 53.144661, 49.746132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176422, 53.172874, 49.984444>,  <36.170704, 53.219894, 50.381630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176422, 53.172874, 49.984444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909449, 0.414259, -0.035948,
		0.415570, -0.902535, 0.112832,
		0.014297, -0.117554, -0.992964,
		36.180710, 53.137608, 49.686554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865402, 52.912689, 50.243702>,  <36.170704, 53.219894, 50.381630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865402, 52.912689, 50.243702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730721, 53.109055, 49.922295>,  <36.649910, 53.226871, 49.729450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730721, 53.109055, 49.922295>,  <36.865402, 52.912689, 50.243702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730721, 53.109055, 49.922295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897467, 0.425528, -0.116097,
		0.284925, -0.760219, -0.583854,
		-0.336705, 0.490911, -0.803515,
		36.629707, 53.256329, 49.681240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210827, 53.551254, 50.405106>,  <36.865402, 52.912689, 50.243702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210827, 53.551254, 50.405106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306686, 53.164753, 50.442871>,  <37.364204, 52.932850, 50.465530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306686, 53.164753, 50.442871>,  <37.210827, 53.551254, 50.405106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306686, 53.164753, 50.442871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315736, -0.169528, -0.933580,
		0.918083, 0.193927, -0.345710,
		0.239653, -0.966257, 0.094411,
		37.378582, 52.874874, 50.471195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557888, 53.300945, 49.783215>,  <37.210827, 53.551254, 50.405106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557888, 53.300945, 49.783215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433029, 52.954151, 49.938602>,  <37.358112, 52.746075, 50.031834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433029, 52.954151, 49.938602>,  <37.557888, 53.300945, 49.783215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433029, 52.954151, 49.938602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242412, -0.322681, -0.914939,
		0.918587, -0.379765, -0.109443,
		-0.312146, -0.866981, 0.388470,
		37.339386, 52.694057, 50.055145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875801, 52.703636, 49.370434>,  <37.557888, 53.300945, 49.783215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875801, 52.703636, 49.370434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518288, 52.598328, 49.515678>,  <37.303780, 52.535145, 49.602825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518288, 52.598328, 49.515678>,  <37.875801, 52.703636, 49.370434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518288, 52.598328, 49.515678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208410, -0.473096, -0.856006,
		0.397145, -0.840756, 0.367976,
		-0.893780, -0.263268, 0.363109,
		37.250153, 52.519348, 49.624611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815979, 52.023491, 49.303329>,  <37.875801, 52.703636, 49.370434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815979, 52.023491, 49.303329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469418, 52.223198, 49.299679>,  <37.261482, 52.343021, 49.297489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469418, 52.223198, 49.299679>,  <37.815979, 52.023491, 49.303329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469418, 52.223198, 49.299679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248652, -0.447200, -0.859177,
		-0.433021, -0.742133, 0.511598,
		-0.866409, 0.499251, -0.009114,
		37.209499, 52.372978, 49.296940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320808, 51.493881, 49.091888>,  <37.815979, 52.023491, 49.303329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320808, 51.493881, 49.091888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173885, 51.851799, 48.990356>,  <37.085732, 52.066551, 48.929436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173885, 51.851799, 48.990356>,  <37.320808, 51.493881, 49.091888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173885, 51.851799, 48.990356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279181, -0.366389, -0.887590,
		-0.887211, -0.255153, 0.384387,
		-0.367307, 0.894794, -0.253831,
		37.063694, 52.120235, 48.914207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988220, 51.049728, 49.260044>,  <37.320808, 51.493881, 49.091888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988220, 51.049728, 49.260044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387550, 51.034569, 49.242607>,  <38.627148, 51.025471, 49.232143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387550, 51.034569, 49.242607>,  <37.988220, 51.049728, 49.260044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387550, 51.034569, 49.242607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020390, -0.474897, 0.879805,
		-0.054050, -0.879225, -0.473331,
		0.998330, -0.037902, -0.043596,
		38.687050, 51.023197, 49.229527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329388, 50.364952, 49.470230>,  <37.988220, 51.049728, 49.260044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329388, 50.364952, 49.470230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543331, 50.694004, 49.547386>,  <38.671700, 50.891434, 49.593681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543331, 50.694004, 49.547386>,  <38.329388, 50.364952, 49.470230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543331, 50.694004, 49.547386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148770, -0.316409, 0.936885,
		0.831740, -0.472407, -0.291617,
		0.534861, 0.822628, 0.192891,
		38.703789, 50.940792, 49.605255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023708, 50.137379, 49.754433>,  <38.329388, 50.364952, 49.470230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023708, 50.137379, 49.754433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928402, 50.503593, 49.884064>,  <38.871220, 50.723320, 49.961845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928402, 50.503593, 49.884064>,  <39.023708, 50.137379, 49.754433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928402, 50.503593, 49.884064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271130, -0.257722, 0.927398,
		0.932588, 0.308832, -0.186823,
		-0.238262, 0.915534, 0.324082,
		38.856922, 50.778252, 49.981289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561764, 50.611004, 50.086884>,  <39.023708, 50.137379, 49.754433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561764, 50.611004, 50.086884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179634, 50.622341, 50.204559>,  <38.950356, 50.629143, 50.275166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179634, 50.622341, 50.204559>,  <39.561764, 50.611004, 50.086884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179634, 50.622341, 50.204559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262473, -0.376222, 0.888575,
		0.135867, 0.926096, 0.351975,
		-0.955326, 0.028344, 0.294191,
		38.893036, 50.630844, 50.292816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925770, 50.167061, 49.771900>,  <39.561764, 50.611004, 50.086884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925770, 50.167061, 49.771900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296700, 50.253387, 49.894211>,  <40.519257, 50.305183, 49.967598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296700, 50.253387, 49.894211>,  <39.925770, 50.167061, 49.771900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296700, 50.253387, 49.894211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359348, 0.285030, 0.888610,
		0.104618, -0.933907, 0.341866,
		0.927321, 0.215814, 0.305778,
		40.574894, 50.318130, 49.985943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224739, 49.721729, 50.375168>,  <39.925770, 50.167061, 49.771900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224739, 49.721729, 50.375168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374310, 50.092644, 50.382339>,  <40.464050, 50.315193, 50.386642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374310, 50.092644, 50.382339>,  <40.224739, 49.721729, 50.375168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374310, 50.092644, 50.382339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374517, 0.133284, 0.917591,
		0.848480, -0.349822, 0.397122,
		0.373923, 0.927287, 0.017925,
		40.486488, 50.370831, 50.387718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672268, 49.761772, 51.014412>,  <40.224739, 49.721729, 50.375168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672268, 49.761772, 51.014412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521179, 50.110283, 50.889069>,  <40.430527, 50.319389, 50.813862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521179, 50.110283, 50.889069>,  <40.672268, 49.761772, 51.014412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521179, 50.110283, 50.889069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501081, 0.092242, 0.860470,
		0.778616, 0.482038, 0.401741,
		-0.377722, 0.871281, -0.313362,
		40.407864, 50.371666, 50.795059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850765, 50.295258, 51.596268>,  <40.672268, 49.761772, 51.014412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850765, 50.295258, 51.596268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509037, 50.352966, 51.396538>,  <40.304001, 50.387592, 51.276699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509037, 50.352966, 51.396538>,  <40.850765, 50.295258, 51.596268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509037, 50.352966, 51.396538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491799, 0.086406, 0.866411,
		0.168140, 0.985759, -0.002868,
		-0.854320, 0.144268, -0.499323,
		40.252743, 50.396248, 51.246742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521225, 50.419971, 51.263988>,  <40.850765, 50.295258, 51.596268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521225, 50.419971, 51.263988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480991, 50.507381, 50.875736>,  <41.456852, 50.559826, 50.642784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480991, 50.507381, 50.875736>,  <41.521225, 50.419971, 51.263988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480991, 50.507381, 50.875736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768845, -0.602124, -0.215230,
		-0.631475, -0.767916, -0.107447,
		-0.100582, 0.218522, -0.970635,
		41.450817, 50.572937, 50.584545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479000, 49.819271, 50.881435>,  <41.521225, 50.419971, 51.263988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479000, 49.819271, 50.881435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631588, 50.115417, 50.660042>,  <41.723141, 50.293106, 50.527206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631588, 50.115417, 50.660042>,  <41.479000, 49.819271, 50.881435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631588, 50.115417, 50.660042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870887, -0.488583, -0.053313,
		-0.309892, -0.461682, -0.831153,
		0.381473, 0.740362, -0.553481,
		41.746029, 50.337524, 50.493996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275883, 49.904720, 50.880165>,  <41.479000, 49.819271, 50.881435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275883, 49.904720, 50.880165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171799, 50.086487, 50.539391>,  <42.109348, 50.195549, 50.334927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171799, 50.086487, 50.539391>,  <42.275883, 49.904720, 50.880165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171799, 50.086487, 50.539391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870596, -0.271150, -0.410537,
		-0.417559, -0.848516, -0.325061,
		-0.260207, 0.454420, -0.851936,
		42.093739, 50.222813, 50.283810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429802, 49.460716, 50.271465>,  <42.275883, 49.904720, 50.880165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429802, 49.460716, 50.271465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452209, 49.845825, 50.165688>,  <42.465656, 50.076889, 50.102222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452209, 49.845825, 50.165688>,  <42.429802, 49.460716, 50.271465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452209, 49.845825, 50.165688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973182, -0.111840, -0.201020,
		-0.223112, -0.246086, -0.943219,
		0.056021, 0.962774, -0.264440,
		42.469017, 50.134659, 50.086357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845009, 49.429993, 49.588356>,  <42.429802, 49.460716, 50.271465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845009, 49.429993, 49.588356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849152, 49.792294, 49.757828>,  <42.851635, 50.009674, 49.859509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849152, 49.792294, 49.757828>,  <42.845009, 49.429993, 49.588356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849152, 49.792294, 49.757828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990521, 0.048745, -0.128418,
		-0.136968, 0.420990, -0.896665,
		0.010355, 0.905755, 0.423676,
		42.852257, 50.064018, 49.884930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013741, 48.910831, 50.102654>,  <42.845009, 49.429993, 49.588356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013741, 48.910831, 50.102654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257320, 48.613747, 50.214050>,  <43.403469, 48.435497, 50.280888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257320, 48.613747, 50.214050>,  <43.013741, 48.910831, 50.102654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257320, 48.613747, 50.214050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792573, 0.583752, -0.176242,
		-0.031672, 0.328048, 0.944130,
		0.608954, -0.742710, 0.278491,
		43.440006, 48.390934, 50.297596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542183, 49.074471, 50.636292>,  <43.013741, 48.910831, 50.102654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542183, 49.074471, 50.636292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685577, 48.777615, 50.409763>,  <43.771614, 48.599503, 50.273846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685577, 48.777615, 50.409763>,  <43.542183, 49.074471, 50.636292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685577, 48.777615, 50.409763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818668, 0.541455, -0.191338,
		0.448636, -0.395036, 0.801668,
		0.358482, -0.742141, -0.566319,
		43.793121, 48.554974, 50.239868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070896, 49.212521, 51.175625>,  <43.542183, 49.074471, 50.636292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070896, 49.212521, 51.175625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304127, 49.536861, 51.155472>,  <44.444065, 49.731468, 51.143379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304127, 49.536861, 51.155472>,  <44.070896, 49.212521, 51.175625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.304127, 49.536861, 51.155472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761683, 0.524035, -0.381086,
		-0.282605, 0.260575, 0.923166,
		0.583073, 0.810856, -0.050381,
		44.479050, 49.780117, 51.140358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644611, 49.699295, 51.607643>,  <44.070896, 49.212521, 51.175625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644611, 49.699295, 51.607643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876656, 49.814835, 51.303001>,  <44.015881, 49.884159, 51.120216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.876656, 49.814835, 51.303001>,  <43.644611, 49.699295, 51.607643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876656, 49.814835, 51.303001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800128, 0.377186, -0.466397,
		0.152550, 0.879942, 0.449922,
		0.580106, 0.288847, -0.761606,
		44.050686, 49.901489, 51.074520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917641, 50.305702, 51.781677>,  <43.644611, 49.699295, 51.607643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917641, 50.305702, 51.781677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012043, 50.590950, 52.045723>,  <44.068684, 50.762100, 52.204151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012043, 50.590950, 52.045723>,  <43.917641, 50.305702, 51.781677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012043, 50.590950, 52.045723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925328, 0.042531, -0.376775,
		-0.296762, 0.699747, -0.649835,
		0.236009, 0.713124, 0.660117,
		44.082848, 50.804886, 52.243759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262985, 50.882812, 51.442127>,  <43.917641, 50.305702, 51.781677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262985, 50.882812, 51.442127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409763, 50.872498, 51.814079>,  <44.497829, 50.866310, 52.037251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409763, 50.872498, 51.814079>,  <44.262985, 50.882812, 51.442127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409763, 50.872498, 51.814079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927477, -0.066861, -0.367852,
		0.071659, 0.997429, -0.000617,
		0.366948, -0.025788, 0.929884,
		44.519848, 50.864761, 52.093044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697300, 51.477432, 51.641594>,  <44.262985, 50.882812, 51.442127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697300, 51.477432, 51.641594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804188, 51.146709, 51.839577>,  <44.868320, 50.948277, 51.958366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.804188, 51.146709, 51.839577>,  <44.697300, 51.477432, 51.641594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.804188, 51.146709, 51.839577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902209, 0.034213, -0.429939,
		0.338541, 0.561448, 0.755093,
		0.267223, -0.826805, 0.494961,
		44.884354, 50.898666, 51.988064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353539, 51.666748, 52.080463>,  <44.697300, 51.477432, 51.641594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353539, 51.666748, 52.080463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312866, 51.288628, 51.956482>,  <45.288464, 51.061756, 51.882095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312866, 51.288628, 51.956482>,  <45.353539, 51.666748, 52.080463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312866, 51.288628, 51.956482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899930, 0.045388, -0.433665,
		0.424011, -0.323029, 0.846089,
		-0.101684, -0.945300, -0.309949,
		45.282360, 51.005039, 51.863499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843998, 51.187401, 52.382515>,  <45.353539, 51.666748, 52.080463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843998, 51.187401, 52.382515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723122, 51.026314, 52.036915>,  <45.650597, 50.929661, 51.829552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723122, 51.026314, 52.036915>,  <45.843998, 51.187401, 52.382515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723122, 51.026314, 52.036915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935145, 0.050568, -0.350639,
		0.184898, -0.913929, 0.361314,
		-0.302188, -0.402713, -0.864005,
		45.632465, 50.905499, 51.777714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127960, 50.549412, 52.265759>,  <45.843998, 51.187401, 52.382515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127960, 50.549412, 52.265759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106255, 50.736134, 51.912682>,  <46.093231, 50.848167, 51.700836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106255, 50.736134, 51.912682>,  <46.127960, 50.549412, 52.265759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106255, 50.736134, 51.912682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997677, 0.061804, -0.028651,
		0.041180, -0.882198, -0.469074,
		-0.054266, 0.466805, -0.882694,
		46.089973, 50.876175, 51.647873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649849, 50.273819, 51.832329>,  <46.127960, 50.549412, 52.265759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649849, 50.273819, 51.832329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595512, 50.636368, 51.672310>,  <46.562908, 50.853897, 51.576298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595512, 50.636368, 51.672310>,  <46.649849, 50.273819, 51.832329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.595512, 50.636368, 51.672310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986619, 0.087012, -0.137884,
		-0.090165, -0.413425, -0.906063,
		-0.135843, 0.906371, -0.400047,
		46.554760, 50.908279, 51.552296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.086048, 50.343327, 51.275436>,  <46.649849, 50.273819, 51.832329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.086048, 50.343327, 51.275436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.008259, 50.717247, 51.394314>,  <46.961586, 50.941601, 51.465641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.008259, 50.717247, 51.394314>,  <47.086048, 50.343327, 51.275436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.008259, 50.717247, 51.394314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937169, 0.266529, -0.225115,
		-0.289649, 0.234743, -0.927900,
		-0.194469, 0.934804, 0.297194,
		46.949917, 50.997688, 51.483471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.653976, 50.724949, 51.104156>,  <47.086048, 50.343327, 51.275436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.653976, 50.724949, 51.104156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462578, 51.056278, 51.220718>,  <47.347736, 51.255077, 51.290657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462578, 51.056278, 51.220718>,  <47.653976, 50.724949, 51.104156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.462578, 51.056278, 51.220718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810630, 0.544266, -0.215994,
		-0.337515, 0.132868, -0.931896,
		-0.478501, 0.828324, 0.291404,
		47.319027, 51.304775, 51.308140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.455582, 51.109474, 50.453720>,  <47.653976, 50.724949, 51.104156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.455582, 51.109474, 50.453720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.564373, 51.263386, 50.806534>,  <47.629646, 51.355732, 51.018223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.564373, 51.263386, 50.806534>,  <47.455582, 51.109474, 50.453720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.564373, 51.263386, 50.806534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822475, 0.382881, -0.420638,
		-0.499564, 0.839851, -0.212333,
		0.271975, 0.384775, 0.882031,
		47.645966, 51.378819, 51.071144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.667389, 51.901119, 50.514580>,  <47.455582, 51.109474, 50.453720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.667389, 51.901119, 50.514580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.857140, 51.637886, 50.748466>,  <47.970989, 51.479946, 50.888798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.857140, 51.637886, 50.748466>,  <47.667389, 51.901119, 50.514580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.857140, 51.637886, 50.748466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863448, 0.218397, -0.454709,
		0.171538, 0.720573, 0.671825,
		0.474376, -0.658086, 0.584714,
		47.999451, 51.440460, 50.923882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.310879, 52.202080, 50.760174>,  <47.667389, 51.901119, 50.514580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.310879, 52.202080, 50.760174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.333237, 51.803276, 50.781532>,  <48.346653, 51.563995, 50.794350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.333237, 51.803276, 50.781532>,  <48.310879, 52.202080, 50.760174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.333237, 51.803276, 50.781532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883718, 0.024514, -0.467378,
		0.464670, 0.073318, 0.882443,
		0.055899, -0.997007, 0.053401,
		48.350006, 51.504173, 50.797554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.823647, 51.986641, 51.153702>,  <48.310879, 52.202080, 50.760174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.823647, 51.986641, 51.153702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.765182, 51.714458, 50.866478>,  <48.730103, 51.551147, 50.694141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.765182, 51.714458, 50.866478>,  <48.823647, 51.986641, 51.153702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.765182, 51.714458, 50.866478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958639, 0.081779, -0.272624,
		0.244232, -0.728209, 0.640361,
		-0.146159, -0.680458, -0.718063,
		48.721336, 51.510323, 50.651058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.323952, 51.329163, 51.202461>,  <48.823647, 51.986641, 51.153702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.323952, 51.329163, 51.202461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.235382, 51.505768, 50.854660>,  <49.182240, 51.611732, 50.645981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.235382, 51.505768, 50.854660>,  <49.323952, 51.329163, 51.202461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.235382, 51.505768, 50.854660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975168, 0.096351, -0.199411,
		-0.004265, -0.892067, -0.451883,
		-0.221428, 0.441512, -0.869504,
		49.168953, 51.638222, 50.593807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.836826, 51.057915, 50.658180>,  <49.323952, 51.329163, 51.202461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.836826, 51.057915, 50.658180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.713562, 51.421272, 50.545139>,  <49.639603, 51.639286, 50.477314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.713562, 51.421272, 50.545139>,  <49.836826, 51.057915, 50.658180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.713562, 51.421272, 50.545139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946248, 0.261994, -0.189669,
		-0.098254, -0.325860, -0.940298,
		-0.308158, 0.908391, -0.282603,
		49.621113, 51.693790, 50.460358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.167934, 51.538094, 50.091511>,  <49.836826, 51.057915, 50.658180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.167934, 51.538094, 50.091511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.256966, 51.247536, 50.351604>,  <50.310383, 51.073200, 50.507660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.256966, 51.247536, 50.351604>,  <50.167934, 51.538094, 50.091511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.256966, 51.247536, 50.351604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859638, 0.460841, 0.220563,
		-0.459873, 0.509876, 0.727010,
		0.222576, -0.726396, 0.650237,
		50.323738, 51.029617, 50.546677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.639584, 51.810383, 50.656979>,  <50.167934, 51.538094, 50.091511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.639584, 51.810383, 50.656979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.642967, 51.414726, 50.715660>,  <50.644997, 51.177330, 50.750870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.642967, 51.414726, 50.715660>,  <50.639584, 51.810383, 50.656979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.642967, 51.414726, 50.715660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916343, 0.066394, 0.394850,
		-0.400304, 0.131089, 0.906958,
		0.008456, -0.989145, 0.146701,
		50.645504, 51.117981, 50.759670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.721333, 51.635975, 51.300167>,  <50.639584, 51.810383, 50.656979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.721333, 51.635975, 51.300167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.867123, 51.297230, 51.145256>,  <50.954597, 51.093983, 51.052311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.867123, 51.297230, 51.145256>,  <50.721333, 51.635975, 51.300167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.867123, 51.297230, 51.145256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773243, 0.043488, 0.632617,
		-0.518899, -0.530029, 0.670681,
		0.364472, -0.846864, -0.387275,
		50.976463, 51.043171, 51.029072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.774647, 51.152946, 51.849045>,  <50.721333, 51.635975, 51.300167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.774647, 51.152946, 51.849045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.044266, 51.071468, 51.565025>,  <51.206039, 51.022583, 51.394615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.044266, 51.071468, 51.565025>,  <50.774647, 51.152946, 51.849045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.044266, 51.071468, 51.565025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738531, 0.166225, 0.653407,
		-0.015069, -0.964820, 0.262480,
		0.674051, -0.203696, -0.710044,
		51.246483, 51.010361, 51.352013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.226383, 50.644333, 52.104118>,  <50.774647, 51.152946, 51.849045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.226383, 50.644333, 52.104118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.445797, 50.835041, 51.829369>,  <51.577446, 50.949467, 51.664516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.445797, 50.835041, 51.829369>,  <51.226383, 50.644333, 52.104118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.445797, 50.835041, 51.829369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548144, 0.415290, 0.725998,
		0.631387, -0.774742, -0.033538,
		0.548533, 0.476769, -0.686879,
		51.610355, 50.978073, 51.623306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.887856, 50.639355, 52.288097>,  <51.226383, 50.644333, 52.104118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.887856, 50.639355, 52.288097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.883419, 50.955719, 52.043365>,  <51.880756, 51.145538, 51.896526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.883419, 50.955719, 52.043365>,  <51.887856, 50.639355, 52.288097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.883419, 50.955719, 52.043365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650748, 0.470276, 0.596127,
		0.759213, -0.391540, -0.519897,
		-0.011088, 0.790909, -0.611833,
		51.880093, 51.192993, 51.859814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.489597, 50.748642, 52.564491>,  <51.887856, 50.639355, 52.288097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.489597, 50.748642, 52.564491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.370689, 51.075016, 52.366150>,  <52.299343, 51.270840, 52.247147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.370689, 51.075016, 52.366150>,  <52.489597, 50.748642, 52.564491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.370689, 51.075016, 52.366150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585666, 0.565984, 0.580222,
		0.754071, -0.117919, -0.646121,
		-0.297275, 0.815939, -0.495854,
		52.281506, 51.319798, 52.217392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.082092, 51.168388, 52.154900>,  <52.489597, 50.748642, 52.564491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.082092, 51.168388, 52.154900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.776249, 51.410568, 52.243263>,  <52.592743, 51.555878, 52.296284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.776249, 51.410568, 52.243263>,  <53.082092, 51.168388, 52.154900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.776249, 51.410568, 52.243263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575732, 0.487603, 0.656335,
		0.289661, 0.629026, -0.721403,
		-0.764610, 0.605450, 0.220911,
		52.546867, 51.592205, 52.309536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.261101, 51.855972, 52.068764>,  <53.082092, 51.168388, 52.154900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.261101, 51.855972, 52.068764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.974945, 51.796055, 52.341759>,  <52.803253, 51.760105, 52.505554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.974945, 51.796055, 52.341759>,  <53.261101, 51.855972, 52.068764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.974945, 51.796055, 52.341759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602908, 0.361352, 0.711285,
		-0.353164, 0.920318, -0.168193,
		-0.715386, -0.149795, 0.682484,
		52.760330, 51.751118, 52.546505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.320805, 52.295956, 52.441444>,  <53.261101, 51.855972, 52.068764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.320805, 52.295956, 52.441444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.123474, 52.053829, 52.691315>,  <53.005074, 51.908554, 52.841236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.123474, 52.053829, 52.691315>,  <53.320805, 52.295956, 52.441444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.123474, 52.053829, 52.691315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660533, 0.206572, 0.721820,
		-0.565970, 0.768713, 0.297923,
		-0.493330, -0.605317, 0.624674,
		52.975475, 51.872234, 52.878716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.876133, 52.646835, 52.967731>,  <53.320805, 52.295956, 52.441444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.876133, 52.646835, 52.967731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.045540, 52.301632, 53.077896>,  <53.147182, 52.094509, 53.143993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.045540, 52.301632, 53.077896>,  <52.876133, 52.646835, 52.967731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.045540, 52.301632, 53.077896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553088, 0.487117, 0.675877,
		-0.717445, -0.133918, 0.683621,
		0.423515, -0.863008, 0.275411,
		53.172596, 52.042728, 53.160519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.733395, 52.498455, 53.744064>,  <52.876133, 52.646835, 52.967731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.733395, 52.498455, 53.744064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.078735, 52.355778, 53.601299>,  <53.285942, 52.270172, 53.515640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.078735, 52.355778, 53.601299>,  <52.733395, 52.498455, 53.744064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.078735, 52.355778, 53.601299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504575, 0.603840, 0.617075,
		-0.004590, -0.712844, 0.701308,
		0.863356, -0.356694, -0.356911,
		53.337742, 52.248768, 53.494225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.186684, 52.252071, 54.206108>,  <52.733395, 52.498455, 53.744064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.186684, 52.252071, 54.206108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.420799, 52.410957, 53.923363>,  <53.561268, 52.506290, 53.753716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.420799, 52.410957, 53.923363>,  <53.186684, 52.252071, 54.206108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.420799, 52.410957, 53.923363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525550, 0.478013, 0.703776,
		0.617440, -0.783406, 0.071021,
		0.585291, 0.397214, -0.706863,
		53.596386, 52.530121, 53.711304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.813545, 52.486748, 54.540363>,  <53.186684, 52.252071, 54.206108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.813545, 52.486748, 54.540363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.842964, 52.666351, 54.184166>,  <53.860615, 52.774113, 53.970448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.842964, 52.666351, 54.184166>,  <53.813545, 52.486748, 54.540363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.842964, 52.666351, 54.184166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547132, 0.728375, 0.412452,
		0.833809, -0.517552, -0.192100,
		0.073544, 0.449010, -0.890495,
		53.865028, 52.801056, 53.917019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.496826, 52.488289, 54.405037>,  <53.813545, 52.486748, 54.540363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.496826, 52.488289, 54.405037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.274399, 52.775036, 54.236809>,  <54.140942, 52.947086, 54.135872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.274399, 52.775036, 54.236809>,  <54.496826, 52.488289, 54.405037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.274399, 52.775036, 54.236809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538631, 0.696205, 0.474527,
		0.632977, 0.037340, -0.773269,
		-0.556073, 0.716871, -0.420569,
		54.107578, 52.990097, 54.110638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.907780, 52.963505, 53.928787>,  <54.496826, 52.488289, 54.405037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.907780, 52.963505, 53.928787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.589508, 53.118786, 54.114773>,  <54.398544, 53.211952, 54.226364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.589508, 53.118786, 54.114773>,  <54.907780, 52.963505, 53.928787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.589508, 53.118786, 54.114773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605006, 0.546464, 0.579090,
		-0.029285, 0.742078, -0.669673,
		-0.795682, 0.388198, 0.464965,
		54.350803, 53.235245, 54.254261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.972775, 53.680519, 53.928574>,  <54.907780, 52.963505, 53.928787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.972775, 53.680519, 53.928574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.727348, 53.565102, 54.222588>,  <54.580093, 53.495850, 54.398998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.727348, 53.565102, 54.222588>,  <54.972775, 53.680519, 53.928574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.727348, 53.565102, 54.222588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379711, 0.708351, 0.595028,
		-0.692360, 0.644188, -0.325052,
		-0.613561, -0.288548, 0.735039,
		54.543282, 53.478539, 54.443100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.551403, 53.707546, 54.520863>,  <54.972775, 53.680519, 53.928574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.551403, 53.707546, 54.520863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.684006, 53.970238, 54.791805>,  <55.763565, 54.127853, 54.954372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.684006, 53.970238, 54.791805>,  <55.551403, 53.707546, 54.520863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.684006, 53.970238, 54.791805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794220, -0.581776, 0.175361,
		0.509234, 0.479837, -0.714449,
		0.331504, 0.656729, 0.677356,
		55.783459, 54.167255, 54.995010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.214481, 53.706631, 54.375839>,  <55.551403, 53.707546, 54.520863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.214481, 53.706631, 54.375839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.140762, 53.784412, 54.761215>,  <56.096531, 53.831081, 54.992443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.140762, 53.784412, 54.761215>,  <56.214481, 53.706631, 54.375839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.140762, 53.784412, 54.761215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772689, -0.577149, 0.264294,
		0.607442, 0.793151, -0.043883,
		-0.184298, 0.194452, 0.963443,
		56.085472, 53.842747, 55.050247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.851112, 53.793106, 54.558731>,  <56.214481, 53.706631, 54.375839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.851112, 53.793106, 54.558731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.661659, 53.705143, 54.899860>,  <56.547985, 53.652367, 55.104538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.661659, 53.705143, 54.899860>,  <56.851112, 53.793106, 54.558731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.661659, 53.705143, 54.899860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763956, -0.584397, 0.273590,
		0.438223, 0.781102, 0.444792,
		-0.473637, -0.219908, 0.852824,
		56.519569, 53.639172, 55.155708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.259155, 53.968338, 55.176746>,  <56.851112, 53.793106, 54.558731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.259155, 53.968338, 55.176746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.025612, 53.663662, 55.289131>,  <56.885487, 53.480858, 55.356560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.025612, 53.663662, 55.289131>,  <57.259155, 53.968338, 55.176746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.025612, 53.663662, 55.289131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795126, -0.466599, 0.387376,
		-0.163966, 0.449570, 0.878067,
		-0.583858, -0.761691, 0.280958,
		56.850456, 53.435154, 55.373417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.878807, 53.648693, 55.270832>,  <57.259155, 53.968338, 55.176746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.878807, 53.648693, 55.270832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.991852, 53.540371, 55.638916>,  <58.059677, 53.475376, 55.859768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.991852, 53.540371, 55.638916>,  <57.878807, 53.648693, 55.270832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.991852, 53.540371, 55.638916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938865, -0.118557, -0.323229,
		0.196631, 0.955304, 0.220748,
		0.282611, -0.270809, 0.920214,
		58.076633, 53.459129, 55.914982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.548470, 54.073105, 55.527149>,  <57.878807, 53.648693, 55.270832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.548470, 54.073105, 55.527149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.495872, 53.686523, 55.615402>,  <58.464314, 53.454575, 55.668354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.495872, 53.686523, 55.615402>,  <58.548470, 54.073105, 55.527149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.495872, 53.686523, 55.615402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933751, -0.195489, -0.299823,
		0.332895, 0.166588, 0.928132,
		-0.131492, -0.966454, 0.220629,
		58.456425, 53.396587, 55.681591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.141312, 53.765591, 55.245567>,  <58.548470, 54.073105, 55.527149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.141312, 53.765591, 55.245567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.873749, 53.732788, 54.950043>,  <58.713211, 53.713108, 54.772728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.873749, 53.732788, 54.950043>,  <59.141312, 53.765591, 55.245567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.873749, 53.732788, 54.950043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019803, 0.995509, -0.092567,
		0.743085, -0.047288, -0.667524,
		-0.668903, -0.082004, -0.738812,
		58.673077, 53.708187, 54.728397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.153210, 54.440727, 55.180634>,  <59.141312, 53.765591, 55.245567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.153210, 54.440727, 55.180634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.790794, 54.322998, 55.058998>,  <58.573345, 54.252361, 54.986019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.790794, 54.322998, 55.058998>,  <59.153210, 54.440727, 55.180634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.790794, 54.322998, 55.058998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300379, 0.953415, -0.027795,
		0.298101, 0.066158, -0.952239,
		-0.906040, -0.294318, -0.304086,
		58.518982, 54.234703, 54.967773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.544102, 54.895626, 54.792999>,  <59.153210, 54.440727, 55.180634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.544102, 54.895626, 54.792999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.750946, 55.227715, 54.709732>,  <59.875053, 55.426968, 54.659771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.750946, 55.227715, 54.709732>,  <59.544102, 54.895626, 54.792999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.750946, 55.227715, 54.709732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623894, -0.199106, 0.755720,
		0.585965, -0.520666, -0.620928,
		0.517108, 0.830219, -0.208171,
		59.906078, 55.476780, 54.647282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.288620, 54.715721, 54.797729>,  <59.544102, 54.895626, 54.792999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.288620, 54.715721, 54.797729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.267906, 55.103424, 54.893944>,  <60.255478, 55.336044, 54.951672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.267906, 55.103424, 54.893944>,  <60.288620, 54.715721, 54.797729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.267906, 55.103424, 54.893944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704273, -0.135320, 0.696913,
		0.708038, 0.205492, -0.675615,
		-0.051786, 0.969258, 0.240534,
		60.252369, 55.394203, 54.966103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.956997, 54.926056, 54.822567>,  <60.288620, 54.715721, 54.797729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.956997, 54.926056, 54.822567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.752312, 55.171387, 55.063225>,  <60.629501, 55.318584, 55.207619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.752312, 55.171387, 55.063225>,  <60.956997, 54.926056, 54.822567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.752312, 55.171387, 55.063225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607689, -0.236653, 0.758096,
		0.607344, 0.753540, -0.251616,
		-0.511710, 0.613329, 0.601648,
		60.598797, 55.355385, 55.243721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.437122, 55.383812, 55.236591>,  <60.956997, 54.926056, 54.822567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.437122, 55.383812, 55.236591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.093086, 55.288715, 55.417137>,  <60.886665, 55.231659, 55.525463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.093086, 55.288715, 55.417137>,  <61.437122, 55.383812, 55.236591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.093086, 55.288715, 55.417137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510082, -0.387144, 0.768073,
		-0.007859, 0.890842, 0.454244,
		-0.860090, -0.237738, 0.451360,
		60.835060, 55.217392, 55.552544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.250633, 55.783031, 55.870209>,  <61.437122, 55.383812, 55.236591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.250633, 55.783031, 55.870209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.138252, 55.399158, 55.866646>,  <61.070824, 55.168835, 55.864510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.138252, 55.399158, 55.866646>,  <61.250633, 55.783031, 55.870209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.138252, 55.399158, 55.866646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618406, -0.188124, 0.763010,
		-0.733922, 0.208859, 0.646326,
		-0.280951, -0.959681, -0.008909,
		61.053967, 55.111256, 55.863972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.759975, 56.219105, 56.147030>,  <61.250633, 55.783031, 55.870209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.759975, 56.219105, 56.147030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.805344, 55.963676, 55.842567>,  <61.832565, 55.810417, 55.659889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.805344, 55.963676, 55.842567>,  <61.759975, 56.219105, 56.147030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.805344, 55.963676, 55.842567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427044, -0.723057, 0.542975,
		-0.897090, 0.263465, -0.354706,
		0.113418, -0.638573, -0.761158,
		61.839371, 55.772106, 55.614220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.486313, 56.135357, 56.208218>,  <61.759975, 56.219105, 56.147030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.486313, 56.135357, 56.208218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.576424, 56.127060, 56.597847>,  <62.630489, 56.122082, 56.831623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.576424, 56.127060, 56.597847>,  <62.486313, 56.135357, 56.208218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.576424, 56.127060, 56.597847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948597, -0.223434, -0.224144,
		0.222291, 0.974498, -0.030655,
		0.225278, -0.020746, 0.974074,
		62.644009, 56.120834, 56.890068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.073002, 56.558922, 56.268612>,  <62.486313, 56.135357, 56.208218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.073002, 56.558922, 56.268612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.090942, 56.297138, 56.570518>,  <63.101707, 56.140068, 56.751663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.090942, 56.297138, 56.570518>,  <63.073002, 56.558922, 56.268612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.090942, 56.297138, 56.570518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929936, -0.248673, -0.270889,
		0.364976, 0.714035, 0.597450,
		0.044854, -0.654458, 0.754767,
		63.104397, 56.100800, 56.796947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.394066, 55.988091, 56.079639>,  <63.073002, 56.558922, 56.268612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.394066, 55.988091, 56.079639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.740028, 55.917458, 55.891701>,  <63.947605, 55.875080, 55.778938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.740028, 55.917458, 55.891701>,  <63.394066, 55.988091, 56.079639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.740028, 55.917458, 55.891701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390228, -0.352187, 0.850698,
		-0.315686, -0.919122, -0.235705,
		0.864908, -0.176574, -0.469848,
		63.999500, 55.864483, 55.750748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.892372, 55.741920, 56.577724>,  <63.394066, 55.988091, 56.079639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.892372, 55.741920, 56.577724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.143143, 55.723469, 56.266640>,  <64.293602, 55.712399, 56.079987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.143143, 55.723469, 56.266640>,  <63.892372, 55.741920, 56.577724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.143143, 55.723469, 56.266640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709635, -0.378174, 0.594477,
		-0.321536, -0.924585, -0.204350,
		0.626924, -0.046132, -0.777714,
		64.331223, 55.709629, 56.033325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.227898, 55.019073, 56.450165>,  <63.892372, 55.741920, 56.577724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.227898, 55.019073, 56.450165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.461128, 55.313057, 56.311691>,  <64.601067, 55.489449, 56.228607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.461128, 55.313057, 56.311691>,  <64.227898, 55.019073, 56.450165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.461128, 55.313057, 56.311691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762775, -0.348605, 0.544655,
		0.279621, -0.581639, -0.763877,
		0.583084, 0.734963, -0.346182,
		64.636055, 55.533546, 56.207836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.825523, 54.664528, 56.126301>,  <64.227898, 55.019073, 56.450165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.825523, 54.664528, 56.126301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.888077, 55.029297, 56.278053>,  <64.925613, 55.248158, 56.369106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.888077, 55.029297, 56.278053>,  <64.825523, 54.664528, 56.126301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.888077, 55.029297, 56.278053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757897, -0.357106, 0.545955,
		0.633351, 0.202152, -0.746995,
		0.156391, 0.911926, 0.379384,
		64.934998, 55.302876, 56.391869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.533218, 54.870285, 56.131073>,  <64.825523, 54.664528, 56.126301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.533218, 54.870285, 56.131073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.385803, 55.139198, 56.387886>,  <65.297356, 55.300549, 56.541973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.385803, 55.139198, 56.387886>,  <65.533218, 54.870285, 56.131073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.385803, 55.139198, 56.387886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693620, -0.260959, 0.671410,
		0.618924, 0.692771, -0.370136,
		-0.368544, 0.672286, 0.642034,
		65.275238, 55.340885, 56.580498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.927834, 55.487377, 56.313484>,  <65.533218, 54.870285, 56.131073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.927834, 55.487377, 56.313484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.708153, 55.376740, 56.628922>,  <65.576347, 55.310356, 56.818184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.708153, 55.376740, 56.628922>,  <65.927834, 55.487377, 56.313484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.708153, 55.376740, 56.628922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832338, -0.096581, 0.545789,
		-0.074801, 0.956120, 0.283264,
		-0.549198, -0.276597, 0.788591,
		65.543396, 55.293762, 56.865498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.158676, 55.899677, 56.879814>,  <65.927834, 55.487377, 56.313484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.158676, 55.899677, 56.879814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.978363, 55.566128, 57.007217>,  <65.870178, 55.365997, 57.083660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.978363, 55.566128, 57.007217>,  <66.158676, 55.899677, 56.879814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.978363, 55.566128, 57.007217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621816, -0.037350, 0.782272,
		-0.640422, 0.550687, 0.535354,
		-0.450782, -0.833876, 0.318506,
		65.843132, 55.315964, 57.102768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.948334, 55.985298, 57.517044>,  <66.158676, 55.899677, 56.879814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.948334, 55.985298, 57.517044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.002594, 55.589165, 57.505463>,  <66.035149, 55.351486, 57.498512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.002594, 55.589165, 57.505463>,  <65.948334, 55.985298, 57.517044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.002594, 55.589165, 57.505463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778394, 0.088455, 0.621513,
		-0.612944, -0.106848, 0.782868,
		0.135657, -0.990333, -0.028952,
		66.043289, 55.292065, 57.496777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.071777, 55.783100, 58.189899>,  <65.948334, 55.985298, 57.517044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.071777, 55.783100, 58.189899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.229980, 55.503601, 57.951462>,  <66.324905, 55.335903, 57.808399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.229980, 55.503601, 57.951462>,  <66.071777, 55.783100, 58.189899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.229980, 55.503601, 57.951462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714259, -0.174013, 0.677904,
		-0.577409, -0.693884, 0.430260,
		0.395516, -0.698745, -0.596090,
		66.348633, 55.293976, 57.772636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.939590, 55.176651, 58.528366>,  <66.071777, 55.783100, 58.189899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.939590, 55.176651, 58.528366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.267654, 55.244839, 58.309906>,  <66.464493, 55.285751, 58.178829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.267654, 55.244839, 58.309906>,  <65.939590, 55.176651, 58.528366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.267654, 55.244839, 58.309906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571140, -0.187664, 0.799113,
		0.033735, -0.967327, -0.251278,
		0.820159, 0.170473, -0.546148,
		66.513702, 55.295982, 58.146061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.453712, 54.649494, 58.639267>,  <65.939590, 55.176651, 58.528366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.453712, 54.649494, 58.639267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.656624, 54.969006, 58.509880>,  <66.778366, 55.160713, 58.432247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.656624, 54.969006, 58.509880>,  <66.453712, 54.649494, 58.639267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.656624, 54.969006, 58.509880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636707, -0.094434, 0.765301,
		0.580757, -0.594172, -0.556490,
		0.507272, 0.798775, -0.323470,
		66.808807, 55.208637, 58.412838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.128296, 54.412041, 58.417694>,  <66.453712, 54.649494, 58.639267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.128296, 54.412041, 58.417694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.114151, 54.788128, 58.553185>,  <67.105659, 55.013783, 58.634480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.114151, 54.788128, 58.553185>,  <67.128296, 54.412041, 58.417694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.114151, 54.788128, 58.553185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606243, -0.249262, 0.755207,
		0.794493, 0.232060, -0.561186,
		-0.035371, 0.940222, 0.338721,
		67.103539, 55.070194, 58.654800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.832329, 54.608814, 58.637306>,  <67.128296, 54.412041, 58.417694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.832329, 54.608814, 58.637306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.567406, 54.849041, 58.816490>,  <67.408455, 54.993176, 58.924000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.567406, 54.849041, 58.816490>,  <67.832329, 54.608814, 58.637306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.567406, 54.849041, 58.816490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617159, 0.098308, 0.780673,
		0.424805, 0.793511, -0.435754,
		-0.662310, 0.600563, 0.447961,
		67.368713, 55.029209, 58.950878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.933060, 55.392006, 58.614532>,  <67.832329, 54.608814, 58.637306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.933060, 55.392006, 58.614532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.784431, 55.229908, 58.948647>,  <67.695251, 55.132648, 59.149117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.784431, 55.229908, 58.948647>,  <67.933060, 55.392006, 58.614532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.784431, 55.229908, 58.948647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775842, 0.358600, 0.519110,
		-0.509901, 0.840942, 0.181157,
		-0.371579, -0.405244, 0.835288,
		67.672958, 55.108334, 59.199234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.027802, 55.919441, 59.072472>,  <67.933060, 55.392006, 58.614532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.027802, 55.919441, 59.072472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.991829, 55.597290, 59.306831>,  <67.970245, 55.403999, 59.447449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.991829, 55.597290, 59.306831>,  <68.027802, 55.919441, 59.072472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.991829, 55.597290, 59.306831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744496, 0.336393, 0.576684,
		-0.661542, 0.488062, 0.569349,
		-0.089932, -0.805379, 0.585898,
		67.964851, 55.355675, 59.482601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.955658, 56.154354, 59.851860>,  <68.027802, 55.919441, 59.072472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.955658, 56.154354, 59.851860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.139603, 55.803612, 59.795784>,  <68.249969, 55.593166, 59.762138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.139603, 55.803612, 59.795784>,  <67.955658, 56.154354, 59.851860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.139603, 55.803612, 59.795784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856516, 0.396336, 0.330603,
		-0.234329, -0.272105, 0.933300,
		0.459859, -0.876857, -0.140189,
		68.277557, 55.540554, 59.753727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.213120, 55.981434, 60.431213>,  <67.955658, 56.154354, 59.851860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.213120, 55.981434, 60.431213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.443748, 55.822308, 60.145752>,  <68.582130, 55.726833, 59.974476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.443748, 55.822308, 60.145752>,  <68.213120, 55.981434, 60.431213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.443748, 55.822308, 60.145752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802789, 0.438272, 0.404287,
		0.151944, -0.806016, 0.572058,
		0.576579, -0.397813, -0.713653,
		68.616722, 55.702965, 59.931656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.497604, 55.339287, 60.491520>,  <68.213120, 55.981434, 60.431213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.497604, 55.339287, 60.491520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.690773, 55.280682, 60.146194>,  <68.806679, 55.245518, 59.938999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.690773, 55.280682, 60.146194>,  <68.497604, 55.339287, 60.491520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.690773, 55.280682, 60.146194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872995, 0.003729, 0.487714,
		-0.068239, -0.989201, 0.129710,
		0.482931, -0.146517, -0.863314,
		68.835655, 55.236729, 59.887199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.049141, 54.783745, 60.468155>,  <68.497604, 55.339287, 60.491520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.049141, 54.783745, 60.468155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.162392, 55.042664, 60.185074>,  <69.230339, 55.198017, 60.015224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.162392, 55.042664, 60.185074>,  <69.049141, 54.783745, 60.468155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.162392, 55.042664, 60.185074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954462, -0.117795, 0.274091,
		0.094055, -0.753078, -0.651173,
		0.283118, 0.647300, -0.707706,
		69.247330, 55.236855, 59.972763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.492188, 54.477901, 59.994392>,  <69.049141, 54.783745, 60.468155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.492188, 54.477901, 59.994392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.551903, 54.872780, 60.016884>,  <69.587730, 55.109707, 60.030380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.551903, 54.872780, 60.016884>,  <69.492188, 54.477901, 59.994392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.551903, 54.872780, 60.016884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958795, -0.158417, 0.235832,
		0.241720, 0.018706, -0.970166,
		0.149279, 0.987195, 0.056228,
		69.596687, 55.168938, 60.033752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.880379, 54.650524, 59.375408>,  <69.492188, 54.477901, 59.994392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.880379, 54.650524, 59.375408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.953346, 54.887276, 59.689453>,  <69.997124, 55.029327, 59.877880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.953346, 54.887276, 59.689453>,  <69.880379, 54.650524, 59.375408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.953346, 54.887276, 59.689453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959251, -0.282379, -0.010003,
		0.215779, 0.754944, -0.619273,
		0.182422, 0.591880, 0.785112,
		70.008072, 55.064838, 59.924988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.407402, 55.154461, 59.274117>,  <69.880379, 54.650524, 59.375408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.407402, 55.154461, 59.274117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.391327, 55.045395, 59.658623>,  <70.381683, 54.979954, 59.889328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.391327, 55.045395, 59.658623>,  <70.407402, 55.154461, 59.274117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.391327, 55.045395, 59.658623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944648, -0.323878, -0.052380,
		0.325615, 0.905955, 0.270591,
		-0.040185, -0.272669, 0.961268,
		70.379272, 54.963593, 59.947002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.103142, 55.365585, 59.592472>,  <70.407402, 55.154461, 59.274117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.103142, 55.365585, 59.592472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.949661, 55.053703, 59.790398>,  <70.857574, 54.866573, 59.909153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.949661, 55.053703, 59.790398>,  <71.103142, 55.365585, 59.592472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.949661, 55.053703, 59.790398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849761, -0.507870, -0.141331,
		0.361496, 0.366243, 0.857430,
		-0.383702, -0.779701, 0.494812,
		70.834549, 54.819794, 59.938843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.487076, 55.931797, 59.794491>,  <71.103142, 55.365585, 59.592472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.487076, 55.931797, 59.794491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.606430, 55.774986, 60.142578>,  <71.678047, 55.680901, 60.351429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.606430, 55.774986, 60.142578>,  <71.487076, 55.931797, 59.794491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.606430, 55.774986, 60.142578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938517, 0.286381, -0.192800,
		-0.173631, 0.874243, 0.453377,
		0.298393, -0.392026, 0.870217,
		71.695946, 55.657379, 60.403645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.868027, 56.399891, 60.087845>,  <71.487076, 55.931797, 59.794491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.868027, 56.399891, 60.087845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.969490, 56.039543, 60.228752>,  <72.030365, 55.823334, 60.313297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.969490, 56.039543, 60.228752>,  <71.868027, 56.399891, 60.087845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.969490, 56.039543, 60.228752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960439, 0.191275, -0.202413,
		0.114966, 0.389679, 0.913747,
		0.253653, -0.900868, 0.352273,
		72.045586, 55.769283, 60.334435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.898399, 57.162502, 60.139523>,  <71.868027, 56.399891, 60.087845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.898399, 57.162502, 60.139523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.115791, 57.412800, 60.363335>,  <72.246223, 57.562981, 60.497623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.115791, 57.412800, 60.363335>,  <71.898399, 57.162502, 60.139523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.115791, 57.412800, 60.363335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820895, -0.256902, -0.510032,
		-0.175405, 0.736508, -0.653291,
		0.543474, 0.625746, 0.559533,
		72.278831, 57.600525, 60.531197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.232056, 57.649349, 59.693321>,  <71.898399, 57.162502, 60.139523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.232056, 57.649349, 59.693321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.447342, 57.526436, 60.007240>,  <72.576515, 57.452686, 60.195591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.447342, 57.526436, 60.007240>,  <72.232056, 57.649349, 59.693321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.447342, 57.526436, 60.007240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712112, -0.332274, -0.618459,
		0.450812, 0.891723, 0.039990,
		0.538206, -0.307285, 0.784799,
		72.608803, 57.434250, 60.242680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.946266, 57.889225, 59.701752>,  <72.232056, 57.649349, 59.693321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.946266, 57.889225, 59.701752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.906647, 57.541733, 59.895866>,  <72.882874, 57.333237, 60.012337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.906647, 57.541733, 59.895866>,  <72.946266, 57.889225, 59.701752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.906647, 57.541733, 59.895866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705009, -0.405429, -0.581885,
		0.702248, 0.284500, 0.652616,
		-0.099043, -0.868728, 0.485287,
		72.876930, 57.281113, 60.041451>
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
