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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.994661, 16.209372, -1.244683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.057468, 16.598808, -1.178395>,  <23.095154, 16.832470, -1.138621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.057468, 16.598808, -1.178395>,  <22.994661, 16.209372, -1.244683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.057468, 16.598808, -1.178395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966537, 0.117025, 0.228281,
		0.202859, -0.196020, 0.959387,
		0.157020, 0.973592, 0.165721,
		23.104574, 16.890886, -1.128678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.558781, 16.415230, -0.660925>,  <22.994661, 16.209372, -1.244683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.558781, 16.415230, -0.660925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.631256, 16.732735, -0.893169>,  <22.674742, 16.923239, -1.032516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.631256, 16.732735, -0.893169>,  <22.558781, 16.415230, -0.660925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.631256, 16.732735, -0.893169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959260, 0.272780, 0.073570,
		0.216776, 0.543626, 0.810851,
		0.181189, 0.793764, -0.580610,
		22.685614, 16.970863, -1.067353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.448284, 17.044952, -0.395337>,  <22.558781, 16.415230, -0.660925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.448284, 17.044952, -0.395337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.365894, 17.075184, -0.785591>,  <22.316460, 17.093323, -1.019743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.365894, 17.075184, -0.785591>,  <22.448284, 17.044952, -0.395337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.365894, 17.075184, -0.785591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973067, 0.089648, 0.212378,
		0.103515, 0.993102, 0.055078,
		-0.205975, 0.075579, -0.975634,
		22.304102, 17.097858, -1.078281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.116398, 17.732531, -0.613643>,  <22.448284, 17.044952, -0.395337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.116398, 17.732531, -0.613643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.024048, 17.427410, -0.855248>,  <21.968637, 17.244337, -1.000211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.024048, 17.427410, -0.855248>,  <22.116398, 17.732531, -0.613643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.024048, 17.427410, -0.855248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972912, 0.188493, 0.133835,
		0.011763, 0.618551, -0.785657,
		-0.230875, -0.762801, -0.604013,
		21.954786, 17.198570, -1.036452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.588896, 17.929239, -1.236472>,  <22.116398, 17.732531, -0.613643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.588896, 17.929239, -1.236472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.564651, 17.552853, -1.103258>,  <21.550104, 17.327021, -1.023330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.564651, 17.552853, -1.103258>,  <21.588896, 17.929239, -1.236472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.564651, 17.552853, -1.103258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975608, 0.126372, 0.179494,
		-0.210984, -0.314031, -0.925673,
		-0.060612, -0.940965, 0.333034,
		21.546469, 17.270563, -1.003348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.132917, 17.370634, -1.447595>,  <21.588896, 17.929239, -1.236472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.132917, 17.370634, -1.447595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.160870, 17.333145, -1.050338>,  <21.177641, 17.310652, -0.811984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.160870, 17.333145, -1.050338>,  <21.132917, 17.370634, -1.447595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.160870, 17.333145, -1.050338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994264, 0.074270, 0.076966,
		-0.080975, -0.992823, -0.088008,
		0.069878, -0.093736, 0.993142,
		21.181833, 17.305029, -0.752395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.540483, 17.012527, -1.313857>,  <21.132917, 17.370634, -1.447595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.540483, 17.012527, -1.313857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.676849, 17.187359, -0.980933>,  <20.758669, 17.292257, -0.781179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.676849, 17.187359, -0.980933>,  <20.540483, 17.012527, -1.313857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.676849, 17.187359, -0.980933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923565, 0.321004, 0.209722,
		-0.175509, -0.840190, 0.513106,
		0.340915, 0.437078, 0.832309,
		20.779123, 17.318483, -0.731240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.211681, 16.797827, -0.648676>,  <20.540483, 17.012527, -1.313857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.211681, 16.797827, -0.648676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.298344, 17.188320, -0.646609>,  <20.350340, 17.422617, -0.645369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.298344, 17.188320, -0.646609>,  <20.211681, 16.797827, -0.648676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.298344, 17.188320, -0.646609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971039, 0.214948, 0.104313,
		0.100723, -0.027619, 0.994531,
		0.216653, 0.976235, 0.005169,
		20.363340, 17.481190, -0.645059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.817957, 17.066612, -0.063942>,  <20.211681, 16.797827, -0.648676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.817957, 17.066612, -0.063942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.908180, 17.338734, -0.342886>,  <19.962315, 17.502007, -0.510252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.908180, 17.338734, -0.342886>,  <19.817957, 17.066612, -0.063942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.908180, 17.338734, -0.342886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904797, 0.411670, 0.108950,
		0.361201, 0.606394, 0.708393,
		0.225557, 0.680304, -0.697359,
		19.975847, 17.542826, -0.552094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.683987, 17.725685, 0.193175>,  <19.817957, 17.066612, -0.063942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.683987, 17.725685, 0.193175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.668301, 17.739483, -0.206280>,  <19.658890, 17.747761, -0.445952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.668301, 17.739483, -0.206280>,  <19.683987, 17.725685, 0.193175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.668301, 17.739483, -0.206280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887875, 0.457286, 0.050659,
		0.458410, 0.888650, 0.012696,
		-0.039213, 0.034495, -0.998635,
		19.656536, 17.749832, -0.505870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.458611, 18.439672, 0.081093>,  <19.683987, 17.725685, 0.193175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.458611, 18.439672, 0.081093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.358234, 18.167850, -0.194656>,  <19.298010, 18.004757, -0.360106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.358234, 18.167850, -0.194656>,  <19.458611, 18.439672, 0.081093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.358234, 18.167850, -0.194656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968003, 0.176723, 0.178156,
		0.000761, 0.712021, -0.702158,
		-0.250938, -0.679555, -0.689373,
		19.282953, 17.963984, -0.401468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.988497, 18.828789, -0.361394>,  <19.458611, 18.439672, 0.081093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.988497, 18.828789, -0.361394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.928020, 18.433929, -0.340674>,  <18.891735, 18.197014, -0.328242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.928020, 18.433929, -0.340674>,  <18.988497, 18.828789, -0.361394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.928020, 18.433929, -0.340674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983626, 0.155440, 0.091207,
		-0.098087, -0.037162, -0.994484,
		-0.151193, -0.987146, 0.051800,
		18.882662, 18.137785, -0.325134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.393650, 18.687735, -0.753159>,  <18.988497, 18.828789, -0.361394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.393650, 18.687735, -0.753159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.429062, 18.419403, -0.458636>,  <18.450310, 18.258404, -0.281922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.429062, 18.419403, -0.458636>,  <18.393650, 18.687735, -0.753159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.429062, 18.419403, -0.458636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896522, 0.268467, 0.352385,
		-0.434064, -0.691312, -0.577647,
		0.088529, -0.670830, 0.736308,
		18.455620, 18.218155, -0.237744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909250, 18.150511, -0.858988>,  <18.393650, 18.687735, -0.753159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909250, 18.150511, -0.858988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.983154, 18.219574, -0.471989>,  <18.027496, 18.261011, -0.239790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.983154, 18.219574, -0.471989>,  <17.909250, 18.150511, -0.858988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.983154, 18.219574, -0.471989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961201, 0.236924, 0.141278,
		-0.204831, -0.956063, 0.209732,
		0.184761, 0.172657, 0.967498,
		18.038582, 18.271372, -0.181740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.343580, 17.890259, -0.412323>,  <17.909250, 18.150511, -0.858988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.343580, 17.890259, -0.412323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.538288, 18.196640, -0.244337>,  <17.655113, 18.380468, -0.143545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.538288, 18.196640, -0.244337>,  <17.343580, 17.890259, -0.412323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.538288, 18.196640, -0.244337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873491, 0.422210, 0.242388,
		0.008345, -0.484823, 0.874573,
		0.486768, 0.765954, 0.419965,
		17.684319, 18.426426, -0.118347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076029, 17.956886, 0.260697>,  <17.343580, 17.890259, -0.412323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076029, 17.956886, 0.260697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.190224, 18.323872, 0.149877>,  <17.258739, 18.544064, 0.083386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.190224, 18.323872, 0.149877>,  <17.076029, 17.956886, 0.260697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.190224, 18.323872, 0.149877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749110, 0.393927, 0.532593,
		0.597773, 0.055492, 0.799743,
		0.285485, 0.917465, -0.277049,
		17.275869, 18.599112, 0.066763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312130, 18.521135, 0.765984>,  <17.076029, 17.956886, 0.260697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.312130, 18.521135, 0.765984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.112305, 18.688957, 0.462824>,  <16.992411, 18.789650, 0.280928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.112305, 18.688957, 0.462824>,  <17.312130, 18.521135, 0.765984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.112305, 18.688957, 0.462824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630199, 0.424280, 0.650259,
		0.594380, 0.802472, 0.052448,
		-0.499562, 0.419553, -0.757900,
		16.962437, 18.814823, 0.235454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.291798, 19.288939, 0.895997>,  <17.312130, 18.521135, 0.765984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.291798, 19.288939, 0.895997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.968468, 19.111317, 0.741374>,  <16.774469, 19.004744, 0.648600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.968468, 19.111317, 0.741374>,  <17.291798, 19.288939, 0.895997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968468, 19.111317, 0.741374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535974, 0.283354, 0.795262,
		-0.243607, 0.850015, -0.467044,
		-0.808324, -0.444055, -0.386559,
		16.725971, 18.978100, 0.625406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.833876, 19.379601, 1.386766>,  <17.291798, 19.288939, 0.895997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.833876, 19.379601, 1.386766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.589428, 19.247673, 1.098946>,  <16.442759, 19.168516, 0.926255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.589428, 19.247673, 1.098946>,  <16.833876, 19.379601, 1.386766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.589428, 19.247673, 1.098946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778407, 0.085523, 0.621908,
		-0.143580, 0.940162, -0.309000,
		-0.611120, -0.329821, -0.719548,
		16.406092, 19.148727, 0.883082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332371, 19.865423, 1.135150>,  <16.833876, 19.379601, 1.386766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332371, 19.865423, 1.135150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.263359, 19.473381, 1.174390>,  <16.221952, 19.238155, 1.197934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.263359, 19.473381, 1.174390>,  <16.332371, 19.865423, 1.135150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263359, 19.473381, 1.174390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518774, 0.175077, 0.836793,
		-0.837321, 0.093481, -0.538660,
		-0.172531, -0.980107, 0.098100,
		16.211599, 19.179350, 1.203820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.591439, 19.665277, 1.118048>,  <16.332371, 19.865423, 1.135150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.591439, 19.665277, 1.118048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.797221, 19.396870, 1.331617>,  <15.920691, 19.235825, 1.459758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.797221, 19.396870, 1.331617>,  <15.591439, 19.665277, 1.118048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.797221, 19.396870, 1.331617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554803, 0.214305, 0.803907,
		-0.653858, -0.709794, -0.262033,
		0.514454, -0.671018, 0.533921,
		15.951557, 19.195564, 1.491793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.218873, 19.009998, 1.481640>,  <15.591439, 19.665277, 1.118048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.218873, 19.009998, 1.481640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.523526, 19.177475, 1.679473>,  <15.706318, 19.277962, 1.798173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.523526, 19.177475, 1.679473>,  <15.218873, 19.009998, 1.481640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.523526, 19.177475, 1.679473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583446, 0.110975, 0.804534,
		0.281966, -0.901322, 0.328806,
		0.761633, 0.418692, 0.494581,
		15.752016, 19.303082, 1.827848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.298431, 18.573210, 2.110559>,  <15.218873, 19.009998, 1.481640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.298431, 18.573210, 2.110559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.370038, 18.966747, 2.110263>,  <15.413002, 19.202869, 2.110086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.370038, 18.966747, 2.110263>,  <15.298431, 18.573210, 2.110559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.370038, 18.966747, 2.110263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643437, 0.117645, 0.756405,
		0.744273, -0.134933, 0.654103,
		0.179016, 0.983846, -0.000740,
		15.423743, 19.261902, 2.110041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.703513, 18.823338, 2.802845>,  <15.298431, 18.573210, 2.110559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.703513, 18.823338, 2.802845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.475108, 19.109421, 2.641638>,  <15.338065, 19.281071, 2.544913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.475108, 19.109421, 2.641638>,  <15.703513, 18.823338, 2.802845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.475108, 19.109421, 2.641638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454779, 0.133126, 0.880598,
		0.683462, 0.686117, 0.249243,
		-0.571013, 0.715206, -0.403018,
		15.303804, 19.323982, 2.520732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786330, 19.504477, 3.083648>,  <15.703513, 18.823338, 2.802845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.786330, 19.504477, 3.083648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.411265, 19.418461, 2.974432>,  <15.186227, 19.366852, 2.908903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.411265, 19.418461, 2.974432>,  <15.786330, 19.504477, 3.083648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.411265, 19.418461, 2.974432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330055, 0.304828, 0.893389,
		-0.108882, 0.927814, -0.356799,
		-0.937661, -0.215038, -0.273040,
		15.129967, 19.353951, 2.892520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.167719, 20.271339, 3.144789>,  <15.786330, 19.504477, 3.083648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.167719, 20.271339, 3.144789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372932, 20.557201, 3.334975>,  <16.496059, 20.728718, 3.449087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372932, 20.557201, 3.334975>,  <16.167719, 20.271339, 3.144789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372932, 20.557201, 3.334975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451103, -0.695733, 0.558982,
		0.730276, -0.072292, -0.679316,
		0.513033, 0.714653, 0.475466,
		16.526842, 20.771597, 3.477615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771099, 19.879278, 3.242502>,  <16.167719, 20.271339, 3.144789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.771099, 19.879278, 3.242502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.778591, 20.167934, 3.519308>,  <16.783087, 20.341127, 3.685391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.778591, 20.167934, 3.519308>,  <16.771099, 19.879278, 3.242502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.778591, 20.167934, 3.519308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450812, -0.623881, 0.638389,
		0.892422, 0.300012, -0.337010,
		0.018730, 0.721641, 0.692014,
		16.784210, 20.384426, 3.726912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.296780, 20.068802, 3.675061>,  <16.771099, 19.879278, 3.242502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.296780, 20.068802, 3.675061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.056038, 20.189678, 3.970750>,  <16.911592, 20.262203, 4.148164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.056038, 20.189678, 3.970750>,  <17.296780, 20.068802, 3.675061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.056038, 20.189678, 3.970750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582691, -0.466821, 0.665244,
		0.546115, 0.831120, 0.104876,
		-0.601856, 0.302189, 0.739223,
		16.875481, 20.280334, 4.192517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637716, 20.399549, 4.209654>,  <17.296780, 20.068802, 3.675061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637716, 20.399549, 4.209654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.312767, 20.202240, 4.334058>,  <17.117798, 20.083855, 4.408700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.312767, 20.202240, 4.334058>,  <17.637716, 20.399549, 4.209654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.312767, 20.202240, 4.334058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540973, -0.438387, 0.717750,
		-0.217705, 0.751330, 0.622983,
		-0.812375, -0.493275, 0.311010,
		17.069056, 20.054258, 4.427361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.517958, 20.496937, 4.965065>,  <17.637716, 20.399549, 4.209654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.517958, 20.496937, 4.965065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.340107, 20.154438, 4.859879>,  <17.233397, 19.948938, 4.796768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.340107, 20.154438, 4.859879>,  <17.517958, 20.496937, 4.965065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.340107, 20.154438, 4.859879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532523, -0.488754, 0.691042,
		-0.720227, 0.167220, 0.673283,
		-0.444626, -0.856246, -0.262965,
		17.206718, 19.897564, 4.780990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075632, 20.204338, 5.472358>,  <17.517958, 20.496937, 4.965065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075632, 20.204338, 5.472358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.233459, 19.921364, 5.237803>,  <17.328156, 19.751579, 5.097071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.233459, 19.921364, 5.237803>,  <17.075632, 20.204338, 5.472358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.233459, 19.921364, 5.237803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361646, -0.467097, 0.806866,
		-0.844705, -0.530430, 0.071538,
		0.394570, -0.707435, -0.586387,
		17.351831, 19.709133, 5.061887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.879980, 19.579212, 5.757940>,  <17.075632, 20.204338, 5.472358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.879980, 19.579212, 5.757940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.235653, 19.534023, 5.580586>,  <17.449057, 19.506910, 5.474174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.235653, 19.534023, 5.580586>,  <16.879980, 19.579212, 5.757940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.235653, 19.534023, 5.580586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386537, -0.333050, 0.860039,
		-0.244825, -0.936118, -0.252476,
		0.889185, -0.112968, -0.443383,
		17.502409, 19.500132, 5.447571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.151430, 18.865208, 5.799874>,  <16.879980, 19.579212, 5.757940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.151430, 18.865208, 5.799874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.458046, 19.121571, 5.783607>,  <17.642015, 19.275389, 5.773846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.458046, 19.121571, 5.783607>,  <17.151430, 18.865208, 5.799874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.458046, 19.121571, 5.783607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422106, -0.455097, 0.784037,
		0.483989, -0.618160, -0.619381,
		0.766538, 0.640910, -0.040668,
		17.688007, 19.313843, 5.771406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.699760, 18.430391, 5.819351>,  <17.151430, 18.865208, 5.799874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.699760, 18.430391, 5.819351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.772110, 18.806782, 5.933789>,  <17.815519, 19.032616, 6.002452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.772110, 18.806782, 5.933789>,  <17.699760, 18.430391, 5.819351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.772110, 18.806782, 5.933789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423635, -0.337065, 0.840786,
		0.887591, -0.030877, -0.459597,
		0.180875, 0.940975, 0.286095,
		17.826372, 19.089075, 6.019618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.364576, 18.362032, 6.120928>,  <17.699760, 18.430391, 5.819351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.364576, 18.362032, 6.120928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.228909, 18.719311, 6.239021>,  <18.147509, 18.933678, 6.309877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.228909, 18.719311, 6.239021>,  <18.364576, 18.362032, 6.120928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.228909, 18.719311, 6.239021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565721, -0.057085, 0.822619,
		0.751615, 0.446025, -0.485939,
		-0.339169, 0.893198, 0.295232,
		18.127157, 18.987270, 6.327591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.000614, 18.744621, 6.230569>,  <18.364576, 18.362032, 6.120928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.000614, 18.744621, 6.230569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.698330, 18.898853, 6.442316>,  <18.516960, 18.991392, 6.569365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.698330, 18.898853, 6.442316>,  <19.000614, 18.744621, 6.230569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.698330, 18.898853, 6.442316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556778, -0.047329, 0.829312,
		0.344822, 0.921459, -0.178916,
		-0.755709, 0.385581, 0.529368,
		18.471617, 19.014528, 6.601127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.303904, 19.172892, 6.588330>,  <19.000614, 18.744621, 6.230569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.303904, 19.172892, 6.588330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.953793, 19.118362, 6.773935>,  <18.743727, 19.085646, 6.885298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.953793, 19.118362, 6.773935>,  <19.303904, 19.172892, 6.588330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.953793, 19.118362, 6.773935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470591, -0.018838, 0.882150,
		-0.111516, 0.990485, 0.080641,
		-0.875276, -0.136322, 0.464013,
		18.691210, 19.077465, 6.913139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.258606, 19.609182, 7.324665>,  <19.303904, 19.172892, 6.588330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.258606, 19.609182, 7.324665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.987137, 19.317940, 7.363166>,  <18.824255, 19.143194, 7.386267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.987137, 19.317940, 7.363166>,  <19.258606, 19.609182, 7.324665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.987137, 19.317940, 7.363166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303704, -0.158896, 0.939423,
		-0.668706, 0.666794, 0.328967,
		-0.678673, -0.728106, 0.096254,
		18.783535, 19.099508, 7.392042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.943724, 19.713255, 8.014756>,  <19.258606, 19.609182, 7.324665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.943724, 19.713255, 8.014756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902668, 19.330761, 7.905155>,  <18.878035, 19.101265, 7.839395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902668, 19.330761, 7.905155>,  <18.943724, 19.713255, 8.014756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.902668, 19.330761, 7.905155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094066, -0.283553, 0.954332,
		-0.990261, 0.072178, 0.119053,
		-0.102639, -0.956236, -0.274002,
		18.871876, 19.043890, 7.822955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.628437, 19.455360, 8.647730>,  <18.943724, 19.713255, 8.014756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.628437, 19.455360, 8.647730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803333, 19.167282, 8.432271>,  <18.908272, 18.994436, 8.302996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803333, 19.167282, 8.432271>,  <18.628437, 19.455360, 8.647730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.803333, 19.167282, 8.432271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339548, -0.422409, 0.840403,
		-0.832783, -0.550356, 0.059846,
		0.437241, -0.720194, -0.538647,
		18.934505, 18.951223, 8.270677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.372185, 18.930008, 9.063134>,  <18.628437, 19.455360, 8.647730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.372185, 18.930008, 9.063134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.655712, 18.754944, 8.841856>,  <18.825829, 18.649904, 8.709089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.655712, 18.754944, 8.841856>,  <18.372185, 18.930008, 9.063134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.655712, 18.754944, 8.841856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357890, -0.452671, 0.816703,
		-0.607856, -0.776879, -0.164227,
		0.708820, -0.437662, -0.553196,
		18.868359, 18.623646, 8.675898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277096, 18.263945, 9.205463>,  <18.372185, 18.930008, 9.063134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277096, 18.263945, 9.205463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.650345, 18.306789, 9.068170>,  <18.874294, 18.332497, 8.985793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.650345, 18.306789, 9.068170>,  <18.277096, 18.263945, 9.205463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.650345, 18.306789, 9.068170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357546, -0.377315, 0.854280,
		-0.038004, -0.919870, -0.390378,
		0.933122, 0.107112, -0.343235,
		18.930281, 18.338923, 8.965199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.612858, 17.767738, 9.486491>,  <18.277096, 18.263945, 9.205463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.612858, 17.767738, 9.486491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.916611, 18.003345, 9.375934>,  <19.098862, 18.144711, 9.309599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.916611, 18.003345, 9.375934>,  <18.612858, 17.767738, 9.486491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.916611, 18.003345, 9.375934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342285, -0.000386, 0.939596,
		0.553334, -0.808118, -0.201906,
		0.759383, 0.589020, -0.276393,
		19.144426, 18.180052, 9.293015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.090216, 17.511797, 9.927448>,  <18.612858, 17.767738, 9.486491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.090216, 17.511797, 9.927448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217155, 17.877796, 9.827795>,  <19.293320, 18.097397, 9.768003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217155, 17.877796, 9.827795>,  <19.090216, 17.511797, 9.927448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.217155, 17.877796, 9.827795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412099, 0.103546, 0.905237,
		0.854087, -0.389943, -0.344210,
		0.317349, 0.914999, -0.249132,
		19.312361, 18.152296, 9.753056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.784473, 17.568729, 10.164544>,  <19.090216, 17.511797, 9.927448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.784473, 17.568729, 10.164544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.674057, 17.947926, 10.101148>,  <19.607807, 18.175444, 10.063109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.674057, 17.947926, 10.101148>,  <19.784473, 17.568729, 10.164544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.674057, 17.947926, 10.101148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532392, 0.288099, 0.795963,
		0.800226, 0.135337, -0.584228,
		-0.276039, 0.947989, -0.158492,
		19.591246, 18.232323, 10.053600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.386347, 17.933357, 10.497372>,  <19.784473, 17.568729, 10.164544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.386347, 17.933357, 10.497372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.087616, 18.196667, 10.459585>,  <19.908377, 18.354652, 10.436913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.087616, 18.196667, 10.459585>,  <20.386347, 17.933357, 10.497372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.087616, 18.196667, 10.459585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324195, 0.484414, 0.812552,
		0.580642, 0.576211, -0.575183,
		-0.746828, 0.658273, -0.094467,
		19.863567, 18.394148, 10.431245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.675667, 18.589169, 10.512265>,  <20.386347, 17.933357, 10.497372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.675667, 18.589169, 10.512265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.295002, 18.654518, 10.616301>,  <20.066603, 18.693727, 10.678721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.295002, 18.654518, 10.616301>,  <20.675667, 18.589169, 10.512265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.295002, 18.654518, 10.616301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305860, 0.581425, 0.753919,
		-0.028049, 0.797027, -0.603291,
		-0.951663, 0.163375, 0.260087,
		20.009502, 18.703531, 10.694326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.630087, 19.320183, 10.513339>,  <20.675667, 18.589169, 10.512265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.630087, 19.320183, 10.513339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.334301, 19.176273, 10.740937>,  <20.156830, 19.089928, 10.877496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.334301, 19.176273, 10.740937>,  <20.630087, 19.320183, 10.513339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.334301, 19.176273, 10.740937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189746, 0.699559, 0.688922,
		-0.645902, 0.617398, -0.449034,
		-0.739465, -0.359774, 0.568995,
		20.112461, 19.068342, 10.911635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.302303, 19.864128, 10.648399>,  <20.630087, 19.320183, 10.513339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.302303, 19.864128, 10.648399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.150593, 19.632580, 10.937136>,  <20.059566, 19.493650, 11.110378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.150593, 19.632580, 10.937136>,  <20.302303, 19.864128, 10.648399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.150593, 19.632580, 10.937136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120685, 0.742518, 0.658865,
		-0.917379, 0.337007, -0.211758,
		-0.379276, -0.578873, 0.721842,
		20.036810, 19.458918, 11.153688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.833138, 20.256401, 10.937808>,  <20.302303, 19.864128, 10.648399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.833138, 20.256401, 10.937808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.901951, 19.982956, 11.221520>,  <19.943239, 19.818890, 11.391747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.901951, 19.982956, 11.221520>,  <19.833138, 20.256401, 10.937808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.901951, 19.982956, 11.221520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029197, 0.723236, 0.689983,
		-0.984659, -0.097990, 0.144379,
		0.172032, -0.683613, 0.709280,
		19.953560, 19.777872, 11.434304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.398163, 20.363111, 11.410204>,  <19.833138, 20.256401, 10.937808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.398163, 20.363111, 11.410204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.711628, 20.188255, 11.586740>,  <19.899708, 20.083342, 11.692661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.711628, 20.188255, 11.586740>,  <19.398163, 20.363111, 11.410204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.711628, 20.188255, 11.586740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234422, 0.866060, 0.441572,
		-0.575256, -0.242584, 0.781174,
		0.783663, -0.437141, 0.441339,
		19.946726, 20.057114, 11.719141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.383997, 20.585697, 12.171069>,  <19.398163, 20.363111, 11.410204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.383997, 20.585697, 12.171069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.752598, 20.457352, 12.083541>,  <19.973759, 20.380344, 12.031024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.752598, 20.457352, 12.083541>,  <19.383997, 20.585697, 12.171069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.752598, 20.457352, 12.083541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384845, 0.678581, 0.625637,
		-0.052257, -0.660738, 0.748796,
		0.921500, -0.320864, -0.218821,
		20.029049, 20.361092, 12.017895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.634558, 20.568523, 12.814723>,  <19.383997, 20.585697, 12.171069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.634558, 20.568523, 12.814723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.954754, 20.577599, 12.575157>,  <20.146872, 20.583044, 12.431417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.954754, 20.577599, 12.575157>,  <19.634558, 20.568523, 12.814723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.954754, 20.577599, 12.575157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449510, 0.638235, 0.624977,
		0.396428, -0.769507, 0.500703,
		0.800491, 0.022687, -0.598916,
		20.194901, 20.584404, 12.395482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187725, 20.469107, 13.291653>,  <19.634558, 20.568523, 12.814723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.187725, 20.469107, 13.291653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.336208, 20.636295, 12.959990>,  <20.425299, 20.736609, 12.760991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.336208, 20.636295, 12.959990>,  <20.187725, 20.469107, 13.291653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.336208, 20.636295, 12.959990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567814, 0.604367, 0.558863,
		0.734705, -0.678262, -0.012985,
		0.371208, 0.417972, -0.829158,
		20.447571, 20.761686, 12.711242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.857708, 20.510115, 13.482670>,  <20.187725, 20.469107, 13.291653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.857708, 20.510115, 13.482670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.850815, 20.771622, 13.180070>,  <20.846680, 20.928526, 12.998509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.850815, 20.771622, 13.180070>,  <20.857708, 20.510115, 13.482670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.850815, 20.771622, 13.180070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665217, 0.572355, 0.479474,
		0.746451, -0.494974, -0.444760,
		-0.017234, 0.653766, -0.756501,
		20.845644, 20.967751, 12.953119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.548080, 20.751143, 13.338270>,  <20.857708, 20.510115, 13.482670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.548080, 20.751143, 13.338270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.292889, 21.026981, 13.201194>,  <21.139772, 21.192484, 13.118948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.292889, 21.026981, 13.201194>,  <21.548080, 20.751143, 13.338270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.292889, 21.026981, 13.201194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441554, 0.692195, 0.570873,
		0.630880, 0.212890, -0.746102,
		-0.637981, 0.689597, -0.342690,
		21.101494, 21.233860, 13.098387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.976982, 21.298265, 13.280342>,  <21.548080, 20.751143, 13.338270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.976982, 21.298265, 13.280342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.608013, 21.452309, 13.268819>,  <21.386631, 21.544735, 13.261905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.608013, 21.452309, 13.268819>,  <21.976982, 21.298265, 13.280342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.608013, 21.452309, 13.268819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285660, 0.730613, 0.620164,
		0.259877, 0.563824, -0.783943,
		-0.922422, 0.385107, -0.028808,
		21.331287, 21.567841, 13.260177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.087946, 21.999151, 13.138274>,  <21.976982, 21.298265, 13.280342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.087946, 21.999151, 13.138274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.741676, 21.971458, 13.336595>,  <21.533915, 21.954842, 13.455586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.741676, 21.971458, 13.336595>,  <22.087946, 21.999151, 13.138274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.741676, 21.971458, 13.336595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243553, 0.807033, 0.537940,
		-0.437370, 0.586434, -0.681765,
		-0.865673, -0.069233, 0.495800,
		21.481974, 21.950689, 13.485334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.975761, 22.662449, 13.375158>,  <22.087946, 21.999151, 13.138274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.975761, 22.662449, 13.375158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.693413, 22.464520, 13.577899>,  <21.524004, 22.345762, 13.699544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.693413, 22.464520, 13.577899>,  <21.975761, 22.662449, 13.375158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.693413, 22.464520, 13.577899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111840, 0.628717, 0.769550,
		-0.699457, 0.599888, -0.388451,
		-0.705869, -0.494823, 0.506852,
		21.481651, 22.316072, 13.729955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.512074, 23.112152, 13.621674>,  <21.975761, 22.662449, 13.375158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.512074, 23.112152, 13.621674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.452267, 22.798622, 13.862760>,  <21.416384, 22.610504, 14.007411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.452267, 22.798622, 13.862760>,  <21.512074, 23.112152, 13.621674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.452267, 22.798622, 13.862760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054433, 0.615168, 0.786515,
		-0.987260, 0.084788, -0.134643,
		-0.149515, -0.783824, 0.602715,
		21.407412, 22.563475, 14.043574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.978262, 23.321836, 14.052165>,  <21.512074, 23.112152, 13.621674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.978262, 23.321836, 14.052165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.159031, 23.023006, 14.247161>,  <21.267492, 22.843708, 14.364159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.159031, 23.023006, 14.247161>,  <20.978262, 23.321836, 14.052165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.159031, 23.023006, 14.247161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039004, 0.562504, 0.825874,
		-0.891204, -0.354217, 0.283346,
		0.451922, -0.747074, 0.487490,
		21.294607, 22.798883, 14.393408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.696342, 23.300304, 14.805036>,  <20.978262, 23.321836, 14.052165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.696342, 23.300304, 14.805036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.037945, 23.092533, 14.816846>,  <21.242907, 22.967871, 14.823933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.037945, 23.092533, 14.816846>,  <20.696342, 23.300304, 14.805036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.037945, 23.092533, 14.816846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291578, 0.524850, 0.799697,
		-0.430880, -0.674336, 0.599678,
		0.854005, -0.519426, 0.029526,
		21.294146, 22.936705, 14.825704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.765575, 22.863823, 15.493153>,  <20.696342, 23.300304, 14.805036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.765575, 22.863823, 15.493153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.115757, 22.984776, 15.342343>,  <21.325867, 23.057346, 15.251858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.115757, 22.984776, 15.342343>,  <20.765575, 22.863823, 15.493153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.115757, 22.984776, 15.342343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211419, 0.461898, 0.861367,
		0.434602, -0.833798, 0.340443,
		0.875456, 0.302375, -0.377022,
		21.378393, 23.075489, 15.229236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.170443, 22.726236, 15.979965>,  <20.765575, 22.863823, 15.493153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.170443, 22.726236, 15.979965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415642, 22.958542, 15.765697>,  <21.562761, 23.097925, 15.637136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415642, 22.958542, 15.765697>,  <21.170443, 22.726236, 15.979965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.415642, 22.958542, 15.765697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369492, 0.388557, 0.844097,
		0.698361, -0.715357, 0.023597,
		0.612999, 0.580765, -0.535671,
		21.599543, 23.132771, 15.604995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.742712, 22.457376, 16.141796>,  <21.170443, 22.726236, 15.979965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.742712, 22.457376, 16.141796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836811, 22.832806, 16.040812>,  <21.893270, 23.058064, 15.980221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836811, 22.832806, 16.040812>,  <21.742712, 22.457376, 16.141796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.836811, 22.832806, 16.040812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237096, 0.196487, 0.951409,
		0.942573, -0.283675, -0.176309,
		0.235249, 0.938574, -0.252461,
		21.907385, 23.114378, 15.965074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.451571, 22.622667, 16.490860>,  <21.742712, 22.457376, 16.141796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.451571, 22.622667, 16.490860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.298313, 22.982887, 16.408678>,  <22.206358, 23.199018, 16.359369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.298313, 22.982887, 16.408678>,  <22.451571, 22.622667, 16.490860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.298313, 22.982887, 16.408678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326984, 0.340259, 0.881649,
		0.863876, 0.270619, -0.424834,
		-0.383145, 0.900549, -0.205454,
		22.183371, 23.253052, 16.347042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.039881, 23.097197, 16.613443>,  <22.451571, 22.622667, 16.490860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.039881, 23.097197, 16.613443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.704308, 23.314159, 16.631285>,  <22.502964, 23.444338, 16.641989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.704308, 23.314159, 16.631285>,  <23.039881, 23.097197, 16.613443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.704308, 23.314159, 16.631285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307030, 0.404021, 0.861684,
		0.449362, 0.736588, -0.505481,
		-0.838931, 0.542406, 0.044603,
		22.452627, 23.476881, 16.644665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.234097, 23.868494, 16.704895>,  <23.039881, 23.097197, 16.613443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.234097, 23.868494, 16.704895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.855316, 23.853195, 16.832531>,  <22.628048, 23.844017, 16.909113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.855316, 23.853195, 16.832531>,  <23.234097, 23.868494, 16.704895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.855316, 23.853195, 16.832531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240866, 0.572851, 0.783470,
		-0.212756, 0.818766, -0.533251,
		-0.946952, -0.038246, 0.319090,
		22.571230, 23.841721, 16.928259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.040424, 24.565992, 16.889721>,  <23.234097, 23.868494, 16.704895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.040424, 24.565992, 16.889721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.774189, 24.337391, 17.081709>,  <22.614447, 24.200230, 17.196901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.774189, 24.337391, 17.081709>,  <23.040424, 24.565992, 16.889721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.774189, 24.337391, 17.081709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101313, 0.567976, 0.816786,
		-0.739409, 0.592272, -0.320138,
		-0.665590, -0.571505, 0.479972,
		22.574512, 24.165939, 17.225700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.539179, 25.031082, 17.142311>,  <23.040424, 24.565992, 16.889721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.539179, 25.031082, 17.142311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.538055, 24.679562, 17.333183>,  <22.537382, 24.468649, 17.447706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.538055, 24.679562, 17.333183>,  <22.539179, 25.031082, 17.142311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.538055, 24.679562, 17.333183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224809, 0.464413, 0.856610,
		-0.974399, 0.109680, 0.196258,
		-0.002808, -0.878801, 0.477180,
		22.537212, 24.415922, 17.476337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.214437, 25.204567, 17.653463>,  <22.539179, 25.031082, 17.142311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.214437, 25.204567, 17.653463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.382172, 24.870529, 17.795883>,  <22.482813, 24.670107, 17.881334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.382172, 24.870529, 17.795883>,  <22.214437, 25.204567, 17.653463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.382172, 24.870529, 17.795883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196174, 0.466287, 0.862608,
		-0.886381, -0.291876, 0.359356,
		0.419337, -0.835096, 0.356050,
		22.507973, 24.620001, 17.902699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.845963, 25.143124, 18.204145>,  <22.214437, 25.204567, 17.653463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.845963, 25.143124, 18.204145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.202263, 24.969826, 18.259089>,  <22.416042, 24.865847, 18.292053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.202263, 24.969826, 18.259089>,  <21.845963, 25.143124, 18.204145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.202263, 24.969826, 18.259089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100540, 0.482561, 0.870072,
		-0.443236, -0.761206, 0.473400,
		0.890749, -0.433243, 0.137356,
		22.469488, 24.839853, 18.300295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.839672, 25.019499, 18.892681>,  <21.845963, 25.143124, 18.204145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.839672, 25.019499, 18.892681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221127, 25.008415, 18.772806>,  <22.449999, 25.001764, 18.700882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.221127, 25.008415, 18.772806>,  <21.839672, 25.019499, 18.892681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.221127, 25.008415, 18.772806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269183, 0.523907, 0.808123,
		0.134614, -0.851325, 0.507076,
		0.953635, -0.027711, -0.299687,
		22.507217, 25.000101, 18.682899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.248318, 25.053753, 19.569605>,  <21.839672, 25.019499, 18.892681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.248318, 25.053753, 19.569605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.525475, 25.121552, 19.289268>,  <22.691769, 25.162230, 19.121067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.525475, 25.121552, 19.289268>,  <22.248318, 25.053753, 19.569605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.525475, 25.121552, 19.289268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557569, 0.490347, 0.669833,
		0.457184, -0.854888, 0.245255,
		0.692892, 0.169490, -0.700838,
		22.733341, 25.172400, 19.079018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.855114, 25.063950, 20.026400>,  <22.248318, 25.053753, 19.569605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.855114, 25.063950, 20.026400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971901, 25.214607, 19.674742>,  <23.041973, 25.305002, 19.463747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971901, 25.214607, 19.674742>,  <22.855114, 25.063950, 20.026400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.971901, 25.214607, 19.674742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588045, 0.654237, 0.475581,
		0.754294, -0.655829, -0.030469,
		0.291966, 0.376645, -0.879144,
		23.059490, 25.327600, 19.410999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.622700, 25.114517, 20.090380>,  <22.855114, 25.063950, 20.026400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.622700, 25.114517, 20.090380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.518997, 25.371696, 19.802099>,  <23.456776, 25.526003, 19.629131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.518997, 25.371696, 19.802099>,  <23.622700, 25.114517, 20.090380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.518997, 25.371696, 19.802099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596234, 0.693587, 0.404279,
		0.759798, -0.324894, -0.563162,
		-0.259254, 0.642947, -0.720699,
		23.441221, 25.564581, 19.585890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.268570, 25.455254, 19.717598>,  <23.622700, 25.114517, 20.090380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.268570, 25.455254, 19.717598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.963615, 25.709148, 19.667202>,  <23.780643, 25.861486, 19.636965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.963615, 25.709148, 19.667202>,  <24.268570, 25.455254, 19.717598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.963615, 25.709148, 19.667202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502230, 0.703140, 0.503348,
		0.408082, 0.320471, -0.854849,
		-0.762387, 0.634738, -0.125989,
		23.734900, 25.899570, 19.629406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.594406, 26.037630, 19.494101>,  <24.268570, 25.455254, 19.717598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.594406, 26.037630, 19.494101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245277, 26.102726, 19.678143>,  <24.035801, 26.141785, 19.788568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245277, 26.102726, 19.678143>,  <24.594406, 26.037630, 19.494101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.245277, 26.102726, 19.678143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410124, 0.755606, 0.510742,
		-0.264541, 0.634487, -0.726253,
		-0.872821, 0.162742, 0.460107,
		23.983431, 26.151548, 19.816175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.303894, 26.683414, 19.503872>,  <24.594406, 26.037630, 19.494101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.303894, 26.683414, 19.503872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.189392, 26.516418, 19.848837>,  <24.120691, 26.416220, 20.055817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.189392, 26.516418, 19.848837>,  <24.303894, 26.683414, 19.503872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.189392, 26.516418, 19.848837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542113, 0.671590, 0.505055,
		-0.790045, 0.612101, 0.034080,
		-0.286257, -0.417491, 0.862414,
		24.103516, 26.391171, 20.107561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.887548, 27.157587, 19.998310>,  <24.303894, 26.683414, 19.503872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.887548, 27.157587, 19.998310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.096687, 26.865501, 20.174229>,  <24.222170, 26.690250, 20.279779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.096687, 26.865501, 20.174229>,  <23.887548, 27.157587, 19.998310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.096687, 26.865501, 20.174229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259759, 0.627881, 0.733683,
		-0.811885, -0.269362, 0.517965,
		0.522846, -0.730212, 0.439798,
		24.253542, 26.646439, 20.306168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.512548, 27.106339, 20.620398>,  <23.887548, 27.157587, 19.998310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.512548, 27.106339, 20.620398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.899738, 27.006760, 20.607422>,  <24.132051, 26.947012, 20.599636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.899738, 27.006760, 20.607422>,  <23.512548, 27.106339, 20.620398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.899738, 27.006760, 20.607422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177817, 0.588636, 0.788599,
		-0.177225, -0.769111, 0.614052,
		0.967973, -0.248949, -0.032440,
		24.190130, 26.932076, 20.597691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.644361, 26.882568, 21.279768>,  <23.512548, 27.106339, 20.620398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.644361, 26.882568, 21.279768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.969585, 27.033218, 21.102190>,  <24.164721, 27.123608, 20.995644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.969585, 27.033218, 21.102190>,  <23.644361, 26.882568, 21.279768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.969585, 27.033218, 21.102190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185590, 0.555090, 0.810821,
		0.551827, -0.741628, 0.381412,
		0.813046, 0.376647, -0.443953,
		24.213503, 27.146206, 20.969007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.052143, 27.149220, 21.654480>,  <23.644361, 26.882568, 21.279768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.052143, 27.149220, 21.654480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.726330, 26.973244, 21.805738>,  <22.530842, 26.867659, 21.896494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.726330, 26.973244, 21.805738>,  <23.052143, 27.149220, 21.654480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.726330, 26.973244, 21.805738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526736, 0.287735, -0.799848,
		0.243071, -0.850688, -0.466097,
		-0.814534, -0.439930, 0.378148,
		22.481970, 26.841263, 21.919182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.678690, 26.704905, 21.203802>,  <23.052143, 27.149220, 21.654480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.678690, 26.704905, 21.203802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.413448, 26.840828, 21.470583>,  <22.254303, 26.922382, 21.630651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.413448, 26.840828, 21.470583>,  <22.678690, 26.704905, 21.203802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.413448, 26.840828, 21.470583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599286, 0.292866, -0.745041,
		-0.448498, -0.893734, 0.009442,
		-0.663103, 0.339808, 0.666952,
		22.214518, 26.942770, 21.670670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.052101, 26.353666, 21.154835>,  <22.678690, 26.704905, 21.203802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.052101, 26.353666, 21.154835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.945721, 26.717567, 21.282345>,  <21.881893, 26.935909, 21.358850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.945721, 26.717567, 21.282345>,  <22.052101, 26.353666, 21.154835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.945721, 26.717567, 21.282345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615377, 0.094315, -0.782570,
		-0.742012, -0.404292, 0.534758,
		-0.265951, 0.909754, 0.318775,
		21.865936, 26.990494, 21.377977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.379337, 26.408886, 21.180590>,  <22.052101, 26.353666, 21.154835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.379337, 26.408886, 21.180590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.535995, 26.766914, 21.095303>,  <21.629990, 26.981731, 21.044130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.535995, 26.766914, 21.095303>,  <21.379337, 26.408886, 21.180590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.535995, 26.766914, 21.095303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740251, 0.168878, -0.650775,
		-0.546481, 0.412709, 0.728717,
		0.391646, 0.895070, -0.213220,
		21.653490, 27.035435, 21.031336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.797024, 26.878759, 20.973942>,  <21.379337, 26.408886, 21.180590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.797024, 26.878759, 20.973942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.113716, 27.048424, 20.798100>,  <21.303732, 27.150223, 20.692595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.113716, 27.048424, 20.798100>,  <20.797024, 26.878759, 20.973942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.113716, 27.048424, 20.798100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543698, 0.161214, -0.823652,
		-0.278489, 0.891122, 0.358253,
		0.791730, 0.424160, -0.439605,
		21.351234, 27.175673, 20.666218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.578173, 27.555992, 20.618196>,  <20.797024, 26.878759, 20.973942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.578173, 27.555992, 20.618196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.887737, 27.379471, 20.436508>,  <21.073475, 27.273558, 20.327496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.887737, 27.379471, 20.436508>,  <20.578173, 27.555992, 20.618196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.887737, 27.379471, 20.436508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527778, -0.053018, -0.847726,
		0.350022, 0.895791, -0.273941,
		0.773909, -0.441303, -0.454221,
		21.119909, 27.247080, 20.300241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.568117, 27.795218, 19.895199>,  <20.578173, 27.555992, 20.618196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.568117, 27.795218, 19.895199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.793526, 27.464920, 19.885477>,  <20.928772, 27.266741, 19.879644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.793526, 27.464920, 19.885477>,  <20.568117, 27.795218, 19.895199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.793526, 27.464920, 19.885477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490228, -0.310581, -0.814381,
		0.664920, 0.470838, -0.579822,
		0.563523, -0.825743, -0.024306,
		20.962582, 27.217197, 19.878185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.800106, 27.744068, 19.195463>,  <20.568117, 27.795218, 19.895199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.800106, 27.744068, 19.195463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.801479, 27.380089, 19.361345>,  <20.802303, 27.161701, 19.460875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.801479, 27.380089, 19.361345>,  <20.800106, 27.744068, 19.195463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.801479, 27.380089, 19.361345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455358, -0.370639, -0.809491,
		0.890302, -0.186060, -0.415625,
		0.003433, -0.909950, 0.414704,
		20.802509, 27.107103, 19.485756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.005434, 27.354708, 18.681957>,  <20.800106, 27.744068, 19.195463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.005434, 27.354708, 18.681957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.852055, 27.096725, 18.946381>,  <20.760027, 26.941936, 19.105034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.852055, 27.096725, 18.946381>,  <21.005434, 27.354708, 18.681957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.852055, 27.096725, 18.946381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496380, -0.459679, -0.736412,
		0.778829, -0.610512, -0.143881,
		-0.383449, -0.644958, 0.661057,
		20.737020, 26.903238, 19.144697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.079231, 26.643122, 18.419956>,  <21.005434, 27.354708, 18.681957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.079231, 26.643122, 18.419956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.782452, 26.646812, 18.688112>,  <20.604383, 26.649027, 18.849007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.782452, 26.646812, 18.688112>,  <21.079231, 26.643122, 18.419956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.782452, 26.646812, 18.688112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580598, -0.508880, -0.635569,
		0.335284, -0.860788, 0.382921,
		-0.741951, 0.009227, 0.670391,
		20.559866, 26.649580, 18.889229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.767368, 25.952059, 18.389793>,  <21.079231, 26.643122, 18.419956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.767368, 25.952059, 18.389793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.469212, 26.148983, 18.569580>,  <20.290318, 26.267138, 18.677452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.469212, 26.148983, 18.569580>,  <20.767368, 25.952059, 18.389793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.469212, 26.148983, 18.569580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666543, -0.539624, -0.514320,
		-0.010662, -0.682960, 0.730378,
		-0.745390, 0.492312, 0.449469,
		20.245594, 26.296677, 18.704420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.181894, 25.395670, 18.537642>,  <20.767368, 25.952059, 18.389793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.181894, 25.395670, 18.537642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009525, 25.756203, 18.555099>,  <19.906105, 25.972523, 18.565575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009525, 25.756203, 18.555099>,  <20.181894, 25.395670, 18.537642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.009525, 25.756203, 18.555099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782833, -0.349332, -0.514917,
		-0.448867, -0.256053, 0.856128,
		-0.430919, 0.901334, 0.043643,
		19.880249, 26.026604, 18.568193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.467285, 25.270390, 18.613873>,  <20.181894, 25.395670, 18.537642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.467285, 25.270390, 18.613873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.516941, 25.638832, 18.466274>,  <19.546734, 25.859898, 18.377716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.516941, 25.638832, 18.466274>,  <19.467285, 25.270390, 18.613873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.516941, 25.638832, 18.466274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628594, -0.214733, -0.747502,
		-0.767763, 0.324741, 0.552344,
		0.124138, 0.921104, -0.368994,
		19.554182, 25.915163, 18.355576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.800022, 25.497581, 18.481232>,  <19.467285, 25.270390, 18.613873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.800022, 25.497581, 18.481232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.018860, 25.753860, 18.265753>,  <19.150162, 25.907629, 18.136467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.018860, 25.753860, 18.265753>,  <18.800022, 25.497581, 18.481232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.018860, 25.753860, 18.265753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552027, -0.207617, -0.807565,
		-0.629248, 0.739189, 0.240097,
		0.547095, 0.640699, -0.538695,
		19.182989, 25.946070, 18.104145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.414007, 25.966215, 18.201017>,  <18.800022, 25.497581, 18.481232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.414007, 25.966215, 18.201017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.727062, 25.954502, 17.952301>,  <18.914894, 25.947475, 17.803072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.727062, 25.954502, 17.952301>,  <18.414007, 25.966215, 18.201017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.727062, 25.954502, 17.952301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614248, -0.198240, -0.763807,
		-0.100899, 0.979716, -0.173136,
		0.782636, -0.029281, -0.621791,
		18.961853, 25.945717, 17.765764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.208748, 26.200554, 17.479639>,  <18.414007, 25.966215, 18.201017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.208748, 26.200554, 17.479639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.536896, 26.006870, 17.357962>,  <18.733786, 25.890661, 17.284956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.536896, 26.006870, 17.357962>,  <18.208748, 26.200554, 17.479639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.536896, 26.006870, 17.357962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418259, -0.145353, -0.896623,
		0.389936, 0.862795, -0.321767,
		0.820372, -0.484207, -0.304193,
		18.783007, 25.861609, 17.266705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.106525, 26.155001, 16.776642>,  <18.208748, 26.200554, 17.479639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.106525, 26.155001, 16.776642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.420742, 25.912823, 16.827806>,  <18.609272, 25.767517, 16.858505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.420742, 25.912823, 16.827806>,  <18.106525, 26.155001, 16.776642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.420742, 25.912823, 16.827806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101183, -0.329600, -0.938683,
		0.610480, 0.724432, -0.320176,
		0.785542, -0.605443, 0.127914,
		18.656404, 25.731190, 16.866180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.548443, 26.285011, 16.231800>,  <18.106525, 26.155001, 16.776642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.548443, 26.285011, 16.231800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.621544, 25.917248, 16.371105>,  <18.665405, 25.696589, 16.454687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.621544, 25.917248, 16.371105>,  <18.548443, 26.285011, 16.231800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.621544, 25.917248, 16.371105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143060, -0.375325, -0.915787,
		0.972695, 0.117541, -0.200123,
		0.182754, -0.919410, 0.348261,
		18.676371, 25.641424, 16.475584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.986031, 26.053495, 15.799322>,  <18.548443, 26.285011, 16.231800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.986031, 26.053495, 15.799322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.834869, 25.721020, 15.962447>,  <18.744173, 25.521534, 16.060322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.834869, 25.721020, 15.962447>,  <18.986031, 26.053495, 15.799322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.834869, 25.721020, 15.962447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101388, -0.400673, -0.910594,
		0.920277, -0.385464, 0.067143,
		-0.377903, -0.831191, 0.407812,
		18.721498, 25.471663, 16.084791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.356119, 25.459547, 15.616400>,  <18.986031, 26.053495, 15.799322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.356119, 25.459547, 15.616400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.983719, 25.333916, 15.690801>,  <18.760279, 25.258537, 15.735441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.983719, 25.333916, 15.690801>,  <19.356119, 25.459547, 15.616400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.983719, 25.333916, 15.690801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068295, -0.350689, -0.933998,
		0.358576, -0.882254, 0.305041,
		-0.930999, -0.314077, 0.186002,
		18.704418, 25.239693, 15.746601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.391348, 24.978899, 15.192471>,  <19.356119, 25.459547, 15.616400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.391348, 24.978899, 15.192471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.999378, 24.969742, 15.271689>,  <18.764196, 24.964249, 15.319221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.999378, 24.969742, 15.271689>,  <19.391348, 24.978899, 15.192471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.999378, 24.969742, 15.271689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142559, -0.613981, -0.776340,
		0.139368, -0.788989, 0.598392,
		-0.979925, -0.022891, 0.198047,
		18.705400, 24.962875, 15.331103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171654, 24.269964, 15.153798>,  <19.391348, 24.978899, 15.192471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171654, 24.269964, 15.153798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.841568, 24.492332, 15.113858>,  <18.643517, 24.625753, 15.089894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.841568, 24.492332, 15.113858>,  <19.171654, 24.269964, 15.153798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.841568, 24.492332, 15.113858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185353, -0.433534, -0.881869,
		-0.533539, -0.709224, 0.460801,
		-0.825215, 0.555922, -0.099851,
		18.594004, 24.659109, 15.083903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.682089, 23.790932, 14.878247>,  <19.171654, 24.269964, 15.153798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.682089, 23.790932, 14.878247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.556198, 24.164120, 14.808373>,  <18.480663, 24.388033, 14.766449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.556198, 24.164120, 14.808373>,  <18.682089, 23.790932, 14.878247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.556198, 24.164120, 14.808373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308645, -0.274626, -0.910669,
		-0.897599, -0.232698, 0.374389,
		-0.314728, 0.932969, -0.174683,
		18.461781, 24.444010, 14.755968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.065426, 23.678419, 14.619593>,  <18.682089, 23.790932, 14.878247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.065426, 23.678419, 14.619593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158939, 24.046597, 14.494288>,  <18.215048, 24.267502, 14.419106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158939, 24.046597, 14.494288>,  <18.065426, 23.678419, 14.619593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158939, 24.046597, 14.494288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244875, -0.256065, -0.935130,
		-0.940947, 0.295327, 0.165530,
		0.233782, 0.920442, -0.313261,
		18.229074, 24.322729, 14.400310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.481527, 23.873444, 14.206367>,  <18.065426, 23.678419, 14.619593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.481527, 23.873444, 14.206367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.802467, 24.099258, 14.128877>,  <17.995031, 24.234747, 14.082382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.802467, 24.099258, 14.128877>,  <17.481527, 23.873444, 14.206367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.802467, 24.099258, 14.128877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156431, -0.114330, -0.981049,
		-0.575986, 0.817452, -0.003421,
		0.802352, 0.564536, -0.193728,
		18.043173, 24.268620, 14.070759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.248945, 24.239935, 13.622220>,  <17.481527, 23.873444, 14.206367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.248945, 24.239935, 13.622220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635303, 24.340954, 13.599366>,  <17.867119, 24.401566, 13.585654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635303, 24.340954, 13.599366>,  <17.248945, 24.239935, 13.622220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.635303, 24.340954, 13.599366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002613, -0.211140, -0.977452,
		-0.258915, 0.944267, -0.203280,
		0.965896, 0.252546, -0.057134,
		17.925072, 24.416718, 13.582226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.299383, 24.830917, 13.131363>,  <17.248945, 24.239935, 13.622220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.299383, 24.830917, 13.131363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.651325, 24.642895, 13.159361>,  <17.862490, 24.530081, 13.176160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.651325, 24.642895, 13.159361>,  <17.299383, 24.830917, 13.131363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.651325, 24.642895, 13.159361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064866, -0.264685, -0.962151,
		0.470793, 0.842014, -0.263375,
		0.879856, -0.470058, 0.069994,
		17.915281, 24.501877, 13.180359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.598104, 24.989000, 12.562734>,  <17.299383, 24.830917, 13.131363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.598104, 24.989000, 12.562734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.832294, 24.686523, 12.679621>,  <17.972809, 24.505037, 12.749753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.832294, 24.686523, 12.679621>,  <17.598104, 24.989000, 12.562734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.832294, 24.686523, 12.679621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050092, -0.326024, -0.944034,
		0.809141, 0.567346, -0.153000,
		0.585475, -0.756192, 0.292219,
		18.007936, 24.459665, 12.767286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.174597, 24.992964, 12.211023>,  <17.598104, 24.989000, 12.562734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.174597, 24.992964, 12.211023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.121243, 24.614388, 12.328642>,  <18.089230, 24.387241, 12.399213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.121243, 24.614388, 12.328642>,  <18.174597, 24.992964, 12.211023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.121243, 24.614388, 12.328642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075648, -0.286108, -0.955207,
		0.988173, -0.149655, -0.033434,
		-0.133385, -0.946438, 0.294045,
		18.081226, 24.330456, 12.416856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.478716, 24.553934, 11.642244>,  <18.174597, 24.992964, 12.211023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.478716, 24.553934, 11.642244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.299084, 24.260593, 11.846408>,  <18.191303, 24.084589, 11.968906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.299084, 24.260593, 11.846408>,  <18.478716, 24.553934, 11.642244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.299084, 24.260593, 11.846408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069961, -0.540639, -0.838341,
		0.890747, -0.412192, 0.191485,
		-0.449082, -0.733353, 0.510410,
		18.164360, 24.040586, 11.999531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.885967, 23.932335, 11.524394>,  <18.478716, 24.553934, 11.642244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.885967, 23.932335, 11.524394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.515228, 23.818039, 11.621804>,  <18.292784, 23.749462, 11.680250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.515228, 23.818039, 11.621804>,  <18.885967, 23.932335, 11.524394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.515228, 23.818039, 11.621804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043341, -0.562874, -0.825405,
		0.372925, -0.775580, 0.509315,
		-0.926849, -0.285740, 0.243525,
		18.237173, 23.732317, 11.694861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.905138, 23.256039, 11.378373>,  <18.885967, 23.932335, 11.524394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.905138, 23.256039, 11.378373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.515518, 23.340580, 11.410764>,  <18.281746, 23.391306, 11.430198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.515518, 23.340580, 11.410764>,  <18.905138, 23.256039, 11.378373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.515518, 23.340580, 11.410764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208106, -0.695642, -0.687586,
		-0.088994, -0.686594, 0.721573,
		-0.974050, 0.211355, 0.080976,
		18.223303, 23.403986, 11.435057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.602608, 22.581017, 11.413265>,  <18.905138, 23.256039, 11.378373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.602608, 22.581017, 11.413265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310989, 22.829334, 11.297956>,  <18.136019, 22.978325, 11.228769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310989, 22.829334, 11.297956>,  <18.602608, 22.581017, 11.413265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.310989, 22.829334, 11.297956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375243, -0.714743, -0.590199,
		-0.572435, -0.322111, 0.754031,
		-0.729048, 0.620795, -0.288275,
		18.092276, 23.015574, 11.211473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.130276, 22.041544, 11.252424>,  <18.602608, 22.581017, 11.413265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.130276, 22.041544, 11.252424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.052414, 22.396358, 11.084961>,  <18.005697, 22.609247, 10.984483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.052414, 22.396358, 11.084961>,  <18.130276, 22.041544, 11.252424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.052414, 22.396358, 11.084961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303166, -0.460332, -0.834377,
		-0.932845, -0.035494, 0.358526,
		-0.194657, 0.887037, -0.418658,
		17.994017, 22.662470, 10.959364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.346033, 22.115194, 11.058289>,  <18.130276, 22.041544, 11.252424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.346033, 22.115194, 11.058289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.560417, 22.366413, 10.832615>,  <17.689049, 22.517145, 10.697211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.560417, 22.366413, 10.832615>,  <17.346033, 22.115194, 11.058289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.560417, 22.366413, 10.832615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410052, -0.390496, -0.824239,
		-0.737972, 0.673105, 0.048240,
		0.535962, 0.628047, -0.564183,
		17.721205, 22.554827, 10.663360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817139, 22.534895, 10.572237>,  <17.346033, 22.115194, 11.058289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817139, 22.534895, 10.572237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.183350, 22.555855, 10.412707>,  <17.403076, 22.568430, 10.316990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.183350, 22.555855, 10.412707>,  <16.817139, 22.534895, 10.572237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.183350, 22.555855, 10.412707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343495, -0.414111, -0.842925,
		-0.209324, 0.908717, -0.361133,
		0.915530, 0.052397, -0.398823,
		17.458008, 22.571573, 10.293060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710577, 22.556700, 9.897575>,  <16.817139, 22.534895, 10.572237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.710577, 22.556700, 9.897575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.097385, 22.454819, 9.897893>,  <17.329470, 22.393690, 9.898084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.097385, 22.454819, 9.897893>,  <16.710577, 22.556700, 9.897575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.097385, 22.454819, 9.897893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100414, -0.384099, -0.917815,
		0.234077, 0.887465, -0.397007,
		0.967019, -0.254704, 0.000795,
		17.387491, 22.378407, 9.898131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.993496, 22.604603, 9.136928>,  <16.710577, 22.556700, 9.897575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.993496, 22.604603, 9.136928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.254326, 22.373577, 9.333383>,  <17.410824, 22.234962, 9.451256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.254326, 22.373577, 9.333383>,  <16.993496, 22.604603, 9.136928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.254326, 22.373577, 9.333383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049849, -0.613745, -0.787929,
		0.756513, 0.538272, -0.371417,
		0.652076, -0.577565, 0.491138,
		17.449949, 22.200308, 9.480724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550343, 22.542278, 8.781770>,  <16.993496, 22.604603, 9.136928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.550343, 22.542278, 8.781770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.543377, 22.198555, 8.986236>,  <17.539198, 21.992321, 9.108915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.543377, 22.198555, 8.986236>,  <17.550343, 22.542278, 8.781770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.543377, 22.198555, 8.986236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171671, -0.506220, -0.845145,
		0.985000, 0.073033, 0.156334,
		-0.017416, -0.859306, 0.511164,
		17.538153, 21.940763, 9.139585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.090645, 22.107809, 8.482603>,  <17.550343, 22.542278, 8.781770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.090645, 22.107809, 8.482603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.845936, 21.873566, 8.695318>,  <17.699110, 21.733019, 8.822948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.845936, 21.873566, 8.695318>,  <18.090645, 22.107809, 8.482603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.845936, 21.873566, 8.695318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087285, -0.618190, -0.781168,
		0.786204, -0.524313, 0.327076,
		-0.611772, -0.585608, 0.531788,
		17.662405, 21.697884, 8.854855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.103453, 21.525341, 8.124898>,  <18.090645, 22.107809, 8.482603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.103453, 21.525341, 8.124898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.819721, 21.434277, 8.391739>,  <17.649483, 21.379639, 8.551844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.819721, 21.434277, 8.391739>,  <18.103453, 21.525341, 8.124898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.819721, 21.434277, 8.391739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321968, -0.737265, -0.593951,
		0.627050, -0.636091, 0.449662,
		-0.709326, -0.227660, 0.667103,
		17.606924, 21.365978, 8.591870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148365, 20.826843, 8.312726>,  <18.103453, 21.525341, 8.124898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.148365, 20.826843, 8.312726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.761673, 20.897827, 8.386420>,  <17.529657, 20.940416, 8.430636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.761673, 20.897827, 8.386420>,  <18.148365, 20.826843, 8.312726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.761673, 20.897827, 8.386420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251256, -0.793908, -0.553697,
		0.048008, -0.581566, 0.812082,
		-0.966729, 0.177458, 0.184236,
		17.471655, 20.951065, 8.441691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.863636, 20.132492, 8.427995>,  <18.148365, 20.826843, 8.312726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.863636, 20.132492, 8.427995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.540234, 20.358521, 8.362257>,  <17.346191, 20.494137, 8.322814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.540234, 20.358521, 8.362257>,  <17.863636, 20.132492, 8.427995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.540234, 20.358521, 8.362257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478326, -0.793698, -0.375830,
		-0.342811, -0.225252, 0.911999,
		-0.808508, 0.565071, -0.164344,
		17.297682, 20.528042, 8.312954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338249, 19.764284, 8.665235>,  <17.863636, 20.132492, 8.427995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338249, 19.764284, 8.665235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.178177, 20.019325, 8.401927>,  <17.082132, 20.172350, 8.243942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.178177, 20.019325, 8.401927>,  <17.338249, 19.764284, 8.665235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.178177, 20.019325, 8.401927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527319, -0.747675, -0.403630,
		-0.749556, 0.185640, 0.635376,
		-0.400125, 0.637590, -0.658316,
		17.058123, 20.210606, 8.204447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575172, 19.606115, 8.610915>,  <17.338249, 19.764284, 8.665235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.575172, 19.606115, 8.610915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.668903, 19.780678, 8.263435>,  <16.725142, 19.885416, 8.054948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.668903, 19.780678, 8.263435>,  <16.575172, 19.606115, 8.610915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.668903, 19.780678, 8.263435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556397, -0.672550, -0.487954,
		-0.797190, 0.597684, 0.085218,
		0.234329, 0.436407, -0.868700,
		16.739202, 19.911600, 8.002826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155855, 19.152897, 9.080122>,  <16.575172, 19.606115, 8.610915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155855, 19.152897, 9.080122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.903131, 18.908943, 9.271479>,  <15.751495, 18.762571, 9.386292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.903131, 18.908943, 9.271479>,  <16.155855, 19.152897, 9.080122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.903131, 18.908943, 9.271479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164747, 0.708740, 0.685964,
		-0.757412, 0.354586, -0.548266,
		-0.631811, -0.609882, 0.478391,
		15.713587, 18.725979, 9.414996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.624743, 19.605738, 9.246953>,  <16.155855, 19.152897, 9.080122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.624743, 19.605738, 9.246953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630187, 19.299885, 9.504683>,  <15.633453, 19.116373, 9.659322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630187, 19.299885, 9.504683>,  <15.624743, 19.605738, 9.246953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.630187, 19.299885, 9.504683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020982, 0.644025, 0.764717,
		-0.999687, -0.023927, -0.007278,
		0.013611, -0.764630, 0.644325,
		15.634271, 19.070496, 9.697981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972019, 19.799759, 9.710072>,  <15.624743, 19.605738, 9.246953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.972019, 19.799759, 9.710072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.177182, 19.520798, 9.910294>,  <15.300281, 19.353420, 10.030427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.177182, 19.520798, 9.910294>,  <14.972019, 19.799759, 9.710072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.177182, 19.520798, 9.910294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028972, 0.568701, 0.822034,
		-0.857955, -0.436130, 0.271486,
		0.512908, -0.697402, 0.500555,
		15.331055, 19.311577, 10.060460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.560808, 19.505157, 10.212663>,  <14.972019, 19.799759, 9.710072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.560808, 19.505157, 10.212663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.935559, 19.427887, 10.329242>,  <15.160410, 19.381525, 10.399189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.935559, 19.427887, 10.329242>,  <14.560808, 19.505157, 10.212663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.935559, 19.427887, 10.329242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119241, 0.607048, 0.785668,
		-0.328696, -0.770828, 0.545696,
		0.936878, -0.193176, 0.291448,
		15.216622, 19.369934, 10.416677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.471358, 19.390320, 10.939694>,  <14.560808, 19.505157, 10.212663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.471358, 19.390320, 10.939694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.850095, 19.498180, 10.869519>,  <15.077336, 19.562897, 10.827415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.850095, 19.498180, 10.869519>,  <14.471358, 19.390320, 10.939694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.850095, 19.498180, 10.869519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019016, 0.497477, 0.867269,
		0.321137, -0.824503, 0.465904,
		0.946842, 0.269652, -0.175437,
		15.134148, 19.579077, 10.816888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.799520, 19.343275, 11.584860>,  <14.471358, 19.390320, 10.939694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.799520, 19.343275, 11.584860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.020928, 19.603745, 11.377172>,  <15.153773, 19.760027, 11.252560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.020928, 19.603745, 11.377172>,  <14.799520, 19.343275, 11.584860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.020928, 19.603745, 11.377172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000755, 0.623042, 0.782188,
		0.832836, -0.433348, 0.344375,
		0.553519, 0.651174, -0.519219,
		15.186984, 19.799097, 11.221407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.211579, 19.550766, 12.081158>,  <14.799520, 19.343275, 11.584860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.211579, 19.550766, 12.081158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.281320, 19.825264, 11.798692>,  <15.323164, 19.989964, 11.629212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.281320, 19.825264, 11.798692>,  <15.211579, 19.550766, 12.081158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.281320, 19.825264, 11.798692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133190, 0.694123, 0.707428,
		0.975635, -0.217394, 0.029619,
		0.174350, 0.686246, -0.706165,
		15.333625, 20.031137, 11.586843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.795179, 19.864178, 12.338054>,  <15.211579, 19.550766, 12.081158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.795179, 19.864178, 12.338054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653386, 20.152290, 12.099545>,  <15.568311, 20.325157, 11.956441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653386, 20.152290, 12.099545>,  <15.795179, 19.864178, 12.338054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.653386, 20.152290, 12.099545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032612, 0.646814, 0.761950,
		0.934494, 0.250652, -0.252774,
		-0.354483, 0.720281, -0.596270,
		15.547041, 20.368374, 11.920665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.126091, 20.496170, 12.534722>,  <15.795179, 19.864178, 12.338054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.126091, 20.496170, 12.534722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.802354, 20.609020, 12.328668>,  <15.608111, 20.676731, 12.205035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.802354, 20.609020, 12.328668>,  <16.126091, 20.496170, 12.534722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.802354, 20.609020, 12.328668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198387, 0.694212, 0.691890,
		0.552814, 0.662174, -0.505887,
		-0.809345, 0.282125, -0.515137,
		15.559550, 20.693659, 12.174127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.167233, 21.169540, 12.546883>,  <16.126091, 20.496170, 12.534722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.167233, 21.169540, 12.546883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.783288, 21.096691, 12.461565>,  <15.552921, 21.052980, 12.410375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.783288, 21.096691, 12.461565>,  <16.167233, 21.169540, 12.546883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.783288, 21.096691, 12.461565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279531, 0.683405, 0.674404,
		0.022941, 0.706957, -0.706884,
		-0.959863, -0.182125, -0.213294,
		15.495329, 21.042053, 12.397577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888780, 21.831667, 12.612965>,  <16.167233, 21.169540, 12.546883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.888780, 21.831667, 12.612965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575957, 21.583904, 12.640457>,  <15.388264, 21.435247, 12.656953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575957, 21.583904, 12.640457>,  <15.888780, 21.831667, 12.612965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575957, 21.583904, 12.640457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392186, 0.574858, 0.718142,
		-0.484333, 0.534671, -0.692494,
		-0.782056, -0.619407, 0.068732,
		15.341341, 21.398083, 12.661077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.336034, 22.281879, 12.647847>,  <15.888780, 21.831667, 12.612965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.336034, 22.281879, 12.647847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.215770, 21.932262, 12.800505>,  <15.143611, 21.722492, 12.892099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.215770, 21.932262, 12.800505>,  <15.336034, 22.281879, 12.647847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.215770, 21.932262, 12.800505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322822, 0.469803, 0.821627,
		-0.897435, 0.123828, -0.423411,
		-0.300661, -0.874044, 0.381643,
		15.125571, 21.670050, 12.914998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.638001, 22.383257, 12.871900>,  <15.336034, 22.281879, 12.647847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.638001, 22.383257, 12.871900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.784629, 22.075905, 13.081745>,  <14.872605, 21.891493, 13.207652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.784629, 22.075905, 13.081745>,  <14.638001, 22.383257, 12.871900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.784629, 22.075905, 13.081745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190392, 0.489980, 0.850688,
		-0.910702, -0.411718, 0.033319,
		0.366569, -0.768380, 0.524614,
		14.894600, 21.845390, 13.239129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.152117, 22.260286, 13.494527>,  <14.638001, 22.383257, 12.871900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.152117, 22.260286, 13.494527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.496387, 22.086464, 13.600659>,  <14.702949, 21.982170, 13.664339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.496387, 22.086464, 13.600659>,  <14.152117, 22.260286, 13.494527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.496387, 22.086464, 13.600659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018337, 0.494329, 0.869082,
		-0.508825, -0.752862, 0.417488,
		0.860675, -0.434555, 0.265332,
		14.754589, 21.956097, 13.680259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.015414, 21.924570, 14.164614>,  <14.152117, 22.260286, 13.494527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.015414, 21.924570, 14.164614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.413722, 21.959724, 14.153874>,  <14.652706, 21.980818, 14.147430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.413722, 21.959724, 14.153874>,  <14.015414, 21.924570, 14.164614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.413722, 21.959724, 14.153874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024803, 0.538344, 0.842360,
		0.088486, -0.838130, 0.538246,
		0.995769, 0.087888, -0.026848,
		14.712453, 21.986092, 14.145820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.346041, 21.691639, 14.790475>,  <14.015414, 21.924570, 14.164614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.346041, 21.691639, 14.790475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.643718, 21.915497, 14.644610>,  <14.822324, 22.049810, 14.557092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.643718, 21.915497, 14.644610>,  <14.346041, 21.691639, 14.790475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.643718, 21.915497, 14.644610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083605, 0.463596, 0.882094,
		0.662713, -0.686934, 0.298215,
		0.744192, 0.559643, -0.364662,
		14.866976, 22.083389, 14.535212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.074223, 21.577394, 15.249174>,  <14.346041, 21.691639, 14.790475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.074223, 21.577394, 15.249174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.126430, 21.930393, 15.068435>,  <15.157754, 22.142193, 14.959991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.126430, 21.930393, 15.068435>,  <15.074223, 21.577394, 15.249174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.126430, 21.930393, 15.068435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297937, 0.399771, 0.866843,
		0.945621, -0.247760, -0.210752,
		0.130516, 0.882496, -0.451848,
		15.165585, 22.195143, 14.932880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.670746, 21.782175, 15.390411>,  <15.074223, 21.577394, 15.249174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.670746, 21.782175, 15.390411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.496842, 22.131855, 15.303914>,  <15.392500, 22.341663, 15.252015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.496842, 22.131855, 15.303914>,  <15.670746, 21.782175, 15.390411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.496842, 22.131855, 15.303914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483904, 0.429293, 0.762590,
		0.759488, 0.226901, -0.609667,
		-0.434759, 0.874199, -0.216244,
		15.366415, 22.394115, 15.239041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.185560, 22.272804, 15.380987>,  <15.670746, 21.782175, 15.390411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.185560, 22.272804, 15.380987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.857392, 22.499310, 15.412620>,  <15.660491, 22.635212, 15.431599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.857392, 22.499310, 15.412620>,  <16.185560, 22.272804, 15.380987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.857392, 22.499310, 15.412620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459266, 0.570289, 0.681062,
		0.340561, 0.595077, -0.727943,
		-0.820422, 0.566263, 0.079081,
		15.611266, 22.669188, 15.436344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432652, 22.968491, 15.382493>,  <16.185560, 22.272804, 15.380987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.432652, 22.968491, 15.382493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.068497, 23.020126, 15.539737>,  <15.850004, 23.051107, 15.634083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.068497, 23.020126, 15.539737>,  <16.432652, 22.968491, 15.382493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.068497, 23.020126, 15.539737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387140, 0.601048, 0.699188,
		-0.146020, 0.788719, -0.597161,
		-0.910385, 0.129089, 0.393109,
		15.795382, 23.058853, 15.657670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.207924, 23.663969, 15.349731>,  <16.432652, 22.968491, 15.382493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.207924, 23.663969, 15.349731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.004707, 23.496967, 15.651084>,  <15.882777, 23.396767, 15.831896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.004707, 23.496967, 15.651084>,  <16.207924, 23.663969, 15.349731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.004707, 23.496967, 15.651084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393093, 0.665882, 0.634097,
		-0.766401, 0.618297, -0.174179,
		-0.508043, -0.417504, 0.753381,
		15.852295, 23.371716, 15.877098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.981606, 24.178539, 15.806978>,  <16.207924, 23.663969, 15.349731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.981606, 24.178539, 15.806978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.949382, 23.847679, 16.029449>,  <15.930047, 23.649164, 16.162933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.949382, 23.847679, 16.029449>,  <15.981606, 24.178539, 15.806978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.949382, 23.847679, 16.029449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342318, 0.501094, 0.794810,
		-0.936124, 0.254421, 0.242779,
		-0.080562, -0.827149, 0.556179,
		15.925214, 23.599535, 16.196302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.787574, 24.455645, 16.413456>,  <15.981606, 24.178539, 15.806978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.787574, 24.455645, 16.413456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.890384, 24.080788, 16.507862>,  <15.952070, 23.855873, 16.564507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.890384, 24.080788, 16.507862>,  <15.787574, 24.455645, 16.413456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.890384, 24.080788, 16.507862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466360, 0.334179, 0.819044,
		-0.846432, -0.100447, 0.522938,
		0.257025, -0.937142, 0.236015,
		15.967491, 23.799644, 16.578667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.842721, 24.516436, 17.239460>,  <15.787574, 24.455645, 16.413456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.842721, 24.516436, 17.239460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.016048, 24.190262, 17.085939>,  <16.120045, 23.994558, 16.993828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.016048, 24.190262, 17.085939>,  <15.842721, 24.516436, 17.239460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.016048, 24.190262, 17.085939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656661, -0.006014, 0.754162,
		-0.617277, -0.578820, 0.532857,
		0.433319, -0.815433, -0.383801,
		16.146044, 23.945631, 16.970798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.912114, 24.227985, 17.786509>,  <15.842721, 24.516436, 17.239460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.912114, 24.227985, 17.786509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.179623, 24.098476, 17.518803>,  <16.340128, 24.020771, 17.358179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.179623, 24.098476, 17.518803>,  <15.912114, 24.227985, 17.786509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.179623, 24.098476, 17.518803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711214, 0.016335, 0.702786,
		-0.216609, -0.945995, 0.241195,
		0.668772, -0.323770, -0.669266,
		16.380255, 24.001345, 17.318024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.295565, 23.781387, 18.163399>,  <15.912114, 24.227985, 17.786509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.295565, 23.781387, 18.163399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.536430, 23.815521, 17.845879>,  <16.680950, 23.836002, 17.655367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.536430, 23.815521, 17.845879>,  <16.295565, 23.781387, 18.163399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.536430, 23.815521, 17.845879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798345, -0.072830, 0.597781,
		-0.006800, -0.993687, -0.111984,
		0.602162, 0.085337, -0.793800,
		16.717079, 23.841122, 17.607738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.742609, 23.188463, 18.096134>,  <16.295565, 23.781387, 18.163399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.742609, 23.188463, 18.096134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911400, 23.507126, 17.923035>,  <17.012674, 23.698324, 17.819176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911400, 23.507126, 17.923035>,  <16.742609, 23.188463, 18.096134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.911400, 23.507126, 17.923035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749000, -0.037398, 0.661513,
		0.510815, -0.603274, -0.612478,
		0.421979, 0.796657, -0.432749,
		17.037994, 23.746122, 17.793209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420706, 22.952347, 18.031124>,  <16.742609, 23.188463, 18.096134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.420706, 22.952347, 18.031124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.437668, 23.350716, 17.999264>,  <17.447845, 23.589737, 17.980148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.437668, 23.350716, 17.999264>,  <17.420706, 22.952347, 18.031124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.437668, 23.350716, 17.999264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844754, 0.006828, 0.535111,
		0.533472, -0.089977, -0.841018,
		0.042405, 0.995920, -0.079651,
		17.450390, 23.649492, 17.975368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.123766, 23.025873, 17.948135>,  <17.420706, 22.952347, 18.031124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.123766, 23.025873, 17.948135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.990807, 23.382988, 18.069754>,  <17.911030, 23.597256, 18.142725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.990807, 23.382988, 18.069754>,  <18.123766, 23.025873, 17.948135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.990807, 23.382988, 18.069754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675247, 0.000212, 0.737591,
		0.658446, 0.450483, -0.602921,
		-0.332400, 0.892785, 0.304047,
		17.891087, 23.650824, 18.160969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.764730, 23.463646, 18.134920>,  <18.123766, 23.025873, 17.948135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.764730, 23.463646, 18.134920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.447552, 23.657021, 18.283258>,  <18.257244, 23.773045, 18.372261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.447552, 23.657021, 18.283258>,  <18.764730, 23.463646, 18.134920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.447552, 23.657021, 18.283258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482747, 0.127134, 0.866482,
		0.371740, 0.866099, -0.334187,
		-0.792947, 0.483434, 0.370846,
		18.209667, 23.802052, 18.394512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.950481, 24.117638, 18.281515>,  <18.764730, 23.463646, 18.134920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.950481, 24.117638, 18.281515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.648628, 23.987949, 18.509695>,  <18.467516, 23.910137, 18.646603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.648628, 23.987949, 18.509695>,  <18.950481, 24.117638, 18.281515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.648628, 23.987949, 18.509695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526800, 0.218915, 0.821315,
		-0.391167, 0.920303, 0.005599,
		-0.754633, -0.324221, 0.570448,
		18.422239, 23.890684, 18.680830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.040756, 24.436066, 18.848843>,  <18.950481, 24.117638, 18.281515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.040756, 24.436066, 18.848843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.749348, 24.211754, 19.006214>,  <18.574503, 24.077168, 19.100637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.749348, 24.211754, 19.006214>,  <19.040756, 24.436066, 18.848843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.749348, 24.211754, 19.006214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409152, 0.104425, 0.906471,
		-0.549413, 0.821355, 0.153368,
		-0.728519, -0.560778, 0.393431,
		18.530792, 24.043520, 19.124243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.813835, 24.820787, 19.475483>,  <19.040756, 24.436066, 18.848843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.813835, 24.820787, 19.475483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.740620, 24.429779, 19.517332>,  <18.696690, 24.195173, 19.542442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.740620, 24.429779, 19.517332>,  <18.813835, 24.820787, 19.475483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.740620, 24.429779, 19.517332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385010, 0.026646, 0.922527,
		-0.904579, 0.209140, 0.371479,
		-0.183039, -0.977523, 0.104624,
		18.685709, 24.136522, 19.548719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469944, 24.733343, 20.037838>,  <18.813835, 24.820787, 19.475483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469944, 24.733343, 20.037838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.596077, 24.354359, 20.016356>,  <18.671757, 24.126968, 20.003466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.596077, 24.354359, 20.016356>,  <18.469944, 24.733343, 20.037838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.596077, 24.354359, 20.016356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322737, 0.053846, 0.944956,
		-0.892416, -0.315308, 0.322760,
		0.315331, -0.947461, -0.053708,
		18.690676, 24.070120, 20.000242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.143377, 24.321791, 20.627357>,  <18.469944, 24.733343, 20.037838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.143377, 24.321791, 20.627357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.470970, 24.131115, 20.499582>,  <18.667526, 24.016710, 20.422918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.470970, 24.131115, 20.499582>,  <18.143377, 24.321791, 20.627357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.470970, 24.131115, 20.499582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371152, 0.015498, 0.928443,
		-0.437626, -0.878936, 0.189616,
		0.818981, -0.476687, -0.319437,
		18.716665, 23.988110, 20.403751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.536219, 24.106007, 21.238657>,  <18.143377, 24.321791, 20.627357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.536219, 24.106007, 21.238657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800381, 24.010361, 20.953928>,  <18.958878, 23.952972, 20.783091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800381, 24.010361, 20.953928>,  <18.536219, 24.106007, 21.238657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800381, 24.010361, 20.953928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739206, 0.040307, 0.672273,
		-0.132058, -0.970154, 0.203373,
		0.660406, -0.239114, -0.711821,
		18.998503, 23.938627, 20.740381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058365, 23.649429, 21.548403>,  <18.536219, 24.106007, 21.238657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058365, 23.649429, 21.548403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.205921, 23.830078, 21.223452>,  <19.294455, 23.938467, 21.028481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.205921, 23.830078, 21.223452>,  <19.058365, 23.649429, 21.548403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.205921, 23.830078, 21.223452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779990, 0.324933, 0.534821,
		0.505505, -0.830938, -0.232395,
		0.368890, 0.451621, -0.812378,
		19.316587, 23.965565, 20.979738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.769798, 23.451031, 21.538223>,  <19.058365, 23.649429, 21.548403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.769798, 23.451031, 21.538223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.745712, 23.796066, 21.337299>,  <19.731260, 24.003088, 21.216745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.745712, 23.796066, 21.337299>,  <19.769798, 23.451031, 21.538223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.745712, 23.796066, 21.337299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725316, 0.383537, 0.571678,
		0.685777, -0.329912, -0.648743,
		-0.060214, 0.862587, -0.502312,
		19.727648, 24.054842, 21.186605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.350904, 23.130541, 21.889305>,  <19.769798, 23.451031, 21.538223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.350904, 23.130541, 21.889305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.335941, 22.873890, 22.195745>,  <20.326963, 22.719898, 22.379610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.335941, 22.873890, 22.195745>,  <20.350904, 23.130541, 21.889305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.335941, 22.873890, 22.195745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680492, -0.545065, -0.489730,
		0.731801, -0.539645, -0.416234,
		-0.037406, -0.641628, 0.766103,
		20.324720, 22.681402, 22.425577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.491434, 22.518608, 21.667980>,  <20.350904, 23.130541, 21.889305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.491434, 22.518608, 21.667980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276070, 22.439728, 21.995693>,  <20.146851, 22.392401, 22.192322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276070, 22.439728, 21.995693>,  <20.491434, 22.518608, 21.667980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.276070, 22.439728, 21.995693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613533, -0.574734, -0.541533,
		0.577661, -0.794225, 0.188454,
		-0.538409, -0.197200, 0.819285,
		20.114546, 22.380568, 22.241478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.293030, 21.868082, 21.613934>,  <20.491434, 22.518608, 21.667980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.293030, 21.868082, 21.613934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028149, 22.011971, 21.876867>,  <19.869221, 22.098303, 22.034628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.028149, 22.011971, 21.876867>,  <20.293030, 21.868082, 21.613934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.028149, 22.011971, 21.876867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735578, -0.479323, -0.478721,
		0.142869, -0.800531, 0.582013,
		-0.662203, 0.359721, 0.657334,
		19.829487, 22.119886, 22.074068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.854740, 21.326969, 21.719992>,  <20.293030, 21.868082, 21.613934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.854740, 21.326969, 21.719992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.637638, 21.636009, 21.851751>,  <19.507378, 21.821434, 21.930807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.637638, 21.636009, 21.851751>,  <19.854740, 21.326969, 21.719992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.637638, 21.636009, 21.851751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824417, -0.415132, -0.384710,
		-0.160482, -0.480367, 0.862260,
		-0.542754, 0.772601, 0.329402,
		19.474812, 21.867790, 21.950571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.147898, 20.975128, 21.901915>,  <19.854740, 21.326969, 21.719992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.147898, 20.975128, 21.901915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.096428, 21.367870, 21.846191>,  <19.065546, 21.603516, 21.812757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.096428, 21.367870, 21.846191>,  <19.147898, 20.975128, 21.901915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.096428, 21.367870, 21.846191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862764, -0.180098, -0.472443,
		-0.488959, 0.059398, 0.870282,
		-0.128674, 0.981853, -0.139307,
		19.057825, 21.662426, 21.804399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.402884, 21.071800, 21.893061>,  <19.147898, 20.975128, 21.901915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.402884, 21.071800, 21.893061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.525993, 21.401825, 21.703514>,  <18.599859, 21.599840, 21.589787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.525993, 21.401825, 21.703514>,  <18.402884, 21.071800, 21.893061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.525993, 21.401825, 21.703514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698797, -0.141991, -0.701086,
		-0.645723, 0.546914, 0.532848,
		0.307773, 0.825060, -0.473869,
		18.618326, 21.649343, 21.561354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.824820, 21.507973, 21.753691>,  <18.402884, 21.071800, 21.893061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.824820, 21.507973, 21.753691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.106133, 21.631996, 21.497799>,  <18.274920, 21.706409, 21.344263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.106133, 21.631996, 21.497799>,  <17.824820, 21.507973, 21.753691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.106133, 21.631996, 21.497799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644980, -0.100177, -0.757605,
		-0.298988, 0.945425, 0.129529,
		0.703283, 0.310058, -0.639732,
		18.317118, 21.725014, 21.305880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.494146, 21.946291, 21.264830>,  <17.824820, 21.507973, 21.753691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.494146, 21.946291, 21.264830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823689, 21.856934, 21.056463>,  <18.021414, 21.803320, 20.931442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823689, 21.856934, 21.056463>,  <17.494146, 21.946291, 21.264830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823689, 21.856934, 21.056463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534105, 0.001633, -0.845416,
		0.189710, 0.974727, -0.117970,
		0.823858, -0.223392, -0.520917,
		18.070847, 21.789915, 20.900188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.477877, 22.300329, 20.673197>,  <17.494146, 21.946291, 21.264830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.477877, 22.300329, 20.673197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.746986, 22.035347, 20.541426>,  <17.908453, 21.876358, 20.462362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.746986, 22.035347, 20.541426>,  <17.477877, 22.300329, 20.673197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.746986, 22.035347, 20.541426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398596, 0.050574, -0.915731,
		0.623293, 0.747391, -0.230028,
		0.672776, -0.662457, -0.329430,
		17.948818, 21.836611, 20.442596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.651381, 22.514978, 19.954748>,  <17.477877, 22.300329, 20.673197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.651381, 22.514978, 19.954748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718105, 22.123302, 20.000984>,  <17.758141, 21.888296, 20.028727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718105, 22.123302, 20.000984>,  <17.651381, 22.514978, 19.954748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.718105, 22.123302, 20.000984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360446, -0.169680, -0.917217,
		0.917743, 0.111338, -0.381250,
		0.166812, -0.979190, 0.115591,
		17.768148, 21.829546, 20.035662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783632, 22.283648, 19.258448>,  <17.651381, 22.514978, 19.954748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.783632, 22.283648, 19.258448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765366, 21.932652, 19.449415>,  <17.754406, 21.722054, 19.563995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765366, 21.932652, 19.449415>,  <17.783632, 22.283648, 19.258448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.765366, 21.932652, 19.449415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215701, -0.457982, -0.862395,
		0.975391, -0.142364, -0.168360,
		-0.045668, -0.877488, 0.477420,
		17.751665, 21.669405, 19.592642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.288393, 21.731651, 18.975101>,  <17.783632, 22.283648, 19.258448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.288393, 21.731651, 18.975101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.958797, 21.565689, 19.129452>,  <17.761040, 21.466112, 19.222061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.958797, 21.565689, 19.129452>,  <18.288393, 21.731651, 18.975101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.958797, 21.565689, 19.129452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230173, -0.377191, -0.897077,
		0.517751, -0.827997, 0.215301,
		-0.823987, -0.414906, 0.385873,
		17.711601, 21.441217, 19.245214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.185783, 21.113514, 18.632519>,  <18.288393, 21.731651, 18.975101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.185783, 21.113514, 18.632519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.827045, 21.140869, 18.807327>,  <17.611803, 21.157282, 18.912212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.827045, 21.140869, 18.807327>,  <18.185783, 21.113514, 18.632519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.827045, 21.140869, 18.807327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432819, -0.339567, -0.835082,
		0.091288, -0.938092, 0.334140,
		-0.896847, 0.068389, 0.437022,
		17.557991, 21.161386, 18.938435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.805964, 20.531775, 18.433403>,  <18.185783, 21.113514, 18.632519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.805964, 20.531775, 18.433403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.535194, 20.812408, 18.522449>,  <17.372734, 20.980789, 18.575878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.535194, 20.812408, 18.522449>,  <17.805964, 20.531775, 18.433403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.535194, 20.812408, 18.522449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491763, -0.206035, -0.846001,
		-0.547674, -0.682150, 0.484483,
		-0.676921, 0.701584, 0.222616,
		17.332119, 21.022884, 18.589235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.233040, 20.167459, 18.526459>,  <17.805964, 20.531775, 18.433403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.233040, 20.167459, 18.526459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.116035, 20.542873, 18.453146>,  <17.045834, 20.768122, 18.409159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.116035, 20.542873, 18.453146>,  <17.233040, 20.167459, 18.526459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.116035, 20.542873, 18.453146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546013, -0.321270, -0.773728,
		-0.785052, -0.126250, 0.606427,
		-0.292510, 0.938534, -0.183280,
		17.028282, 20.824434, 18.398163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.470928, 20.206491, 18.514286>,  <17.233040, 20.167459, 18.526459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.470928, 20.206491, 18.514286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606560, 20.512634, 18.295469>,  <16.687939, 20.696320, 18.164179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606560, 20.512634, 18.295469>,  <16.470928, 20.206491, 18.514286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606560, 20.512634, 18.295469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665002, -0.216307, -0.714831,
		-0.665430, 0.606168, 0.435618,
		0.339081, 0.765357, -0.547040,
		16.708284, 20.742241, 18.131357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876156, 20.380201, 18.101288>,  <16.470928, 20.206491, 18.514286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876156, 20.380201, 18.101288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.156258, 20.609898, 17.931633>,  <16.324318, 20.747715, 17.829840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.156258, 20.609898, 17.931633>,  <15.876156, 20.380201, 18.101288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.156258, 20.609898, 17.931633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457472, -0.095152, -0.884119,
		-0.548055, 0.813138, 0.196069,
		0.700254, 0.574242, -0.424136,
		16.366333, 20.782169, 17.804392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.647267, 21.032806, 17.886194>,  <15.876156, 20.380201, 18.101288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.647267, 21.032806, 17.886194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963525, 20.964024, 17.651140>,  <16.153278, 20.922754, 17.510107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963525, 20.964024, 17.651140>,  <15.647267, 21.032806, 17.886194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.963525, 20.964024, 17.651140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602160, -0.044635, -0.797126,
		0.110842, 0.984093, -0.138836,
		0.790643, -0.171956, -0.587634,
		16.200718, 20.912437, 17.474850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.572581, 21.496176, 17.313854>,  <15.647267, 21.032806, 17.886194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.572581, 21.496176, 17.313854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.822797, 21.201210, 17.211937>,  <15.972926, 21.024231, 17.150785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.822797, 21.201210, 17.211937>,  <15.572581, 21.496176, 17.313854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.822797, 21.201210, 17.211937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455616, -0.080166, -0.886559,
		0.633335, 0.670667, -0.386125,
		0.625540, -0.737414, -0.254795,
		16.010458, 20.979986, 17.135498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.664637, 21.538048, 16.559574>,  <15.572581, 21.496176, 17.313854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.664637, 21.538048, 16.559574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.773829, 21.165142, 16.654541>,  <15.839345, 20.941399, 16.711521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.773829, 21.165142, 16.654541>,  <15.664637, 21.538048, 16.559574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.773829, 21.165142, 16.654541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347616, -0.325706, -0.879249,
		0.897020, 0.157488, -0.412981,
		0.272981, -0.932263, 0.237419,
		15.855724, 20.885464, 16.725767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064831, 21.286388, 15.908991>,  <15.664637, 21.538048, 16.559574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.064831, 21.286388, 15.908991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.939458, 20.990929, 16.147705>,  <15.864234, 20.813652, 16.290934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.939458, 20.990929, 16.147705>,  <16.064831, 21.286388, 15.908991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.939458, 20.990929, 16.147705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452107, -0.436582, -0.777814,
		0.835080, -0.513604, -0.197110,
		-0.313434, -0.738652, 0.596785,
		15.845428, 20.769333, 16.326740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.119709, 20.727203, 15.555949>,  <16.064831, 21.286388, 15.908991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.119709, 20.727203, 15.555949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869332, 20.586277, 15.834250>,  <15.719107, 20.501722, 16.001232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.869332, 20.586277, 15.834250>,  <16.119709, 20.727203, 15.555949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.869332, 20.586277, 15.834250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536380, -0.453134, -0.712015,
		0.566123, -0.818868, 0.094660,
		-0.625940, -0.352315, 0.695754,
		15.681550, 20.480583, 16.042976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106585, 20.064606, 15.405504>,  <16.119709, 20.727203, 15.555949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.106585, 20.064606, 15.405504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.782416, 20.125931, 15.631677>,  <15.587915, 20.162725, 15.767380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.782416, 20.125931, 15.631677>,  <16.106585, 20.064606, 15.405504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.782416, 20.125931, 15.631677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539454, -0.571709, -0.618173,
		0.228488, -0.806005, 0.546031,
		-0.810421, 0.153313, 0.565431,
		15.539289, 20.171925, 15.801306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.767746, 19.414087, 15.579944>,  <16.106585, 20.064606, 15.405504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.767746, 19.414087, 15.579944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.469913, 19.680145, 15.602481>,  <15.291212, 19.839781, 15.616003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.469913, 19.680145, 15.602481>,  <15.767746, 19.414087, 15.579944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.469913, 19.680145, 15.602481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504440, -0.505379, -0.700095,
		-0.437190, -0.549703, 0.711823,
		-0.744584, 0.665146, 0.056346,
		15.246537, 19.879690, 15.619384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233368, 18.958515, 15.459037>,  <15.767746, 19.414087, 15.579944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.233368, 18.958515, 15.459037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.101985, 19.333210, 15.410640>,  <15.023155, 19.558027, 15.381601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.101985, 19.333210, 15.410640>,  <15.233368, 18.958515, 15.459037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.101985, 19.333210, 15.410640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577048, -0.300429, -0.759446,
		-0.747751, -0.179626, 0.639221,
		-0.328456, 0.936738, -0.120993,
		15.003448, 19.614231, 15.374342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.577365, 18.827539, 15.321751>,  <15.233368, 18.958515, 15.459037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.577365, 18.827539, 15.321751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.604377, 19.198013, 15.173360>,  <14.620584, 19.420298, 15.084325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.604377, 19.198013, 15.173360>,  <14.577365, 18.827539, 15.321751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.604377, 19.198013, 15.173360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475522, -0.297001, -0.828052,
		-0.877108, 0.232325, 0.420364,
		0.067529, 0.926183, -0.370978,
		14.624636, 19.475868, 15.062066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.942419, 19.007910, 15.000738>,  <14.577365, 18.827539, 15.321751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.942419, 19.007910, 15.000738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.237470, 19.220917, 14.834687>,  <14.414500, 19.348721, 14.735057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.237470, 19.220917, 14.834687>,  <13.942419, 19.007910, 15.000738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.237470, 19.220917, 14.834687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286428, -0.309975, -0.906573,
		-0.611446, 0.787617, -0.076118,
		0.737627, 0.532518, -0.415128,
		14.458757, 19.380672, 14.710149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.567740, 19.301828, 14.429250>,  <13.942419, 19.007910, 15.000738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.567740, 19.301828, 14.429250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.958087, 19.301003, 14.341905>,  <14.192295, 19.300507, 14.289497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.958087, 19.301003, 14.341905>,  <13.567740, 19.301828, 14.429250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.958087, 19.301003, 14.341905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199090, -0.419251, -0.885772,
		-0.089719, 0.907868, -0.409543,
		0.975866, -0.002065, -0.218362,
		14.250847, 19.300383, 14.276396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.552371, 19.398590, 13.722527>,  <13.567740, 19.301828, 14.429250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.552371, 19.398590, 13.722527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928784, 19.271324, 13.768535>,  <14.154633, 19.194965, 13.796140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928784, 19.271324, 13.768535>,  <13.552371, 19.398590, 13.722527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928784, 19.271324, 13.768535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119835, -0.631400, -0.766142,
		0.316383, 0.707181, -0.632295,
		0.941032, -0.318165, 0.115019,
		14.211094, 19.175875, 13.803041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.809313, 19.596304, 13.097916>,  <13.552371, 19.398590, 13.722527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.809313, 19.596304, 13.097916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.049846, 19.313511, 13.246819>,  <14.194165, 19.143835, 13.336163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.049846, 19.313511, 13.246819>,  <13.809313, 19.596304, 13.097916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.049846, 19.313511, 13.246819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173475, -0.570317, -0.802898,
		0.779940, 0.418230, -0.465593,
		0.601332, -0.706981, 0.372261,
		14.230246, 19.101418, 13.358498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.190139, 19.459858, 12.565147>,  <13.809313, 19.596304, 13.097916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.190139, 19.459858, 12.565147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.209086, 19.156170, 12.824791>,  <14.220455, 18.973957, 12.980577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.209086, 19.156170, 12.824791>,  <14.190139, 19.459858, 12.565147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.209086, 19.156170, 12.824791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090084, -0.650438, -0.754198,
		0.994807, -0.022748, -0.099205,
		0.047370, -0.759219, 0.649110,
		14.223297, 18.928404, 13.019524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.671124, 19.081390, 12.300246>,  <14.190139, 19.459858, 12.565147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.671124, 19.081390, 12.300246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.452962, 18.841789, 12.534760>,  <14.322064, 18.698029, 12.675467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.452962, 18.841789, 12.534760>,  <14.671124, 19.081390, 12.300246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.452962, 18.841789, 12.534760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191762, -0.591751, -0.782981,
		0.815942, -0.539469, 0.207878,
		-0.545405, -0.599003, 0.586284,
		14.289340, 18.662088, 12.710645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.774857, 18.414280, 11.991810>,  <14.671124, 19.081390, 12.300246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.774857, 18.414280, 11.991810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.460971, 18.336510, 12.227240>,  <14.272639, 18.289846, 12.368498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.460971, 18.336510, 12.227240>,  <14.774857, 18.414280, 11.991810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.460971, 18.336510, 12.227240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331043, -0.671324, -0.663124,
		0.524054, -0.715207, 0.462434,
		-0.784715, -0.194427, 0.588575,
		14.225556, 18.278181, 12.403812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.739463, 17.671371, 12.041820>,  <14.774857, 18.414280, 11.991810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.739463, 17.671371, 12.041820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.385165, 17.843071, 12.112478>,  <14.172586, 17.946091, 12.154874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.385165, 17.843071, 12.112478>,  <14.739463, 17.671371, 12.041820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.385165, 17.843071, 12.112478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396319, -0.501244, -0.769211,
		-0.241640, -0.751332, 0.614093,
		-0.885743, 0.429249, 0.176647,
		14.119442, 17.971846, 12.165472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.326530, 17.145334, 12.006676>,  <14.739463, 17.671371, 12.041820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.326530, 17.145334, 12.006676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.089355, 17.462818, 11.952347>,  <13.947049, 17.653309, 11.919749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.089355, 17.462818, 11.952347>,  <14.326530, 17.145334, 12.006676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.089355, 17.462818, 11.952347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538074, -0.516018, -0.666484,
		-0.599083, -0.322101, 0.733042,
		-0.592938, 0.793711, -0.135824,
		13.911472, 17.700932, 11.911600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.729111, 16.886427, 11.984078>,  <14.326530, 17.145334, 12.006676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.729111, 16.886427, 11.984078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.690085, 17.230389, 11.783661>,  <13.666670, 17.436766, 11.663410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.690085, 17.230389, 11.783661>,  <13.729111, 16.886427, 11.984078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.690085, 17.230389, 11.783661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508267, -0.475892, -0.717768,
		-0.855655, 0.184635, 0.483491,
		-0.097564, 0.859905, -0.501044,
		13.660816, 17.488359, 11.633348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.050001, 16.794085, 11.648273>,  <13.729111, 16.886427, 11.984078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.050001, 16.794085, 11.648273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.212766, 17.122616, 11.488353>,  <13.310425, 17.319735, 11.392400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.212766, 17.122616, 11.488353>,  <13.050001, 16.794085, 11.648273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.212766, 17.122616, 11.488353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505051, -0.162408, -0.847672,
		-0.761148, 0.546848, 0.348727,
		0.406912, 0.821329, -0.399803,
		13.334839, 17.369015, 11.368412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.516862, 16.912514, 11.204332>,  <13.050001, 16.794085, 11.648273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.516862, 16.912514, 11.204332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.856807, 17.084202, 11.082019>,  <13.060774, 17.187214, 11.008631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.856807, 17.084202, 11.082019>,  <12.516862, 16.912514, 11.204332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.856807, 17.084202, 11.082019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144897, -0.367559, -0.918643,
		-0.506694, 0.825027, -0.250181,
		0.849862, 0.429221, -0.305784,
		13.111766, 17.212969, 10.990284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.399420, 17.175547, 10.560579>,  <12.516862, 16.912514, 11.204332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.399420, 17.175547, 10.560579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798490, 17.170181, 10.587305>,  <13.037931, 17.166962, 10.603340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798490, 17.170181, 10.587305>,  <12.399420, 17.175547, 10.560579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.798490, 17.170181, 10.587305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053454, -0.454076, -0.889358,
		0.042270, 0.890862, -0.452304,
		0.997675, -0.013416, 0.066814,
		13.097792, 17.166157, 10.607349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.701781, 17.351677, 9.914147>,  <12.399420, 17.175547, 10.560579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.701781, 17.351677, 9.914147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.997317, 17.135754, 10.075504>,  <13.174639, 17.006201, 10.172318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.997317, 17.135754, 10.075504>,  <12.701781, 17.351677, 9.914147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.997317, 17.135754, 10.075504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053944, -0.549312, -0.833875,
		0.671719, 0.637860, -0.376733,
		0.738839, -0.539807, 0.403392,
		13.218969, 16.973812, 10.196522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.448398, 17.310678, 9.486555>,  <12.701781, 17.351677, 9.914147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.448398, 17.310678, 9.486555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.374900, 16.980511, 9.700066>,  <13.330801, 16.782410, 9.828172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.374900, 16.980511, 9.700066>,  <13.448398, 17.310678, 9.486555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.374900, 16.980511, 9.700066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046977, -0.535027, -0.843528,
		0.981851, -0.180070, 0.059533,
		-0.183745, -0.825421, 0.533776,
		13.319777, 16.732883, 9.860198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.879126, 16.742149, 9.238149>,  <13.448398, 17.310678, 9.486555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.879126, 16.742149, 9.238149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544782, 16.612755, 9.415551>,  <13.344175, 16.535118, 9.521993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544782, 16.612755, 9.415551>,  <13.879126, 16.742149, 9.238149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.544782, 16.612755, 9.415551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166971, -0.619824, -0.766772,
		0.522934, -0.714966, 0.464073,
		-0.835859, -0.323484, 0.443506,
		13.294024, 16.515709, 9.548603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.892686, 15.996298, 9.391936>,  <13.879126, 16.742149, 9.238149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.892686, 15.996298, 9.391936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.534036, 16.153614, 9.310562>,  <13.318846, 16.248003, 9.261738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.534036, 16.153614, 9.310562>,  <13.892686, 15.996298, 9.391936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.534036, 16.153614, 9.310562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113440, -0.648136, -0.753028,
		-0.428011, -0.652107, 0.625750,
		-0.896626, 0.393289, -0.203434,
		13.265048, 16.271601, 9.249532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.454445, 15.503357, 9.310970>,  <13.892686, 15.996298, 9.391936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.454445, 15.503357, 9.310970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.316253, 15.790470, 9.069166>,  <13.233337, 15.962738, 8.924084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.316253, 15.790470, 9.069166>,  <13.454445, 15.503357, 9.310970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.316253, 15.790470, 9.069166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186585, -0.683852, -0.705360,
		-0.919691, -0.130895, 0.370184,
		-0.345479, 0.717783, -0.604510,
		13.212609, 16.005806, 8.887814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.875410, 15.280725, 9.008457>,  <13.454445, 15.503357, 9.310970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.875410, 15.280725, 9.008457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.031785, 15.538486, 8.745577>,  <13.125609, 15.693143, 8.587849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.031785, 15.538486, 8.745577>,  <12.875410, 15.280725, 9.008457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.031785, 15.538486, 8.745577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129453, -0.745423, -0.653901,
		-0.911269, 0.170558, -0.374833,
		0.390937, 0.644403, -0.657201,
		13.149066, 15.731808, 8.548416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.076992, 15.443321, 8.863308>,  <12.875410, 15.280725, 9.008457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.076992, 15.443321, 8.863308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.946380, 15.469795, 8.486161>,  <11.868012, 15.485680, 8.259873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.946380, 15.469795, 8.486161>,  <12.076992, 15.443321, 8.863308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.946380, 15.469795, 8.486161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945186, 0.023247, -0.325703,
		0.000363, -0.997537, -0.070147,
		-0.326532, 0.066184, -0.942866,
		11.848420, 15.489651, 8.203301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.407154, 15.026585, 8.433567>,  <12.076992, 15.443321, 8.863308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.407154, 15.026585, 8.433567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.311372, 15.295105, 8.152992>,  <12.253902, 15.456217, 7.984647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.311372, 15.295105, 8.152992>,  <12.407154, 15.026585, 8.433567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.311372, 15.295105, 8.152992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892599, -0.132040, -0.431082,
		-0.382004, -0.729329, -0.567585,
		-0.239457, 0.671301, -0.701438,
		12.239534, 15.496495, 7.942561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.525813, 14.754642, 7.793436>,  <12.407154, 15.026585, 8.433567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.525813, 14.754642, 7.793436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586774, 15.148071, 7.754745>,  <12.623350, 15.384129, 7.731531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586774, 15.148071, 7.754745>,  <12.525813, 14.754642, 7.793436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.586774, 15.148071, 7.754745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896993, -0.178745, -0.404294,
		-0.414943, -0.025148, -0.909500,
		0.152402, 0.983574, -0.096726,
		12.632494, 15.443144, 7.725728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823119, 14.761575, 7.183404>,  <12.525813, 14.754642, 7.793436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823119, 14.761575, 7.183404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.914519, 15.092869, 7.388076>,  <12.969359, 15.291645, 7.510879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.914519, 15.092869, 7.388076>,  <12.823119, 14.761575, 7.183404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.914519, 15.092869, 7.388076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972366, -0.220003, -0.078118,
		0.047871, 0.515390, -0.855617,
		0.228499, 0.828234, 0.511680,
		12.983069, 15.341339, 7.541580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.374917, 15.215167, 6.809218>,  <12.823119, 14.761575, 7.183404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.374917, 15.215167, 6.809218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.416286, 15.268307, 7.203508>,  <13.441107, 15.300191, 7.440083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.416286, 15.268307, 7.203508>,  <13.374917, 15.215167, 6.809218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.416286, 15.268307, 7.203508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967026, -0.245320, -0.068396,
		0.232732, 0.960296, -0.153840,
		0.103420, 0.132849, 0.985726,
		13.447311, 15.308162, 7.499226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.082742, 14.983598, 6.892478>,  <13.374917, 15.215167, 6.809218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.082742, 14.983598, 6.892478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.326322, 14.846786, 7.178749>,  <14.472469, 14.764700, 7.350512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.326322, 14.846786, 7.178749>,  <14.082742, 14.983598, 6.892478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.326322, 14.846786, 7.178749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373903, -0.671956, -0.639274,
		0.699554, 0.656881, -0.281303,
		0.608950, -0.342027, 0.715679,
		14.509007, 14.744179, 7.393453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.916574, 15.581456, 6.448743>,  <14.082742, 14.983598, 6.892478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.916574, 15.581456, 6.448743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.563231, 15.677521, 6.287745>,  <13.351226, 15.735160, 6.191145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.563231, 15.677521, 6.287745>,  <13.916574, 15.581456, 6.448743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.563231, 15.677521, 6.287745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465818, 0.354754, -0.810656,
		-0.051902, -0.903588, -0.425246,
		-0.883357, 0.240162, -0.402496,
		13.298224, 15.749569, 6.166996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.861824, 15.087626, 5.917631>,  <13.916574, 15.581456, 6.448743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.861824, 15.087626, 5.917631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.703666, 15.454563, 5.899110>,  <13.608771, 15.674726, 5.887997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.703666, 15.454563, 5.899110>,  <13.861824, 15.087626, 5.917631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.703666, 15.454563, 5.899110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552036, 0.197044, -0.810204,
		-0.734112, -0.345911, -0.584317,
		-0.395395, 0.917344, -0.046302,
		13.585048, 15.729766, 5.885219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.510175, 15.142240, 5.301951>,  <13.861824, 15.087626, 5.917631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.510175, 15.142240, 5.301951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.618119, 15.513206, 5.405546>,  <13.682886, 15.735786, 5.467703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.618119, 15.513206, 5.405546>,  <13.510175, 15.142240, 5.301951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.618119, 15.513206, 5.405546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329182, 0.163903, -0.929933,
		-0.904884, 0.336206, -0.261058,
		0.269861, 0.927416, 0.258987,
		13.699078, 15.791431, 5.483242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.308658, 15.585617, 4.821443>,  <13.510175, 15.142240, 5.301951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.308658, 15.585617, 4.821443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.631383, 15.749176, 4.992021>,  <13.825018, 15.847311, 5.094367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.631383, 15.749176, 4.992021>,  <13.308658, 15.585617, 4.821443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.631383, 15.749176, 4.992021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426181, 0.097089, -0.899413,
		-0.409170, 0.907401, -0.095931,
		0.806814, 0.408897, 0.426444,
		13.873427, 15.871845, 5.119954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.482777, 16.251553, 4.548852>,  <13.308658, 15.585617, 4.821443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.482777, 16.251553, 4.548852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.829017, 16.127872, 4.706400>,  <14.036760, 16.053665, 4.800929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.829017, 16.127872, 4.706400>,  <13.482777, 16.251553, 4.548852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.829017, 16.127872, 4.706400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468988, 0.224979, -0.854069,
		0.175466, 0.924002, 0.339753,
		0.865599, -0.309200, 0.393870,
		14.088696, 16.035112, 4.824561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.949743, 16.784027, 4.479388>,  <13.482777, 16.251553, 4.548852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.949743, 16.784027, 4.479388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.139022, 16.431900, 4.492814>,  <14.252589, 16.220623, 4.500870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.139022, 16.431900, 4.492814>,  <13.949743, 16.784027, 4.479388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.139022, 16.431900, 4.492814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542860, 0.261372, -0.798115,
		0.693822, 0.395886, 0.601570,
		0.473196, -0.880318, 0.033565,
		14.280981, 16.167805, 4.502883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.660793, 16.940788, 4.177342>,  <13.949743, 16.784027, 4.479388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.660793, 16.940788, 4.177342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.548064, 16.560287, 4.127234>,  <14.480427, 16.331987, 4.097170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.548064, 16.560287, 4.127234>,  <14.660793, 16.940788, 4.177342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.548064, 16.560287, 4.127234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413615, -0.002645, -0.910448,
		0.865735, -0.308399, 0.394198,
		-0.281824, -0.951253, -0.125269,
		14.463517, 16.274912, 4.089654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.284028, 16.593708, 4.034795>,  <14.660793, 16.940788, 4.177342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.284028, 16.593708, 4.034795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.972114, 16.380600, 3.903285>,  <14.784965, 16.252735, 3.824379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.972114, 16.380600, 3.903285>,  <15.284028, 16.593708, 4.034795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.972114, 16.380600, 3.903285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370870, 0.029975, -0.928201,
		0.504371, -0.845730, 0.174214,
		-0.779786, -0.532768, -0.328774,
		14.738178, 16.220770, 3.804653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.600390, 16.003223, 3.621386>,  <15.284028, 16.593708, 4.034795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.600390, 16.003223, 3.621386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.229173, 16.098755, 3.507057>,  <15.006442, 16.156075, 3.438459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.229173, 16.098755, 3.507057>,  <15.600390, 16.003223, 3.621386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.229173, 16.098755, 3.507057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327410, 0.157205, -0.931713,
		-0.177588, -0.958252, -0.224089,
		-0.928044, 0.238829, -0.285824,
		14.950760, 16.170404, 3.421310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.341137, 15.548855, 3.175311>,  <15.600390, 16.003223, 3.621386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.341137, 15.548855, 3.175311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.128434, 15.879498, 3.101605>,  <15.000813, 16.077883, 3.057381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.128434, 15.879498, 3.101605>,  <15.341137, 15.548855, 3.175311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.128434, 15.879498, 3.101605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241299, -0.060680, -0.968552,
		-0.811794, -0.559497, -0.167193,
		-0.531757, 0.826608, -0.184266,
		14.968907, 16.127480, 3.046325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.879888, 15.409907, 2.586705>,  <15.341137, 15.548855, 3.175311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.879888, 15.409907, 2.586705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.980010, 15.795712, 2.620333>,  <15.040084, 16.027193, 2.640511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.980010, 15.795712, 2.620333>,  <14.879888, 15.409907, 2.586705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.980010, 15.795712, 2.620333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269932, 0.013868, -0.962779,
		-0.929776, 0.263684, -0.256881,
		0.250307, 0.964510, 0.084071,
		15.055102, 16.085064, 2.645555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.597734, 15.932534, 2.005482>,  <14.879888, 15.409907, 2.586705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.597734, 15.932534, 2.005482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.930062, 16.089149, 2.163691>,  <15.129458, 16.183119, 2.258616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.930062, 16.089149, 2.163691>,  <14.597734, 15.932534, 2.005482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.930062, 16.089149, 2.163691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395467, 0.084715, -0.914565,
		-0.391594, 0.916254, -0.084458,
		0.830819, 0.391539, 0.395522,
		15.179308, 16.206612, 2.282347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.626458, 16.644892, 1.784862>,  <14.597734, 15.932534, 2.005482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.626458, 16.644892, 1.784862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.968064, 16.450359, 1.858768>,  <15.173028, 16.333639, 1.903111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.968064, 16.450359, 1.858768>,  <14.626458, 16.644892, 1.784862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.968064, 16.450359, 1.858768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281827, 0.133953, -0.950068,
		0.437300, 0.863445, 0.251460,
		0.854015, -0.486333, 0.184764,
		15.224269, 16.304459, 1.914197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.032020, 16.926685, 1.268793>,  <14.626458, 16.644892, 1.784862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.032020, 16.926685, 1.268793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.271174, 16.648960, 1.429024>,  <15.414667, 16.482325, 1.525163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.271174, 16.648960, 1.429024>,  <15.032020, 16.926685, 1.268793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.271174, 16.648960, 1.429024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566249, 0.012126, -0.824145,
		0.567356, 0.719573, 0.400402,
		0.597888, -0.694311, 0.400578,
		15.450541, 16.440666, 1.549197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680000, 17.174145, 1.196678>,  <15.032020, 16.926685, 1.268793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.680000, 17.174145, 1.196678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.689919, 16.775776, 1.231380>,  <15.695870, 16.536755, 1.252201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.689919, 16.775776, 1.231380>,  <15.680000, 17.174145, 1.196678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.689919, 16.775776, 1.231380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327815, -0.073883, -0.941848,
		0.944416, 0.051794, 0.324646,
		0.024797, -0.995921, 0.086755,
		15.697358, 16.476999, 1.257407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.762097, 17.830063, 0.922876>,  <15.680000, 17.174145, 1.196678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.762097, 17.830063, 0.922876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.706201, 17.562904, 0.630470>,  <15.672663, 17.402609, 0.455026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.706201, 17.562904, 0.630470>,  <15.762097, 17.830063, 0.922876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.706201, 17.562904, 0.630470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029459, 0.735129, -0.677287,
		0.989750, -0.116181, -0.083054,
		-0.139743, -0.667898, -0.731016,
		15.664278, 17.362535, 0.411165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.214828, 17.991976, 0.367078>,  <15.762097, 17.830063, 0.922876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.214828, 17.991976, 0.367078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.899732, 17.801765, 0.210446>,  <15.710673, 17.687639, 0.116467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.899732, 17.801765, 0.210446>,  <16.214828, 17.991976, 0.367078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.899732, 17.801765, 0.210446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133745, 0.752545, -0.644816,
		0.601307, -0.455579, -0.656413,
		-0.787745, -0.475525, -0.391579,
		15.663408, 17.659107, 0.092972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.249048, 17.986713, -0.468947>,  <16.214828, 17.991976, 0.367078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.249048, 17.986713, -0.468947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.897901, 17.971199, -0.278016>,  <15.687212, 17.961889, -0.163458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.897901, 17.971199, -0.278016>,  <16.249048, 17.986713, -0.468947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.897901, 17.971199, -0.278016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205693, 0.930633, -0.302674,
		-0.432477, -0.363891, -0.824953,
		-0.877869, -0.038787, 0.477327,
		15.634540, 17.959562, -0.134818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.985418, 18.555626, -0.116413>,  <16.249048, 17.986713, -0.468947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.985418, 18.555626, -0.116413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.602561, 18.568504, -0.001284>,  <15.372847, 18.576231, 0.067793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.602561, 18.568504, -0.001284>,  <15.985418, 18.555626, -0.116413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.602561, 18.568504, -0.001284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067172, 0.991382, 0.112474,
		-0.281719, 0.126987, -0.951057,
		-0.957143, 0.032198, 0.287821,
		15.315418, 18.578163, 0.085062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.670192, 19.250019, -0.395002>,  <15.985418, 18.555626, -0.116413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.670192, 19.250019, -0.395002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.480697, 19.114819, -0.069714>,  <15.367000, 19.033697, 0.125459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.480697, 19.114819, -0.069714>,  <15.670192, 19.250019, -0.395002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.480697, 19.114819, -0.069714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061678, 0.933882, 0.352223,
		-0.878504, 0.116703, -0.463262,
		-0.473737, -0.338002, 0.813221,
		15.338575, 19.013418, 0.174252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.135581, 19.751804, -0.116348>,  <15.670192, 19.250019, -0.395002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.135581, 19.751804, -0.116348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.196124, 19.572247, 0.235922>,  <15.232450, 19.464512, 0.447284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.196124, 19.572247, 0.235922>,  <15.135581, 19.751804, -0.116348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196124, 19.572247, 0.235922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055197, 0.885710, 0.460946,
		-0.986937, -0.118378, 0.109282,
		0.151358, -0.448893, 0.880673,
		15.241531, 19.437578, 0.500124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.495148, 19.872120, -0.569181>,  <15.135581, 19.751804, -0.116348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.495148, 19.872120, -0.569181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.192616, 20.102547, -0.693190>,  <14.011098, 20.240803, -0.767596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.192616, 20.102547, -0.693190>,  <14.495148, 19.872120, -0.569181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.192616, 20.102547, -0.693190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488531, 0.182169, -0.853318,
		-0.435092, -0.796844, -0.419207,
		-0.756328, 0.576068, -0.310023,
		13.965718, 20.275368, -0.786197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.232407, 19.574219, -1.237674>,  <14.495148, 19.872120, -0.569181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.232407, 19.574219, -1.237674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.160508, 19.967491, -1.224755>,  <14.117369, 20.203455, -1.217003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.160508, 19.967491, -1.224755>,  <14.232407, 19.574219, -1.237674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.160508, 19.967491, -1.224755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598164, 0.135305, -0.789869,
		-0.780955, -0.122656, -0.612425,
		-0.179746, 0.983183, 0.032299,
		14.106585, 20.262445, -1.215065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.867919, 19.887815, -1.705310>,  <14.232407, 19.574219, -1.237674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.867919, 19.887815, -1.705310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.162545, 20.154755, -1.661275>,  <14.339321, 20.314919, -1.634854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.162545, 20.154755, -1.661275>,  <13.867919, 19.887815, -1.705310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.162545, 20.154755, -1.661275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194324, -0.052896, -0.979510,
		-0.647850, 0.742866, -0.168643,
		0.736565, 0.667347, 0.110088,
		14.383514, 20.354959, -1.628249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<21.003155, 18.733614, 16.363811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.280781, 18.955738, 16.180552>,  <21.447357, 19.089012, 16.070595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.280781, 18.955738, 16.180552>,  <21.003155, 18.733614, 16.363811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.280781, 18.955738, 16.180552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381532, -0.255941, -0.888216,
		-0.610495, 0.791280, 0.034228,
		0.694067, 0.555311, -0.458149,
		21.489000, 19.122332, 16.043106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.671627, 19.192240, 15.824172>,  <21.003155, 18.733614, 16.363811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.671627, 19.192240, 15.824172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.049568, 19.152397, 15.699380>,  <21.276333, 19.128492, 15.624505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.049568, 19.152397, 15.699380>,  <20.671627, 19.192240, 15.824172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.049568, 19.152397, 15.699380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327492, -0.290812, -0.898987,
		-0.001183, 0.951581, -0.307395,
		0.944853, -0.099606, -0.311979,
		21.333025, 19.122515, 15.605786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.688353, 19.532270, 15.140755>,  <20.671627, 19.192240, 15.824172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.688353, 19.532270, 15.140755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.990208, 19.269814, 15.140794>,  <21.171322, 19.112339, 15.140818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.990208, 19.269814, 15.140794>,  <20.688353, 19.532270, 15.140755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.990208, 19.269814, 15.140794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186081, -0.214159, -0.958911,
		0.629201, 0.723613, -0.283708,
		0.754639, -0.656141, 0.000099,
		21.216599, 19.072971, 15.140823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.019699, 19.632261, 14.564554>,  <20.688353, 19.532270, 15.140755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.019699, 19.632261, 14.564554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.126820, 19.261837, 14.670907>,  <21.191092, 19.039583, 14.734718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.126820, 19.261837, 14.670907>,  <21.019699, 19.632261, 14.564554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.126820, 19.261837, 14.670907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289667, -0.340582, -0.894481,
		0.918899, 0.162526, -0.359458,
		0.267801, -0.926061, 0.265882,
		21.207159, 18.984018, 14.750671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.258814, 19.272003, 13.945275>,  <21.019699, 19.632261, 14.564554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.258814, 19.272003, 13.945275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.197235, 18.976604, 14.207854>,  <21.160288, 18.799366, 14.365402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.197235, 18.976604, 14.207854>,  <21.258814, 19.272003, 13.945275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.197235, 18.976604, 14.207854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424163, -0.550644, -0.718941,
		0.892404, -0.389121, -0.228472,
		-0.153948, -0.738496, 0.656448,
		21.151051, 18.755056, 14.404789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.500811, 18.616272, 13.627746>,  <21.258814, 19.272003, 13.945275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.500811, 18.616272, 13.627746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.249264, 18.506104, 13.918584>,  <21.098335, 18.440002, 14.093086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.249264, 18.506104, 13.918584>,  <21.500811, 18.616272, 13.627746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.249264, 18.506104, 13.918584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452959, -0.630294, -0.630522,
		0.631943, -0.725860, 0.271616,
		-0.628869, -0.275423, 0.727094,
		21.060604, 18.423477, 14.136712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.473793, 17.833282, 13.688663>,  <21.500811, 18.616272, 13.627746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.473793, 17.833282, 13.688663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.135944, 17.968742, 13.854522>,  <20.933235, 18.050018, 13.954037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.135944, 17.968742, 13.854522>,  <21.473793, 17.833282, 13.688663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.135944, 17.968742, 13.854522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533935, -0.589414, -0.606221,
		0.039102, -0.733422, 0.678648,
		-0.844621, 0.338650, 0.414647,
		20.882559, 18.070337, 13.978916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.114367, 17.251575, 13.527838>,  <21.473793, 17.833282, 13.688663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.114367, 17.251575, 13.527838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.851517, 17.529251, 13.645337>,  <20.693808, 17.695856, 13.715837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.851517, 17.529251, 13.645337>,  <21.114367, 17.251575, 13.527838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.851517, 17.529251, 13.645337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705453, -0.429080, -0.564115,
		-0.265560, -0.577921, 0.771677,
		-0.657125, 0.694188, 0.293750,
		20.654379, 17.737509, 13.733461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.521843, 16.938005, 13.607808>,  <21.114367, 17.251575, 13.527838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.521843, 16.938005, 13.607808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.375130, 17.308296, 13.570920>,  <20.287102, 17.530470, 13.548787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.375130, 17.308296, 13.570920>,  <20.521843, 16.938005, 13.607808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.375130, 17.308296, 13.570920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725097, -0.346572, -0.595082,
		-0.582843, -0.151397, 0.798356,
		-0.366781, 0.925725, -0.092220,
		20.265095, 17.586014, 13.543254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.814480, 16.882053, 13.848353>,  <20.521843, 16.938005, 13.607808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.814480, 16.882053, 13.848353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.866989, 17.203087, 13.615586>,  <19.898495, 17.395706, 13.475926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.866989, 17.203087, 13.615586>,  <19.814480, 16.882053, 13.848353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.866989, 17.203087, 13.615586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658255, -0.368348, -0.656521,
		-0.741261, 0.469234, 0.479950,
		0.131274, 0.802583, -0.581917,
		19.906372, 17.443861, 13.441011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.127462, 17.028187, 13.662451>,  <19.814480, 16.882053, 13.848353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.127462, 17.028187, 13.662451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.342453, 17.229710, 13.391955>,  <19.471447, 17.350622, 13.229658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.342453, 17.229710, 13.391955>,  <19.127462, 17.028187, 13.662451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.342453, 17.229710, 13.391955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633805, -0.287620, -0.718030,
		-0.556247, 0.814527, 0.164726,
		0.537477, 0.503806, -0.676239,
		19.503696, 17.380852, 13.189084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568878, 17.126122, 13.206189>,  <19.127462, 17.028187, 13.662451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.568878, 17.126122, 13.206189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.891006, 17.226143, 12.991180>,  <19.084284, 17.286156, 12.862175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.891006, 17.226143, 12.991180>,  <18.568878, 17.126122, 13.206189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.891006, 17.226143, 12.991180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449001, -0.334787, -0.828442,
		-0.387111, 0.908510, -0.157336,
		0.805322, 0.250055, -0.537521,
		19.132603, 17.301159, 12.829924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.328930, 17.507158, 12.618773>,  <18.568878, 17.126122, 13.206189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.328930, 17.507158, 12.618773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.674129, 17.327911, 12.525456>,  <18.881248, 17.220364, 12.469467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.674129, 17.327911, 12.525456>,  <18.328930, 17.507158, 12.618773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.674129, 17.327911, 12.525456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433735, -0.420413, -0.796948,
		0.259047, 0.788952, -0.557180,
		0.862999, -0.448116, -0.233289,
		18.933029, 17.193476, 12.455470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.464691, 17.595543, 11.901475>,  <18.328930, 17.507158, 12.618773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.464691, 17.595543, 11.901475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.664600, 17.266018, 12.008476>,  <18.784546, 17.068302, 12.072678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.664600, 17.266018, 12.008476>,  <18.464691, 17.595543, 11.901475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.664600, 17.266018, 12.008476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382859, -0.487141, -0.784928,
		0.776948, 0.289869, -0.558864,
		0.499772, -0.823814, 0.267504,
		18.814531, 17.018873, 12.088728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.818342, 17.409525, 11.306757>,  <18.464691, 17.595543, 11.901475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.818342, 17.409525, 11.306757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.778748, 17.084335, 11.536286>,  <18.754992, 16.889221, 11.674004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.778748, 17.084335, 11.536286>,  <18.818342, 17.409525, 11.306757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.778748, 17.084335, 11.536286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363702, -0.507200, -0.781326,
		0.926241, -0.286041, -0.245474,
		-0.098987, -0.812975, 0.573823,
		18.749052, 16.840443, 11.708433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.988270, 16.845310, 10.884882>,  <18.818342, 17.409525, 11.306757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.988270, 16.845310, 10.884882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.805656, 16.660442, 11.188981>,  <18.696089, 16.549520, 11.371440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.805656, 16.660442, 11.188981>,  <18.988270, 16.845310, 10.884882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.805656, 16.660442, 11.188981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456069, -0.612121, -0.645995,
		0.763923, -0.641643, 0.068672,
		-0.456533, -0.462171, 0.760247,
		18.668695, 16.521791, 11.417055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.890722, 16.201136, 10.635200>,  <18.988270, 16.845310, 10.884882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.890722, 16.201136, 10.635200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.677433, 16.160679, 10.971162>,  <18.549459, 16.136406, 11.172739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.677433, 16.160679, 10.971162>,  <18.890722, 16.201136, 10.635200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.677433, 16.160679, 10.971162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491836, -0.770731, -0.405057,
		0.688310, -0.629082, 0.361228,
		-0.533224, -0.101140, 0.839907,
		18.517466, 16.130337, 11.223134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.905434, 15.494771, 10.709709>,  <18.890722, 16.201136, 10.635200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.905434, 15.494771, 10.709709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.577267, 15.660954, 10.866838>,  <18.380365, 15.760663, 10.961115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.577267, 15.660954, 10.866838>,  <18.905434, 15.494771, 10.709709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.577267, 15.660954, 10.866838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571446, -0.618676, -0.539156,
		0.019033, -0.666810, 0.744985,
		-0.820419, 0.415456, 0.392821,
		18.331141, 15.785590, 10.984684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.379364, 14.981123, 10.818601>,  <18.905434, 15.494771, 10.709709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.379364, 14.981123, 10.818601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.146877, 15.306618, 10.820442>,  <18.007385, 15.501915, 10.821548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.146877, 15.306618, 10.820442>,  <18.379364, 14.981123, 10.818601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.146877, 15.306618, 10.820442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675632, -0.479405, -0.560082,
		-0.453551, -0.328642, 0.828424,
		-0.581217, 0.813736, 0.004607,
		17.972513, 15.550739, 10.821824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.762672, 14.739416, 10.923163>,  <18.379364, 14.981123, 10.818601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.762672, 14.739416, 10.923163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.622139, 15.088997, 10.788837>,  <17.537819, 15.298745, 10.708241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.622139, 15.088997, 10.788837>,  <17.762672, 14.739416, 10.923163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.622139, 15.088997, 10.788837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733693, -0.479817, -0.481113,
		-0.581600, 0.077354, 0.809789,
		-0.351335, 0.873952, -0.335816,
		17.516739, 15.351183, 10.688093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035391, 14.893153, 11.244000>,  <17.762672, 14.739416, 10.923163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035391, 14.893153, 11.244000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.037476, 15.106602, 10.905718>,  <17.038727, 15.234671, 10.702748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.037476, 15.106602, 10.905718>,  <17.035391, 14.893153, 11.244000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.037476, 15.106602, 10.905718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838689, -0.458241, -0.294306,
		-0.544586, 0.710819, 0.445154,
		0.005210, 0.533621, -0.845708,
		17.039038, 15.266688, 10.652005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.327801, 14.914152, 11.135553>,  <17.035391, 14.893153, 11.244000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.327801, 14.914152, 11.135553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.474030, 15.056458, 10.791510>,  <16.561768, 15.141841, 10.585083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.474030, 15.056458, 10.791510>,  <16.327801, 14.914152, 11.135553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474030, 15.056458, 10.791510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715526, -0.483590, -0.504146,
		-0.595297, 0.799734, 0.077770,
		0.365574, 0.355763, -0.860110,
		16.583702, 15.163186, 10.533477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.677288, 14.982420, 10.708973>,  <16.327801, 14.914152, 11.135553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.677288, 14.982420, 10.708973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.348588, 14.995869, 10.936516>,  <15.151368, 15.003938, 11.073042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.348588, 14.995869, 10.936516>,  <15.677288, 14.982420, 10.708973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.348588, 14.995869, 10.936516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413210, 0.722580, 0.554198,
		-0.392411, 0.690469, -0.607673,
		-0.821749, 0.033623, 0.568857,
		15.102063, 15.005956, 11.107173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.596449, 15.678406, 10.837181>,  <15.677288, 14.982420, 10.708973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.596449, 15.678406, 10.837181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.388593, 15.504463, 11.131357>,  <15.263879, 15.400098, 11.307863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.388593, 15.504463, 11.131357>,  <15.596449, 15.678406, 10.837181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.388593, 15.504463, 11.131357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446138, 0.596004, 0.667637,
		-0.728653, 0.675039, -0.115701,
		-0.519640, -0.434857, 0.735441,
		15.232700, 15.374006, 11.351990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433192, 16.238712, 11.227816>,  <15.596449, 15.678406, 10.837181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.433192, 16.238712, 11.227816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.373765, 15.923206, 11.466405>,  <15.338108, 15.733903, 11.609558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.373765, 15.923206, 11.466405>,  <15.433192, 16.238712, 11.227816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.373765, 15.923206, 11.466405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204657, 0.565584, 0.798893,
		-0.967493, 0.240763, 0.077398,
		-0.148569, -0.788764, 0.596472,
		15.329194, 15.686577, 11.645347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.073783, 16.518515, 11.747856>,  <15.433192, 16.238712, 11.227816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.073783, 16.518515, 11.747856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.231769, 16.178135, 11.886356>,  <15.326560, 15.973907, 11.969457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.231769, 16.178135, 11.886356>,  <15.073783, 16.518515, 11.747856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.231769, 16.178135, 11.886356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256164, 0.463952, 0.848015,
		-0.882261, -0.246238, 0.401227,
		0.394964, -0.850950, 0.346250,
		15.350258, 15.922850, 11.990232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896685, 16.473532, 12.406239>,  <15.073783, 16.518515, 11.747856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896685, 16.473532, 12.406239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.204247, 16.218952, 12.381856>,  <15.388785, 16.066204, 12.367227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.204247, 16.218952, 12.381856>,  <14.896685, 16.473532, 12.406239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.204247, 16.218952, 12.381856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351025, 0.340542, 0.872246,
		-0.534380, -0.692074, 0.485254,
		0.768908, -0.636447, -0.060956,
		15.434920, 16.028019, 12.363569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.790833, 16.192636, 13.106335>,  <14.896685, 16.473532, 12.406239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.790833, 16.192636, 13.106335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.157807, 16.151123, 12.952689>,  <15.377992, 16.126215, 12.860502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.157807, 16.151123, 12.952689>,  <14.790833, 16.192636, 13.106335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.157807, 16.151123, 12.952689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389947, 0.426427, 0.816150,
		0.079094, -0.898548, 0.431689,
		0.917434, -0.103783, -0.384114,
		15.433038, 16.119987, 12.837455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.317849, 15.887590, 13.618250>,  <14.790833, 16.192636, 13.106335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.317849, 15.887590, 13.618250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.575543, 16.063206, 13.367745>,  <15.730160, 16.168575, 13.217443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.575543, 16.063206, 13.367745>,  <15.317849, 15.887590, 13.618250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575543, 16.063206, 13.367745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501820, 0.375288, 0.779317,
		0.577180, -0.816335, 0.021455,
		0.644236, 0.439040, -0.626262,
		15.768814, 16.194918, 13.179867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849581, 15.797075, 13.996656>,  <15.317849, 15.887590, 13.618250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.849581, 15.797075, 13.996656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.966731, 16.075321, 13.734254>,  <16.037022, 16.242270, 13.576813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.966731, 16.075321, 13.734254>,  <15.849581, 15.797075, 13.996656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.966731, 16.075321, 13.734254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612630, 0.390239, 0.687312,
		0.734104, -0.603186, -0.311864,
		0.292875, 0.695615, -0.656006,
		16.054594, 16.284006, 13.537452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449295, 15.975814, 14.234584>,  <15.849581, 15.797075, 13.996656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.449295, 15.975814, 14.234584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.357761, 16.278378, 13.989478>,  <16.302841, 16.459915, 13.842415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.357761, 16.278378, 13.989478>,  <16.449295, 15.975814, 14.234584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.357761, 16.278378, 13.989478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494803, 0.632468, 0.595948,
		0.838335, -0.166825, -0.519004,
		-0.228834, 0.756409, -0.612765,
		16.289112, 16.505301, 13.805649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.089579, 16.303419, 14.181315>,  <16.449295, 15.975814, 14.234584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.089579, 16.303419, 14.181315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.794365, 16.558773, 14.093888>,  <16.617237, 16.711985, 14.041432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.794365, 16.558773, 14.093888>,  <17.089579, 16.303419, 14.181315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.794365, 16.558773, 14.093888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338327, 0.630357, 0.698702,
		0.583816, 0.441719, -0.681207,
		-0.738034, 0.638384, -0.218567,
		16.572954, 16.750288, 14.028318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404383, 16.940039, 14.036157>,  <17.089579, 16.303419, 14.181315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.404383, 16.940039, 14.036157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.027172, 17.012402, 14.147849>,  <16.800846, 17.055820, 14.214865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.027172, 17.012402, 14.147849>,  <17.404383, 16.940039, 14.036157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.027172, 17.012402, 14.147849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325457, 0.675907, 0.661232,
		-0.069112, 0.714438, -0.696277,
		-0.943028, 0.180909, 0.279232,
		16.744265, 17.066675, 14.231619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.318451, 17.711880, 14.032664>,  <17.404383, 16.940039, 14.036157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.318451, 17.711880, 14.032664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.020561, 17.565632, 14.255986>,  <16.841827, 17.477882, 14.389979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.020561, 17.565632, 14.255986>,  <17.318451, 17.711880, 14.032664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.020561, 17.565632, 14.255986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142978, 0.729741, 0.668608,
		-0.651874, 0.577755, -0.491181,
		-0.744726, -0.365620, 0.558306,
		16.797144, 17.455946, 14.423478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037054, 18.294987, 14.355769>,  <17.318451, 17.711880, 14.032664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.037054, 18.294987, 14.355769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.947102, 17.970978, 14.572394>,  <16.893129, 17.776571, 14.702370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.947102, 17.970978, 14.572394>,  <17.037054, 18.294987, 14.355769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.947102, 17.970978, 14.572394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179103, 0.511965, 0.840127,
		-0.957784, 0.285924, 0.029946,
		-0.224881, -0.810024, 0.541562,
		16.879637, 17.727970, 14.734863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537172, 18.516020, 14.890550>,  <17.037054, 18.294987, 14.355769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.537172, 18.516020, 14.890550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.701862, 18.179611, 15.030929>,  <16.800676, 17.977766, 15.115156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.701862, 18.179611, 15.030929>,  <16.537172, 18.516020, 14.890550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.701862, 18.179611, 15.030929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459873, 0.524217, 0.716738,
		-0.786765, -0.133708, 0.602597,
		0.411725, -0.841022, 0.350947,
		16.825380, 17.927305, 15.136212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.500486, 18.644783, 15.571164>,  <16.537172, 18.516020, 14.890550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.500486, 18.644783, 15.571164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.742424, 18.326260, 15.568019>,  <16.887587, 18.135145, 15.566132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.742424, 18.326260, 15.568019>,  <16.500486, 18.644783, 15.571164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742424, 18.326260, 15.568019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457435, 0.339333, 0.821953,
		-0.651858, -0.500748, 0.569502,
		0.604842, -0.796307, -0.007863,
		16.923876, 18.087368, 15.565660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.411652, 18.337891, 16.216805>,  <16.500486, 18.644783, 15.571164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.411652, 18.337891, 16.216805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.768650, 18.240753, 16.064762>,  <16.982849, 18.182470, 15.973536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.768650, 18.240753, 16.064762>,  <16.411652, 18.337891, 16.216805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.768650, 18.240753, 16.064762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438082, 0.266005, 0.858677,
		-0.107414, -0.932882, 0.343793,
		0.892494, -0.242844, -0.380106,
		17.036398, 18.167900, 15.950730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.702574, 18.157864, 16.810333>,  <16.411652, 18.337891, 16.216805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.702574, 18.157864, 16.810333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.001930, 18.180183, 16.545971>,  <17.181545, 18.193575, 16.387354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.001930, 18.180183, 16.545971>,  <16.702574, 18.157864, 16.810333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.001930, 18.180183, 16.545971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637337, 0.215342, 0.739885,
		0.183608, -0.974943, 0.125595,
		0.748391, 0.055802, -0.660906,
		17.226448, 18.196924, 16.347700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.248621, 17.781048, 17.171858>,  <16.702574, 18.157864, 16.810333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.248621, 17.781048, 17.171858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.413887, 18.006191, 16.885506>,  <17.513046, 18.141277, 16.713696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.413887, 18.006191, 16.885506>,  <17.248621, 17.781048, 17.171858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.413887, 18.006191, 16.885506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614596, 0.407735, 0.675295,
		0.671986, -0.718985, -0.177469,
		0.413167, 0.562860, -0.715878,
		17.537838, 18.175049, 16.670742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.971321, 17.555635, 16.510593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.691654, 17.840420, 16.484432>,  <18.523853, 18.011290, 16.468737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.691654, 17.840420, 16.484432>,  <18.971321, 17.555635, 16.510593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.691654, 17.840420, 16.484432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582204, 0.620053, 0.525902,
		0.414974, 0.329616, -0.848027,
		-0.699168, 0.711960, -0.065402,
		18.481903, 18.054008, 16.464811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.349604, 18.108107, 16.227922>,  <18.971321, 17.555635, 16.510593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.349604, 18.108107, 16.227922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.019245, 18.232716, 16.415901>,  <18.821030, 18.307482, 16.528688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.019245, 18.232716, 16.415901>,  <19.349604, 18.108107, 16.227922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.019245, 18.232716, 16.415901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532501, 0.704916, 0.468548,
		-0.185308, 0.637218, -0.748074,
		-0.825896, 0.311524, 0.469945,
		18.771477, 18.326172, 16.556885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.494211, 18.846216, 16.210775>,  <19.349604, 18.108107, 16.227922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.494211, 18.846216, 16.210775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.215973, 18.783184, 16.491152>,  <19.049030, 18.745365, 16.659378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.215973, 18.783184, 16.491152>,  <19.494211, 18.846216, 16.210775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.215973, 18.783184, 16.491152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323668, 0.802291, 0.501565,
		-0.641393, 0.575758, -0.507067,
		-0.695596, -0.157579, 0.700939,
		19.007294, 18.735910, 16.701433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.343304, 19.553102, 16.465567>,  <19.494211, 18.846216, 16.210775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.343304, 19.553102, 16.465567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.225460, 19.304070, 16.755560>,  <19.154755, 19.154650, 16.929556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.225460, 19.304070, 16.755560>,  <19.343304, 19.553102, 16.465567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.225460, 19.304070, 16.755560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349669, 0.635809, 0.688097,
		-0.889347, 0.456223, 0.030384,
		-0.294607, -0.622581, 0.724982,
		19.137077, 19.117294, 16.973055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.216688, 19.916042, 17.057728>,  <19.343304, 19.553102, 16.465567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.216688, 19.916042, 17.057728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.255356, 19.567532, 17.250196>,  <19.278557, 19.358425, 17.365679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.255356, 19.567532, 17.250196>,  <19.216688, 19.916042, 17.057728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.255356, 19.567532, 17.250196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369308, 0.480326, 0.795550,
		-0.924266, 0.100796, 0.368203,
		0.096669, -0.871279, 0.481173,
		19.284357, 19.306149, 17.394548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.110971, 20.109434, 17.813807>,  <19.216688, 19.916042, 17.057728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.110971, 20.109434, 17.813807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.283920, 19.748829, 17.806593>,  <19.387690, 19.532465, 17.802265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.283920, 19.748829, 17.806593>,  <19.110971, 20.109434, 17.813807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.283920, 19.748829, 17.806593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482135, 0.214242, 0.849498,
		-0.761971, -0.375995, 0.527284,
		0.432373, -0.901514, -0.018034,
		19.413631, 19.478374, 17.801182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.081966, 19.805874, 18.541397>,  <19.110971, 20.109434, 17.813807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.081966, 19.805874, 18.541397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.385113, 19.637592, 18.341940>,  <19.567001, 19.536623, 18.222265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.385113, 19.637592, 18.341940>,  <19.081966, 19.805874, 18.541397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.385113, 19.637592, 18.341940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596754, 0.138118, 0.790448,
		-0.263674, -0.896622, 0.355733,
		0.757866, -0.420706, -0.498644,
		19.612473, 19.511381, 18.192347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.433367, 19.450380, 19.018829>,  <19.081966, 19.805874, 18.541397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.433367, 19.450380, 19.018829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.700287, 19.499569, 18.725002>,  <19.860439, 19.529081, 18.548706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.700287, 19.499569, 18.725002>,  <19.433367, 19.450380, 19.018829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.700287, 19.499569, 18.725002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652663, 0.378593, 0.656276,
		0.358805, -0.917358, 0.172376,
		0.667301, 0.122972, -0.734567,
		19.900476, 19.536461, 18.504633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.938648, 19.089973, 19.148046>,  <19.433367, 19.450380, 19.018829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.938648, 19.089973, 19.148046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.120701, 19.348759, 18.903328>,  <20.229933, 19.504030, 18.756496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.120701, 19.348759, 18.903328>,  <19.938648, 19.089973, 19.148046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.120701, 19.348759, 18.903328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542546, 0.343319, 0.766666,
		0.706046, -0.680861, -0.194752,
		0.455131, 0.646963, -0.611797,
		20.257240, 19.542847, 18.719790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.675617, 19.019001, 19.222204>,  <19.938648, 19.089973, 19.148046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.675617, 19.019001, 19.222204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.637253, 19.383118, 19.061123>,  <20.614233, 19.601587, 18.964474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.637253, 19.383118, 19.061123>,  <20.675617, 19.019001, 19.222204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.637253, 19.383118, 19.061123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661354, 0.360635, 0.657688,
		0.743917, -0.203247, -0.636615,
		-0.095913, 0.910293, -0.402701,
		20.608479, 19.656206, 18.940313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.398890, 19.326042, 19.151793>,  <20.675617, 19.019001, 19.222204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.398890, 19.326042, 19.151793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.141209, 19.631618, 19.136827>,  <20.986601, 19.814964, 19.127850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.141209, 19.631618, 19.136827>,  <21.398890, 19.326042, 19.151793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.141209, 19.631618, 19.136827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614450, 0.546031, 0.569474,
		0.455472, 0.343869, -0.821158,
		-0.644202, 0.763940, -0.037412,
		20.947948, 19.860800, 19.125605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.871891, 19.823467, 18.979120>,  <21.398890, 19.326042, 19.151793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.871891, 19.823467, 18.979120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.553337, 19.993759, 19.150946>,  <21.362204, 20.095934, 19.254042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.553337, 19.993759, 19.150946>,  <21.871891, 19.823467, 18.979120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.553337, 19.993759, 19.150946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595209, 0.425807, 0.681479,
		0.107213, 0.798401, -0.592504,
		-0.796386, 0.425727, 0.429564,
		21.314421, 20.121477, 19.279816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.065302, 20.510778, 19.159826>,  <21.871891, 19.823467, 18.979120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.065302, 20.510778, 19.159826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.726917, 20.485889, 19.371668>,  <21.523888, 20.470955, 19.498774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.726917, 20.485889, 19.371668>,  <22.065302, 20.510778, 19.159826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.726917, 20.485889, 19.371668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448895, 0.452979, 0.770262,
		-0.287828, 0.889347, -0.355270,
		-0.845960, -0.062224, 0.529604,
		21.473129, 20.467222, 19.530548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.907696, 21.231979, 19.385973>,  <22.065302, 20.510778, 19.159826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.907696, 21.231979, 19.385973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.713417, 20.978767, 19.627094>,  <21.596849, 20.826841, 19.771767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.713417, 20.978767, 19.627094>,  <21.907696, 21.231979, 19.385973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.713417, 20.978767, 19.627094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347363, 0.493046, 0.797650,
		-0.802145, 0.596809, -0.019581,
		-0.485698, -0.633029, 0.602803,
		21.567707, 20.788858, 19.807936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.560989, 21.704166, 19.738159>,  <21.907696, 21.231979, 19.385973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.560989, 21.704166, 19.738159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.595360, 21.355190, 19.930601>,  <21.615982, 21.145805, 20.046066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.595360, 21.355190, 19.930601>,  <21.560989, 21.704166, 19.738159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.595360, 21.355190, 19.930601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357737, 0.477708, 0.802384,
		-0.929861, 0.103162, 0.353153,
		0.085928, -0.872441, 0.481106,
		21.621138, 21.093458, 20.074932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.133240, 21.774727, 20.348143>,  <21.560989, 21.704166, 19.738159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.133240, 21.774727, 20.348143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.408886, 21.489498, 20.399752>,  <21.574274, 21.318361, 20.430717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.408886, 21.489498, 20.399752>,  <21.133240, 21.774727, 20.348143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.408886, 21.489498, 20.399752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286395, 0.431552, 0.855418,
		-0.665656, -0.552530, 0.501609,
		0.689115, -0.713073, 0.129023,
		21.615620, 21.275576, 20.438459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.095482, 21.711105, 21.005619>,  <21.133240, 21.774727, 20.348143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.095482, 21.711105, 21.005619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.449482, 21.552551, 20.907927>,  <21.661882, 21.457418, 20.849310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.449482, 21.552551, 20.907927>,  <21.095482, 21.711105, 21.005619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.449482, 21.552551, 20.907927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369025, 0.277343, 0.887075,
		-0.283889, -0.875190, 0.391726,
		0.885002, -0.396387, -0.244232,
		21.714983, 21.433636, 20.834658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.250633, 21.346594, 21.541393>,  <21.095482, 21.711105, 21.005619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.250633, 21.346594, 21.541393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.590405, 21.401703, 21.337633>,  <21.794268, 21.434769, 21.215378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.590405, 21.401703, 21.337633>,  <21.250633, 21.346594, 21.541393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.590405, 21.401703, 21.337633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433635, 0.367856, 0.822583,
		0.300714, -0.919620, 0.252725,
		0.849430, 0.137772, -0.509399,
		21.845234, 21.443035, 21.184814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.762375, 21.065828, 21.975569>,  <21.250633, 21.346594, 21.541393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.762375, 21.065828, 21.975569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.929733, 21.334213, 21.730701>,  <22.030149, 21.495245, 21.583780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.929733, 21.334213, 21.730701>,  <21.762375, 21.065828, 21.975569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.929733, 21.334213, 21.730701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480760, 0.408233, 0.776026,
		0.770593, -0.618994, -0.151768,
		0.418398, 0.670964, -0.612169,
		22.055252, 21.535501, 21.547050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.503141, 21.191954, 22.264450>,  <21.762375, 21.065828, 21.975569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.503141, 21.191954, 22.264450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.455425, 21.492523, 22.004871>,  <22.426796, 21.672865, 21.849125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.455425, 21.492523, 22.004871>,  <22.503141, 21.191954, 22.264450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.455425, 21.492523, 22.004871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605088, 0.573228, 0.552519,
		0.787171, -0.326761, -0.523058,
		-0.119290, 0.751423, -0.648948,
		22.419638, 21.717951, 21.810186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.200521, 21.512568, 22.050640>,  <22.503141, 21.191954, 22.264450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.200521, 21.512568, 22.050640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.922009, 21.796024, 22.005005>,  <22.754900, 21.966099, 21.977623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.922009, 21.796024, 22.005005>,  <23.200521, 21.512568, 22.050640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.922009, 21.796024, 22.005005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528552, 0.613755, 0.586462,
		0.485613, 0.348043, -0.801901,
		-0.696285, 0.708641, -0.114089,
		22.713123, 22.008617, 21.970778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.639723, 22.190935, 21.895466>,  <23.200521, 21.512568, 22.050640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.639723, 22.190935, 21.895466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.274681, 22.305004, 22.012653>,  <23.055656, 22.373446, 22.082966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.274681, 22.305004, 22.012653>,  <23.639723, 22.190935, 21.895466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.274681, 22.305004, 22.012653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398157, 0.782687, 0.478406,
		-0.092873, 0.553242, -0.827827,
		-0.912604, 0.285175, 0.292968,
		23.000900, 22.390556, 22.100544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.472668, 22.776522, 21.545126>,  <23.639723, 22.190935, 21.895466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.472668, 22.776522, 21.545126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.293007, 22.755108, 21.901865>,  <23.185209, 22.742260, 22.115910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.293007, 22.755108, 21.901865>,  <23.472668, 22.776522, 21.545126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.293007, 22.755108, 21.901865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449583, 0.849078, 0.277384,
		-0.772099, 0.525548, -0.357299,
		-0.449153, -0.053533, 0.891850,
		23.158260, 22.739048, 22.169420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.742243, 23.238232, 21.914335>,  <23.472668, 22.776522, 21.545126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.742243, 23.238232, 21.914335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.459251, 23.176712, 22.190254>,  <23.289455, 23.139801, 22.355804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.459251, 23.176712, 22.190254>,  <23.742243, 23.238232, 21.914335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.459251, 23.176712, 22.190254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302290, 0.816390, 0.492065,
		-0.638821, 0.556645, -0.531088,
		-0.707480, -0.153799, 0.689795,
		23.247007, 23.130573, 22.397192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.386484, 23.523184, 21.734682>,  <23.742243, 23.238232, 21.914335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.386484, 23.523184, 21.734682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.701160, 23.612965, 21.504642>,  <24.889967, 23.666834, 21.366619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.701160, 23.612965, 21.504642>,  <24.386484, 23.523184, 21.734682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.701160, 23.612965, 21.504642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564436, -0.115831, -0.817310,
		-0.250061, 0.967577, 0.035566,
		0.786690, 0.224452, -0.575100,
		24.937168, 23.680300, 21.332113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.172737, 24.063759, 21.198849>,  <24.386484, 23.523184, 21.734682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.172737, 24.063759, 21.198849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.486969, 23.843925, 21.085131>,  <24.675508, 23.712027, 21.016901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.486969, 23.843925, 21.085131>,  <24.172737, 24.063759, 21.198849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.486969, 23.843925, 21.085131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468165, -0.227512, -0.853850,
		0.404581, 0.803864, -0.436024,
		0.785580, -0.549583, -0.284293,
		24.722643, 23.679050, 20.999844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.305126, 24.310719, 20.461016>,  <24.172737, 24.063759, 21.198849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.305126, 24.310719, 20.461016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.454643, 23.943085, 20.510914>,  <24.544353, 23.722504, 20.540854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.454643, 23.943085, 20.510914>,  <24.305126, 24.310719, 20.461016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.454643, 23.943085, 20.510914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457524, -0.299702, -0.837168,
		0.806815, 0.255854, -0.532530,
		0.373793, -0.919085, 0.124745,
		24.566782, 23.667358, 20.548338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581602, 24.111914, 19.855835>,  <24.305126, 24.310719, 20.461016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581602, 24.111914, 19.855835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.524910, 23.761505, 20.040224>,  <24.490894, 23.551260, 20.150858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.524910, 23.761505, 20.040224>,  <24.581602, 24.111914, 19.855835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524910, 23.761505, 20.040224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358633, -0.388600, -0.848748,
		0.922656, -0.285616, -0.259094,
		-0.141732, -0.876022, 0.460975,
		24.482391, 23.498699, 20.178516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.575451, 23.544590, 19.333765>,  <24.581602, 24.111914, 19.855835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.575451, 23.544590, 19.333765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.404560, 23.337471, 19.630241>,  <24.302025, 23.213200, 19.808128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.404560, 23.337471, 19.630241>,  <24.575451, 23.544590, 19.333765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.404560, 23.337471, 19.630241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481375, -0.563662, -0.671240,
		0.765347, -0.643563, -0.008442,
		-0.427226, -0.517795, 0.741192,
		24.276392, 23.182133, 19.852598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.630808, 22.803204, 19.145618>,  <24.575451, 23.544590, 19.333765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.630808, 22.803204, 19.145618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.332470, 22.860569, 19.405819>,  <24.153467, 22.894989, 19.561939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.332470, 22.860569, 19.405819>,  <24.630808, 22.803204, 19.145618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.332470, 22.860569, 19.405819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590363, -0.594622, -0.545798,
		0.308525, -0.791111, 0.528163,
		-0.745844, 0.143415, 0.650499,
		24.108717, 22.903593, 19.600969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.230146, 22.220217, 19.120314>,  <24.630808, 22.803204, 19.145618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.230146, 22.220217, 19.120314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.951229, 22.432442, 19.313099>,  <23.783878, 22.559776, 19.428770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.951229, 22.432442, 19.313099>,  <24.230146, 22.220217, 19.120314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.951229, 22.432442, 19.313099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707179, -0.399489, -0.583358,
		-0.116970, -0.747604, 0.653763,
		-0.697292, 0.530563, 0.481961,
		23.742041, 22.591610, 19.457687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.715925, 21.797741, 19.405256>,  <24.230146, 22.220217, 19.120314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.715925, 21.797741, 19.405256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.524841, 22.148819, 19.390038>,  <23.410191, 22.359465, 19.380905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.524841, 22.148819, 19.390038>,  <23.715925, 21.797741, 19.405256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.524841, 22.148819, 19.390038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694414, -0.403776, -0.595612,
		-0.538128, -0.258107, 0.802371,
		-0.477710, 0.877694, -0.038051,
		23.381529, 22.412127, 19.378622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.097250, 21.644611, 19.549393>,  <23.715925, 21.797741, 19.405256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.097250, 21.644611, 19.549393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.075546, 21.992176, 19.352600>,  <23.062523, 22.200716, 19.234526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.075546, 21.992176, 19.352600>,  <23.097250, 21.644611, 19.549393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.075546, 21.992176, 19.352600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723233, -0.373913, -0.580623,
		-0.688469, 0.324311, 0.648716,
		-0.054261, 0.868914, -0.491980,
		23.059269, 22.252850, 19.205006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.440323, 21.769178, 19.615644>,  <23.097250, 21.644611, 19.549393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.440323, 21.769178, 19.615644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.594658, 21.987846, 19.318382>,  <22.687260, 22.119047, 19.140024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.594658, 21.987846, 19.318382>,  <22.440323, 21.769178, 19.615644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.594658, 21.987846, 19.318382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520453, -0.536133, -0.664598,
		-0.761746, 0.643205, 0.077655,
		0.385839, 0.546670, -0.743155,
		22.710409, 22.151848, 19.095436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.870317, 21.939846, 19.130125>,  <22.440323, 21.769178, 19.615644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.870317, 21.939846, 19.130125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.207745, 21.978374, 18.918800>,  <22.410202, 22.001492, 18.792006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.207745, 21.978374, 18.918800>,  <21.870317, 21.939846, 19.130125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.207745, 21.978374, 18.918800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393751, -0.558031, -0.730453,
		-0.365172, 0.824211, -0.432811,
		0.843570, 0.096321, -0.528311,
		22.460815, 22.007271, 18.760307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.676006, 22.189299, 18.521589>,  <21.870317, 21.939846, 19.130125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.676006, 22.189299, 18.521589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.025074, 22.005325, 18.455973>,  <22.234514, 21.894941, 18.416603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.025074, 22.005325, 18.455973>,  <21.676006, 22.189299, 18.521589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.025074, 22.005325, 18.455973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438597, -0.590592, -0.677372,
		0.214663, 0.663071, -0.717117,
		0.872670, -0.459932, -0.164043,
		22.286875, 21.867346, 18.406759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.723991, 22.056683, 17.837009>,  <21.676006, 22.189299, 18.521589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.723991, 22.056683, 17.837009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.014954, 21.810780, 17.958963>,  <22.189531, 21.663239, 18.032135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.014954, 21.810780, 17.958963>,  <21.723991, 22.056683, 17.837009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.014954, 21.810780, 17.958963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222963, -0.631934, -0.742259,
		0.648975, 0.471946, -0.596740,
		0.727406, -0.614758, 0.304883,
		22.233175, 21.626352, 18.050428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.051001, 21.874088, 17.177975>,  <21.723991, 22.056683, 17.837009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.051001, 21.874088, 17.177975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.193962, 21.586678, 17.416632>,  <22.279739, 21.414232, 17.559826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.193962, 21.586678, 17.416632>,  <22.051001, 21.874088, 17.177975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.193962, 21.586678, 17.416632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321654, -0.694456, -0.643639,
		0.876812, 0.038128, -0.479319,
		0.357406, -0.718525, 0.596643,
		22.301184, 21.371120, 17.595625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.364872, 21.392900, 16.758783>,  <22.051001, 21.874088, 17.177975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.364872, 21.392900, 16.758783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.330975, 21.197914, 17.106392>,  <22.310637, 21.080923, 17.314957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.330975, 21.197914, 17.106392>,  <22.364872, 21.392900, 16.758783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.330975, 21.197914, 17.106392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057551, -0.873096, -0.484140,
		0.994739, 0.008985, 0.102044,
		-0.084744, -0.487466, 0.869020,
		22.305552, 21.051674, 17.367098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.953817, 20.942701, 16.912048>,  <22.364872, 21.392900, 16.758783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.953817, 20.942701, 16.912048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.621647, 20.792534, 17.076706>,  <22.422344, 20.702433, 17.175501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.621647, 20.792534, 17.076706>,  <22.953817, 20.942701, 16.912048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.621647, 20.792534, 17.076706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050371, -0.786437, -0.615613,
		0.554845, -0.490487, 0.671989,
		-0.830427, -0.375418, 0.411645,
		22.372519, 20.679909, 17.200199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.096685, 20.287554, 16.940069>,  <22.953817, 20.942701, 16.912048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.096685, 20.287554, 16.940069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.701401, 20.265785, 16.997313>,  <22.464230, 20.252724, 17.031658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.701401, 20.265785, 16.997313>,  <23.096685, 20.287554, 16.940069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.701401, 20.265785, 16.997313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059704, -0.723734, -0.687491,
		0.140989, -0.687930, 0.711952,
		-0.988209, -0.054422, 0.143110,
		22.404938, 20.249458, 17.040245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.925501, 19.558224, 16.995615>,  <23.096685, 20.287554, 16.940069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.925501, 19.558224, 16.995615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.574162, 19.731907, 16.915648>,  <22.363358, 19.836117, 16.867666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.574162, 19.731907, 16.915648>,  <22.925501, 19.558224, 16.995615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.574162, 19.731907, 16.915648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211530, -0.728099, -0.652018,
		-0.428673, -0.530409, 0.731372,
		-0.878348, 0.434210, -0.199919,
		22.310658, 19.862169, 16.855671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.347464, 19.010651, 17.093382>,  <22.925501, 19.558224, 16.995615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.347464, 19.010651, 17.093382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.191616, 19.285789, 16.848412>,  <22.098108, 19.450872, 16.701429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.191616, 19.285789, 16.848412>,  <22.347464, 19.010651, 17.093382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.191616, 19.285789, 16.848412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360053, -0.725814, -0.586137,
		-0.847679, -0.007863, 0.530451,
		-0.389617, 0.687847, -0.612426,
		22.074730, 19.492144, 16.664684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.718645, 18.695066, 16.823568>,  <22.347464, 19.010651, 17.093382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.718645, 18.695066, 16.823568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.811298, 18.988323, 16.567802>,  <21.866890, 19.164276, 16.414343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.811298, 18.988323, 16.567802>,  <21.718645, 18.695066, 16.823568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.811298, 18.988323, 16.567802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493817, -0.477694, -0.726604,
		-0.838147, 0.484061, 0.251386,
		0.231635, 0.733140, -0.639415,
		21.880789, 19.208265, 16.375978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<15.822881, 17.058582, 15.278634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.129654, 17.132038, 15.032678>,  <16.313719, 17.176111, 14.885104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.129654, 17.132038, 15.032678>,  <15.822881, 17.058582, 15.278634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.129654, 17.132038, 15.032678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589904, -0.175475, -0.788176,
		-0.252638, 0.967205, -0.026248,
		0.766933, 0.183639, -0.614890,
		16.359734, 17.187130, 14.848210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.524422, 17.270830, 14.568665>,  <15.822881, 17.058582, 15.278634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.524422, 17.270830, 14.568665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.908658, 17.213951, 14.473128>,  <16.139200, 17.179825, 14.415807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.908658, 17.213951, 14.473128>,  <15.524422, 17.270830, 14.568665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.908658, 17.213951, 14.473128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277564, -0.444496, -0.851693,
		0.014943, 0.884423, -0.466447,
		0.960591, -0.142196, -0.238841,
		16.196835, 17.171291, 14.401476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.579146, 17.551447, 13.851338>,  <15.524422, 17.270830, 14.568665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.579146, 17.551447, 13.851338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.904056, 17.322994, 13.898705>,  <16.099001, 17.185923, 13.927126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.904056, 17.322994, 13.898705>,  <15.579146, 17.551447, 13.851338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.904056, 17.322994, 13.898705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237123, -0.508829, -0.827566,
		0.532902, 0.644131, -0.548736,
		0.812274, -0.571130, 0.118417,
		16.147738, 17.151655, 13.934231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951154, 17.540146, 13.107496>,  <15.579146, 17.551447, 13.851338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.951154, 17.540146, 13.107496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.061321, 17.204079, 13.294370>,  <16.127422, 17.002438, 13.406494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.061321, 17.204079, 13.294370>,  <15.951154, 17.540146, 13.107496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.061321, 17.204079, 13.294370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273936, -0.534422, -0.799595,
		0.921468, 0.092246, -0.377343,
		0.275420, -0.840169, 0.467184,
		16.143948, 16.952028, 13.434525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332148, 17.234592, 12.637576>,  <15.951154, 17.540146, 13.107496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332148, 17.234592, 12.637576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.269676, 16.950565, 12.912214>,  <16.232193, 16.780149, 13.076997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.269676, 16.950565, 12.912214>,  <16.332148, 17.234592, 12.637576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.269676, 16.950565, 12.912214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360590, -0.606160, -0.708904,
		0.919556, -0.358295, -0.161373,
		-0.156179, -0.710066, 0.686596,
		16.222822, 16.737545, 13.118193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.531246, 16.698429, 12.285100>,  <16.332148, 17.234592, 12.637576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.531246, 16.698429, 12.285100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.293037, 16.545242, 12.567572>,  <16.150112, 16.453329, 12.737055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.293037, 16.545242, 12.567572>,  <16.531246, 16.698429, 12.285100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.293037, 16.545242, 12.567572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256978, -0.742050, -0.619132,
		0.761128, -0.550180, 0.343493,
		-0.595522, -0.382968, 0.706179,
		16.114380, 16.430351, 12.779426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.665470, 15.887923, 12.333131>,  <16.531246, 16.698429, 12.285100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.665470, 15.887923, 12.333131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.299900, 15.955410, 12.480790>,  <16.080557, 15.995902, 12.569386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.299900, 15.955410, 12.480790>,  <16.665470, 15.887923, 12.333131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.299900, 15.955410, 12.480790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365811, -0.736429, -0.569083,
		0.175839, -0.655139, 0.734761,
		-0.913927, 0.168716, 0.369149,
		16.025723, 16.006025, 12.591535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430508, 15.267796, 12.398858>,  <16.665470, 15.887923, 12.333131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.430508, 15.267796, 12.398858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.099571, 15.492466, 12.396662>,  <15.901010, 15.627268, 12.395344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.099571, 15.492466, 12.396662>,  <16.430508, 15.267796, 12.398858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.099571, 15.492466, 12.396662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502120, -0.743925, -0.440967,
		-0.251764, -0.362073, 0.897507,
		-0.827340, 0.561676, -0.005490,
		15.851370, 15.660969, 12.395015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.889607, 14.809237, 12.432501>,  <16.430508, 15.267796, 12.398858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.889607, 14.809237, 12.432501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.733685, 15.156616, 12.309962>,  <15.640132, 15.365044, 12.236439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.733685, 15.156616, 12.309962>,  <15.889607, 14.809237, 12.432501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.733685, 15.156616, 12.309962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656683, -0.495355, -0.568676,
		-0.645616, -0.020499, 0.763387,
		-0.389805, 0.868449, -0.306347,
		15.616744, 15.417150, 12.218059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.244881, 14.724987, 12.490868>,  <15.889607, 14.809237, 12.432501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.244881, 14.724987, 12.490868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.254474, 15.031361, 12.233879>,  <15.260230, 15.215185, 12.079686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.254474, 15.031361, 12.233879>,  <15.244881, 14.724987, 12.490868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.254474, 15.031361, 12.233879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570797, -0.517115, -0.637795,
		-0.820741, 0.382018, 0.424791,
		0.023983, 0.765934, -0.642472,
		15.261668, 15.261141, 12.041138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.562294, 14.831347, 12.284289>,  <15.244881, 14.724987, 12.490868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.562294, 14.831347, 12.284289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.801791, 14.952496, 11.987702>,  <14.945490, 15.025185, 11.809750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.801791, 14.952496, 11.987702>,  <14.562294, 14.831347, 12.284289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.801791, 14.952496, 11.987702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603606, -0.437872, -0.666279,
		-0.526466, 0.846485, -0.079358,
		0.598744, 0.302872, -0.741468,
		14.981414, 15.043357, 11.765262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.133044, 15.214365, 11.901251>,  <14.562294, 14.831347, 12.284289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.133044, 15.214365, 11.901251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.432530, 15.110279, 11.657378>,  <14.612223, 15.047828, 11.511054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.432530, 15.110279, 11.657378>,  <14.133044, 15.214365, 11.901251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.432530, 15.110279, 11.657378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606181, -0.640975, -0.470846,
		-0.268270, 0.722108, -0.637646,
		0.748716, -0.260215, -0.609682,
		14.657146, 15.032215, 11.474474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.806680, 15.173203, 11.266475>,  <14.133044, 15.214365, 11.901251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.806680, 15.173203, 11.266475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.139243, 14.954025, 11.303386>,  <14.338781, 14.822518, 11.325533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.139243, 14.954025, 11.303386>,  <13.806680, 15.173203, 11.266475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.139243, 14.954025, 11.303386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475205, -0.787224, -0.393011,
		0.287992, 0.282901, -0.914892,
		0.831409, -0.547946, 0.092278,
		14.388666, 14.789641, 11.331069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238511, 15.729609, 11.040279>,  <13.806680, 15.173203, 11.266475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238511, 15.729609, 11.040279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.031728, 16.063004, 11.118309>,  <13.907658, 16.263041, 11.165127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.031728, 16.063004, 11.118309>,  <14.238511, 15.729609, 11.040279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.031728, 16.063004, 11.118309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499350, 0.108535, 0.859575,
		0.695272, 0.541775, -0.472310,
		-0.516958, 0.833487, 0.195074,
		13.876640, 16.313049, 11.176831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.229297, 16.449511, 10.751121>,  <14.238511, 15.729609, 11.040279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.229297, 16.449511, 10.751121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.897149, 16.612019, 10.598579>,  <13.697861, 16.709524, 10.507054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.897149, 16.612019, 10.598579>,  <14.229297, 16.449511, 10.751121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.897149, 16.612019, 10.598579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045258, 0.731307, 0.680545,
		0.555372, 0.547845, -0.625642,
		-0.830370, 0.406271, -0.381353,
		13.648038, 16.733900, 10.484174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.392247, 17.088049, 10.488371>,  <14.229297, 16.449511, 10.751121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.392247, 17.088049, 10.488371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.995357, 17.092369, 10.537964>,  <13.757222, 17.094961, 10.567719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.995357, 17.092369, 10.537964>,  <14.392247, 17.088049, 10.488371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.995357, 17.092369, 10.537964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099511, 0.667137, 0.738259,
		-0.074737, 0.744857, -0.663025,
		-0.992226, 0.010803, 0.123982,
		13.697689, 17.095610, 10.575158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.316026, 17.694830, 10.633393>,  <14.392247, 17.088049, 10.488371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.316026, 17.694830, 10.633393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.957171, 17.559959, 10.747558>,  <13.741858, 17.479038, 10.816056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.957171, 17.559959, 10.747558>,  <14.316026, 17.694830, 10.633393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.957171, 17.559959, 10.747558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065244, 0.740133, 0.669288,
		-0.436908, 0.581821, -0.685999,
		-0.897137, -0.337174, 0.285410,
		13.688030, 17.458807, 10.833180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.861846, 18.370724, 10.651639>,  <14.316026, 17.694830, 10.633393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.861846, 18.370724, 10.651639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.735473, 18.069435, 10.882410>,  <13.659649, 17.888662, 11.020873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.735473, 18.069435, 10.882410>,  <13.861846, 18.370724, 10.651639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.735473, 18.069435, 10.882410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054275, 0.592729, 0.803571,
		-0.947228, 0.285188, -0.146382,
		-0.315934, -0.753220, 0.576928,
		13.640693, 17.843470, 11.055489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.351846, 18.617085, 11.058012>,  <13.861846, 18.370724, 10.651639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.351846, 18.617085, 11.058012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.455567, 18.272472, 11.232609>,  <13.517800, 18.065704, 11.337367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.455567, 18.272472, 11.232609>,  <13.351846, 18.617085, 11.058012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.455567, 18.272472, 11.232609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206087, 0.490898, 0.846491,
		-0.943552, -0.129542, 0.304842,
		0.259303, -0.861532, 0.436491,
		13.533359, 18.014013, 11.363556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.967262, 18.574116, 11.665766>,  <13.351846, 18.617085, 11.058012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.967262, 18.574116, 11.665766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.261947, 18.317585, 11.751513>,  <13.438758, 18.163666, 11.802962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.261947, 18.317585, 11.751513>,  <12.967262, 18.574116, 11.665766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.261947, 18.317585, 11.751513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018761, 0.336281, 0.941575,
		-0.675947, -0.689647, 0.259774,
		0.736711, -0.641328, 0.214370,
		13.482960, 18.125187, 11.815825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.922187, 18.516460, 12.382433>,  <12.967262, 18.574116, 11.665766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.922187, 18.516460, 12.382433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.268451, 18.324913, 12.324035>,  <13.476210, 18.209984, 12.288996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.268451, 18.324913, 12.324035>,  <12.922187, 18.516460, 12.382433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.268451, 18.324913, 12.324035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318241, 0.301243, 0.898874,
		-0.386464, -0.824582, 0.413170,
		0.865661, -0.478870, -0.145997,
		13.528149, 18.181252, 12.280235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.089300, 18.239094, 13.077625>,  <12.922187, 18.516460, 12.382433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.089300, 18.239094, 13.077625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.433486, 18.243187, 12.873862>,  <13.639997, 18.245644, 12.751604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.433486, 18.243187, 12.873862>,  <13.089300, 18.239094, 13.077625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433486, 18.243187, 12.873862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474081, 0.350232, 0.807827,
		0.186679, -0.936607, 0.296510,
		0.860464, 0.010235, -0.509408,
		13.691626, 18.246258, 12.721040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.564939, 17.932285, 13.508310>,  <13.089300, 18.239094, 13.077625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.564939, 17.932285, 13.508310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.786218, 18.143238, 13.250367>,  <13.918984, 18.269810, 13.095601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.786218, 18.143238, 13.250367>,  <13.564939, 17.932285, 13.508310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.786218, 18.143238, 13.250367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479593, 0.431322, 0.764168,
		0.681151, -0.732003, -0.014323,
		0.553195, 0.527383, -0.644859,
		13.952176, 18.301453, 13.056910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.270955, 17.789753, 13.666907>,  <13.564939, 17.932285, 13.508310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.270955, 17.789753, 13.666907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.262586, 18.134502, 13.464230>,  <14.257564, 18.341352, 13.342623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.262586, 18.134502, 13.464230>,  <14.270955, 17.789753, 13.666907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.262586, 18.134502, 13.464230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541175, 0.435902, 0.719110,
		0.840650, -0.259163, -0.475544,
		-0.020924, 0.861872, -0.506693,
		14.256309, 18.393064, 13.312222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.922268, 18.088219, 13.831594>,  <14.270955, 17.789753, 13.666907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.922268, 18.088219, 13.831594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.706836, 18.401707, 13.707845>,  <14.577577, 18.589800, 13.633595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.706836, 18.401707, 13.707845>,  <14.922268, 18.088219, 13.831594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706836, 18.401707, 13.707845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450480, 0.578131, 0.680318,
		0.712038, 0.227040, -0.664421,
		-0.538581, 0.783720, -0.309375,
		14.545261, 18.636824, 13.615032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.357882, 18.718878, 13.970928>,  <14.922268, 18.088219, 13.831594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.357882, 18.718878, 13.970928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.997781, 18.883926, 13.915378>,  <14.781720, 18.982956, 13.882048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.997781, 18.883926, 13.915378>,  <15.357882, 18.718878, 13.970928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.997781, 18.883926, 13.915378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198483, 0.672894, 0.712613,
		0.387489, 0.613968, -0.687674,
		-0.900254, 0.412622, -0.138877,
		14.727705, 19.007713, 13.873714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.508481, 19.459021, 13.922743>,  <15.357882, 18.718878, 13.970928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.508481, 19.459021, 13.922743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.125363, 19.406136, 14.024842>,  <14.895493, 19.374405, 14.086102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.125363, 19.406136, 14.024842>,  <15.508481, 19.459021, 13.922743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.125363, 19.406136, 14.024842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116086, 0.634422, 0.764221,
		-0.262975, 0.761596, -0.592297,
		-0.957793, -0.132213, 0.255248,
		14.838025, 19.366472, 14.101417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245750, 20.144909, 14.059423>,  <15.508481, 19.459021, 13.922743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.245750, 20.144909, 14.059423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.025836, 19.877323, 14.259511>,  <14.893888, 19.716772, 14.379563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.025836, 19.877323, 14.259511>,  <15.245750, 20.144909, 14.059423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.025836, 19.877323, 14.259511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169642, 0.496946, 0.851039,
		-0.817898, 0.552748, -0.159729,
		-0.549787, -0.668966, 0.500220,
		14.860900, 19.676634, 14.409576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.769526, 20.489830, 13.411464>,  <15.245750, 20.144909, 14.059423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.769526, 20.489830, 13.411464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.874703, 20.844189, 13.258598>,  <14.937810, 21.056805, 13.166879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.874703, 20.844189, 13.258598>,  <14.769526, 20.489830, 13.411464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.874703, 20.844189, 13.258598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012425, -0.392960, -0.919472,
		-0.964731, 0.246517, -0.092319,
		0.262943, 0.885896, -0.382163,
		14.953587, 21.109957, 13.143950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.360599, 20.577663, 12.829522>,  <14.769526, 20.489830, 13.411464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.360599, 20.577663, 12.829522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.663787, 20.832653, 12.774232>,  <14.845699, 20.985647, 12.741057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.663787, 20.832653, 12.774232>,  <14.360599, 20.577663, 12.829522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.663787, 20.832653, 12.774232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100714, -0.323742, -0.940770,
		-0.644467, 0.699154, -0.309589,
		0.757970, 0.637475, -0.138226,
		14.891178, 21.023895, 12.732764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.239269, 20.897779, 12.319295>,  <14.360599, 20.577663, 12.829522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.239269, 20.897779, 12.319295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.637708, 20.933060, 12.320622>,  <14.876771, 20.954227, 12.321419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.637708, 20.933060, 12.320622>,  <14.239269, 20.897779, 12.319295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.637708, 20.933060, 12.320622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041398, -0.433656, -0.900127,
		-0.077953, 0.896752, -0.435615,
		0.996097, 0.088201, 0.003319,
		14.936537, 20.959520, 12.321618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468649, 21.075430, 11.574719>,  <14.239269, 20.897779, 12.319295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468649, 21.075430, 11.574719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.809554, 20.973305, 11.757352>,  <15.014097, 20.912029, 11.866931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.809554, 20.973305, 11.757352>,  <14.468649, 21.075430, 11.574719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.809554, 20.973305, 11.757352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354666, -0.359567, -0.863090,
		0.384528, 0.897512, -0.215895,
		0.852262, -0.255311, 0.456581,
		15.065232, 20.896711, 11.894326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.004206, 21.169001, 11.043842>,  <14.468649, 21.075430, 11.574719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.004206, 21.169001, 11.043842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.146102, 20.913273, 11.316732>,  <15.231239, 20.759836, 11.480466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.146102, 20.913273, 11.316732>,  <15.004206, 21.169001, 11.043842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.146102, 20.913273, 11.316732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315170, -0.605204, -0.731024,
		0.880243, 0.474340, -0.013196,
		0.354740, -0.639319, 0.682225,
		15.252524, 20.721478, 11.521399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.581969, 20.957870, 10.727491>,  <15.004206, 21.169001, 11.043842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.581969, 20.957870, 10.727491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.517814, 20.675606, 11.003555>,  <15.479321, 20.506247, 11.169193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.517814, 20.675606, 11.003555>,  <15.581969, 20.957870, 10.727491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.517814, 20.675606, 11.003555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322868, -0.698254, -0.638903,
		0.932755, 0.120357, 0.339828,
		-0.160389, -0.705660, 0.690159,
		15.469697, 20.463907, 11.210603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064871, 20.482801, 10.568035>,  <15.581969, 20.957870, 10.727491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.064871, 20.482801, 10.568035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.795651, 20.280132, 10.783549>,  <15.634120, 20.158531, 10.912858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.795651, 20.280132, 10.783549>,  <16.064871, 20.482801, 10.568035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.795651, 20.280132, 10.783549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068176, -0.767882, -0.636953,
		0.736451, -0.391967, 0.551364,
		-0.673047, -0.506674, 0.538785,
		15.593738, 20.128130, 10.945185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.352182, 19.771420, 10.434664>,  <16.064871, 20.482801, 10.568035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.352182, 19.771420, 10.434664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.991401, 19.711994, 10.596852>,  <15.774932, 19.676338, 10.694165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.991401, 19.711994, 10.596852>,  <16.352182, 19.771420, 10.434664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.991401, 19.711994, 10.596852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073508, -0.872435, -0.483171,
		0.425530, -0.465603, 0.775975,
		-0.901954, -0.148564, 0.405473,
		15.720815, 19.667425, 10.718494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.408358, 19.161322, 10.857526>,  <16.352182, 19.771420, 10.434664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.408358, 19.161322, 10.857526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.040333, 19.227573, 10.715511>,  <15.819518, 19.267324, 10.630302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.040333, 19.227573, 10.715511>,  <16.408358, 19.161322, 10.857526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040333, 19.227573, 10.715511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019591, -0.885649, -0.463942,
		-0.391280, -0.433812, 0.811608,
		-0.920063, 0.165631, -0.355035,
		15.764314, 19.277264, 10.609000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115011, 18.527414, 10.765648>,  <16.408358, 19.161322, 10.857526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.115011, 18.527414, 10.765648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.888032, 18.777328, 10.551119>,  <15.751844, 18.927277, 10.422401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.888032, 18.777328, 10.551119>,  <16.115011, 18.527414, 10.765648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.888032, 18.777328, 10.551119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053907, -0.678136, -0.732957,
		-0.821642, -0.387005, 0.418489,
		-0.567450, 0.624787, -0.536322,
		15.717797, 18.964766, 10.390223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.581071, 18.070173, 10.561201>,  <16.115011, 18.527414, 10.765648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.581071, 18.070173, 10.561201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.612264, 18.374733, 10.303772>,  <15.630980, 18.557468, 10.149314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.612264, 18.374733, 10.303772>,  <15.581071, 18.070173, 10.561201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.612264, 18.374733, 10.303772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231958, -0.613967, -0.754480,
		-0.969595, 0.208118, 0.128734,
		0.077983, 0.761401, -0.643574,
		15.635658, 18.603153, 10.110700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.933396, 18.038328, 10.237032>,  <15.581071, 18.070173, 10.561201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.933396, 18.038328, 10.237032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.194358, 18.223808, 9.997248>,  <15.350935, 18.335096, 9.853377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.194358, 18.223808, 9.997248>,  <14.933396, 18.038328, 10.237032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.194358, 18.223808, 9.997248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370324, -0.495069, -0.785981,
		-0.661233, 0.734772, -0.151267,
		0.652405, 0.463699, -0.599460,
		15.390079, 18.362919, 9.817410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.052857, 22.597889, 16.559074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.299884, 22.849285, 16.369925>,  <15.448100, 23.000124, 16.256435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.299884, 22.849285, 16.369925>,  <15.052857, 22.597889, 16.559074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.299884, 22.849285, 16.369925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358235, -0.310472, -0.880497,
		-0.700200, 0.713165, 0.033411,
		0.617566, 0.628492, -0.472874,
		15.485153, 23.037832, 16.228062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.646757, 23.078344, 16.124258>,  <15.052857, 22.597889, 16.559074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.646757, 23.078344, 16.124258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.011943, 23.103645, 15.963016>,  <15.231054, 23.118826, 15.866270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.011943, 23.103645, 15.963016>,  <14.646757, 23.078344, 16.124258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.011943, 23.103645, 15.963016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372985, -0.271252, -0.887302,
		-0.165466, 0.960428, -0.224052,
		0.912964, 0.063250, -0.403108,
		15.285832, 23.122620, 15.842083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.519514, 23.380461, 15.459923>,  <14.646757, 23.078344, 16.124258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.519514, 23.380461, 15.459923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.876546, 23.201176, 15.440297>,  <15.090765, 23.093605, 15.428522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.876546, 23.201176, 15.440297>,  <14.519514, 23.380461, 15.459923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.876546, 23.201176, 15.440297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199410, -0.294810, -0.934518,
		0.404399, 0.843915, -0.352519,
		0.892579, -0.448214, -0.049064,
		15.144320, 23.066711, 15.425578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.913432, 23.523136, 14.869745>,  <14.519514, 23.380461, 15.459923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.913432, 23.523136, 14.869745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.054965, 23.163418, 14.972562>,  <15.139885, 22.947586, 15.034252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.054965, 23.163418, 14.972562>,  <14.913432, 23.523136, 14.869745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.054965, 23.163418, 14.972562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097877, -0.308913, -0.946041,
		0.930174, 0.309580, -0.197324,
		0.353832, -0.899296, 0.257042,
		15.161115, 22.893629, 15.049674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.327868, 23.313984, 14.315845>,  <14.913432, 23.523136, 14.869745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.327868, 23.313984, 14.315845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.273767, 22.961800, 14.497611>,  <15.241305, 22.750488, 14.606670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.273767, 22.961800, 14.497611>,  <15.327868, 23.313984, 14.315845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.273767, 22.961800, 14.497611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006547, -0.459414, -0.888198,
		0.990789, -0.117158, 0.067902,
		-0.135255, -0.880462, 0.454416,
		15.233190, 22.697660, 14.633936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.691263, 22.835508, 13.948420>,  <15.327868, 23.313984, 14.315845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.691263, 22.835508, 13.948420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.430825, 22.608124, 14.149587>,  <15.274562, 22.471693, 14.270287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.430825, 22.608124, 14.149587>,  <15.691263, 22.835508, 13.948420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.430825, 22.608124, 14.149587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066205, -0.617548, -0.783742,
		0.756103, -0.543586, 0.364448,
		-0.651095, -0.568461, 0.502918,
		15.235497, 22.437586, 14.300462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045006, 22.234285, 14.037743>,  <15.691263, 22.835508, 13.948420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.045006, 22.234285, 14.037743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652900, 22.159481, 14.063373>,  <15.417636, 22.114597, 14.078751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652900, 22.159481, 14.063373>,  <16.045006, 22.234285, 14.037743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.652900, 22.159481, 14.063373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112652, -0.794807, -0.596314,
		0.162446, -0.577328, 0.800190,
		-0.980266, -0.187012, 0.064076,
		15.358820, 22.103378, 14.082595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901076, 21.451429, 14.027863>,  <16.045006, 22.234285, 14.037743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.901076, 21.451429, 14.027863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545136, 21.603977, 13.927684>,  <15.331573, 21.695505, 13.867577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545136, 21.603977, 13.927684>,  <15.901076, 21.451429, 14.027863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.545136, 21.603977, 13.927684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042802, -0.616278, -0.786365,
		-0.454240, -0.689028, 0.564719,
		-0.889851, 0.381369, -0.250446,
		15.278181, 21.718388, 13.852550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402624, 20.854162, 13.952312>,  <15.901076, 21.451429, 14.027863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.402624, 20.854162, 13.952312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246957, 21.149990, 13.732646>,  <15.153556, 21.327488, 13.600846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246957, 21.149990, 13.732646>,  <15.402624, 20.854162, 13.952312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.246957, 21.149990, 13.732646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137279, -0.542942, -0.828474,
		-0.910880, -0.397805, 0.109768,
		-0.389169, 0.739571, -0.549165,
		15.130206, 21.371861, 13.567897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.027482, 20.658476, 14.576451>,  <15.402624, 20.854162, 13.952312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.027482, 20.658476, 14.576451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887866, 20.313217, 14.722411>,  <14.804096, 20.106062, 14.809987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887866, 20.313217, 14.722411>,  <15.027482, 20.658476, 14.576451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.887866, 20.313217, 14.722411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114785, 0.347079, 0.930785,
		-0.930051, 0.366766, -0.022068,
		-0.349040, -0.863145, 0.364901,
		14.783154, 20.054274, 14.831882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.531060, 20.749554, 15.092265>,  <15.027482, 20.658476, 14.576451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.531060, 20.749554, 15.092265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691195, 20.396801, 15.191875>,  <14.787276, 20.185148, 15.251640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691195, 20.396801, 15.191875>,  <14.531060, 20.749554, 15.092265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.691195, 20.396801, 15.191875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122826, 0.320939, 0.939102,
		-0.908099, -0.345371, 0.236802,
		0.400337, -0.881883, 0.249024,
		14.811296, 20.132236, 15.266582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.309270, 20.696480, 15.838115>,  <14.531060, 20.749554, 15.092265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.309270, 20.696480, 15.838115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.595983, 20.423630, 15.780250>,  <14.768010, 20.259920, 15.745531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.595983, 20.423630, 15.780250>,  <14.309270, 20.696480, 15.838115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.595983, 20.423630, 15.780250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517756, 0.381680, 0.765669,
		-0.467069, -0.623717, 0.626756,
		0.716782, -0.682127, -0.144662,
		14.811017, 20.218992, 15.736851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.397839, 20.327810, 16.484842>,  <14.309270, 20.696480, 15.838115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.397839, 20.327810, 16.484842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.738297, 20.302326, 16.276423>,  <14.942573, 20.287035, 16.151371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.738297, 20.302326, 16.276423>,  <14.397839, 20.327810, 16.484842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.738297, 20.302326, 16.276423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523307, 0.180962, 0.832708,
		0.041236, -0.981424, 0.187366,
		0.851146, -0.063712, -0.521048,
		14.993641, 20.283213, 16.120108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822728, 20.160793, 16.989799>,  <14.397839, 20.327810, 16.484842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.822728, 20.160793, 16.989799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.083629, 20.257511, 16.702438>,  <15.240169, 20.315542, 16.530022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.083629, 20.257511, 16.702438>,  <14.822728, 20.160793, 16.989799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.083629, 20.257511, 16.702438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612915, 0.389399, 0.687534,
		0.445988, -0.888765, 0.105786,
		0.652250, 0.241794, -0.718405,
		15.279304, 20.330050, 16.486917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.473464, 19.881172, 17.212431>,  <14.822728, 20.160793, 16.989799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.473464, 19.881172, 17.212431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.582372, 20.147907, 16.934959>,  <15.647717, 20.307949, 16.768476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.582372, 20.147907, 16.934959>,  <15.473464, 19.881172, 17.212431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.582372, 20.147907, 16.934959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768476, 0.283150, 0.573821,
		0.579063, -0.689311, -0.435358,
		0.272269, 0.666840, -0.693681,
		15.664053, 20.347960, 16.726854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.253012, 19.785833, 17.158947>,  <15.473464, 19.881172, 17.212431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.253012, 19.785833, 17.158947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.123985, 20.136177, 17.015379>,  <16.046570, 20.346384, 16.929237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.123985, 20.136177, 17.015379>,  <16.253012, 19.785833, 17.158947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.123985, 20.136177, 17.015379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792191, 0.457338, 0.404074,
		0.518060, -0.153994, -0.841368,
		-0.322564, 0.875858, -0.358921,
		16.027216, 20.398935, 16.907703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.930431, 20.110870, 16.868626>,  <16.253012, 19.785833, 17.158947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.930431, 20.110870, 16.868626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646450, 20.382866, 16.941927>,  <16.476061, 20.546064, 16.985909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646450, 20.382866, 16.941927>,  <16.930431, 20.110870, 16.868626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646450, 20.382866, 16.941927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631797, 0.500012, 0.592301,
		0.311129, 0.536285, -0.784600,
		-0.709951, 0.679990, 0.183255,
		16.433464, 20.586863, 16.996904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.257984, 20.728127, 16.788816>,  <16.930431, 20.110870, 16.868626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.257984, 20.728127, 16.788816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.931198, 20.779427, 17.013716>,  <16.735126, 20.810207, 17.148655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.931198, 20.779427, 17.013716>,  <17.257984, 20.728127, 16.788816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.931198, 20.779427, 17.013716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552555, 0.453169, 0.699515,
		-0.165080, 0.882151, -0.441088,
		-0.816965, 0.128250, 0.562246,
		16.686110, 20.817902, 17.182390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307205, 21.405397, 17.090855>,  <17.257984, 20.728127, 16.788816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.307205, 21.405397, 17.090855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021957, 21.225849, 17.306252>,  <16.850809, 21.118120, 17.435490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021957, 21.225849, 17.306252>,  <17.307205, 21.405397, 17.090855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.021957, 21.225849, 17.306252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371665, 0.409224, 0.833307,
		-0.594410, 0.794388, -0.124997,
		-0.713121, -0.448869, 0.538493,
		16.808022, 21.091188, 17.467800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.110348, 21.821154, 17.572704>,  <17.307205, 21.405397, 17.090855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.110348, 21.821154, 17.572704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978176, 21.486004, 17.746502>,  <16.898872, 21.284914, 17.850780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978176, 21.486004, 17.746502>,  <17.110348, 21.821154, 17.572704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.978176, 21.486004, 17.746502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343494, 0.322028, 0.882219,
		-0.879106, 0.440757, 0.181397,
		-0.330429, -0.837873, 0.434495,
		16.879047, 21.234642, 17.876850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709766, 22.050348, 18.127060>,  <17.110348, 21.821154, 17.572704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.709766, 22.050348, 18.127060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.823517, 21.673523, 18.198217>,  <16.891768, 21.447428, 18.240911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.823517, 21.673523, 18.198217>,  <16.709766, 22.050348, 18.127060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.823517, 21.673523, 18.198217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371057, 0.279245, 0.885629,
		-0.883995, -0.185844, 0.428970,
		0.284377, -0.942064, 0.177893,
		16.908831, 21.390903, 18.251585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.416677, 21.874039, 18.807444>,  <16.709766, 22.050348, 18.127060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.416677, 21.874039, 18.807444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711842, 21.611954, 18.742714>,  <16.888939, 21.454702, 18.703876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711842, 21.611954, 18.742714>,  <16.416677, 21.874039, 18.807444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.711842, 21.611954, 18.742714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276001, 0.074155, 0.958292,
		-0.615885, -0.751797, 0.235559,
		0.737909, -0.655212, -0.161826,
		16.933214, 21.415390, 18.694166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.395514, 21.540522, 19.480379>,  <16.416677, 21.874039, 18.807444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.395514, 21.540522, 19.480379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.735207, 21.409004, 19.315117>,  <16.939022, 21.330093, 19.215960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.735207, 21.409004, 19.315117>,  <16.395514, 21.540522, 19.480379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735207, 21.409004, 19.315117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382284, -0.156889, 0.910629,
		-0.364228, -0.931279, -0.007543,
		0.849233, -0.328792, -0.413157,
		16.989977, 21.310366, 19.191170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.587988, 23.011572, 14.879004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.204048, 23.018551, 14.990994>,  <21.973684, 23.022739, 15.058188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.204048, 23.018551, 14.990994>,  <22.587988, 23.011572, 14.879004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.204048, 23.018551, 14.990994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157153, -0.860183, -0.485167,
		0.232364, -0.509686, 0.828388,
		-0.959849, 0.017449, 0.279974,
		21.916094, 23.023785, 15.074986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.364271, 22.262615, 14.929458>,  <22.587988, 23.011572, 14.879004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.364271, 22.262615, 14.929458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.020660, 22.465008, 14.898328>,  <21.814495, 22.586443, 14.879650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.020660, 22.465008, 14.898328>,  <22.364271, 22.262615, 14.929458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.020660, 22.465008, 14.898328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324134, -0.655244, -0.682343,
		-0.396248, -0.560925, 0.726878,
		-0.859025, 0.505983, -0.077824,
		21.762953, 22.616802, 14.874981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.933601, 21.728605, 14.920829>,  <22.364271, 22.262615, 14.929458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.933601, 21.728605, 14.920829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.730694, 22.047756, 14.790555>,  <21.608950, 22.239246, 14.712391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.730694, 22.047756, 14.790555>,  <21.933601, 21.728605, 14.920829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.730694, 22.047756, 14.790555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518737, -0.584480, -0.623936,
		-0.688181, -0.147557, 0.710376,
		-0.507266, 0.797879, -0.325685,
		21.578514, 22.287119, 14.692850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.152777, 21.663218, 14.854133>,  <21.933601, 21.728605, 14.920829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.152777, 21.663218, 14.854133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.268539, 21.935528, 14.584973>,  <21.337997, 22.098913, 14.423478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.268539, 21.935528, 14.584973>,  <21.152777, 21.663218, 14.854133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.268539, 21.935528, 14.584973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470854, -0.510802, -0.719290,
		-0.833391, 0.525003, 0.172716,
		0.289406, 0.680774, -0.672898,
		21.355362, 22.139759, 14.383104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.652914, 21.521824, 14.422909>,  <21.152777, 21.663218, 14.854133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.652914, 21.521824, 14.422909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.889256, 21.774643, 14.222346>,  <21.031059, 21.926334, 14.102009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.889256, 21.774643, 14.222346>,  <20.652914, 21.521824, 14.422909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.889256, 21.774643, 14.222346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328257, -0.379386, -0.865051,
		-0.736981, 0.675707, -0.016687,
		0.590852, 0.632049, -0.501406,
		21.066511, 21.964258, 14.071924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.291557, 22.013615, 13.931574>,  <20.652914, 21.521824, 14.422909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.291557, 22.013615, 13.931574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.662201, 21.948162, 13.796151>,  <20.884586, 21.908890, 13.714897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.662201, 21.948162, 13.796151>,  <20.291557, 22.013615, 13.931574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.662201, 21.948162, 13.796151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373005, -0.286043, -0.882636,
		0.047586, 0.944142, -0.326085,
		0.926608, -0.163632, -0.338558,
		20.940184, 21.899073, 13.694584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.176353, 22.140455, 13.182928>,  <20.291557, 22.013615, 13.931574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.176353, 22.140455, 13.182928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.532219, 21.963192, 13.226935>,  <20.745739, 21.856834, 13.253340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.532219, 21.963192, 13.226935>,  <20.176353, 22.140455, 13.182928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.532219, 21.963192, 13.226935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188835, -0.576461, -0.795006,
		0.415736, 0.686514, -0.596541,
		0.889666, -0.443160, 0.110018,
		20.799118, 21.830244, 13.259941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.483700, 22.231617, 12.554060>,  <20.176353, 22.140455, 13.182928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.483700, 22.231617, 12.554060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.654343, 21.917519, 12.733569>,  <20.756729, 21.729059, 12.841274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.654343, 21.917519, 12.733569>,  <20.483700, 22.231617, 12.554060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.654343, 21.917519, 12.733569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285182, -0.587667, -0.757179,
		0.858298, 0.195038, -0.474641,
		0.426609, -0.785244, 0.448772,
		20.782326, 21.681946, 12.868200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.753197, 21.866367, 12.004661>,  <20.483700, 22.231617, 12.554060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.753197, 21.866367, 12.004661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.742947, 21.597301, 12.300461>,  <20.736797, 21.435862, 12.477942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.742947, 21.597301, 12.300461>,  <20.753197, 21.866367, 12.004661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.742947, 21.597301, 12.300461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297515, -0.701093, -0.648038,
		0.954373, -0.236618, -0.182165,
		-0.025623, -0.672667, 0.739502,
		20.735260, 21.395502, 12.522311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.011932, 21.279095, 11.651929>,  <20.753197, 21.866367, 12.004661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.011932, 21.279095, 11.651929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.831322, 21.129406, 11.975925>,  <20.722956, 21.039593, 12.170323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.831322, 21.129406, 11.975925>,  <21.011932, 21.279095, 11.651929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.831322, 21.129406, 11.975925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222678, -0.831812, -0.508432,
		0.864026, -0.409936, 0.292253,
		-0.451524, -0.374220, 0.809991,
		20.695864, 21.017139, 12.218923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.225704, 20.574587, 11.641495>,  <21.011932, 21.279095, 11.651929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.225704, 20.574587, 11.641495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.899796, 20.606426, 11.871211>,  <20.704250, 20.625530, 12.009041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.899796, 20.606426, 11.871211>,  <21.225704, 20.574587, 11.641495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.899796, 20.606426, 11.871211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364883, -0.840165, -0.401227,
		0.450562, -0.536458, 0.713587,
		-0.814772, 0.079599, 0.574291,
		20.655363, 20.630306, 12.043498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.239080, 19.969894, 12.052967>,  <21.225704, 20.574587, 11.641495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.239080, 19.969894, 12.052967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.853813, 20.074490, 12.027882>,  <20.622654, 20.137247, 12.012831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.853813, 20.074490, 12.027882>,  <21.239080, 19.969894, 12.052967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.853813, 20.074490, 12.027882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239177, -0.939652, -0.244641,
		-0.122900, -0.220630, 0.967583,
		-0.963166, 0.261490, -0.062714,
		20.564863, 20.152937, 12.009068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.889633, 19.305489, 12.229547>,  <21.239080, 19.969894, 12.052967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.889633, 19.305489, 12.229547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.604496, 19.550060, 12.092139>,  <20.433413, 19.696804, 12.009695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.604496, 19.550060, 12.092139>,  <20.889633, 19.305489, 12.229547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.604496, 19.550060, 12.092139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422433, -0.765330, -0.485614,
		-0.559824, -0.201054, 0.803850,
		-0.712845, 0.611431, -0.343518,
		20.390642, 19.733490, 11.989084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.340904, 18.906990, 12.309583>,  <20.889633, 19.305489, 12.229547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.340904, 18.906990, 12.309583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.201141, 19.169228, 12.041818>,  <20.117285, 19.326571, 11.881159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.201141, 19.169228, 12.041818>,  <20.340904, 18.906990, 12.309583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.201141, 19.169228, 12.041818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470304, -0.740636, -0.479867,
		-0.810388, 0.147160, 0.567111,
		-0.349406, 0.655593, -0.669413,
		20.096319, 19.365906, 11.840994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.968052, 18.545025, 12.762057>,  <20.340904, 18.906990, 12.309583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.968052, 18.545025, 12.762057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.931870, 18.203922, 12.967822>,  <19.910160, 17.999260, 13.091281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.931870, 18.203922, 12.967822>,  <19.968052, 18.545025, 12.762057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.931870, 18.203922, 12.967822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527083, 0.397265, 0.751242,
		-0.844986, 0.339091, 0.413540,
		-0.090455, -0.852759, 0.514413,
		19.904734, 17.948095, 13.122146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.945707, 18.840355, 13.445714>,  <19.968052, 18.545025, 12.762057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.945707, 18.840355, 13.445714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.031101, 18.450737, 13.475813>,  <20.082338, 18.216967, 13.493873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.031101, 18.450737, 13.475813>,  <19.945707, 18.840355, 13.445714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.031101, 18.450737, 13.475813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596759, 0.191003, 0.779356,
		-0.773500, -0.121477, 0.622046,
		0.213486, -0.974044, 0.075249,
		20.095148, 18.158524, 13.498387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.762960, 18.669003, 14.106326>,  <19.945707, 18.840355, 13.445714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.762960, 18.669003, 14.106326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.039825, 18.401314, 13.998216>,  <20.205944, 18.240700, 13.933350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.039825, 18.401314, 13.998216>,  <19.762960, 18.669003, 14.106326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.039825, 18.401314, 13.998216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557735, 0.258281, 0.788811,
		-0.458083, -0.696729, 0.552022,
		0.692164, -0.669223, -0.270276,
		20.247475, 18.200546, 13.917133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.858917, 18.342928, 14.666016>,  <19.762960, 18.669003, 14.106326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.858917, 18.342928, 14.666016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.175705, 18.280659, 14.429864>,  <20.365778, 18.243298, 14.288173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.175705, 18.280659, 14.429864>,  <19.858917, 18.342928, 14.666016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.175705, 18.280659, 14.429864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601542, 0.364506, 0.710832,
		0.104539, -0.918097, 0.382322,
		0.791971, -0.155673, -0.590379,
		20.413296, 18.233957, 14.252750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275236, 18.211836, 15.170177>,  <19.858917, 18.342928, 14.666016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275236, 18.211836, 15.170177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.504353, 18.268932, 14.847306>,  <20.641823, 18.303190, 14.653584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.504353, 18.268932, 14.847306>,  <20.275236, 18.211836, 15.170177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.504353, 18.268932, 14.847306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747093, 0.314278, 0.585731,
		0.337288, -0.938538, 0.073373,
		0.572790, 0.142744, -0.807177,
		20.676189, 18.311754, 14.605153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.866276, 17.755522, 15.175568>,  <20.275236, 18.211836, 15.170177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.866276, 17.755522, 15.175568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.961906, 18.056408, 14.929961>,  <21.019285, 18.236938, 14.782597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.961906, 18.056408, 14.929961>,  <20.866276, 17.755522, 15.175568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.961906, 18.056408, 14.929961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823409, 0.178090, 0.538778,
		0.514626, -0.634396, -0.576803,
		0.239076, 0.752214, -0.614017,
		21.033628, 18.282072, 14.745756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.592558, 17.890268, 15.305597>,  <20.866276, 17.755522, 15.175568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.592558, 17.890268, 15.305597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.461712, 18.213200, 15.109141>,  <21.383205, 18.406958, 14.991268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.461712, 18.213200, 15.109141>,  <21.592558, 17.890268, 15.305597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.461712, 18.213200, 15.109141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634885, 0.572717, 0.518572,
		0.699941, -0.142185, -0.699904,
		-0.327114, 0.807328, -0.491139,
		21.363577, 18.455399, 14.961800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.217979, 18.254971, 15.123657>,  <21.592558, 17.890268, 15.305597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.217979, 18.254971, 15.123657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.905170, 18.503780, 15.139287>,  <21.717485, 18.653067, 15.148664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.905170, 18.503780, 15.139287>,  <22.217979, 18.254971, 15.123657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.905170, 18.503780, 15.139287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572887, 0.692729, 0.438096,
		0.245438, 0.364986, -0.898079,
		-0.782024, 0.622023, 0.039074,
		21.670563, 18.690388, 15.151009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.530169, 18.977282, 15.119795>,  <22.217979, 18.254971, 15.123657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.530169, 18.977282, 15.119795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.168549, 19.016159, 15.286288>,  <21.951576, 19.039486, 15.386185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.168549, 19.016159, 15.286288>,  <22.530169, 18.977282, 15.119795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.168549, 19.016159, 15.286288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380689, 0.625872, 0.680705,
		-0.194350, 0.773846, -0.602818,
		-0.904049, 0.097191, 0.416233,
		21.897333, 19.045317, 15.411159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.510323, 19.683626, 15.380265>,  <22.530169, 18.977282, 15.119795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.510323, 19.683626, 15.380265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.200603, 19.492931, 15.546725>,  <22.014772, 19.378513, 15.646602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.200603, 19.492931, 15.546725>,  <22.510323, 19.683626, 15.380265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.200603, 19.492931, 15.546725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048188, 0.611285, 0.789942,
		-0.630981, 0.631706, -0.450345,
		-0.774300, -0.476738, 0.416150,
		21.968313, 19.349911, 15.671570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.993504, 20.168728, 15.541611>,  <22.510323, 19.683626, 15.380265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.993504, 20.168728, 15.541611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.948967, 19.872990, 15.807233>,  <21.922245, 19.695547, 15.966606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.948967, 19.872990, 15.807233>,  <21.993504, 20.168728, 15.541611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.948967, 19.872990, 15.807233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011588, 0.667199, 0.744789,
		-0.993715, 0.090620, -0.065718,
		-0.111340, -0.739347, 0.664056,
		21.915565, 19.651186, 16.006449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.460226, 20.299656, 15.916296>,  <21.993504, 20.168728, 15.541611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.460226, 20.299656, 15.916296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.643108, 20.041676, 16.161245>,  <21.752838, 19.886887, 16.308214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.643108, 20.041676, 16.161245>,  <21.460226, 20.299656, 15.916296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.643108, 20.041676, 16.161245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088832, 0.651993, 0.753003,
		-0.884913, -0.398677, 0.240803,
		0.457207, -0.644951, 0.612373,
		21.780270, 19.848190, 16.344957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.146978, 20.393778, 16.584055>,  <21.460226, 20.299656, 15.916296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.146978, 20.393778, 16.584055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.504852, 20.235683, 16.667322>,  <21.719576, 20.140827, 16.717281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.504852, 20.235683, 16.667322>,  <21.146978, 20.393778, 16.584055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.504852, 20.235683, 16.667322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060609, 0.569101, 0.820031,
		-0.442571, -0.721051, 0.533120,
		0.894683, -0.395234, 0.208166,
		21.773256, 20.117113, 16.729773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.154528, 20.240993, 17.320669>,  <21.146978, 20.393778, 16.584055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.154528, 20.240993, 17.320669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.532272, 20.275852, 17.193806>,  <21.758919, 20.296768, 17.117687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.532272, 20.275852, 17.193806>,  <21.154528, 20.240993, 17.320669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.532272, 20.275852, 17.193806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226587, 0.526580, 0.819373,
		0.238415, -0.845647, 0.477535,
		0.944360, 0.087148, -0.317158,
		21.815580, 20.301996, 17.098658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.733778, 19.683037, 17.552090>,  <21.154528, 20.240993, 17.320669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.733778, 19.683037, 17.552090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.460667, 19.650055, 17.842472>,  <20.296801, 19.630266, 18.016703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.460667, 19.650055, 17.842472>,  <20.733778, 19.683037, 17.552090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.460667, 19.650055, 17.842472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568026, -0.565020, -0.598414,
		0.459522, -0.820947, 0.338948,
		-0.682778, -0.082453, 0.725958,
		20.255833, 19.625319, 18.060259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.577248, 19.026417, 17.487965>,  <20.733778, 19.683037, 17.552090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.577248, 19.026417, 17.487965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.271797, 19.179317, 17.696102>,  <20.088528, 19.271059, 17.820986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.271797, 19.179317, 17.696102>,  <20.577248, 19.026417, 17.487965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.271797, 19.179317, 17.696102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637759, -0.572256, -0.515545,
		0.100702, -0.725538, 0.680774,
		-0.763625, 0.382253, 0.520346,
		20.042709, 19.293993, 17.852205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.169306, 18.426142, 17.802702>,  <20.577248, 19.026417, 17.487965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.169306, 18.426142, 17.802702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.933121, 18.745358, 17.754557>,  <19.791409, 18.936886, 17.725670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.933121, 18.745358, 17.754557>,  <20.169306, 18.426142, 17.802702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.933121, 18.745358, 17.754557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633798, -0.550843, -0.543021,
		-0.499652, -0.244350, 0.831048,
		-0.590464, 0.798038, -0.120362,
		19.755981, 18.984770, 17.718449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451395, 18.201019, 18.037203>,  <20.169306, 18.426142, 17.802702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.451395, 18.201019, 18.037203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.412136, 18.539379, 17.827511>,  <19.388580, 18.742395, 17.701696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.412136, 18.539379, 17.827511>,  <19.451395, 18.201019, 18.037203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.412136, 18.539379, 17.827511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736736, -0.415892, -0.533155,
		-0.669020, 0.333892, 0.664024,
		-0.098146, 0.845902, -0.524230,
		19.382692, 18.793150, 17.670242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.780865, 18.206804, 17.875702>,  <19.451395, 18.201019, 18.037203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.780865, 18.206804, 17.875702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.894756, 18.484325, 17.611107>,  <18.963091, 18.650837, 17.452349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.894756, 18.484325, 17.611107>,  <18.780865, 18.206804, 17.875702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.894756, 18.484325, 17.611107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773507, -0.241317, -0.586050,
		-0.566231, 0.678532, 0.467950,
		0.284729, 0.693802, -0.661490,
		18.980175, 18.692467, 17.412661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.201101, 18.522055, 17.660669>,  <18.780865, 18.206804, 17.875702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.201101, 18.522055, 17.660669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.450504, 18.600613, 17.357971>,  <18.600147, 18.647747, 17.176352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.450504, 18.600613, 17.357971>,  <18.201101, 18.522055, 17.660669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.450504, 18.600613, 17.357971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673903, -0.355692, -0.647563,
		-0.396347, 0.913735, -0.089427,
		0.623509, 0.196395, -0.756747,
		18.637556, 18.659531, 17.130947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.858728, 18.999163, 17.183872>,  <18.201101, 18.522055, 17.660669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.858728, 18.999163, 17.183872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.126701, 18.789085, 16.973972>,  <18.287485, 18.663038, 16.848032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.126701, 18.789085, 16.973972>,  <17.858728, 18.999163, 17.183872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.126701, 18.789085, 16.973972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694722, -0.194195, -0.692567,
		0.261828, 0.828529, -0.494961,
		0.669931, -0.525194, -0.524751,
		18.327681, 18.631527, 16.816547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.656315, 19.075615, 16.504362>,  <17.858728, 18.999163, 17.183872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.656315, 19.075615, 16.504362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.894337, 18.754147, 16.506367>,  <18.037149, 18.561266, 16.507568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.894337, 18.754147, 16.506367>,  <17.656315, 19.075615, 16.504362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.894337, 18.754147, 16.506367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652745, -0.486923, -0.580371,
		0.468867, 0.342081, -0.814337,
		0.595053, -0.803671, 0.005010,
		18.072853, 18.513046, 16.507870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.064360, 19.084288, 15.940841>,  <17.656315, 19.075615, 16.504362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.064360, 19.084288, 15.940841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.906929, 18.781319, 16.149229>,  <17.812469, 18.599537, 16.274261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.906929, 18.781319, 16.149229>,  <18.064360, 19.084288, 15.940841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.906929, 18.781319, 16.149229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538926, -0.269008, -0.798244,
		0.744752, -0.594935, -0.302319,
		-0.393578, -0.757421, 0.520970,
		17.788857, 18.554092, 16.305521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.129519, 18.510647, 15.487822>,  <18.064360, 19.084288, 15.940841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.129519, 18.510647, 15.487822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.854481, 18.398388, 15.755687>,  <17.689457, 18.331034, 15.916406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.854481, 18.398388, 15.755687>,  <18.129519, 18.510647, 15.487822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.854481, 18.398388, 15.755687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421850, -0.596253, -0.683026,
		0.590977, -0.752144, 0.291591,
		-0.687596, -0.280645, 0.669664,
		17.648201, 18.314194, 15.956586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.234867, 17.798901, 15.518869>,  <18.129519, 18.510647, 15.487822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.234867, 17.798901, 15.518869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.864708, 17.873352, 15.650929>,  <17.642612, 17.918024, 15.730165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.864708, 17.873352, 15.650929>,  <18.234867, 17.798901, 15.518869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.864708, 17.873352, 15.650929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378973, -0.465363, -0.799886,
		0.004756, -0.865328, 0.501183,
		-0.925396, 0.186130, 0.330149,
		17.587090, 17.929192, 15.749974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.839592, 17.158117, 15.458986>,  <18.234867, 17.798901, 15.518869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.839592, 17.158117, 15.458986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.551014, 17.434601, 15.475724>,  <17.377867, 17.600491, 15.485767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.551014, 17.434601, 15.475724>,  <17.839592, 17.158117, 15.458986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.551014, 17.434601, 15.475724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534741, -0.517700, -0.667861,
		-0.439966, -0.504202, 0.743108,
		-0.721444, 0.691207, 0.041847,
		17.334581, 17.641964, 15.488277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.196020, 16.735315, 15.478479>,  <17.839592, 17.158117, 15.458986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.196020, 16.735315, 15.478479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.111904, 17.109169, 15.363770>,  <17.061434, 17.333481, 15.294945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.111904, 17.109169, 15.363770>,  <17.196020, 16.735315, 15.478479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.111904, 17.109169, 15.363770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681687, -0.350442, -0.642257,
		-0.700772, 0.060428, 0.710822,
		-0.210291, 0.934633, -0.286773,
		17.048817, 17.389559, 15.277739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.460239, 16.661432, 15.420854>,  <17.196020, 16.735315, 15.478479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.460239, 16.661432, 15.420854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.597870, 16.973377, 15.211694>,  <16.680449, 17.160545, 15.086198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.597870, 16.973377, 15.211694>,  <16.460239, 16.661432, 15.420854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.597870, 16.973377, 15.211694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665278, -0.190503, -0.721882,
		-0.662584, 0.596255, 0.453279,
		0.344075, 0.779864, -0.522899,
		16.701092, 17.207336, 15.054824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.812979, 20.715994, 19.749525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.073635, 20.978817, 19.597929>,  <17.230030, 21.136511, 19.506971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.073635, 20.978817, 19.597929>,  <16.812979, 20.715994, 19.749525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.073635, 20.978817, 19.597929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555088, -0.072563, 0.828621,
		0.516952, -0.750338, -0.412011,
		0.651643, 0.657060, -0.378991,
		17.269129, 21.175934, 19.484232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.391726, 20.585991, 20.179338>,  <16.812979, 20.715994, 19.749525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.391726, 20.585991, 20.179338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.527313, 20.911156, 19.989908>,  <17.608665, 21.106255, 19.876251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.527313, 20.911156, 19.989908>,  <17.391726, 20.585991, 20.179338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.527313, 20.911156, 19.989908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584456, 0.212502, 0.783105,
		0.737232, -0.542231, -0.403080,
		0.338969, 0.812913, -0.473574,
		17.629004, 21.155029, 19.847836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.178776, 20.589558, 20.138615>,  <17.391726, 20.585991, 20.179338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.178776, 20.589558, 20.138615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.067142, 20.973186, 20.119450>,  <18.000162, 21.203363, 20.107950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.067142, 20.973186, 20.119450>,  <18.178776, 20.589558, 20.138615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.067142, 20.973186, 20.119450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665752, 0.229205, 0.710098,
		0.692016, 0.166280, -0.702471,
		-0.279085, 0.959070, -0.047912,
		17.983418, 21.260908, 20.105076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.789146, 21.005039, 20.018499>,  <18.178776, 20.589558, 20.138615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.789146, 21.005039, 20.018499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.514221, 21.249279, 20.175863>,  <18.349266, 21.395823, 20.270281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.514221, 21.249279, 20.175863>,  <18.789146, 21.005039, 20.018499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.514221, 21.249279, 20.175863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691733, 0.384992, 0.610972,
		0.221598, 0.692064, -0.686981,
		-0.687313, 0.610597, 0.393410,
		18.308027, 21.432459, 20.293886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.195833, 21.588064, 20.245552>,  <18.789146, 21.005039, 20.018499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.195833, 21.588064, 20.245552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.853500, 21.649807, 20.443027>,  <18.648102, 21.686853, 20.561512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.853500, 21.649807, 20.443027>,  <19.195833, 21.588064, 20.245552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.853500, 21.649807, 20.443027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514059, 0.359758, 0.778664,
		-0.057414, 0.920189, -0.387242,
		-0.855831, 0.154359, 0.493687,
		18.596750, 21.696115, 20.591133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.195957, 22.194117, 20.499121>,  <19.195833, 21.588064, 20.245552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.195957, 22.194117, 20.499121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.933865, 22.035404, 20.756254>,  <18.776609, 21.940178, 20.910534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.933865, 22.035404, 20.756254>,  <19.195957, 22.194117, 20.499121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.933865, 22.035404, 20.756254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434318, 0.498389, 0.750317,
		-0.618092, 0.770827, -0.154232,
		-0.655232, -0.396779, 0.642835,
		18.737295, 21.916370, 20.949104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009117, 22.754692, 21.003962>,  <19.195957, 22.194117, 20.499121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009117, 22.754692, 21.003962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.906288, 22.406559, 21.171978>,  <18.844591, 22.197680, 21.272789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.906288, 22.406559, 21.171978>,  <19.009117, 22.754692, 21.003962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.906288, 22.406559, 21.171978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439693, 0.281717, 0.852822,
		-0.860572, 0.403928, 0.310257,
		-0.257074, -0.870332, 0.420042,
		18.829166, 22.145460, 21.297991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.871437, 22.937485, 21.667997>,  <19.009117, 22.754692, 21.003962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.871437, 22.937485, 21.667997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.914776, 22.541656, 21.705967>,  <18.940779, 22.304159, 21.728748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.914776, 22.541656, 21.705967>,  <18.871437, 22.937485, 21.667997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.914776, 22.541656, 21.705967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601637, 0.141289, 0.786174,
		-0.791387, -0.028070, 0.610671,
		0.108349, -0.989570, 0.094926,
		18.947281, 22.244785, 21.734446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.750540, 22.799406, 22.348200>,  <18.871437, 22.937485, 21.667997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.750540, 22.799406, 22.348200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.963306, 22.484688, 22.222969>,  <19.090967, 22.295856, 22.147831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.963306, 22.484688, 22.222969>,  <18.750540, 22.799406, 22.348200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.963306, 22.484688, 22.222969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703741, 0.205102, 0.680207,
		-0.470970, -0.582141, 0.662796,
		0.531917, -0.786794, -0.313079,
		19.122881, 22.248650, 22.129045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.916307, 22.509596, 22.890341>,  <18.750540, 22.799406, 22.348200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.916307, 22.509596, 22.890341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.197159, 22.398457, 22.628099>,  <19.365669, 22.331772, 22.470755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.197159, 22.398457, 22.628099>,  <18.916307, 22.509596, 22.890341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.197159, 22.398457, 22.628099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711694, 0.244688, 0.658497,
		-0.022545, -0.928938, 0.369547,
		0.702127, -0.277850, -0.655604,
		19.407797, 22.315102, 22.431417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466217, 22.149126, 23.378168>,  <18.916307, 22.509596, 22.890341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.466217, 22.149126, 23.378168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.646938, 22.239807, 23.033035>,  <19.755371, 22.294216, 22.825954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.646938, 22.239807, 23.033035>,  <19.466217, 22.149126, 23.378168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.646938, 22.239807, 23.033035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854956, 0.166212, 0.491348,
		0.254805, -0.959676, -0.118728,
		0.451801, 0.226705, -0.862833,
		19.782478, 22.307819, 22.774185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.260233, 21.875095, 23.417414>,  <19.466217, 22.149126, 23.378168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.260233, 21.875095, 23.417414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.243813, 22.161545, 23.138708>,  <20.233959, 22.333414, 22.971485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.243813, 22.161545, 23.138708>,  <20.260233, 21.875095, 23.417414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.243813, 22.161545, 23.138708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747928, 0.484418, 0.453810,
		0.662509, -0.502499, -0.555496,
		-0.041053, 0.716124, -0.696764,
		20.231497, 22.376383, 22.929678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.917898, 22.062311, 22.993771>,  <20.260233, 21.875095, 23.417414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.917898, 22.062311, 22.993771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.680683, 22.380047, 23.046429>,  <20.538355, 22.570688, 23.078024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.680683, 22.380047, 23.046429>,  <20.917898, 22.062311, 22.993771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.680683, 22.380047, 23.046429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779088, 0.524823, 0.342904,
		0.203292, 0.305918, -0.930100,
		-0.593038, 0.794339, 0.131645,
		20.502771, 22.618349, 23.085922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.240677, 22.714951, 22.770769>,  <20.917898, 22.062311, 22.993771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.240677, 22.714951, 22.770769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.957836, 22.826939, 23.030500>,  <20.788132, 22.894131, 23.186338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.957836, 22.826939, 23.030500>,  <21.240677, 22.714951, 22.770769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.957836, 22.826939, 23.030500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646566, 0.627776, 0.433417,
		-0.286289, 0.726302, -0.624919,
		-0.707101, 0.279969, 0.649327,
		20.745707, 22.910929, 23.225298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.840601, 22.862700, 22.419312>,  <21.240677, 22.714951, 22.770769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.840601, 22.862700, 22.419312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.201088, 22.712822, 22.332214>,  <22.417379, 22.622894, 22.279955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.201088, 22.712822, 22.332214>,  <21.840601, 22.862700, 22.419312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.201088, 22.712822, 22.332214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411243, -0.580921, -0.702432,
		0.136707, 0.722588, -0.677626,
		0.901216, -0.374696, -0.217744,
		22.471453, 22.600412, 22.266891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.935011, 22.991350, 21.764223>,  <21.840601, 22.862700, 22.419312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.935011, 22.991350, 21.764223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.196274, 22.691608, 21.807766>,  <22.353031, 22.511763, 21.833891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.196274, 22.691608, 21.807766>,  <21.935011, 22.991350, 21.764223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.196274, 22.691608, 21.807766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425900, -0.482419, -0.765429,
		0.626093, 0.453584, -0.634247,
		0.653159, -0.749356, 0.108858,
		22.392221, 22.466803, 21.840424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.215559, 22.842400, 21.076555>,  <21.935011, 22.991350, 21.764223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.215559, 22.842400, 21.076555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.314098, 22.510277, 21.276518>,  <22.373222, 22.311003, 21.396496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.314098, 22.510277, 21.276518>,  <22.215559, 22.842400, 21.076555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.314098, 22.510277, 21.276518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336753, -0.556997, -0.759179,
		0.908796, 0.018678, -0.416823,
		0.246349, -0.830305, 0.499906,
		22.388002, 22.261185, 21.426489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.711622, 22.336227, 20.685902>,  <22.215559, 22.842400, 21.076555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.711622, 22.336227, 20.685902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.523190, 22.095192, 20.943575>,  <22.410130, 21.950571, 21.098179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.523190, 22.095192, 20.943575>,  <22.711622, 22.336227, 20.685902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.523190, 22.095192, 20.943575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249076, -0.609701, -0.752480,
		0.846194, -0.514928, 0.137127,
		-0.471080, -0.602589, 0.644182,
		22.381866, 21.914415, 21.136829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.929796, 21.620634, 20.593540>,  <22.711622, 22.336227, 20.685902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.929796, 21.620634, 20.593540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.588291, 21.564079, 20.793982>,  <22.383389, 21.530148, 20.914246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.588291, 21.564079, 20.793982>,  <22.929796, 21.620634, 20.593540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.588291, 21.564079, 20.793982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293334, -0.664540, -0.687271,
		0.430172, -0.733755, 0.525885,
		-0.853761, -0.141385, 0.501102,
		22.332163, 21.521664, 20.944313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.874296, 20.847191, 20.741982>,  <22.929796, 21.620634, 20.593540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.874296, 20.847191, 20.741982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.514339, 21.021637, 20.742098>,  <22.298367, 21.126305, 20.742168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.514339, 21.021637, 20.742098>,  <22.874296, 20.847191, 20.741982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.514339, 21.021637, 20.742098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385594, -0.795331, -0.467725,
		-0.203751, -0.421013, 0.883874,
		-0.899890, 0.436115, 0.000291,
		22.244371, 21.152472, 20.742186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.412489, 20.310011, 20.827808>,  <22.874296, 20.847191, 20.741982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.412489, 20.310011, 20.827808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.177795, 20.595909, 20.675556>,  <22.036980, 20.767448, 20.584206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.177795, 20.595909, 20.675556>,  <22.412489, 20.310011, 20.827808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.177795, 20.595909, 20.675556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456489, -0.680177, -0.573565,
		-0.668848, -0.162780, 0.725359,
		-0.586737, 0.714746, -0.380628,
		22.001776, 20.810333, 20.561367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.785095, 19.989717, 20.782385>,  <22.412489, 20.310011, 20.827808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.785095, 19.989717, 20.782385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.714382, 20.302853, 20.543751>,  <21.671955, 20.490734, 20.400570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.714382, 20.302853, 20.543751>,  <21.785095, 19.989717, 20.782385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.714382, 20.302853, 20.543751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666911, -0.541051, -0.512342,
		-0.723863, 0.307297, 0.617730,
		-0.176782, 0.782836, -0.596587,
		21.661348, 20.537703, 20.364775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.062080, 19.812307, 20.603323>,  <21.785095, 19.989717, 20.782385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.062080, 19.812307, 20.603323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.179642, 20.115036, 20.369795>,  <21.250177, 20.296673, 20.229679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.179642, 20.115036, 20.369795>,  <21.062080, 19.812307, 20.603323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.179642, 20.115036, 20.369795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750948, -0.195058, -0.630896,
		-0.591354, 0.623839, 0.511005,
		0.293902, 0.756821, -0.583818,
		21.267813, 20.342083, 20.194649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.445505, 20.211573, 20.344318>,  <21.062080, 19.812307, 20.603323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.445505, 20.211573, 20.344318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.747971, 20.304104, 20.099466>,  <20.929449, 20.359623, 19.952555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.747971, 20.304104, 20.099466>,  <20.445505, 20.211573, 20.344318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.747971, 20.304104, 20.099466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588179, -0.169734, -0.790719,
		-0.286815, 0.957955, 0.007716,
		0.756163, 0.231328, -0.612131,
		20.974819, 20.373503, 19.915827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.188814, 20.716900, 19.797846>,  <20.445505, 20.211573, 20.344318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.188814, 20.716900, 19.797846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.521626, 20.556934, 19.644066>,  <20.721312, 20.460955, 19.551798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.521626, 20.556934, 19.644066>,  <20.188814, 20.716900, 19.797846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.521626, 20.556934, 19.644066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464071, -0.122096, -0.877343,
		0.303921, 0.908385, -0.287176,
		0.832028, -0.399913, -0.384448,
		20.771235, 20.436960, 19.528732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187717, 20.918056, 19.069136>,  <20.188814, 20.716900, 19.797846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.187717, 20.918056, 19.069136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.438499, 20.606510, 19.075994>,  <20.588968, 20.419582, 19.080109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.438499, 20.606510, 19.075994>,  <20.187717, 20.918056, 19.069136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.438499, 20.606510, 19.075994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395904, -0.337484, -0.854029,
		0.670961, 0.528649, -0.519944,
		0.626954, -0.778868, 0.017145,
		20.626585, 20.372850, 19.081139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.490072, 20.802532, 18.379396>,  <20.187717, 20.918056, 19.069136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.490072, 20.802532, 18.379396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.529758, 20.445889, 18.556118>,  <20.553570, 20.231903, 18.662151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.529758, 20.445889, 18.556118>,  <20.490072, 20.802532, 18.379396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.529758, 20.445889, 18.556118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335566, -0.447965, -0.828687,
		0.936777, -0.066037, -0.343638,
		0.099214, -0.891609, 0.441804,
		20.559523, 20.178406, 18.688660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.685390, 20.467747, 17.826271>,  <20.490072, 20.802532, 18.379396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.685390, 20.467747, 17.826271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.574608, 20.194267, 18.096338>,  <20.508139, 20.030180, 18.258379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.574608, 20.194267, 18.096338>,  <20.685390, 20.467747, 17.826271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.574608, 20.194267, 18.096338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429259, -0.540608, -0.723519,
		0.859670, -0.490206, -0.143759,
		-0.276956, -0.683697, 0.675169,
		20.491522, 19.989159, 18.298889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.469406, 20.122282, 17.958345>,  <20.685390, 20.467747, 17.826271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.469406, 20.122282, 17.958345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.743847, 20.289188, 17.719965>,  <21.908510, 20.389332, 17.576937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.743847, 20.289188, 17.719965>,  <21.469406, 20.122282, 17.958345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.743847, 20.289188, 17.719965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239862, 0.643621, 0.726786,
		0.686830, -0.641593, 0.341501,
		0.686098, 0.417265, -0.595952,
		21.949677, 20.414368, 17.541180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.882410, 20.425415, 18.415838>,  <21.469406, 20.122282, 17.958345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.882410, 20.425415, 18.415838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.030987, 20.623283, 18.101557>,  <22.120132, 20.742004, 17.912989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.030987, 20.623283, 18.101557>,  <21.882410, 20.425415, 18.415838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.030987, 20.623283, 18.101557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254256, 0.759704, 0.598501,
		0.892964, -0.422079, 0.156413,
		0.371442, 0.494671, -0.785704,
		22.142420, 20.771685, 17.865845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.614393, 20.479963, 18.474728>,  <21.882410, 20.425415, 18.415838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.614393, 20.479963, 18.474728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.524216, 20.757069, 18.200718>,  <22.470110, 20.923332, 18.036312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.524216, 20.757069, 18.200718>,  <22.614393, 20.479963, 18.474728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.524216, 20.757069, 18.200718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402211, 0.706589, 0.582202,
		0.887357, -0.144271, -0.437932,
		-0.225443, 0.692762, -0.685023,
		22.456583, 20.964897, 17.995211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.258768, 20.906496, 18.313438>,  <22.614393, 20.479963, 18.474728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.258768, 20.906496, 18.313438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.945087, 21.136223, 18.219471>,  <22.756878, 21.274059, 18.163090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.945087, 21.136223, 18.219471>,  <23.258768, 20.906496, 18.313438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.945087, 21.136223, 18.219471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401992, 0.758629, 0.512723,
		0.472682, 0.307643, -0.825789,
		-0.784203, 0.574316, -0.234920,
		22.709827, 21.308517, 18.148994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.495481, 21.502682, 18.061527>,  <23.258768, 20.906496, 18.313438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.495481, 21.502682, 18.061527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.123535, 21.608852, 18.163431>,  <22.900368, 21.672554, 18.224573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.123535, 21.608852, 18.163431>,  <23.495481, 21.502682, 18.061527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.123535, 21.608852, 18.163431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364708, 0.756106, 0.543407,
		-0.048393, 0.598208, -0.799878,
		-0.929864, 0.265425, 0.254761,
		22.844576, 21.688480, 18.239859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.585884, 22.244225, 18.182005>,  <23.495481, 21.502682, 18.061527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.585884, 22.244225, 18.182005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.229137, 22.160904, 18.342596>,  <23.015089, 22.110912, 18.438951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.229137, 22.160904, 18.342596>,  <23.585884, 22.244225, 18.182005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.229137, 22.160904, 18.342596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083403, 0.796681, 0.598619,
		-0.444544, 0.567372, -0.693159,
		-0.891866, -0.208301, 0.401480,
		22.961578, 22.098413, 18.463039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.075327, 22.891808, 18.130434>,  <23.585884, 22.244225, 18.182005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.075327, 22.891808, 18.130434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.025803, 22.640820, 18.437927>,  <22.996088, 22.490227, 18.622423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.025803, 22.640820, 18.437927>,  <23.075327, 22.891808, 18.130434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.025803, 22.640820, 18.437927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266584, 0.725184, 0.634856,
		-0.955827, 0.283533, 0.077488,
		-0.123809, -0.627469, 0.768735,
		22.988659, 22.452579, 18.668549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.349867, 23.247227, 18.082392>,  <23.075327, 22.891808, 18.130434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.349867, 23.247227, 18.082392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.384960, 23.609760, 17.917051>,  <22.406015, 23.827280, 17.817846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.384960, 23.609760, 17.917051>,  <22.349867, 23.247227, 18.082392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.384960, 23.609760, 17.917051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505612, -0.317011, -0.802409,
		-0.858289, 0.279394, 0.430441,
		0.087733, 0.906335, -0.413352,
		22.411280, 23.881660, 17.793045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.766251, 23.307289, 17.763151>,  <22.349867, 23.247227, 18.082392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.766251, 23.307289, 17.763151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.018623, 23.573353, 17.603407>,  <22.170048, 23.732990, 17.507561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.018623, 23.573353, 17.603407>,  <21.766251, 23.307289, 17.763151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.018623, 23.573353, 17.603407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263573, -0.300366, -0.916684,
		-0.729694, 0.683627, -0.014193,
		0.630933, 0.665158, -0.399360,
		22.207903, 23.772900, 17.483599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.307173, 23.719620, 17.219940>,  <21.766251, 23.307289, 17.763151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.307173, 23.719620, 17.219940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.698906, 23.755421, 17.147396>,  <21.933947, 23.776901, 17.103868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.698906, 23.755421, 17.147396>,  <21.307173, 23.719620, 17.219940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.698906, 23.755421, 17.147396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127041, -0.425497, -0.895998,
		-0.157363, 0.900523, -0.405333,
		0.979335, 0.089503, -0.181361,
		21.992706, 23.782272, 17.092987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.317377, 24.103056, 16.616110>,  <21.307173, 23.719620, 17.219940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.317377, 24.103056, 16.616110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.669853, 23.915611, 16.641111>,  <21.881338, 23.803144, 16.656113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.669853, 23.915611, 16.641111>,  <21.317377, 24.103056, 16.616110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.669853, 23.915611, 16.641111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051575, -0.226710, -0.972596,
		0.469939, 0.853819, -0.223944,
		0.881191, -0.468611, 0.062504,
		21.934210, 23.775028, 16.659863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.803541, 24.458862, 16.140707>,  <21.317377, 24.103056, 16.616110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.803541, 24.458862, 16.140707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.913910, 24.081669, 16.215168>,  <21.980131, 23.855352, 16.259844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.913910, 24.081669, 16.215168>,  <21.803541, 24.458862, 16.140707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.913910, 24.081669, 16.215168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051688, -0.207947, -0.976773,
		0.959790, 0.259889, -0.106118,
		0.275920, -0.942982, 0.186152,
		21.996685, 23.798775, 16.271013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.216576, 24.279835, 15.534659>,  <21.803541, 24.458862, 16.140707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.216576, 24.279835, 15.534659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.131012, 23.918530, 15.683448>,  <22.079674, 23.701746, 15.772721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.131012, 23.918530, 15.683448>,  <22.216576, 24.279835, 15.534659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.131012, 23.918530, 15.683448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154558, -0.344694, -0.925904,
		0.964549, -0.255550, -0.065873,
		-0.213909, -0.903261, 0.371971,
		22.066839, 23.647551, 15.795039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.398764, 23.880566, 14.947101>,  <22.216576, 24.279835, 15.534659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.398764, 23.880566, 14.947101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.139717, 23.657993, 15.155324>,  <21.984289, 23.524450, 15.280258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.139717, 23.657993, 15.155324>,  <22.398764, 23.880566, 14.947101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.139717, 23.657993, 15.155324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139839, -0.584780, -0.799048,
		0.749025, -0.590270, 0.300903,
		-0.647616, -0.556429, 0.520557,
		21.945433, 23.491064, 15.311491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<19.600956, 25.168173, 20.536053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.672310, 24.807346, 20.693254>,  <19.715122, 24.590851, 20.787575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.672310, 24.807346, 20.693254>,  <19.600956, 25.168173, 20.536053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.672310, 24.807346, 20.693254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633509, -0.410906, -0.655609,
		0.752891, -0.132019, -0.644768,
		0.178386, -0.902068, 0.393003,
		19.725826, 24.536726, 20.811155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.784178, 24.705770, 20.041567>,  <19.600956, 25.168173, 20.536053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.784178, 24.705770, 20.041567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.645023, 24.458447, 20.323465>,  <19.561531, 24.310053, 20.492605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.645023, 24.458447, 20.323465>,  <19.784178, 24.705770, 20.041567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.645023, 24.458447, 20.323465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504805, -0.509897, -0.696547,
		0.790029, -0.598079, -0.134740,
		-0.347887, -0.618310, 0.704747,
		19.540657, 24.272953, 20.534889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.863731, 23.866808, 19.811312>,  <19.784178, 24.705770, 20.041567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.863731, 23.866808, 19.811312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.584549, 23.896725, 20.096201>,  <19.417040, 23.914675, 20.267134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.584549, 23.896725, 20.096201>,  <19.863731, 23.866808, 19.811312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.584549, 23.896725, 20.096201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659021, -0.456291, -0.597904,
		0.280263, -0.886682, 0.367761,
		-0.697957, 0.074792, 0.712224,
		19.375162, 23.919163, 20.309868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.672318, 23.165602, 19.977779>,  <19.863731, 23.866808, 19.811312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.672318, 23.165602, 19.977779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.391357, 23.432426, 20.077105>,  <19.222782, 23.592522, 20.136700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.391357, 23.432426, 20.077105>,  <19.672318, 23.165602, 19.977779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.391357, 23.432426, 20.077105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604773, -0.375343, -0.702401,
		-0.375343, -0.643540, 0.667063,
		0.702401, -0.667063, -0.248314,
		19.180637, 23.632545, 20.151598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.089169, 22.880901, 19.728319>,  <19.672318, 23.165602, 19.977779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.089169, 22.880901, 19.728319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.972893, 23.251141, 19.825287>,  <18.903128, 23.473284, 19.883467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.972893, 23.251141, 19.825287>,  <19.089169, 22.880901, 19.728319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.972893, 23.251141, 19.825287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642365, -0.001015, -0.766398,
		-0.709132, -0.378502, 0.594868,
		-0.290687, 0.925600, 0.242417,
		18.885687, 23.528820, 19.898012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.342239, 22.908426, 19.795034>,  <19.089169, 22.880901, 19.728319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.342239, 22.908426, 19.795034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.458275, 23.279255, 19.700052>,  <18.527897, 23.501753, 19.643063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.458275, 23.279255, 19.700052>,  <18.342239, 22.908426, 19.795034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.458275, 23.279255, 19.700052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621550, -0.006156, -0.783350,
		-0.727684, 0.374833, 0.574436,
		0.290089, 0.927072, -0.237457,
		18.545301, 23.557377, 19.628815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.730574, 23.302917, 19.758387>,  <18.342239, 22.908426, 19.795034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.730574, 23.302917, 19.758387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.996845, 23.511921, 19.545273>,  <18.156609, 23.637323, 19.417404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.996845, 23.511921, 19.545273>,  <17.730574, 23.302917, 19.758387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.996845, 23.511921, 19.545273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669851, 0.103724, -0.735215,
		-0.328892, 0.846303, 0.419048,
		0.665679, 0.522506, -0.532783,
		18.196548, 23.668673, 19.385437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323755, 23.661190, 19.416410>,  <17.730574, 23.302917, 19.758387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.323755, 23.661190, 19.416410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.658516, 23.729771, 19.208487>,  <17.859371, 23.770920, 19.083733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.658516, 23.729771, 19.208487>,  <17.323755, 23.661190, 19.416410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.658516, 23.729771, 19.208487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545445, 0.340512, -0.765860,
		0.045691, 0.924475, 0.378493,
		0.836900, 0.171454, -0.519809,
		17.909586, 23.781206, 19.052544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.260748, 24.347471, 19.095779>,  <17.323755, 23.661190, 19.416410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.260748, 24.347471, 19.095779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.528782, 24.156551, 18.868387>,  <17.689602, 24.042000, 18.731953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.528782, 24.156551, 18.868387>,  <17.260748, 24.347471, 19.095779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.528782, 24.156551, 18.868387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498945, 0.277407, -0.821035,
		0.549579, 0.833806, -0.052260,
		0.670087, -0.477299, -0.568480,
		17.729809, 24.013361, 18.697844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.297577, 24.842989, 18.532204>,  <17.260748, 24.347471, 19.095779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.297577, 24.842989, 18.532204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.479591, 24.504475, 18.421394>,  <17.588800, 24.301367, 18.354908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.479591, 24.504475, 18.421394>,  <17.297577, 24.842989, 18.532204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.479591, 24.504475, 18.421394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480868, 0.028305, -0.876336,
		0.749472, 0.531976, -0.394072,
		0.455036, -0.846286, -0.277024,
		17.616102, 24.250589, 18.338287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545645, 24.885323, 17.854870>,  <17.297577, 24.842989, 18.532204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545645, 24.885323, 17.854870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.473339, 24.495209, 17.905689>,  <17.429956, 24.261141, 17.936182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.473339, 24.495209, 17.905689>,  <17.545645, 24.885323, 17.854870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.473339, 24.495209, 17.905689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407932, -0.043196, -0.911990,
		0.894939, -0.216681, -0.390042,
		-0.180763, -0.975286, 0.127049,
		17.419109, 24.202623, 17.943804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.792257, 24.620750, 17.260481>,  <17.545645, 24.885323, 17.854870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.792257, 24.620750, 17.260481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.534599, 24.353802, 17.409983>,  <17.380005, 24.193632, 17.499683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.534599, 24.353802, 17.409983>,  <17.792257, 24.620750, 17.260481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.534599, 24.353802, 17.409983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583729, 0.113122, -0.804030,
		0.494308, -0.736082, -0.462432,
		-0.644143, -0.667373, 0.373755,
		17.341356, 24.153589, 17.522110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.081934, 24.463549, 16.665588>,  <17.792257, 24.620750, 17.260481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.081934, 24.463549, 16.665588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.270580, 24.768909, 16.489046>,  <18.383768, 24.952126, 16.383120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.270580, 24.768909, 16.489046>,  <18.081934, 24.463549, 16.665588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.270580, 24.768909, 16.489046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345544, 0.300494, 0.888990,
		0.811281, -0.571771, -0.122071,
		0.471617, 0.763401, -0.441357,
		18.412066, 24.997931, 16.356640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.790821, 24.369204, 16.844595>,  <18.081934, 24.463549, 16.665588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.790821, 24.369204, 16.844595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.721439, 24.753143, 16.756409>,  <18.679811, 24.983507, 16.703497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.721439, 24.753143, 16.756409>,  <18.790821, 24.369204, 16.844595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.721439, 24.753143, 16.756409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465833, 0.277195, 0.840335,
		0.867706, 0.043058, -0.495209,
		-0.173453, 0.959849, -0.220466,
		18.669403, 25.041098, 16.690269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.397945, 24.699270, 17.181021>,  <18.790821, 24.369204, 16.844595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.397945, 24.699270, 17.181021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.189129, 25.025269, 17.080416>,  <19.063839, 25.220867, 17.020054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.189129, 25.025269, 17.080416>,  <19.397945, 24.699270, 17.181021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.189129, 25.025269, 17.080416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618627, 0.564807, 0.546163,
		0.587175, 0.129527, -0.799029,
		-0.522040, 0.814995, -0.251512,
		19.032516, 25.269768, 17.004963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.906252, 25.260696, 16.945770>,  <19.397945, 24.699270, 17.181021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.906252, 25.260696, 16.945770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.560783, 25.430031, 17.055214>,  <19.353502, 25.531631, 17.120880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.560783, 25.430031, 17.055214>,  <19.906252, 25.260696, 16.945770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560783, 25.430031, 17.055214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480356, 0.526759, 0.701272,
		0.152748, 0.737097, -0.658298,
		-0.863670, 0.423336, 0.273608,
		19.301682, 25.557032, 17.137297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.938873, 25.952869, 16.970858>,  <19.906252, 25.260696, 16.945770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.938873, 25.952869, 16.970858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.637661, 25.889908, 17.226410>,  <19.456934, 25.852131, 17.379742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.637661, 25.889908, 17.226410>,  <19.938873, 25.952869, 16.970858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.637661, 25.889908, 17.226410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402633, 0.657725, 0.636619,
		-0.520415, 0.736628, -0.431911,
		-0.753031, -0.157404, 0.638881,
		19.411753, 25.842686, 17.418074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.020027, 26.608843, 17.407646>,  <19.938873, 25.952869, 16.970858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.020027, 26.608843, 17.407646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.743927, 26.396137, 17.603924>,  <19.578266, 26.268515, 17.721691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.743927, 26.396137, 17.603924>,  <20.020027, 26.608843, 17.407646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.743927, 26.396137, 17.603924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230627, 0.481102, 0.845785,
		-0.685832, 0.696971, -0.209442,
		-0.690250, -0.531764, 0.490695,
		19.536852, 26.236609, 17.751133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.627424, 27.084688, 17.846909>,  <20.020027, 26.608843, 17.407646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.627424, 27.084688, 17.846909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.640404, 26.713028, 17.994217>,  <19.648191, 26.490032, 18.082602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.640404, 26.713028, 17.994217>,  <19.627424, 27.084688, 17.846909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.640404, 26.713028, 17.994217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321837, 0.358555, 0.876276,
		-0.946239, 0.090089, 0.310670,
		0.032449, -0.929151, 0.368272,
		19.650139, 26.434282, 18.104698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.400606, 27.242191, 18.601292>,  <19.627424, 27.084688, 17.846909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.400606, 27.242191, 18.601292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.554401, 26.873291, 18.585163>,  <19.646679, 26.651951, 18.575487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.554401, 26.873291, 18.585163>,  <19.400606, 27.242191, 18.601292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.554401, 26.873291, 18.585163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489258, 0.166546, 0.856089,
		-0.782813, -0.348881, 0.515253,
		0.384487, -0.922250, -0.040319,
		19.669748, 26.596617, 18.573067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.327507, 27.010193, 19.238838>,  <19.400606, 27.242191, 18.601292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.327507, 27.010193, 19.238838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.622993, 26.790077, 19.083157>,  <19.800285, 26.658009, 18.989748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.622993, 26.790077, 19.083157>,  <19.327507, 27.010193, 19.238838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.622993, 26.790077, 19.083157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524947, 0.107536, 0.844314,
		-0.422762, -0.828022, 0.368311,
		0.738717, -0.550288, -0.389206,
		19.844608, 26.624990, 18.966394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.633341, 26.673555, 19.857941>,  <19.327507, 27.010193, 19.238838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.633341, 26.673555, 19.857941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.888920, 26.669800, 19.550262>,  <20.042267, 26.667545, 19.365656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.888920, 26.669800, 19.550262>,  <19.633341, 26.673555, 19.857941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.888920, 26.669800, 19.550262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750798, 0.225315, 0.620915,
		0.167479, -0.974241, 0.151017,
		0.638947, -0.009393, -0.769193,
		20.080605, 26.666983, 19.319504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233707, 26.092575, 20.034426>,  <19.633341, 26.673555, 19.857941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233707, 26.092575, 20.034426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.388615, 26.323719, 19.747065>,  <20.481558, 26.462404, 19.574648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.388615, 26.323719, 19.747065>,  <20.233707, 26.092575, 20.034426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.388615, 26.323719, 19.747065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735038, 0.276858, 0.618926,
		0.556547, -0.767743, -0.317530,
		0.387265, 0.577858, -0.718405,
		20.504795, 26.497076, 19.531544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.912460, 26.007093, 20.118057>,  <20.233707, 26.092575, 20.034426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.912460, 26.007093, 20.118057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.879227, 26.335163, 19.891638>,  <20.859285, 26.532005, 19.755787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.879227, 26.335163, 19.891638>,  <20.912460, 26.007093, 20.118057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.879227, 26.335163, 19.891638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675940, 0.463756, 0.572744,
		0.732258, -0.335028, -0.592920,
		-0.083085, 0.820175, -0.566048,
		20.854301, 26.581215, 19.721823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.659235, 26.122566, 19.805449>,  <20.912460, 26.007093, 20.118057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.659235, 26.122566, 19.805449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.433090, 26.451759, 19.827599>,  <21.297403, 26.649275, 19.840889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.433090, 26.451759, 19.827599>,  <21.659235, 26.122566, 19.805449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.433090, 26.451759, 19.827599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669557, 0.418681, 0.613515,
		0.481726, 0.383936, -0.787739,
		-0.565361, 0.822982, 0.055377,
		21.263481, 26.698654, 19.844212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.072487, 26.655470, 19.657927>,  <21.659235, 26.122566, 19.805449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.072487, 26.655470, 19.657927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.776466, 26.813484, 19.875650>,  <21.598854, 26.908293, 20.006285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.776466, 26.813484, 19.875650>,  <22.072487, 26.655470, 19.657927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.776466, 26.813484, 19.875650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641275, 0.170530, 0.748122,
		0.202715, 0.902699, -0.379528,
		-0.740049, 0.395038, 0.544309,
		21.554451, 26.931995, 20.038942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.689901, 26.631130, 19.457394>,  <22.072487, 26.655470, 19.657927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.689901, 26.631130, 19.457394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.030708, 26.425308, 19.495968>,  <23.235193, 26.301815, 19.519112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.030708, 26.425308, 19.495968>,  <22.689901, 26.631130, 19.457394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.030708, 26.425308, 19.495968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198064, -0.487347, -0.850449,
		0.484600, 0.705497, -0.517143,
		0.852017, -0.514556, 0.096435,
		23.286314, 26.270941, 19.524899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.992897, 26.495602, 18.753082>,  <22.689901, 26.631130, 19.457394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.992897, 26.495602, 18.753082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.147110, 26.213604, 18.991190>,  <23.239637, 26.044405, 19.134054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.147110, 26.213604, 18.991190>,  <22.992897, 26.495602, 18.753082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.147110, 26.213604, 18.991190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287031, -0.704769, -0.648779,
		0.876914, 0.079264, -0.474067,
		0.385533, -0.704995, 0.595271,
		23.262770, 26.002106, 19.169771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.410168, 26.106310, 18.393564>,  <22.992897, 26.495602, 18.753082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.410168, 26.106310, 18.393564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.308159, 25.848301, 18.681705>,  <23.246954, 25.693497, 18.854591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.308159, 25.848301, 18.681705>,  <23.410168, 26.106310, 18.393564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.308159, 25.848301, 18.681705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339976, -0.637606, -0.691285,
		0.905196, -0.421196, -0.056689,
		-0.255021, -0.645021, 0.720355,
		23.231653, 25.654795, 18.897812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.541630, 25.416904, 18.111094>,  <23.410168, 26.106310, 18.393564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.541630, 25.416904, 18.111094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.311222, 25.348053, 18.430737>,  <23.172977, 25.306742, 18.622522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.311222, 25.348053, 18.430737>,  <23.541630, 25.416904, 18.111094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.311222, 25.348053, 18.430737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544018, -0.648924, -0.531924,
		0.610119, -0.741127, 0.280152,
		-0.576020, -0.172129, 0.799107,
		23.138416, 25.296413, 18.670469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.712191, 24.850475, 18.273815>,  <23.541630, 25.416904, 18.111094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.712191, 24.850475, 18.273815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.342209, 24.909519, 18.413912>,  <23.120220, 24.944944, 18.497971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.342209, 24.909519, 18.413912>,  <23.712191, 24.850475, 18.273815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.342209, 24.909519, 18.413912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305696, -0.836501, -0.454770,
		0.225852, -0.527710, 0.818849,
		-0.924955, 0.147608, 0.350244,
		23.064722, 24.953802, 18.518986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.611412, 24.260504, 18.433867>,  <23.712191, 24.850475, 18.273815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.611412, 24.260504, 18.433867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.257191, 24.441143, 18.390318>,  <23.044657, 24.549526, 18.364189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.257191, 24.441143, 18.390318>,  <23.611412, 24.260504, 18.433867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.257191, 24.441143, 18.390318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321781, -0.765367, -0.557378,
		-0.335036, -0.458557, 0.823090,
		-0.885555, 0.451596, -0.108870,
		22.991524, 24.576622, 18.357656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.237284, 23.603443, 18.244690>,  <23.611412, 24.260504, 18.433867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.237284, 23.603443, 18.244690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.007309, 23.913898, 18.141109>,  <22.869324, 24.100172, 18.078960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.007309, 23.913898, 18.141109>,  <23.237284, 23.603443, 18.244690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.007309, 23.913898, 18.141109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476401, -0.574860, -0.665265,
		-0.665201, -0.259119, 0.700261,
		-0.574935, 0.776140, -0.258953,
		22.834827, 24.146740, 18.063423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.762325, 23.387890, 18.680939>,  <23.237284, 23.603443, 18.244690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.762325, 23.387890, 18.680939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.868439, 23.044571, 18.856644>,  <22.932106, 22.838579, 18.962067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.868439, 23.044571, 18.856644>,  <22.762325, 23.387890, 18.680939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.868439, 23.044571, 18.856644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465761, 0.512980, 0.721053,
		-0.844211, 0.013307, 0.535846,
		0.265283, -0.858297, 0.439262,
		22.948023, 22.787083, 18.988422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.699993, 23.482292, 19.450289>,  <22.762325, 23.387890, 18.680939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.699993, 23.482292, 19.450289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.937550, 23.162991, 19.410128>,  <23.080084, 22.971409, 19.386032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.937550, 23.162991, 19.410128>,  <22.699993, 23.482292, 19.450289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.937550, 23.162991, 19.410128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574442, 0.333348, 0.747593,
		-0.563302, -0.501664, 0.656524,
		0.593892, -0.798256, -0.100401,
		23.115717, 22.923513, 19.380007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.929314, 23.322115, 20.103823>,  <22.699993, 23.482292, 19.450289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.929314, 23.322115, 20.103823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.177284, 23.071735, 19.914560>,  <23.326067, 22.921507, 19.801003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.177284, 23.071735, 19.914560>,  <22.929314, 23.322115, 20.103823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.177284, 23.071735, 19.914560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665717, 0.100384, 0.739421,
		-0.415345, -0.773375, 0.478937,
		0.619927, -0.625951, -0.473155,
		23.363262, 22.883949, 19.772614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.246605, 22.963617, 20.548098>,  <22.929314, 23.322115, 20.103823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.246605, 22.963617, 20.548098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.515545, 22.914886, 20.256042>,  <23.676908, 22.885649, 20.080809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.515545, 22.914886, 20.256042>,  <23.246605, 22.963617, 20.548098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.515545, 22.914886, 20.256042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737236, 0.198864, 0.645705,
		0.066535, -0.972425, 0.223521,
		0.672351, -0.121826, -0.730139,
		23.717251, 22.878338, 20.037001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.774773, 22.591675, 20.886429>,  <23.246605, 22.963617, 20.548098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.774773, 22.591675, 20.886429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.916714, 22.778774, 20.562630>,  <24.001879, 22.891033, 20.368349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.916714, 22.778774, 20.562630>,  <23.774773, 22.591675, 20.886429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.916714, 22.778774, 20.562630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766401, 0.350356, 0.538405,
		0.535452, -0.811456, -0.234158,
		0.354854, 0.467749, -0.809500,
		24.023170, 22.919100, 20.319780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.424587, 22.423075, 20.919338>,  <23.774773, 22.591675, 20.886429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.424587, 22.423075, 20.919338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.404694, 22.756775, 20.699684>,  <24.392757, 22.956995, 20.567892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.404694, 22.756775, 20.699684>,  <24.424587, 22.423075, 20.919338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.404694, 22.756775, 20.699684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795196, 0.365746, 0.483625,
		0.604309, -0.412618, -0.681584,
		-0.049734, 0.834252, -0.549136,
		24.389772, 23.007051, 20.534943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078991, 22.454065, 20.619184>,  <24.424587, 22.423075, 20.919338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078991, 22.454065, 20.619184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.921650, 22.821812, 20.621851>,  <24.827246, 23.042459, 20.623451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.921650, 22.821812, 20.621851>,  <25.078991, 22.454065, 20.619184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921650, 22.821812, 20.621851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686545, 0.288902, 0.667227,
		0.611498, 0.267031, -0.744825,
		-0.393351, 0.919364, 0.006666,
		24.803644, 23.097620, 20.623852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631016, 22.881760, 20.533260>,  <25.078991, 22.454065, 20.619184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631016, 22.881760, 20.533260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.339020, 23.107246, 20.687838>,  <25.163822, 23.242538, 20.780584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.339020, 23.107246, 20.687838>,  <25.631016, 22.881760, 20.533260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339020, 23.107246, 20.687838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656027, 0.419345, 0.627517,
		0.191690, 0.711598, -0.675931,
		-0.729989, 0.563718, 0.386443,
		25.120024, 23.276361, 20.803770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769159, 23.580812, 20.550253>,  <25.631016, 22.881760, 20.533260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769159, 23.580812, 20.550253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.537838, 23.472847, 20.858204>,  <25.399044, 23.408068, 21.042974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.537838, 23.472847, 20.858204>,  <25.769159, 23.580812, 20.550253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.537838, 23.472847, 20.858204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739489, 0.225125, 0.634409,
		-0.344555, 0.936197, 0.069408,
		-0.578306, -0.269915, 0.769875,
		25.364346, 23.391872, 21.089167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.100679, 15.592836, 9.307170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.949398, 15.504574, 9.666786>,  <16.858629, 15.451616, 9.882556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.949398, 15.504574, 9.666786>,  <17.100679, 15.592836, 9.307170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.949398, 15.504574, 9.666786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672956, 0.601363, 0.430689,
		-0.635684, 0.767902, -0.078945,
		-0.378202, -0.220656, 0.899041,
		16.835938, 15.438377, 9.936499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955038, 16.176233, 9.737616>,  <17.100679, 15.592836, 9.307170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.955038, 16.176233, 9.737616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.005257, 15.881702, 10.003566>,  <17.035389, 15.704984, 10.163136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.005257, 15.881702, 10.003566>,  <16.955038, 16.176233, 9.737616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.005257, 15.881702, 10.003566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734424, 0.519540, 0.436692,
		-0.666978, 0.433474, 0.606004,
		0.125548, -0.736328, 0.664875,
		17.042921, 15.660804, 10.203029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161640, 16.517271, 10.309673>,  <16.955038, 16.176233, 9.737616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.161640, 16.517271, 10.309673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.269932, 16.150150, 10.425844>,  <17.334908, 15.929878, 10.495546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.269932, 16.150150, 10.425844>,  <17.161640, 16.517271, 10.309673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.269932, 16.150150, 10.425844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661258, 0.396556, 0.636775,
		-0.699602, 0.019653, 0.714262,
		0.270730, -0.917800, 0.290427,
		17.351151, 15.874810, 10.512972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.175571, 16.556389, 10.980137>,  <17.161640, 16.517271, 10.309673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.175571, 16.556389, 10.980137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.400356, 16.230305, 10.924098>,  <17.535227, 16.034655, 10.890475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.400356, 16.230305, 10.924098>,  <17.175571, 16.556389, 10.980137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.400356, 16.230305, 10.924098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465425, 0.171621, 0.868289,
		-0.683796, -0.553151, 0.475865,
		0.561963, -0.815212, -0.140096,
		17.568945, 15.985742, 10.882069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.265787, 16.220118, 11.630663>,  <17.175571, 16.556389, 10.980137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.265787, 16.220118, 11.630663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.581779, 16.104187, 11.414540>,  <17.771376, 16.034628, 11.284866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.581779, 16.104187, 11.414540>,  <17.265787, 16.220118, 11.630663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.581779, 16.104187, 11.414540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590996, 0.125293, 0.796885,
		-0.163263, -0.948842, 0.270266,
		0.789981, -0.289828, -0.540306,
		17.818773, 16.017239, 11.252448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.645620, 15.937660, 12.166797>,  <17.265787, 16.220118, 11.630663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.645620, 15.937660, 12.166797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.920559, 15.994370, 11.881853>,  <18.085522, 16.028395, 11.710887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.920559, 15.994370, 11.881853>,  <17.645620, 15.937660, 12.166797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.920559, 15.994370, 11.881853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613914, 0.410727, 0.674102,
		0.388150, -0.900670, 0.195279,
		0.687349, 0.141768, -0.712358,
		18.126762, 16.036901, 11.668145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.302465, 15.807979, 12.462567>,  <17.645620, 15.937660, 12.166797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.302465, 15.807979, 12.462567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.415573, 16.015820, 12.140063>,  <18.483437, 16.140524, 11.946561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.415573, 16.015820, 12.140063>,  <18.302465, 15.807979, 12.462567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.415573, 16.015820, 12.140063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607401, 0.553557, 0.569771,
		0.742365, -0.650836, -0.159079,
		0.282768, 0.519603, -0.806260,
		18.500404, 16.171700, 11.898186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.025019, 15.806019, 12.469846>,  <18.302465, 15.807979, 12.462567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.025019, 15.806019, 12.469846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.906097, 16.119160, 12.251213>,  <18.834745, 16.307045, 12.120033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.906097, 16.119160, 12.251213>,  <19.025019, 15.806019, 12.469846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.906097, 16.119160, 12.251213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581236, 0.602565, 0.546882,
		0.757479, -0.155103, -0.634167,
		-0.297304, 0.782853, -0.546582,
		18.816906, 16.354015, 12.087238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.652962, 16.105501, 12.294956>,  <19.025019, 15.806019, 12.469846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.652962, 16.105501, 12.294956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.369484, 16.385189, 12.257339>,  <19.199396, 16.553001, 12.234769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.369484, 16.385189, 12.257339>,  <19.652962, 16.105501, 12.294956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369484, 16.385189, 12.257339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575175, 0.649806, 0.496915,
		0.408562, 0.298071, -0.862688,
		-0.708696, 0.699218, -0.094043,
		19.156876, 16.594954, 12.229127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.067522, 16.675499, 12.024111>,  <19.652962, 16.105501, 12.294956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.067522, 16.675499, 12.024111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.721027, 16.792881, 12.185862>,  <19.513130, 16.863310, 12.282912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.721027, 16.792881, 12.185862>,  <20.067522, 16.675499, 12.024111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.721027, 16.792881, 12.185862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486761, 0.678215, 0.550534,
		-0.112697, 0.673727, -0.730336,
		-0.866235, 0.293455, 0.404377,
		19.461157, 16.880919, 12.307175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.358120, 17.373850, 12.177471>,  <20.067522, 16.675499, 12.024111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.358120, 17.373850, 12.177471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.998402, 17.371204, 12.352387>,  <19.782570, 17.369617, 12.457337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.998402, 17.371204, 12.352387>,  <20.358120, 17.373850, 12.177471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.998402, 17.371204, 12.352387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311231, 0.692779, 0.650533,
		-0.307250, 0.721120, -0.620954,
		-0.899296, -0.006616, 0.437291,
		19.728613, 17.369219, 12.483575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.919640, 18.040833, 12.198259>,  <20.358120, 17.373850, 12.177471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.919640, 18.040833, 12.198259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.834011, 17.816864, 12.518424>,  <19.782635, 17.682482, 12.710523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.834011, 17.816864, 12.518424>,  <19.919640, 18.040833, 12.198259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.834011, 17.816864, 12.518424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439064, 0.676813, 0.590887,
		-0.872580, 0.477924, 0.100956,
		-0.214071, -0.559922, 0.800413,
		19.769791, 17.648888, 12.758548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.617161, 18.727489, 12.163017>,  <19.919640, 18.040833, 12.198259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.617161, 18.727489, 12.163017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.759033, 18.927040, 11.846707>,  <19.844156, 19.046770, 11.656921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.759033, 18.927040, 11.846707>,  <19.617161, 18.727489, 12.163017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.759033, 18.927040, 11.846707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435124, -0.660520, -0.611866,
		-0.827567, 0.561103, -0.017203,
		0.354683, 0.498875, -0.790774,
		19.865438, 19.076702, 11.609475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.072630, 18.624933, 11.554745>,  <19.617161, 18.727489, 12.163017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.072630, 18.624933, 11.554745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.386726, 18.790958, 11.370955>,  <19.575184, 18.890574, 11.260680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.386726, 18.790958, 11.370955>,  <19.072630, 18.624933, 11.554745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.386726, 18.790958, 11.370955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296267, -0.399743, -0.867428,
		-0.543710, 0.817268, -0.190925,
		0.785242, 0.415064, -0.459474,
		19.622299, 18.915478, 11.233112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762045, 18.928810, 11.013948>,  <19.072630, 18.624933, 11.554745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.762045, 18.928810, 11.013948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.145695, 18.858681, 10.925093>,  <19.375885, 18.816603, 10.871779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.145695, 18.858681, 10.925093>,  <18.762045, 18.928810, 11.013948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.145695, 18.858681, 10.925093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267829, -0.308879, -0.912612,
		0.091390, 0.934802, -0.343210,
		0.959122, -0.175326, -0.222138,
		19.433432, 18.806084, 10.858451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.802853, 19.241943, 10.412598>,  <18.762045, 18.928810, 11.013948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.802853, 19.241943, 10.412598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.120556, 18.999027, 10.405095>,  <19.311178, 18.853277, 10.400594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.120556, 18.999027, 10.405095>,  <18.802853, 19.241943, 10.412598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.120556, 18.999027, 10.405095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163251, -0.183575, -0.969355,
		0.585235, 0.772982, -0.244947,
		0.794260, -0.607289, -0.018756,
		19.358833, 18.816841, 10.399468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.301739, 19.456305, 9.860668>,  <18.802853, 19.241943, 10.412598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.301739, 19.456305, 9.860668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.403904, 19.074059, 9.919408>,  <19.465204, 18.844711, 9.954652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.403904, 19.074059, 9.919408>,  <19.301739, 19.456305, 9.860668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.403904, 19.074059, 9.919408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068240, -0.169327, -0.983195,
		0.964420, 0.241101, -0.108460,
		0.255414, -0.955614, 0.146849,
		19.480528, 18.787374, 9.963463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745546, 19.349045, 9.333629>,  <19.301739, 19.456305, 9.860668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745546, 19.349045, 9.333629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.634735, 18.990185, 9.471251>,  <19.568249, 18.774868, 9.553825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.634735, 18.990185, 9.471251>,  <19.745546, 19.349045, 9.333629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.634735, 18.990185, 9.471251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015092, -0.362089, -0.932021,
		0.960743, -0.253005, 0.113849,
		-0.277030, -0.897151, 0.344056,
		19.551626, 18.721039, 9.574469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.212078, 18.856855, 9.063138>,  <19.745546, 19.349045, 9.333629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.212078, 18.856855, 9.063138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.862156, 18.676956, 9.135188>,  <19.652203, 18.569017, 9.178418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.862156, 18.676956, 9.135188>,  <20.212078, 18.856855, 9.063138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.862156, 18.676956, 9.135188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089387, -0.215578, -0.972387,
		0.476159, -0.866749, 0.148387,
		-0.874805, -0.449747, 0.180126,
		19.599714, 18.542032, 9.189226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.183687, 18.485363, 8.503517>,  <20.212078, 18.856855, 9.063138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.183687, 18.485363, 8.503517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.812943, 18.438751, 8.646259>,  <19.590496, 18.410784, 8.731905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.812943, 18.438751, 8.646259>,  <20.183687, 18.485363, 8.503517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.812943, 18.438751, 8.646259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323647, -0.233598, -0.916888,
		0.190207, -0.965325, 0.178799,
		-0.926863, -0.116531, 0.356856,
		19.534883, 18.403791, 8.753316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.899323, 18.240545, 7.941475>,  <20.183687, 18.485363, 8.503517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.899323, 18.240545, 7.941475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.582848, 18.309456, 8.176199>,  <19.392963, 18.350801, 8.317033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.582848, 18.309456, 8.176199>,  <19.899323, 18.240545, 7.941475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.582848, 18.309456, 8.176199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590330, 0.035576, -0.806378,
		-0.159796, -0.984406, 0.073553,
		-0.791186, 0.172277, 0.586809,
		19.345491, 18.361137, 8.352242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.364689, 17.880484, 7.700441>,  <19.899323, 18.240545, 7.941475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.364689, 17.880484, 7.700441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.206295, 18.197067, 7.886684>,  <19.111259, 18.387016, 7.998430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.206295, 18.197067, 7.886684>,  <19.364689, 17.880484, 7.700441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.206295, 18.197067, 7.886684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592195, 0.167410, -0.788213,
		-0.701784, -0.587851, 0.402405,
		-0.395985, 0.791458, 0.465608,
		19.087500, 18.434505, 8.026367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.655054, 17.828680, 7.646797>,  <19.364689, 17.880484, 7.700441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.655054, 17.828680, 7.646797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.726700, 18.214821, 7.722708>,  <18.769688, 18.446505, 7.768254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.726700, 18.214821, 7.722708>,  <18.655054, 17.828680, 7.646797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.726700, 18.214821, 7.722708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622871, 0.260584, -0.737650,
		-0.761544, 0.013918, 0.647964,
		0.179115, 0.965351, 0.189778,
		18.780434, 18.504427, 7.779641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.004681, 18.121988, 7.519237>,  <18.655054, 17.828680, 7.646797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.004681, 18.121988, 7.519237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.278069, 18.410931, 7.477149>,  <18.442102, 18.584295, 7.451896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.278069, 18.410931, 7.477149>,  <18.004681, 18.121988, 7.519237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.278069, 18.410931, 7.477149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558549, 0.424700, -0.712498,
		-0.469989, 0.545743, 0.693740,
		0.683472, 0.722354, -0.105220,
		18.483110, 18.627636, 7.445583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.603699, 18.748877, 7.515062>,  <18.004681, 18.121988, 7.519237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.603699, 18.748877, 7.515062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.936554, 18.848118, 7.316671>,  <18.136267, 18.907661, 7.197637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.936554, 18.848118, 7.316671>,  <17.603699, 18.748877, 7.515062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.936554, 18.848118, 7.316671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553746, 0.323003, -0.767486,
		-0.030212, 0.913298, 0.406168,
		0.832137, 0.248102, -0.495977,
		18.186195, 18.922548, 7.167878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.442711, 19.502775, 7.311858>,  <17.603699, 18.748877, 7.515062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.442711, 19.502775, 7.311858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.737041, 19.331085, 7.102354>,  <17.913641, 19.228071, 6.976652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.737041, 19.331085, 7.102354>,  <17.442711, 19.502775, 7.311858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.737041, 19.331085, 7.102354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462547, 0.246317, -0.851691,
		0.494579, 0.868961, -0.017290,
		0.735827, -0.429226, -0.523759,
		17.957790, 19.202318, 6.945227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.474899, 19.714642, 6.543866>,  <17.442711, 19.502775, 7.311858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.474899, 19.714642, 6.543866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.788105, 19.918159, 6.686981>,  <17.976028, 20.040270, 6.772851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.788105, 19.918159, 6.686981>,  <17.474899, 19.714642, 6.543866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.788105, 19.918159, 6.686981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588116, -0.792879, -0.159568,
		0.202496, 0.335366, -0.920068,
		0.783016, 0.508795, 0.357789,
		18.023010, 20.070799, 6.794318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901262, 20.209927, 6.625018>,  <17.474899, 19.714642, 6.543866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.901262, 20.209927, 6.625018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.801434, 20.020134, 6.962677>,  <16.741537, 19.906260, 7.165272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.801434, 20.020134, 6.962677>,  <16.901262, 20.209927, 6.625018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.801434, 20.020134, 6.962677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007635, 0.870740, 0.491684,
		-0.968327, 0.129154, -0.213688,
		-0.249570, -0.474479, 0.844147,
		16.726562, 19.877790, 7.215921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.871481, 20.788486, 7.011336>,  <16.901262, 20.209927, 6.625018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.871481, 20.788486, 7.011336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.814003, 20.516663, 7.299100>,  <16.779516, 20.353567, 7.471758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.814003, 20.516663, 7.299100>,  <16.871481, 20.788486, 7.011336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.814003, 20.516663, 7.299100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018352, 0.728658, 0.684632,
		-0.989452, 0.085174, -0.117174,
		-0.143693, -0.679561, 0.719409,
		16.770895, 20.312794, 7.514923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.465334, 21.127310, 7.382284>,  <16.871481, 20.788486, 7.011336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.465334, 21.127310, 7.382284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.621872, 20.854164, 7.629038>,  <16.715796, 20.690277, 7.777090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.621872, 20.854164, 7.629038>,  <16.465334, 21.127310, 7.382284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.621872, 20.854164, 7.629038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090662, 0.695697, 0.712591,
		-0.915766, -0.222942, 0.334169,
		0.391347, -0.682863, 0.616884,
		16.739277, 20.649305, 7.814103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223654, 21.258421, 8.026162>,  <16.465334, 21.127310, 7.382284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223654, 21.258421, 8.026162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.551399, 21.046738, 8.114326>,  <16.748047, 20.919727, 8.167224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.551399, 21.046738, 8.114326>,  <16.223654, 21.258421, 8.026162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.551399, 21.046738, 8.114326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309507, 0.731991, 0.606955,
		-0.482544, -0.429098, 0.763561,
		0.819363, -0.529210, 0.220409,
		16.797209, 20.887974, 8.180449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262587, 21.185911, 8.712934>,  <16.223654, 21.258421, 8.026162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262587, 21.185911, 8.712934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.645943, 21.093731, 8.645542>,  <16.875956, 21.038424, 8.605107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.645943, 21.093731, 8.645542>,  <16.262587, 21.185911, 8.712934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.645943, 21.093731, 8.645542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252594, 0.409618, 0.876589,
		-0.132999, -0.882669, 0.450784,
		0.958388, -0.230451, -0.168478,
		16.933458, 21.024595, 8.594998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507154, 20.952427, 9.325533>,  <16.262587, 21.185911, 8.712934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.507154, 20.952427, 9.325533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.841236, 21.059708, 9.133491>,  <17.041685, 21.124077, 9.018266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.841236, 21.059708, 9.133491>,  <16.507154, 20.952427, 9.325533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.841236, 21.059708, 9.133491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307856, 0.495383, 0.812293,
		0.455692, -0.826235, 0.331180,
		0.835206, 0.268200, -0.480104,
		17.091797, 21.140169, 8.989459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074476, 20.946171, 9.774993>,  <16.507154, 20.952427, 9.325533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.074476, 20.946171, 9.774993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.241734, 21.159843, 9.481106>,  <17.342087, 21.288046, 9.304773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.241734, 21.159843, 9.481106>,  <17.074476, 20.946171, 9.774993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.241734, 21.159843, 9.481106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499774, 0.540118, 0.677125,
		0.758540, -0.650327, -0.041124,
		0.418141, 0.534179, -0.734718,
		17.367176, 21.320097, 9.260691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.808464, 20.972115, 9.896957>,  <17.074476, 20.946171, 9.774993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.808464, 20.972115, 9.896957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.712658, 21.283314, 9.664630>,  <17.655174, 21.470034, 9.525233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.712658, 21.283314, 9.664630>,  <17.808464, 20.972115, 9.896957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.712658, 21.283314, 9.664630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353199, 0.627064, 0.694292,
		0.904369, -0.038851, -0.424980,
		-0.239516, 0.777998, -0.580819,
		17.640802, 21.516714, 9.490384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.280323, 21.461794, 10.053109>,  <17.808464, 20.972115, 9.896957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.280323, 21.461794, 10.053109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.997330, 21.686653, 9.881781>,  <17.827534, 21.821568, 9.778983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.997330, 21.686653, 9.881781>,  <18.280323, 21.461794, 10.053109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.997330, 21.686653, 9.881781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295374, 0.785786, 0.543410,
		0.642045, 0.257939, -0.721974,
		-0.707483, 0.562146, -0.428321,
		17.785086, 21.855297, 9.753284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.651648, 22.062323, 10.011866>,  <18.280323, 21.461794, 10.053109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.651648, 22.062323, 10.011866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.263126, 22.145031, 9.964849>,  <18.030014, 22.194656, 9.936638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.263126, 22.145031, 9.964849>,  <18.651648, 22.062323, 10.011866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.263126, 22.145031, 9.964849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114199, 0.838940, 0.532107,
		0.208635, 0.503414, -0.838478,
		-0.971303, 0.206770, -0.117543,
		17.971735, 22.207062, 9.929585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.616325, 22.791374, 9.788828>,  <18.651648, 22.062323, 10.011866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.616325, 22.791374, 9.788828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.260288, 22.707302, 9.950597>,  <18.046665, 22.656858, 10.047658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.260288, 22.707302, 9.950597>,  <18.616325, 22.791374, 9.788828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.260288, 22.707302, 9.950597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109550, 0.762652, 0.637464,
		-0.442415, 0.611707, -0.655807,
		-0.890094, -0.210180, 0.404422,
		17.993259, 22.644249, 10.071923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.279951, 23.493460, 9.889428>,  <18.616325, 22.791374, 9.788828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.279951, 23.493460, 9.889428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.105595, 23.209122, 10.110226>,  <18.000980, 23.038519, 10.242704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.105595, 23.209122, 10.110226>,  <18.279951, 23.493460, 9.889428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.105595, 23.209122, 10.110226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045793, 0.595017, 0.802408,
		-0.898833, 0.375040, -0.226811,
		-0.435892, -0.710845, 0.551995,
		17.974827, 22.995869, 10.275825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.679134, 23.791782, 10.349793>,  <18.279951, 23.493460, 9.889428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.679134, 23.791782, 10.349793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.797443, 23.458881, 10.537356>,  <17.868429, 23.259140, 10.649894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.797443, 23.458881, 10.537356>,  <17.679134, 23.791782, 10.349793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.797443, 23.458881, 10.537356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006382, 0.489137, 0.872184,
		-0.955237, -0.260962, 0.139362,
		0.295774, -0.832252, 0.468907,
		17.886175, 23.209206, 10.678028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204605, 23.898516, 10.822395>,  <17.679134, 23.791782, 10.349793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.204605, 23.898516, 10.822395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.483479, 23.633091, 10.930929>,  <17.650803, 23.473837, 10.996049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.483479, 23.633091, 10.930929>,  <17.204605, 23.898516, 10.822395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.483479, 23.633091, 10.930929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146590, 0.502444, 0.852093,
		-0.701744, -0.554291, 0.447567,
		0.697185, -0.663560, 0.271334,
		17.692635, 23.434023, 11.012329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.953718, 23.714291, 11.452170>,  <17.204605, 23.898516, 10.822395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.953718, 23.714291, 11.452170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.345131, 23.632744, 11.440076>,  <17.579979, 23.583817, 11.432819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.345131, 23.632744, 11.440076>,  <16.953718, 23.714291, 11.452170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.345131, 23.632744, 11.440076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095321, 0.317601, 0.943421,
		-0.182729, -0.926049, 0.330216,
		0.978531, -0.203867, -0.030237,
		17.638691, 23.571583, 11.431005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019402, 23.395044, 12.115225>,  <16.953718, 23.714291, 11.452170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.019402, 23.395044, 12.115225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.390617, 23.482414, 11.994539>,  <17.613348, 23.534836, 11.922128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.390617, 23.482414, 11.994539>,  <17.019402, 23.395044, 12.115225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.390617, 23.482414, 11.994539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163844, 0.488053, 0.857298,
		0.334508, -0.845041, 0.417146,
		0.928041, 0.218426, -0.301713,
		17.669029, 23.547943, 11.904025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.496443, 23.135036, 12.710935>,  <17.019402, 23.395044, 12.115225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.496443, 23.135036, 12.710935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.707874, 23.394157, 12.491496>,  <17.834734, 23.549629, 12.359833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.707874, 23.394157, 12.491496>,  <17.496443, 23.135036, 12.710935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.707874, 23.394157, 12.491496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291618, 0.468354, 0.834028,
		0.797221, -0.600831, 0.058652,
		0.528580, 0.647801, -0.548595,
		17.866447, 23.588497, 12.326918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.207472, 23.083775, 12.917080>,  <17.496443, 23.135036, 12.710935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.207472, 23.083775, 12.917080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.147404, 23.446255, 12.758967>,  <18.111362, 23.663744, 12.664100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.147404, 23.446255, 12.758967>,  <18.207472, 23.083775, 12.917080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.147404, 23.446255, 12.758967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258492, 0.421896, 0.869014,
		0.954270, 0.028322, -0.297601,
		-0.150169, 0.906202, -0.395282,
		18.102352, 23.718115, 12.640383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.763264, 23.483696, 13.099521>,  <18.207472, 23.083775, 12.917080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.763264, 23.483696, 13.099521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.518482, 23.779911, 12.988441>,  <18.371614, 23.957640, 12.921792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.518482, 23.779911, 12.988441>,  <18.763264, 23.483696, 13.099521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.518482, 23.779911, 12.988441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159483, 0.459452, 0.873767,
		0.774648, 0.490416, -0.399266,
		-0.611953, 0.740538, -0.277700,
		18.334896, 24.002073, 12.905130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.128176, 24.020950, 13.185996>,  <18.763264, 23.483696, 13.099521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.128176, 24.020950, 13.185996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.748714, 24.147068, 13.196179>,  <18.521038, 24.222738, 13.202290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.748714, 24.147068, 13.196179>,  <19.128176, 24.020950, 13.185996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.748714, 24.147068, 13.196179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173039, 0.449891, 0.876160,
		0.264795, 0.835576, -0.481348,
		-0.948652, 0.315295, 0.025459,
		18.464119, 24.241657, 13.203817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.178698, 24.541855, 13.520878>,  <19.128176, 24.020950, 13.185996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.178698, 24.541855, 13.520878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.780296, 24.507233, 13.529733>,  <18.541256, 24.486460, 13.535046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.780296, 24.507233, 13.529733>,  <19.178698, 24.541855, 13.520878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.780296, 24.507233, 13.529733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025743, 0.515313, 0.856615,
		-0.085554, 0.852620, -0.515480,
		-0.996001, -0.086557, 0.022138,
		18.481497, 24.481266, 13.536374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.871098, 25.153828, 13.645407>,  <19.178698, 24.541855, 13.520878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.871098, 25.153828, 13.645407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.629902, 24.876129, 13.802594>,  <18.485186, 24.709509, 13.896907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.629902, 24.876129, 13.802594>,  <18.871098, 25.153828, 13.645407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.629902, 24.876129, 13.802594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004896, 0.489367, 0.872064,
		-0.797735, 0.527768, -0.291683,
		-0.602988, -0.694248, 0.392969,
		18.449005, 24.667854, 13.920485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.428448, 25.587109, 14.028109>,  <18.871098, 25.153828, 13.645407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.428448, 25.587109, 14.028109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.390106, 25.211037, 14.158874>,  <18.367102, 24.985394, 14.237332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.390106, 25.211037, 14.158874>,  <18.428448, 25.587109, 14.028109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.390106, 25.211037, 14.158874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168602, 0.339016, 0.925550,
		-0.981012, 0.033602, -0.191013,
		-0.095856, -0.940181, 0.326913,
		18.361349, 24.928982, 14.256948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.006647, 25.648140, 14.524999>,  <18.428448, 25.587109, 14.028109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.006647, 25.648140, 14.524999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.139313, 25.278522, 14.601045>,  <18.218912, 25.056753, 14.646672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.139313, 25.278522, 14.601045>,  <18.006647, 25.648140, 14.524999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.139313, 25.278522, 14.601045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156129, 0.144981, 0.977039,
		-0.930388, -0.353731, -0.096185,
		0.331664, -0.924043, 0.190116,
		18.238811, 25.001310, 14.658079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.517015, 25.411341, 14.969594>,  <18.006647, 25.648140, 14.524999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.517015, 25.411341, 14.969594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.837051, 25.176113, 15.016978>,  <18.029074, 25.034977, 15.045408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.837051, 25.176113, 15.016978>,  <17.517015, 25.411341, 14.969594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.837051, 25.176113, 15.016978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059066, 0.119285, 0.991102,
		-0.596965, -0.799967, 0.060704,
		0.800090, -0.588068, 0.118460,
		18.077078, 24.999693, 15.052516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.411507, 25.069197, 15.580147>,  <17.517015, 25.411341, 14.969594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.411507, 25.069197, 15.580147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.805351, 25.026505, 15.524793>,  <18.041658, 25.000889, 15.491580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.805351, 25.026505, 15.524793>,  <17.411507, 25.069197, 15.580147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.805351, 25.026505, 15.524793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142612, 0.033011, 0.989228,
		-0.101013, -0.993740, 0.047724,
		0.984610, -0.106730, -0.138385,
		18.100735, 24.994486, 15.483277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.624397, 24.658134, 16.106365>,  <17.411507, 25.069197, 15.580147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.624397, 24.658134, 16.106365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.959045, 24.844860, 15.991717>,  <18.159834, 24.956896, 15.922929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.959045, 24.844860, 15.991717>,  <17.624397, 24.658134, 16.106365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.959045, 24.844860, 15.991717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254824, 0.131511, 0.958003,
		0.484905, -0.874521, -0.008932,
		0.836619, 0.466816, -0.286619,
		18.210032, 24.984905, 15.905731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.412632, 24.083223, 16.554089>,  <17.624397, 24.658134, 16.106365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.412632, 24.083223, 16.554089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.213680, 23.963329, 16.879732>,  <17.094309, 23.891394, 17.075119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.213680, 23.963329, 16.879732>,  <17.412632, 24.083223, 16.554089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.213680, 23.963329, 16.879732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844666, -0.046732, -0.533250,
		0.197878, -0.952878, -0.229931,
		-0.497377, -0.299733, 0.814110,
		17.064466, 23.873409, 17.123964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.218355, 23.449654, 16.426031>,  <17.412632, 24.083223, 16.554089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.218355, 23.449654, 16.426031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.979259, 23.601421, 16.708519>,  <16.835802, 23.692482, 16.878012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.979259, 23.601421, 16.708519>,  <17.218355, 23.449654, 16.426031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979259, 23.601421, 16.708519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799992, -0.339600, -0.494655,
		0.052151, -0.860647, 0.506525,
		-0.597740, 0.379419, 0.706222,
		16.799938, 23.715248, 16.920385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.852106, 22.956686, 16.630199>,  <17.218355, 23.449654, 16.426031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.852106, 22.956686, 16.630199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.635841, 23.282436, 16.714556>,  <16.506083, 23.477886, 16.765169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.635841, 23.282436, 16.714556>,  <16.852106, 22.956686, 16.630199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.635841, 23.282436, 16.714556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782460, -0.394760, -0.481582,
		-0.308937, -0.425387, 0.850649,
		-0.540661, 0.814377, 0.210893,
		16.473642, 23.526749, 16.777824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330908, 22.606861, 16.870180>,  <16.852106, 22.956686, 16.630199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.330908, 22.606861, 16.870180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.216179, 22.979126, 16.779318>,  <16.147341, 23.202484, 16.724800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.216179, 22.979126, 16.779318>,  <16.330908, 22.606861, 16.870180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.216179, 22.979126, 16.779318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797011, -0.363383, -0.482417,
		-0.531512, 0.042678, 0.845975,
		-0.286824, 0.930662, -0.227157,
		16.130131, 23.258324, 16.711170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.673787, 22.589212, 16.969465>,  <16.330908, 22.606861, 16.870180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.673787, 22.589212, 16.969465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.748624, 22.898167, 16.726677>,  <15.793526, 23.083540, 16.581003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.748624, 22.898167, 16.726677>,  <15.673787, 22.589212, 16.969465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.748624, 22.898167, 16.726677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626008, -0.382425, -0.679606,
		-0.757040, 0.507119, 0.411972,
		0.187092, 0.772387, -0.606972,
		15.804751, 23.129883, 16.544586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
