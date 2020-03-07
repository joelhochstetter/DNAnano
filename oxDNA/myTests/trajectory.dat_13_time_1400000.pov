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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<36.852734, 47.566628, 55.513653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088333, 47.276421, 55.656036>,  <37.229691, 47.102295, 55.741467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088333, 47.276421, 55.656036>,  <36.852734, 47.566628, 55.513653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088333, 47.276421, 55.656036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302306, -0.210680, -0.929637,
		0.749464, 0.655159, 0.095240,
		0.588995, -0.725521, 0.355955,
		37.265030, 47.058765, 55.762821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454391, 47.760723, 55.282421>,  <36.852734, 47.566628, 55.513653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454391, 47.760723, 55.282421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506462, 47.373344, 55.367439>,  <37.537704, 47.140919, 55.418449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506462, 47.373344, 55.367439>,  <37.454391, 47.760723, 55.282421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506462, 47.373344, 55.367439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567474, -0.103011, -0.816922,
		0.813037, 0.226952, 0.536157,
		0.130172, -0.968443, 0.212541,
		37.545513, 47.082813, 55.431202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171303, 47.581718, 55.187893>,  <37.454391, 47.760723, 55.282421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171303, 47.581718, 55.187893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976532, 47.233505, 55.159370>,  <37.859669, 47.024578, 55.142258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976532, 47.233505, 55.159370>,  <38.171303, 47.581718, 55.187893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976532, 47.233505, 55.159370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418421, -0.160823, -0.893901,
		0.766701, -0.465095, 0.442556,
		-0.486923, -0.870530, -0.071303,
		37.830456, 46.972347, 55.137981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679981, 47.117844, 55.042587>,  <38.171303, 47.581718, 55.187893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679981, 47.117844, 55.042587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353714, 46.909760, 54.941345>,  <38.157951, 46.784908, 54.880600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353714, 46.909760, 54.941345>,  <38.679981, 47.117844, 55.042587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353714, 46.909760, 54.941345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448330, -0.291906, -0.844861,
		0.365623, -0.802603, 0.471326,
		-0.815671, -0.520211, -0.253104,
		38.109013, 46.753696, 54.865414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856544, 46.496822, 54.899323>,  <38.679981, 47.117844, 55.042587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856544, 46.496822, 54.899323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505013, 46.513321, 54.709183>,  <38.294094, 46.523220, 54.595100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505013, 46.513321, 54.709183>,  <38.856544, 46.496822, 54.899323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505013, 46.513321, 54.709183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443154, -0.298662, -0.845231,
		-0.176829, -0.953467, 0.244196,
		-0.878832, 0.041245, -0.475345,
		38.241364, 46.525696, 54.566578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796402, 45.956627, 54.653316>,  <38.856544, 46.496822, 54.899323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796402, 45.956627, 54.653316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527603, 46.123894, 54.408840>,  <38.366325, 46.224255, 54.262154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527603, 46.123894, 54.408840>,  <38.796402, 45.956627, 54.653316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527603, 46.123894, 54.408840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308472, -0.592251, -0.744368,
		-0.673251, -0.688748, 0.268997,
		-0.671996, 0.418168, -0.611193,
		38.326004, 46.249344, 54.225483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512299, 45.406406, 54.270020>,  <38.796402, 45.956627, 54.653316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512299, 45.406406, 54.270020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433601, 45.743412, 54.069435>,  <38.386383, 45.945614, 53.949085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433601, 45.743412, 54.069435>,  <38.512299, 45.406406, 54.270020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433601, 45.743412, 54.069435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156755, -0.477846, -0.864344,
		-0.967843, -0.248660, -0.038056,
		-0.196743, 0.842515, -0.501459,
		38.374580, 45.996166, 53.918999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023380, 45.193806, 53.689796>,  <38.512299, 45.406406, 54.270020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023380, 45.193806, 53.689796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227806, 45.518909, 53.577919>,  <38.350464, 45.713974, 53.510792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227806, 45.518909, 53.577919>,  <38.023380, 45.193806, 53.689796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227806, 45.518909, 53.577919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232735, -0.444090, -0.865228,
		-0.827432, 0.377096, -0.416118,
		0.511068, 0.812762, -0.279691,
		38.381126, 45.762737, 53.494011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846172, 45.221073, 53.033669>,  <38.023380, 45.193806, 53.689796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846172, 45.221073, 53.033669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172951, 45.451317, 53.047924>,  <38.369019, 45.589462, 53.056477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172951, 45.451317, 53.047924>,  <37.846172, 45.221073, 53.033669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172951, 45.451317, 53.047924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296031, -0.365515, -0.882476,
		-0.494933, 0.731489, -0.469005,
		0.816950, 0.575606, 0.035638,
		38.418037, 45.624001, 53.058617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187668, 45.210201, 52.304146>,  <37.846172, 45.221073, 53.033669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187668, 45.210201, 52.304146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484688, 45.374371, 52.515869>,  <38.662899, 45.472874, 52.642902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484688, 45.374371, 52.515869>,  <38.187668, 45.210201, 52.304146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484688, 45.374371, 52.515869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635213, -0.180886, -0.750855,
		-0.212425, 0.893773, -0.395025,
		0.742549, 0.410426, 0.529312,
		38.707451, 45.497498, 52.674664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590458, 45.632832, 51.843578>,  <38.187668, 45.210201, 52.304146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590458, 45.632832, 51.843578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865227, 45.582817, 52.129936>,  <39.030090, 45.552807, 52.301750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865227, 45.582817, 52.129936>,  <38.590458, 45.632832, 51.843578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865227, 45.582817, 52.129936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641689, -0.358045, -0.678262,
		0.341127, 0.925295, -0.165717,
		0.686926, -0.125035, 0.715890,
		39.071304, 45.545307, 52.344704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145058, 45.947227, 51.507866>,  <38.590458, 45.632832, 51.843578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145058, 45.947227, 51.507866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305077, 45.716377, 51.792648>,  <39.401089, 45.577866, 51.963520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305077, 45.716377, 51.792648>,  <39.145058, 45.947227, 51.507866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305077, 45.716377, 51.792648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696673, -0.313253, -0.645383,
		0.595493, 0.754185, 0.276756,
		0.400043, -0.577129, 0.711960,
		39.425091, 45.543240, 52.006237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833725, 46.113384, 51.425499>,  <39.145058, 45.947227, 51.507866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833725, 46.113384, 51.425499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815735, 45.753521, 51.599213>,  <39.804939, 45.537605, 51.703442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815735, 45.753521, 51.599213>,  <39.833725, 46.113384, 51.425499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815735, 45.753521, 51.599213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862071, -0.254615, -0.438184,
		0.504788, 0.354674, 0.787017,
		-0.044974, -0.899654, 0.434281,
		39.802242, 45.483624, 51.729496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456123, 46.036705, 51.673672>,  <39.833725, 46.113384, 51.425499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456123, 46.036705, 51.673672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313278, 45.663082, 51.673248>,  <40.227573, 45.438908, 51.672997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313278, 45.663082, 51.673248>,  <40.456123, 46.036705, 51.673672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313278, 45.663082, 51.673248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721573, -0.275154, -0.635313,
		0.593132, -0.227637, 0.772254,
		-0.357110, -0.934062, -0.001054,
		40.206146, 45.382862, 51.672932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987209, 45.556953, 51.711765>,  <40.456123, 46.036705, 51.673672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987209, 45.556953, 51.711765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718506, 45.312828, 51.543835>,  <40.557281, 45.166355, 51.443077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718506, 45.312828, 51.543835>,  <40.987209, 45.556953, 51.711765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718506, 45.312828, 51.543835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649792, -0.213362, -0.729552,
		0.355678, -0.762888, 0.539903,
		-0.671761, -0.610310, -0.419831,
		40.516979, 45.129734, 51.417885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285179, 44.848373, 51.498569>,  <40.987209, 45.556953, 51.711765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285179, 44.848373, 51.498569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970093, 44.948627, 51.273472>,  <40.781040, 45.008778, 51.138412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970093, 44.948627, 51.273472>,  <41.285179, 44.848373, 51.498569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970093, 44.948627, 51.273472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504252, -0.262424, -0.822717,
		-0.353877, -0.931835, 0.080334,
		-0.787719, 0.250632, -0.562746,
		40.733776, 45.023815, 51.104649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370842, 44.358490, 51.071667>,  <41.285179, 44.848373, 51.498569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370842, 44.358490, 51.071667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089363, 44.581535, 50.895542>,  <40.920475, 44.715363, 50.789867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089363, 44.581535, 50.895542>,  <41.370842, 44.358490, 51.071667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089363, 44.581535, 50.895542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397942, -0.204068, -0.894427,
		-0.588600, -0.804624, -0.078297,
		-0.703700, 0.557617, -0.440308,
		40.878254, 44.748821, 50.763451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206467, 43.936798, 50.511375>,  <41.370842, 44.358490, 51.071667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206467, 43.936798, 50.511375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069077, 44.302147, 50.423943>,  <40.986641, 44.521355, 50.371483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069077, 44.302147, 50.423943>,  <41.206467, 43.936798, 50.511375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069077, 44.302147, 50.423943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172654, -0.167368, -0.970659,
		-0.923155, -0.371138, -0.100210,
		-0.343476, 0.913370, -0.218585,
		40.966034, 44.576157, 50.358368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742630, 43.810677, 49.984055>,  <41.206467, 43.936798, 50.511375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742630, 43.810677, 49.984055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836197, 44.199173, 49.966301>,  <40.892338, 44.432270, 49.955650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836197, 44.199173, 49.966301>,  <40.742630, 43.810677, 49.984055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836197, 44.199173, 49.966301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164441, -0.084514, -0.982760,
		-0.958248, 0.222590, -0.179482,
		0.233921, 0.971242, -0.044382,
		40.906372, 44.490547, 49.952988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391140, 44.031990, 49.358913>,  <40.742630, 43.810677, 49.984055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391140, 44.031990, 49.358913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678345, 44.298527, 49.439365>,  <40.850666, 44.458447, 49.487637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678345, 44.298527, 49.439365>,  <40.391140, 44.031990, 49.358913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678345, 44.298527, 49.439365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270880, -0.001328, -0.962612,
		-0.641158, 0.745648, -0.181451,
		0.718011, 0.666339, 0.201130,
		40.893749, 44.498428, 49.499702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385212, 44.618114, 48.819931>,  <40.391140, 44.031990, 49.358913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385212, 44.618114, 48.819931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758270, 44.613956, 48.964188>,  <40.982105, 44.611462, 49.050743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758270, 44.613956, 48.964188>,  <40.385212, 44.618114, 48.819931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758270, 44.613956, 48.964188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360373, 0.075155, -0.929776,
		-0.017441, 0.997118, 0.073839,
		0.932645, -0.010393, 0.360645,
		41.038063, 44.610840, 49.072380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753372, 45.055180, 48.387573>,  <40.385212, 44.618114, 48.819931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753372, 45.055180, 48.387573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050690, 44.849091, 48.558250>,  <41.229080, 44.725437, 48.660656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050690, 44.849091, 48.558250>,  <40.753372, 45.055180, 48.387573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050690, 44.849091, 48.558250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491494, -0.012106, -0.870797,
		0.453821, 0.856970, 0.244231,
		0.743290, -0.515224, 0.426689,
		41.273678, 44.694523, 48.686256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336792, 45.405941, 48.092453>,  <40.753372, 45.055180, 48.387573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336792, 45.405941, 48.092453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461243, 45.053738, 48.235508>,  <41.535912, 44.842415, 48.321339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461243, 45.053738, 48.235508>,  <41.336792, 45.405941, 48.092453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461243, 45.053738, 48.235508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571675, -0.127221, -0.810557,
		0.759201, 0.456638, 0.463784,
		0.311128, -0.880509, 0.357635,
		41.554581, 44.789585, 48.342800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110550, 45.387310, 48.044102>,  <41.336792, 45.405941, 48.092453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110550, 45.387310, 48.044102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998817, 45.003239, 48.042000>,  <41.931778, 44.772797, 48.040741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998817, 45.003239, 48.042000>,  <42.110550, 45.387310, 48.044102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998817, 45.003239, 48.042000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614619, -0.174591, -0.769261,
		0.737713, -0.218103, 0.638914,
		-0.279326, -0.960182, -0.005252,
		41.915020, 44.715183, 48.040424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662701, 44.853752, 48.067646>,  <42.110550, 45.387310, 48.044102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662701, 44.853752, 48.067646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357063, 44.638596, 47.925190>,  <42.173683, 44.509502, 47.839718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357063, 44.638596, 47.925190>,  <42.662701, 44.853752, 48.067646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357063, 44.638596, 47.925190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561885, -0.283687, -0.777050,
		0.316936, -0.793848, 0.518996,
		-0.764091, -0.537892, -0.356141,
		42.127834, 44.477226, 47.818348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961670, 44.510048, 47.596714>,  <42.662701, 44.853752, 48.067646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961670, 44.510048, 47.596714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586334, 44.397594, 47.516232>,  <42.361134, 44.330124, 47.467941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586334, 44.397594, 47.516232>,  <42.961670, 44.510048, 47.596714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586334, 44.397594, 47.516232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205280, 0.015203, -0.978585,
		0.278170, -0.959548, 0.043445,
		-0.938340, -0.281132, -0.201205,
		42.304832, 44.313255, 47.455872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004868, 43.961140, 47.210659>,  <42.961670, 44.510048, 47.596714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004868, 43.961140, 47.210659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.637100, 44.107876, 47.153961>,  <42.416439, 44.195915, 47.119942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.637100, 44.107876, 47.153961>,  <43.004868, 43.961140, 47.210659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637100, 44.107876, 47.153961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128325, -0.060861, -0.989863,
		-0.371746, -0.928292, 0.008882,
		-0.919423, 0.366838, -0.141748,
		42.361275, 44.217926, 47.111439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861877, 43.549911, 46.700409>,  <43.004868, 43.961140, 47.210659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861877, 43.549911, 46.700409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616119, 43.864704, 46.677837>,  <42.468666, 44.053577, 46.664295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616119, 43.864704, 46.677837>,  <42.861877, 43.549911, 46.700409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616119, 43.864704, 46.677837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038295, -0.041692, -0.998396,
		-0.788069, -0.615570, -0.004522,
		-0.614395, 0.786978, -0.056430,
		42.431801, 44.100800, 46.660908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329029, 43.389553, 46.257370>,  <42.861877, 43.549911, 46.700409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329029, 43.389553, 46.257370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349060, 43.789051, 46.256638>,  <42.361080, 44.028751, 46.256199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349060, 43.789051, 46.256638>,  <42.329029, 43.389553, 46.257370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349060, 43.789051, 46.256638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015535, -0.001055, -0.999879,
		-0.998625, 0.050101, 0.015463,
		0.050079, 0.998744, -0.001832,
		42.364082, 44.088673, 46.256088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906532, 43.615829, 45.660362>,  <42.329029, 43.389553, 46.257370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906532, 43.615829, 45.660362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097778, 43.958027, 45.739887>,  <42.212528, 44.163345, 45.787601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097778, 43.958027, 45.739887>,  <41.906532, 43.615829, 45.660362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097778, 43.958027, 45.739887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189559, 0.321540, -0.927728,
		-0.857595, 0.405878, 0.315902,
		0.478120, 0.855497, 0.198813,
		42.241215, 44.214676, 45.799530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386887, 44.094254, 45.448849>,  <41.906532, 43.615829, 45.660362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386887, 44.094254, 45.448849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745399, 44.271645, 45.448700>,  <41.960506, 44.378078, 45.448612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745399, 44.271645, 45.448700>,  <41.386887, 44.094254, 45.448849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745399, 44.271645, 45.448700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114909, 0.231428, -0.966042,
		-0.428330, 0.865893, 0.258385,
		0.896286, 0.443476, -0.000371,
		42.014286, 44.404686, 45.448589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323536, 44.888992, 45.132359>,  <41.386887, 44.094254, 45.448849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323536, 44.888992, 45.132359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687012, 44.726639, 45.093292>,  <41.905098, 44.629227, 45.069855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687012, 44.726639, 45.093292>,  <41.323536, 44.888992, 45.132359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687012, 44.726639, 45.093292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034874, 0.159322, -0.986611,
		0.416007, 0.899932, 0.130620,
		0.908693, -0.405881, -0.097663,
		41.959618, 44.604874, 45.063992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596439, 45.285137, 44.612705>,  <41.323536, 44.888992, 45.132359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596439, 45.285137, 44.612705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851364, 44.978531, 44.580990>,  <42.004318, 44.794567, 44.561962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851364, 44.978531, 44.580990>,  <41.596439, 45.285137, 44.612705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851364, 44.978531, 44.580990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108007, 0.190721, -0.975684,
		0.762997, 0.613255, 0.204338,
		0.637315, -0.766514, -0.079284,
		42.042557, 44.748577, 44.557205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200165, 45.416344, 44.165379>,  <41.596439, 45.285137, 44.612705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200165, 45.416344, 44.165379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180618, 45.016861, 44.159653>,  <42.168892, 44.777172, 44.156216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180618, 45.016861, 44.159653>,  <42.200165, 45.416344, 44.165379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180618, 45.016861, 44.159653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035066, 0.012612, -0.999306,
		0.998190, -0.049331, 0.034405,
		-0.048863, -0.998703, -0.014319,
		42.165958, 44.717251, 44.155357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516544, 45.239799, 43.498814>,  <42.200165, 45.416344, 44.165379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516544, 45.239799, 43.498814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332993, 44.903217, 43.612926>,  <42.222862, 44.701267, 43.681393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332993, 44.903217, 43.612926>,  <42.516544, 45.239799, 43.498814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332993, 44.903217, 43.612926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207257, -0.210851, -0.955294,
		0.863988, -0.497490, -0.077642,
		-0.458878, -0.841455, 0.285281,
		42.195328, 44.650780, 43.698509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645638, 44.846172, 42.913345>,  <42.516544, 45.239799, 43.498814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645638, 44.846172, 42.913345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343712, 44.675617, 43.112724>,  <42.162556, 44.573284, 43.232353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343712, 44.675617, 43.112724>,  <42.645638, 44.846172, 42.913345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343712, 44.675617, 43.112724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445182, -0.225086, -0.866689,
		0.481738, -0.876089, -0.019921,
		-0.754813, -0.426385, 0.498451,
		42.117268, 44.547703, 43.262260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767864, 44.141396, 42.812809>,  <42.645638, 44.846172, 42.913345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767864, 44.141396, 42.812809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393059, 44.257095, 42.891125>,  <42.168175, 44.326515, 42.938114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393059, 44.257095, 42.891125>,  <42.767864, 44.141396, 42.812809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393059, 44.257095, 42.891125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219814, -0.052700, -0.974117,
		-0.271444, -0.955802, 0.112962,
		-0.937016, 0.289249, 0.195793,
		42.111954, 44.343868, 42.949863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395412, 43.694534, 42.512817>,  <42.767864, 44.141396, 42.812809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395412, 43.694534, 42.512817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126190, 43.987251, 42.555660>,  <41.964657, 44.162880, 42.581367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126190, 43.987251, 42.555660>,  <42.395412, 43.694534, 42.512817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126190, 43.987251, 42.555660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283294, -0.121320, -0.951328,
		-0.683181, -0.670642, 0.288968,
		-0.673058, 0.731793, 0.107106,
		41.924274, 44.206791, 42.587791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712688, 43.375992, 42.201416>,  <42.395412, 43.694534, 42.512817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712688, 43.375992, 42.201416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668640, 43.773540, 42.205349>,  <41.642212, 44.012070, 42.207706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668640, 43.773540, 42.205349>,  <41.712688, 43.375992, 42.201416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668640, 43.773540, 42.205349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284437, -0.022036, -0.958441,
		-0.952350, -0.108336, 0.285120,
		-0.110116, 0.993870, 0.009828,
		41.635605, 44.071701, 42.208298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039005, 43.470146, 41.919830>,  <41.712688, 43.375992, 42.201416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039005, 43.470146, 41.919830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196640, 43.837669, 41.910965>,  <41.291222, 44.058182, 41.905647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196640, 43.837669, 41.910965>,  <41.039005, 43.470146, 41.919830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196640, 43.837669, 41.910965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308906, 0.109711, -0.944744,
		-0.865604, 0.379160, 0.327060,
		0.394091, 0.918804, -0.022159,
		41.314869, 44.113312, 41.904316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587959, 43.858017, 41.464741>,  <41.039005, 43.470146, 41.919830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587959, 43.858017, 41.464741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894829, 44.114216, 41.450798>,  <41.078949, 44.267937, 41.442432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894829, 44.114216, 41.450798>,  <40.587959, 43.858017, 41.464741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894829, 44.114216, 41.450798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300956, 0.311423, -0.901355,
		-0.566458, 0.701984, 0.431676,
		0.767170, 0.640496, -0.034858,
		41.124981, 44.306366, 41.440342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325562, 44.519108, 41.188560>,  <40.587959, 43.858017, 41.464741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325562, 44.519108, 41.188560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714607, 44.476532, 41.105907>,  <40.948032, 44.450989, 41.056316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714607, 44.476532, 41.105907>,  <40.325562, 44.519108, 41.188560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714607, 44.476532, 41.105907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151567, 0.383577, -0.910986,
		0.176223, 0.917355, 0.356939,
		0.972611, -0.106437, -0.206636,
		41.006390, 44.444599, 41.043915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515942, 45.145424, 40.834778>,  <40.325562, 44.519108, 41.188560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515942, 45.145424, 40.834778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814919, 44.907543, 40.716351>,  <40.994305, 44.764816, 40.645294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814919, 44.907543, 40.716351>,  <40.515942, 45.145424, 40.834778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814919, 44.907543, 40.716351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127063, 0.309462, -0.942384,
		0.652058, 0.742001, 0.155741,
		0.747446, -0.594700, -0.296068,
		41.039154, 44.729134, 40.627529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855934, 45.514996, 40.357273>,  <40.515942, 45.145424, 40.834778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855934, 45.514996, 40.357273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948029, 45.130341, 40.297626>,  <41.003284, 44.899548, 40.261837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948029, 45.130341, 40.297626>,  <40.855934, 45.514996, 40.357273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948029, 45.130341, 40.297626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096015, 0.174934, -0.979888,
		0.968385, 0.211293, 0.132609,
		0.230241, -0.961641, -0.149116,
		41.017101, 44.841846, 40.252892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346413, 45.494400, 39.840004>,  <40.855934, 45.514996, 40.357273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346413, 45.494400, 39.840004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205864, 45.120003, 39.831490>,  <41.121536, 44.895363, 39.826382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205864, 45.120003, 39.831490>,  <41.346413, 45.494400, 39.840004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205864, 45.120003, 39.831490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137441, -0.029082, -0.990083,
		0.926094, -0.350809, 0.138863,
		-0.351368, -0.935995, -0.021283,
		41.100452, 44.839203, 39.825104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819489, 45.091576, 39.433655>,  <41.346413, 45.494400, 39.840004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819489, 45.091576, 39.433655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471870, 44.894741, 39.413242>,  <41.263298, 44.776642, 39.400997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471870, 44.894741, 39.413242>,  <41.819489, 45.091576, 39.433655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471870, 44.894741, 39.413242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172869, -0.205405, -0.963289,
		0.463540, -0.845967, 0.263574,
		-0.869050, -0.492087, -0.051028,
		41.211155, 44.747116, 39.397934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998631, 44.466412, 39.088036>,  <41.819489, 45.091576, 39.433655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998631, 44.466412, 39.088036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601143, 44.507080, 39.069324>,  <41.362652, 44.531483, 39.058098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601143, 44.507080, 39.069324>,  <41.998631, 44.466412, 39.088036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601143, 44.507080, 39.069324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020095, -0.249070, -0.968277,
		-0.110098, -0.963134, 0.245462,
		-0.993717, 0.101673, -0.046776,
		41.303028, 44.537582, 39.055290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805244, 43.980320, 38.619072>,  <41.998631, 44.466412, 39.088036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805244, 43.980320, 38.619072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452881, 44.169445, 38.627560>,  <41.241463, 44.282921, 38.632652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452881, 44.169445, 38.627560>,  <41.805244, 43.980320, 38.619072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452881, 44.169445, 38.627560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075326, -0.095790, -0.992547,
		-0.467259, -0.875939, 0.119997,
		-0.880906, 0.472815, 0.021223,
		41.188610, 44.311291, 38.633926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351200, 43.584202, 38.288376>,  <41.805244, 43.980320, 38.619072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351200, 43.584202, 38.288376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200348, 43.954460, 38.276054>,  <41.109837, 44.176617, 38.268661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200348, 43.954460, 38.276054>,  <41.351200, 43.584202, 38.288376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200348, 43.954460, 38.276054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006724, -0.035991, -0.999329,
		-0.926136, -0.376669, 0.019798,
		-0.377129, 0.925648, -0.030799,
		41.087208, 44.232155, 38.266815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864784, 43.560898, 37.770134>,  <41.351200, 43.584202, 38.288376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864784, 43.560898, 37.770134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923058, 43.956154, 37.789505>,  <40.958023, 44.193310, 37.801128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923058, 43.956154, 37.789505>,  <40.864784, 43.560898, 37.770134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923058, 43.956154, 37.789505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261423, 0.008756, -0.965185,
		-0.954166, 0.153275, -0.257048,
		0.145688, 0.988145, 0.048424,
		40.966763, 44.252598, 37.804031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554882, 43.897057, 37.048714>,  <40.864784, 43.560898, 37.770134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554882, 43.897057, 37.048714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808807, 44.160931, 37.209625>,  <40.961163, 44.319256, 37.306171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808807, 44.160931, 37.209625>,  <40.554882, 43.897057, 37.048714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808807, 44.160931, 37.209625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263400, 0.304684, -0.915308,
		-0.726380, 0.687013, 0.019658,
		0.634818, 0.659683, 0.402275,
		40.999252, 44.358837, 37.330307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396675, 44.632622, 36.695354>,  <40.554882, 43.897057, 37.048714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396675, 44.632622, 36.695354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765091, 44.608974, 36.849339>,  <40.986141, 44.594784, 36.941730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765091, 44.608974, 36.849339>,  <40.396675, 44.632622, 36.695354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765091, 44.608974, 36.849339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386396, 0.262715, -0.884126,
		-0.048864, 0.963060, 0.264814,
		0.921038, -0.059121, 0.384960,
		41.041401, 44.591240, 36.964825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806747, 45.160690, 36.419289>,  <40.396675, 44.632622, 36.695354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806747, 45.160690, 36.419289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100639, 44.922913, 36.550007>,  <41.276974, 44.780247, 36.628437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100639, 44.922913, 36.550007>,  <40.806747, 45.160690, 36.419289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100639, 44.922913, 36.550007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492228, 0.135701, -0.859824,
		0.466774, 0.792601, 0.392308,
		0.734734, -0.594449, 0.326799,
		41.321060, 44.744579, 36.648048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442081, 45.571838, 36.336285>,  <40.806747, 45.160690, 36.419289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442081, 45.571838, 36.336285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545586, 45.185566, 36.345306>,  <41.607689, 44.953804, 36.350719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545586, 45.185566, 36.345306>,  <41.442081, 45.571838, 36.336285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545586, 45.185566, 36.345306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394314, 0.084288, -0.915102,
		0.881793, 0.245686, 0.402591,
		0.258761, -0.965678, 0.022553,
		41.623215, 44.895863, 36.352074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161980, 45.574883, 36.478138>,  <41.442081, 45.571838, 36.336285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161980, 45.574883, 36.478138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079857, 45.221962, 36.308716>,  <42.030582, 45.010208, 36.207062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079857, 45.221962, 36.308716>,  <42.161980, 45.574883, 36.478138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079857, 45.221962, 36.308716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647441, 0.202103, -0.734829,
		0.733941, -0.425088, 0.529745,
		-0.205304, -0.882301, -0.423551,
		42.018265, 44.957272, 36.181652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750092, 45.361286, 36.274384>,  <42.161980, 45.574883, 36.478138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750092, 45.361286, 36.274384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520866, 45.133129, 36.039009>,  <42.383331, 44.996235, 35.897785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520866, 45.133129, 36.039009>,  <42.750092, 45.361286, 36.274384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520866, 45.133129, 36.039009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644155, 0.130371, -0.753702,
		0.506623, -0.810958, 0.292712,
		-0.573060, -0.570395, -0.588432,
		42.348949, 44.962009, 35.862480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238567, 45.042690, 35.907200>,  <42.750092, 45.361286, 36.274384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238567, 45.042690, 35.907200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906807, 44.945370, 35.706043>,  <42.707752, 44.886978, 35.585350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906807, 44.945370, 35.706043>,  <43.238567, 45.042690, 35.907200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906807, 44.945370, 35.706043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481919, 0.143732, -0.864347,
		0.282577, -0.959243, -0.001960,
		-0.829400, -0.243300, -0.502892,
		42.657986, 44.872379, 35.555176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426712, 44.637081, 35.339993>,  <43.238567, 45.042690, 35.907200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426712, 44.637081, 35.339993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075378, 44.788685, 35.223450>,  <42.864578, 44.879646, 35.153522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075378, 44.788685, 35.223450>,  <43.426712, 44.637081, 35.339993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075378, 44.788685, 35.223450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327566, 0.033245, -0.944243,
		-0.348190, -0.924796, -0.153350,
		-0.878330, 0.379008, -0.291357,
		42.811878, 44.902386, 35.136044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264957, 44.336605, 34.648754>,  <43.426712, 44.637081, 35.339993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264957, 44.336605, 34.648754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046593, 44.671398, 34.663921>,  <42.915573, 44.872272, 34.673019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046593, 44.671398, 34.663921>,  <43.264957, 44.336605, 34.648754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046593, 44.671398, 34.663921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240142, 0.199664, -0.949982,
		-0.802688, -0.509506, -0.309994,
		-0.545916, 0.836982, 0.037914,
		42.882816, 44.922493, 34.675297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984608, 44.440819, 33.935841>,  <43.264957, 44.336605, 34.648754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984608, 44.440819, 33.935841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923164, 44.783154, 34.133408>,  <42.886299, 44.988552, 34.251949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923164, 44.783154, 34.133408>,  <42.984608, 44.440819, 33.935841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923164, 44.783154, 34.133408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136013, 0.513404, -0.847300,
		-0.978726, -0.062973, -0.195268,
		-0.153608, 0.855833, 0.493917,
		42.877083, 45.039902, 34.281582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587780, 44.873043, 33.505486>,  <42.984608, 44.440819, 33.935841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587780, 44.873043, 33.505486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770691, 45.130630, 33.750824>,  <42.880436, 45.285183, 33.898029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770691, 45.130630, 33.750824>,  <42.587780, 44.873043, 33.505486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770691, 45.130630, 33.750824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464017, 0.415593, -0.782285,
		-0.758673, 0.642326, -0.108772,
		0.457278, 0.643971, 0.613350,
		42.907875, 45.323822, 33.934830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556412, 45.465153, 33.130074>,  <42.587780, 44.873043, 33.505486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556412, 45.465153, 33.130074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850075, 45.539452, 33.391304>,  <43.026272, 45.584030, 33.548042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850075, 45.539452, 33.391304>,  <42.556412, 45.465153, 33.130074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850075, 45.539452, 33.391304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471720, 0.552280, -0.687362,
		-0.488359, 0.812702, 0.317839,
		0.734156, 0.185748, 0.653079,
		43.070320, 45.595177, 33.587227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683388, 46.200253, 33.236130>,  <42.556412, 45.465153, 33.130074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683388, 46.200253, 33.236130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021500, 45.991528, 33.282127>,  <43.224365, 45.866295, 33.309727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021500, 45.991528, 33.282127>,  <42.683388, 46.200253, 33.236130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021500, 45.991528, 33.282127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485837, 0.660964, -0.571917,
		0.222424, 0.539296, 0.812211,
		0.845275, -0.521810, 0.114996,
		43.275082, 45.834984, 33.316628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130405, 46.717812, 33.400661>,  <42.683388, 46.200253, 33.236130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130405, 46.717812, 33.400661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330940, 46.406738, 33.248940>,  <43.451260, 46.220093, 33.157906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330940, 46.406738, 33.248940>,  <43.130405, 46.717812, 33.400661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330940, 46.406738, 33.248940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607950, 0.628531, -0.485124,
		0.615678, 0.012610, 0.787897,
		0.501335, -0.777682, -0.379306,
		43.481342, 46.173435, 33.135147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<46.369915, 44.901779, 32.417847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.970123, 44.904659, 32.405289>,  <45.730247, 44.906387, 32.397755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.970123, 44.904659, 32.405289>,  <46.369915, 44.901779, 32.417847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.970123, 44.904659, 32.405289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032171, -0.177009, 0.983683,
		0.001522, 0.984183, 0.177148,
		-0.999481, 0.007196, -0.031393,
		45.670280, 44.906818, 32.395870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208157, 44.834034, 33.142086>,  <46.369915, 44.901779, 32.417847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208157, 44.834034, 33.142086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.818878, 44.850933, 33.051659>,  <45.585312, 44.861073, 32.997402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.818878, 44.850933, 33.051659>,  <46.208157, 44.834034, 33.142086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818878, 44.850933, 33.051659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228485, -0.065640, 0.971332,
		0.026197, 0.996949, 0.073533,
		-0.973195, 0.042247, -0.226069,
		45.526920, 44.863605, 32.983837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942753, 45.364307, 33.580952>,  <46.208157, 44.834034, 33.142086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.942753, 45.364307, 33.580952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.676888, 45.094425, 33.452583>,  <45.517368, 44.932495, 33.375561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.676888, 45.094425, 33.452583>,  <45.942753, 45.364307, 33.580952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676888, 45.094425, 33.452583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294334, -0.158339, 0.942495,
		-0.686722, 0.720902, -0.093346,
		-0.664666, -0.674706, -0.320921,
		45.477489, 44.892014, 33.356308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334965, 45.342773, 34.030785>,  <45.942753, 45.364307, 33.580952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334965, 45.342773, 34.030785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.364075, 44.976536, 33.872604>,  <45.381542, 44.756790, 33.777695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.364075, 44.976536, 33.872604>,  <45.334965, 45.342773, 34.030785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364075, 44.976536, 33.872604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094799, -0.388359, 0.916619,
		-0.992833, -0.104194, 0.058536,
		0.072773, -0.915599, -0.395453,
		45.385906, 44.701855, 33.753967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940540, 44.962734, 34.447735>,  <45.334965, 45.342773, 34.030785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.940540, 44.962734, 34.447735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.183319, 44.699654, 34.269279>,  <45.328987, 44.541805, 34.162205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.183319, 44.699654, 34.269279>,  <44.940540, 44.962734, 34.447735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183319, 44.699654, 34.269279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114721, -0.482982, 0.868083,
		-0.786420, -0.578061, -0.217692,
		0.606946, -0.657704, -0.446142,
		45.365402, 44.502342, 34.135437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718548, 44.363861, 34.681786>,  <44.940540, 44.962734, 34.447735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718548, 44.363861, 34.681786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.081261, 44.257408, 34.550991>,  <45.298889, 44.193535, 34.472515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.081261, 44.257408, 34.550991>,  <44.718548, 44.363861, 34.681786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081261, 44.257408, 34.550991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130059, -0.561184, 0.817409,
		-0.401042, -0.783738, -0.474257,
		0.906780, -0.266134, -0.326991,
		45.353294, 44.177567, 34.452892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785637, 43.635624, 34.592602>,  <44.718548, 44.363861, 34.681786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785637, 43.635624, 34.592602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.146751, 43.792278, 34.663696>,  <45.363422, 43.886272, 34.706352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.146751, 43.792278, 34.663696>,  <44.785637, 43.635624, 34.592602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.146751, 43.792278, 34.663696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152162, -0.677389, 0.719716,
		0.402264, -0.622708, -0.671132,
		0.902791, 0.391637, 0.177736,
		45.417587, 43.909771, 34.717018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.140884, 43.016960, 34.853085>,  <44.785637, 43.635624, 34.592602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.140884, 43.016960, 34.853085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.375389, 43.327030, 34.947231>,  <45.516090, 43.513073, 35.003719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.375389, 43.327030, 34.947231>,  <45.140884, 43.016960, 34.853085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375389, 43.327030, 34.947231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260781, -0.455648, 0.851104,
		0.767003, -0.437587, -0.469280,
		0.586259, 0.775179, 0.235369,
		45.551266, 43.559586, 35.017841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859516, 42.792091, 34.895035>,  <45.140884, 43.016960, 34.853085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859516, 42.792091, 34.895035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.778908, 43.104538, 35.131424>,  <45.730541, 43.292004, 35.273258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.778908, 43.104538, 35.131424>,  <45.859516, 42.792091, 34.895035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778908, 43.104538, 35.131424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358954, -0.502480, 0.786553,
		0.911340, 0.370640, -0.179123,
		-0.201522, 0.781114, 0.590973,
		45.718452, 43.338871, 35.308716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364643, 42.735943, 35.384762>,  <45.859516, 42.792091, 34.895035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364643, 42.735943, 35.384762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.099030, 42.998753, 35.527523>,  <45.939659, 43.156437, 35.613178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.099030, 42.998753, 35.527523>,  <46.364643, 42.735943, 35.384762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.099030, 42.998753, 35.527523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182320, -0.320645, 0.929487,
		0.725131, 0.682284, 0.093132,
		-0.664037, 0.657020, 0.356903,
		45.899818, 43.195858, 35.634594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.666084, 43.082504, 35.945660>,  <46.364643, 42.735943, 35.384762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.666084, 43.082504, 35.945660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.273239, 43.127636, 36.005970>,  <46.037533, 43.154716, 36.042156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.273239, 43.127636, 36.005970>,  <46.666084, 43.082504, 35.945660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273239, 43.127636, 36.005970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149073, -0.023388, 0.988549,
		0.115066, 0.993339, 0.006149,
		-0.982108, 0.112832, 0.150771,
		45.978607, 43.161484, 36.051201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.682816, 43.635098, 36.460480>,  <46.666084, 43.082504, 35.945660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.682816, 43.635098, 36.460480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.328674, 43.454296, 36.504021>,  <46.116192, 43.345814, 36.530144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.328674, 43.454296, 36.504021>,  <46.682816, 43.635098, 36.460480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.328674, 43.454296, 36.504021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077812, 0.086760, 0.993186,
		-0.458366, 0.887788, -0.041642,
		-0.885351, -0.452002, 0.108848,
		46.063068, 43.318695, 36.536674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149998, 44.095242, 36.834267>,  <46.682816, 43.635098, 36.460480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149998, 44.095242, 36.834267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.012627, 43.721840, 36.875484>,  <45.930202, 43.497799, 36.900215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.012627, 43.721840, 36.875484>,  <46.149998, 44.095242, 36.834267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012627, 43.721840, 36.875484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118872, 0.152045, 0.981199,
		-0.931626, 0.324722, -0.163185,
		-0.343428, -0.933509, 0.103049,
		45.909599, 43.441788, 36.906399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624485, 44.177063, 37.279182>,  <46.149998, 44.095242, 36.834267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624485, 44.177063, 37.279182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.704781, 43.785206, 37.278915>,  <45.752956, 43.550091, 37.278755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.704781, 43.785206, 37.278915>,  <45.624485, 44.177063, 37.279182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704781, 43.785206, 37.278915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273175, -0.056629, 0.960296,
		-0.940787, -0.192585, -0.278982,
		0.200737, -0.979645, -0.000666,
		45.765003, 43.491314, 37.278717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069290, 43.931877, 37.679062>,  <45.624485, 44.177063, 37.279182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069290, 43.931877, 37.679062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.321861, 43.621723, 37.682407>,  <45.473404, 43.435631, 37.684414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.321861, 43.621723, 37.682407>,  <45.069290, 43.931877, 37.679062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321861, 43.621723, 37.682407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096385, -0.067783, 0.993033,
		-0.769417, -0.627839, -0.117536,
		0.631432, -0.775386, 0.008361,
		45.511292, 43.389107, 37.684917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.641319, 43.396839, 38.089226>,  <45.069290, 43.931877, 37.679062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.641319, 43.396839, 38.089226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.032242, 43.312363, 38.095894>,  <45.266796, 43.261677, 38.099895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.032242, 43.312363, 38.095894>,  <44.641319, 43.396839, 38.089226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032242, 43.312363, 38.095894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061554, -0.207807, 0.976231,
		-0.202684, -0.955104, -0.216089,
		0.977308, -0.211168, 0.016671,
		45.325432, 43.249004, 38.100895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681065, 42.760822, 38.480694>,  <44.641319, 43.396839, 38.089226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681065, 42.760822, 38.480694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.040123, 42.936813, 38.490952>,  <45.255558, 43.042408, 38.497105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.040123, 42.936813, 38.490952>,  <44.681065, 42.760822, 38.480694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040123, 42.936813, 38.490952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012170, -0.033417, 0.999367,
		0.440554, -0.897388, -0.024642,
		0.897643, 0.439975, 0.025643,
		45.309418, 43.068806, 38.498646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103500, 42.364853, 38.982101>,  <44.681065, 42.760822, 38.480694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103500, 42.364853, 38.982101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.253693, 42.734921, 38.959888>,  <45.343807, 42.956959, 38.946560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.253693, 42.734921, 38.959888>,  <45.103500, 42.364853, 38.982101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.253693, 42.734921, 38.959888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050158, 0.080109, 0.995523,
		0.925474, -0.371010, 0.076483,
		0.375476, 0.925167, -0.055530,
		45.366337, 43.012470, 38.943230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.675922, 42.442673, 39.470432>,  <45.103500, 42.364853, 38.982101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.675922, 42.442673, 39.470432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.562271, 42.821419, 39.410149>,  <45.494080, 43.048668, 39.373978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.562271, 42.821419, 39.410149>,  <45.675922, 42.442673, 39.470432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562271, 42.821419, 39.410149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142286, 0.113810, 0.983261,
		0.948170, 0.300816, 0.102390,
		-0.284128, 0.946867, -0.150713,
		45.477032, 43.105480, 39.364933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876385, 42.791492, 40.072773>,  <45.675922, 42.442673, 39.470432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876385, 42.791492, 40.072773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.637131, 43.077824, 39.928650>,  <45.493580, 43.249622, 39.842175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.637131, 43.077824, 39.928650>,  <45.876385, 42.791492, 40.072773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637131, 43.077824, 39.928650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067887, 0.402725, 0.912800,
		0.798516, 0.570436, -0.192288,
		-0.598133, 0.715832, -0.360307,
		45.457691, 43.292572, 39.820557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085674, 43.443691, 40.428753>,  <45.876385, 42.791492, 40.072773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085674, 43.443691, 40.428753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.708702, 43.471878, 40.297993>,  <45.482521, 43.488789, 40.219536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.708702, 43.471878, 40.297993>,  <46.085674, 43.443691, 40.428753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708702, 43.471878, 40.297993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255441, 0.479205, 0.839710,
		0.215822, 0.874870, -0.433616,
		-0.942428, 0.070465, -0.326901,
		45.425972, 43.493019, 40.199921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857338, 44.108532, 40.563061>,  <46.085674, 43.443691, 40.428753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857338, 44.108532, 40.563061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.505066, 43.923977, 40.520103>,  <45.293705, 43.813244, 40.494328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.505066, 43.923977, 40.520103>,  <45.857338, 44.108532, 40.563061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.505066, 43.923977, 40.520103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298019, 0.363397, 0.882682,
		-0.368230, 0.809363, -0.457536,
		-0.880677, -0.461384, -0.107392,
		45.240864, 43.785561, 40.487885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361267, 44.618446, 40.799599>,  <45.857338, 44.108532, 40.563061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361267, 44.618446, 40.799599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.151176, 44.278290, 40.812035>,  <45.025120, 44.074196, 40.819496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.151176, 44.278290, 40.812035>,  <45.361267, 44.618446, 40.799599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151176, 44.278290, 40.812035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175578, 0.144047, 0.973870,
		-0.832650, 0.506047, -0.224968,
		-0.525230, -0.850392, 0.031090,
		44.993607, 44.023170, 40.821362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632111, 44.828278, 41.033394>,  <45.361267, 44.618446, 40.799599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632111, 44.828278, 41.033394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.687454, 44.439461, 41.109283>,  <44.720661, 44.206173, 41.154819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.687454, 44.439461, 41.109283>,  <44.632111, 44.828278, 41.033394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687454, 44.439461, 41.109283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402444, 0.119858, 0.907564,
		-0.904928, -0.201925, -0.374608,
		0.138361, -0.972039, 0.189726,
		44.728962, 44.147850, 41.166203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049923, 44.645283, 41.287193>,  <44.632111, 44.828278, 41.033394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049923, 44.645283, 41.287193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.270378, 44.338100, 41.417725>,  <44.402653, 44.153793, 41.496044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.270378, 44.338100, 41.417725>,  <44.049923, 44.645283, 41.287193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270378, 44.338100, 41.417725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318303, 0.168020, 0.932981,
		-0.771316, -0.618075, -0.151839,
		0.551140, -0.767954, 0.326331,
		44.435719, 44.107716, 41.515625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708050, 44.185532, 41.693024>,  <44.049923, 44.645283, 41.287193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708050, 44.185532, 41.693024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.086861, 44.138283, 41.812485>,  <44.314148, 44.109932, 41.884163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.086861, 44.138283, 41.812485>,  <43.708050, 44.185532, 41.693024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086861, 44.138283, 41.812485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288807, 0.093572, 0.952804,
		-0.140496, -0.988580, 0.054499,
		0.947022, -0.118126, 0.298655,
		44.370968, 44.102844, 41.902081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677002, 43.656284, 42.252655>,  <43.708050, 44.185532, 41.693024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677002, 43.656284, 42.252655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.004303, 43.878998, 42.309860>,  <44.200684, 44.012627, 42.344185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.004303, 43.878998, 42.309860>,  <43.677002, 43.656284, 42.252655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004303, 43.878998, 42.309860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144799, -0.041138, 0.988605,
		0.556323, -0.829638, 0.046961,
		0.818252, 0.556784, 0.143017,
		44.249779, 44.046032, 42.352764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881489, 43.372387, 42.885872>,  <43.677002, 43.656284, 42.252655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881489, 43.372387, 42.885872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.118378, 43.691036, 42.837440>,  <44.260513, 43.882225, 42.808380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.118378, 43.691036, 42.837440>,  <43.881489, 43.372387, 42.885872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118378, 43.691036, 42.837440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016223, 0.138443, 0.990237,
		0.805610, -0.588407, 0.069066,
		0.592224, 0.796624, -0.121077,
		44.296043, 43.930023, 42.801117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421776, 43.323696, 43.422764>,  <43.881489, 43.372387, 42.885872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421776, 43.323696, 43.422764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.419998, 43.700191, 43.287674>,  <44.418930, 43.926086, 43.206619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.419998, 43.700191, 43.287674>,  <44.421776, 43.323696, 43.422764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419998, 43.700191, 43.287674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188152, 0.332479, 0.924152,
		0.982130, -0.059436, -0.178573,
		-0.004444, 0.941236, -0.337720,
		44.418667, 43.982563, 43.186359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113808, 43.587036, 43.674080>,  <44.421776, 43.323696, 43.422764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113808, 43.587036, 43.674080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.850487, 43.879833, 43.603844>,  <44.692493, 44.055511, 43.561703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.850487, 43.879833, 43.603844>,  <45.113808, 43.587036, 43.674080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850487, 43.879833, 43.603844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281908, 0.456021, 0.844141,
		0.697973, 0.506201, -0.506552,
		-0.658303, 0.731988, -0.175588,
		44.652996, 44.099430, 43.551167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.391922, 44.247101, 43.904594>,  <45.113808, 43.587036, 43.674080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.391922, 44.247101, 43.904594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.998604, 44.316799, 43.883530>,  <44.762615, 44.358616, 43.870892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.998604, 44.316799, 43.883530>,  <45.391922, 44.247101, 43.904594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998604, 44.316799, 43.883530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045069, 0.513335, 0.857004,
		0.176359, 0.840313, -0.512612,
		-0.983293, 0.174244, -0.052659,
		44.703617, 44.369072, 43.867733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.256248, 44.920937, 44.259968>,  <45.391922, 44.247101, 43.904594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.256248, 44.920937, 44.259968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.894577, 44.750614, 44.273460>,  <44.677574, 44.648418, 44.281555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.894577, 44.750614, 44.273460>,  <45.256248, 44.920937, 44.259968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894577, 44.750614, 44.273460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152276, 0.395119, 0.905921,
		-0.399080, 0.813982, -0.422101,
		-0.904183, -0.425810, 0.033734,
		44.623322, 44.622871, 44.283581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.917198, 45.398945, 44.677887>,  <45.256248, 44.920937, 44.259968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.917198, 45.398945, 44.677887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.670547, 45.084728, 44.657120>,  <44.522556, 44.896198, 44.644661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.670547, 45.084728, 44.657120>,  <44.917198, 45.398945, 44.677887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670547, 45.084728, 44.657120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329873, 0.197932, 0.923042,
		-0.714815, 0.586295, -0.381179,
		-0.616623, -0.785545, -0.051918,
		44.485561, 44.849064, 44.641544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281784, 45.580223, 44.960899>,  <44.917198, 45.398945, 44.677887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281784, 45.580223, 44.960899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.277794, 45.181854, 44.996765>,  <44.275398, 44.942833, 45.018284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.277794, 45.181854, 44.996765>,  <44.281784, 45.580223, 44.960899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277794, 45.181854, 44.996765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317122, 0.088195, 0.944275,
		-0.948332, -0.019014, -0.316708,
		-0.009977, -0.995922, 0.089668,
		44.274799, 44.883080, 45.023666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747597, 45.489964, 45.448750>,  <44.281784, 45.580223, 44.960899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747597, 45.489964, 45.448750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.965698, 45.155033, 45.432869>,  <44.096558, 44.954075, 45.423340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.965698, 45.155033, 45.432869>,  <43.747597, 45.489964, 45.448750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965698, 45.155033, 45.432869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041316, -0.074142, 0.996391,
		-0.837252, -0.541646, -0.075021,
		0.545254, -0.837330, -0.039697,
		44.129276, 44.903835, 45.420959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568615, 45.046413, 46.029942>,  <43.747597, 45.489964, 45.448750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568615, 45.046413, 46.029942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.938339, 44.936069, 45.924458>,  <44.160175, 44.869862, 45.861168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.938339, 44.936069, 45.924458>,  <43.568615, 45.046413, 46.029942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938339, 44.936069, 45.924458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201468, -0.234164, 0.951093,
		-0.324122, -0.932238, -0.160864,
		0.924314, -0.275861, -0.263714,
		44.215633, 44.853313, 45.845345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777340, 44.492985, 46.459270>,  <43.568615, 45.046413, 46.029942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777340, 44.492985, 46.459270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.136230, 44.612629, 46.329338>,  <44.351566, 44.684414, 46.251381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.136230, 44.612629, 46.329338>,  <43.777340, 44.492985, 46.459270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136230, 44.612629, 46.329338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359598, -0.068036, 0.930623,
		0.256257, -0.951790, -0.168603,
		0.897230, 0.299108, -0.324827,
		44.405399, 44.702362, 46.231892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279186, 44.021851, 46.781651>,  <43.777340, 44.492985, 46.459270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279186, 44.021851, 46.781651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.441780, 44.369350, 46.668488>,  <44.539337, 44.577850, 46.600590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.441780, 44.369350, 46.668488>,  <44.279186, 44.021851, 46.781651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441780, 44.369350, 46.668488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431382, 0.090467, 0.897622,
		0.805404, -0.486915, -0.337990,
		0.406489, 0.868751, -0.282909,
		44.563728, 44.629974, 46.583614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008041, 44.086761, 47.138733>,  <44.279186, 44.021851, 46.781651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.008041, 44.086761, 47.138733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.928795, 44.464520, 47.033768>,  <44.881248, 44.691177, 46.970791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.928795, 44.464520, 47.033768>,  <45.008041, 44.086761, 47.138733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928795, 44.464520, 47.033768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348998, 0.318137, 0.881470,
		0.915943, 0.083053, -0.392621,
		-0.198116, 0.944400, -0.262410,
		44.869362, 44.747841, 46.955044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509022, 44.374874, 47.432938>,  <45.008041, 44.086761, 47.138733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509022, 44.374874, 47.432938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.287689, 44.696884, 47.347363>,  <45.154892, 44.890091, 47.296017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.287689, 44.696884, 47.347363>,  <45.509022, 44.374874, 47.432938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287689, 44.696884, 47.347363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411496, 0.487491, 0.770080,
		0.724224, 0.338072, -0.601005,
		-0.553327, 0.805021, -0.213938,
		45.121693, 44.938389, 47.283180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948227, 44.982861, 47.430206>,  <45.509022, 44.374874, 47.432938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948227, 44.982861, 47.430206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.574219, 45.105034, 47.502262>,  <45.349815, 45.178337, 47.545498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.574219, 45.105034, 47.502262>,  <45.948227, 44.982861, 47.430206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574219, 45.105034, 47.502262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328736, 0.556192, 0.763271,
		0.132933, 0.772892, -0.620457,
		-0.935019, 0.305430, 0.180142,
		45.293713, 45.196663, 47.556305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077724, 45.625156, 47.593933>,  <45.948227, 44.982861, 47.430206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077724, 45.625156, 47.593933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.705849, 45.559013, 47.725586>,  <45.482723, 45.519325, 47.804577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.705849, 45.559013, 47.725586>,  <46.077724, 45.625156, 47.593933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705849, 45.559013, 47.725586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235698, 0.419581, 0.876583,
		-0.283050, 0.892528, -0.351106,
		-0.929693, -0.165362, 0.329130,
		45.426941, 45.509403, 47.824326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771507, 46.342285, 47.851181>,  <46.077724, 45.625156, 47.593933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771507, 46.342285, 47.851181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.633240, 46.007641, 48.021164>,  <45.550278, 45.806854, 48.123154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.633240, 46.007641, 48.021164>,  <45.771507, 46.342285, 47.851181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633240, 46.007641, 48.021164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060423, 0.432090, 0.899804,
		-0.936408, 0.336715, -0.098811,
		-0.345673, -0.836613, 0.424957,
		45.529537, 45.756657, 48.148651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276051, 46.524471, 48.411575>,  <45.771507, 46.342285, 47.851181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276051, 46.524471, 48.411575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.388916, 46.146584, 48.478374>,  <45.456635, 45.919849, 48.518456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.388916, 46.146584, 48.478374>,  <45.276051, 46.524471, 48.411575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388916, 46.146584, 48.478374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135599, 0.211597, 0.967905,
		-0.949735, -0.250463, 0.187808,
		0.282164, -0.944719, 0.166998,
		45.473564, 45.863167, 48.528473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165466, 46.433655, 49.060528>,  <45.276051, 46.524471, 48.411575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165466, 46.433655, 49.060528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.391571, 46.107185, 49.012642>,  <45.527233, 45.911304, 48.983910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.391571, 46.107185, 49.012642>,  <45.165466, 46.433655, 49.060528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391571, 46.107185, 49.012642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304168, 0.071324, 0.949944,
		-0.766786, -0.573381, 0.288572,
		0.565263, -0.816178, -0.119714,
		45.561150, 45.862331, 48.976727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043812, 45.952076, 49.657204>,  <45.165466, 46.433655, 49.060528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043812, 45.952076, 49.657204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.407478, 45.866482, 49.514305>,  <45.625679, 45.815125, 49.428566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.407478, 45.866482, 49.514305>,  <45.043812, 45.952076, 49.657204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407478, 45.866482, 49.514305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370965, 0.026404, 0.928271,
		-0.189202, -0.976480, 0.103387,
		0.909169, -0.213984, -0.357244,
		45.680229, 45.802288, 49.407131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318336, 45.472893, 50.125973>,  <45.043812, 45.952076, 49.657204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318336, 45.472893, 50.125973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.634193, 45.626911, 49.934891>,  <45.823708, 45.719322, 49.820240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.634193, 45.626911, 49.934891>,  <45.318336, 45.472893, 50.125973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634193, 45.626911, 49.934891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517744, -0.000367, 0.855535,
		0.329247, -0.922897, -0.199646,
		0.789644, 0.385048, -0.477703,
		45.871086, 45.742424, 49.791580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888954, 45.089977, 50.504665>,  <45.318336, 45.472893, 50.125973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888954, 45.089977, 50.504665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.048134, 45.389454, 50.292595>,  <46.143642, 45.569141, 50.165352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.048134, 45.389454, 50.292595>,  <45.888954, 45.089977, 50.504665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048134, 45.389454, 50.292595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668970, 0.158643, 0.726162,
		0.627784, -0.643651, -0.437723,
		0.397953, 0.748696, -0.530176,
		46.167519, 45.614063, 50.133541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642822, 44.999470, 50.470764>,  <45.888954, 45.089977, 50.504665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642822, 44.999470, 50.470764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.574036, 45.390629, 50.423210>,  <46.532764, 45.625324, 50.394676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.574036, 45.390629, 50.423210>,  <46.642822, 44.999470, 50.470764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574036, 45.390629, 50.423210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555335, 0.195917, 0.808220,
		0.813652, 0.072966, -0.576754,
		-0.171969, 0.977902, -0.118887,
		46.522446, 45.683998, 50.387543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.266613, 45.309803, 50.591328>,  <46.642822, 44.999470, 50.470764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.266613, 45.309803, 50.591328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.027115, 45.629482, 50.612461>,  <46.883415, 45.821289, 50.625141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.027115, 45.629482, 50.612461>,  <47.266613, 45.309803, 50.591328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.027115, 45.629482, 50.612461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533051, 0.348384, 0.771029,
		0.597798, 0.489810, -0.634605,
		-0.598744, 0.799197, 0.052831,
		46.847492, 45.869240, 50.628311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.708294, 45.873379, 50.646885>,  <47.266613, 45.309803, 50.591328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.708294, 45.873379, 50.646885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.365997, 46.015251, 50.797569>,  <47.160622, 46.100376, 50.887981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.365997, 46.015251, 50.797569>,  <47.708294, 45.873379, 50.646885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.365997, 46.015251, 50.797569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501758, 0.391145, 0.771521,
		0.126296, 0.849239, -0.512682,
		-0.855738, 0.354682, 0.376713,
		47.109276, 46.121655, 50.910583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.802731, 46.592583, 50.711613>,  <47.708294, 45.873379, 50.646885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.802731, 46.592583, 50.711613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.497986, 46.518250, 50.959816>,  <47.315140, 46.473648, 51.108738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.497986, 46.518250, 50.959816>,  <47.802731, 46.592583, 50.711613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.497986, 46.518250, 50.959816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457902, 0.523037, 0.718859,
		-0.458140, 0.831803, -0.313387,
		-0.761862, -0.185837, 0.620508,
		47.269428, 46.462498, 51.145969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.384892, 47.179890, 50.970501>,  <47.802731, 46.592583, 50.711613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.384892, 47.179890, 50.970501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.336967, 46.895500, 51.247673>,  <47.308212, 46.724865, 51.413979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.336967, 46.895500, 51.247673>,  <47.384892, 47.179890, 50.970501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336967, 46.895500, 51.247673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468285, 0.574970, 0.670909,
		-0.875417, 0.404872, 0.264052,
		-0.119810, -0.710976, 0.692934,
		47.301025, 46.682209, 51.455555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.342468, 47.623562, 51.557854>,  <47.384892, 47.179890, 50.970501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.342468, 47.623562, 51.557854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.411888, 47.277206, 51.745522>,  <47.453541, 47.069393, 51.858120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.411888, 47.277206, 51.745522>,  <47.342468, 47.623562, 51.557854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.411888, 47.277206, 51.745522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537865, 0.482409, 0.691363,
		-0.824973, 0.132362, 0.549454,
		0.173551, -0.865888, 0.469167,
		47.463955, 47.017441, 51.886272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.338390, 47.757801, 52.281609>,  <47.342468, 47.623562, 51.557854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.338390, 47.757801, 52.281609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.519997, 47.401711, 52.266842>,  <47.628960, 47.188057, 52.257980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.519997, 47.401711, 52.266842>,  <47.338390, 47.757801, 52.281609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.519997, 47.401711, 52.266842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346697, 0.138338, 0.927720,
		-0.820776, -0.433998, 0.371447,
		0.454013, -0.890230, -0.036921,
		47.656200, 47.134644, 52.255764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.132603, 47.358948, 52.918827>,  <47.338390, 47.757801, 52.281609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.132603, 47.358948, 52.918827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.477974, 47.194450, 52.801960>,  <47.685196, 47.095753, 52.731838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.477974, 47.194450, 52.801960>,  <47.132603, 47.358948, 52.918827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.477974, 47.194450, 52.801960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320039, -0.001146, 0.947404,
		-0.389952, -0.911523, 0.130626,
		0.863431, -0.411247, -0.292170,
		47.737003, 47.071075, 52.714310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239311, 46.754238, 53.297428>,  <47.132603, 47.358948, 52.918827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239311, 46.754238, 53.297428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.602631, 46.841553, 53.154690>,  <47.820621, 46.893940, 53.069046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.602631, 46.841553, 53.154690>,  <47.239311, 46.754238, 53.297428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.602631, 46.841553, 53.154690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347015, 0.083197, 0.934162,
		0.233604, -0.972332, -0.000181,
		0.908300, 0.218286, -0.356849,
		47.875122, 46.907040, 53.047634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.609791, 46.316288, 53.578098>,  <47.239311, 46.754238, 53.297428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.609791, 46.316288, 53.578098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.868988, 46.598969, 53.464478>,  <48.024506, 46.768578, 53.396305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.868988, 46.598969, 53.464478>,  <47.609791, 46.316288, 53.578098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.868988, 46.598969, 53.464478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412662, -0.012292, 0.910801,
		0.640169, -0.707409, -0.299592,
		0.647992, 0.706697, -0.284052,
		48.063385, 46.810978, 53.379261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.127899, 46.213718, 54.101250>,  <47.609791, 46.316288, 53.578098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.127899, 46.213718, 54.101250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.232468, 46.567307, 53.946198>,  <48.295208, 46.779457, 53.853165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.232468, 46.567307, 53.946198>,  <48.127899, 46.213718, 54.101250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.232468, 46.567307, 53.946198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444510, 0.246220, 0.861270,
		0.856778, -0.397464, -0.328565,
		0.261424, 0.883967, -0.387632,
		48.310894, 46.832497, 53.829906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.790855, 46.298019, 54.456108>,  <48.127899, 46.213718, 54.101250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.790855, 46.298019, 54.456108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.680107, 46.657623, 54.320381>,  <48.613659, 46.873386, 54.238945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.680107, 46.657623, 54.320381>,  <48.790855, 46.298019, 54.456108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.680107, 46.657623, 54.320381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415583, 0.430413, 0.801271,
		0.866392, 0.080832, -0.492778,
		-0.276867, 0.899005, -0.339314,
		48.597046, 46.927326, 54.218586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.400879, 46.694973, 54.396816>,  <48.790855, 46.298019, 54.456108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.400879, 46.694973, 54.396816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.103325, 46.961227, 54.420677>,  <48.924793, 47.120979, 54.434994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.103325, 46.961227, 54.420677>,  <49.400879, 46.694973, 54.396816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.103325, 46.961227, 54.420677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559441, 0.571392, 0.600448,
		0.365594, 0.480039, -0.797436,
		-0.743886, 0.665638, 0.059656,
		48.880157, 47.160919, 54.438576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.760288, 47.371101, 54.342979>,  <49.400879, 46.694973, 54.396816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.760288, 47.371101, 54.342979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.402061, 47.473625, 54.488449>,  <49.187126, 47.535141, 54.575733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.402061, 47.473625, 54.488449>,  <49.760288, 47.371101, 54.342979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.402061, 47.473625, 54.488449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439612, 0.635701, 0.634528,
		-0.068552, 0.728140, -0.681992,
		-0.895568, 0.256314, 0.363678,
		49.133392, 47.550518, 54.597553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.784706, 48.215374, 54.444252>,  <49.760288, 47.371101, 54.342979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.784706, 48.215374, 54.444252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.493874, 48.052902, 54.665657>,  <49.319374, 47.955421, 54.798500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.493874, 48.052902, 54.665657>,  <49.784706, 48.215374, 54.444252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.493874, 48.052902, 54.665657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328386, 0.502263, 0.799934,
		-0.602920, 0.763383, -0.231805,
		-0.727083, -0.406175, 0.553509,
		49.275749, 47.931049, 54.831711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.400188, 48.767548, 54.870941>,  <49.784706, 48.215374, 54.444252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.400188, 48.767548, 54.870941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.332344, 48.429398, 55.073555>,  <49.291637, 48.226509, 55.195122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.332344, 48.429398, 55.073555>,  <49.400188, 48.767548, 54.870941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.332344, 48.429398, 55.073555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129882, 0.490325, 0.861807,
		-0.976915, 0.211961, 0.026634,
		-0.169610, -0.845372, 0.506536,
		49.281460, 48.175785, 55.225517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<48.864586, 47.021488, 55.603363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.996437, 47.387268, 55.509445>,  <49.075546, 47.606735, 55.453094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.996437, 47.387268, 55.509445>,  <48.864586, 47.021488, 55.603363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.996437, 47.387268, 55.509445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360420, -0.107979, -0.926519,
		-0.872608, 0.390030, 0.293993,
		0.329625, 0.914449, -0.234798,
		49.095325, 47.661602, 55.439007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.303013, 47.477333, 55.570988>,  <48.864586, 47.021488, 55.603363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.303013, 47.477333, 55.570988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.595055, 47.612892, 55.333633>,  <48.770279, 47.694225, 55.191223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.595055, 47.612892, 55.333633>,  <48.303013, 47.477333, 55.570988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.595055, 47.612892, 55.333633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604665, -0.084120, -0.792025,
		-0.318329, 0.937056, 0.143501,
		0.730101, 0.338894, -0.593383,
		48.814083, 47.714561, 55.155617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.984344, 47.841110, 55.153175>,  <48.303013, 47.477333, 55.570988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.984344, 47.841110, 55.153175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.330635, 47.751793, 54.973999>,  <48.538410, 47.698204, 54.866493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.330635, 47.751793, 54.973999>,  <47.984344, 47.841110, 55.153175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.330635, 47.751793, 54.973999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489163, -0.187990, -0.851692,
		0.105965, 0.956453, -0.271974,
		0.865731, -0.223289, -0.447941,
		48.590355, 47.684807, 54.839615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.913956, 48.063473, 54.416290>,  <47.984344, 47.841110, 55.153175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.913956, 48.063473, 54.416290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.201714, 47.785645, 54.418816>,  <48.374367, 47.618946, 54.420330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.201714, 47.785645, 54.418816>,  <47.913956, 48.063473, 54.416290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.201714, 47.785645, 54.418816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358457, -0.379015, -0.853145,
		0.594964, 0.611485, -0.521636,
		0.719393, -0.694574, 0.006309,
		48.417530, 47.577271, 54.420708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.099194, 48.132904, 53.864067>,  <47.913956, 48.063473, 54.416290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.099194, 48.132904, 53.864067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.259453, 47.778717, 53.958237>,  <48.355610, 47.566204, 54.014740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.259453, 47.778717, 53.958237>,  <48.099194, 48.132904, 53.864067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.259453, 47.778717, 53.958237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256135, -0.354949, -0.899114,
		0.879702, 0.299928, -0.369010,
		0.400649, -0.885469, 0.235427,
		48.379646, 47.513077, 54.028866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.643364, 47.984005, 53.329533>,  <48.099194, 48.132904, 53.864067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.643364, 47.984005, 53.329533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.552216, 47.629265, 53.490322>,  <48.497528, 47.416420, 53.586796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.552216, 47.629265, 53.490322>,  <48.643364, 47.984005, 53.329533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.552216, 47.629265, 53.490322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110586, -0.386587, -0.915599,
		0.967392, -0.253087, -0.009982,
		-0.227867, -0.886847, 0.401969,
		48.483856, 47.363213, 53.610912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.031036, 47.599850, 52.922085>,  <48.643364, 47.984005, 53.329533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.031036, 47.599850, 52.922085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.739586, 47.359184, 53.052990>,  <48.564716, 47.214787, 53.131535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.739586, 47.359184, 53.052990>,  <49.031036, 47.599850, 52.922085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.739586, 47.359184, 53.052990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041219, -0.438433, -0.897818,
		0.683666, -0.667667, 0.294655,
		-0.728630, -0.601662, 0.327262,
		48.520996, 47.178684, 53.151169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.173935, 46.831757, 52.724445>,  <49.031036, 47.599850, 52.922085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.173935, 46.831757, 52.724445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.782959, 46.865997, 52.801685>,  <48.548374, 46.886539, 52.848030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.782959, 46.865997, 52.801685>,  <49.173935, 46.831757, 52.724445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.782959, 46.865997, 52.801685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210884, -0.344086, -0.914949,
		-0.011877, -0.935028, 0.354375,
		-0.977439, 0.085599, 0.193096,
		48.489727, 46.891678, 52.859615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.794918, 46.325581, 52.242779>,  <49.173935, 46.831757, 52.724445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.794918, 46.325581, 52.242779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.486938, 46.528664, 52.397392>,  <48.302151, 46.650513, 52.490162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.486938, 46.528664, 52.397392>,  <48.794918, 46.325581, 52.242779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.486938, 46.528664, 52.397392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611162, -0.412587, -0.675465,
		-0.183460, -0.756309, 0.627964,
		-0.769951, 0.507709, 0.386534,
		48.255955, 46.680977, 52.513351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.098110, 45.885803, 52.245663>,  <48.794918, 46.325581, 52.242779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.098110, 45.885803, 52.245663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.971893, 46.264664, 52.268791>,  <47.896164, 46.491978, 52.282669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.971893, 46.264664, 52.268791>,  <48.098110, 45.885803, 52.245663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.971893, 46.264664, 52.268791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727334, -0.202272, -0.655798,
		-0.609442, -0.248989, 0.752719,
		-0.315540, 0.947149, 0.057826,
		47.877232, 46.548809, 52.286140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.370762, 45.801331, 52.540791>,  <48.098110, 45.885803, 52.245663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.370762, 45.801331, 52.540791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.425560, 46.148949, 52.350632>,  <47.458439, 46.357517, 52.236538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.425560, 46.148949, 52.350632>,  <47.370762, 45.801331, 52.540791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.425560, 46.148949, 52.350632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793445, -0.191045, -0.577881,
		-0.593025, 0.456363, 0.663366,
		0.136991, 0.869042, -0.475393,
		47.466656, 46.409660, 52.208015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809326, 46.214146, 52.517178>,  <47.370762, 45.801331, 52.540791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.809326, 46.214146, 52.517178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.998779, 46.329590, 52.184341>,  <47.112450, 46.398857, 51.984638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.998779, 46.329590, 52.184341>,  <46.809326, 46.214146, 52.517178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.998779, 46.329590, 52.184341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807947, -0.233673, -0.540942,
		-0.350559, 0.928493, 0.122508,
		0.473634, 0.288613, -0.832090,
		47.140869, 46.416172, 51.934715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297276, 46.208172, 51.951836>,  <46.809326, 46.214146, 52.517178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297276, 46.208172, 51.951836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.584808, 46.311615, 51.693718>,  <46.757328, 46.373680, 51.538849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.584808, 46.311615, 51.693718>,  <46.297276, 46.208172, 51.951836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.584808, 46.311615, 51.693718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513792, -0.427652, -0.743728,
		-0.468296, 0.866161, -0.174538,
		0.718830, 0.258608, -0.645295,
		46.800457, 46.389198, 51.500130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.935379, 46.497295, 51.407654>,  <46.297276, 46.208172, 51.951836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.935379, 46.497295, 51.407654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.296608, 46.411118, 51.259037>,  <46.513344, 46.359413, 51.169865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.296608, 46.411118, 51.259037>,  <45.935379, 46.497295, 51.407654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296608, 46.411118, 51.259037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417687, -0.239148, -0.876554,
		0.099991, 0.946781, -0.305954,
		0.903072, -0.215441, -0.371545,
		46.567528, 46.346485, 51.147575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058765, 46.896080, 50.736973>,  <45.935379, 46.497295, 51.407654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058765, 46.896080, 50.736973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.295166, 46.574829, 50.706749>,  <46.437004, 46.382080, 50.688614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.295166, 46.574829, 50.706749>,  <46.058765, 46.896080, 50.736973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.295166, 46.574829, 50.706749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159148, -0.024260, -0.986957,
		0.790818, 0.595314, -0.142154,
		0.590998, -0.803126, -0.075558,
		46.472466, 46.333893, 50.684082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346191, 46.897560, 50.038647>,  <46.058765, 46.896080, 50.736973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346191, 46.897560, 50.038647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.409981, 46.519859, 50.153862>,  <46.448254, 46.293240, 50.222992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.409981, 46.519859, 50.153862>,  <46.346191, 46.897560, 50.038647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.409981, 46.519859, 50.153862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138741, -0.310309, -0.940457,
		0.977405, 0.110012, -0.180491,
		0.159470, -0.944249, 0.288034,
		46.457821, 46.236584, 50.240273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.600182, 46.623962, 49.511635>,  <46.346191, 46.897560, 50.038647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.600182, 46.623962, 49.511635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.466614, 46.301231, 49.706585>,  <46.386475, 46.107594, 49.823555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.466614, 46.301231, 49.706585>,  <46.600182, 46.623962, 49.511635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466614, 46.301231, 49.706585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234589, -0.429647, -0.871993,
		0.912944, -0.405505, -0.045806,
		-0.333917, -0.806826, 0.487371,
		46.366440, 46.059185, 49.852795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.909233, 46.094059, 49.128593>,  <46.600182, 46.623962, 49.511635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.909233, 46.094059, 49.128593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.594078, 45.976112, 49.344849>,  <46.404984, 45.905346, 49.474602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.594078, 45.976112, 49.344849>,  <46.909233, 46.094059, 49.128593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594078, 45.976112, 49.344849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449670, -0.324349, -0.832223,
		0.420747, -0.898806, 0.122959,
		-0.787888, -0.294864, 0.540635,
		46.357712, 45.887653, 49.507038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809288, 45.348621, 48.917358>,  <46.909233, 46.094059, 49.128593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.809288, 45.348621, 48.917358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.469292, 45.500973, 49.062927>,  <46.265293, 45.592384, 49.150269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.469292, 45.500973, 49.062927>,  <46.809288, 45.348621, 48.917358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.469292, 45.500973, 49.062927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502301, -0.377781, -0.777801,
		-0.158766, -0.843926, 0.512428,
		-0.849992, 0.380882, 0.363926,
		46.214294, 45.615238, 49.172104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.281445, 44.790646, 48.907379>,  <46.809288, 45.348621, 48.917358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.281445, 44.790646, 48.907379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.067741, 45.128773, 48.907562>,  <45.939518, 45.331650, 48.907673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.067741, 45.128773, 48.907562>,  <46.281445, 44.790646, 48.907379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.067741, 45.128773, 48.907562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517137, -0.326416, -0.791216,
		-0.668683, -0.422949, 0.611537,
		-0.534259, 0.845321, 0.000453,
		45.907463, 45.382370, 48.907700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549950, 44.651722, 48.899559>,  <46.281445, 44.790646, 48.907379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549950, 44.651722, 48.899559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.546379, 45.030754, 48.771805>,  <45.544239, 45.258175, 48.695152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.546379, 45.030754, 48.771805>,  <45.549950, 44.651722, 48.899559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.546379, 45.030754, 48.771805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535276, -0.274308, -0.798896,
		-0.844630, 0.163829, 0.509667,
		-0.008923, 0.947584, -0.319382,
		45.543701, 45.315029, 48.675991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838505, 44.716381, 48.596222>,  <45.549950, 44.651722, 48.899559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838505, 44.716381, 48.596222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.044128, 45.035770, 48.470886>,  <45.167503, 45.227406, 48.395683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.044128, 45.035770, 48.470886>,  <44.838505, 44.716381, 48.596222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044128, 45.035770, 48.470886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605083, 0.078648, -0.792268,
		-0.607961, 0.596872, 0.523572,
		0.514061, 0.798473, -0.313342,
		45.198345, 45.275311, 48.376884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272160, 45.190109, 48.379345>,  <44.838505, 44.716381, 48.596222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272160, 45.190109, 48.379345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.625710, 45.288139, 48.219994>,  <44.837841, 45.346958, 48.124382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.625710, 45.288139, 48.219994>,  <44.272160, 45.190109, 48.379345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625710, 45.288139, 48.219994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372142, -0.147461, -0.916387,
		-0.283326, 0.958224, -0.039136,
		0.883876, 0.245073, -0.398375,
		44.890873, 45.361660, 48.100483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081055, 45.609936, 47.715385>,  <44.272160, 45.190109, 48.379345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081055, 45.609936, 47.715385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.454208, 45.470581, 47.678844>,  <44.678101, 45.386967, 47.656918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.454208, 45.470581, 47.678844>,  <44.081055, 45.609936, 47.715385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454208, 45.470581, 47.678844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197592, -0.282983, -0.938551,
		0.301128, 0.893614, -0.332830,
		0.932888, -0.348389, -0.091357,
		44.734074, 45.366066, 47.651436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272015, 45.903500, 47.101898>,  <44.081055, 45.609936, 47.715385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272015, 45.903500, 47.101898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.542839, 45.614666, 47.158710>,  <44.705334, 45.441364, 47.192799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.542839, 45.614666, 47.158710>,  <44.272015, 45.903500, 47.101898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542839, 45.614666, 47.158710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094508, -0.276713, -0.956294,
		0.729829, 0.634051, -0.255595,
		0.677065, -0.722087, 0.142030,
		44.745960, 45.398041, 47.201321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749054, 45.945728, 46.571598>,  <44.272015, 45.903500, 47.101898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749054, 45.945728, 46.571598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.782097, 45.568859, 46.701519>,  <44.801922, 45.342739, 46.779472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.782097, 45.568859, 46.701519>,  <44.749054, 45.945728, 46.571598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782097, 45.568859, 46.701519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099585, -0.332087, -0.937977,
		0.991594, 0.045135, -0.121257,
		0.082603, -0.942168, 0.324801,
		44.806877, 45.286209, 46.798958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229195, 45.707237, 46.213562>,  <44.749054, 45.945728, 46.571598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229195, 45.707237, 46.213562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.040108, 45.365444, 46.299725>,  <44.926655, 45.160370, 46.351421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.040108, 45.365444, 46.299725>,  <45.229195, 45.707237, 46.213562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040108, 45.365444, 46.299725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109151, -0.185787, -0.976509,
		0.874430, -0.485121, -0.005443,
		-0.472713, -0.854483, 0.215409,
		44.898293, 45.109100, 46.364346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553436, 45.147015, 45.744789>,  <45.229195, 45.707237, 46.213562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553436, 45.147015, 45.744789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.202896, 45.026482, 45.895096>,  <44.992573, 44.954163, 45.985279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.202896, 45.026482, 45.895096>,  <45.553436, 45.147015, 45.744789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202896, 45.026482, 45.895096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312003, -0.239224, -0.919471,
		0.366955, -0.923024, 0.115630,
		-0.876355, -0.301328, 0.375771,
		44.939991, 44.936085, 46.007828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.396824, 44.504128, 45.423309>,  <45.553436, 45.147015, 45.744789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.396824, 44.504128, 45.423309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.037361, 44.600155, 45.570164>,  <44.821682, 44.657772, 45.658276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.037361, 44.600155, 45.570164>,  <45.396824, 44.504128, 45.423309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037361, 44.600155, 45.570164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436749, -0.411736, -0.799827,
		-0.040848, -0.879115, 0.474857,
		-0.898656, 0.240064, 0.367134,
		44.767765, 44.672173, 45.680305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.611271, 44.060947, 32.812183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.864288, 44.315678, 32.988518>,  <45.016098, 44.468517, 33.094318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.864288, 44.315678, 32.988518>,  <44.611271, 44.060947, 32.812183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864288, 44.315678, 32.988518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138725, 0.466814, -0.873407,
		-0.761999, 0.613624, 0.206937,
		0.632544, 0.636828, 0.440837,
		45.054050, 44.506725, 33.120770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354332, 44.674038, 32.596718>,  <44.611271, 44.060947, 32.812183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354332, 44.674038, 32.596718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736557, 44.727707, 32.701714>,  <44.965893, 44.759911, 32.764709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736557, 44.727707, 32.701714>,  <44.354332, 44.674038, 32.596718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736557, 44.727707, 32.701714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090647, 0.713531, -0.694735,
		-0.280508, 0.687655, 0.669661,
		0.955562, 0.134176, 0.262485,
		45.023224, 44.767960, 32.780460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477554, 45.362938, 32.466366>,  <44.354332, 44.674038, 32.596718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477554, 45.362938, 32.466366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.816650, 45.153210, 32.434334>,  <45.020107, 45.027370, 32.415115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.816650, 45.153210, 32.434334>,  <44.477554, 45.362938, 32.466366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816650, 45.153210, 32.434334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252844, 0.532212, -0.807973,
		0.466260, 0.664707, 0.583752,
		0.847745, -0.524324, -0.080082,
		45.070972, 44.995911, 32.410309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280293, 45.200741, 33.186188>,  <44.477554, 45.362938, 32.466366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280293, 45.200741, 33.186188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082443, 45.547543, 33.210342>,  <43.963734, 45.755623, 33.224834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082443, 45.547543, 33.210342>,  <44.280293, 45.200741, 33.186188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082443, 45.547543, 33.210342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391204, -0.284147, 0.875340,
		0.776082, 0.409345, 0.479723,
		-0.494628, 0.867005, 0.060384,
		43.934055, 45.807644, 33.228458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279678, 45.362186, 33.903168>,  <44.280293, 45.200741, 33.186188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279678, 45.362186, 33.903168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.970558, 45.546913, 33.729038>,  <43.785084, 45.657749, 33.624561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.970558, 45.546913, 33.729038>,  <44.279678, 45.362186, 33.903168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970558, 45.546913, 33.729038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559855, -0.173026, 0.810324,
		0.298896, 0.869938, 0.392263,
		-0.772803, 0.461813, -0.435322,
		43.738716, 45.685455, 33.598442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036793, 45.865524, 34.388332>,  <44.279678, 45.362186, 33.903168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036793, 45.865524, 34.388332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.735161, 45.808956, 34.131783>,  <43.554180, 45.775013, 33.977852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.735161, 45.808956, 34.131783>,  <44.036793, 45.865524, 34.388332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735161, 45.808956, 34.131783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619429, -0.171507, 0.766090,
		-0.218343, 0.974980, 0.041729,
		-0.754079, -0.141422, -0.641378,
		43.508938, 45.766529, 33.939369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440937, 46.212795, 34.683186>,  <44.036793, 45.865524, 34.388332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440937, 46.212795, 34.683186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281822, 45.923138, 34.457840>,  <43.186352, 45.749344, 34.322632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281822, 45.923138, 34.457840>,  <43.440937, 46.212795, 34.683186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281822, 45.923138, 34.457840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633987, -0.226898, 0.739309,
		-0.663193, 0.651253, -0.368841,
		-0.397788, -0.724145, -0.563364,
		43.162487, 45.705894, 34.288830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773930, 46.280331, 34.804951>,  <43.440937, 46.212795, 34.683186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773930, 46.280331, 34.804951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.827484, 45.903385, 34.682293>,  <42.859615, 45.677219, 34.608700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.827484, 45.903385, 34.682293>,  <42.773930, 46.280331, 34.804951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827484, 45.903385, 34.682293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709707, -0.307137, 0.634021,
		-0.691658, 0.132739, -0.709922,
		0.133884, -0.942363, -0.306640,
		42.867649, 45.620678, 34.590302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102425, 45.981869, 34.842045>,  <42.773930, 46.280331, 34.804951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102425, 45.981869, 34.842045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.334724, 45.660080, 34.792171>,  <42.474106, 45.467007, 34.762249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.334724, 45.660080, 34.792171>,  <42.102425, 45.981869, 34.842045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334724, 45.660080, 34.792171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554738, -0.503164, 0.662640,
		-0.595813, -0.315663, -0.738487,
		0.580751, -0.804477, -0.124682,
		42.508949, 45.418736, 34.754768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714485, 45.373409, 34.697292>,  <42.102425, 45.981869, 34.842045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714485, 45.373409, 34.697292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.056343, 45.234730, 34.851891>,  <42.261459, 45.151524, 34.944649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.056343, 45.234730, 34.851891>,  <41.714485, 45.373409, 34.697292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056343, 45.234730, 34.851891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518520, -0.531526, 0.669789,
		-0.026782, -0.772839, -0.634037,
		0.854646, -0.346700, 0.386497,
		42.312737, 45.130718, 34.967838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536312, 44.682301, 34.955162>,  <41.714485, 45.373409, 34.697292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536312, 44.682301, 34.955162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886955, 44.729874, 35.141674>,  <42.097340, 44.758419, 35.253582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886955, 44.729874, 35.141674>,  <41.536312, 44.682301, 34.955162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886955, 44.729874, 35.141674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346880, -0.515398, 0.783607,
		0.333517, -0.848657, -0.410545,
		0.876608, 0.118937, 0.466276,
		42.149937, 44.765556, 35.281555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776203, 43.984013, 35.201809>,  <41.536312, 44.682301, 34.955162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776203, 43.984013, 35.201809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.924629, 44.291557, 35.410099>,  <42.013683, 44.476086, 35.535072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.924629, 44.291557, 35.410099>,  <41.776203, 43.984013, 35.201809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924629, 44.291557, 35.410099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290863, -0.436312, 0.851487,
		0.881878, -0.467419, 0.061733,
		0.371067, 0.768863, 0.520729,
		42.035950, 44.522217, 35.566319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873322, 43.665234, 35.791904>,  <41.776203, 43.984013, 35.201809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873322, 43.665234, 35.791904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.924599, 44.050758, 35.885395>,  <41.955364, 44.282074, 35.941490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.924599, 44.050758, 35.885395>,  <41.873322, 43.665234, 35.791904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924599, 44.050758, 35.885395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353216, -0.175849, 0.918867,
		0.926717, -0.200350, 0.317891,
		0.128194, 0.963814, 0.233729,
		41.963058, 44.339901, 35.955513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196995, 43.696136, 36.447983>,  <41.873322, 43.665234, 35.791904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196995, 43.696136, 36.447983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.029182, 44.058640, 36.427269>,  <41.928493, 44.276142, 36.414841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.029182, 44.058640, 36.427269>,  <42.196995, 43.696136, 36.447983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029182, 44.058640, 36.427269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292202, -0.080819, 0.952936,
		0.859423, 0.414921, 0.298717,
		-0.419535, 0.906261, -0.051783,
		41.903320, 44.330517, 36.411736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388416, 44.056831, 37.009239>,  <42.196995, 43.696136, 36.447983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388416, 44.056831, 37.009239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.050789, 44.247074, 36.910168>,  <41.848213, 44.361221, 36.850727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.050789, 44.247074, 36.910168>,  <42.388416, 44.056831, 37.009239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050789, 44.247074, 36.910168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338528, -0.114418, 0.933974,
		0.415869, 0.872183, 0.257584,
		-0.844068, 0.475611, -0.247675,
		41.797569, 44.389759, 36.835865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178928, 44.411610, 37.565178>,  <42.388416, 44.056831, 37.009239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178928, 44.411610, 37.565178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.847549, 44.479126, 37.351566>,  <41.648724, 44.519634, 37.223400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.847549, 44.479126, 37.351566>,  <42.178928, 44.411610, 37.565178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847549, 44.479126, 37.351566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511470, 0.160504, 0.844179,
		0.228204, 0.972496, -0.046637,
		-0.828445, 0.168792, -0.534030,
		41.599014, 44.529762, 37.191357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953663, 45.179813, 37.650803>,  <42.178928, 44.411610, 37.565178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953663, 45.179813, 37.650803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664276, 44.911205, 37.586735>,  <41.490643, 44.750042, 37.548294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664276, 44.911205, 37.586735>,  <41.953663, 45.179813, 37.650803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664276, 44.911205, 37.586735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349218, 0.155848, 0.923990,
		-0.595514, 0.724414, -0.347257,
		-0.723471, -0.671518, -0.160168,
		41.447235, 44.709751, 37.538685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272194, 45.511810, 37.779797>,  <41.953663, 45.179813, 37.650803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272194, 45.511810, 37.779797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.209747, 45.118023, 37.811932>,  <41.172279, 44.881752, 37.831215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.209747, 45.118023, 37.811932>,  <41.272194, 45.511810, 37.779797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209747, 45.118023, 37.811932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485448, 0.147311, 0.861766,
		-0.860213, 0.095538, -0.500905,
		-0.156120, -0.984465, 0.080340,
		41.162910, 44.822681, 37.836033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633881, 45.448982, 38.124809>,  <41.272194, 45.511810, 37.779797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633881, 45.448982, 38.124809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.792007, 45.083599, 38.163418>,  <40.886883, 44.864368, 38.186584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.792007, 45.083599, 38.163418>,  <40.633881, 45.448982, 38.124809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792007, 45.083599, 38.163418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308462, -0.033035, 0.950663,
		-0.865205, -0.405583, -0.294827,
		0.395313, -0.913461, 0.096525,
		40.910603, 44.809563, 38.192375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236671, 45.165604, 38.694241>,  <40.633881, 45.448982, 38.124809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236671, 45.165604, 38.694241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.536453, 44.902554, 38.663654>,  <40.716324, 44.744724, 38.645302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.536453, 44.902554, 38.663654>,  <40.236671, 45.165604, 38.694241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536453, 44.902554, 38.663654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058768, -0.181124, 0.981703,
		-0.659440, -0.731250, -0.174391,
		0.749457, -0.657622, -0.076466,
		40.761292, 44.705265, 38.640713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995350, 44.485432, 38.903652>,  <40.236671, 45.165604, 38.694241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995350, 44.485432, 38.903652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.391403, 44.509384, 38.954330>,  <40.629036, 44.523754, 38.984737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.391403, 44.509384, 38.954330>,  <39.995350, 44.485432, 38.903652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391403, 44.509384, 38.954330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124829, -0.033918, 0.991598,
		0.063674, -0.997629, -0.026108,
		0.990133, 0.059880, 0.126693,
		40.688442, 44.527348, 38.992340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093948, 44.072613, 39.508015>,  <39.995350, 44.485432, 38.903652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093948, 44.072613, 39.508015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.439751, 44.268002, 39.460640>,  <40.647232, 44.385235, 39.432217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.439751, 44.268002, 39.460640>,  <40.093948, 44.072613, 39.508015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439751, 44.268002, 39.460640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171639, -0.065439, 0.982984,
		0.472407, -0.870124, -0.140413,
		0.864506, 0.488469, -0.118433,
		40.699104, 44.414543, 39.425110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587696, 43.641510, 39.782314>,  <40.093948, 44.072613, 39.508015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587696, 43.641510, 39.782314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.730049, 44.015041, 39.796822>,  <40.815460, 44.239159, 39.805527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.730049, 44.015041, 39.796822>,  <40.587696, 43.641510, 39.782314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730049, 44.015041, 39.796822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361192, -0.173241, 0.916257,
		0.861908, -0.312983, -0.398944,
		0.355887, 0.933825, 0.036271,
		40.836815, 44.295189, 39.807701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296471, 43.555595, 40.084553>,  <40.587696, 43.641510, 39.782314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296471, 43.555595, 40.084553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.206474, 43.943615, 40.121185>,  <41.152477, 44.176426, 40.143166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.206474, 43.943615, 40.121185>,  <41.296471, 43.555595, 40.084553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206474, 43.943615, 40.121185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321336, -0.014863, 0.946849,
		0.919849, 0.242463, -0.308367,
		-0.224992, 0.970047, 0.091583,
		41.138977, 44.234631, 40.148659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936718, 43.882793, 40.236927>,  <41.296471, 43.555595, 40.084553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936718, 43.882793, 40.236927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.653931, 44.128807, 40.376595>,  <41.484257, 44.276417, 40.460396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.653931, 44.128807, 40.376595>,  <41.936718, 43.882793, 40.236927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653931, 44.128807, 40.376595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276303, -0.214278, 0.936878,
		0.651035, 0.758824, -0.018448,
		-0.706973, 0.615038, 0.349168,
		41.441837, 44.313320, 40.481346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227993, 44.242165, 40.784389>,  <41.936718, 43.882793, 40.236927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227993, 44.242165, 40.784389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.840614, 44.293602, 40.869774>,  <41.608185, 44.324463, 40.921005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.840614, 44.293602, 40.869774>,  <42.227993, 44.242165, 40.784389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840614, 44.293602, 40.869774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216230, 0.007771, 0.976312,
		0.123885, 0.991667, -0.035331,
		-0.968451, 0.128590, 0.213465,
		41.550079, 44.332180, 40.933815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273811, 44.744446, 41.362728>,  <42.227993, 44.242165, 40.784389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273811, 44.744446, 41.362728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.888962, 44.642101, 41.400356>,  <41.658051, 44.580692, 41.422932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.888962, 44.642101, 41.400356>,  <42.273811, 44.744446, 41.362728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888962, 44.642101, 41.400356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030926, 0.240393, 0.970183,
		-0.270848, 0.936346, -0.223375,
		-0.962125, -0.255864, 0.094068,
		41.600323, 44.565342, 41.428577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901707, 45.276409, 41.737576>,  <42.273811, 44.744446, 41.362728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901707, 45.276409, 41.737576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.724121, 44.921597, 41.788292>,  <41.617569, 44.708710, 41.818722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.724121, 44.921597, 41.788292>,  <41.901707, 45.276409, 41.737576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724121, 44.921597, 41.788292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044566, 0.119466, 0.991837,
		-0.894935, 0.445992, -0.013508,
		-0.443966, -0.887028, 0.126790,
		41.590931, 44.655487, 41.826328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534039, 45.362965, 42.310352>,  <41.901707, 45.276409, 41.737576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534039, 45.362965, 42.310352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.549706, 44.965256, 42.270561>,  <41.559105, 44.726631, 42.246689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.549706, 44.965256, 42.270561>,  <41.534039, 45.362965, 42.310352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549706, 44.965256, 42.270561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136562, -0.103942, 0.985163,
		-0.989857, -0.024999, -0.139850,
		0.039165, -0.994269, -0.099473,
		41.561455, 44.666973, 42.240719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961716, 45.077595, 42.768234>,  <41.534039, 45.362965, 42.310352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961716, 45.077595, 42.768234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.259247, 44.815502, 42.715492>,  <41.437767, 44.658245, 42.683846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.259247, 44.815502, 42.715492>,  <40.961716, 45.077595, 42.768234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259247, 44.815502, 42.715492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168230, -0.007385, 0.985720,
		-0.646852, -0.755389, 0.104737,
		0.743829, -0.655235, -0.131856,
		41.482395, 44.618931, 42.675934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924660, 44.616192, 43.255379>,  <40.961716, 45.077595, 42.768234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924660, 44.616192, 43.255379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304703, 44.553795, 43.147327>,  <41.532726, 44.516357, 43.082497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304703, 44.553795, 43.147327>,  <40.924660, 44.616192, 43.255379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304703, 44.553795, 43.147327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244797, -0.163846, 0.955630,
		-0.193340, -0.974073, -0.117481,
		0.950102, -0.156002, -0.270128,
		41.589733, 44.506996, 43.066288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080448, 43.879391, 43.576138>,  <40.924660, 44.616192, 43.255379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080448, 43.879391, 43.576138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422531, 44.078182, 43.517303>,  <41.627781, 44.197456, 43.482002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422531, 44.078182, 43.517303>,  <41.080448, 43.879391, 43.576138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422531, 44.078182, 43.517303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272751, -0.190243, 0.943088,
		0.440715, -0.846651, -0.298249,
		0.855206, 0.496981, -0.147082,
		41.679092, 44.227276, 43.473179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.662628, 43.526958, 43.862747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797363, 43.902100, 43.829330>,  <41.878204, 44.127182, 43.809280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797363, 43.902100, 43.829330>,  <41.662628, 43.526958, 43.862747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797363, 43.902100, 43.829330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476734, -0.093367, 0.874075,
		0.811951, -0.334249, -0.478554,
		0.336840, 0.937849, -0.083538,
		41.898415, 44.183453, 43.804268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307598, 43.458607, 44.173122>,  <41.662628, 43.526958, 43.862747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307598, 43.458607, 44.173122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245697, 43.853760, 44.168526>,  <42.208557, 44.090851, 44.165768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245697, 43.853760, 44.168526>,  <42.307598, 43.458607, 44.173122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245697, 43.853760, 44.168526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298508, 0.057843, 0.952653,
		0.941777, 0.143998, -0.303843,
		-0.154756, 0.987886, -0.011491,
		42.199272, 44.150127, 44.165077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860733, 43.697655, 44.628483>,  <42.307598, 43.458607, 44.173122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860733, 43.697655, 44.628483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605492, 44.005253, 44.613144>,  <42.452347, 44.189812, 44.603939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605492, 44.005253, 44.613144>,  <42.860733, 43.697655, 44.628483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605492, 44.005253, 44.613144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046029, 0.087815, 0.995073,
		0.768573, 0.633195, -0.091431,
		-0.638104, 0.768995, -0.038346,
		42.414059, 44.235950, 44.601639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383488, 44.226604, 44.331337>,  <42.860733, 43.697655, 44.628483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383488, 44.226604, 44.331337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767960, 44.334076, 44.306198>,  <43.998642, 44.398560, 44.291115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767960, 44.334076, 44.306198>,  <43.383488, 44.226604, 44.331337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767960, 44.334076, 44.306198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035187, -0.106551, -0.993685,
		-0.273678, 0.957319, -0.092960,
		0.961178, 0.268678, -0.062845,
		44.056313, 44.414680, 44.287346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428570, 44.639492, 43.671818>,  <43.383488, 44.226604, 44.331337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428570, 44.639492, 43.671818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809334, 44.549049, 43.754509>,  <44.037792, 44.494781, 43.804123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809334, 44.549049, 43.754509>,  <43.428570, 44.639492, 43.671818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809334, 44.549049, 43.754509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158762, -0.213044, -0.964057,
		0.262025, 0.950519, -0.166902,
		0.951913, -0.226110, 0.206729,
		44.094906, 44.481216, 43.816528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808582, 45.056721, 43.278870>,  <43.428570, 44.639492, 43.671818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808582, 45.056721, 43.278870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056870, 44.756565, 43.369751>,  <44.205841, 44.576469, 43.424278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056870, 44.756565, 43.369751>,  <43.808582, 45.056721, 43.278870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056870, 44.756565, 43.369751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147921, -0.172496, -0.973840,
		0.769954, 0.638087, 0.003928,
		0.620717, -0.750393, 0.227201,
		44.243084, 44.531448, 43.437912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456890, 45.257820, 42.954193>,  <43.808582, 45.056721, 43.278870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456890, 45.257820, 42.954193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420067, 44.863777, 43.012280>,  <44.397972, 44.627350, 43.047131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420067, 44.863777, 43.012280>,  <44.456890, 45.257820, 42.954193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420067, 44.863777, 43.012280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447138, -0.171205, -0.877928,
		0.889715, -0.015887, 0.456239,
		-0.092058, -0.985107, 0.145220,
		44.392448, 44.568245, 43.055847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119789, 44.998520, 42.735390>,  <44.456890, 45.257820, 42.954193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119789, 44.998520, 42.735390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868484, 44.687351, 42.739830>,  <44.717701, 44.500648, 42.742496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868484, 44.687351, 42.739830>,  <45.119789, 44.998520, 42.735390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868484, 44.687351, 42.739830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341563, -0.288617, -0.894447,
		0.699016, -0.558154, 0.447037,
		-0.628261, -0.777923, 0.011103,
		44.680008, 44.453976, 42.743160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508194, 44.485905, 42.576694>,  <45.119789, 44.998520, 42.735390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508194, 44.485905, 42.576694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142349, 44.349228, 42.490223>,  <44.922844, 44.267223, 42.438339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142349, 44.349228, 42.490223>,  <45.508194, 44.485905, 42.576694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142349, 44.349228, 42.490223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379016, -0.538297, -0.752717,
		0.140830, -0.770378, 0.621840,
		-0.914611, -0.341692, -0.216177,
		44.867966, 44.246719, 42.425369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528419, 43.798019, 42.351662>,  <45.508194, 44.485905, 42.576694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528419, 43.798019, 42.351662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175125, 43.911034, 42.201958>,  <44.963150, 43.978844, 42.112137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175125, 43.911034, 42.201958>,  <45.528419, 43.798019, 42.351662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175125, 43.911034, 42.201958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175033, -0.541795, -0.822084,
		-0.435037, -0.791602, 0.429080,
		-0.883236, 0.282533, -0.374257,
		44.910156, 43.995796, 42.089680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.392723, 43.304241, 41.895645>,  <45.528419, 43.798019, 42.351662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.392723, 43.304241, 41.895645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085419, 43.533894, 41.782398>,  <44.901035, 43.671684, 41.714451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085419, 43.533894, 41.782398>,  <45.392723, 43.304241, 41.895645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085419, 43.533894, 41.782398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040202, -0.398128, -0.916448,
		-0.638878, -0.715450, 0.282784,
		-0.768257, 0.574130, -0.283118,
		44.854942, 43.706131, 41.697464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817848, 42.910271, 41.536297>,  <45.392723, 43.304241, 41.895645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817848, 42.910271, 41.536297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777184, 43.280144, 41.389526>,  <44.752785, 43.502068, 41.301464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777184, 43.280144, 41.389526>,  <44.817848, 42.910271, 41.536297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.777184, 43.280144, 41.389526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236370, -0.335824, -0.911785,
		-0.966330, -0.179424, -0.184426,
		-0.101661, 0.924678, -0.366927,
		44.746685, 43.557549, 41.279449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431713, 42.869240, 40.820457>,  <44.817848, 42.910271, 41.536297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431713, 42.869240, 40.820457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587234, 43.237221, 40.800392>,  <44.680550, 43.458008, 40.788353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587234, 43.237221, 40.800392>,  <44.431713, 42.869240, 40.820457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587234, 43.237221, 40.800392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222315, -0.146517, -0.963903,
		-0.894095, 0.363619, -0.261486,
		0.388805, 0.919953, -0.050162,
		44.703876, 43.513206, 40.785343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084038, 43.254040, 40.293301>,  <44.431713, 42.869240, 40.820457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084038, 43.254040, 40.293301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436043, 43.436848, 40.344997>,  <44.647247, 43.546532, 40.376015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436043, 43.436848, 40.344997>,  <44.084038, 43.254040, 40.293301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436043, 43.436848, 40.344997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257047, -0.229475, -0.938759,
		-0.399377, 0.859343, -0.319418,
		0.880014, 0.457024, 0.129244,
		44.700047, 43.573956, 40.383770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209827, 43.641411, 39.693779>,  <44.084038, 43.254040, 40.293301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209827, 43.641411, 39.693779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576767, 43.606510, 39.849144>,  <44.796928, 43.585567, 39.942364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576767, 43.606510, 39.849144>,  <44.209827, 43.641411, 39.693779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576767, 43.606510, 39.849144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365321, -0.203145, -0.908445,
		0.158170, 0.975253, -0.154479,
		0.917346, -0.087254, 0.388412,
		44.851971, 43.580334, 39.965668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583122, 44.079964, 39.248131>,  <44.209827, 43.641411, 39.693779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583122, 44.079964, 39.248131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878258, 43.874550, 39.423344>,  <45.055340, 43.751301, 39.528473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878258, 43.874550, 39.423344>,  <44.583122, 44.079964, 39.248131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878258, 43.874550, 39.423344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341703, -0.275470, -0.898530,
		0.582091, 0.812649, -0.027777,
		0.737841, -0.513534, 0.438033,
		45.099609, 43.720490, 39.554752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263962, 44.368980, 38.995811>,  <44.583122, 44.079964, 39.248131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263962, 44.368980, 38.995811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328964, 43.997566, 39.129330>,  <45.367966, 43.774719, 39.209442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328964, 43.997566, 39.129330>,  <45.263962, 44.368980, 38.995811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328964, 43.997566, 39.129330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585645, -0.181493, -0.789988,
		0.794111, 0.323864, 0.514296,
		0.162508, -0.928532, 0.333795,
		45.377716, 43.719006, 39.229469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951019, 44.175716, 38.759098>,  <45.263962, 44.368980, 38.995811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951019, 44.175716, 38.759098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774712, 43.825142, 38.836639>,  <45.668926, 43.614796, 38.883163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774712, 43.825142, 38.836639>,  <45.951019, 44.175716, 38.759098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.774712, 43.825142, 38.836639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387533, -0.380609, -0.839616,
		0.809652, -0.294955, 0.507410,
		-0.440773, -0.876435, 0.193856,
		45.642479, 43.562210, 38.894794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.447655, 43.698586, 38.554203>,  <45.951019, 44.175716, 38.759098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.447655, 43.698586, 38.554203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102684, 43.496113, 38.554573>,  <45.895702, 43.374630, 38.554794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102684, 43.496113, 38.554573>,  <46.447655, 43.698586, 38.554203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.102684, 43.496113, 38.554573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166051, -0.284633, -0.944146,
		0.478172, -0.814103, 0.329527,
		-0.862426, -0.506183, 0.000921,
		45.843956, 43.344257, 38.554848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.652534, 43.036613, 38.247692>,  <46.447655, 43.698586, 38.554203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.652534, 43.036613, 38.247692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259636, 43.090885, 38.195862>,  <46.023899, 43.123447, 38.164764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259636, 43.090885, 38.195862>,  <46.652534, 43.036613, 38.247692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.259636, 43.090885, 38.195862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098824, -0.212887, -0.972066,
		-0.159472, -0.967611, 0.195699,
		-0.982244, 0.135677, -0.129573,
		45.964962, 43.131592, 38.156990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.474072, 42.523926, 37.799953>,  <46.652534, 43.036613, 38.247692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.474072, 42.523926, 37.799953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176796, 42.788559, 37.760017>,  <45.998428, 42.947338, 37.736057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176796, 42.788559, 37.760017>,  <46.474072, 42.523926, 37.799953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.176796, 42.788559, 37.760017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020680, -0.126434, -0.991759,
		-0.668758, -0.739133, 0.080283,
		-0.743193, 0.661586, -0.099839,
		45.953838, 42.987034, 37.730064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.057915, 42.198017, 37.273853>,  <46.474072, 42.523926, 37.799953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.057915, 42.198017, 37.273853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945099, 42.581779, 37.274448>,  <45.877411, 42.812035, 37.274803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945099, 42.581779, 37.274448>,  <46.057915, 42.198017, 37.273853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945099, 42.581779, 37.274448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194467, -0.055653, -0.979329,
		-0.939487, -0.276499, 0.202269,
		-0.282040, 0.959401, 0.001485,
		45.860485, 42.869598, 37.274895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430977, 42.242607, 36.907448>,  <46.057915, 42.198017, 37.273853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430977, 42.242607, 36.907448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563072, 42.620163, 36.909058>,  <45.642330, 42.846695, 36.910023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563072, 42.620163, 36.909058>,  <45.430977, 42.242607, 36.907448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563072, 42.620163, 36.909058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335547, 0.121380, -0.934171,
		-0.882243, 0.307147, 0.356803,
		0.330237, 0.943889, 0.004025,
		45.662144, 42.903328, 36.910267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941414, 42.687996, 36.489830>,  <45.430977, 42.242607, 36.907448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941414, 42.687996, 36.489830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288834, 42.883991, 36.519596>,  <45.497284, 43.001587, 36.537457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288834, 42.883991, 36.519596>,  <44.941414, 42.687996, 36.489830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.288834, 42.883991, 36.519596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166879, 0.430521, -0.887019,
		-0.466663, 0.758001, 0.455697,
		0.868549, 0.489986, 0.074413,
		45.549397, 43.030987, 36.541920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.740250, 43.360744, 36.261208>,  <44.941414, 42.687996, 36.489830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.740250, 43.360744, 36.261208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131889, 43.316998, 36.192619>,  <45.366875, 43.290749, 36.151466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131889, 43.316998, 36.192619>,  <44.740250, 43.360744, 36.261208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131889, 43.316998, 36.192619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092057, 0.513464, -0.853159,
		0.181350, 0.851113, 0.492665,
		0.979101, -0.109367, -0.171468,
		45.425621, 43.284187, 36.141178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.111015, 44.093830, 36.212551>,  <44.740250, 43.360744, 36.261208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.111015, 44.093830, 36.212551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338493, 43.819721, 36.030571>,  <45.474979, 43.655254, 35.921383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338493, 43.819721, 36.030571>,  <45.111015, 44.093830, 36.212551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.338493, 43.819721, 36.030571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063948, 0.588262, -0.806138,
		0.820057, 0.429356, 0.378365,
		0.568698, -0.685275, -0.454952,
		45.509102, 43.614140, 35.894085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.645840, 44.588688, 35.825520>,  <45.111015, 44.093830, 36.212551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.645840, 44.588688, 35.825520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661209, 44.213902, 35.686600>,  <45.670429, 43.989029, 35.603249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661209, 44.213902, 35.686600>,  <45.645840, 44.588688, 35.825520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661209, 44.213902, 35.686600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201338, 0.347688, -0.915738,
		0.978768, -0.034738, 0.202007,
		0.038424, -0.936967, -0.347300,
		45.672737, 43.932812, 35.582409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265526, 44.518120, 35.483818>,  <45.645840, 44.588688, 35.825520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265526, 44.518120, 35.483818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.044411, 44.231449, 35.313736>,  <45.911743, 44.059444, 35.211685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.044411, 44.231449, 35.313736>,  <46.265526, 44.518120, 35.483818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.044411, 44.231449, 35.313736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132780, 0.427984, -0.893979,
		0.822678, -0.550636, -0.141422,
		-0.552784, -0.716679, -0.425207,
		45.878574, 44.016445, 35.186172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660233, 44.266640, 34.770233>,  <46.265526, 44.518120, 35.483818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.660233, 44.266640, 34.770233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.280701, 44.143261, 34.743183>,  <46.052982, 44.069233, 34.726955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.280701, 44.143261, 34.743183>,  <46.660233, 44.266640, 34.770233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280701, 44.143261, 34.743183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087070, 0.461403, -0.882908,
		0.303533, -0.831845, -0.464652,
		-0.948834, -0.308449, -0.067622,
		45.996052, 44.050728, 34.722897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564362, 44.026226, 34.080967>,  <46.660233, 44.266640, 34.770233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564362, 44.026226, 34.080967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187973, 44.065399, 34.210571>,  <45.962139, 44.088905, 34.288334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187973, 44.065399, 34.210571>,  <46.564362, 44.026226, 34.080967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187973, 44.065399, 34.210571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300440, 0.199255, -0.932756,
		-0.155911, -0.975041, -0.158070,
		-0.940972, 0.097936, 0.324008,
		45.905682, 44.094780, 34.307774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.168747, 43.655891, 33.594269>,  <46.564362, 44.026226, 34.080967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.168747, 43.655891, 33.594269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.902458, 43.904659, 33.759209>,  <45.742687, 44.053921, 33.858173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.902458, 43.904659, 33.759209>,  <46.168747, 43.655891, 33.594269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902458, 43.904659, 33.759209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240000, 0.344782, -0.907483,
		-0.706553, -0.703093, -0.080268,
		-0.665720, 0.621920, 0.412349,
		45.702744, 44.091236, 33.882912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503052, 43.524815, 33.214119>,  <46.168747, 43.655891, 33.594269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503052, 43.524815, 33.214119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497116, 43.888763, 33.379967>,  <45.493557, 44.107132, 33.479473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497116, 43.888763, 33.379967>,  <45.503052, 43.524815, 33.214119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.497116, 43.888763, 33.379967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205064, 0.403079, -0.891894,
		-0.978636, -0.098256, 0.180602,
		-0.014837, 0.909875, 0.414617,
		45.492664, 44.161728, 33.504353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.900661, 43.863293, 45.424049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.646027, 44.171410, 45.439064>,  <44.493244, 44.356277, 45.448071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.646027, 44.171410, 45.439064>,  <44.900661, 43.863293, 45.424049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646027, 44.171410, 45.439064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264896, -0.172690, -0.948688,
		-0.724283, -0.613866, 0.313979,
		-0.636588, 0.770290, 0.037534,
		44.455051, 44.402496, 45.450325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251625, 43.584599, 45.113201>,  <44.900661, 43.863293, 45.424049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251625, 43.584599, 45.113201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.268684, 43.981491, 45.066452>,  <44.278919, 44.219627, 45.038403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.268684, 43.981491, 45.066452>,  <44.251625, 43.584599, 45.113201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268684, 43.981491, 45.066452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227907, -0.104234, -0.968088,
		-0.972748, 0.067927, 0.221691,
		0.042652, 0.992230, -0.116874,
		44.281479, 44.279160, 45.031391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774918, 43.742924, 44.673653>,  <44.251625, 43.584599, 45.113201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774918, 43.742924, 44.673653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.996246, 44.075909, 44.662010>,  <44.129044, 44.275700, 44.655025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.996246, 44.075909, 44.662010>,  <43.774918, 43.742924, 44.673653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996246, 44.075909, 44.662010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072979, 0.013645, -0.997240,
		-0.829764, 0.553919, 0.068302,
		0.553323, 0.832458, -0.029102,
		44.162243, 44.325645, 44.653278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227863, 44.272999, 45.031742>,  <43.774918, 43.742924, 44.673653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227863, 44.272999, 45.031742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.846764, 44.394249, 45.023811>,  <42.618103, 44.466999, 45.019054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.846764, 44.394249, 45.023811>,  <43.227863, 44.272999, 45.031742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846764, 44.394249, 45.023811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039705, 0.188960, 0.981182,
		0.301164, 0.934029, -0.192066,
		-0.952745, 0.303122, -0.019822,
		42.560940, 44.485188, 45.017864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216877, 44.926895, 45.424500>,  <43.227863, 44.272999, 45.031742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216877, 44.926895, 45.424500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.843712, 44.783009, 45.417755>,  <42.619812, 44.696678, 45.413708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.843712, 44.783009, 45.417755>,  <43.216877, 44.926895, 45.424500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843712, 44.783009, 45.417755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040088, 0.057213, 0.997557,
		-0.357873, 0.931306, -0.067795,
		-0.932909, -0.359717, -0.016859,
		42.563839, 44.675095, 45.412697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852043, 45.309624, 45.942322>,  <43.216877, 44.926895, 45.424500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852043, 45.309624, 45.942322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.642372, 44.973454, 45.887302>,  <42.516571, 44.771751, 45.854290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.642372, 44.973454, 45.887302>,  <42.852043, 45.309624, 45.942322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642372, 44.973454, 45.887302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097314, -0.101348, 0.990080,
		-0.846032, 0.532361, -0.028661,
		-0.524176, -0.840428, -0.137550,
		42.485119, 44.721325, 45.846039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090858, 45.365993, 46.216724>,  <42.852043, 45.309624, 45.942322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090858, 45.365993, 46.216724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.169083, 44.973969, 46.230789>,  <42.216019, 44.738754, 46.239227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.169083, 44.973969, 46.230789>,  <42.090858, 45.365993, 46.216724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169083, 44.973969, 46.230789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216455, -0.008166, 0.976259,
		-0.956506, -0.198530, -0.213736,
		0.195562, -0.980061, 0.035162,
		42.227753, 44.679951, 46.241337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548187, 45.084026, 46.548927>,  <42.090858, 45.365993, 46.216724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548187, 45.084026, 46.548927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.809402, 44.783695, 46.588516>,  <41.966133, 44.603497, 46.612270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.809402, 44.783695, 46.588516>,  <41.548187, 45.084026, 46.548927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809402, 44.783695, 46.588516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351427, -0.184671, 0.917821,
		-0.670849, -0.634156, -0.384459,
		0.653040, -0.750829, 0.098973,
		42.005314, 44.558445, 46.618210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148479, 44.531021, 46.807652>,  <41.548187, 45.084026, 46.548927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148479, 44.531021, 46.807652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.533035, 44.454247, 46.886539>,  <41.763767, 44.408180, 46.933872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.533035, 44.454247, 46.886539>,  <41.148479, 44.531021, 46.807652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533035, 44.454247, 46.886539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244983, -0.270392, 0.931059,
		-0.125379, -0.943423, -0.306973,
		0.961386, -0.191939, 0.197221,
		41.821449, 44.396664, 46.945705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095318, 43.896797, 47.105022>,  <41.148479, 44.531021, 46.807652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095318, 43.896797, 47.105022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.426994, 44.082550, 47.229469>,  <41.625999, 44.194000, 47.304138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.426994, 44.082550, 47.229469>,  <41.095318, 43.896797, 47.105022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426994, 44.082550, 47.229469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128960, -0.382648, 0.914850,
		0.543884, -0.798708, -0.257402,
		0.829192, 0.464378, 0.311118,
		41.675751, 44.221863, 47.322803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227039, 43.550064, 47.693188>,  <41.095318, 43.896797, 47.105022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227039, 43.550064, 47.693188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.496674, 43.844246, 47.720657>,  <41.658455, 44.020756, 47.737141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.496674, 43.844246, 47.720657>,  <41.227039, 43.550064, 47.693188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496674, 43.844246, 47.720657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093304, -0.007454, 0.995610,
		0.732739, -0.677531, 0.063596,
		0.674083, 0.735456, 0.068679,
		41.698898, 44.064884, 47.741261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443497, 43.519920, 48.318233>,  <41.227039, 43.550064, 47.693188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443497, 43.519920, 48.318233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.597549, 43.873642, 48.212643>,  <41.689980, 44.085873, 48.149288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.597549, 43.873642, 48.212643>,  <41.443497, 43.519920, 48.318233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597549, 43.873642, 48.212643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164206, 0.347141, 0.923325,
		0.908135, -0.312255, 0.278903,
		0.385132, 0.884302, -0.263976,
		41.713089, 44.138931, 48.133450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950546, 43.628231, 48.703846>,  <41.443497, 43.519920, 48.318233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950546, 43.628231, 48.703846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.832169, 43.995029, 48.596870>,  <41.761143, 44.215111, 48.532684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.832169, 43.995029, 48.596870>,  <41.950546, 43.628231, 48.703846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832169, 43.995029, 48.596870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049917, 0.264756, 0.963023,
		0.953900, 0.298353, -0.032579,
		-0.295946, 0.917001, -0.267443,
		41.743385, 44.270130, 48.516636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318207, 44.052017, 49.182838>,  <41.950546, 43.628231, 48.703846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318207, 44.052017, 49.182838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.006134, 44.258484, 49.041481>,  <41.818890, 44.382366, 48.956665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.006134, 44.258484, 49.041481>,  <42.318207, 44.052017, 49.182838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006134, 44.258484, 49.041481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249757, 0.260925, 0.932491,
		0.573533, 0.815774, -0.074652,
		-0.780181, 0.516169, -0.353394,
		41.772079, 44.413334, 48.935463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292515, 44.774883, 49.550568>,  <42.318207, 44.052017, 49.182838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292515, 44.774883, 49.550568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.916023, 44.737766, 49.420658>,  <41.690128, 44.715496, 49.342712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.916023, 44.737766, 49.420658>,  <42.292515, 44.774883, 49.550568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916023, 44.737766, 49.420658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337582, 0.290254, 0.895428,
		0.011174, 0.952440, -0.304522,
		-0.941230, -0.092796, -0.324770,
		41.633656, 44.709927, 49.323227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814869, 45.297325, 49.887356>,  <42.292515, 44.774883, 49.550568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814869, 45.297325, 49.887356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.519516, 45.069363, 49.743134>,  <41.342304, 44.932583, 49.656601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.519516, 45.069363, 49.743134>,  <41.814869, 45.297325, 49.887356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519516, 45.069363, 49.743134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582919, 0.270513, 0.766177,
		-0.339117, 0.775904, -0.531953,
		-0.738380, -0.569909, -0.360554,
		41.298000, 44.898392, 49.634968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241795, 45.706284, 49.708195>,  <41.814869, 45.297325, 49.887356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241795, 45.706284, 49.708195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.151512, 45.328739, 49.804688>,  <41.097343, 45.102215, 49.862583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.151512, 45.328739, 49.804688>,  <41.241795, 45.706284, 49.708195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151512, 45.328739, 49.804688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424069, 0.318116, 0.847920,
		-0.877053, 0.089082, -0.472061,
		-0.225705, -0.943857, 0.241227,
		41.083801, 45.045582, 49.877056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523163, 45.708576, 49.857445>,  <41.241795, 45.706284, 49.708195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523163, 45.708576, 49.857445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.659317, 45.379230, 50.039085>,  <40.741009, 45.181622, 50.148071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.659317, 45.379230, 50.039085>,  <40.523163, 45.708576, 49.857445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659317, 45.379230, 50.039085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538855, 0.224957, 0.811806,
		-0.770566, -0.521023, -0.367101,
		0.340388, -0.823365, 0.454100,
		40.761433, 45.132221, 50.175316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990456, 45.434589, 50.167507>,  <40.523163, 45.708576, 49.857445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990456, 45.434589, 50.167507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.279793, 45.228958, 50.351898>,  <40.453396, 45.105579, 50.462532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.279793, 45.228958, 50.351898>,  <39.990456, 45.434589, 50.167507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279793, 45.228958, 50.351898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475101, 0.113913, 0.872527,
		-0.501060, -0.850144, -0.161843,
		0.723338, -0.514080, 0.460982,
		40.496796, 45.074734, 50.490192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557495, 44.986534, 50.537792>,  <39.990456, 45.434589, 50.167507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557495, 44.986534, 50.537792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.922943, 44.968449, 50.699406>,  <40.142212, 44.957596, 50.796375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.922943, 44.968449, 50.699406>,  <39.557495, 44.986534, 50.537792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922943, 44.968449, 50.699406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406560, -0.101359, 0.907984,
		-0.000100, -0.993822, -0.110986,
		0.913624, -0.045213, 0.404038,
		40.197029, 44.954884, 50.820618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471184, 44.523006, 50.947338>,  <39.557495, 44.986534, 50.537792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471184, 44.523006, 50.947338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791077, 44.714386, 51.092392>,  <39.983013, 44.829216, 51.179424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791077, 44.714386, 51.092392>,  <39.471184, 44.523006, 50.947338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791077, 44.714386, 51.092392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462422, 0.105696, 0.880338,
		0.382871, -0.871729, 0.305776,
		0.799735, 0.478453, 0.362638,
		40.030998, 44.857922, 51.201183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691376, 44.190445, 51.598236>,  <39.471184, 44.523006, 50.947338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691376, 44.190445, 51.598236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.851875, 44.556816, 51.601646>,  <39.948174, 44.776638, 51.603691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.851875, 44.556816, 51.601646>,  <39.691376, 44.190445, 51.598236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851875, 44.556816, 51.601646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361284, 0.149708, 0.920360,
		0.841708, -0.372373, 0.390981,
		0.401250, 0.915929, 0.008521,
		39.972252, 44.831596, 51.604202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910976, 44.340195, 52.291111>,  <39.691376, 44.190445, 51.598236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910976, 44.340195, 52.291111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.864174, 44.695770, 52.113979>,  <39.836094, 44.909115, 52.007702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.864174, 44.695770, 52.113979>,  <39.910976, 44.340195, 52.291111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864174, 44.695770, 52.113979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587437, 0.297577, 0.752573,
		0.800767, 0.348189, 0.487378,
		-0.117006, 0.888939, -0.442829,
		39.829071, 44.962452, 51.981133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820435, 44.655746, 52.831562>,  <39.910976, 44.340195, 52.291111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820435, 44.655746, 52.831562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.692749, 44.937401, 52.577854>,  <39.616138, 45.106392, 52.425629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.692749, 44.937401, 52.577854>,  <39.820435, 44.655746, 52.831562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692749, 44.937401, 52.577854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608940, 0.360427, 0.706600,
		0.726151, 0.611787, 0.313723,
		-0.319214, 0.704137, -0.634266,
		39.596985, 45.148643, 52.387573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856163, 45.228764, 53.333588>,  <39.820435, 44.655746, 52.831562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856163, 45.228764, 53.333588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.645233, 45.348663, 53.015575>,  <39.518673, 45.420605, 52.824768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.645233, 45.348663, 53.015575>,  <39.856163, 45.228764, 53.333588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645233, 45.348663, 53.015575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669378, 0.429742, 0.606015,
		0.523313, 0.851745, -0.025967,
		-0.527329, 0.299754, -0.795029,
		39.487034, 45.438591, 52.777065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739483, 45.893650, 53.380283>,  <39.856163, 45.228764, 53.333588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739483, 45.893650, 53.380283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.417831, 45.780163, 53.171333>,  <39.224838, 45.712070, 53.045963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.417831, 45.780163, 53.171333>,  <39.739483, 45.893650, 53.380283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417831, 45.780163, 53.171333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584630, 0.536531, 0.608558,
		0.107613, 0.794758, -0.597310,
		-0.804131, -0.283717, -0.522377,
		39.176594, 45.695049, 53.014622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438484, 46.418121, 53.014187>,  <39.739483, 45.893650, 53.380283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438484, 46.418121, 53.014187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128113, 46.168144, 53.048553>,  <38.941891, 46.018158, 53.069172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128113, 46.168144, 53.048553>,  <39.438484, 46.418121, 53.014187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128113, 46.168144, 53.048553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490137, 0.683006, 0.541543,
		-0.397112, 0.378090, -0.836272,
		-0.775931, -0.624941, 0.085914,
		38.895332, 45.980663, 53.074329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890392, 46.897984, 53.062473>,  <39.438484, 46.418121, 53.014187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890392, 46.897984, 53.062473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.745102, 46.546158, 53.185394>,  <38.657928, 46.335064, 53.259148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.745102, 46.546158, 53.185394>,  <38.890392, 46.897984, 53.062473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745102, 46.546158, 53.185394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479619, 0.459291, 0.747675,
		-0.798768, 0.124188, -0.588682,
		-0.363229, -0.879562, 0.307304,
		38.636135, 46.282288, 53.277584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139530, 47.095318, 53.249180>,  <38.890392, 46.897984, 53.062473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139530, 47.095318, 53.249180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.213890, 46.752434, 53.441277>,  <38.258507, 46.546703, 53.556534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.213890, 46.752434, 53.441277>,  <38.139530, 47.095318, 53.249180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213890, 46.752434, 53.441277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452333, 0.359232, 0.816301,
		-0.872259, -0.368981, -0.320962,
		0.185900, -0.857208, 0.480246,
		38.269661, 46.495270, 53.585350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495476, 46.785038, 53.410309>,  <38.139530, 47.095318, 53.249180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495476, 46.785038, 53.410309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768555, 46.637390, 53.662552>,  <37.932404, 46.548801, 53.813896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768555, 46.637390, 53.662552>,  <37.495476, 46.785038, 53.410309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768555, 46.637390, 53.662552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558944, 0.292056, 0.776070,
		-0.470638, -0.882299, -0.006932,
		0.682701, -0.369123, 0.630608,
		37.973366, 46.526653, 53.851734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076790, 46.646893, 53.967262>,  <37.495476, 46.785038, 53.410309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076790, 46.646893, 53.967262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.433853, 46.622459, 54.145889>,  <37.648090, 46.607800, 54.253067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.433853, 46.622459, 54.145889>,  <37.076790, 46.646893, 53.967262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433853, 46.622459, 54.145889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434360, 0.148023, 0.888494,
		-0.120373, -0.987096, 0.105603,
		0.892660, -0.061081, 0.446572,
		37.701653, 46.604134, 54.279861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964962, 46.174568, 54.548256>,  <37.076790, 46.646893, 53.967262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964962, 46.174568, 54.548256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.315033, 46.343925, 54.641899>,  <37.525074, 46.445538, 54.698086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.315033, 46.343925, 54.641899>,  <36.964962, 46.174568, 54.548256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315033, 46.343925, 54.641899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245031, -0.029327, 0.969072,
		0.417160, -0.905473, 0.078077,
		0.875179, 0.423389, 0.234103,
		37.577587, 46.470943, 54.712132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241970, 45.830673, 55.050869>,  <36.964962, 46.174568, 54.548256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241970, 45.830673, 55.050869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415253, 46.190063, 55.079369>,  <37.519222, 46.405697, 55.096466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415253, 46.190063, 55.079369>,  <37.241970, 45.830673, 55.050869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415253, 46.190063, 55.079369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136222, -0.012868, 0.990595,
		0.890939, -0.438842, 0.116817,
		0.433211, 0.898472, 0.071245,
		37.545216, 46.459606, 55.100742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686638, 45.761623, 55.649822>,  <37.241970, 45.830673, 55.050869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686638, 45.761623, 55.649822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633102, 46.151749, 55.579567>,  <37.600983, 46.385822, 55.537415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633102, 46.151749, 55.579567>,  <37.686638, 45.761623, 55.649822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633102, 46.151749, 55.579567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215683, 0.144317, 0.965740,
		0.967248, 0.167135, 0.191044,
		-0.133838, 0.975314, -0.175639,
		37.592953, 46.444344, 55.526875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890972, 46.067280, 56.293430>,  <37.686638, 45.761623, 55.649822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890972, 46.067280, 56.293430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.687752, 46.362778, 56.116280>,  <37.565819, 46.540077, 56.009991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.687752, 46.362778, 56.116280>,  <37.890972, 46.067280, 56.293430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687752, 46.362778, 56.116280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231389, 0.378220, 0.896331,
		0.829666, 0.557857, -0.021216,
		-0.508049, 0.738746, -0.442878,
		37.535336, 46.584400, 55.983418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
