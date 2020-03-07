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
	<35.714798, 52.957294, 50.315399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812481, 53.219391, 50.029457>,  <35.871090, 53.376648, 49.857891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812481, 53.219391, 50.029457>,  <35.714798, 52.957294, 50.315399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812481, 53.219391, 50.029457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095646, 0.749856, 0.654651,
		0.964995, -0.091497, 0.245791,
		0.244207, 0.655244, -0.714856,
		35.885742, 53.415962, 49.814999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373009, 53.312088, 50.540882>,  <35.714798, 52.957294, 50.315399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373009, 53.312088, 50.540882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124538, 53.491348, 50.283730>,  <35.975456, 53.598904, 50.129436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124538, 53.491348, 50.283730>,  <36.373009, 53.312088, 50.540882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124538, 53.491348, 50.283730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089423, 0.774458, 0.626273,
		0.778553, 0.446514, -0.440999,
		-0.621175, 0.448151, -0.642885,
		35.938187, 53.625793, 50.090862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575680, 53.904484, 50.414207>,  <36.373009, 53.312088, 50.540882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575680, 53.904484, 50.414207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182613, 53.939995, 50.349110>,  <35.946774, 53.961300, 50.310051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182613, 53.939995, 50.349110>,  <36.575680, 53.904484, 50.414207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182613, 53.939995, 50.349110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013060, 0.908847, 0.416926,
		0.184925, 0.407573, -0.894252,
		-0.982666, 0.088779, -0.162745,
		35.887814, 53.966629, 50.300285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359016, 54.518425, 50.000675>,  <36.575680, 53.904484, 50.414207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359016, 54.518425, 50.000675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025978, 54.449036, 50.211082>,  <35.826157, 54.407402, 50.337326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025978, 54.449036, 50.211082>,  <36.359016, 54.518425, 50.000675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025978, 54.449036, 50.211082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072364, 0.907482, 0.413810,
		-0.549139, 0.382600, -0.743010,
		-0.832592, -0.173472, 0.526021,
		35.776199, 54.396996, 50.368889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314011, 54.760136, 50.681946>,  <36.359016, 54.518425, 50.000675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314011, 54.760136, 50.681946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984272, 54.770390, 50.908146>,  <35.786430, 54.776543, 51.043865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984272, 54.770390, 50.908146>,  <36.314011, 54.760136, 50.681946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984272, 54.770390, 50.908146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492171, -0.461097, 0.738348,
		0.279676, 0.886979, 0.367490,
		-0.824348, 0.025631, 0.565503,
		35.736969, 54.778080, 51.077797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385612, 55.229240, 51.419338>,  <36.314011, 54.760136, 50.681946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385612, 55.229240, 51.419338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129986, 54.921646, 51.425606>,  <35.976608, 54.737087, 51.429367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129986, 54.921646, 51.425606>,  <36.385612, 55.229240, 51.419338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129986, 54.921646, 51.425606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546126, -0.439324, 0.713261,
		-0.541606, 0.464381, 0.700723,
		-0.639070, -0.768989, 0.015670,
		35.938267, 54.690948, 51.430305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298470, 55.198223, 52.154598>,  <36.385612, 55.229240, 51.419338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298470, 55.198223, 52.154598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691547, 55.132774, 52.119850>,  <36.927395, 55.093506, 52.099003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691547, 55.132774, 52.119850>,  <36.298470, 55.198223, 52.154598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691547, 55.132774, 52.119850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011643, 0.522542, -0.852534,
		0.184881, 0.836767, 0.515403,
		0.982692, -0.163619, -0.086866,
		36.986355, 55.083691, 52.093792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728931, 55.929340, 51.999950>,  <36.298470, 55.198223, 52.154598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728931, 55.929340, 51.999950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921856, 55.600765, 51.878227>,  <37.037613, 55.403618, 51.805191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921856, 55.600765, 51.878227>,  <36.728931, 55.929340, 51.999950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921856, 55.600765, 51.878227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202868, 0.442685, -0.873427,
		0.852183, 0.359532, 0.380158,
		0.482315, -0.821442, -0.304311,
		37.066551, 55.354332, 51.786934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416588, 56.145496, 51.794605>,  <36.728931, 55.929340, 51.999950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416588, 56.145496, 51.794605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339817, 55.786835, 51.635021>,  <37.293755, 55.571636, 51.539268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339817, 55.786835, 51.635021>,  <37.416588, 56.145496, 51.794605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339817, 55.786835, 51.635021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449107, 0.281215, -0.848069,
		0.872620, -0.341946, 0.348721,
		-0.191928, -0.896656, -0.398964,
		37.282238, 55.517838, 51.515331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985699, 55.951878, 51.457096>,  <37.416588, 56.145496, 51.794605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985699, 55.951878, 51.457096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656662, 55.775223, 51.313828>,  <37.459240, 55.669228, 51.227867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656662, 55.775223, 51.313828>,  <37.985699, 55.951878, 51.457096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656662, 55.775223, 51.313828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284319, 0.226047, -0.931700,
		0.492441, -0.868249, -0.060379,
		-0.822596, -0.441641, -0.358174,
		37.409882, 55.642731, 51.206375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302681, 55.495209, 51.037598>,  <37.985699, 55.951878, 51.457096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302681, 55.495209, 51.037598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957233, 55.661530, 50.923569>,  <37.749966, 55.761322, 50.855152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957233, 55.661530, 50.923569>,  <38.302681, 55.495209, 51.037598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957233, 55.661530, 50.923569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418435, 0.275798, -0.865360,
		-0.281191, -0.866630, -0.412170,
		-0.863622, 0.415798, -0.285076,
		37.698147, 55.786270, 50.838047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432045, 55.726055, 50.357407>,  <38.302681, 55.495209, 51.037598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432045, 55.726055, 50.357407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052444, 55.844761, 50.399979>,  <37.824684, 55.915985, 50.425522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052444, 55.844761, 50.399979>,  <38.432045, 55.726055, 50.357407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052444, 55.844761, 50.399979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037108, 0.440381, -0.897044,
		-0.313084, -0.847345, -0.428934,
		-0.949000, 0.296767, 0.106433,
		37.767746, 55.933792, 50.431908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959587, 56.119198, 49.950516>,  <38.432045, 55.726055, 50.357407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959587, 56.119198, 49.950516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163757, 55.931953, 50.239052>,  <39.286259, 55.819607, 50.412174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163757, 55.931953, 50.239052>,  <38.959587, 56.119198, 49.950516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163757, 55.931953, 50.239052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710758, -0.242514, -0.660310,
		0.484037, 0.849739, 0.208931,
		0.510423, -0.468114, 0.721345,
		39.316883, 55.791519, 50.455456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701920, 56.276676, 49.939888>,  <38.959587, 56.119198, 49.950516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701920, 56.276676, 49.939888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675747, 55.924580, 50.127888>,  <39.660042, 55.713322, 50.240688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675747, 55.924580, 50.127888>,  <39.701920, 56.276676, 49.939888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675747, 55.924580, 50.127888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925514, -0.229610, -0.301171,
		0.373018, 0.415281, 0.829698,
		-0.065436, -0.880239, 0.469997,
		39.656116, 55.660507, 50.268887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117241, 56.160896, 50.497185>,  <39.701920, 56.276676, 49.939888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117241, 56.160896, 50.497185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056396, 55.811596, 50.312019>,  <40.019890, 55.602016, 50.200920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056396, 55.811596, 50.312019>,  <40.117241, 56.160896, 50.497185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056396, 55.811596, 50.312019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983057, -0.085207, -0.162290,
		0.102277, -0.479757, 0.871420,
		-0.152111, -0.873254, -0.462914,
		40.010765, 55.549622, 50.173145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529495, 55.686455, 50.866585>,  <40.117241, 56.160896, 50.497185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529495, 55.686455, 50.866585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472107, 55.568405, 50.488735>,  <40.437675, 55.497574, 50.262024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472107, 55.568405, 50.488735>,  <40.529495, 55.686455, 50.866585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472107, 55.568405, 50.488735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986544, 0.032966, -0.160137,
		0.078402, -0.954889, 0.286427,
		-0.143471, -0.295127, -0.944625,
		40.429066, 55.479866, 50.205349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754894, 54.926693, 50.594967>,  <40.529495, 55.686455, 50.866585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754894, 54.926693, 50.594967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792873, 55.241825, 50.351555>,  <40.815659, 55.430904, 50.205509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792873, 55.241825, 50.351555>,  <40.754894, 54.926693, 50.594967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792873, 55.241825, 50.351555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955513, 0.099354, 0.277711,
		0.279249, -0.607823, -0.743351,
		0.094944, 0.787832, -0.608527,
		40.821358, 55.478176, 50.168995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048378, 54.830452, 49.912434>,  <40.754894, 54.926693, 50.594967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048378, 54.830452, 49.912434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147171, 55.179256, 50.081474>,  <41.206448, 55.388538, 50.182899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147171, 55.179256, 50.081474>,  <41.048378, 54.830452, 49.912434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147171, 55.179256, 50.081474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952161, -0.299389, 0.061289,
		0.179966, 0.387244, -0.904242,
		0.246986, 0.872014, 0.422598,
		41.221268, 55.440861, 50.208252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678814, 55.210354, 49.583206>,  <41.048378, 54.830452, 49.912434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678814, 55.210354, 49.583206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657578, 55.334351, 49.962910>,  <41.644836, 55.408749, 50.190731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657578, 55.334351, 49.962910>,  <41.678814, 55.210354, 49.583206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657578, 55.334351, 49.962910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975753, -0.186028, 0.115324,
		0.212338, 0.932363, -0.292596,
		-0.053093, 0.309990, 0.949256,
		41.641651, 55.427349, 50.247688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058941, 55.827217, 49.672031>,  <41.678814, 55.210354, 49.583206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058941, 55.827217, 49.672031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068111, 55.627487, 50.018478>,  <42.073612, 55.507648, 50.226345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068111, 55.627487, 50.018478>,  <42.058941, 55.827217, 49.672031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068111, 55.627487, 50.018478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993266, 0.109787, 0.037003,
		-0.113565, 0.859433, 0.498475,
		0.022924, -0.499321, 0.866114,
		42.074989, 55.477692, 50.278313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447300, 56.128056, 50.166672>,  <42.058941, 55.827217, 49.672031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447300, 56.128056, 50.166672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470448, 55.745941, 50.282661>,  <42.484337, 55.516674, 50.352253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470448, 55.745941, 50.282661>,  <42.447300, 56.128056, 50.166672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470448, 55.745941, 50.282661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974923, -0.008442, -0.222383,
		0.214887, 0.295569, 0.930840,
		0.057871, -0.955284, 0.289971,
		42.487808, 55.459354, 50.369652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964619, 56.139763, 50.718369>,  <42.447300, 56.128056, 50.166672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964619, 56.139763, 50.718369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920326, 55.797829, 50.515594>,  <42.893749, 55.592667, 50.393929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920326, 55.797829, 50.515594>,  <42.964619, 56.139763, 50.718369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920326, 55.797829, 50.515594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932075, 0.087701, -0.351488,
		0.344926, -0.511426, 0.787064,
		-0.110734, -0.854840, -0.506938,
		42.887108, 55.541378, 50.363514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407970, 55.531223, 50.799171>,  <42.964619, 56.139763, 50.718369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407970, 55.531223, 50.799171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297436, 55.462433, 50.420952>,  <43.231113, 55.421158, 50.194019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297436, 55.462433, 50.420952>,  <43.407970, 55.531223, 50.799171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297436, 55.462433, 50.420952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950617, -0.193560, -0.242614,
		-0.141298, -0.965899, 0.216968,
		-0.276337, -0.171973, -0.945550,
		43.214535, 55.410843, 50.137287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530117, 54.806171, 50.727383>,  <43.407970, 55.531223, 50.799171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530117, 54.806171, 50.727383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614361, 55.051720, 50.423065>,  <43.664909, 55.199051, 50.240475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614361, 55.051720, 50.423065>,  <43.530117, 54.806171, 50.727383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614361, 55.051720, 50.423065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977552, -0.136940, 0.160124,
		-0.005887, -0.777437, -0.628934,
		0.210613, 0.613873, -0.760791,
		43.677544, 55.235882, 50.194828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799557, 54.344936, 50.127781>,  <43.530117, 54.806171, 50.727383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799557, 54.344936, 50.127781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883938, 54.716850, 50.248447>,  <43.934566, 54.939999, 50.320847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883938, 54.716850, 50.248447>,  <43.799557, 54.344936, 50.127781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883938, 54.716850, 50.248447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812313, -0.338414, 0.474998,
		0.543732, 0.144841, -0.826666,
		0.210957, 0.929783, 0.301663,
		43.947224, 54.995785, 50.338947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235096, 53.813828, 50.315872>,  <43.799557, 54.344936, 50.127781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235096, 53.813828, 50.315872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333900, 53.674229, 49.954281>,  <44.393185, 53.590469, 49.737324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333900, 53.674229, 49.954281>,  <44.235096, 53.813828, 50.315872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333900, 53.674229, 49.954281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904960, 0.250456, -0.343975,
		0.346455, 0.903034, -0.253965,
		0.247014, -0.349000, -0.903982,
		44.408005, 53.569530, 49.683086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739883, 54.345135, 50.112339>,  <44.235096, 53.813828, 50.315872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739883, 54.345135, 50.112339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668053, 54.696281, 49.934753>,  <44.624954, 54.906967, 49.828201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668053, 54.696281, 49.934753>,  <44.739883, 54.345135, 50.112339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668053, 54.696281, 49.934753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012807, 0.453353, 0.891239,
		0.983661, 0.154358, -0.092654,
		-0.179575, 0.877864, -0.443968,
		44.614182, 54.959641, 49.801563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657837, 54.341713, 50.883167>,  <44.739883, 54.345135, 50.112339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657837, 54.341713, 50.883167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462532, 54.017204, 51.011810>,  <44.345348, 53.822498, 51.088997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462532, 54.017204, 51.011810>,  <44.657837, 54.341713, 50.883167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.462532, 54.017204, 51.011810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484976, -0.054140, -0.872850,
		0.725532, -0.582155, -0.367013,
		-0.488264, -0.811273, 0.321611,
		44.316051, 53.773823, 51.108295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448139, 54.398960, 50.731686>,  <44.657837, 54.341713, 50.883167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448139, 54.398960, 50.731686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716965, 54.205456, 50.955933>,  <45.878262, 54.089352, 51.090481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716965, 54.205456, 50.955933>,  <45.448139, 54.398960, 50.731686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716965, 54.205456, 50.955933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559123, 0.827909, 0.044138,
		-0.485495, 0.283792, 0.826895,
		0.672068, -0.483765, 0.560621,
		45.918587, 54.060326, 51.124119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583881, 54.866203, 51.302822>,  <45.448139, 54.398960, 50.731686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583881, 54.866203, 51.302822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.861202, 54.596558, 51.200920>,  <46.027596, 54.434769, 51.139778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.861202, 54.596558, 51.200920>,  <45.583881, 54.866203, 51.302822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.861202, 54.596558, 51.200920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703050, 0.710344, 0.033646,
		0.158284, -0.202434, 0.966420,
		0.693301, -0.674116, -0.254758,
		46.069191, 54.394321, 51.124493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.130753, 54.901966, 51.749554>,  <45.583881, 54.866203, 51.302822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.130753, 54.901966, 51.749554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293335, 54.725784, 51.429356>,  <46.390884, 54.620075, 51.237236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293335, 54.725784, 51.429356>,  <46.130753, 54.901966, 51.749554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.293335, 54.725784, 51.429356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741334, 0.671098, 0.007159,
		0.534055, -0.596342, 0.599302,
		0.406460, -0.440459, -0.800491,
		46.415272, 54.593647, 51.189209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.830658, 54.569832, 51.871201>,  <46.130753, 54.901966, 51.749554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.830658, 54.569832, 51.871201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.795799, 54.695107, 51.492928>,  <46.774883, 54.770271, 51.265965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.795799, 54.695107, 51.492928>,  <46.830658, 54.569832, 51.871201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.795799, 54.695107, 51.492928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938177, 0.345038, 0.027813,
		0.335008, -0.884796, -0.323891,
		-0.087146, 0.313185, -0.945685,
		46.769657, 54.789062, 51.209221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255054, 54.118195, 51.523609>,  <46.830658, 54.569832, 51.871201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255054, 54.118195, 51.523609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.223518, 54.463810, 51.324722>,  <47.204597, 54.671177, 51.205391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.223518, 54.463810, 51.324722>,  <47.255054, 54.118195, 51.523609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.223518, 54.463810, 51.324722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995361, 0.095821, 0.008683,
		0.055147, -0.494227, -0.867582,
		-0.078841, 0.864036, -0.497219,
		47.199867, 54.723022, 51.175556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.522762, 54.026791, 50.875629>,  <47.255054, 54.118195, 51.523609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.522762, 54.026791, 50.875629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.569035, 54.403130, 51.003021>,  <47.596798, 54.628933, 51.079456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.569035, 54.403130, 51.003021>,  <47.522762, 54.026791, 50.875629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.569035, 54.403130, 51.003021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991246, -0.088808, -0.097694,
		-0.063631, 0.326996, -0.942881,
		0.115680, 0.940844, 0.318482,
		47.603737, 54.685383, 51.098564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.116402, 54.338356, 50.494297>,  <47.522762, 54.026791, 50.875629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.116402, 54.338356, 50.494297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.056049, 54.486397, 50.860962>,  <48.019840, 54.575222, 51.080959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.056049, 54.486397, 50.860962>,  <48.116402, 54.338356, 50.494297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.056049, 54.486397, 50.860962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988123, 0.029134, 0.150876,
		0.029134, 0.928535, -0.370100,
		-0.150876, 0.370100, 0.916658,
		48.010788, 54.597427, 51.135960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.634792, 54.912872, 50.510239>,  <48.116402, 54.338356, 50.494297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.634792, 54.912872, 50.510239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.574215, 54.770706, 50.879181>,  <48.537868, 54.685406, 51.100548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.574215, 54.770706, 50.879181>,  <48.634792, 54.912872, 50.510239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.574215, 54.770706, 50.879181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984929, 0.024607, 0.171200,
		-0.083543, 0.934386, 0.346328,
		-0.151445, -0.355411, 0.922360,
		48.528782, 54.664082, 51.155888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.782394, 55.449780, 51.198219>,  <48.634792, 54.912872, 50.510239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.782394, 55.449780, 51.198219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.845230, 55.054756, 51.195427>,  <48.882931, 54.817741, 51.193752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.845230, 55.054756, 51.195427>,  <48.782394, 55.449780, 51.198219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.845230, 55.054756, 51.195427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987500, 0.156978, 0.014219,
		-0.012946, -0.009129, 0.999875,
		0.157088, -0.987560, -0.006983,
		48.892357, 54.758488, 51.193333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.300690, 55.448380, 51.671421>,  <48.782394, 55.449780, 51.198219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.300690, 55.448380, 51.671421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.287178, 55.108604, 51.460777>,  <49.279072, 54.904739, 51.334393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.287178, 55.108604, 51.460777>,  <49.300690, 55.448380, 51.671421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.287178, 55.108604, 51.460777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995893, 0.015676, -0.089172,
		0.084001, -0.527460, 0.845417,
		-0.033782, -0.849435, -0.526610,
		49.277042, 54.853775, 51.302795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.562614, 54.999935, 52.208900>,  <49.300690, 55.448380, 51.671421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.562614, 54.999935, 52.208900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.922939, 55.158318, 52.280190>,  <50.139133, 55.253345, 52.322964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.922939, 55.158318, 52.280190>,  <49.562614, 54.999935, 52.208900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.922939, 55.158318, 52.280190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115068, -0.178095, 0.977262,
		0.418691, -0.900835, -0.114868,
		0.900810, 0.395953, 0.178224,
		50.193184, 55.277103, 52.333656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.906380, 54.565037, 52.731766>,  <49.562614, 54.999935, 52.208900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.906380, 54.565037, 52.731766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.021122, 54.947483, 52.755627>,  <50.089966, 55.176952, 52.769943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.021122, 54.947483, 52.755627>,  <49.906380, 54.565037, 52.731766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.021122, 54.947483, 52.755627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216643, 0.004088, 0.976242,
		0.933156, -0.292962, 0.208308,
		0.286854, 0.956115, 0.059653,
		50.107178, 55.234318, 52.773521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.359566, 54.704411, 53.394695>,  <49.906380, 54.565037, 52.731766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.359566, 54.704411, 53.394695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.188263, 55.042351, 53.266434>,  <50.085480, 55.245117, 53.189476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.188263, 55.042351, 53.266434>,  <50.359566, 54.704411, 53.394695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.188263, 55.042351, 53.266434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260877, 0.224144, 0.938990,
		0.865182, 0.485780, 0.124411,
		-0.428257, 0.844853, -0.320654,
		50.059788, 55.295807, 53.170238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.634666, 55.365444, 53.758247>,  <50.359566, 54.704411, 53.394695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.634666, 55.365444, 53.758247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.258999, 55.403351, 53.626205>,  <50.033596, 55.426094, 53.546978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.258999, 55.403351, 53.626205>,  <50.634666, 55.365444, 53.758247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.258999, 55.403351, 53.626205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303210, 0.222616, 0.926556,
		0.161297, 0.970289, -0.180340,
		-0.939173, 0.094770, -0.330109,
		49.977245, 55.431782, 53.527172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.253304, 55.663303, 54.127750>,  <50.634666, 55.365444, 53.758247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.253304, 55.663303, 54.127750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.646164, 55.709450, 54.187180>,  <51.881878, 55.737137, 54.222836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.646164, 55.709450, 54.187180>,  <51.253304, 55.663303, 54.127750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.646164, 55.709450, 54.187180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111072, -0.281759, 0.953035,
		0.151809, -0.952524, -0.263915,
		0.982149, 0.115366, 0.148572,
		51.940807, 55.744061, 54.231750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.679882, 55.001408, 54.516323>,  <51.253304, 55.663303, 54.127750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.679882, 55.001408, 54.516323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.864429, 55.349277, 54.586533>,  <51.975159, 55.557999, 54.628658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.864429, 55.349277, 54.586533>,  <51.679882, 55.001408, 54.516323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.864429, 55.349277, 54.586533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236456, -0.070151, 0.969106,
		0.855117, -0.488623, 0.173273,
		0.461372, 0.869671, 0.175525,
		52.002842, 55.610180, 54.639191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.923920, 55.023483, 55.213806>,  <51.679882, 55.001408, 54.516323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.923920, 55.023483, 55.213806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.907738, 55.407299, 55.102348>,  <51.898029, 55.637589, 55.035473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.907738, 55.407299, 55.102348>,  <51.923920, 55.023483, 55.213806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.907738, 55.407299, 55.102348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385769, 0.242246, 0.890224,
		0.921708, 0.143505, 0.360362,
		-0.040456, 0.959543, -0.278640,
		51.895599, 55.695164, 55.018757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.413429, 55.497494, 55.570202>,  <51.923920, 55.023483, 55.213806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.413429, 55.497494, 55.570202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.071510, 55.685738, 55.482712>,  <51.866360, 55.798683, 55.430218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.071510, 55.685738, 55.482712>,  <52.413429, 55.497494, 55.570202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.071510, 55.685738, 55.482712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282322, -0.068057, 0.956903,
		0.435441, 0.879713, 0.191038,
		-0.854802, 0.470609, -0.218727,
		51.815071, 55.826920, 55.417095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.694572, 55.536217, 56.225574>,  <52.413429, 55.497494, 55.570202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.694572, 55.536217, 56.225574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.568794, 55.844639, 56.447060>,  <52.493328, 56.029694, 56.579948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.568794, 55.844639, 56.447060>,  <52.694572, 55.536217, 56.225574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.568794, 55.844639, 56.447060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823550, 0.511681, -0.244842,
		-0.472111, 0.379018, -0.795900,
		-0.314447, 0.771056, 0.553711,
		52.474461, 56.075954, 56.613174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.362377, 55.812675, 55.864380>,  <52.694572, 55.536217, 56.225574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.362377, 55.812675, 55.864380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.444004, 56.052475, 55.554810>,  <53.492981, 56.196354, 55.369068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.444004, 56.052475, 55.554810>,  <53.362377, 55.812675, 55.864380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.444004, 56.052475, 55.554810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651044, 0.673506, 0.350045,
		0.731094, 0.432428, 0.527737,
		0.204065, 0.599496, -0.773926,
		53.505222, 56.232323, 55.322632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.488163, 56.522133, 56.143242>,  <53.362377, 55.812675, 55.864380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.488163, 56.522133, 56.143242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.433636, 56.561466, 55.748932>,  <53.400921, 56.585068, 55.512348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.433636, 56.561466, 55.748932>,  <53.488163, 56.522133, 56.143242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.433636, 56.561466, 55.748932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388209, 0.910176, 0.144480,
		0.911434, 0.402381, -0.085897,
		-0.136317, 0.098338, -0.985772,
		53.392742, 56.590969, 55.453201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.931709, 57.021008, 55.847988>,  <53.488163, 56.522133, 56.143242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.931709, 57.021008, 55.847988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.590485, 57.007034, 55.639732>,  <53.385750, 56.998650, 55.514778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.590485, 57.007034, 55.639732>,  <53.931709, 57.021008, 55.847988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.590485, 57.007034, 55.639732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153544, 0.970388, 0.186474,
		0.498709, 0.239015, -0.833164,
		-0.853061, -0.034931, -0.520640,
		53.334568, 56.996555, 55.483540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.483524, 57.551311, 55.638721>,  <53.931709, 57.021008, 55.847988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.483524, 57.551311, 55.638721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.406227, 57.776169, 55.960381>,  <54.359848, 57.911083, 56.153378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.406227, 57.776169, 55.960381>,  <54.483524, 57.551311, 55.638721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.406227, 57.776169, 55.960381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854952, -0.305631, 0.419102,
		0.481367, 0.768498, -0.421540,
		-0.193243, 0.562139, 0.804150,
		54.348255, 57.944809, 56.201626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.109501, 57.870586, 55.744980>,  <54.483524, 57.551311, 55.638721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.109501, 57.870586, 55.744980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.895607, 57.825020, 56.079903>,  <54.767273, 57.797680, 56.280857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.895607, 57.825020, 56.079903>,  <55.109501, 57.870586, 55.744980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.895607, 57.825020, 56.079903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842882, -0.142370, 0.518923,
		0.060092, 0.983236, 0.172151,
		-0.534733, -0.113919, 0.837307,
		54.735188, 57.790844, 56.331093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.226410, 58.430462, 56.286751>,  <55.109501, 57.870586, 55.744980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.226410, 58.430462, 56.286751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.108208, 58.093529, 56.467041>,  <55.037285, 57.891369, 56.575214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.108208, 58.093529, 56.467041>,  <55.226410, 58.430462, 56.286751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.108208, 58.093529, 56.467041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915543, -0.114940, 0.385448,
		-0.272868, 0.526561, 0.805156,
		-0.295506, -0.842332, 0.450726,
		55.019554, 57.840828, 56.602261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.181896, 58.491428, 56.959042>,  <55.226410, 58.430462, 56.286751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.181896, 58.491428, 56.959042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.259804, 58.101135, 56.919022>,  <55.306549, 57.866959, 56.895008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.259804, 58.101135, 56.919022>,  <55.181896, 58.491428, 56.959042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.259804, 58.101135, 56.919022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792731, 0.096526, 0.601880,
		-0.577617, -0.196540, 0.792295,
		0.194771, -0.975733, -0.100049,
		55.318233, 57.808414, 56.889008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.541473, 58.263355, 57.623222>,  <55.181896, 58.491428, 56.959042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.541473, 58.263355, 57.623222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.612320, 57.961773, 57.370186>,  <55.654827, 57.780823, 57.218365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.612320, 57.961773, 57.370186>,  <55.541473, 58.263355, 57.623222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.612320, 57.961773, 57.370186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856751, -0.198216, 0.476118,
		-0.484363, -0.626305, 0.610847,
		0.177115, -0.753958, -0.632596,
		55.665455, 57.735584, 57.180408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.479229, 57.514416, 57.938744>,  <55.541473, 58.263355, 57.623222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.479229, 57.514416, 57.938744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.729851, 57.631790, 57.649933>,  <55.880222, 57.702217, 57.476646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.729851, 57.631790, 57.649933>,  <55.479229, 57.514416, 57.938744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.729851, 57.631790, 57.649933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779213, -0.216665, 0.588118,
		0.016139, -0.931101, -0.364404,
		0.626551, 0.293440, -0.722029,
		55.917816, 57.719822, 57.433323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.010391, 57.013725, 57.734997>,  <55.479229, 57.514416, 57.938744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.010391, 57.013725, 57.734997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.168922, 57.377586, 57.685265>,  <56.264042, 57.595901, 57.655426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.168922, 57.377586, 57.685265>,  <56.010391, 57.013725, 57.734997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.168922, 57.377586, 57.685265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747880, -0.241323, 0.618417,
		0.532541, -0.338078, -0.775954,
		0.396328, 0.909652, -0.124327,
		56.287823, 57.650482, 57.647968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.761360, 56.911236, 57.824009>,  <56.010391, 57.013725, 57.734997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.761360, 56.911236, 57.824009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.738991, 57.310326, 57.839043>,  <56.725567, 57.549782, 57.848064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.738991, 57.310326, 57.839043>,  <56.761360, 56.911236, 57.824009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.738991, 57.310326, 57.839043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800899, 0.022353, 0.598382,
		0.596182, 0.063566, -0.800329,
		-0.055927, 0.997727, 0.037583,
		56.722214, 57.609642, 57.850319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.345329, 57.135899, 57.609379>,  <56.761360, 56.911236, 57.824009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.345329, 57.135899, 57.609379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.198631, 57.405640, 57.865738>,  <57.110611, 57.567486, 58.019554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.198631, 57.405640, 57.865738>,  <57.345329, 57.135899, 57.609379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.198631, 57.405640, 57.865738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881569, 0.031830, 0.470980,
		0.297206, 0.737725, -0.606161,
		-0.366747, 0.674351, 0.640895,
		57.088608, 57.607944, 58.058006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.716503, 57.891323, 57.650230>,  <57.345329, 57.135899, 57.609379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.716503, 57.891323, 57.650230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.569740, 57.760811, 57.998695>,  <57.481682, 57.682503, 58.207775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.569740, 57.760811, 57.998695>,  <57.716503, 57.891323, 57.650230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.569740, 57.760811, 57.998695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892860, 0.139351, 0.428233,
		-0.261121, 0.934945, 0.240195,
		-0.366903, -0.326281, 0.871162,
		57.459671, 57.662926, 58.260044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.795235, 58.421837, 58.276131>,  <57.716503, 57.891323, 57.650230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.795235, 58.421837, 58.276131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.813576, 58.034286, 58.373436>,  <57.824581, 57.801758, 58.431820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.813576, 58.034286, 58.373436>,  <57.795235, 58.421837, 58.276131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.813576, 58.034286, 58.373436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928245, 0.131309, 0.348021,
		-0.369132, 0.209851, 0.905375,
		0.045852, -0.968876, 0.243263,
		57.827332, 57.743622, 58.446415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.169338, 58.463318, 58.964207>,  <57.795235, 58.421837, 58.276131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.169338, 58.463318, 58.964207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.190048, 58.100655, 58.796738>,  <58.202477, 57.883057, 58.696255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.190048, 58.100655, 58.796738>,  <58.169338, 58.463318, 58.964207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.190048, 58.100655, 58.796738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969205, -0.055444, 0.239934,
		-0.240751, -0.418202, 0.875869,
		0.051779, -0.906660, -0.418671,
		58.205582, 57.828655, 58.671135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.570545, 58.069424, 59.342278>,  <58.169338, 58.463318, 58.964207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.570545, 58.069424, 59.342278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.574493, 57.940002, 58.963814>,  <58.576862, 57.862350, 58.736736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.574493, 57.940002, 58.963814>,  <58.570545, 58.069424, 59.342278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.574493, 57.940002, 58.963814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997638, -0.061137, 0.031314,
		-0.067977, -0.944231, 0.322190,
		0.009870, -0.323557, -0.946157,
		58.577454, 57.842934, 58.679966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.833221, 57.490360, 59.236286>,  <58.570545, 58.069424, 59.342278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.833221, 57.490360, 59.236286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.916954, 57.610512, 58.864059>,  <58.967194, 57.682602, 58.640724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.916954, 57.610512, 58.864059>,  <58.833221, 57.490360, 59.236286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.916954, 57.610512, 58.864059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958784, -0.250036, 0.134969,
		-0.192132, -0.920463, -0.340342,
		0.209331, 0.300382, -0.930565,
		58.979752, 57.700626, 58.584888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.183151, 56.983543, 58.724674>,  <58.833221, 57.490360, 59.236286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.183151, 56.983543, 58.724674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.280838, 57.355900, 58.616005>,  <59.339451, 57.579311, 58.550804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.280838, 57.355900, 58.616005>,  <59.183151, 56.983543, 58.724674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.280838, 57.355900, 58.616005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968210, -0.249706, 0.014730,
		-0.054126, -0.266631, -0.962278,
		0.244214, 0.930889, -0.271670,
		59.354103, 57.635166, 58.534504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.655792, 57.031399, 58.135712>,  <59.183151, 56.983543, 58.724674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.655792, 57.031399, 58.135712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.706772, 57.367844, 58.345963>,  <59.737362, 57.569710, 58.472115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.706772, 57.367844, 58.345963>,  <59.655792, 57.031399, 58.135712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.706772, 57.367844, 58.345963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989871, -0.074455, -0.120877,
		-0.062536, 0.535710, -0.842083,
		0.127452, 0.841113, 0.525628,
		59.745007, 57.620178, 58.503651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.155289, 57.368980, 57.842445>,  <59.655792, 57.031399, 58.135712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.155289, 57.368980, 57.842445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.165375, 57.486485, 58.224663>,  <60.171429, 57.556988, 58.453995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.165375, 57.486485, 58.224663>,  <60.155289, 57.368980, 57.842445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.165375, 57.486485, 58.224663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999395, 0.015478, -0.031135,
		-0.023936, 0.955755, -0.293190,
		0.025219, 0.293758, 0.955547,
		60.172939, 57.574612, 58.511326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.661091, 57.910488, 57.866371>,  <60.155289, 57.368980, 57.842445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.661091, 57.910488, 57.866371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.610031, 57.792969, 58.245293>,  <60.579395, 57.722458, 58.472645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.610031, 57.792969, 58.245293>,  <60.661091, 57.910488, 57.866371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.610031, 57.792969, 58.245293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970406, 0.160403, 0.180505,
		-0.204983, 0.942312, 0.264630,
		-0.127645, -0.293800, 0.947306,
		60.571739, 57.704830, 58.529484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.876125, 58.462738, 58.278618>,  <60.661091, 57.910488, 57.866371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.876125, 58.462738, 58.278618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.915573, 58.101532, 58.445877>,  <60.939240, 57.884808, 58.546230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.915573, 58.101532, 58.445877>,  <60.876125, 58.462738, 58.278618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.915573, 58.101532, 58.445877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991980, 0.122587, 0.030785,
		-0.079059, 0.411755, 0.907859,
		0.098616, -0.903012, 0.418145,
		60.945156, 57.830627, 58.571320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.222351, 58.607548, 58.850540>,  <60.876125, 58.462738, 58.278618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.222351, 58.607548, 58.850540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.281982, 58.218285, 58.780411>,  <61.317760, 57.984726, 58.738335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.281982, 58.218285, 58.780411>,  <61.222351, 58.607548, 58.850540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.281982, 58.218285, 58.780411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985040, 0.130656, 0.112363,
		-0.086441, -0.189450, 0.978078,
		0.149079, -0.973159, -0.175322,
		61.326706, 57.926338, 58.727814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.616093, 58.242989, 59.305161>,  <61.222351, 58.607548, 58.850540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.616093, 58.242989, 59.305161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.677101, 57.944347, 59.046143>,  <61.713707, 57.765163, 58.890732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.677101, 57.944347, 59.046143>,  <61.616093, 58.242989, 59.305161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.677101, 57.944347, 59.046143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930319, -0.112659, 0.349020,
		-0.333532, -0.655661, 0.677396,
		0.152524, -0.746604, -0.647549,
		61.722858, 57.720367, 58.851879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.752037, 57.507847, 59.717903>,  <61.616093, 58.242989, 59.305161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.752037, 57.507847, 59.717903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.907440, 57.538395, 59.350594>,  <62.000683, 57.556725, 59.130207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.907440, 57.538395, 59.350594>,  <61.752037, 57.507847, 59.717903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.907440, 57.538395, 59.350594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921148, -0.057532, 0.384938,
		-0.023431, -0.995418, -0.092703,
		0.388507, 0.076374, -0.918275,
		62.023991, 57.561306, 59.075111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.201862, 56.931286, 59.597809>,  <61.752037, 57.507847, 59.717903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.201862, 56.931286, 59.597809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.302696, 57.284855, 59.440262>,  <62.363197, 57.496998, 59.345734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.302696, 57.284855, 59.440262>,  <62.201862, 56.931286, 59.597809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.302696, 57.284855, 59.440262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919730, -0.092276, 0.381552,
		0.300919, -0.458435, -0.836233,
		0.252081, 0.883925, -0.393869,
		62.378319, 57.550034, 59.322102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.810341, 56.935902, 59.122715>,  <62.201862, 56.931286, 59.597809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.810341, 56.935902, 59.122715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.780693, 57.306911, 59.269257>,  <62.762905, 57.529518, 59.357182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.780693, 57.306911, 59.269257>,  <62.810341, 56.935902, 59.122715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.780693, 57.306911, 59.269257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972991, -0.013273, 0.230459,
		0.218618, 0.373537, -0.901486,
		-0.074120, 0.927520, 0.366350,
		62.758457, 57.585167, 59.379162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.464455, 57.274948, 59.281883>,  <62.810341, 56.935902, 59.122715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.464455, 57.274948, 59.281883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.860168, 57.324711, 59.312447>,  <64.097595, 57.354568, 59.330784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.860168, 57.324711, 59.312447>,  <63.464455, 57.274948, 59.281883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.860168, 57.324711, 59.312447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141362, 0.685347, 0.714364,
		0.036504, -0.717511, 0.695590,
		0.989285, 0.124407, 0.076411,
		64.156952, 57.362034, 59.335369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.627296, 57.435150, 60.018833>,  <63.464455, 57.274948, 59.281883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.627296, 57.435150, 60.018833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.926659, 57.570946, 59.790924>,  <64.106277, 57.652424, 59.654179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.926659, 57.570946, 59.790924>,  <63.627296, 57.435150, 60.018833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.926659, 57.570946, 59.790924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118480, 0.776815, 0.618483,
		0.652578, -0.530380, 0.541146,
		0.748401, 0.339493, -0.569772,
		64.151176, 57.672794, 59.619991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.234558, 57.531723, 60.401783>,  <63.627296, 57.435150, 60.018833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.234558, 57.531723, 60.401783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.233551, 57.777340, 60.086075>,  <64.232948, 57.924709, 59.896652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.233551, 57.777340, 60.086075>,  <64.234558, 57.531723, 60.401783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.233551, 57.777340, 60.086075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143046, 0.781374, 0.607447,
		0.989713, -0.111370, -0.089807,
		-0.002521, 0.614044, -0.789268,
		64.232796, 57.961552, 59.849293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.076080, 57.833229, 61.079544>,  <64.234558, 57.531723, 60.401783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.076080, 57.833229, 61.079544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.250137, 57.503578, 61.224571>,  <64.354576, 57.305786, 61.311588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.250137, 57.503578, 61.224571>,  <64.076080, 57.833229, 61.079544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.250137, 57.503578, 61.224571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887244, 0.324025, -0.328337,
		0.153114, 0.464559, 0.872205,
		0.435148, -0.824132, 0.362564,
		64.380684, 57.256340, 61.333340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.607025, 57.915169, 61.658611>,  <64.076080, 57.833229, 61.079544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.607025, 57.915169, 61.658611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.715309, 57.615768, 61.416466>,  <64.780281, 57.436131, 61.271179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.715309, 57.615768, 61.416466>,  <64.607025, 57.915169, 61.658611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.715309, 57.615768, 61.416466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896724, 0.424798, -0.124227,
		0.350141, -0.509212, 0.786196,
		0.270717, -0.748498, -0.605362,
		64.796524, 57.391220, 61.234856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.271179, 57.580688, 61.936256>,  <64.607025, 57.915169, 61.658611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.271179, 57.580688, 61.936256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.246567, 57.544830, 61.538628>,  <65.231796, 57.523315, 61.300049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.246567, 57.544830, 61.538628>,  <65.271179, 57.580688, 61.936256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.246567, 57.544830, 61.538628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965542, 0.246975, -0.082045,
		0.252865, -0.964866, 0.071359,
		-0.061539, -0.089646, -0.994071,
		65.228104, 57.517937, 61.240406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.777481, 57.038734, 61.644157>,  <65.271179, 57.580688, 61.936256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.777481, 57.038734, 61.644157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.695137, 57.323936, 61.376053>,  <65.645729, 57.495056, 61.215191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.695137, 57.323936, 61.376053>,  <65.777481, 57.038734, 61.644157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.695137, 57.323936, 61.376053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973540, 0.218656, -0.066410,
		0.099205, -0.666195, -0.739150,
		-0.205862, 0.713004, -0.670259,
		65.633377, 57.537838, 61.174976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.298676, 56.934254, 61.153732>,  <65.777481, 57.038734, 61.644157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.298676, 56.934254, 61.153732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.160904, 57.309631, 61.143272>,  <66.078239, 57.534859, 61.136997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.160904, 57.309631, 61.143272>,  <66.298676, 56.934254, 61.153732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.160904, 57.309631, 61.143272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937196, 0.345338, 0.049036,
		0.055050, -0.007622, -0.998454,
		-0.344431, 0.938447, -0.026154,
		66.057571, 57.591164, 61.135426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.351700, 57.388508, 60.490841>,  <66.298676, 56.934254, 61.153732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.351700, 57.388508, 60.490841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.365898, 57.609982, 60.823631>,  <66.374413, 57.742867, 61.023304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.365898, 57.609982, 60.823631>,  <66.351700, 57.388508, 60.490841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.365898, 57.609982, 60.823631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904348, 0.336506, -0.262523,
		-0.425318, 0.761710, -0.488777,
		0.035489, 0.553680, 0.831973,
		66.376541, 57.776085, 61.073223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.517967, 58.143803, 60.271687>,  <66.351700, 57.388508, 60.490841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.517967, 58.143803, 60.271687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.676865, 57.991196, 60.605545>,  <66.772202, 57.899632, 60.805862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.676865, 57.991196, 60.605545>,  <66.517967, 58.143803, 60.271687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.676865, 57.991196, 60.605545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915700, 0.224955, -0.333001,
		-0.060714, 0.896573, 0.438716,
		0.397250, -0.381514, 0.834649,
		66.796043, 57.876743, 60.855938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.948097, 58.670883, 60.583134>,  <66.517967, 58.143803, 60.271687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.948097, 58.670883, 60.583134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.042152, 58.289982, 60.661034>,  <67.098587, 58.061443, 60.707771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.042152, 58.289982, 60.661034>,  <66.948097, 58.670883, 60.583134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.042152, 58.289982, 60.661034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968927, 0.245473, 0.030385,
		-0.076739, 0.181550, 0.980383,
		0.235141, -0.952251, 0.194746,
		67.112694, 58.004307, 60.719456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.466743, 58.740017, 61.094456>,  <66.948097, 58.670883, 60.583134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.466743, 58.740017, 61.094456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.486725, 58.384212, 60.912788>,  <67.498718, 58.170731, 60.803787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.486725, 58.384212, 60.912788>,  <67.466743, 58.740017, 61.094456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.486725, 58.384212, 60.912788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998084, 0.061091, -0.009856,
		0.036513, -0.452808, 0.890860,
		0.049960, -0.889513, -0.454171,
		67.501717, 58.117359, 60.776539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.085831, 58.298798, 61.307426>,  <67.466743, 58.740017, 61.094456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.085831, 58.298798, 61.307426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.974358, 58.166679, 60.946709>,  <67.907471, 58.087410, 60.730278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.974358, 58.166679, 60.946709>,  <68.085831, 58.298798, 61.307426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.974358, 58.166679, 60.946709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926480, 0.154825, -0.343021,
		0.252918, -0.931094, 0.262862,
		-0.278687, -0.330292, -0.901798,
		67.890755, 58.067593, 60.676170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.465919, 57.724731, 61.044205>,  <68.085831, 58.298798, 61.307426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.465919, 57.724731, 61.044205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.331154, 57.961506, 60.751328>,  <68.250298, 58.103569, 60.575600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.331154, 57.961506, 60.751328>,  <68.465919, 57.724731, 61.044205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.331154, 57.961506, 60.751328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939347, 0.264331, -0.218535,
		0.064183, -0.761408, -0.645088,
		-0.336911, 0.591935, -0.732192,
		68.230080, 58.139088, 60.531670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.809532, 57.656261, 60.394341>,  <68.465919, 57.724731, 61.044205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.809532, 57.656261, 60.394341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.689430, 58.036526, 60.425568>,  <68.617371, 58.264683, 60.444302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.689430, 58.036526, 60.425568>,  <68.809532, 57.656261, 60.394341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.689430, 58.036526, 60.425568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918612, 0.310240, -0.244754,
		-0.256895, -0.001781, -0.966438,
		-0.300263, 0.950657, 0.078063,
		68.599350, 58.321724, 60.448986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.912849, 58.109432, 59.728165>,  <68.809532, 57.656261, 60.394341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.912849, 58.109432, 59.728165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.926712, 58.297852, 60.080734>,  <68.935028, 58.410904, 60.292278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.926712, 58.297852, 60.080734>,  <68.912849, 58.109432, 59.728165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.926712, 58.297852, 60.080734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929040, 0.309880, -0.202137,
		-0.368353, 0.825887, -0.426880,
		0.034660, 0.471046, 0.881427,
		68.937111, 58.439167, 60.345161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.979263, 58.776081, 59.498913>,  <68.912849, 58.109432, 59.728165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.979263, 58.776081, 59.498913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.130142, 58.684372, 59.857834>,  <69.220673, 58.629345, 60.073185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.130142, 58.684372, 59.857834>,  <68.979263, 58.776081, 59.498913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.130142, 58.684372, 59.857834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915485, 0.238801, -0.323823,
		-0.140033, 0.943613, 0.299974,
		0.377198, -0.229276, 0.897304,
		69.243301, 58.615589, 60.127026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.631966, 59.209076, 59.501133>,  <68.979263, 58.776081, 59.498913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.631966, 59.209076, 59.501133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.654243, 58.928131, 59.784988>,  <69.667610, 58.759563, 59.955303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.654243, 58.928131, 59.784988>,  <69.631966, 59.209076, 59.501133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.654243, 58.928131, 59.784988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981037, -0.093658, -0.169688,
		0.185646, 0.705635, 0.683824,
		0.055692, -0.702358, 0.709642,
		69.670952, 58.717422, 59.997879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.216530, 59.375568, 59.958496>,  <69.631966, 59.209076, 59.501133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.216530, 59.375568, 59.958496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.168686, 58.983490, 60.021637>,  <70.139977, 58.748245, 60.059521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.168686, 58.983490, 60.021637>,  <70.216530, 59.375568, 59.958496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.168686, 58.983490, 60.021637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990513, -0.106985, 0.086241,
		-0.067645, 0.166670, 0.983690,
		-0.119614, -0.980192, 0.157852,
		70.132805, 58.689434, 60.068993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.576096, 59.093819, 60.577820>,  <70.216530, 59.375568, 59.958496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.576096, 59.093819, 60.577820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.545494, 58.799175, 60.309029>,  <70.527138, 58.622391, 60.147755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.545494, 58.799175, 60.309029>,  <70.576096, 59.093819, 60.577820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.545494, 58.799175, 60.309029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912540, -0.323295, 0.250501,
		-0.401769, -0.594048, 0.696914,
		-0.076499, -0.736605, -0.671982,
		70.522545, 58.578194, 60.107433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.129303, 58.560791, 60.842247>,  <70.576096, 59.093819, 60.577820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.129303, 58.560791, 60.842247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.054443, 58.456326, 60.463455>,  <71.009529, 58.393646, 60.236179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.054443, 58.456326, 60.463455>,  <71.129303, 58.560791, 60.842247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.054443, 58.456326, 60.463455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722901, -0.689335, 0.047240,
		-0.665122, -0.675730, 0.317807,
		-0.187154, -0.261163, -0.946978,
		70.998299, 58.377975, 60.179363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.158257, 57.889614, 60.872787>,  <71.129303, 58.560791, 60.842247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.158257, 57.889614, 60.872787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.238037, 58.007442, 60.498955>,  <71.285904, 58.078140, 60.274654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.238037, 58.007442, 60.498955>,  <71.158257, 57.889614, 60.872787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.238037, 58.007442, 60.498955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828610, -0.559825, 0.000393,
		-0.523087, -0.774484, -0.355744,
		0.199459, 0.294568, -0.934583,
		71.297874, 58.095814, 60.218578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.363243, 57.318192, 60.449638>,  <71.158257, 57.889614, 60.872787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.363243, 57.318192, 60.449638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.543587, 57.667374, 60.375145>,  <71.651794, 57.876884, 60.330448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.543587, 57.667374, 60.375145>,  <71.363243, 57.318192, 60.449638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.543587, 57.667374, 60.375145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870613, -0.384049, 0.307472,
		0.196887, -0.300761, -0.933155,
		0.450853, 0.872954, -0.186232,
		71.678841, 57.929260, 60.319275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.994514, 57.151955, 60.108410>,  <71.363243, 57.318192, 60.449638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.994514, 57.151955, 60.108410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.043289, 57.511768, 60.276207>,  <72.072556, 57.727657, 60.376884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.043289, 57.511768, 60.276207>,  <71.994514, 57.151955, 60.108410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.043289, 57.511768, 60.276207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839832, -0.318752, 0.439407,
		0.528975, 0.298725, -0.794323,
		0.121931, 0.899534, 0.419491,
		72.079872, 57.781628, 60.402054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.546974, 57.672897, 59.786533>,  <71.994514, 57.151955, 60.108410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.546974, 57.672897, 59.786533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.524879, 57.607571, 60.180542>,  <72.511627, 57.568375, 60.416946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.524879, 57.607571, 60.180542>,  <72.546974, 57.672897, 59.786533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.524879, 57.607571, 60.180542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926182, -0.376928, -0.010562,
		0.373009, 0.911730, 0.172083,
		-0.055233, -0.163320, 0.985026,
		72.508308, 57.558575, 60.476051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.965599, 58.084824, 60.160347>,  <72.546974, 57.672897, 59.786533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.965599, 58.084824, 60.160347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.916473, 57.731804, 60.341904>,  <72.887001, 57.519993, 60.450836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.916473, 57.731804, 60.341904>,  <72.965599, 58.084824, 60.160347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.916473, 57.731804, 60.341904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985859, -0.161032, -0.046372,
		0.114017, 0.441780, 0.889849,
		-0.122808, -0.882553, 0.453893,
		72.879631, 57.467037, 60.478073>
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
