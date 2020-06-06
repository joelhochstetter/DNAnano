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
	<22.816536, 17.306839, -2.776676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.846447, 17.288799, -2.378204>,  <22.864393, 17.277975, -2.139121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.846447, 17.288799, -2.378204>,  <22.816536, 17.306839, -2.776676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.846447, 17.288799, -2.378204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825101, 0.558215, 0.087206,
		-0.560016, -0.828470, 0.004529,
		0.074775, -0.045100, 0.996180,
		22.868879, 17.275269, -2.079350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.222759, 17.042130, -2.483317>,  <22.816536, 17.306839, -2.776676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.222759, 17.042130, -2.483317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403572, 17.292515, -2.229124>,  <22.512060, 17.442745, -2.076608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403572, 17.292515, -2.229124>,  <22.222759, 17.042130, -2.483317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.403572, 17.292515, -2.229124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815410, 0.578799, 0.009891,
		-0.361625, -0.522651, 0.772051,
		0.452032, 0.625961, 0.635483,
		22.539183, 17.480303, -2.038479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.844202, 17.158279, -1.821020>,  <22.222759, 17.042130, -2.483317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.844202, 17.158279, -1.821020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.068226, 17.485527, -1.873197>,  <22.202641, 17.681875, -1.904503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.068226, 17.485527, -1.873197>,  <21.844202, 17.158279, -1.821020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.068226, 17.485527, -1.873197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791889, 0.574922, 0.205856,
		0.243409, -0.011996, 0.969850,
		0.560058, 0.818120, -0.130441,
		22.236242, 17.730963, -1.912329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.041098, 17.459068, -1.154277>,  <21.844202, 17.158279, -1.821020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.041098, 17.459068, -1.154277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.978146, 17.688446, -1.475870>,  <21.940374, 17.826073, -1.668827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.978146, 17.688446, -1.475870>,  <22.041098, 17.459068, -1.154277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.978146, 17.688446, -1.475870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831291, 0.362552, 0.421320,
		0.533091, 0.734653, 0.419642,
		-0.157382, 0.573446, -0.803984,
		21.930931, 17.860479, -1.717066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.060663, 18.156136, -1.026958>,  <22.041098, 17.459068, -1.154277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.060663, 18.156136, -1.026958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.792889, 18.095821, -1.317919>,  <21.632223, 18.059633, -1.492496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.792889, 18.095821, -1.317919>,  <22.060663, 18.156136, -1.026958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.792889, 18.095821, -1.317919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668217, 0.550032, 0.500950,
		0.324559, 0.821419, -0.468970,
		-0.669438, -0.150786, -0.727404,
		21.592056, 18.050585, -1.536140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.725424, 18.777344, -1.363631>,  <22.060663, 18.156136, -1.026958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.725424, 18.777344, -1.363631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.461281, 18.478329, -1.392239>,  <21.302795, 18.298920, -1.409404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.461281, 18.478329, -1.392239>,  <21.725424, 18.777344, -1.363631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.461281, 18.478329, -1.392239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628113, 0.497627, 0.598199,
		-0.411587, 0.439947, -0.798150,
		-0.660357, -0.747539, -0.071520,
		21.263174, 18.254066, -1.413695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.120737, 19.066534, -1.524056>,  <21.725424, 18.777344, -1.363631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.120737, 19.066534, -1.524056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.058456, 18.712704, -1.348198>,  <21.021088, 18.500406, -1.242684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.058456, 18.712704, -1.348198>,  <21.120737, 19.066534, -1.524056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.058456, 18.712704, -1.348198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628824, 0.432000, 0.646496,
		-0.761799, -0.175799, -0.623503,
		-0.155700, -0.884574, 0.439644,
		21.011745, 18.447332, -1.216305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.401403, 18.932096, -1.497422>,  <21.120737, 19.066534, -1.524056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.401403, 18.932096, -1.497422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.598030, 18.745693, -1.203157>,  <20.716005, 18.633852, -1.026597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.598030, 18.745693, -1.203157>,  <20.401403, 18.932096, -1.497422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.598030, 18.745693, -1.203157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654751, 0.359203, 0.665037,
		-0.574165, -0.808585, -0.128547,
		0.491564, -0.466008, 0.735664,
		20.745499, 18.605890, -0.982457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.829552, 18.542940, -0.986992>,  <20.401403, 18.932096, -1.497422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.829552, 18.542940, -0.986992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.184826, 18.567104, -0.804793>,  <20.397989, 18.581604, -0.695473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.184826, 18.567104, -0.804793>,  <19.829552, 18.542940, -0.986992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.184826, 18.567104, -0.804793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444063, 0.367550, 0.817138,
		-0.118055, -0.928039, 0.353278,
		0.888184, 0.060411, 0.455499,
		20.451281, 18.585228, -0.668144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800323, 18.311035, -0.346345>,  <19.829552, 18.542940, -0.986992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800323, 18.311035, -0.346345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.118038, 18.550690, -0.306062>,  <20.308668, 18.694483, -0.281892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.118038, 18.550690, -0.306062>,  <19.800323, 18.311035, -0.346345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.118038, 18.550690, -0.306062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406039, 0.400200, 0.821567,
		0.451926, -0.693453, 0.561146,
		0.794289, 0.599135, 0.100708,
		20.356325, 18.730431, -0.275849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892492, 18.380985, 0.438281>,  <19.800323, 18.311035, -0.346345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.892492, 18.380985, 0.438281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.032875, 18.705208, 0.250738>,  <20.117104, 18.899742, 0.138212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.032875, 18.705208, 0.250738>,  <19.892492, 18.380985, 0.438281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.032875, 18.705208, 0.250738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245517, 0.562843, 0.789258,
		0.903633, -0.161881, 0.396538,
		0.350954, 0.810557, -0.468859,
		20.138161, 18.948376, 0.110080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.362392, 18.726656, 0.879885>,  <19.892492, 18.380985, 0.438281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.362392, 18.726656, 0.879885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.175678, 18.976597, 0.629550>,  <20.063650, 19.126560, 0.479349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.175678, 18.976597, 0.629550>,  <20.362392, 18.726656, 0.879885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.175678, 18.976597, 0.629550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272351, 0.571704, 0.773938,
		0.841389, 0.531711, -0.096685,
		-0.466787, 0.624850, -0.625837,
		20.035643, 19.164051, 0.441799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.540636, 19.448219, 1.135841>,  <20.362392, 18.726656, 0.879885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.540636, 19.448219, 1.135841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.182487, 19.419563, 0.960033>,  <19.967598, 19.402370, 0.854549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.182487, 19.419563, 0.960033>,  <20.540636, 19.448219, 1.135841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.182487, 19.419563, 0.960033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396881, 0.576016, 0.714627,
		0.201975, 0.814293, -0.544181,
		-0.895373, -0.071638, -0.439518,
		19.913876, 19.398071, 0.828178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.100847, 20.105881, 1.114236>,  <20.540636, 19.448219, 1.135841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.100847, 20.105881, 1.114236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829464, 19.812107, 1.121233>,  <19.666634, 19.635843, 1.125430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829464, 19.812107, 1.121233>,  <20.100847, 20.105881, 1.114236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.829464, 19.812107, 1.121233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574487, 0.545241, 0.610472,
		-0.457887, 0.404131, -0.791844,
		-0.678457, -0.734432, 0.017490,
		19.625927, 19.591778, 1.126480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.403625, 20.525206, 1.131704>,  <20.100847, 20.105881, 1.114236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.403625, 20.525206, 1.131704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420380, 20.161980, 1.298396>,  <19.430431, 19.944044, 1.398411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420380, 20.161980, 1.298396>,  <19.403625, 20.525206, 1.131704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.420380, 20.161980, 1.298396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561105, 0.323731, 0.761813,
		-0.826684, -0.265736, -0.495961,
		0.041883, -0.908065, 0.416729,
		19.432945, 19.889561, 1.423415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742062, 20.066660, 1.254378>,  <19.403625, 20.525206, 1.131704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742062, 20.066660, 1.254378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017921, 19.962437, 1.524636>,  <19.183437, 19.899902, 1.686791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017921, 19.962437, 1.524636>,  <18.742062, 20.066660, 1.254378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017921, 19.962437, 1.524636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687673, 0.056724, 0.723801,
		-0.226919, -0.963790, -0.140060,
		0.689647, -0.260559, 0.675644,
		19.224815, 19.884270, 1.727330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.553434, 19.402987, 1.623488>,  <18.742062, 20.066660, 1.254378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.553434, 19.402987, 1.623488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.754040, 19.691322, 1.814852>,  <18.874403, 19.864323, 1.929670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.754040, 19.691322, 1.814852>,  <18.553434, 19.402987, 1.623488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.754040, 19.691322, 1.814852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692610, 0.003156, 0.721305,
		0.518435, -0.693096, 0.500843,
		0.501514, 0.720838, 0.478409,
		18.904493, 19.907574, 1.958375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075285, 19.444206, 2.130301>,  <18.553434, 19.402987, 1.623488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075285, 19.444206, 2.130301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.365231, 19.701176, 2.229793>,  <18.539198, 19.855356, 2.289488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.365231, 19.701176, 2.229793>,  <18.075285, 19.444206, 2.130301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.365231, 19.701176, 2.229793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472465, 0.200837, 0.858162,
		0.501349, -0.739565, 0.449102,
		0.724863, 0.642423, 0.248729,
		18.582689, 19.893902, 2.304412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.204113, 19.252048, 2.767171>,  <18.075285, 19.444206, 2.130301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.204113, 19.252048, 2.767171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306004, 19.633564, 2.703422>,  <18.367138, 19.862473, 2.665172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306004, 19.633564, 2.703422>,  <18.204113, 19.252048, 2.767171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.306004, 19.633564, 2.703422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413273, 0.256375, 0.873772,
		0.874253, -0.156709, 0.459482,
		0.254728, 0.953789, -0.159373,
		18.382421, 19.919701, 2.655610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.672375, 19.705750, 3.252527>,  <18.204113, 19.252048, 2.767171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.672375, 19.705750, 3.252527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.414242, 19.964241, 3.089587>,  <18.259361, 20.119335, 2.991823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.414242, 19.964241, 3.089587>,  <18.672375, 19.705750, 3.252527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.414242, 19.964241, 3.089587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325942, 0.249335, 0.911918,
		0.690874, 0.721263, 0.049728,
		-0.645334, 0.646228, -0.407349,
		18.220642, 20.158110, 2.967382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.774801, 20.426889, 3.482812>,  <18.672375, 19.705750, 3.252527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.774801, 20.426889, 3.482812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.390331, 20.359306, 3.395544>,  <18.159649, 20.318756, 3.343182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.390331, 20.359306, 3.395544>,  <18.774801, 20.426889, 3.482812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.390331, 20.359306, 3.395544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243471, 0.147137, 0.958683,
		-0.129876, 0.974579, -0.182561,
		-0.961173, -0.168958, -0.218172,
		18.101980, 20.308619, 3.330092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.276012, 21.045301, 3.575624>,  <18.774801, 20.426889, 3.482812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.276012, 21.045301, 3.575624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.124580, 20.681511, 3.644363>,  <18.033720, 20.463238, 3.685606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.124580, 20.681511, 3.644363>,  <18.276012, 21.045301, 3.575624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.124580, 20.681511, 3.644363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223780, 0.270099, 0.936466,
		-0.898108, 0.316073, -0.305777,
		-0.378582, -0.909475, 0.171847,
		18.011005, 20.408669, 3.695917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.609917, 21.033674, 3.818438>,  <18.276012, 21.045301, 3.575624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.609917, 21.033674, 3.818438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.769199, 20.695107, 3.959864>,  <17.864769, 20.491966, 4.044719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.769199, 20.695107, 3.959864>,  <17.609917, 21.033674, 3.818438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.769199, 20.695107, 3.959864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286298, 0.251507, 0.924542,
		-0.871473, -0.469384, -0.142175,
		0.398208, -0.846418, 0.353565,
		17.888662, 20.441181, 4.065933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.250193, 20.774294, 4.370446>,  <17.609917, 21.033674, 3.818438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.250193, 20.774294, 4.370446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.617706, 20.622551, 4.414125>,  <17.838215, 20.531506, 4.440333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.617706, 20.622551, 4.414125>,  <17.250193, 20.774294, 4.370446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.617706, 20.622551, 4.414125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052239, 0.157350, 0.986160,
		-0.391291, -0.911772, 0.124753,
		0.918783, -0.379359, 0.109200,
		17.893341, 20.508743, 4.446885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.174313, 20.544785, 5.030159>,  <17.250193, 20.774294, 4.370446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.174313, 20.544785, 5.030159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.559597, 20.556515, 4.923302>,  <17.790768, 20.563553, 4.859187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.559597, 20.556515, 4.923302>,  <17.174313, 20.544785, 5.030159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.559597, 20.556515, 4.923302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261660, 0.124483, 0.957099,
		0.061318, -0.991789, 0.112231,
		0.963210, 0.029321, -0.267144,
		17.848560, 20.565311, 4.843158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.726194, 20.223991, 5.521555>,  <17.174313, 20.544785, 5.030159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.726194, 20.223991, 5.521555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.918995, 20.513515, 5.324061>,  <18.034676, 20.687229, 5.205565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.918995, 20.513515, 5.324061>,  <17.726194, 20.223991, 5.521555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.918995, 20.513515, 5.324061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553967, 0.184831, 0.811763,
		0.678820, -0.664783, -0.311878,
		0.482001, 0.723811, -0.493734,
		18.063595, 20.730659, 5.175941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.429649, 20.134701, 5.525661>,  <17.726194, 20.223991, 5.521555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.429649, 20.134701, 5.525661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.374180, 20.530659, 5.513825>,  <18.340899, 20.768234, 5.506724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.374180, 20.530659, 5.513825>,  <18.429649, 20.134701, 5.525661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.374180, 20.530659, 5.513825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472976, 0.092450, 0.876212,
		0.870094, 0.107512, -0.481017,
		-0.138673, 0.989896, -0.029590,
		18.332579, 20.827627, 5.504949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.066370, 20.481087, 5.461113>,  <18.429649, 20.134701, 5.525661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.066370, 20.481087, 5.461113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.811562, 20.727863, 5.645974>,  <18.658676, 20.875929, 5.756891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.811562, 20.727863, 5.645974>,  <19.066370, 20.481087, 5.461113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.811562, 20.727863, 5.645974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538448, -0.072898, 0.839500,
		0.551614, 0.783624, -0.285754,
		-0.637021, 0.616943, 0.462152,
		18.620455, 20.912947, 5.784620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.556877, 21.012909, 5.784933>,  <19.066370, 20.481087, 5.461113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.556877, 21.012909, 5.784933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217304, 21.056419, 5.991806>,  <19.013559, 21.082525, 6.115930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217304, 21.056419, 5.991806>,  <19.556877, 21.012909, 5.784933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.217304, 21.056419, 5.991806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519037, -0.012752, 0.854657,
		0.099563, 0.993984, -0.045634,
		-0.848933, 0.108778, 0.517184,
		18.962624, 21.089052, 6.146961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.568453, 21.503462, 6.430341>,  <19.556877, 21.012909, 5.784933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.568453, 21.503462, 6.430341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.253002, 21.296589, 6.563361>,  <19.063732, 21.172464, 6.643173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.253002, 21.296589, 6.563361>,  <19.568453, 21.503462, 6.430341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.253002, 21.296589, 6.563361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311465, 0.130309, 0.941280,
		-0.530149, 0.845897, 0.058319,
		-0.788627, -0.517183, 0.332551,
		19.016415, 21.141434, 6.663126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.408888, 21.678680, 7.080429>,  <19.568453, 21.503462, 6.430341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.408888, 21.678680, 7.080429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.185757, 21.346966, 7.093770>,  <19.051878, 21.147938, 7.101775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.185757, 21.346966, 7.093770>,  <19.408888, 21.678680, 7.080429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.185757, 21.346966, 7.093770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293172, -0.159292, 0.942696,
		-0.776452, 0.535641, 0.331981,
		-0.557829, -0.829286, 0.033352,
		19.018408, 21.098181, 7.103776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.011793, 21.754883, 7.697111>,  <19.408888, 21.678680, 7.080429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.011793, 21.754883, 7.697111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.028297, 21.368717, 7.594137>,  <19.038200, 21.137018, 7.532353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.028297, 21.368717, 7.594137>,  <19.011793, 21.754883, 7.697111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.028297, 21.368717, 7.594137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139151, -0.249591, 0.958302,
		-0.989411, -0.075364, 0.124039,
		0.041262, -0.965415, -0.257435,
		19.040676, 21.079092, 7.516907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.651974, 21.342278, 8.201348>,  <19.011793, 21.754883, 7.697111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.651974, 21.342278, 8.201348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.913258, 21.072243, 8.064191>,  <19.070028, 20.910223, 7.981896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.913258, 21.072243, 8.064191>,  <18.651974, 21.342278, 8.201348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.913258, 21.072243, 8.064191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273693, -0.211724, 0.938224,
		-0.705980, -0.706705, 0.046466,
		0.653210, -0.675085, -0.342894,
		19.109221, 20.869717, 7.961323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.570227, 20.648319, 8.580497>,  <18.651974, 21.342278, 8.201348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.570227, 20.648319, 8.580497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.945503, 20.724957, 8.465198>,  <19.170670, 20.770939, 8.396018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.945503, 20.724957, 8.465198>,  <18.570227, 20.648319, 8.580497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.945503, 20.724957, 8.465198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303935, -0.057628, 0.950948,
		0.165583, -0.979781, -0.112298,
		0.938193, 0.191592, -0.288247,
		19.226961, 20.782434, 8.378723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.027231, 20.072071, 8.737686>,  <18.570227, 20.648319, 8.580497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.027231, 20.072071, 8.737686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.233532, 20.414497, 8.751256>,  <19.357313, 20.619953, 8.759398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.233532, 20.414497, 8.751256>,  <19.027231, 20.072071, 8.737686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.233532, 20.414497, 8.751256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241830, -0.183454, 0.952818,
		0.821899, -0.483214, -0.301639,
		0.515752, 0.856066, 0.033925,
		19.388258, 20.671318, 8.761434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.725731, 19.913448, 8.985503>,  <19.027231, 20.072071, 8.737686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.725731, 19.913448, 8.985503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.630531, 20.295246, 9.057394>,  <19.573412, 20.524324, 9.100529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.630531, 20.295246, 9.057394>,  <19.725731, 19.913448, 8.985503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.630531, 20.295246, 9.057394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368690, -0.082411, 0.925892,
		0.898568, 0.286623, -0.332299,
		-0.237997, 0.954492, 0.179727,
		19.559132, 20.581594, 9.111312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.409779, 20.250229, 9.160271>,  <19.725731, 19.913448, 8.985503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.409779, 20.250229, 9.160271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.105568, 20.464596, 9.306910>,  <19.923042, 20.593216, 9.394893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.105568, 20.464596, 9.306910>,  <20.409779, 20.250229, 9.160271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.105568, 20.464596, 9.306910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468624, 0.062239, 0.881202,
		0.449434, 0.841974, -0.298478,
		-0.760526, 0.535916, 0.366597,
		19.877411, 20.625370, 9.416889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.765604, 20.841736, 9.413285>,  <20.409779, 20.250229, 9.160271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.765604, 20.841736, 9.413285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.411022, 20.814976, 9.596467>,  <20.198273, 20.798920, 9.706376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.411022, 20.814976, 9.596467>,  <20.765604, 20.841736, 9.413285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.411022, 20.814976, 9.596467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455166, 0.053145, 0.888819,
		-0.083799, 0.996343, -0.016661,
		-0.886455, -0.066899, 0.457955,
		20.145086, 20.794907, 9.733853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.750509, 21.327484, 10.009382>,  <20.765604, 20.841736, 9.413285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.750509, 21.327484, 10.009382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479797, 21.048306, 10.103051>,  <20.317369, 20.880798, 10.159253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479797, 21.048306, 10.103051>,  <20.750509, 21.327484, 10.009382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.479797, 21.048306, 10.103051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335062, -0.008791, 0.942155,
		-0.655515, 0.716096, 0.239805,
		-0.676782, -0.697946, 0.234174,
		20.276762, 20.838923, 10.173304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.685028, 21.533859, 10.687766>,  <20.750509, 21.327484, 10.009382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.685028, 21.533859, 10.687766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.470245, 21.196426, 10.690599>,  <20.341375, 20.993967, 10.692300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.470245, 21.196426, 10.690599>,  <20.685028, 21.533859, 10.687766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.470245, 21.196426, 10.690599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256852, -0.155482, 0.953862,
		-0.803558, 0.514001, 0.300162,
		-0.536956, -0.843581, 0.007084,
		20.309158, 20.943352, 10.692724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.227604, 21.593847, 11.223498>,  <20.685028, 21.533859, 10.687766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.227604, 21.593847, 11.223498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229931, 21.200443, 11.151191>,  <20.231327, 20.964401, 11.107806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229931, 21.200443, 11.151191>,  <20.227604, 21.593847, 11.223498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.229931, 21.200443, 11.151191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073461, -0.180704, 0.980790,
		-0.997281, 0.007575, -0.073300,
		0.005816, -0.983508, -0.180769,
		20.231676, 20.905392, 11.096960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.597046, 21.281809, 11.538832>,  <20.227604, 21.593847, 11.223498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.597046, 21.281809, 11.538832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.897091, 21.018623, 11.512259>,  <20.077118, 20.860712, 11.496315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.897091, 21.018623, 11.512259>,  <19.597046, 21.281809, 11.538832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.897091, 21.018623, 11.512259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041260, -0.146824, 0.988302,
		-0.660021, -0.738597, -0.137282,
		0.750113, -0.657964, -0.066433,
		20.122126, 20.821234, 11.492329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.423716, 20.681366, 12.019759>,  <19.597046, 21.281809, 11.538832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.423716, 20.681366, 12.019759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.818340, 20.635983, 11.972727>,  <20.055115, 20.608753, 11.944508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.818340, 20.635983, 11.972727>,  <19.423716, 20.681366, 12.019759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.818340, 20.635983, 11.972727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086464, -0.248094, 0.964870,
		-0.138641, -0.962069, -0.234950,
		0.986561, -0.113456, -0.117580,
		20.114309, 20.601946, 11.937452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.509996, 20.071716, 12.202330>,  <19.423716, 20.681366, 12.019759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.509996, 20.071716, 12.202330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.869438, 20.243183, 12.239750>,  <20.085104, 20.346064, 12.262202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.869438, 20.243183, 12.239750>,  <19.509996, 20.071716, 12.202330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869438, 20.243183, 12.239750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025618, -0.264116, 0.964151,
		0.438009, -0.863995, -0.248318,
		0.898606, 0.428668, 0.093552,
		20.139019, 20.371784, 12.267816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.935415, 19.613787, 12.709082>,  <19.509996, 20.071716, 12.202330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.935415, 19.613787, 12.709082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.167473, 19.939537, 12.715078>,  <20.306707, 20.134987, 12.718677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.167473, 19.939537, 12.715078>,  <19.935415, 19.613787, 12.709082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.167473, 19.939537, 12.715078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207621, -0.165653, 0.964081,
		0.787606, -0.556196, -0.265184,
		0.580146, 0.814374, 0.014991,
		20.341516, 20.183849, 12.719576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.679115, 19.408562, 12.951845>,  <19.935415, 19.613787, 12.709082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.679115, 19.408562, 12.951845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.615894, 19.795254, 13.032297>,  <20.577961, 20.027269, 13.080568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.615894, 19.795254, 13.032297>,  <20.679115, 19.408562, 12.951845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.615894, 19.795254, 13.032297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427400, -0.116643, 0.896507,
		0.890139, 0.227660, -0.394744,
		-0.158055, 0.966729, 0.201131,
		20.568478, 20.085272, 13.092636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.248571, 19.579838, 13.472434>,  <20.679115, 19.408562, 12.951845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.248571, 19.579838, 13.472434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.011562, 19.901913, 13.482132>,  <20.869356, 20.095158, 13.487950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.011562, 19.901913, 13.482132>,  <21.248571, 19.579838, 13.472434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.011562, 19.901913, 13.482132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238870, 0.146878, 0.959879,
		0.769323, 0.574542, -0.279364,
		-0.592523, 0.805189, 0.024245,
		20.833805, 20.143469, 13.489406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.620741, 20.149946, 13.741291>,  <21.248571, 19.579838, 13.472434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.620741, 20.149946, 13.741291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.227673, 20.206627, 13.789085>,  <20.991831, 20.240635, 13.817762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.227673, 20.206627, 13.789085>,  <21.620741, 20.149946, 13.741291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.227673, 20.206627, 13.789085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151107, 0.239102, 0.959165,
		0.107346, 0.960599, -0.256371,
		-0.982672, 0.141702, 0.119486,
		20.932871, 20.249138, 13.824931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.535278, 20.735689, 14.026543>,  <21.620741, 20.149946, 13.741291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.535278, 20.735689, 14.026543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.200329, 20.540764, 14.125605>,  <20.999359, 20.423809, 14.185041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.200329, 20.540764, 14.125605>,  <21.535278, 20.735689, 14.026543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.200329, 20.540764, 14.125605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126731, 0.267643, 0.955147,
		-0.531738, 0.831200, -0.162360,
		-0.837373, -0.487312, 0.247655,
		20.949118, 20.394569, 14.199901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313284, 21.225500, 14.472297>,  <21.535278, 20.735689, 14.026543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313284, 21.225500, 14.472297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136700, 20.871029, 14.528589>,  <21.030750, 20.658346, 14.562365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136700, 20.871029, 14.528589>,  <21.313284, 21.225500, 14.472297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.136700, 20.871029, 14.528589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025868, 0.144207, 0.989209,
		-0.896908, 0.440336, -0.040738,
		-0.441460, -0.886176, 0.140731,
		21.004261, 20.605177, 14.570808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.912588, 21.317703, 15.103638>,  <21.313284, 21.225500, 14.472297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.912588, 21.317703, 15.103638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.899754, 20.919117, 15.072578>,  <20.892054, 20.679966, 15.053943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.899754, 20.919117, 15.072578>,  <20.912588, 21.317703, 15.103638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.899754, 20.919117, 15.072578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069218, -0.079718, 0.994411,
		-0.997085, 0.026531, 0.071531,
		-0.032085, -0.996464, -0.077649,
		20.890127, 20.620178, 15.049284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.403090, 21.006378, 15.583364>,  <20.912588, 21.317703, 15.103638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.403090, 21.006378, 15.583364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.628124, 20.683033, 15.514029>,  <20.763145, 20.489027, 15.472427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.628124, 20.683033, 15.514029>,  <20.403090, 21.006378, 15.583364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.628124, 20.683033, 15.514029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161756, -0.097986, 0.981954,
		-0.810758, -0.580474, 0.075632,
		0.562588, -0.808361, -0.173338,
		20.796902, 20.440525, 15.462028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.289106, 20.667776, 16.154022>,  <20.403090, 21.006378, 15.583364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.289106, 20.667776, 16.154022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.599552, 20.473644, 15.992975>,  <20.785820, 20.357164, 15.896347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.599552, 20.473644, 15.992975>,  <20.289106, 20.667776, 16.154022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.599552, 20.473644, 15.992975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250803, -0.348227, 0.903236,
		-0.578571, -0.801992, -0.148541,
		0.776114, -0.485332, -0.402616,
		20.832386, 20.328045, 15.872190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.290308, 20.120335, 16.625912>,  <20.289106, 20.667776, 16.154022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.290308, 20.120335, 16.625912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.641685, 20.130859, 16.435064>,  <20.852512, 20.137175, 16.320557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.641685, 20.130859, 16.435064>,  <20.290308, 20.120335, 16.625912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.641685, 20.130859, 16.435064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477837, -0.053208, 0.876836,
		-0.002316, -0.998237, -0.059313,
		0.878445, 0.026311, -0.477118,
		20.905220, 20.138754, 16.291929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.718767, 19.685259, 16.899128>,  <20.290308, 20.120335, 16.625912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.718767, 19.685259, 16.899128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.001259, 19.920418, 16.741333>,  <21.170753, 20.061512, 16.646656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.001259, 19.920418, 16.741333>,  <20.718767, 19.685259, 16.899128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.001259, 19.920418, 16.741333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556695, -0.116867, 0.822455,
		0.437416, -0.800450, -0.409814,
		0.706228, 0.587896, -0.394487,
		21.213127, 20.096786, 16.622988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.328009, 19.269812, 17.008316>,  <20.718767, 19.685259, 16.899128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.328009, 19.269812, 17.008316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.406708, 19.660542, 16.974594>,  <21.453928, 19.894979, 16.954361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.406708, 19.660542, 16.974594>,  <21.328009, 19.269812, 17.008316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.406708, 19.660542, 16.974594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543067, -0.036986, 0.838875,
		0.816314, -0.210830, -0.537757,
		0.196749, 0.976823, -0.084302,
		21.465733, 19.953588, 16.949303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.089298, 19.353487, 17.085190>,  <21.328009, 19.269812, 17.008316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.089298, 19.353487, 17.085190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.915920, 19.696671, 17.195484>,  <21.811893, 19.902580, 17.261660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.915920, 19.696671, 17.195484>,  <22.089298, 19.353487, 17.085190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.915920, 19.696671, 17.195484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570314, 0.024247, 0.821069,
		0.697759, 0.513143, -0.499816,
		-0.433445, 0.857961, 0.275734,
		21.785887, 19.954060, 17.278204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.645906, 19.838600, 17.326792>,  <22.089298, 19.353487, 17.085190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.645906, 19.838600, 17.326792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.308144, 19.984150, 17.484055>,  <22.105486, 20.071480, 17.578413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.308144, 19.984150, 17.484055>,  <22.645906, 19.838600, 17.326792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.308144, 19.984150, 17.484055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470345, 0.152278, 0.869245,
		0.256427, 0.918916, -0.299730,
		-0.844406, 0.363874, 0.393159,
		22.054821, 20.093311, 17.602003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.967800, 20.225897, 17.729103>,  <22.645906, 19.838600, 17.326792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.967800, 20.225897, 17.729103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.595215, 20.187107, 17.869371>,  <22.371664, 20.163834, 17.953531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.595215, 20.187107, 17.869371>,  <22.967800, 20.225897, 17.729103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.595215, 20.187107, 17.869371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350680, 0.017485, 0.936332,
		-0.096931, 0.995134, 0.017720,
		-0.931465, -0.096973, 0.350669,
		22.315775, 20.158014, 17.974571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.932259, 20.684586, 18.373381>,  <22.967800, 20.225897, 17.729103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.932259, 20.684586, 18.373381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.634995, 20.417233, 18.385883>,  <22.456636, 20.256821, 18.393385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.634995, 20.417233, 18.385883>,  <22.932259, 20.684586, 18.373381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.634995, 20.417233, 18.385883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210551, -0.189253, 0.959089,
		-0.635124, 0.719337, 0.281374,
		-0.743159, -0.668384, 0.031259,
		22.412046, 20.216717, 18.395262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.520103, 20.895042, 18.858273>,  <22.932259, 20.684586, 18.373381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.520103, 20.895042, 18.858273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.451134, 20.503021, 18.818750>,  <22.409752, 20.267809, 18.795036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.451134, 20.503021, 18.818750>,  <22.520103, 20.895042, 18.858273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.451134, 20.503021, 18.818750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110155, -0.118866, 0.986781,
		-0.978844, 0.159261, 0.128454,
		-0.172425, -0.980054, -0.098808,
		22.399406, 20.209005, 18.789108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.272917, 20.819233, 19.540440>,  <22.520103, 20.895042, 18.858273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.272917, 20.819233, 19.540440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301422, 20.451721, 19.385124>,  <22.318525, 20.231215, 19.291935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301422, 20.451721, 19.385124>,  <22.272917, 20.819233, 19.540440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301422, 20.451721, 19.385124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110034, -0.394144, 0.912438,
		-0.991370, -0.022300, -0.129185,
		0.071265, -0.918778, -0.388289,
		22.322802, 20.176088, 19.268637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.706064, 20.434528, 19.777699>,  <22.272917, 20.819233, 19.540440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.706064, 20.434528, 19.777699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.981125, 20.161316, 19.679228>,  <22.146162, 19.997389, 19.620146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.981125, 20.161316, 19.679228>,  <21.706064, 20.434528, 19.777699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.981125, 20.161316, 19.679228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140424, -0.457788, 0.877902,
		-0.712331, -0.569122, -0.410713,
		0.687653, -0.683031, -0.246178,
		22.187420, 19.956408, 19.605375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.431669, 19.784912, 20.182507>,  <21.706064, 20.434528, 19.777699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.431669, 19.784912, 20.182507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.814907, 19.751675, 20.072855>,  <22.044849, 19.731731, 20.007063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.814907, 19.751675, 20.072855>,  <21.431669, 19.784912, 20.182507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.814907, 19.751675, 20.072855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248095, -0.237649, 0.939134,
		-0.143183, -0.967790, -0.207076,
		0.958096, -0.083094, -0.274131,
		22.102335, 19.726746, 19.990616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.697697, 19.025503, 20.330681>,  <21.431669, 19.784912, 20.182507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.697697, 19.025503, 20.330681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.995327, 19.292717, 20.326971>,  <22.173904, 19.453045, 20.324745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.995327, 19.292717, 20.326971>,  <21.697697, 19.025503, 20.330681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.995327, 19.292717, 20.326971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209993, -0.220676, 0.952473,
		0.634237, -0.710658, -0.304481,
		0.744074, 0.668032, -0.009272,
		22.218550, 19.493126, 20.324190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.223537, 18.764059, 20.814320>,  <21.697697, 19.025503, 20.330681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.223537, 18.764059, 20.814320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.323849, 19.147419, 20.759802>,  <22.384035, 19.377436, 20.727091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.323849, 19.147419, 20.759802>,  <22.223537, 18.764059, 20.814320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.323849, 19.147419, 20.759802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136157, 0.104472, 0.985163,
		0.958421, -0.265617, -0.104293,
		0.250781, 0.958401, -0.136293,
		22.399082, 19.434940, 20.718914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.839100, 18.859024, 21.246027>,  <22.223537, 18.764059, 20.814320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.839100, 18.859024, 21.246027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734253, 19.239258, 21.179468>,  <22.671345, 19.467398, 21.139534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734253, 19.239258, 21.179468>,  <22.839100, 18.859024, 21.246027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.734253, 19.239258, 21.179468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050337, 0.185657, 0.981324,
		0.963722, 0.248847, -0.096513,
		-0.262118, 0.950582, -0.166395,
		22.655617, 19.524433, 21.129549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.320150, 19.321190, 21.712149>,  <22.839100, 18.859024, 21.246027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.320150, 19.321190, 21.712149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.992729, 19.530693, 21.617785>,  <22.796276, 19.656395, 21.561167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.992729, 19.530693, 21.617785>,  <23.320150, 19.321190, 21.712149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.992729, 19.530693, 21.617785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069341, 0.317584, 0.945691,
		0.570233, 0.790455, -0.223641,
		-0.818552, 0.523756, -0.235908,
		22.747164, 19.687820, 21.547012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.392487, 19.696579, 22.167496>,  <23.320150, 19.321190, 21.712149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.392487, 19.696579, 22.167496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.032104, 19.821266, 22.046757>,  <22.815876, 19.896078, 21.974314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.032104, 19.821266, 22.046757>,  <23.392487, 19.696579, 22.167496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.032104, 19.821266, 22.046757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075984, 0.571552, 0.817041,
		0.427210, 0.759052, -0.491256,
		-0.900954, 0.311720, -0.301848,
		22.761818, 19.914782, 21.956202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.420198, 20.452211, 22.149843>,  <23.392487, 19.696579, 22.167496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.420198, 20.452211, 22.149843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.047722, 20.331253, 22.231268>,  <22.824236, 20.258678, 22.280123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.047722, 20.331253, 22.231268>,  <23.420198, 20.452211, 22.149843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.047722, 20.331253, 22.231268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055516, 0.434265, 0.899073,
		-0.360273, 0.848512, -0.387597,
		-0.931194, -0.302394, 0.203560,
		22.768364, 20.240536, 22.292336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.189821, 20.847023, 22.642052>,  <23.420198, 20.452211, 22.149843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.189821, 20.847023, 22.642052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.901962, 20.574070, 22.693375>,  <22.729246, 20.410299, 22.724169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.901962, 20.574070, 22.693375>,  <23.189821, 20.847023, 22.642052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.901962, 20.574070, 22.693375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255905, 0.432446, 0.864583,
		-0.645460, 0.589362, -0.485834,
		-0.719648, -0.682381, 0.128305,
		22.686068, 20.369356, 22.731867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.565512, 21.229097, 22.617086>,  <23.189821, 20.847023, 22.642052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.565512, 21.229097, 22.617086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.505241, 20.881233, 22.805124>,  <22.469080, 20.672516, 22.917948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.505241, 20.881233, 22.805124>,  <22.565512, 21.229097, 22.617086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.505241, 20.881233, 22.805124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356948, 0.491305, 0.794486,
		-0.921892, -0.048089, -0.384451,
		-0.150677, -0.869659, 0.470096,
		22.460039, 20.620335, 22.946154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.942623, 21.339710, 22.900433>,  <22.565512, 21.229097, 22.617086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.942623, 21.339710, 22.900433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.149174, 21.061226, 23.099892>,  <22.273104, 20.894136, 23.219566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.149174, 21.061226, 23.099892>,  <21.942623, 21.339710, 22.900433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.149174, 21.061226, 23.099892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118580, 0.518546, 0.846787,
		-0.848113, -0.496389, 0.185208,
		0.516375, -0.696209, 0.498648,
		22.304087, 20.852364, 23.249487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.615486, 21.305532, 23.631281>,  <21.942623, 21.339710, 22.900433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.615486, 21.305532, 23.631281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.962536, 21.114624, 23.687052>,  <22.170765, 21.000078, 23.720514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.962536, 21.114624, 23.687052>,  <21.615486, 21.305532, 23.631281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.962536, 21.114624, 23.687052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070825, 0.396182, 0.915436,
		-0.492149, -0.784380, 0.377540,
		0.867625, -0.477271, 0.139427,
		22.222824, 20.971443, 23.728880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.603636, 20.897047, 24.296251>,  <21.615486, 21.305532, 23.631281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.603636, 20.897047, 24.296251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.999397, 20.943329, 24.261162>,  <22.236855, 20.971098, 24.240108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.999397, 20.943329, 24.261162>,  <21.603636, 20.897047, 24.296251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.999397, 20.943329, 24.261162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029650, 0.430420, 0.902142,
		0.142139, -0.895182, 0.422428,
		0.989402, 0.115704, -0.087721,
		22.296219, 20.978041, 24.234846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.068851, 20.649708, 24.933043>,  <21.603636, 20.897047, 24.296251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.068851, 20.649708, 24.933043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.292229, 20.923473, 24.745546>,  <22.426254, 21.087732, 24.633049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.292229, 20.923473, 24.745546>,  <22.068851, 20.649708, 24.933043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.292229, 20.923473, 24.745546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075303, 0.520899, 0.850290,
		0.826118, -0.510136, 0.239354,
		0.558443, 0.684416, -0.468739,
		22.459763, 21.128798, 24.604925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.781605, 20.596329, 25.257784>,  <22.068851, 20.649708, 24.933043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.781605, 20.596329, 25.257784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.721825, 20.954311, 25.089636>,  <22.685957, 21.169102, 24.988747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.721825, 20.954311, 25.089636>,  <22.781605, 20.596329, 25.257784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.721825, 20.954311, 25.089636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200400, 0.443740, 0.873461,
		0.968248, 0.046298, -0.245668,
		-0.149452, 0.894959, -0.420372,
		22.676989, 21.222799, 24.963524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.371712, 21.094927, 25.387657>,  <22.781605, 20.596329, 25.257784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.371712, 21.094927, 25.387657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.038776, 21.315044, 25.361147>,  <22.839016, 21.447115, 25.345242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.038776, 21.315044, 25.361147>,  <23.371712, 21.094927, 25.387657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.038776, 21.315044, 25.361147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308223, 0.558911, 0.769817,
		0.460666, 0.620320, -0.634815,
		-0.832337, 0.550293, -0.066274,
		22.789076, 21.480133, 25.341265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.323109, 21.627977, 25.821413>,  <23.371712, 21.094927, 25.387657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.323109, 21.627977, 25.821413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.712296, 21.569801, 25.893169>,  <23.945808, 21.534895, 25.936222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.712296, 21.569801, 25.893169>,  <23.323109, 21.627977, 25.821413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.712296, 21.569801, 25.893169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074574, 0.933032, 0.351980,
		-0.218568, -0.329088, 0.918656,
		0.972968, -0.145439, 0.179389,
		24.004187, 21.526169, 25.946987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.374470, 21.698757, 26.531071>,  <23.323109, 21.627977, 25.821413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.374470, 21.698757, 26.531071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.721748, 21.797894, 26.359110>,  <23.930115, 21.857376, 26.255934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.721748, 21.797894, 26.359110>,  <23.374470, 21.698757, 26.531071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.721748, 21.797894, 26.359110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130839, 0.950017, 0.283458,
		0.478664, -0.189849, 0.857227,
		0.868194, 0.247840, -0.429900,
		23.982206, 21.872246, 26.230141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.787022, 21.899954, 26.973783>,  <23.374470, 21.698757, 26.531071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.787022, 21.899954, 26.973783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.863163, 22.096474, 26.633808>,  <23.908848, 22.214386, 26.429823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.863163, 22.096474, 26.633808>,  <23.787022, 21.899954, 26.973783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.863163, 22.096474, 26.633808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465567, 0.807394, 0.362438,
		0.864299, 0.326713, 0.382420,
		0.190350, 0.491297, -0.849937,
		23.920269, 22.243862, 26.378826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.973598, 22.624460, 27.081020>,  <23.787022, 21.899954, 26.973783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.973598, 22.624460, 27.081020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.862236, 22.623665, 26.696836>,  <23.795420, 22.623188, 26.466326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.862236, 22.623665, 26.696836>,  <23.973598, 22.624460, 27.081020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.862236, 22.623665, 26.696836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511350, 0.846798, 0.146470,
		0.813026, 0.531911, -0.236768,
		-0.278404, -0.001988, -0.960462,
		23.778715, 22.623068, 26.408697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.299725, 23.200304, 26.659883>,  <23.973598, 22.624460, 27.081020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.299725, 23.200304, 26.659883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.941063, 23.065655, 26.544853>,  <23.725866, 22.984865, 26.475836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.941063, 23.065655, 26.544853>,  <24.299725, 23.200304, 26.659883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.941063, 23.065655, 26.544853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380810, 0.917705, 0.113138,
		0.225824, 0.210957, -0.951052,
		-0.896653, -0.336621, -0.287574,
		23.672068, 22.964668, 26.458580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.982731, 23.635065, 26.154079>,  <24.299725, 23.200304, 26.659883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.982731, 23.635065, 26.154079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.710396, 23.453156, 26.383738>,  <23.546995, 23.344009, 26.521532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.710396, 23.453156, 26.383738>,  <23.982731, 23.635065, 26.154079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.710396, 23.453156, 26.383738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367342, 0.890185, 0.269499,
		-0.633655, -0.027422, -0.773130,
		-0.680838, -0.454773, 0.574144,
		23.506144, 23.316723, 26.555981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.361921, 23.877792, 25.960129>,  <23.982731, 23.635065, 26.154079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.361921, 23.877792, 25.960129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.328884, 23.770901, 26.344164>,  <23.309061, 23.706766, 26.574585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.328884, 23.770901, 26.344164>,  <23.361921, 23.877792, 25.960129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.328884, 23.770901, 26.344164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408945, 0.887622, 0.211877,
		-0.908813, -0.375124, -0.182593,
		-0.082594, -0.267227, 0.960088,
		23.304106, 23.690733, 26.632191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.842773, 24.185984, 26.048250>,  <23.361921, 23.877792, 25.960129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.842773, 24.185984, 26.048250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.993248, 24.137508, 26.415684>,  <23.083532, 24.108423, 26.636145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.993248, 24.137508, 26.415684>,  <22.842773, 24.185984, 26.048250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.993248, 24.137508, 26.415684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423100, 0.859538, 0.286671,
		-0.824299, -0.496495, 0.272074,
		0.376188, -0.121188, 0.918584,
		23.106104, 24.101152, 26.691259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.312002, 23.701466, 25.627260>,  <22.842773, 24.185984, 26.048250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.312002, 23.701466, 25.627260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.673702, 23.530678, 25.625095>,  <22.890722, 23.428205, 25.623796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.673702, 23.530678, 25.625095>,  <22.312002, 23.701466, 25.627260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.673702, 23.530678, 25.625095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008637, 0.030956, -0.999483,
		0.426917, 0.903736, 0.031679,
		0.904250, -0.426970, -0.005410,
		22.944977, 23.402586, 25.623472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.729120, 24.124565, 25.306376>,  <22.312002, 23.701466, 25.627260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.729120, 24.124565, 25.306376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.824757, 23.737030, 25.280493>,  <22.882139, 23.504509, 25.264963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.824757, 23.737030, 25.280493>,  <22.729120, 24.124565, 25.306376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.824757, 23.737030, 25.280493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093651, 0.043321, -0.994662,
		0.966471, 0.243874, -0.080375,
		0.239090, -0.968839, -0.064707,
		22.896484, 23.446379, 25.261080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.277355, 23.980206, 24.880823>,  <22.729120, 24.124565, 25.306376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.277355, 23.980206, 24.880823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.045280, 23.654484, 24.873978>,  <22.906036, 23.459051, 24.869869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.045280, 23.654484, 24.873978>,  <23.277355, 23.980206, 24.880823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.045280, 23.654484, 24.873978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089006, 0.084277, -0.992459,
		0.809607, -0.574287, -0.121374,
		-0.580185, -0.814305, -0.017116,
		22.871225, 23.410192, 24.868843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.469072, 23.751837, 24.279030>,  <23.277355, 23.980206, 24.880823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.469072, 23.751837, 24.279030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.124058, 23.573196, 24.374178>,  <22.917049, 23.466013, 24.431267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.124058, 23.573196, 24.374178>,  <23.469072, 23.751837, 24.279030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.124058, 23.573196, 24.374178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299306, 0.071275, -0.951492,
		0.407983, -0.891890, -0.195147,
		-0.862535, -0.446601, 0.237869,
		22.865297, 23.439217, 24.445539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.345032, 23.109200, 23.857141>,  <23.469072, 23.751837, 24.279030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.345032, 23.109200, 23.857141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.983177, 23.219490, 23.987129>,  <22.766064, 23.285664, 24.065123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.983177, 23.219490, 23.987129>,  <23.345032, 23.109200, 23.857141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.983177, 23.219490, 23.987129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364306, -0.104602, -0.925386,
		-0.221163, -0.955527, 0.195076,
		-0.904637, 0.275729, 0.324970,
		22.711786, 23.302208, 24.084620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.971786, 22.705364, 23.489540>,  <23.345032, 23.109200, 23.857141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.971786, 22.705364, 23.489540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.703220, 22.987450, 23.580647>,  <22.542082, 23.156700, 23.635311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.703220, 22.987450, 23.580647>,  <22.971786, 22.705364, 23.489540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.703220, 22.987450, 23.580647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330791, -0.010161, -0.943649,
		-0.663160, -0.708922, 0.240101,
		-0.671414, 0.705214, 0.227767,
		22.501797, 23.199013, 23.648977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.500904, 22.583960, 23.086260>,  <22.971786, 22.705364, 23.489540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.500904, 22.583960, 23.086260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.391273, 22.957436, 23.178438>,  <22.325495, 23.181520, 23.233746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.391273, 22.957436, 23.178438>,  <22.500904, 22.583960, 23.086260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.391273, 22.957436, 23.178438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385619, 0.112821, -0.915734,
		-0.881010, -0.339848, 0.329127,
		-0.274078, 0.933689, 0.230448,
		22.309050, 23.237543, 23.247572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.808722, 22.646847, 22.800680>,  <22.500904, 22.583960, 23.086260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.808722, 22.646847, 22.800680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.945644, 23.019390, 22.850317>,  <22.027798, 23.242916, 22.880098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.945644, 23.019390, 22.850317>,  <21.808722, 22.646847, 22.800680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.945644, 23.019390, 22.850317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385520, 0.259660, -0.885410,
		-0.856855, 0.255242, 0.447941,
		0.342307, 0.931358, 0.124090,
		22.048336, 23.298798, 22.887545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.230095, 23.103157, 22.731642>,  <21.808722, 22.646847, 22.800680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.230095, 23.103157, 22.731642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.554272, 23.320454, 22.643938>,  <21.748777, 23.450832, 22.591316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.554272, 23.320454, 22.643938>,  <21.230095, 23.103157, 22.731642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.554272, 23.320454, 22.643938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306900, 0.074908, -0.948789,
		-0.498998, 0.836228, 0.227430,
		0.810440, 0.543242, -0.219259,
		21.797403, 23.483427, 22.578159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.997065, 23.621260, 22.386087>,  <21.230095, 23.103157, 22.731642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.997065, 23.621260, 22.386087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.378052, 23.602180, 22.265734>,  <21.606644, 23.590733, 22.193521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.378052, 23.602180, 22.265734>,  <20.997065, 23.621260, 22.386087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.378052, 23.602180, 22.265734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295588, 0.094280, -0.950652,
		0.073710, 0.994402, 0.075701,
		0.952468, -0.047696, -0.300883,
		21.663792, 23.587872, 22.175468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.996304, 24.113022, 21.839645>,  <20.997065, 23.621260, 22.386087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.996304, 24.113022, 21.839645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.343113, 23.919426, 21.792274>,  <21.551199, 23.803268, 21.763851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.343113, 23.919426, 21.792274>,  <20.996304, 24.113022, 21.839645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.343113, 23.919426, 21.792274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110402, 0.045168, -0.992860,
		0.485882, 0.873908, -0.014271,
		0.867024, -0.483989, -0.118427,
		21.603220, 23.774229, 21.756746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.298412, 24.525177, 21.460178>,  <20.996304, 24.113022, 21.839645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.298412, 24.525177, 21.460178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.485847, 24.175774, 21.407404>,  <21.598309, 23.966131, 21.375740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.485847, 24.175774, 21.407404>,  <21.298412, 24.525177, 21.460178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.485847, 24.175774, 21.407404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203980, 0.038330, -0.978224,
		0.859545, 0.485296, -0.160218,
		0.468587, -0.873509, -0.131937,
		21.626423, 23.913721, 21.367823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.748661, 24.637201, 20.918013>,  <21.298412, 24.525177, 21.460178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.748661, 24.637201, 20.918013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.709614, 24.239208, 20.926783>,  <21.686186, 24.000412, 20.932045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.709614, 24.239208, 20.926783>,  <21.748661, 24.637201, 20.918013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.709614, 24.239208, 20.926783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071583, -0.028992, -0.997013,
		0.992646, -0.095759, 0.074054,
		-0.097620, -0.994982, 0.021924,
		21.680328, 23.940714, 20.933359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.280548, 24.377245, 20.544880>,  <21.748661, 24.637201, 20.918013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.280548, 24.377245, 20.544880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.978573, 24.114948, 20.548267>,  <21.797388, 23.957571, 20.550301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.978573, 24.114948, 20.548267>,  <22.280548, 24.377245, 20.544880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.978573, 24.114948, 20.548267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008729, -0.002865, -0.999958,
		0.655737, -0.754981, -0.003561,
		-0.754939, -0.655741, 0.008469,
		21.752090, 23.918226, 20.550808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.425999, 23.912809, 19.853083>,  <22.280548, 24.377245, 20.544880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.425999, 23.912809, 19.853083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.045544, 23.855610, 19.962547>,  <21.817270, 23.821291, 20.028225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.045544, 23.855610, 19.962547>,  <22.425999, 23.912809, 19.853083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.045544, 23.855610, 19.962547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253667, -0.143432, -0.956598,
		0.176045, -0.979274, 0.100149,
		-0.951137, -0.143000, 0.273660,
		21.760202, 23.812710, 20.044645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.241869, 23.357903, 19.325737>,  <22.425999, 23.912809, 19.853083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.241869, 23.357903, 19.325737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.901283, 23.505951, 19.474340>,  <21.696932, 23.594780, 19.563501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.901283, 23.505951, 19.474340>,  <22.241869, 23.357903, 19.325737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.901283, 23.505951, 19.474340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430596, -0.089089, -0.898137,
		-0.299323, -0.924701, 0.235229,
		-0.851465, 0.370122, 0.371506,
		21.645844, 23.616987, 19.585793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.736155, 22.851290, 19.086163>,  <22.241869, 23.357903, 19.325737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.736155, 22.851290, 19.086163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.550629, 23.197643, 19.161123>,  <21.439312, 23.405455, 19.206099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.550629, 23.197643, 19.161123>,  <21.736155, 22.851290, 19.086163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.550629, 23.197643, 19.161123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546356, -0.113050, -0.829888,
		-0.697402, -0.487302, 0.525516,
		-0.463816, 0.865885, 0.187399,
		21.411484, 23.457409, 19.217342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.035313, 22.760561, 18.800592>,  <21.736155, 22.851290, 19.086163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.035313, 22.760561, 18.800592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.109802, 23.152821, 18.824751>,  <21.154495, 23.388176, 18.839245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.109802, 23.152821, 18.824751>,  <21.035313, 22.760561, 18.800592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.109802, 23.152821, 18.824751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408499, 0.133185, -0.902990,
		-0.893560, 0.143485, 0.425396,
		0.186222, 0.980650, 0.060395,
		21.165668, 23.447016, 18.842869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.475067, 23.036478, 18.482115>,  <21.035313, 22.760561, 18.800592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.475067, 23.036478, 18.482115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.723507, 23.349628, 18.496765>,  <20.872572, 23.537518, 18.505554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.723507, 23.349628, 18.496765>,  <20.475067, 23.036478, 18.482115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.723507, 23.349628, 18.496765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320730, 0.296536, -0.899555,
		-0.715099, 0.546968, 0.435270,
		0.621101, 0.782875, 0.036624,
		20.909838, 23.584492, 18.507751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.034569, 23.641459, 18.289783>,  <20.475067, 23.036478, 18.482115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.034569, 23.641459, 18.289783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.418781, 23.738781, 18.235844>,  <20.649309, 23.797174, 18.203480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.418781, 23.738781, 18.235844>,  <20.034569, 23.641459, 18.289783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.418781, 23.738781, 18.235844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206361, 0.298152, -0.931944,
		-0.186541, 0.922988, 0.336593,
		0.960530, 0.243306, -0.134851,
		20.706940, 23.811773, 18.195389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.091518, 24.322968, 18.171890>,  <20.034569, 23.641459, 18.289783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.091518, 24.322968, 18.171890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.434090, 24.181297, 18.021645>,  <20.639633, 24.096294, 17.931498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.434090, 24.181297, 18.021645>,  <20.091518, 24.322968, 18.171890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.434090, 24.181297, 18.021645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259722, 0.333210, -0.906375,
		0.446177, 0.873802, 0.193383,
		0.856429, -0.354178, -0.375616,
		20.691019, 24.075045, 17.908960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.359379, 24.912678, 17.731195>,  <20.091518, 24.322968, 18.171890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.359379, 24.912678, 17.731195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.555145, 24.584900, 17.611877>,  <20.672606, 24.388233, 17.540287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.555145, 24.584900, 17.611877>,  <20.359379, 24.912678, 17.731195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.555145, 24.584900, 17.611877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154408, 0.255224, -0.954473,
		0.858271, 0.513193, -0.001618,
		0.489416, -0.819447, -0.298293,
		20.701969, 24.339066, 17.522390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.883209, 25.131899, 17.241978>,  <20.359379, 24.912678, 17.731195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.883209, 25.131899, 17.241978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.814575, 24.750271, 17.143744>,  <20.773396, 24.521294, 17.084803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.814575, 24.750271, 17.143744>,  <20.883209, 25.131899, 17.241978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.814575, 24.750271, 17.143744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187581, 0.276363, -0.942569,
		0.967146, -0.115662, -0.226385,
		-0.171584, -0.954068, -0.245587,
		20.763100, 24.464050, 17.070066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.248075, 25.041023, 16.576048>,  <20.883209, 25.131899, 17.241978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.248075, 25.041023, 16.576048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.001110, 24.728603, 16.613497>,  <20.852930, 24.541151, 16.635965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.001110, 24.728603, 16.613497>,  <21.248075, 25.041023, 16.576048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.001110, 24.728603, 16.613497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212563, 0.051064, -0.975812,
		0.757376, -0.622379, -0.197550,
		-0.617413, -0.781048, 0.093620,
		20.815886, 24.494289, 16.641582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.253145, 24.811180, 15.949003>,  <21.248075, 25.041023, 16.576048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.253145, 24.811180, 15.949003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.961979, 24.597752, 16.121254>,  <20.787279, 24.469694, 16.224604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.961979, 24.597752, 16.121254>,  <21.253145, 24.811180, 15.949003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.961979, 24.597752, 16.121254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490512, -0.033606, -0.870786,
		0.479098, -0.845087, -0.237261,
		-0.727917, -0.533571, 0.430626,
		20.743605, 24.437681, 16.250443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.193686, 24.134012, 15.674759>,  <21.253145, 24.811180, 15.949003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.193686, 24.134012, 15.674759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812199, 24.175919, 15.787502>,  <20.583305, 24.201061, 15.855148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812199, 24.175919, 15.787502>,  <21.193686, 24.134012, 15.674759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.812199, 24.175919, 15.787502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296708, -0.175664, -0.938673,
		-0.048824, -0.978860, 0.198618,
		-0.953720, 0.104761, 0.281859,
		20.526083, 24.207348, 15.872060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.885069, 23.741879, 15.214640>,  <21.193686, 24.134012, 15.674759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.885069, 23.741879, 15.214640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.565460, 23.925831, 15.369596>,  <20.373695, 24.036201, 15.462570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.565460, 23.925831, 15.369596>,  <20.885069, 23.741879, 15.214640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.565460, 23.925831, 15.369596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399314, 0.075861, -0.913670,
		-0.449567, -0.884735, 0.123022,
		-0.799023, 0.459880, 0.387392,
		20.325754, 24.063795, 15.485814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.335526, 23.371412, 14.913647>,  <20.885069, 23.741879, 15.214640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.335526, 23.371412, 14.913647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195049, 23.733070, 15.010963>,  <20.110764, 23.950066, 15.069354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195049, 23.733070, 15.010963>,  <20.335526, 23.371412, 14.913647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195049, 23.733070, 15.010963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351576, 0.113490, -0.929255,
		-0.867791, -0.411880, 0.278019,
		-0.351189, 0.904143, 0.243293,
		20.089693, 24.004313, 15.083951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.618059, 23.407757, 14.705504>,  <20.335526, 23.371412, 14.913647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.618059, 23.407757, 14.705504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.718975, 23.792656, 14.746357>,  <19.779526, 24.023596, 14.770868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.718975, 23.792656, 14.746357>,  <19.618059, 23.407757, 14.705504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.718975, 23.792656, 14.746357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305939, 0.179452, -0.934986,
		-0.918015, 0.204642, 0.339663,
		0.252291, 0.962246, 0.102131,
		19.794662, 24.081329, 14.776997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.063728, 23.813503, 14.570500>,  <19.618059, 23.407757, 14.705504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.063728, 23.813503, 14.570500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.393196, 24.024635, 14.487589>,  <19.590876, 24.151316, 14.437842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.393196, 24.024635, 14.487589>,  <19.063728, 23.813503, 14.570500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.393196, 24.024635, 14.487589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313205, 0.118735, -0.942234,
		-0.472730, 0.841009, 0.263117,
		0.823668, 0.527831, -0.207279,
		19.640297, 24.182985, 14.425406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.880650, 24.378950, 14.059970>,  <19.063728, 23.813503, 14.570500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.880650, 24.378950, 14.059970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.277702, 24.333275, 14.043747>,  <19.515934, 24.305870, 14.034013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.277702, 24.333275, 14.043747>,  <18.880650, 24.378950, 14.059970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.277702, 24.333275, 14.043747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049142, -0.073387, -0.996092,
		0.110768, 0.990745, -0.078457,
		0.992631, -0.114190, -0.040558,
		19.575491, 24.299017, 14.031580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.048626, 24.747841, 13.514284>,  <18.880650, 24.378950, 14.059970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.048626, 24.747841, 13.514284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.393497, 24.547031, 13.541477>,  <19.600420, 24.426546, 13.557794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.393497, 24.547031, 13.541477>,  <19.048626, 24.747841, 13.514284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.393497, 24.547031, 13.541477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035617, -0.073795, -0.996637,
		0.505352, 0.861700, -0.045744,
		0.862178, -0.502023, 0.067983,
		19.652151, 24.396425, 13.561872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.410086, 24.927336, 12.984687>,  <19.048626, 24.747841, 13.514284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.410086, 24.927336, 12.984687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.613750, 24.594078, 13.071054>,  <19.735949, 24.394123, 13.122875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.613750, 24.594078, 13.071054>,  <19.410086, 24.927336, 12.984687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.613750, 24.594078, 13.071054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061814, -0.285623, -0.956346,
		0.858448, 0.473589, -0.196929,
		0.509162, -0.833146, 0.215918,
		19.766499, 24.344133, 13.135830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.973593, 24.914116, 12.523616>,  <19.410086, 24.927336, 12.984687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.973593, 24.914116, 12.523616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.912136, 24.545242, 12.665585>,  <19.875261, 24.323917, 12.750766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.912136, 24.545242, 12.665585>,  <19.973593, 24.914116, 12.523616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.912136, 24.545242, 12.665585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020913, -0.356071, -0.934225,
		0.987905, -0.150959, 0.035421,
		-0.153642, -0.922185, 0.354921,
		19.866043, 24.268587, 12.772061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.477673, 24.453548, 12.160544>,  <19.973593, 24.914116, 12.523616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.477673, 24.453548, 12.160544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.185287, 24.234955, 12.324032>,  <20.009857, 24.103798, 12.422124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.185287, 24.234955, 12.324032>,  <20.477673, 24.453548, 12.160544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.185287, 24.234955, 12.324032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027340, -0.574993, -0.817702,
		0.681872, -0.608882, 0.405356,
		-0.730961, -0.546485, 0.408719,
		19.966000, 24.071009, 12.446648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.709484, 23.831476, 11.988053>,  <20.477673, 24.453548, 12.160544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.709484, 23.831476, 11.988053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.312893, 23.819717, 12.038815>,  <20.074938, 23.812662, 12.069271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.312893, 23.819717, 12.038815>,  <20.709484, 23.831476, 11.988053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.312893, 23.819717, 12.038815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108147, -0.357300, -0.927708,
		0.072613, -0.933527, 0.351076,
		-0.991479, -0.029396, 0.126903,
		20.015450, 23.810898, 12.076885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.458475, 23.222652, 11.556077>,  <20.709484, 23.831476, 11.988053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.458475, 23.222652, 11.556077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.111736, 23.382671, 11.675097>,  <19.903692, 23.478683, 11.746510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.111736, 23.382671, 11.675097>,  <20.458475, 23.222652, 11.556077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.111736, 23.382671, 11.675097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457046, -0.399153, -0.794850,
		-0.199208, -0.825009, 0.528845,
		-0.866848, 0.400047, 0.297553,
		19.851683, 23.502686, 11.764363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954266, 22.740673, 11.470429>,  <20.458475, 23.222652, 11.556077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954266, 22.740673, 11.470429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768112, 23.094597, 11.479641>,  <19.656420, 23.306952, 11.485168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768112, 23.094597, 11.479641>,  <19.954266, 22.740673, 11.470429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.768112, 23.094597, 11.479641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372680, -0.172286, -0.911826,
		-0.802826, -0.432930, 0.409930,
		-0.465382, 0.884810, 0.023029,
		19.628498, 23.360041, 11.486549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.481369, 22.573713, 11.051316>,  <19.954266, 22.740673, 11.470429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.481369, 22.573713, 11.051316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.473335, 22.973530, 11.042259>,  <19.468515, 23.213419, 11.036825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.473335, 22.973530, 11.042259>,  <19.481369, 22.573713, 11.051316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.473335, 22.973530, 11.042259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244528, -0.026869, -0.969270,
		-0.969434, -0.013930, 0.244955,
		-0.020083, 0.999542, -0.022642,
		19.467310, 23.273392, 11.035467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882780, 22.774094, 10.649673>,  <19.481369, 22.573713, 11.051316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.882780, 22.774094, 10.649673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.112892, 23.101196, 10.642447>,  <19.250959, 23.297459, 10.638110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.112892, 23.101196, 10.642447>,  <18.882780, 22.774094, 10.649673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.112892, 23.101196, 10.642447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408126, 0.267828, -0.872755,
		-0.708864, 0.509450, 0.487824,
		0.575278, 0.817758, -0.018066,
		19.285475, 23.346523, 10.637027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.455748, 23.387144, 10.534971>,  <18.882780, 22.774094, 10.649673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.455748, 23.387144, 10.534971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.830318, 23.467327, 10.419786>,  <19.055061, 23.515436, 10.350676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.830318, 23.467327, 10.419786>,  <18.455748, 23.387144, 10.534971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.830318, 23.467327, 10.419786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339523, 0.310726, -0.887791,
		-0.088486, 0.929121, 0.359032,
		0.936426, 0.200457, -0.287963,
		19.111246, 23.527464, 10.333398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807976, 23.219948, 10.412978>,  <18.455748, 23.387144, 10.534971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.807976, 23.219948, 10.412978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.521584, 22.941177, 10.396663>,  <17.349749, 22.773914, 10.386873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.521584, 22.941177, 10.396663>,  <17.807976, 23.219948, 10.412978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.521584, 22.941177, 10.396663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183426, 0.131425, 0.974208,
		-0.673591, 0.704997, -0.221933,
		-0.715982, -0.696927, -0.040788,
		17.306789, 22.732100, 10.384426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.227335, 23.546232, 10.711661>,  <17.807976, 23.219948, 10.412978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.227335, 23.546232, 10.711661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.173420, 23.150650, 10.736324>,  <17.141071, 22.913301, 10.751122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.173420, 23.150650, 10.736324>,  <17.227335, 23.546232, 10.711661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.173420, 23.150650, 10.736324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325843, 0.103003, 0.939796,
		-0.935766, 0.106584, -0.336127,
		-0.134789, -0.988954, 0.061657,
		17.132984, 22.853964, 10.754822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581875, 23.473824, 11.077907>,  <17.227335, 23.546232, 10.711661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.581875, 23.473824, 11.077907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.780018, 23.131275, 11.136210>,  <16.898903, 22.925745, 11.171193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.780018, 23.131275, 11.136210>,  <16.581875, 23.473824, 11.077907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.780018, 23.131275, 11.136210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072635, 0.208037, 0.975420,
		-0.865647, -0.472595, 0.165255,
		0.495358, -0.856373, 0.145760,
		16.928625, 22.874363, 11.179938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377237, 23.248667, 11.751634>,  <16.581875, 23.473824, 11.077907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377237, 23.248667, 11.751634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.706657, 23.031822, 11.684849>,  <16.904310, 22.901716, 11.644778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.706657, 23.031822, 11.684849>,  <16.377237, 23.248667, 11.751634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.706657, 23.031822, 11.684849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132790, -0.101908, 0.985891,
		-0.551478, -0.834104, -0.011940,
		0.823552, -0.542112, -0.166961,
		16.953724, 22.869188, 11.634761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276201, 22.653650, 12.202854>,  <16.377237, 23.248667, 11.751634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.276201, 22.653650, 12.202854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.662159, 22.702015, 12.109597>,  <16.893734, 22.731033, 12.053643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.662159, 22.702015, 12.109597>,  <16.276201, 22.653650, 12.202854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.662159, 22.702015, 12.109597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227947, 0.055345, 0.972099,
		0.130446, -0.991119, 0.025840,
		0.964895, 0.120916, -0.233141,
		16.951628, 22.738289, 12.039655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600096, 22.206404, 12.794641>,  <16.276201, 22.653650, 12.202854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.600096, 22.206404, 12.794641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.872341, 22.448475, 12.629461>,  <17.035688, 22.593718, 12.530354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.872341, 22.448475, 12.629461>,  <16.600096, 22.206404, 12.794641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.872341, 22.448475, 12.629461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435574, 0.118969, 0.892256,
		0.589101, -0.787151, -0.182627,
		0.680614, 0.605177, -0.412948,
		17.076525, 22.630028, 12.505577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.187725, 21.996754, 13.081045>,  <16.600096, 22.206404, 12.794641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.187725, 21.996754, 13.081045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.240307, 22.373730, 12.958061>,  <17.271856, 22.599915, 12.884271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.240307, 22.373730, 12.958061>,  <17.187725, 21.996754, 13.081045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.240307, 22.373730, 12.958061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220832, 0.274517, 0.935881,
		0.966412, -0.190921, -0.172035,
		0.131453, 0.942438, -0.307459,
		17.279743, 22.656462, 12.865824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.722004, 22.232174, 13.453305>,  <17.187725, 21.996754, 13.081045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.722004, 22.232174, 13.453305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.560570, 22.577198, 13.331249>,  <17.463709, 22.784212, 13.258016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.560570, 22.577198, 13.331249>,  <17.722004, 22.232174, 13.453305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.560570, 22.577198, 13.331249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027218, 0.322041, 0.946334,
		0.914537, 0.390232, -0.106494,
		-0.403585, 0.862559, -0.305139,
		17.439493, 22.835966, 13.239707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.210262, 22.726252, 13.603165>,  <17.722004, 22.232174, 13.453305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.210262, 22.726252, 13.603165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.887127, 22.952168, 13.535744>,  <17.693247, 23.087717, 13.495291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.887127, 22.952168, 13.535744>,  <18.210262, 22.726252, 13.603165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.887127, 22.952168, 13.535744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073071, 0.379733, 0.922206,
		0.584859, 0.732676, -0.348032,
		-0.807837, 0.564791, -0.168553,
		17.644775, 23.121605, 13.485178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.300278, 23.403889, 13.953567>,  <18.210262, 22.726252, 13.603165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.300278, 23.403889, 13.953567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.900944, 23.390709, 13.934612>,  <17.661345, 23.382801, 13.923240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.900944, 23.390709, 13.934612>,  <18.300278, 23.403889, 13.953567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.900944, 23.390709, 13.934612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056336, 0.377953, 0.924109,
		-0.012541, 0.925238, -0.379180,
		-0.998333, -0.032951, -0.047385,
		17.601444, 23.380823, 13.920397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.037867, 23.946966, 14.375381>,  <18.300278, 23.403889, 13.953567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.037867, 23.946966, 14.375381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.721512, 23.705112, 14.337612>,  <17.531700, 23.559999, 14.314951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.721512, 23.705112, 14.337612>,  <18.037867, 23.946966, 14.375381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721512, 23.705112, 14.337612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254909, 0.185222, 0.949060,
		-0.556347, 0.774666, -0.300616,
		-0.790885, -0.604636, -0.094422,
		17.484245, 23.523722, 14.309286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.536076, 24.352007, 14.543042>,  <18.037867, 23.946966, 14.375381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.536076, 24.352007, 14.543042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.398304, 23.980301, 14.596464>,  <17.315641, 23.757277, 14.628517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.398304, 23.980301, 14.596464>,  <17.536076, 24.352007, 14.543042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.398304, 23.980301, 14.596464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195787, 0.210230, 0.957847,
		-0.918171, 0.303760, -0.254346,
		-0.344427, -0.929265, 0.133555,
		17.294975, 23.701521, 14.636531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.049976, 24.430315, 15.000684>,  <17.536076, 24.352007, 14.543042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.049976, 24.430315, 15.000684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.098003, 24.035339, 15.041761>,  <17.126820, 23.798353, 15.066408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.098003, 24.035339, 15.041761>,  <17.049976, 24.430315, 15.000684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098003, 24.035339, 15.041761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086056, 0.092701, 0.991968,
		-0.989029, -0.127941, -0.073844,
		0.120067, -0.987440, 0.102694,
		17.134024, 23.739107, 15.072570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.543394, 24.174839, 15.466705>,  <17.049976, 24.430315, 15.000684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.543394, 24.174839, 15.466705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845371, 23.912601, 15.460245>,  <17.026558, 23.755259, 15.456369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845371, 23.912601, 15.460245>,  <16.543394, 24.174839, 15.466705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.845371, 23.912601, 15.460245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024320, 0.003378, 0.999698,
		-0.655342, -0.755106, 0.018494,
		0.754941, -0.655594, -0.016151,
		17.071854, 23.715923, 15.455400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.482420, 23.917673, 16.077450>,  <16.543394, 24.174839, 15.466705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.482420, 23.917673, 16.077450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843773, 23.772961, 15.985350>,  <17.060585, 23.686132, 15.930090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843773, 23.772961, 15.985350>,  <16.482420, 23.917673, 16.077450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843773, 23.772961, 15.985350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163787, -0.205128, 0.964933,
		-0.396326, -0.909415, -0.126053,
		0.903382, -0.361783, -0.230248,
		17.114788, 23.664427, 15.916275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591396, 23.276091, 16.511295>,  <16.482420, 23.917673, 16.077450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591396, 23.276091, 16.511295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.967209, 23.369797, 16.411377>,  <17.192698, 23.426022, 16.351425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.967209, 23.369797, 16.411377>,  <16.591396, 23.276091, 16.511295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.967209, 23.369797, 16.411377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301661, -0.220850, 0.927484,
		0.162111, -0.946755, -0.278165,
		0.939532, 0.234267, -0.249797,
		17.249069, 23.440077, 16.336437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.056557, 22.786469, 16.816284>,  <16.591396, 23.276091, 16.511295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.056557, 22.786469, 16.816284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.287437, 23.108639, 16.762428>,  <17.425966, 23.301941, 16.730116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.287437, 23.108639, 16.762428>,  <17.056557, 22.786469, 16.816284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.287437, 23.108639, 16.762428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370786, -0.111598, 0.921989,
		0.727567, -0.582097, -0.363055,
		0.577203, 0.805424, -0.134638,
		17.460598, 23.350266, 16.722036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.735239, 22.535391, 16.993349>,  <17.056557, 22.786469, 16.816284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.735239, 22.535391, 16.993349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.740353, 22.934711, 17.016088>,  <17.743422, 23.174303, 17.029732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.740353, 22.934711, 17.016088>,  <17.735239, 22.535391, 16.993349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.740353, 22.934711, 17.016088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544205, -0.054643, 0.837171,
		0.838855, 0.020237, -0.543978,
		0.012783, 0.998301, 0.056851,
		17.744188, 23.234201, 17.033144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.384560, 22.760050, 16.983242>,  <17.735239, 22.535391, 16.993349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.384560, 22.760050, 16.983242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.194000, 23.070045, 17.149345>,  <18.079664, 23.256042, 17.249008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.194000, 23.070045, 17.149345>,  <18.384560, 22.760050, 16.983242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.194000, 23.070045, 17.149345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744634, 0.104498, 0.659242,
		0.467511, 0.623277, -0.626865,
		-0.476396, 0.774988, 0.415259,
		18.051081, 23.302542, 17.273924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.936363, 23.194588, 17.193031>,  <18.384560, 22.760050, 16.983242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.936363, 23.194588, 17.193031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623543, 23.307419, 17.415319>,  <18.435850, 23.375118, 17.548693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623543, 23.307419, 17.415319>,  <18.936363, 23.194588, 17.193031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623543, 23.307419, 17.415319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609047, 0.156894, 0.777462,
		0.132116, 0.946476, -0.294498,
		-0.782053, 0.282078, 0.555720,
		18.388927, 23.392042, 17.582035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.221582, 23.739763, 17.526308>,  <18.936363, 23.194588, 17.193031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.221582, 23.739763, 17.526308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.889652, 23.652409, 17.731712>,  <18.690495, 23.599997, 17.854956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.889652, 23.652409, 17.731712>,  <19.221582, 23.739763, 17.526308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.889652, 23.652409, 17.731712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482122, 0.182770, 0.856828,
		-0.280973, 0.958594, -0.046379,
		-0.829827, -0.218386, 0.513513,
		18.640705, 23.586893, 17.885767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.168468, 24.212841, 18.168774>,  <19.221582, 23.739763, 17.526308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.168468, 24.212841, 18.168774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.930775, 23.904514, 18.260622>,  <18.788158, 23.719519, 18.315731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.930775, 23.904514, 18.260622>,  <19.168468, 24.212841, 18.168774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.930775, 23.904514, 18.260622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271663, 0.076355, 0.959359,
		-0.757023, 0.632464, 0.164030,
		-0.594235, -0.770817, 0.229620,
		18.752504, 23.673269, 18.329508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.684942, 24.495655, 18.745157>,  <19.168468, 24.212841, 18.168774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.684942, 24.495655, 18.745157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.732723, 24.098873, 18.728403>,  <18.761393, 23.860804, 18.718349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.732723, 24.098873, 18.728403>,  <18.684942, 24.495655, 18.745157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.732723, 24.098873, 18.728403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481885, 0.021040, 0.875982,
		-0.868054, -0.124822, 0.480522,
		0.119452, -0.991956, -0.041886,
		18.768559, 23.801287, 18.715837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.543011, 24.310202, 19.337349>,  <18.684942, 24.495655, 18.745157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.543011, 24.310202, 19.337349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.720234, 23.963581, 19.245449>,  <18.826569, 23.755608, 19.190310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.720234, 23.963581, 19.245449>,  <18.543011, 24.310202, 19.337349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.720234, 23.963581, 19.245449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126858, -0.193094, 0.972945,
		-0.887471, -0.460218, 0.024377,
		0.443060, -0.866553, -0.229748,
		18.853151, 23.703615, 19.176525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.146618, 23.768087, 19.698046>,  <18.543011, 24.310202, 19.337349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.146618, 23.768087, 19.698046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.510738, 23.622883, 19.618477>,  <18.729212, 23.535759, 19.570736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.510738, 23.622883, 19.618477>,  <18.146618, 23.768087, 19.698046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.510738, 23.622883, 19.618477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048615, -0.383475, 0.922271,
		-0.411086, -0.849213, -0.331429,
		0.910300, -0.363020, -0.198925,
		18.783829, 23.513979, 19.558800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.226795, 23.214375, 20.121273>,  <18.146618, 23.768087, 19.698046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.226795, 23.214375, 20.121273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.605736, 23.259956, 20.001583>,  <18.833101, 23.287306, 19.929770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.605736, 23.259956, 20.001583>,  <18.226795, 23.214375, 20.121273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.605736, 23.259956, 20.001583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319974, -0.371260, 0.871655,
		-0.011762, -0.921510, -0.388177,
		0.947353, 0.113954, -0.299226,
		18.889942, 23.294142, 19.911816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586536, 22.452106, 20.122086>,  <18.226795, 23.214375, 20.121273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.586536, 22.452106, 20.122086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.826096, 22.762928, 20.199558>,  <18.969831, 22.949421, 20.246042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.826096, 22.762928, 20.199558>,  <18.586536, 22.452106, 20.122086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.826096, 22.762928, 20.199558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258868, -0.416714, 0.871399,
		0.757832, -0.471741, -0.450723,
		0.598897, 0.777052, 0.193680,
		19.005764, 22.996044, 20.257662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.247562, 22.159121, 20.355267>,  <18.586536, 22.452106, 20.122086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.247562, 22.159121, 20.355267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.250443, 22.540916, 20.474531>,  <19.252171, 22.769993, 20.546089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.250443, 22.540916, 20.474531>,  <19.247562, 22.159121, 20.355267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.250443, 22.540916, 20.474531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301187, -0.286393, 0.909541,
		0.953538, 0.083255, -0.289541,
		0.007199, 0.954488, 0.298162,
		19.252602, 22.827263, 20.563980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.908482, 22.095867, 20.569399>,  <19.247562, 22.159121, 20.355267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.908482, 22.095867, 20.569399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.728775, 22.412315, 20.735428>,  <19.620951, 22.602184, 20.835045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.728775, 22.412315, 20.735428>,  <19.908482, 22.095867, 20.569399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.728775, 22.412315, 20.735428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331870, -0.283573, 0.899693,
		0.829471, 0.541953, -0.135150,
		-0.449266, 0.791121, 0.415074,
		19.593996, 22.649652, 20.859951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.331549, 22.309744, 21.151468>,  <19.908482, 22.095867, 20.569399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.331549, 22.309744, 21.151468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.021404, 22.545574, 21.241991>,  <19.835318, 22.687073, 21.296305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.021404, 22.545574, 21.241991>,  <20.331549, 22.309744, 21.151468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.021404, 22.545574, 21.241991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183591, -0.132442, 0.974040,
		0.604242, 0.796782, -0.005550,
		-0.775362, 0.589574, 0.226309,
		19.788795, 22.722446, 21.309883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.629459, 22.641678, 21.667469>,  <20.331549, 22.309744, 21.151468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.629459, 22.641678, 21.667469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229614, 22.644691, 21.678207>,  <19.989708, 22.646500, 21.684650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229614, 22.644691, 21.678207>,  <20.629459, 22.641678, 21.667469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.229614, 22.644691, 21.678207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024818, -0.198421, 0.979803,
		0.012707, 0.980088, 0.198157,
		-0.999611, 0.007533, 0.026845,
		19.929731, 22.646952, 21.686260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.488018, 23.064095, 22.178289>,  <20.629459, 22.641678, 21.667469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.488018, 23.064095, 22.178289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.164993, 22.828506, 22.165880>,  <19.971178, 22.687155, 22.158436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.164993, 22.828506, 22.165880>,  <20.488018, 23.064095, 22.178289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.164993, 22.828506, 22.165880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055897, -0.128791, 0.990095,
		-0.587130, 0.797828, 0.136928,
		-0.807561, -0.588968, -0.031021,
		19.922726, 22.651815, 22.156574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.093813, 23.299805, 22.761688>,  <20.488018, 23.064095, 22.178289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.093813, 23.299805, 22.761688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968498, 22.929035, 22.679066>,  <19.893309, 22.706573, 22.629492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968498, 22.929035, 22.679066>,  <20.093813, 23.299805, 22.761688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.968498, 22.929035, 22.679066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129632, -0.173731, 0.976224,
		-0.940769, 0.332614, -0.065731,
		-0.313286, -0.926922, -0.206558,
		19.874512, 22.650959, 22.617098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.356770, 23.127726, 23.105833>,  <20.093813, 23.299805, 22.761688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.356770, 23.127726, 23.105833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.528095, 22.774765, 23.027946>,  <19.630890, 22.562988, 22.981215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.528095, 22.774765, 23.027946>,  <19.356770, 23.127726, 23.105833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.528095, 22.774765, 23.027946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197857, -0.301831, 0.932604,
		-0.881704, -0.360920, -0.303867,
		0.428312, -0.882403, -0.194715,
		19.656590, 22.510044, 22.969532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.914801, 22.644999, 23.441467>,  <19.356770, 23.127726, 23.105833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.914801, 22.644999, 23.441467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.252865, 22.451714, 23.350069>,  <19.455704, 22.335743, 23.295229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.252865, 22.451714, 23.350069>,  <18.914801, 22.644999, 23.441467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.252865, 22.451714, 23.350069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053027, -0.501176, 0.863719,
		-0.531879, -0.717863, -0.449197,
		0.845159, -0.483213, -0.228498,
		19.506413, 22.306751, 23.281521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.838650, 21.990759, 23.667469>,  <18.914801, 22.644999, 23.441467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.838650, 21.990759, 23.667469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.235390, 22.033794, 23.640165>,  <19.473434, 22.059616, 23.623783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.235390, 22.033794, 23.640165>,  <18.838650, 21.990759, 23.667469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.235390, 22.033794, 23.640165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112299, -0.485062, 0.867239,
		0.060198, -0.867836, -0.493190,
		0.991849, 0.107590, -0.068258,
		19.532944, 22.066072, 23.619688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.133045, 21.304674, 23.702671>,  <18.838650, 21.990759, 23.667469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.133045, 21.304674, 23.702671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.441139, 21.530506, 23.821320>,  <19.625996, 21.666006, 23.892508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.441139, 21.530506, 23.821320>,  <19.133045, 21.304674, 23.702671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.441139, 21.530506, 23.821320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121405, -0.586393, 0.800877,
		0.626097, -0.580853, -0.520204,
		0.770236, 0.564582, 0.296620,
		19.672211, 21.699881, 23.910305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.627401, 20.776400, 24.037457>,  <19.133045, 21.304674, 23.702671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.627401, 20.776400, 24.037457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.782425, 21.132843, 24.131882>,  <19.875439, 21.346708, 24.188538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.782425, 21.132843, 24.131882>,  <19.627401, 20.776400, 24.037457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.782425, 21.132843, 24.131882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144502, -0.311637, 0.939149,
		0.910449, -0.329864, -0.249544,
		0.387558, 0.891107, 0.236063,
		19.898693, 21.400175, 24.202702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.448978, 20.364944, 24.620029>,  <19.627401, 20.776400, 24.037457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.448978, 20.364944, 24.620029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.118580, 20.194908, 24.768095>,  <18.920340, 20.092886, 24.856936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.118580, 20.194908, 24.768095>,  <19.448978, 20.364944, 24.620029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.118580, 20.194908, 24.768095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443568, 0.084978, -0.892203,
		0.347814, -0.901152, -0.258749,
		-0.825998, -0.425093, 0.370165,
		18.870781, 20.067381, 24.879145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.296904, 19.807817, 24.127287>,  <19.448978, 20.364944, 24.620029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.296904, 19.807817, 24.127287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.950802, 19.896793, 24.307001>,  <18.743141, 19.950178, 24.414829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.950802, 19.896793, 24.307001>,  <19.296904, 19.807817, 24.127287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.950802, 19.896793, 24.307001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435655, 0.109852, -0.893385,
		-0.248080, -0.968738, 0.001858,
		-0.865252, 0.222440, 0.449288,
		18.691227, 19.963526, 24.441788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.856400, 19.409870, 23.822443>,  <19.296904, 19.807817, 24.127287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.856400, 19.409870, 23.822443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641747, 19.709492, 23.977848>,  <18.512955, 19.889265, 24.071091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641747, 19.709492, 23.977848>,  <18.856400, 19.409870, 23.822443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641747, 19.709492, 23.977848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470067, 0.116993, -0.874843,
		-0.700758, -0.652096, 0.289323,
		-0.536633, 0.749054, 0.388513,
		18.480757, 19.934208, 24.094402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.278299, 19.197220, 23.545658>,  <18.856400, 19.409870, 23.822443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.278299, 19.197220, 23.545658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.205387, 19.574772, 23.655830>,  <18.161640, 19.801304, 23.721933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.205387, 19.574772, 23.655830>,  <18.278299, 19.197220, 23.545658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.205387, 19.574772, 23.655830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420768, 0.178297, -0.889474,
		-0.888666, -0.278027, 0.364655,
		-0.182281, 0.943881, 0.275431,
		18.150703, 19.857937, 23.738461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.609100, 19.337343, 23.416363>,  <18.278299, 19.197220, 23.545658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.609100, 19.337343, 23.416363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.766376, 19.705112, 23.419527>,  <17.860743, 19.925774, 23.421425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.766376, 19.705112, 23.419527>,  <17.609100, 19.337343, 23.416363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.766376, 19.705112, 23.419527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419086, 0.186866, -0.888509,
		-0.818394, 0.346036, 0.458792,
		0.393189, 0.919424, 0.007911,
		17.884333, 19.980940, 23.421900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074215, 19.791098, 23.295345>,  <17.609100, 19.337343, 23.416363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.074215, 19.791098, 23.295345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.393990, 20.014313, 23.206360>,  <17.585855, 20.148241, 23.152967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.393990, 20.014313, 23.206360>,  <17.074215, 19.791098, 23.295345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.393990, 20.014313, 23.206360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462389, 0.335161, -0.820892,
		-0.383527, 0.759118, 0.525971,
		0.799439, 0.558038, -0.222465,
		17.633821, 20.181725, 23.139620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.839258, 20.446228, 22.850351>,  <17.074215, 19.791098, 23.295345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.839258, 20.446228, 22.850351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.231598, 20.418964, 22.777367>,  <17.467001, 20.402607, 22.733576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.231598, 20.418964, 22.777367>,  <16.839258, 20.446228, 22.850351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.231598, 20.418964, 22.777367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174507, 0.108582, -0.978651,
		0.086517, 0.991748, 0.094608,
		0.980848, -0.068160, -0.182462,
		17.525852, 20.398516, 22.722628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.934429, 20.986395, 22.360830>,  <16.839258, 20.446228, 22.850351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.934429, 20.986395, 22.360830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.252884, 20.746628, 22.327698>,  <17.443956, 20.602768, 22.307817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.252884, 20.746628, 22.327698>,  <16.934429, 20.986395, 22.360830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.252884, 20.746628, 22.327698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015945, 0.116057, -0.993114,
		0.604905, 0.791977, 0.082840,
		0.796138, -0.599419, -0.082832,
		17.491726, 20.566801, 22.302849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.444181, 21.332962, 22.023176>,  <16.934429, 20.986395, 22.360830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.444181, 21.332962, 22.023176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.492790, 20.940327, 21.964230>,  <17.521955, 20.704746, 21.928862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.492790, 20.940327, 21.964230>,  <17.444181, 21.332962, 22.023176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.492790, 20.940327, 21.964230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104275, 0.135021, -0.985341,
		0.987096, 0.135109, -0.085947,
		0.121524, -0.981588, -0.147367,
		17.529247, 20.645851, 21.920019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.925331, 21.376266, 21.527561>,  <17.444181, 21.332962, 22.023176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.925331, 21.376266, 21.527561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.804573, 20.995155, 21.540640>,  <17.732119, 20.766489, 21.548487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.804573, 20.995155, 21.540640>,  <17.925331, 21.376266, 21.527561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.804573, 20.995155, 21.540640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152733, 0.014486, -0.988161,
		0.941026, -0.303317, -0.149894,
		-0.301898, -0.952780, 0.032695,
		17.714005, 20.709322, 21.550447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.456015, 20.969582, 21.187071>,  <17.925331, 21.376266, 21.527561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.456015, 20.969582, 21.187071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097515, 20.793049, 21.169359>,  <17.882416, 20.687128, 21.158731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097515, 20.793049, 21.169359>,  <18.456015, 20.969582, 21.187071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097515, 20.793049, 21.169359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006346, 0.087061, -0.996183,
		0.443504, -0.893110, -0.075228,
		-0.896250, -0.441334, -0.044279,
		17.828640, 20.660648, 21.156075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.494663, 20.544823, 20.558140>,  <18.456015, 20.969582, 21.187071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.494663, 20.544823, 20.558140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.104149, 20.529564, 20.643379>,  <17.869841, 20.520409, 20.694523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.104149, 20.529564, 20.643379>,  <18.494663, 20.544823, 20.558140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.104149, 20.529564, 20.643379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201948, -0.194140, -0.959962,
		0.077990, -0.980232, 0.181832,
		-0.976286, -0.038147, 0.213097,
		17.811262, 20.518120, 20.707308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.211267, 20.063549, 20.153761>,  <18.494663, 20.544823, 20.558140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.211267, 20.063549, 20.153761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.882137, 20.277142, 20.231552>,  <17.684660, 20.405296, 20.278227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.882137, 20.277142, 20.231552>,  <18.211267, 20.063549, 20.153761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.882137, 20.277142, 20.231552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287948, -0.096710, -0.952750,
		-0.489944, -0.839946, 0.233335,
		-0.822825, 0.533982, 0.194478,
		17.635290, 20.437336, 20.289896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677299, 19.692728, 19.982964>,  <18.211267, 20.063549, 20.153761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.677299, 19.692728, 19.982964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.537052, 20.066940, 19.965775>,  <17.452904, 20.291468, 19.955462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.537052, 20.066940, 19.965775>,  <17.677299, 19.692728, 19.982964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.537052, 20.066940, 19.965775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225578, -0.128897, -0.965660,
		-0.908945, -0.328886, 0.256230,
		-0.350619, 0.935532, -0.042971,
		17.431866, 20.347599, 19.952883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.048563, 19.636307, 19.669647>,  <17.677299, 19.692728, 19.982964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.048563, 19.636307, 19.669647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157730, 20.017078, 19.614014>,  <17.223230, 20.245541, 19.580633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157730, 20.017078, 19.614014>,  <17.048563, 19.636307, 19.669647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.157730, 20.017078, 19.614014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208192, -0.082707, -0.974585,
		-0.939239, 0.294940, 0.175612,
		0.272920, 0.951929, -0.139085,
		17.239607, 20.302658, 19.572289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591276, 19.915007, 19.233974>,  <17.048563, 19.636307, 19.669647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591276, 19.915007, 19.233974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.867493, 20.204037, 19.221085>,  <17.033222, 20.377455, 19.213350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.867493, 20.204037, 19.221085>,  <16.591276, 19.915007, 19.233974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.867493, 20.204037, 19.221085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259812, 0.206224, -0.943382,
		-0.675020, 0.659815, 0.330139,
		0.690541, 0.722575, -0.032223,
		17.074656, 20.420809, 19.211418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.222660, 20.332769, 18.903734>,  <16.591276, 19.915007, 19.233974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.222660, 20.332769, 18.903734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.589085, 20.489140, 18.867928>,  <16.808939, 20.582962, 18.846443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.589085, 20.489140, 18.867928>,  <16.222660, 20.332769, 18.903734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.589085, 20.489140, 18.867928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195949, 0.241545, -0.950400,
		-0.349912, 0.888163, 0.297871,
		0.916060, 0.390924, -0.089515,
		16.863903, 20.606417, 18.841072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.184299, 20.935659, 18.590052>,  <16.222660, 20.332769, 18.903734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.184299, 20.935659, 18.590052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.572174, 20.860432, 18.527651>,  <16.804899, 20.815294, 18.490210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.572174, 20.860432, 18.527651>,  <16.184299, 20.935659, 18.590052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.572174, 20.860432, 18.527651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103324, 0.262958, -0.959259,
		0.221430, 0.946299, 0.235555,
		0.969687, -0.188070, -0.156002,
		16.863081, 20.804010, 18.480850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.471176, 21.519083, 18.289589>,  <16.184299, 20.935659, 18.590052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.471176, 21.519083, 18.289589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646866, 21.173172, 18.192234>,  <16.752279, 20.965626, 18.133821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646866, 21.173172, 18.192234>,  <16.471176, 21.519083, 18.289589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646866, 21.173172, 18.192234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049589, 0.247167, -0.967703,
		0.897007, 0.437110, 0.065679,
		0.439227, -0.864779, -0.243386,
		16.778633, 20.913738, 18.119219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822601, 21.858139, 17.801672>,  <16.471176, 21.519083, 18.289589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822601, 21.858139, 17.801672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.829792, 21.459236, 17.772953>,  <16.834106, 21.219894, 17.755722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.829792, 21.459236, 17.772953>,  <16.822601, 21.858139, 17.801672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.829792, 21.459236, 17.772953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048578, 0.070852, -0.996303,
		0.998658, 0.021396, -0.047171,
		0.017975, -0.997257, -0.071797,
		16.835184, 21.160059, 17.751413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.360506, 21.673983, 17.326897>,  <16.822601, 21.858139, 17.801672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.360506, 21.673983, 17.326897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.124332, 21.351822, 17.347754>,  <16.982628, 21.158525, 17.360268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.124332, 21.351822, 17.347754>,  <17.360506, 21.673983, 17.326897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.124332, 21.351822, 17.347754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024837, -0.046443, -0.998612,
		0.806704, -0.590909, 0.007417,
		-0.590434, -0.805400, 0.052142,
		16.947203, 21.110203, 17.363396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.574203, 21.201389, 16.677561>,  <17.360506, 21.673983, 17.326897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.574203, 21.201389, 16.677561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.205841, 21.096729, 16.793125>,  <16.984823, 21.033934, 16.862463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.205841, 21.096729, 16.793125>,  <17.574203, 21.201389, 16.677561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.205841, 21.096729, 16.793125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286112, -0.049601, -0.956912,
		0.264708, -0.963887, -0.029184,
		-0.920907, -0.261652, 0.288909,
		16.929569, 21.018234, 16.879797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395741, 20.430704, 16.404003>,  <17.574203, 21.201389, 16.677561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395741, 20.430704, 16.404003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.071949, 20.651409, 16.484306>,  <16.877674, 20.783833, 16.532488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.071949, 20.651409, 16.484306>,  <17.395741, 20.430704, 16.404003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.071949, 20.651409, 16.484306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349992, -0.178907, -0.919510,
		-0.471433, -0.814587, 0.337933,
		-0.809479, 0.551761, 0.200756,
		16.829105, 20.816936, 16.544533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058607, 20.422195, 15.810791>,  <17.395741, 20.430704, 16.404003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.058607, 20.422195, 15.810791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.804668, 20.679951, 15.981310>,  <16.652306, 20.834604, 16.083622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.804668, 20.679951, 15.981310>,  <17.058607, 20.422195, 15.810791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.804668, 20.679951, 15.981310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428190, 0.165836, -0.888342,
		-0.643134, -0.746499, 0.170640,
		-0.634848, 0.644389, 0.426298,
		16.614214, 20.873268, 16.109200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.269855, 20.193207, 15.739304>,  <17.058607, 20.422195, 15.810791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.269855, 20.193207, 15.739304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.254501, 20.589222, 15.793491>,  <16.245289, 20.826832, 15.826004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.254501, 20.589222, 15.793491>,  <16.269855, 20.193207, 15.739304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.254501, 20.589222, 15.793491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570707, 0.089563, -0.816254,
		-0.820256, -0.108645, 0.561584,
		-0.038385, 0.990038, 0.135469,
		16.242987, 20.886232, 15.834132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.610926, 20.406467, 15.576401>,  <16.269855, 20.193207, 15.739304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.610926, 20.406467, 15.576401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.839353, 20.732601, 15.538223>,  <15.976409, 20.928282, 15.515317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.839353, 20.732601, 15.538223>,  <15.610926, 20.406467, 15.576401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.839353, 20.732601, 15.538223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457407, 0.219495, -0.861743,
		-0.681660, 0.535770, 0.498287,
		0.571067, 0.815336, -0.095444,
		16.010674, 20.977201, 15.509590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.137746, 20.783695, 15.401381>,  <15.610926, 20.406467, 15.576401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.137746, 20.783695, 15.401381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.477201, 20.962406, 15.288099>,  <15.680874, 21.069633, 15.220130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.477201, 20.962406, 15.288099>,  <15.137746, 20.783695, 15.401381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477201, 20.962406, 15.288099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428285, 0.266108, -0.863573,
		-0.310462, 0.854152, 0.417177,
		0.848637, 0.446777, -0.283204,
		15.731791, 21.096439, 15.203138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937451, 21.469660, 15.192578>,  <15.137746, 20.783695, 15.401381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.937451, 21.469660, 15.192578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.289538, 21.365192, 15.034082>,  <15.500791, 21.302511, 14.938985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.289538, 21.365192, 15.034082>,  <14.937451, 21.469660, 15.192578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.289538, 21.365192, 15.034082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336643, 0.244880, -0.909234,
		0.334495, 0.933716, 0.127627,
		0.880219, -0.261169, -0.396240,
		15.553604, 21.286842, 14.915211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.006964, 21.977289, 14.744857>,  <14.937451, 21.469660, 15.192578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.006964, 21.977289, 14.744857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255815, 21.677433, 14.654526>,  <15.405125, 21.497519, 14.600327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255815, 21.677433, 14.654526>,  <15.006964, 21.977289, 14.744857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.255815, 21.677433, 14.654526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280617, 0.055770, -0.958198,
		0.730898, 0.659492, -0.175665,
		0.622127, -0.749640, -0.225827,
		15.442452, 21.452541, 14.586778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.330499, 22.124201, 14.041942>,  <15.006964, 21.977289, 14.744857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.330499, 22.124201, 14.041942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392671, 21.734798, 14.109032>,  <15.429974, 21.501158, 14.149285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392671, 21.734798, 14.109032>,  <15.330499, 22.124201, 14.041942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392671, 21.734798, 14.109032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276707, -0.205896, -0.938637,
		0.948301, 0.099481, -0.301377,
		0.155429, -0.973504, 0.167724,
		15.439300, 21.442747, 14.159348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.779662, 21.875229, 13.520489>,  <15.330499, 22.124201, 14.041942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.779662, 21.875229, 13.520489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546508, 21.594883, 13.684942>,  <15.406615, 21.426676, 13.783614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546508, 21.594883, 13.684942>,  <15.779662, 21.875229, 13.520489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.546508, 21.594883, 13.684942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408930, -0.184207, -0.893781,
		0.702154, -0.689098, -0.179233,
		-0.582887, -0.700866, 0.411134,
		15.371642, 21.384623, 13.808282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.787512, 21.453384, 13.037661>,  <15.779662, 21.875229, 13.520489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.787512, 21.453384, 13.037661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.475430, 21.306000, 13.239855>,  <15.288181, 21.217569, 13.361172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.475430, 21.306000, 13.239855>,  <15.787512, 21.453384, 13.037661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.475430, 21.306000, 13.239855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425185, -0.280328, -0.860601,
		0.458802, -0.886369, 0.062048,
		-0.780204, -0.368463, 0.505486,
		15.241369, 21.195461, 13.391500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.731175, 20.882206, 12.755534>,  <15.787512, 21.453384, 13.037661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.731175, 20.882206, 12.755534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374005, 20.934792, 12.927767>,  <15.159703, 20.966343, 13.031106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374005, 20.934792, 12.927767>,  <15.731175, 20.882206, 12.755534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.374005, 20.934792, 12.927767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436488, -0.018520, -0.899519,
		-0.110282, -0.991148, 0.073920,
		-0.892926, 0.131466, 0.430582,
		15.106128, 20.974230, 13.056941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.262246, 20.300974, 12.496832>,  <15.731175, 20.882206, 12.755534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.262246, 20.300974, 12.496832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.059871, 20.624123, 12.617743>,  <14.938445, 20.818012, 12.690289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.059871, 20.624123, 12.617743>,  <15.262246, 20.300974, 12.496832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059871, 20.624123, 12.617743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532615, -0.016942, -0.846188,
		-0.678489, -0.589117, 0.438855,
		-0.505939, 0.807870, 0.302278,
		14.908089, 20.866484, 12.708426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490781, 20.113230, 12.365818>,  <15.262246, 20.300974, 12.496832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.490781, 20.113230, 12.365818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507539, 20.511936, 12.393249>,  <14.517593, 20.751160, 12.409707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507539, 20.511936, 12.393249>,  <14.490781, 20.113230, 12.365818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507539, 20.511936, 12.393249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668976, 0.078966, -0.739078,
		-0.742103, -0.014913, 0.670120,
		0.041894, 0.996766, 0.068577,
		14.520107, 20.810966, 12.413822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.912384, 20.223972, 12.358378>,  <14.490781, 20.113230, 12.365818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.912384, 20.223972, 12.358378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.066512, 20.571198, 12.233164>,  <14.158989, 20.779533, 12.158035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.066512, 20.571198, 12.233164>,  <13.912384, 20.223972, 12.358378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.066512, 20.571198, 12.233164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671324, 0.030948, -0.740518,
		-0.633130, 0.495484, 0.594678,
		0.385319, 0.868065, -0.313036,
		14.182108, 20.831617, 12.139253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.223157, 20.642103, 12.124799>,  <13.912384, 20.223972, 12.358378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.223157, 20.642103, 12.124799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.562087, 20.802090, 11.985047>,  <13.765446, 20.898081, 11.901196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.562087, 20.802090, 11.985047>,  <13.223157, 20.642103, 12.124799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.562087, 20.802090, 11.985047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419402, 0.100382, -0.902234,
		-0.325791, 0.911017, 0.252803,
		0.847326, 0.399966, -0.349379,
		13.816285, 20.922079, 11.880234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.991244, 21.181606, 11.701336>,  <13.223157, 20.642103, 12.124799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.991244, 21.181606, 11.701336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.355517, 21.074383, 11.575604>,  <13.574081, 21.010048, 11.500166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.355517, 21.074383, 11.575604>,  <12.991244, 21.181606, 11.701336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.355517, 21.074383, 11.575604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349820, -0.095676, -0.931919,
		0.219735, 0.958640, -0.180903,
		0.910682, -0.268059, -0.314328,
		13.628722, 20.993965, 11.481306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.116186, 21.567799, 11.118602>,  <12.991244, 21.181606, 11.701336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.116186, 21.567799, 11.118602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.374152, 21.266113, 11.069217>,  <13.528932, 21.085102, 11.039586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.374152, 21.266113, 11.069217>,  <13.116186, 21.567799, 11.118602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.374152, 21.266113, 11.069217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303389, -0.104380, -0.947132,
		0.701455, 0.648278, -0.296137,
		0.644916, -0.754215, -0.123463,
		13.567627, 21.039848, 11.032178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.539614, 21.667044, 10.495388>,  <13.116186, 21.567799, 11.118602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.539614, 21.667044, 10.495388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.575490, 21.271645, 10.544093>,  <13.597015, 21.034405, 10.573317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.575490, 21.271645, 10.544093>,  <13.539614, 21.667044, 10.495388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.575490, 21.271645, 10.544093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213452, -0.138493, -0.967087,
		0.972828, 0.060747, -0.223418,
		0.089690, -0.988498, 0.121764,
		13.602397, 20.975096, 10.580623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.967654, 21.464096, 9.911827>,  <13.539614, 21.667044, 10.495388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.967654, 21.464096, 9.911827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.782254, 21.134872, 10.043123>,  <13.671014, 20.937338, 10.121901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.782254, 21.134872, 10.043123>,  <13.967654, 21.464096, 9.911827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.782254, 21.134872, 10.043123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064157, -0.338289, -0.938853,
		0.883771, -0.456218, 0.103992,
		-0.463500, -0.823059, 0.328240,
		13.643204, 20.887955, 10.141595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.412925, 20.886982, 9.783837>,  <13.967654, 21.464096, 9.911827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.412925, 20.886982, 9.783837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.035882, 20.754791, 9.802927>,  <13.809656, 20.675478, 9.814381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.035882, 20.754791, 9.802927>,  <14.412925, 20.886982, 9.783837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.035882, 20.754791, 9.802927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118857, -0.465656, -0.876948,
		0.312033, -0.820945, 0.478210,
		-0.942607, -0.330475, 0.047725,
		13.753099, 20.655649, 9.817245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.371183, 20.150290, 9.866188>,  <14.412925, 20.886982, 9.783837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.371183, 20.150290, 9.866188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.095092, 20.342873, 9.650120>,  <13.929437, 20.458422, 9.520479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.095092, 20.342873, 9.650120>,  <14.371183, 20.150290, 9.866188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.095092, 20.342873, 9.650120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282161, -0.508332, -0.813624,
		-0.666311, -0.714001, 0.215017,
		-0.690228, 0.481457, -0.540170,
		13.888023, 20.487310, 9.488069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.831499, 19.696211, 9.574903>,  <14.371183, 20.150290, 9.866188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.831499, 19.696211, 9.574903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909289, 19.992531, 9.317719>,  <13.955963, 20.170322, 9.163408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909289, 19.992531, 9.317719>,  <13.831499, 19.696211, 9.574903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.909289, 19.992531, 9.317719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495262, -0.639946, -0.587524,
		-0.846697, -0.204174, -0.491343,
		0.194476, 0.740798, -0.642960,
		13.967632, 20.214769, 9.124830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.592310, 19.599939, 8.862230>,  <13.831499, 19.696211, 9.574903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.592310, 19.599939, 8.862230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.912972, 19.838890, 8.853399>,  <14.105371, 19.982260, 8.848101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.912972, 19.838890, 8.853399>,  <13.592310, 19.599939, 8.862230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.912972, 19.838890, 8.853399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495643, -0.684876, -0.534119,
		-0.334191, 0.417237, -0.845121,
		0.801657, 0.597376, -0.022079,
		14.153470, 20.018103, 8.846776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.824786, 19.760609, 8.115770>,  <13.592310, 19.599939, 8.862230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.824786, 19.760609, 8.115770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.108422, 19.755302, 8.397767>,  <14.278605, 19.752119, 8.566965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.108422, 19.755302, 8.397767>,  <13.824786, 19.760609, 8.115770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.108422, 19.755302, 8.397767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426961, -0.787613, -0.444264,
		0.561154, 0.616027, -0.552826,
		0.709091, -0.013265, 0.704992,
		14.321150, 19.751324, 8.609264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.607787, 19.879124, 8.053294>,  <13.824786, 19.760609, 8.115770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.607787, 19.879124, 8.053294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.858155, 19.625732, 7.871337>,  <15.008376, 19.473698, 7.762163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.858155, 19.625732, 7.871337>,  <14.607787, 19.879124, 8.053294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.858155, 19.625732, 7.871337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663444, -0.739115, 0.116405,
		-0.409959, 0.228936, -0.882905,
		0.625920, -0.633480, -0.454893,
		15.045931, 19.435688, 7.734869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.251621, 19.412344, 7.524035>,  <14.607787, 19.879124, 8.053294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.251621, 19.412344, 7.524035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.578193, 19.221958, 7.654819>,  <14.774136, 19.107727, 7.733290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.578193, 19.221958, 7.654819>,  <14.251621, 19.412344, 7.524035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578193, 19.221958, 7.654819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461917, -0.878093, -0.124843,
		0.346523, -0.049104, -0.936755,
		0.816428, -0.475965, 0.326961,
		14.823121, 19.079168, 7.752908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.633588, 18.788790, 7.042323>,  <14.251621, 19.412344, 7.524035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.633588, 18.788790, 7.042323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.653708, 18.749031, 7.439833>,  <14.665781, 18.725176, 7.678339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.653708, 18.749031, 7.439833>,  <14.633588, 18.788790, 7.042323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.653708, 18.749031, 7.439833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638631, -0.768224, -0.044513,
		0.767867, -0.632417, -0.102123,
		0.050303, -0.099398, 0.993775,
		14.668799, 18.719212, 7.737965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.973574, 18.229439, 7.351874>,  <14.633588, 18.788790, 7.042323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.973574, 18.229439, 7.351874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.658832, 18.337582, 7.573781>,  <14.469987, 18.402468, 7.706925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.658832, 18.337582, 7.573781>,  <14.973574, 18.229439, 7.351874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.658832, 18.337582, 7.573781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490988, -0.818855, -0.297334,
		0.373887, -0.506342, 0.777062,
		-0.786854, 0.270359, 0.554767,
		14.422775, 18.418690, 7.740211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.701599, 17.638355, 7.685966>,  <14.973574, 18.229439, 7.351874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.701599, 17.638355, 7.685966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.400542, 17.900982, 7.705773>,  <14.219908, 18.058558, 7.717658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.400542, 17.900982, 7.705773>,  <14.701599, 17.638355, 7.685966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.400542, 17.900982, 7.705773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658163, -0.748071, -0.084913,
		-0.018707, -0.096501, 0.995157,
		-0.752643, 0.656564, 0.049520,
		14.174749, 18.097952, 7.720629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.297180, 17.553524, 8.286644>,  <14.701599, 17.638355, 7.685966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.297180, 17.553524, 8.286644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.105840, 17.671879, 7.955916>,  <13.991035, 17.742891, 7.757480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.105840, 17.671879, 7.955916>,  <14.297180, 17.553524, 8.286644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.105840, 17.671879, 7.955916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526871, -0.849945, 0.000655,
		-0.702557, 0.435941, 0.562467,
		-0.478351, 0.295887, -0.826820,
		13.962335, 17.760645, 7.707870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.592982, 17.789513, 8.446976>,  <14.297180, 17.553524, 8.286644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.592982, 17.789513, 8.446976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.645825, 17.614925, 8.090989>,  <13.677531, 17.510172, 7.877397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.645825, 17.614925, 8.090989>,  <13.592982, 17.789513, 8.446976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.645825, 17.614925, 8.090989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675634, -0.696612, 0.241351,
		-0.725304, 0.569407, -0.386923,
		0.132109, -0.436471, -0.889967,
		13.685458, 17.483984, 7.823999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.986674, 17.699940, 8.102567>,  <13.592982, 17.789513, 8.446976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.986674, 17.699940, 8.102567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.232600, 17.408669, 7.981399>,  <13.380156, 17.233906, 7.908698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.232600, 17.408669, 7.981399>,  <12.986674, 17.699940, 8.102567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.232600, 17.408669, 7.981399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715159, -0.676671, 0.175112,
		-0.332490, 0.108974, -0.936790,
		0.614816, -0.728177, -0.302920,
		13.417045, 17.190216, 7.890522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.445394, 17.214544, 7.841661>,  <12.986674, 17.699940, 8.102567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.445394, 17.214544, 7.841661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.792968, 17.024216, 7.896136>,  <13.001513, 16.910019, 7.928822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.792968, 17.024216, 7.896136>,  <12.445394, 17.214544, 7.841661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.792968, 17.024216, 7.896136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493129, -0.808932, 0.320082,
		-0.042134, -0.345289, -0.937550,
		0.868935, -0.475820, 0.136189,
		13.053648, 16.881470, 7.936993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.494014, 16.405703, 7.552718>,  <12.445394, 17.214544, 7.841661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.494014, 16.405703, 7.552718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.742482, 16.436119, 7.864709>,  <12.891563, 16.454369, 8.051904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.742482, 16.436119, 7.864709>,  <12.494014, 16.405703, 7.552718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.742482, 16.436119, 7.864709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290595, -0.901976, 0.319364,
		0.727806, -0.425037, -0.538184,
		0.621171, 0.076042, 0.779978,
		12.928833, 16.458931, 8.098702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.421835, 16.491829, 6.833674>,  <12.494014, 16.405703, 7.552718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.421835, 16.491829, 6.833674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.104943, 16.626320, 6.629978>,  <11.914808, 16.707014, 6.507761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.104943, 16.626320, 6.629978>,  <12.421835, 16.491829, 6.833674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.104943, 16.626320, 6.629978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578081, 0.680790, -0.449831,
		0.195439, -0.650750, -0.733708,
		-0.792229, 0.336228, -0.509239,
		11.867274, 16.727188, 6.477206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.966714, 16.749329, 7.116570>,  <12.421835, 16.491829, 6.833674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.966714, 16.749329, 7.116570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.734902, 16.891449, 6.823200>,  <12.595816, 16.976721, 6.647179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.734902, 16.891449, 6.823200>,  <12.966714, 16.749329, 7.116570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.734902, 16.891449, 6.823200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786853, 0.478233, -0.390072,
		0.212154, -0.803153, -0.556718,
		-0.579528, 0.355300, -0.733423,
		12.561044, 16.998039, 6.603173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.191713, 16.489775, 6.423046>,  <12.966714, 16.749329, 7.116570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.191713, 16.489775, 6.423046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.023454, 16.852062, 6.402144>,  <12.922498, 17.069435, 6.389604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.023454, 16.852062, 6.402144>,  <13.191713, 16.489775, 6.423046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.023454, 16.852062, 6.402144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877005, 0.391221, -0.278944,
		-0.232201, -0.163164, -0.958885,
		-0.420649, 0.905717, -0.052253,
		12.897259, 17.123777, 6.386468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.025887, 15.786775, 6.256176>,  <13.191713, 16.489775, 6.423046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.025887, 15.786775, 6.256176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.182504, 15.498867, 6.485480>,  <13.276473, 15.326122, 6.623063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.182504, 15.498867, 6.485480>,  <13.025887, 15.786775, 6.256176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.182504, 15.498867, 6.485480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514049, -0.687817, -0.512505,
		0.763184, -0.094018, -0.639304,
		0.391539, -0.719770, 0.573261,
		13.299966, 15.282936, 6.657459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.317948, 15.305857, 5.727610>,  <13.025887, 15.786775, 6.256176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.317948, 15.305857, 5.727610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.261258, 15.142742, 6.088414>,  <13.227243, 15.044873, 6.304897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.261258, 15.142742, 6.088414>,  <13.317948, 15.305857, 5.727610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.261258, 15.142742, 6.088414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575703, -0.707309, -0.410220,
		0.805282, -0.577430, -0.134519,
		-0.141726, -0.407786, 0.902011,
		13.218740, 15.020407, 6.359017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.288732, 14.628495, 5.678548>,  <13.317948, 15.305857, 5.727610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.288732, 14.628495, 5.678548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.089057, 14.701065, 6.017464>,  <12.969253, 14.744607, 6.220813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.089057, 14.701065, 6.017464>,  <13.288732, 14.628495, 5.678548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.089057, 14.701065, 6.017464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660111, -0.713057, -0.236226,
		0.561308, -0.677225, 0.475709,
		-0.499186, 0.181425, 0.847289,
		12.939301, 14.755492, 6.271650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.630956, 15.097273, 5.671157>,  <13.288732, 14.628495, 5.678548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.630956, 15.097273, 5.671157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.887515, 14.966263, 5.393644>,  <13.041451, 14.887656, 5.227137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.887515, 14.966263, 5.393644>,  <12.630956, 15.097273, 5.671157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.887515, 14.966263, 5.393644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675965, 0.186464, -0.712954,
		0.362876, 0.926260, -0.101798,
		0.641399, -0.327526, -0.693783,
		13.079935, 14.868005, 5.185510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.812545, 15.683389, 5.125844>,  <12.630956, 15.097273, 5.671157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.812545, 15.683389, 5.125844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.811452, 15.292580, 5.040598>,  <12.810796, 15.058094, 4.989450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.811452, 15.292580, 5.040598>,  <12.812545, 15.683389, 5.125844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.811452, 15.292580, 5.040598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742612, 0.144711, -0.653901,
		0.669717, 0.156475, -0.725944,
		-0.002733, -0.977023, -0.213116,
		12.810632, 14.999473, 4.976663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.401584, 15.970413, 5.393471>,  <12.812545, 15.683389, 5.125844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.401584, 15.970413, 5.393471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.680381, 16.250019, 5.329501>,  <13.847659, 16.417784, 5.291119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.680381, 16.250019, 5.329501>,  <13.401584, 15.970413, 5.393471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.680381, 16.250019, 5.329501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702271, 0.620324, -0.349304,
		-0.144964, 0.355774, 0.923261,
		0.696994, 0.699016, -0.159926,
		13.889479, 16.459724, 5.281524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.247971, 16.653721, 5.697975>,  <13.401584, 15.970413, 5.393471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.247971, 16.653721, 5.697975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.472444, 16.722469, 5.374115>,  <13.607127, 16.763720, 5.179799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.472444, 16.722469, 5.374115>,  <13.247971, 16.653721, 5.697975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.472444, 16.722469, 5.374115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646513, 0.701815, -0.299127,
		0.516813, 0.691314, 0.504964,
		0.561182, 0.171872, -0.809651,
		13.640799, 16.774031, 5.131220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.273628, 17.411867, 5.630877>,  <13.247971, 16.653721, 5.697975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.273628, 17.411867, 5.630877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.307805, 17.203430, 5.291191>,  <13.328311, 17.078369, 5.087380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.307805, 17.203430, 5.291191>,  <13.273628, 17.411867, 5.630877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.307805, 17.203430, 5.291191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577021, 0.668964, -0.468544,
		0.812248, 0.530048, -0.243523,
		0.085443, -0.521091, -0.849213,
		13.333438, 17.047102, 5.036427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.363432, 18.039566, 5.685681>,  <13.273628, 17.411867, 5.630877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.363432, 18.039566, 5.685681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.673537, 18.105736, 5.441845>,  <13.859601, 18.145437, 5.295543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.673537, 18.105736, 5.441845>,  <13.363432, 18.039566, 5.685681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.673537, 18.105736, 5.441845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462758, 0.508111, 0.726415,
		0.429905, -0.845256, 0.317369,
		0.775265, 0.165424, -0.609589,
		13.906116, 18.155363, 5.258968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.071037, 17.946199, 6.016847>,  <13.363432, 18.039566, 5.685681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.071037, 17.946199, 6.016847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.129361, 18.178608, 5.696558>,  <14.164355, 18.318052, 5.504385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.129361, 18.178608, 5.696558>,  <14.071037, 17.946199, 6.016847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.129361, 18.178608, 5.696558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566765, 0.614331, 0.548977,
		0.810875, -0.533867, -0.239727,
		0.145809, 0.581020, -0.800722,
		14.173104, 18.352915, 5.456341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.796474, 18.129208, 6.031999>,  <14.071037, 17.946199, 6.016847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.796474, 18.129208, 6.031999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.587512, 18.420197, 5.854065>,  <14.462134, 18.594790, 5.747304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.587512, 18.420197, 5.854065>,  <14.796474, 18.129208, 6.031999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.587512, 18.420197, 5.854065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426231, 0.674612, 0.602683,
		0.738526, 0.125243, -0.662491,
		-0.522406, 0.727471, -0.444836,
		14.430790, 18.638437, 5.720614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254984, 18.633366, 5.807884>,  <14.796474, 18.129208, 6.031999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254984, 18.633366, 5.807884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.906907, 18.826523, 5.847036>,  <14.698061, 18.942417, 5.870528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.906907, 18.826523, 5.847036>,  <15.254984, 18.633366, 5.807884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.906907, 18.826523, 5.847036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479641, 0.784769, 0.392533,
		0.112736, 0.388527, -0.914515,
		-0.870193, 0.482891, 0.097882,
		14.645849, 18.971390, 5.876401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.724057, 18.374578, 5.362982>,  <15.254984, 18.633366, 5.807884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.724057, 18.374578, 5.362982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.791926, 18.488663, 5.740313>,  <15.832648, 18.557114, 5.966711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.791926, 18.488663, 5.740313>,  <15.724057, 18.374578, 5.362982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.791926, 18.488663, 5.740313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679077, -0.727521, 0.097819,
		0.714189, 0.623994, -0.317121,
		0.169674, 0.285211, 0.943327,
		15.842829, 18.574226, 6.023311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.214739, 17.912691, 5.644832>,  <15.724057, 18.374578, 5.362982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.214739, 17.912691, 5.644832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.205029, 18.158985, 5.959864>,  <16.199203, 18.306763, 6.148882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.205029, 18.158985, 5.959864>,  <16.214739, 17.912691, 5.644832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.205029, 18.158985, 5.959864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728477, -0.528632, 0.435741,
		0.684641, 0.584310, -0.435718,
		-0.024274, 0.615736, 0.787578,
		16.197746, 18.343706, 6.196137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.875950, 18.298347, 5.993133>,  <16.214739, 17.912691, 5.644832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.875950, 18.298347, 5.993133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606197, 18.159687, 6.253915>,  <16.444345, 18.076490, 6.410384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606197, 18.159687, 6.253915>,  <16.875950, 18.298347, 5.993133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606197, 18.159687, 6.253915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737250, -0.365064, 0.568499,
		0.040935, 0.864038, 0.501760,
		-0.674379, -0.346650, 0.651956,
		16.403883, 18.055693, 6.449502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907288, 18.510487, 6.568432>,  <16.875950, 18.298347, 5.993133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.907288, 18.510487, 6.568432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733685, 18.166656, 6.676332>,  <16.629522, 17.960358, 6.741071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733685, 18.166656, 6.676332>,  <16.907288, 18.510487, 6.568432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.733685, 18.166656, 6.676332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728776, -0.158949, 0.666049,
		-0.529644, 0.485657, 0.695424,
		-0.434008, -0.859577, 0.269749,
		16.603481, 17.908783, 6.757256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<19.941137, 16.895737, 18.059072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.136642, 17.244076, 18.038139>,  <20.253944, 17.453079, 18.025579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.136642, 17.244076, 18.038139>,  <19.941137, 16.895737, 18.059072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.136642, 17.244076, 18.038139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356148, 0.144408, -0.923204,
		-0.796412, 0.469864, 0.380731,
		0.488761, 0.870847, -0.052333,
		20.283270, 17.505329, 18.022440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.474699, 17.410383, 17.862356>,  <19.941137, 16.895737, 18.059072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.474699, 17.410383, 17.862356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.835896, 17.552284, 17.765400>,  <20.052614, 17.637424, 17.707226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.835896, 17.552284, 17.765400>,  <19.474699, 17.410383, 17.862356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.835896, 17.552284, 17.765400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327329, 0.202567, -0.922942,
		-0.278316, 0.912753, 0.299037,
		0.902993, 0.354753, -0.242393,
		20.106794, 17.658710, 17.692682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.353678, 17.861965, 17.349735>,  <19.474699, 17.410383, 17.862356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.353678, 17.861965, 17.349735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.744331, 17.844212, 17.265625>,  <19.978724, 17.833559, 17.215158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.744331, 17.844212, 17.265625>,  <19.353678, 17.861965, 17.349735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.744331, 17.844212, 17.265625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210598, -0.002692, -0.977569,
		0.042821, 0.999011, -0.011976,
		0.976634, -0.044383, -0.210275,
		20.037321, 17.830896, 17.202543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.459969, 18.419455, 16.831060>,  <19.353678, 17.861965, 17.349735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.459969, 18.419455, 16.831060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.746067, 18.142670, 16.791855>,  <19.917727, 17.976599, 16.768332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.746067, 18.142670, 16.791855>,  <19.459969, 18.419455, 16.831060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.746067, 18.142670, 16.791855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020027, 0.119897, -0.992584,
		0.698585, 0.711906, 0.071898,
		0.715247, -0.691965, -0.098016,
		19.960642, 17.935080, 16.762449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.003298, 18.779432, 16.373018>,  <19.459969, 18.419455, 16.831060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.003298, 18.779432, 16.373018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.130486, 18.402096, 16.335070>,  <20.206799, 18.175694, 16.312302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.130486, 18.402096, 16.335070>,  <20.003298, 18.779432, 16.373018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.130486, 18.402096, 16.335070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102878, 0.133802, -0.985654,
		0.942503, 0.303649, 0.139594,
		0.317970, -0.943342, -0.094870,
		20.225876, 18.119093, 16.306608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.651127, 18.778725, 15.969162>,  <20.003298, 18.779432, 16.373018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.651127, 18.778725, 15.969162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.434769, 18.442558, 15.955717>,  <20.304955, 18.240858, 15.947650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.434769, 18.442558, 15.955717>,  <20.651127, 18.778725, 15.969162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.434769, 18.442558, 15.955717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040164, 0.065727, -0.997029,
		0.840131, -0.537938, -0.069305,
		-0.540895, -0.840419, -0.033613,
		20.272501, 18.190434, 15.945633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.932224, 18.405563, 15.371456>,  <20.651127, 18.778725, 15.969162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.932224, 18.405563, 15.371456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.573738, 18.251556, 15.459600>,  <20.358646, 18.159151, 15.512486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.573738, 18.251556, 15.459600>,  <20.932224, 18.405563, 15.371456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.573738, 18.251556, 15.459600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251949, 0.032917, -0.967180,
		0.365130, -0.922321, -0.126506,
		-0.896216, -0.385020, 0.220360,
		20.304873, 18.136051, 15.525708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.797342, 18.081617, 14.789095>,  <20.932224, 18.405563, 15.371456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.797342, 18.081617, 14.789095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.437767, 18.114799, 14.961155>,  <20.222021, 18.134708, 15.064391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.437767, 18.114799, 14.961155>,  <20.797342, 18.081617, 14.789095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.437767, 18.114799, 14.961155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425058, 0.072417, -0.902265,
		-0.105998, -0.993918, -0.029837,
		-0.898938, 0.082956, 0.430149,
		20.168085, 18.139687, 15.090199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.256235, 17.617975, 14.359684>,  <20.797342, 18.081617, 14.789095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.256235, 17.617975, 14.359684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.039940, 17.883080, 14.566895>,  <19.910164, 18.042143, 14.691220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.039940, 17.883080, 14.566895>,  <20.256235, 17.617975, 14.359684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.039940, 17.883080, 14.566895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567954, 0.166613, -0.806020,
		-0.620509, -0.730059, 0.286325,
		-0.540737, 0.662762, 0.518025,
		19.877718, 18.081907, 14.722302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.639009, 17.476536, 14.083492>,  <20.256235, 17.617975, 14.359684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.639009, 17.476536, 14.083492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.609665, 17.826431, 14.275097>,  <19.592058, 18.036367, 14.390059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.609665, 17.826431, 14.275097>,  <19.639009, 17.476536, 14.083492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.609665, 17.826431, 14.275097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533363, 0.371434, -0.759974,
		-0.842699, -0.311241, 0.439303,
		-0.073364, 0.874737, 0.479012,
		19.587656, 18.088852, 14.418800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.961458, 17.606167, 14.218062>,  <19.639009, 17.476536, 14.083492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.961458, 17.606167, 14.218062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.152164, 17.957767, 14.220907>,  <19.266588, 18.168728, 14.222614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.152164, 17.957767, 14.220907>,  <18.961458, 17.606167, 14.218062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.152164, 17.957767, 14.220907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625218, 0.344781, -0.700164,
		-0.617896, 0.329370, 0.713947,
		0.476768, 0.879001, 0.007111,
		19.295195, 18.221468, 14.223041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.444046, 18.018187, 14.263231>,  <18.961458, 17.606167, 14.218062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.444046, 18.018187, 14.263231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.735592, 18.243107, 14.106989>,  <18.910521, 18.378059, 14.013244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.735592, 18.243107, 14.106989>,  <18.444046, 18.018187, 14.263231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.735592, 18.243107, 14.106989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658392, 0.419146, -0.625169,
		-0.187812, 0.712836, 0.675715,
		0.728867, 0.562300, -0.390605,
		18.954252, 18.411797, 13.989807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.200035, 18.735607, 14.220470>,  <18.444046, 18.018187, 14.263231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.200035, 18.735607, 14.220470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.491112, 18.709377, 13.947365>,  <18.665758, 18.693640, 13.783502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.491112, 18.709377, 13.947365>,  <18.200035, 18.735607, 14.220470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.491112, 18.709377, 13.947365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647077, 0.264530, -0.715063,
		0.227502, 0.962145, 0.150064,
		0.727691, -0.065576, -0.682763,
		18.709419, 18.689705, 13.742536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.106703, 19.314348, 13.830220>,  <18.200035, 18.735607, 14.220470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.106703, 19.314348, 13.830220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.338066, 19.088940, 13.594292>,  <18.476885, 18.953695, 13.452735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.338066, 19.088940, 13.594292>,  <18.106703, 19.314348, 13.830220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.338066, 19.088940, 13.594292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576657, 0.228959, -0.784248,
		0.576984, 0.793740, -0.192526,
		0.578409, -0.563520, -0.589821,
		18.511589, 18.919884, 13.417345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240700, 19.729486, 13.217105>,  <18.106703, 19.314348, 13.830220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.240700, 19.729486, 13.217105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.338303, 19.351505, 13.129908>,  <18.396864, 19.124716, 13.077589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.338303, 19.351505, 13.129908>,  <18.240700, 19.729486, 13.217105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.338303, 19.351505, 13.129908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528587, 0.058867, -0.846835,
		0.813054, 0.321861, -0.485127,
		0.244005, -0.944955, -0.217994,
		18.411505, 19.068018, 13.064509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.486824, 19.677975, 12.496412>,  <18.240700, 19.729486, 13.217105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.486824, 19.677975, 12.496412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.363476, 19.308811, 12.588624>,  <18.289467, 19.087313, 12.643950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.363476, 19.308811, 12.588624>,  <18.486824, 19.677975, 12.496412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.363476, 19.308811, 12.588624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609965, 0.005875, -0.792407,
		0.729967, -0.384968, -0.564755,
		-0.308370, -0.922911, 0.230528,
		18.270966, 19.031939, 12.657783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.465952, 19.336134, 11.872149>,  <18.486824, 19.677975, 12.496412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.465952, 19.336134, 11.872149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.249462, 19.071621, 12.079910>,  <18.119568, 18.912912, 12.204567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.249462, 19.071621, 12.079910>,  <18.465952, 19.336134, 11.872149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.249462, 19.071621, 12.079910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542107, -0.197791, -0.816700,
		0.642803, -0.723590, -0.251437,
		-0.541224, -0.661284, 0.519404,
		18.087095, 18.873236, 12.235731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.359522, 18.818781, 11.462472>,  <18.465952, 19.336134, 11.872149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.359522, 18.818781, 11.462472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.033119, 18.793343, 11.692286>,  <17.837278, 18.778080, 11.830175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.033119, 18.793343, 11.692286>,  <18.359522, 18.818781, 11.462472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.033119, 18.793343, 11.692286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556966, -0.179463, -0.810914,
		0.154679, -0.981707, 0.111022,
		-0.816005, -0.063596, 0.574537,
		17.788319, 18.774263, 11.864648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.090137, 18.206741, 11.214293>,  <18.359522, 18.818781, 11.462472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.090137, 18.206741, 11.214293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.802807, 18.409836, 11.404539>,  <17.630409, 18.531693, 11.518687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.802807, 18.409836, 11.404539>,  <18.090137, 18.206741, 11.214293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.802807, 18.409836, 11.404539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632098, -0.190735, -0.751047,
		-0.290618, -0.840132, 0.457950,
		-0.718326, 0.507738, 0.475615,
		17.587309, 18.562157, 11.547224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.474604, 17.851332, 11.012259>,  <18.090137, 18.206741, 11.214293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.474604, 17.851332, 11.012259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.307838, 18.189743, 11.145174>,  <17.207779, 18.392790, 11.224923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.307838, 18.189743, 11.145174>,  <17.474604, 17.851332, 11.012259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.307838, 18.189743, 11.145174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707185, -0.072250, -0.703327,
		-0.571028, -0.528216, 0.628422,
		-0.416912, 0.846031, 0.332290,
		17.182764, 18.443552, 11.244861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.719894, 17.620716, 11.068811>,  <17.474604, 17.851332, 11.012259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.719894, 17.620716, 11.068811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.734417, 18.020313, 11.058267>,  <16.743130, 18.260071, 11.051940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.734417, 18.020313, 11.058267>,  <16.719894, 17.620716, 11.068811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.734417, 18.020313, 11.058267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776626, 0.011602, -0.629855,
		-0.628915, 0.043340, 0.776265,
		0.036304, 0.998993, -0.026362,
		16.745308, 18.320011, 11.050358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.093019, 17.798872, 11.205400>,  <16.719894, 17.620716, 11.068811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.093019, 17.798872, 11.205400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.250683, 18.111660, 11.012254>,  <16.345280, 18.299334, 10.896366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.250683, 18.111660, 11.012254>,  <16.093019, 17.798872, 11.205400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.250683, 18.111660, 11.012254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692663, -0.092556, -0.715298,
		-0.604035, 0.616403, 0.505162,
		0.394157, 0.781972, -0.482867,
		16.368929, 18.346252, 10.867393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.522178, 18.219213, 10.830738>,  <16.093019, 17.798872, 11.205400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.522178, 18.219213, 10.830738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.157754, 18.230423, 10.995267>,  <14.939099, 18.237148, 11.093984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.157754, 18.230423, 10.995267>,  <15.522178, 18.219213, 10.830738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.157754, 18.230423, 10.995267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410964, -0.017783, 0.911478,
		0.032858, 0.999449, 0.004685,
		-0.911059, 0.028024, 0.411321,
		14.884436, 18.238831, 11.118664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.581902, 18.466600, 11.495023>,  <15.522178, 18.219213, 10.830738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.581902, 18.466600, 11.495023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.226836, 18.284523, 11.522892>,  <15.013797, 18.175278, 11.539614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.226836, 18.284523, 11.522892>,  <15.581902, 18.466600, 11.495023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.226836, 18.284523, 11.522892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148321, -0.139376, 0.979069,
		-0.435953, 0.879417, 0.191233,
		-0.887663, -0.455192, 0.069674,
		14.960537, 18.147964, 11.543795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.378032, 18.643026, 12.090810>,  <15.581902, 18.466600, 11.495023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.378032, 18.643026, 12.090810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.147927, 18.324631, 12.015467>,  <15.009865, 18.133595, 11.970261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.147927, 18.324631, 12.015467>,  <15.378032, 18.643026, 12.090810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.147927, 18.324631, 12.015467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075299, -0.280830, 0.956799,
		-0.814496, 0.536227, 0.221488,
		-0.575262, -0.795987, -0.188357,
		14.975348, 18.085835, 11.958960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.910560, 18.554724, 12.664467>,  <15.378032, 18.643026, 12.090810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.910560, 18.554724, 12.664467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.897725, 18.194588, 12.490868>,  <14.890024, 17.978506, 12.386708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.897725, 18.194588, 12.490868>,  <14.910560, 18.554724, 12.664467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.897725, 18.194588, 12.490868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061667, -0.431612, 0.899949,
		-0.997581, 0.055639, -0.041672,
		-0.032086, -0.900342, -0.433999,
		14.888100, 17.924484, 12.360668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.294861, 18.239960, 12.919866>,  <14.910560, 18.554724, 12.664467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.294861, 18.239960, 12.919866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.565215, 17.961166, 12.824037>,  <14.727427, 17.793890, 12.766540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.565215, 17.961166, 12.824037>,  <14.294861, 18.239960, 12.919866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.565215, 17.961166, 12.824037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021235, -0.343341, 0.938971,
		-0.736701, -0.629549, -0.246859,
		0.675885, -0.696983, -0.239571,
		14.767981, 17.752071, 12.752165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.245253, 17.587595, 13.363959>,  <14.294861, 18.239960, 12.919866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.245253, 17.587595, 13.363959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.602792, 17.522278, 13.196928>,  <14.817315, 17.483088, 13.096709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.602792, 17.522278, 13.196928>,  <14.245253, 17.587595, 13.363959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.602792, 17.522278, 13.196928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373093, -0.245649, 0.894684,
		-0.248748, -0.955493, -0.158614,
		0.893827, -0.163373, -0.417592,
		14.870946, 17.473289, 13.071654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.398136, 16.893669, 13.449623>,  <14.245253, 17.587595, 13.363959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.398136, 16.893669, 13.449623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.738698, 17.099693, 13.409977>,  <14.943035, 17.223307, 13.386189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.738698, 17.099693, 13.409977>,  <14.398136, 16.893669, 13.449623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.738698, 17.099693, 13.409977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331681, -0.382311, 0.862454,
		0.406321, -0.767172, -0.496336,
		0.851405, 0.515058, -0.099116,
		14.994120, 17.254211, 13.380242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.886462, 16.475491, 13.790997>,  <14.398136, 16.893669, 13.449623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.886462, 16.475491, 13.790997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.101396, 16.810120, 13.748257>,  <15.230356, 17.010897, 13.722612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.101396, 16.810120, 13.748257>,  <14.886462, 16.475491, 13.790997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.101396, 16.810120, 13.748257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561746, -0.260520, 0.785221,
		0.629058, -0.481949, -0.609928,
		0.537334, 0.836573, -0.106851,
		15.262596, 17.061092, 13.716202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660526, 16.316673, 13.843921>,  <14.886462, 16.475491, 13.790997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.660526, 16.316673, 13.843921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.656940, 16.707184, 13.930462>,  <15.654787, 16.941490, 13.982387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.656940, 16.707184, 13.930462>,  <15.660526, 16.316673, 13.843921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.656940, 16.707184, 13.930462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523594, -0.179746, 0.832791,
		0.851921, 0.120748, -0.509559,
		-0.008967, 0.976274, 0.216352,
		15.654249, 17.000067, 13.995368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.322834, 16.602192, 13.919894>,  <15.660526, 16.316673, 13.843921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.322834, 16.602192, 13.919894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.094879, 16.853851, 14.131327>,  <15.958106, 17.004847, 14.258186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.094879, 16.853851, 14.131327>,  <16.322834, 16.602192, 13.919894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094879, 16.853851, 14.131327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471110, -0.276887, 0.837490,
		0.673265, 0.726294, -0.138605,
		-0.569886, 0.629151, 0.528582,
		15.923913, 17.042597, 14.289902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.673567, 16.826395, 14.491290>,  <16.322834, 16.602192, 13.919894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.673567, 16.826395, 14.491290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.327030, 16.980221, 14.618765>,  <16.119108, 17.072515, 14.695250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.327030, 16.980221, 14.618765>,  <16.673567, 16.826395, 14.491290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.327030, 16.980221, 14.618765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302028, -0.104799, 0.947521,
		0.397779, 0.917131, -0.025357,
		-0.866343, 0.384563, 0.318686,
		16.067127, 17.095589, 14.714371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844744, 17.342230, 14.925594>,  <16.673567, 16.826395, 14.491290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.844744, 17.342230, 14.925594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.474953, 17.240479, 15.039179>,  <16.253078, 17.179428, 15.107329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.474953, 17.240479, 15.039179>,  <16.844744, 17.342230, 14.925594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474953, 17.240479, 15.039179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301820, -0.033307, 0.952783,
		-0.232908, 0.966531, 0.107567,
		-0.924478, -0.254377, 0.283961,
		16.197609, 17.164165, 15.124367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.741308, 17.708660, 15.517585>,  <16.844744, 17.342230, 14.925594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.741308, 17.708660, 15.517585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.461170, 17.425022, 15.550327>,  <16.293087, 17.254839, 15.569973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.461170, 17.425022, 15.550327>,  <16.741308, 17.708660, 15.517585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.461170, 17.425022, 15.550327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202629, -0.087539, 0.975335,
		-0.684441, 0.699656, 0.204990,
		-0.700344, -0.709097, 0.081855,
		16.251066, 17.212294, 15.574883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.255747, 17.903221, 15.930325>,  <16.741308, 17.708660, 15.517585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.255747, 17.903221, 15.930325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.199829, 17.507275, 15.940281>,  <16.166279, 17.269707, 15.946255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.199829, 17.507275, 15.940281>,  <16.255747, 17.903221, 15.930325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.199829, 17.507275, 15.940281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246717, -0.010476, 0.969031,
		-0.958952, 0.141606, 0.245682,
		-0.139794, -0.989868, 0.024891,
		16.157890, 17.210314, 15.947748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.021008, 17.783016, 16.601215>,  <16.255747, 17.903221, 15.930325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.021008, 17.783016, 16.601215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.169197, 17.435295, 16.470335>,  <16.258112, 17.226662, 16.391806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.169197, 17.435295, 16.470335>,  <16.021008, 17.783016, 16.601215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.169197, 17.435295, 16.470335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475395, -0.125174, 0.870822,
		-0.797965, -0.478169, 0.366888,
		0.370475, -0.869302, -0.327203,
		16.280340, 17.174505, 16.372173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916253, 17.271915, 17.131531>,  <16.021008, 17.783016, 16.601215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916253, 17.271915, 17.131531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.204750, 17.105576, 16.909945>,  <16.377848, 17.005772, 16.776993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.204750, 17.105576, 16.909945>,  <15.916253, 17.271915, 17.131531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.204750, 17.105576, 16.909945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537639, -0.168175, 0.826233,
		-0.436754, -0.893747, 0.102283,
		0.721242, -0.415852, -0.553964,
		16.421124, 16.980820, 16.743755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.144876, 16.649830, 17.435081>,  <15.916253, 17.271915, 17.131531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.144876, 16.649830, 17.435081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.449814, 16.709232, 17.183119>,  <16.632776, 16.744873, 17.031942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.449814, 16.709232, 17.183119>,  <16.144876, 16.649830, 17.435081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449814, 16.709232, 17.183119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645835, -0.237175, 0.725704,
		-0.041626, -0.960049, -0.276719,
		0.762342, 0.148507, -0.629905,
		16.678516, 16.753784, 16.994146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.551723, 16.120579, 17.607420>,  <16.144876, 16.649830, 17.435081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.551723, 16.120579, 17.607420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.761047, 16.424156, 17.452423>,  <16.886642, 16.606302, 17.359425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.761047, 16.424156, 17.452423>,  <16.551723, 16.120579, 17.607420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.761047, 16.424156, 17.452423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568418, 0.027887, 0.822268,
		0.634860, -0.650560, -0.416803,
		0.523311, 0.758943, -0.387494,
		16.918041, 16.651838, 17.336174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.323679, 15.921647, 17.458019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.316437, 16.321095, 17.477757>,  <17.312092, 16.560762, 17.489599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.316437, 16.321095, 17.477757>,  <17.323679, 15.921647, 17.458019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.316437, 16.321095, 17.477757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741410, -0.019700, 0.670763,
		0.670808, 0.048729, -0.740029,
		-0.018107, 0.998618, 0.049343,
		17.311005, 16.620680, 17.492559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.029716, 16.141092, 17.452255>,  <17.323679, 15.921647, 17.458019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.029716, 16.141092, 17.452255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.828640, 16.460125, 17.585623>,  <17.707994, 16.651545, 17.665644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.828640, 16.460125, 17.585623>,  <18.029716, 16.141092, 17.452255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.828640, 16.460125, 17.585623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645181, 0.089440, 0.758776,
		0.575364, 0.596544, -0.559545,
		-0.502689, 0.797581, 0.333418,
		17.677834, 16.699400, 17.685648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.531172, 16.584375, 17.701292>,  <18.029716, 16.141092, 17.452255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.531172, 16.584375, 17.701292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.197311, 16.697655, 17.890251>,  <17.996996, 16.765623, 18.003626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.197311, 16.697655, 17.890251>,  <18.531172, 16.584375, 17.701292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.197311, 16.697655, 17.890251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490789, -0.006848, 0.871252,
		0.249974, 0.959036, -0.133276,
		-0.834649, 0.283200, 0.472396,
		17.946917, 16.782616, 18.031971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.880329, 17.070080, 18.209730>,  <18.531172, 16.584375, 17.701292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.880329, 17.070080, 18.209730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.502354, 17.011093, 18.326586>,  <18.275568, 16.975700, 18.396698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.502354, 17.011093, 18.326586>,  <18.880329, 17.070080, 18.209730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.502354, 17.011093, 18.326586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226763, 0.348575, 0.909436,
		-0.235945, 0.925607, -0.295941,
		-0.944938, -0.147469, 0.292138,
		18.218872, 16.966852, 18.414227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.668835, 17.679590, 18.498491>,  <18.880329, 17.070080, 18.209730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.668835, 17.679590, 18.498491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.449848, 17.380470, 18.648731>,  <18.318457, 17.200998, 18.738874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.449848, 17.380470, 18.648731>,  <18.668835, 17.679590, 18.498491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.449848, 17.380470, 18.648731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165111, 0.343487, 0.924529,
		-0.820376, 0.568167, -0.064578,
		-0.547469, -0.747799, 0.375599,
		18.285608, 17.156130, 18.761412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.251011, 17.995483, 18.999214>,  <18.668835, 17.679590, 18.498491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.251011, 17.995483, 18.999214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.249573, 17.612537, 19.114761>,  <18.248711, 17.382771, 19.184090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.249573, 17.612537, 19.114761>,  <18.251011, 17.995483, 18.999214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.249573, 17.612537, 19.114761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121761, 0.286300, 0.950372,
		-0.992553, 0.038588, 0.115541,
		-0.003594, -0.957363, 0.288866,
		18.248495, 17.325329, 19.201422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.926880, 18.054399, 19.649195>,  <18.251011, 17.995483, 18.999214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.926880, 18.054399, 19.649195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.086864, 17.688026, 19.635910>,  <18.182856, 17.468203, 19.627939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.086864, 17.688026, 19.635910>,  <17.926880, 18.054399, 19.649195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.086864, 17.688026, 19.635910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189915, 0.047374, 0.980657,
		-0.896640, -0.398531, 0.192897,
		0.399960, -0.915930, -0.033210,
		18.206852, 17.413248, 19.625948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.551844, 17.610712, 20.168114>,  <17.926880, 18.054399, 19.649195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.551844, 17.610712, 20.168114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.929535, 17.489738, 20.116014>,  <18.156151, 17.417154, 20.084755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.929535, 17.489738, 20.116014>,  <17.551844, 17.610712, 20.168114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.929535, 17.489738, 20.116014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066982, -0.210872, 0.975216,
		-0.322407, -0.929551, -0.178854,
		0.944229, -0.302436, -0.130249,
		18.212803, 17.399008, 20.076941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516378, 17.042866, 20.563751>,  <17.551844, 17.610712, 20.168114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516378, 17.042866, 20.563751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.890835, 17.180073, 20.532820>,  <18.115509, 17.262398, 20.514261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.890835, 17.180073, 20.532820>,  <17.516378, 17.042866, 20.563751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.890835, 17.180073, 20.532820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156988, -0.210939, 0.964810,
		0.314636, -0.915338, -0.251318,
		0.936140, 0.343018, -0.077328,
		18.171677, 17.282978, 20.509621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.953970, 16.518328, 20.814491>,  <17.516378, 17.042866, 20.563751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.953970, 16.518328, 20.814491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.176147, 16.850010, 20.839458>,  <18.309454, 17.049019, 20.854439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.176147, 16.850010, 20.839458>,  <17.953970, 16.518328, 20.814491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.176147, 16.850010, 20.839458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310323, -0.276339, 0.909580,
		0.771480, -0.485851, -0.410814,
		0.555444, 0.829208, 0.062420,
		18.342781, 17.098772, 20.858185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.594795, 16.222614, 21.113890>,  <17.953970, 16.518328, 20.814491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.594795, 16.222614, 21.113890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.595154, 16.618122, 21.173674>,  <18.595369, 16.855427, 21.209543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.595154, 16.618122, 21.173674>,  <18.594795, 16.222614, 21.113890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.595154, 16.618122, 21.173674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300769, -0.142806, 0.942945,
		0.953697, 0.044110, -0.297518,
		0.000894, 0.988767, 0.149461,
		18.595423, 16.914753, 21.218512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.144474, 16.318512, 21.667919>,  <18.594795, 16.222614, 21.113890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.144474, 16.318512, 21.667919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.949566, 16.666286, 21.700539>,  <18.832621, 16.874950, 21.720110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.949566, 16.666286, 21.700539>,  <19.144474, 16.318512, 21.667919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.949566, 16.666286, 21.700539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174898, 0.005675, 0.984570,
		0.855557, 0.494015, -0.154828,
		-0.487271, 0.869435, 0.081547,
		18.803385, 16.927116, 21.725002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.518745, 16.848900, 22.110559>,  <19.144474, 16.318512, 21.667919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.518745, 16.848900, 22.110559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.133823, 16.957626, 22.106873>,  <18.902870, 17.022861, 22.104660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.133823, 16.957626, 22.106873>,  <19.518745, 16.848900, 22.110559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.133823, 16.957626, 22.106873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065353, 0.264002, 0.962306,
		0.264002, 0.925430, -0.271814,
		-0.962306, 0.271814, -0.009218,
		18.845131, 17.039171, 22.104107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.497864, 17.568413, 22.400013>,  <19.518745, 16.848900, 22.110559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.497864, 17.568413, 22.400013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.134277, 17.410309, 22.452999>,  <18.916124, 17.315447, 22.484791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.134277, 17.410309, 22.452999>,  <19.497864, 17.568413, 22.400013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.134277, 17.410309, 22.452999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083129, 0.139513, 0.986725,
		-0.408493, 0.907913, -0.093955,
		-0.908968, -0.395260, 0.132464,
		18.861588, 17.291731, 22.492739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201389, 18.023731, 22.775509>,  <19.497864, 17.568413, 22.400013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.201389, 18.023731, 22.775509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.967766, 17.702065, 22.819670>,  <18.827593, 17.509064, 22.846167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.967766, 17.702065, 22.819670>,  <19.201389, 18.023731, 22.775509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.967766, 17.702065, 22.819670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029145, 0.156702, 0.987216,
		-0.811189, 0.573373, -0.114961,
		-0.584058, -0.804169, 0.110404,
		18.792549, 17.460814, 22.852791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605467, 18.185963, 23.146000>,  <19.201389, 18.023731, 22.775509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605467, 18.185963, 23.146000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.644154, 17.791969, 23.203203>,  <18.667366, 17.555573, 23.237524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.644154, 17.791969, 23.203203>,  <18.605467, 18.185963, 23.146000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.644154, 17.791969, 23.203203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082303, 0.151104, 0.985086,
		-0.991903, -0.083506, 0.095682,
		0.096719, -0.984984, 0.143007,
		18.673170, 17.496473, 23.246105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.348076, 18.122746, 23.781113>,  <18.605467, 18.185963, 23.146000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.348076, 18.122746, 23.781113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.492462, 17.751427, 23.745403>,  <18.579094, 17.528635, 23.723978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.492462, 17.751427, 23.745403>,  <18.348076, 18.122746, 23.781113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.492462, 17.751427, 23.745403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190624, -0.020264, 0.981454,
		-0.912889, -0.371290, 0.169641,
		0.360967, -0.928296, -0.089275,
		18.600752, 17.472939, 23.718620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.901253, 17.637667, 24.247644>,  <18.348076, 18.122746, 23.781113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.901253, 17.637667, 24.247644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.260807, 17.473598, 24.185980>,  <18.476540, 17.375158, 24.148981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.260807, 17.473598, 24.185980>,  <17.901253, 17.637667, 24.247644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.260807, 17.473598, 24.185980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145558, -0.052334, 0.987964,
		-0.413303, -0.910506, 0.012662,
		0.898884, -0.410172, -0.154161,
		18.530472, 17.350548, 24.139732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.995485, 17.193748, 24.795786>,  <17.901253, 17.637667, 24.247644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.995485, 17.193748, 24.795786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.379581, 17.209328, 24.685205>,  <18.610039, 17.218676, 24.618856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.379581, 17.209328, 24.685205>,  <17.995485, 17.193748, 24.795786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.379581, 17.209328, 24.685205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269865, 0.124206, 0.954854,
		0.071523, -0.991492, 0.108758,
		0.960238, 0.038944, -0.276452,
		18.667652, 17.221012, 24.602270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.497747, 16.689201, 25.257023>,  <17.995485, 17.193748, 24.795786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.497747, 16.689201, 25.257023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.735748, 16.974892, 25.109587>,  <18.878548, 17.146305, 25.021126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.735748, 16.974892, 25.109587>,  <18.497747, 16.689201, 25.257023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.735748, 16.974892, 25.109587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399337, 0.135282, 0.906769,
		0.697499, -0.686719, -0.204723,
		0.595000, 0.714224, -0.368591,
		18.914248, 17.189159, 24.999010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.236095, 16.564249, 25.473701>,  <18.497747, 16.689201, 25.257023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.236095, 16.564249, 25.473701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.213753, 16.952961, 25.382032>,  <19.200348, 17.186188, 25.327030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.213753, 16.952961, 25.382032>,  <19.236095, 16.564249, 25.473701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.213753, 16.952961, 25.382032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533612, 0.223057, 0.815784,
		0.843883, -0.076723, -0.531014,
		-0.055857, 0.971781, -0.229175,
		19.196997, 17.244495, 25.313280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.914478, 16.799677, 25.665207>,  <19.236095, 16.564249, 25.473701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.914478, 16.799677, 25.665207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.700947, 17.137081, 25.641474>,  <19.572828, 17.339523, 25.627234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.700947, 17.137081, 25.641474>,  <19.914478, 16.799677, 25.665207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.700947, 17.137081, 25.641474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477772, 0.358768, 0.801885,
		0.697684, 0.399721, -0.594525,
		-0.533827, 0.843510, -0.059331,
		19.540798, 17.390135, 25.623674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.393703, 17.391811, 25.695513>,  <19.914478, 16.799677, 25.665207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.393703, 17.391811, 25.695513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.034157, 17.514126, 25.821070>,  <19.818428, 17.587515, 25.896404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.034157, 17.514126, 25.821070>,  <20.393703, 17.391811, 25.695513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.034157, 17.514126, 25.821070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437564, 0.587190, 0.680988,
		0.023921, 0.749468, -0.661608,
		-0.898869, 0.305786, 0.313895,
		19.764496, 17.605862, 25.915237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.343422, 18.062824, 25.705126>,  <20.393703, 17.391811, 25.695513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.343422, 18.062824, 25.705126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.135704, 17.945972, 26.026371>,  <20.011072, 17.875860, 26.219118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.135704, 17.945972, 26.026371>,  <20.343422, 18.062824, 25.705126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.135704, 17.945972, 26.026371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507641, 0.650548, 0.564879,
		-0.687482, 0.701033, -0.189529,
		-0.519296, -0.292131, 0.803113,
		19.979916, 17.858334, 26.267305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.973492, 18.330460, 25.826803>,  <20.343422, 18.062824, 25.705126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.973492, 18.330460, 25.826803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.360828, 18.429024, 25.810822>,  <21.593231, 18.488161, 25.801233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.360828, 18.429024, 25.810822>,  <20.973492, 18.330460, 25.826803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.360828, 18.429024, 25.810822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026680, -0.056968, -0.998019,
		-0.248197, 0.967490, -0.048591,
		0.968342, 0.246409, -0.039953,
		21.651331, 18.502947, 25.798836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.985535, 18.655813, 25.190655>,  <20.973492, 18.330460, 25.826803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.985535, 18.655813, 25.190655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.361897, 18.550053, 25.275309>,  <21.587713, 18.486597, 25.326101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.361897, 18.550053, 25.275309>,  <20.985535, 18.655813, 25.190655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.361897, 18.550053, 25.275309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172364, -0.164057, -0.971275,
		0.291525, 0.950357, -0.108790,
		0.940906, -0.264400, 0.211634,
		21.644169, 18.470734, 25.338799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.274586, 18.963009, 24.695427>,  <20.985535, 18.655813, 25.190655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.274586, 18.963009, 24.695427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.546062, 18.697060, 24.820217>,  <21.708948, 18.537491, 24.895090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.546062, 18.697060, 24.820217>,  <21.274586, 18.963009, 24.695427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.546062, 18.697060, 24.820217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117576, -0.320944, -0.939772,
		0.724953, 0.674494, -0.139648,
		0.678689, -0.664871, 0.311973,
		21.749670, 18.497599, 24.913809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.893438, 19.110769, 24.361492>,  <21.274586, 18.963009, 24.695427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.893438, 19.110769, 24.361492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.929379, 18.721294, 24.445269>,  <21.950943, 18.487610, 24.495535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.929379, 18.721294, 24.445269>,  <21.893438, 19.110769, 24.361492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.929379, 18.721294, 24.445269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120059, -0.198167, -0.972787,
		0.988692, 0.112550, 0.099095,
		0.089849, -0.973685, 0.209439,
		21.956333, 18.429190, 24.508101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.532427, 18.862770, 24.059620>,  <21.893438, 19.110769, 24.361492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.532427, 18.862770, 24.059620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.266254, 18.567730, 24.105482>,  <22.106550, 18.390705, 24.132999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.266254, 18.567730, 24.105482>,  <22.532427, 18.862770, 24.059620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.266254, 18.567730, 24.105482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034308, -0.123214, -0.991787,
		0.745670, -0.663900, 0.056684,
		-0.665432, -0.737601, 0.114654,
		22.066626, 18.346449, 24.139879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.526388, 18.664995, 23.461441>,  <22.532427, 18.862770, 24.059620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.526388, 18.664995, 23.461441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.226147, 18.442814, 23.604588>,  <22.046001, 18.309505, 23.690475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.226147, 18.442814, 23.604588>,  <22.526388, 18.664995, 23.461441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.226147, 18.442814, 23.604588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267957, -0.239187, -0.933268,
		0.603983, -0.796406, 0.030697,
		-0.750603, -0.555452, 0.357867,
		22.000965, 18.276178, 23.711948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.496254, 17.998245, 23.126020>,  <22.526388, 18.664995, 23.461441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.496254, 17.998245, 23.126020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.124115, 18.039082, 23.266893>,  <21.900831, 18.063583, 23.351418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.124115, 18.039082, 23.266893>,  <22.496254, 17.998245, 23.126020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.124115, 18.039082, 23.266893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366121, -0.205669, -0.907555,
		-0.020219, -0.973282, 0.228721,
		-0.930348, 0.102089, 0.352181,
		21.845011, 18.069708, 23.372547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.146179, 17.441792, 22.825943>,  <22.496254, 17.998245, 23.126020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.146179, 17.441792, 22.825943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.875580, 17.713680, 22.939316>,  <21.713221, 17.876814, 23.007339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.875580, 17.713680, 22.939316>,  <22.146179, 17.441792, 22.825943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.875580, 17.713680, 22.939316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419970, -0.039917, -0.906660,
		-0.604961, -0.732384, 0.312466,
		-0.676496, 0.679720, 0.283431,
		21.672630, 17.917597, 23.024345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.479965, 17.150173, 22.629688>,  <22.146179, 17.441792, 22.825943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.479965, 17.150173, 22.629688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.425800, 17.545406, 22.658972>,  <21.393301, 17.782545, 22.676542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.425800, 17.545406, 22.658972>,  <21.479965, 17.150173, 22.629688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.425800, 17.545406, 22.658972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471166, 0.000779, -0.882044,
		-0.871588, -0.153933, 0.465444,
		-0.135413, 0.988081, 0.073207,
		21.385176, 17.841831, 22.680933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.822512, 17.261339, 22.458746>,  <21.479965, 17.150173, 22.629688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.822512, 17.261339, 22.458746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.997349, 17.613934, 22.387264>,  <21.102251, 17.825489, 22.344376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.997349, 17.613934, 22.387264>,  <20.822512, 17.261339, 22.458746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.997349, 17.613934, 22.387264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438096, 0.035132, -0.898242,
		-0.785508, 0.470904, 0.401531,
		0.437092, 0.881484, -0.178704,
		21.128477, 17.878380, 22.333652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.322044, 17.563097, 21.982412>,  <20.822512, 17.261339, 22.458746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.322044, 17.563097, 21.982412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.647587, 17.794067, 21.956425>,  <20.842913, 17.932650, 21.940832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.647587, 17.794067, 21.956425>,  <20.322044, 17.563097, 21.982412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.647587, 17.794067, 21.956425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302111, 0.324981, -0.896168,
		-0.496356, 0.748978, 0.438934,
		0.813855, 0.577425, -0.064969,
		20.891743, 17.967295, 21.936934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.067579, 18.143953, 21.788868>,  <20.322044, 17.563097, 21.982412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.067579, 18.143953, 21.788868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.449902, 18.183441, 21.678097>,  <20.679295, 18.207134, 21.611633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.449902, 18.183441, 21.678097>,  <20.067579, 18.143953, 21.788868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.449902, 18.183441, 21.678097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292427, 0.222004, -0.930162,
		-0.030345, 0.970036, 0.241060,
		0.955806, 0.098718, -0.276928,
		20.736643, 18.213057, 21.595018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.098438, 18.719719, 21.337463>,  <20.067579, 18.143953, 21.788868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.098438, 18.719719, 21.337463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.444092, 18.533962, 21.259892>,  <20.651484, 18.422508, 21.213348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.444092, 18.533962, 21.259892>,  <20.098438, 18.719719, 21.337463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.444092, 18.533962, 21.259892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203006, 0.030948, -0.978688,
		0.460499, 0.885088, -0.067531,
		0.864135, -0.464394, -0.193930,
		20.703333, 18.394644, 21.201712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.512571, 19.016472, 20.892824>,  <20.098438, 18.719719, 21.337463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.512571, 19.016472, 20.892824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.628674, 18.636559, 20.846060>,  <20.698334, 18.408611, 20.818001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.628674, 18.636559, 20.846060>,  <20.512571, 19.016472, 20.892824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.628674, 18.636559, 20.846060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216539, 0.053814, -0.974789,
		0.932128, 0.308252, -0.190045,
		0.290254, -0.949781, -0.116911,
		20.715750, 18.351624, 20.810987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.721085, 19.040800, 20.266153>,  <20.512571, 19.016472, 20.892824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.721085, 19.040800, 20.266153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.736961, 18.642353, 20.297594>,  <20.746489, 18.403286, 20.316458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.736961, 18.642353, 20.297594>,  <20.721085, 19.040800, 20.266153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.736961, 18.642353, 20.297594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150627, -0.071798, -0.985980,
		0.987793, 0.050977, 0.147192,
		0.039694, -0.996116, 0.078600,
		20.748869, 18.343519, 20.321175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.243248, 18.743931, 19.841124>,  <20.721085, 19.040800, 20.266153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.243248, 18.743931, 19.841124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.015671, 18.420341, 19.900270>,  <20.879126, 18.226187, 19.935759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.015671, 18.420341, 19.900270>,  <21.243248, 18.743931, 19.841124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.015671, 18.420341, 19.900270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132824, -0.087053, -0.987309,
		0.811581, -0.581362, -0.057923,
		-0.568942, -0.808975, 0.147869,
		20.844988, 18.177649, 19.944632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.507645, 18.171629, 19.405125>,  <21.243248, 18.743931, 19.841124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.507645, 18.171629, 19.405125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.124660, 18.089516, 19.486244>,  <20.894871, 18.040249, 19.534916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.124660, 18.089516, 19.486244>,  <21.507645, 18.171629, 19.405125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.124660, 18.089516, 19.486244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133869, -0.306597, -0.942379,
		0.255632, -0.929439, 0.266074,
		-0.957461, -0.205283, 0.202799,
		20.837421, 18.027931, 19.547085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.397118, 17.530197, 19.398979>,  <21.507645, 18.171629, 19.405125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.397118, 17.530197, 19.398979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.021461, 17.651039, 19.333559>,  <20.796068, 17.723543, 19.294308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.021461, 17.651039, 19.333559>,  <21.397118, 17.530197, 19.398979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.021461, 17.651039, 19.333559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093210, -0.234135, -0.967725,
		-0.330647, -0.924074, 0.191727,
		-0.939140, 0.302105, -0.163549,
		20.739719, 17.741671, 19.284494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.202261, 17.029896, 18.886518>,  <21.397118, 17.530197, 19.398979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.202261, 17.029896, 18.886518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.949516, 17.338966, 18.862118>,  <20.797869, 17.524408, 18.847477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.949516, 17.338966, 18.862118>,  <21.202261, 17.029896, 18.886518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.949516, 17.338966, 18.862118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194153, -0.233980, -0.952659,
		-0.750371, -0.590104, 0.297860,
		-0.631862, 0.772678, -0.061002,
		20.759958, 17.570770, 18.843817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.666958, 16.728466, 18.621750>,  <21.202261, 17.029896, 18.886518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.666958, 16.728466, 18.621750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.645660, 17.118469, 18.535469>,  <20.632883, 17.352470, 18.483700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.645660, 17.118469, 18.535469>,  <20.666958, 16.728466, 18.621750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.645660, 17.118469, 18.535469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194926, -0.222003, -0.955363,
		-0.979372, -0.008819, 0.201874,
		-0.053242, 0.975006, -0.215704,
		20.629688, 17.410971, 18.470758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<14.991966, 16.813509, 15.493220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.365024, 16.889839, 15.370737>,  <15.588858, 16.935638, 15.297247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.365024, 16.889839, 15.370737>,  <14.991966, 16.813509, 15.493220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.365024, 16.889839, 15.370737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342251, 0.199280, -0.918233,
		-0.114202, 0.961183, 0.251168,
		0.932642, 0.190827, -0.306208,
		15.644816, 16.947086, 15.278874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.936693, 17.388988, 15.260237>,  <14.991966, 16.813509, 15.493220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.936693, 17.388988, 15.260237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.277524, 17.300049, 15.070700>,  <15.482022, 17.246685, 14.956978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.277524, 17.300049, 15.070700>,  <14.936693, 17.388988, 15.260237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.277524, 17.300049, 15.070700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335132, 0.463632, -0.820203,
		0.402059, 0.857675, 0.320534,
		0.852077, -0.222349, -0.473842,
		15.533147, 17.233345, 14.928547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.148644, 17.951015, 14.893714>,  <14.936693, 17.388988, 15.260237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.148644, 17.951015, 14.893714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.355803, 17.670971, 14.697094>,  <15.480099, 17.502943, 14.579122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.355803, 17.670971, 14.697094>,  <15.148644, 17.951015, 14.893714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.355803, 17.670971, 14.697094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332124, 0.364977, -0.869762,
		0.788337, 0.613704, -0.043504,
		0.517899, -0.700113, -0.491551,
		15.511173, 17.460938, 14.549629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.410941, 18.238632, 14.329557>,  <15.148644, 17.951015, 14.893714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.410941, 18.238632, 14.329557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.490586, 17.863873, 14.214611>,  <15.538373, 17.639017, 14.145643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.490586, 17.863873, 14.214611>,  <15.410941, 18.238632, 14.329557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.490586, 17.863873, 14.214611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251116, 0.234667, -0.939080,
		0.947257, 0.259144, -0.188545,
		0.199112, -0.936897, -0.287365,
		15.550320, 17.582804, 14.128402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.845127, 18.242737, 13.714128>,  <15.410941, 18.238632, 14.329557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.845127, 18.242737, 13.714128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.675197, 17.880627, 13.714262>,  <15.573238, 17.663361, 13.714342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.675197, 17.880627, 13.714262>,  <15.845127, 18.242737, 13.714128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.675197, 17.880627, 13.714262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349932, 0.163875, -0.922330,
		0.834908, -0.391947, -0.386403,
		-0.424826, -0.905275, 0.000334,
		15.547749, 17.609045, 13.714362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.073572, 17.885933, 13.020118>,  <15.845127, 18.242737, 13.714128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.073572, 17.885933, 13.020118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.761313, 17.666073, 13.139099>,  <15.573958, 17.534157, 13.210487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.761313, 17.666073, 13.139099>,  <16.073572, 17.885933, 13.020118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.761313, 17.666073, 13.139099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453976, 0.171602, -0.874333,
		0.429534, -0.817580, -0.383488,
		-0.780645, -0.549651, 0.297452,
		15.527120, 17.501179, 13.228334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.003901, 17.229784, 12.605959>,  <16.073572, 17.885933, 13.020118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.003901, 17.229784, 12.605959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.639596, 17.303589, 12.753725>,  <15.421013, 17.347872, 12.842384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.639596, 17.303589, 12.753725>,  <16.003901, 17.229784, 12.605959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.639596, 17.303589, 12.753725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358484, 0.090707, -0.929119,
		-0.204943, -0.978635, -0.016467,
		-0.910762, 0.184513, 0.369415,
		15.366367, 17.358942, 12.864550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.414724, 16.708696, 12.379663>,  <16.003901, 17.229784, 12.605959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.414724, 16.708696, 12.379663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.216535, 17.040192, 12.483741>,  <15.097621, 17.239088, 12.546187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.216535, 17.040192, 12.483741>,  <15.414724, 16.708696, 12.379663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.216535, 17.040192, 12.483741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376702, 0.064905, -0.924058,
		-0.782689, -0.555862, 0.280028,
		-0.495474, 0.828737, 0.260195,
		15.067892, 17.288813, 12.561799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.780828, 16.744181, 11.883558>,  <15.414724, 16.708696, 12.379663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.780828, 16.744181, 11.883558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.802033, 17.111080, 12.041465>,  <14.814756, 17.331221, 12.136209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.802033, 17.111080, 12.041465>,  <14.780828, 16.744181, 11.883558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.802033, 17.111080, 12.041465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395917, 0.382231, -0.834955,
		-0.916755, -0.112030, 0.383419,
		0.053014, 0.917251, 0.394766,
		14.817938, 17.386255, 12.159895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.216664, 17.005960, 11.629637>,  <14.780828, 16.744181, 11.883558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.216664, 17.005960, 11.629637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.427880, 17.327946, 11.737866>,  <14.554610, 17.521137, 11.802804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.427880, 17.327946, 11.737866>,  <14.216664, 17.005960, 11.629637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.427880, 17.327946, 11.737866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284287, 0.467787, -0.836872,
		-0.800222, 0.364981, 0.475851,
		0.528040, 0.804962, 0.270574,
		14.586292, 17.569435, 11.819038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.821735, 17.571392, 11.629215>,  <14.216664, 17.005960, 11.629637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.821735, 17.571392, 11.629215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.180076, 17.748684, 11.616578>,  <14.395081, 17.855059, 11.608995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.180076, 17.748684, 11.616578>,  <13.821735, 17.571392, 11.629215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.180076, 17.748684, 11.616578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308695, 0.569638, -0.761722,
		-0.319620, 0.692143, 0.647133,
		0.895852, 0.443228, -0.031594,
		14.448832, 17.881653, 11.607100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.658562, 18.261358, 11.547365>,  <13.821735, 17.571392, 11.629215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.658562, 18.261358, 11.547365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.031545, 18.218044, 11.409497>,  <14.255335, 18.192057, 11.326777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.031545, 18.218044, 11.409497>,  <13.658562, 18.261358, 11.547365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.031545, 18.218044, 11.409497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245484, 0.510052, -0.824369,
		0.265067, 0.853300, 0.449020,
		0.932458, -0.108286, -0.344670,
		14.311282, 18.185558, 11.306096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.909460, 18.959915, 11.377569>,  <13.658562, 18.261358, 11.547365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.909460, 18.959915, 11.377569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.091727, 18.666233, 11.176250>,  <14.201087, 18.490023, 11.055459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.091727, 18.666233, 11.176250>,  <13.909460, 18.959915, 11.377569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.091727, 18.666233, 11.176250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301600, 0.404622, -0.863318,
		0.837499, 0.545180, -0.037064,
		0.455667, -0.734207, -0.503297,
		14.228427, 18.445971, 11.025262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.381763, 19.280006, 10.885511>,  <13.909460, 18.959915, 11.377569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.381763, 19.280006, 10.885511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.198871, 18.934795, 10.799605>,  <14.089135, 18.727669, 10.748062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.198871, 18.934795, 10.799605>,  <14.381763, 19.280006, 10.885511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.198871, 18.934795, 10.799605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312758, 0.382096, -0.869589,
		0.832541, -0.330432, -0.444624,
		-0.457229, -0.863028, -0.214765,
		14.061702, 18.675886, 10.735176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.777418, 19.700460, 10.687054>,  <14.381763, 19.280006, 10.885511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.777418, 19.700460, 10.687054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.731429, 20.097347, 10.667929>,  <13.703835, 20.335480, 10.656454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.731429, 20.097347, 10.667929>,  <13.777418, 19.700460, 10.687054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.731429, 20.097347, 10.667929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300298, 0.080596, 0.950434,
		0.946891, 0.094916, -0.307227,
		-0.114973, 0.992217, -0.047813,
		13.696938, 20.395012, 10.653584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.359069, 19.999552, 11.059028>,  <13.777418, 19.700460, 10.687054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.359069, 19.999552, 11.059028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.156068, 20.343201, 11.032631>,  <14.034267, 20.549389, 11.016792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.156068, 20.343201, 11.032631>,  <14.359069, 19.999552, 11.059028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.156068, 20.343201, 11.032631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402975, 0.304347, 0.863125,
		0.761612, 0.411444, -0.500660,
		-0.507502, 0.859120, -0.065993,
		14.003818, 20.600937, 11.012834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829688, 20.712164, 11.121492>,  <14.359069, 19.999552, 11.059028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829688, 20.712164, 11.121492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.449975, 20.781242, 11.226594>,  <14.222147, 20.822689, 11.289655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.449975, 20.781242, 11.226594>,  <14.829688, 20.712164, 11.121492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.449975, 20.781242, 11.226594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299307, 0.240311, 0.923399,
		0.096324, 0.955211, -0.279811,
		-0.949282, 0.172695, 0.262754,
		14.165191, 20.833052, 11.305420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.907296, 21.413277, 11.367378>,  <14.829688, 20.712164, 11.121492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.907296, 21.413277, 11.367378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.572680, 21.263866, 11.527719>,  <14.371911, 21.174221, 11.623922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.572680, 21.263866, 11.527719>,  <14.907296, 21.413277, 11.367378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.572680, 21.263866, 11.527719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311380, 0.277872, 0.908752,
		-0.450826, 0.885024, -0.116143,
		-0.836540, -0.373524, 0.400851,
		14.321718, 21.151810, 11.647974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590367, 21.990572, 11.821309>,  <14.907296, 21.413277, 11.367378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590367, 21.990572, 11.821309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.450828, 21.632126, 11.931060>,  <14.367104, 21.417059, 11.996910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.450828, 21.632126, 11.931060>,  <14.590367, 21.990572, 11.821309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.450828, 21.632126, 11.931060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324522, 0.159152, 0.932393,
		-0.879198, 0.414306, 0.235289,
		-0.348849, -0.896115, 0.274377,
		14.346173, 21.363291, 12.013373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350806, 22.139959, 12.460820>,  <14.590367, 21.990572, 11.821309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350806, 22.139959, 12.460820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.412684, 21.744987, 12.447824>,  <14.449812, 21.508005, 12.440025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.412684, 21.744987, 12.447824>,  <14.350806, 22.139959, 12.460820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.412684, 21.744987, 12.447824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343699, 0.022955, 0.938799,
		-0.926250, -0.156396, 0.342929,
		0.154696, -0.987428, -0.032491,
		14.459093, 21.448759, 12.438076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.282680, 21.880058, 13.222513>,  <14.350806, 22.139959, 12.460820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.282680, 21.880058, 13.222513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.462453, 21.565960, 13.052149>,  <14.570317, 21.377501, 12.949930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.462453, 21.565960, 13.052149>,  <14.282680, 21.880058, 13.222513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.462453, 21.565960, 13.052149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379633, -0.263691, 0.886761,
		-0.808633, -0.560231, 0.179593,
		0.449434, -0.785244, -0.425911,
		14.597283, 21.330387, 12.924376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.982652, 21.175123, 13.604975>,  <14.282680, 21.880058, 13.222513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.982652, 21.175123, 13.604975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.335628, 21.102890, 13.431221>,  <14.547413, 21.059549, 13.326969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.335628, 21.102890, 13.431221>,  <13.982652, 21.175123, 13.604975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335628, 21.102890, 13.431221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404577, -0.179834, 0.896648,
		-0.240036, -0.966980, -0.085633,
		0.882440, -0.180583, -0.434384,
		14.600359, 21.048716, 13.300906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.262244, 20.676386, 14.041881>,  <13.982652, 21.175123, 13.604975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.262244, 20.676386, 14.041881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.562997, 20.838371, 13.833773>,  <14.743448, 20.935562, 13.708908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.562997, 20.838371, 13.833773>,  <14.262244, 20.676386, 14.041881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.562997, 20.838371, 13.833773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560790, 0.022125, 0.827662,
		0.346684, -0.914065, -0.210464,
		0.751881, 0.404963, -0.520270,
		14.788561, 20.959860, 13.677691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.872601, 20.222370, 14.107462>,  <14.262244, 20.676386, 14.041881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.872601, 20.222370, 14.107462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.015323, 20.584805, 14.016514>,  <15.100956, 20.802265, 13.961945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.015323, 20.584805, 14.016514>,  <14.872601, 20.222370, 14.107462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.015323, 20.584805, 14.016514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459375, 0.041751, 0.887261,
		0.813428, -0.421028, -0.401336,
		0.356806, 0.906086, -0.227371,
		15.122364, 20.856630, 13.948302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.587017, 20.172329, 14.324809>,  <14.872601, 20.222370, 14.107462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.587017, 20.172329, 14.324809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.545804, 20.567940, 14.282461>,  <15.521076, 20.805305, 14.257052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.545804, 20.567940, 14.282461>,  <15.587017, 20.172329, 14.324809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.545804, 20.567940, 14.282461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581229, 0.146239, 0.800492,
		0.807191, 0.020943, -0.589919,
		-0.103034, 0.989028, -0.105870,
		15.514894, 20.864649, 14.250700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.239737, 20.487469, 14.282028>,  <15.587017, 20.172329, 14.324809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.239737, 20.487469, 14.282028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.984160, 20.781204, 14.373680>,  <15.830814, 20.957445, 14.428672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.984160, 20.781204, 14.373680>,  <16.239737, 20.487469, 14.282028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.984160, 20.781204, 14.373680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598578, 0.287521, 0.747687,
		0.483176, 0.614881, -0.623268,
		-0.638941, 0.734339, 0.229131,
		15.792479, 21.001507, 14.442419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.674189, 21.127596, 14.321499>,  <16.239737, 20.487469, 14.282028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.674189, 21.127596, 14.321499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.324799, 21.153870, 14.514467>,  <16.115166, 21.169634, 14.630248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.324799, 21.153870, 14.514467>,  <16.674189, 21.127596, 14.321499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.324799, 21.153870, 14.514467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485913, 0.179740, 0.855326,
		-0.030530, 0.981519, -0.188915,
		-0.873474, 0.065683, 0.482420,
		16.062756, 21.173574, 14.659193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834780, 21.623074, 14.766509>,  <16.674189, 21.127596, 14.321499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834780, 21.623074, 14.766509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.505451, 21.457104, 14.921417>,  <16.307854, 21.357521, 15.014362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.505451, 21.457104, 14.921417>,  <16.834780, 21.623074, 14.766509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.505451, 21.457104, 14.921417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427985, -0.005701, 0.903768,
		-0.372789, 0.909837, 0.182276,
		-0.823321, -0.414925, 0.387272,
		16.258455, 21.332626, 15.037599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.759140, 22.472948, 14.706551>,  <16.834780, 21.623074, 14.766509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.759140, 22.472948, 14.706551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.909527, 22.842808, 14.682316>,  <16.999758, 23.064724, 14.667775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.909527, 22.842808, 14.682316>,  <16.759140, 22.472948, 14.706551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.909527, 22.842808, 14.682316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098329, -0.104826, -0.989617,
		-0.921402, 0.366105, -0.130331,
		0.375966, 0.924650, -0.060588,
		17.022316, 23.120203, 14.664140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.458401, 22.742138, 14.160593>,  <16.759140, 22.472948, 14.706551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.458401, 22.742138, 14.160593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.758312, 23.000813, 14.216639>,  <16.938259, 23.156017, 14.250266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.758312, 23.000813, 14.216639>,  <16.458401, 22.742138, 14.160593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.758312, 23.000813, 14.216639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135970, 0.056657, -0.989092,
		-0.647570, 0.760649, -0.045450,
		0.749777, 0.646686, 0.140115,
		16.983246, 23.194818, 14.258673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341995, 23.301533, 13.690718>,  <16.458401, 22.742138, 14.160593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341995, 23.301533, 13.690718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.731724, 23.331512, 13.775644>,  <16.965561, 23.349501, 13.826600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.731724, 23.331512, 13.775644>,  <16.341995, 23.301533, 13.690718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.731724, 23.331512, 13.775644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213434, -0.007129, -0.976931,
		-0.071705, 0.997162, -0.022942,
		0.974322, 0.074947, 0.212317,
		17.024021, 23.353996, 13.839339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.519554, 23.786287, 13.248668>,  <16.341995, 23.301533, 13.690718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.519554, 23.786287, 13.248668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.860905, 23.598183, 13.338648>,  <17.065716, 23.485319, 13.392636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.860905, 23.598183, 13.338648>,  <16.519554, 23.786287, 13.248668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860905, 23.598183, 13.338648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092756, -0.287659, -0.953231,
		0.512977, 0.834330, -0.201862,
		0.853377, -0.470261, 0.224951,
		17.116919, 23.457104, 13.406133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.911583, 23.895426, 12.758471>,  <16.519554, 23.786287, 13.248668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.911583, 23.895426, 12.758471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.080383, 23.570354, 12.919205>,  <17.181664, 23.375311, 13.015645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.080383, 23.570354, 12.919205>,  <16.911583, 23.895426, 12.758471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.080383, 23.570354, 12.919205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066950, -0.414090, -0.907771,
		0.904121, 0.409981, -0.120337,
		0.421999, -0.812678, 0.401835,
		17.206984, 23.326551, 13.039755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567028, 23.831018, 12.468097>,  <16.911583, 23.895426, 12.758471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.567028, 23.831018, 12.468097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.467583, 23.457954, 12.572662>,  <17.407915, 23.234116, 12.635402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.467583, 23.457954, 12.572662>,  <17.567028, 23.831018, 12.468097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.467583, 23.457954, 12.572662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312238, -0.332648, -0.889861,
		0.916897, -0.139607, 0.373912,
		-0.248612, -0.932660, 0.261414,
		17.393000, 23.178156, 12.651087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.006104, 23.442625, 12.024676>,  <17.567028, 23.831018, 12.468097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.006104, 23.442625, 12.024676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.711361, 23.208759, 12.160445>,  <17.534515, 23.068439, 12.241907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.711361, 23.208759, 12.160445>,  <18.006104, 23.442625, 12.024676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.711361, 23.208759, 12.160445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085108, -0.417851, -0.904520,
		0.670668, -0.695391, 0.258138,
		-0.736858, -0.584664, 0.339423,
		17.490303, 23.033360, 12.262272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.203102, 22.736189, 11.967046>,  <18.006104, 23.442625, 12.024676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.203102, 22.736189, 11.967046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.804092, 22.763653, 11.973095>,  <17.564686, 22.780132, 11.976725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.804092, 22.763653, 11.973095>,  <18.203102, 22.736189, 11.967046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.804092, 22.763653, 11.973095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043896, -0.440181, -0.896835,
		-0.054921, -0.895280, 0.442106,
		-0.997525, 0.068662, 0.015124,
		17.504835, 22.784252, 11.977633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.057737, 22.285460, 11.419836>,  <18.203102, 22.736189, 11.967046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.057737, 22.285460, 11.419836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.715366, 22.477581, 11.496458>,  <17.509943, 22.592854, 11.542432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.715366, 22.477581, 11.496458>,  <18.057737, 22.285460, 11.419836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.715366, 22.477581, 11.496458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350563, -0.266672, -0.897771,
		-0.380122, -0.835579, 0.396629,
		-0.855928, 0.480306, 0.191555,
		17.458588, 22.621672, 11.553925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.514582, 21.725191, 11.393445>,  <18.057737, 22.285460, 11.419836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.514582, 21.725191, 11.393445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.376095, 22.092422, 11.316224>,  <17.293003, 22.312761, 11.269892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.376095, 22.092422, 11.316224>,  <17.514582, 21.725191, 11.393445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.376095, 22.092422, 11.316224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231460, -0.283007, -0.930770,
		-0.909154, -0.277563, 0.310479,
		-0.346215, 0.918077, -0.193052,
		17.272230, 22.367846, 11.258308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.006668, 21.587500, 10.867745>,  <17.514582, 21.725191, 11.393445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.006668, 21.587500, 10.867745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.083557, 21.979164, 10.841534>,  <17.129690, 22.214163, 10.825807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.083557, 21.979164, 10.841534>,  <17.006668, 21.587500, 10.867745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.083557, 21.979164, 10.841534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110781, -0.044698, -0.992839,
		-0.975079, 0.198104, 0.099881,
		0.192221, 0.979161, -0.065530,
		17.141224, 22.272913, 10.821875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.452993, 21.794075, 10.501094>,  <17.006668, 21.587500, 10.867745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.452993, 21.794075, 10.501094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.745663, 22.063625, 10.460015>,  <16.921265, 22.225355, 10.435369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.745663, 22.063625, 10.460015>,  <16.452993, 21.794075, 10.501094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.745663, 22.063625, 10.460015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104917, -0.037532, -0.993773,
		-0.673533, 0.737891, 0.043240,
		0.731673, 0.673876, -0.102697,
		16.965164, 22.265787, 10.429206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.568426, 23.206997, 18.545322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.877304, 23.357170, 18.340281>,  <18.062632, 23.447275, 18.217255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.877304, 23.357170, 18.340281>,  <17.568426, 23.206997, 18.545322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.877304, 23.357170, 18.340281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614128, 0.234065, -0.753698,
		-0.162981, 0.896807, 0.411308,
		0.772195, 0.375435, -0.512605,
		18.108963, 23.469801, 18.186499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.379332, 23.885057, 18.299101>,  <17.568426, 23.206997, 18.545322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.379332, 23.885057, 18.299101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.683754, 23.750565, 18.077204>,  <17.866407, 23.669868, 17.944065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.683754, 23.750565, 18.077204>,  <17.379332, 23.885057, 18.299101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.683754, 23.750565, 18.077204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503844, 0.232241, -0.831989,
		0.408577, 0.912694, 0.007339,
		0.761056, -0.336234, -0.554744,
		17.912071, 23.649694, 17.910780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457975, 24.358719, 17.736986>,  <17.379332, 23.885057, 18.299101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.457975, 24.358719, 17.736986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.634972, 24.020321, 17.617992>,  <17.741169, 23.817282, 17.546597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.634972, 24.020321, 17.617992>,  <17.457975, 24.358719, 17.736986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.634972, 24.020321, 17.617992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294751, 0.176092, -0.939209,
		0.846949, 0.503276, -0.171438,
		0.442492, -0.845994, -0.297482,
		17.767719, 23.766523, 17.528748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807262, 24.562445, 17.036652>,  <17.457975, 24.358719, 17.736986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.807262, 24.562445, 17.036652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.766129, 24.164768, 17.049366>,  <17.741447, 23.926163, 17.056995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.766129, 24.164768, 17.049366>,  <17.807262, 24.562445, 17.036652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.766129, 24.164768, 17.049366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059816, -0.025716, -0.997878,
		0.992898, -0.104520, -0.056824,
		-0.102837, -0.994190, 0.031785,
		17.735277, 23.866510, 17.058901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.106958, 24.426334, 16.445290>,  <17.807262, 24.562445, 17.036652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.106958, 24.426334, 16.445290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.920540, 24.087002, 16.545794>,  <17.808689, 23.883402, 16.606096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.920540, 24.087002, 16.545794>,  <18.106958, 24.426334, 16.445290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.920540, 24.087002, 16.545794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116637, -0.222598, -0.967908,
		0.877037, -0.480398, 0.004794,
		-0.466048, -0.848332, 0.251259,
		17.780725, 23.832502, 16.621172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.420395, 23.900070, 16.046455>,  <18.106958, 24.426334, 16.445290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.420395, 23.900070, 16.046455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.051598, 23.778088, 16.141899>,  <17.830320, 23.704899, 16.199165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.051598, 23.778088, 16.141899>,  <18.420395, 23.900070, 16.046455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.051598, 23.778088, 16.141899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219779, -0.095189, -0.970895,
		0.318794, -0.947597, 0.020740,
		-0.921991, -0.304957, 0.238608,
		17.775000, 23.686600, 16.213482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.319157, 23.280334, 15.760112>,  <18.420395, 23.900070, 16.046455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.319157, 23.280334, 15.760112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.936920, 23.393494, 15.793131>,  <17.707579, 23.461390, 15.812943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.936920, 23.393494, 15.793131>,  <18.319157, 23.280334, 15.760112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.936920, 23.393494, 15.793131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147258, -0.215757, -0.965279,
		-0.255272, -0.934566, 0.247836,
		-0.955590, 0.282904, 0.082546,
		17.650242, 23.478363, 15.817895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.936712, 22.748899, 15.417490>,  <18.319157, 23.280334, 15.760112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.936712, 22.748899, 15.417490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.663666, 23.040844, 15.432096>,  <17.499838, 23.216011, 15.440860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.663666, 23.040844, 15.432096>,  <17.936712, 22.748899, 15.417490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.663666, 23.040844, 15.432096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217903, -0.155594, -0.963488,
		-0.697533, -0.665650, 0.265250,
		-0.682617, 0.729863, 0.036516,
		17.458881, 23.259802, 15.443051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.306910, 22.471464, 15.182571>,  <17.936712, 22.748899, 15.417490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.306910, 22.471464, 15.182571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.240589, 22.864311, 15.146906>,  <17.200796, 23.100019, 15.125506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.240589, 22.864311, 15.146906>,  <17.306910, 22.471464, 15.182571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.240589, 22.864311, 15.146906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276539, -0.133092, -0.951742,
		-0.946592, -0.133143, 0.293661,
		-0.165802, 0.982120, -0.089165,
		17.190849, 23.158947, 15.120156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682507, 22.104643, 15.438423>,  <17.306910, 22.471464, 15.182571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682507, 22.104643, 15.438423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.504162, 21.746792, 15.450102>,  <16.397156, 21.532082, 15.457108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.504162, 21.746792, 15.450102>,  <16.682507, 22.104643, 15.438423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.504162, 21.746792, 15.450102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300227, -0.118739, 0.946449,
		-0.843251, 0.430749, 0.321532,
		-0.445860, -0.894627, 0.029196,
		16.370403, 21.478403, 15.458860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.239008, 22.122879, 16.073078>,  <16.682507, 22.104643, 15.438423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.239008, 22.122879, 16.073078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290356, 21.738544, 15.974844>,  <16.321165, 21.507944, 15.915903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290356, 21.738544, 15.974844>,  <16.239008, 22.122879, 16.073078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.290356, 21.738544, 15.974844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362416, -0.185056, 0.913460,
		-0.923134, -0.206266, 0.324467,
		0.128372, -0.960837, -0.245585,
		16.328867, 21.450293, 15.901169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.956315, 21.869091, 16.645760>,  <16.239008, 22.122879, 16.073078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.956315, 21.869091, 16.645760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166210, 21.569145, 16.484587>,  <16.292147, 21.389177, 16.387882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166210, 21.569145, 16.484587>,  <15.956315, 21.869091, 16.645760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166210, 21.569145, 16.484587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307302, -0.274554, 0.911145,
		-0.793860, -0.601936, 0.086365,
		0.524739, -0.749862, -0.402934,
		16.323631, 21.344187, 16.363707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.630699, 21.081631, 16.807215>,  <15.956315, 21.869091, 16.645760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.630699, 21.081631, 16.807215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.022034, 21.030781, 16.741859>,  <16.256834, 21.000271, 16.702646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.022034, 21.030781, 16.741859>,  <15.630699, 21.081631, 16.807215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.022034, 21.030781, 16.741859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108537, -0.357099, 0.927739,
		-0.176284, -0.925376, -0.335565,
		0.978338, -0.127124, -0.163388,
		16.315535, 20.992643, 16.692842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.702016, 20.559149, 17.197639>,  <15.630699, 21.081631, 16.807215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.702016, 20.559149, 17.197639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.071556, 20.693596, 17.124401>,  <16.293280, 20.774265, 17.080458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.071556, 20.693596, 17.124401>,  <15.702016, 20.559149, 17.197639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.071556, 20.693596, 17.124401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227681, -0.098067, 0.968785,
		0.307672, -0.936699, -0.167127,
		0.923850, 0.336120, -0.183096,
		16.348711, 20.794432, 17.069471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240324, 20.017811, 17.414612>,  <15.702016, 20.559149, 17.197639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.240324, 20.017811, 17.414612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414330, 20.377903, 17.407181>,  <16.518732, 20.593958, 17.402723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414330, 20.377903, 17.407181>,  <16.240324, 20.017811, 17.414612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.414330, 20.377903, 17.407181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350938, -0.150509, 0.924224,
		0.829220, -0.408568, -0.381399,
		0.435013, 0.900233, -0.018577,
		16.544834, 20.647972, 17.401608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.966219, 19.925484, 17.528891>,  <16.240324, 20.017811, 17.414612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.966219, 19.925484, 17.528891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.880089, 20.304806, 17.622147>,  <16.828411, 20.532398, 17.678101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.880089, 20.304806, 17.622147>,  <16.966219, 19.925484, 17.528891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.880089, 20.304806, 17.622147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447234, -0.116467, 0.886802,
		0.868111, 0.295220, -0.399035,
		-0.215328, 0.948304, 0.233139,
		16.815491, 20.589296, 17.692089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.690958, 20.036863, 17.712879>,  <16.966219, 19.925484, 17.528891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.690958, 20.036863, 17.712879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.405060, 20.288216, 17.835701>,  <17.233521, 20.439026, 17.909393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.405060, 20.288216, 17.835701>,  <17.690958, 20.036863, 17.712879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.405060, 20.288216, 17.835701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315480, -0.102156, 0.943418,
		0.624191, 0.771171, -0.125225,
		-0.714744, 0.628378, 0.307053,
		17.190638, 20.476728, 17.927816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.077494, 20.397354, 18.287693>,  <17.690958, 20.036863, 17.712879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.077494, 20.397354, 18.287693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.703091, 20.522537, 18.352121>,  <17.478449, 20.597647, 18.390779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.703091, 20.522537, 18.352121>,  <18.077494, 20.397354, 18.287693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.703091, 20.522537, 18.352121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206368, 0.117245, 0.971425,
		0.285128, 0.942503, -0.174326,
		-0.936010, 0.312956, 0.161072,
		17.422287, 20.616425, 18.400444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.135866, 20.921167, 18.663187>,  <18.077494, 20.397354, 18.287693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.135866, 20.921167, 18.663187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754032, 20.833618, 18.744045>,  <17.524931, 20.781088, 18.792561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754032, 20.833618, 18.744045>,  <18.135866, 20.921167, 18.663187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.754032, 20.833618, 18.744045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212779, -0.025899, 0.976757,
		-0.208550, 0.975410, 0.071294,
		-0.954585, -0.218872, 0.202146,
		17.467657, 20.767956, 18.804689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.001385, 21.385906, 19.151461>,  <18.135866, 20.921167, 18.663187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.001385, 21.385906, 19.151461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712955, 21.108856, 19.158657>,  <17.539898, 20.942627, 19.162975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712955, 21.108856, 19.158657>,  <18.001385, 21.385906, 19.151461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.712955, 21.108856, 19.158657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042457, -0.018252, 0.998932,
		-0.691555, 0.721069, 0.042568,
		-0.721075, -0.692623, 0.017993,
		17.496634, 20.901070, 19.164055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.488939, 21.623959, 19.618425>,  <18.001385, 21.385906, 19.151461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.488939, 21.623959, 19.618425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.423222, 21.231438, 19.578318>,  <17.383791, 20.995926, 19.554253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.423222, 21.231438, 19.578318>,  <17.488939, 21.623959, 19.618425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.423222, 21.231438, 19.578318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038393, -0.107937, 0.993416,
		-0.985664, 0.159363, 0.055408,
		-0.164294, -0.981302, -0.100271,
		17.373934, 20.937048, 19.548237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726807, 21.395363, 19.761497>,  <17.488939, 21.623959, 19.618425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726807, 21.395363, 19.761497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987156, 21.101597, 19.838436>,  <17.143366, 20.925337, 19.884600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987156, 21.101597, 19.838436>,  <16.726807, 21.395363, 19.761497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.987156, 21.101597, 19.838436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170565, 0.105420, 0.979691,
		-0.739779, -0.670461, -0.056651,
		0.650872, -0.734417, 0.192344,
		17.182417, 20.881271, 19.896139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682053, 21.242233, 20.404972>,  <16.726807, 21.395363, 19.761497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682053, 21.242233, 20.404972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955185, 20.950371, 20.390331>,  <17.119064, 20.775253, 20.381546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955185, 20.950371, 20.390331>,  <16.682053, 21.242233, 20.404972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.955185, 20.950371, 20.390331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032260, -0.019939, 0.999280,
		-0.729863, -0.683522, 0.009923,
		0.682832, -0.729658, -0.036603,
		17.160034, 20.731474, 20.379351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<23.091431, 19.124363, 19.341358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.816185, 19.406048, 19.411308>,  <22.651037, 19.575060, 19.453278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.816185, 19.406048, 19.411308>,  <23.091431, 19.124363, 19.341358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.816185, 19.406048, 19.411308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186975, 0.060779, -0.980483,
		-0.701099, -0.707381, 0.089847,
		-0.688114, 0.704215, 0.174875,
		22.609751, 19.617311, 19.463770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.622374, 18.940317, 18.882948>,  <23.091431, 19.124363, 19.341358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.622374, 18.940317, 18.882948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.522133, 19.310848, 18.995457>,  <22.461988, 19.533167, 19.062962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.522133, 19.310848, 18.995457>,  <22.622374, 18.940317, 18.882948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.522133, 19.310848, 18.995457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174563, 0.242541, -0.954307,
		-0.952222, -0.288251, 0.100921,
		-0.250603, 0.926329, 0.281271,
		22.446953, 19.588747, 19.079838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.964212, 18.996681, 18.631304>,  <22.622374, 18.940317, 18.882948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.964212, 18.996681, 18.631304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.138359, 19.354191, 18.674437>,  <22.242847, 19.568697, 18.700315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.138359, 19.354191, 18.674437>,  <21.964212, 18.996681, 18.631304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.138359, 19.354191, 18.674437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347523, 0.277346, -0.895716,
		-0.830473, 0.352490, 0.431353,
		0.435365, 0.893773, 0.107830,
		22.268969, 19.622322, 18.706785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.345304, 19.450258, 18.628710>,  <21.964212, 18.996681, 18.631304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.345304, 19.450258, 18.628710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.661919, 19.674927, 18.532381>,  <21.851887, 19.809727, 18.474585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.661919, 19.674927, 18.532381>,  <21.345304, 19.450258, 18.628710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.661919, 19.674927, 18.532381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452523, 0.273850, -0.848663,
		-0.410720, 0.780726, 0.470931,
		0.791538, 0.561670, -0.240821,
		21.899380, 19.843428, 18.460135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.098936, 20.129906, 18.414171>,  <21.345304, 19.450258, 18.628710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.098936, 20.129906, 18.414171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.474674, 20.147747, 18.278151>,  <21.700117, 20.158451, 18.196537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.474674, 20.147747, 18.278151>,  <21.098936, 20.129906, 18.414171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.474674, 20.147747, 18.278151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330477, 0.382850, -0.862677,
		0.091711, 0.922733, 0.374369,
		0.939348, 0.044603, -0.340054,
		21.756479, 20.161127, 18.176134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034967, 20.730844, 18.041166>,  <21.098936, 20.129906, 18.414171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034967, 20.730844, 18.041166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.357098, 20.541599, 17.898272>,  <21.550375, 20.428053, 17.812534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.357098, 20.541599, 17.898272>,  <21.034967, 20.730844, 18.041166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.357098, 20.541599, 17.898272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324953, 0.151723, -0.933481,
		0.495842, 0.867839, -0.031553,
		0.805324, -0.473112, -0.357237,
		21.598694, 20.399666, 17.791100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.295273, 21.113749, 17.392744>,  <21.034967, 20.730844, 18.041166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.295273, 21.113749, 17.392744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.449394, 20.745232, 17.371729>,  <21.541866, 20.524122, 17.359119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.449394, 20.745232, 17.371729>,  <21.295273, 21.113749, 17.392744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.449394, 20.745232, 17.371729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312917, -0.076883, -0.946664,
		0.868115, 0.381194, -0.317911,
		0.385304, -0.921293, -0.052539,
		21.564985, 20.468843, 17.355967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.652449, 21.218012, 16.849909>,  <21.295273, 21.113749, 17.392744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.652449, 21.218012, 16.849909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.630287, 20.819172, 16.870794>,  <21.616989, 20.579868, 16.883326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.630287, 20.819172, 16.870794>,  <21.652449, 21.218012, 16.849909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.630287, 20.819172, 16.870794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363292, -0.028580, -0.931237,
		0.930026, -0.070565, -0.360654,
		-0.055405, -0.997098, 0.052216,
		21.613665, 20.520042, 16.886459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.070957, 20.952593, 16.265903>,  <21.652449, 21.218012, 16.849909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.070957, 20.952593, 16.265903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.806557, 20.673862, 16.377266>,  <21.647917, 20.506624, 16.444084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.806557, 20.673862, 16.377266>,  <22.070957, 20.952593, 16.265903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.806557, 20.673862, 16.377266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245034, -0.150239, -0.957803,
		0.709251, -0.701327, -0.071439,
		-0.661000, -0.696828, 0.278406,
		21.608257, 20.464813, 16.460789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.129503, 20.311874, 15.978278>,  <22.070957, 20.952593, 16.265903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.129503, 20.311874, 15.978278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.736183, 20.280792, 16.044106>,  <21.500191, 20.262142, 16.083603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.736183, 20.280792, 16.044106>,  <22.129503, 20.311874, 15.978278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.736183, 20.280792, 16.044106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153345, -0.133241, -0.979149,
		0.098013, -0.988033, 0.119100,
		-0.983300, -0.077706, 0.164569,
		21.441193, 20.257481, 16.093475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.924091, 19.764427, 15.553989>,  <22.129503, 20.311874, 15.978278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.924091, 19.764427, 15.553989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.581547, 19.958481, 15.624744>,  <21.376020, 20.074913, 15.667197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.581547, 19.958481, 15.624744>,  <21.924091, 19.764427, 15.553989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.581547, 19.958481, 15.624744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193984, 0.015227, -0.980887,
		-0.478554, -0.874308, 0.081068,
		-0.856362, 0.485133, 0.176888,
		21.324638, 20.104021, 15.677811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.541613, 19.495689, 15.077620>,  <21.924091, 19.764427, 15.553989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.541613, 19.495689, 15.077620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.304390, 19.789642, 15.209213>,  <21.162056, 19.966015, 15.288170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.304390, 19.789642, 15.209213>,  <21.541613, 19.495689, 15.077620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.304390, 19.789642, 15.209213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382989, 0.101935, -0.918112,
		-0.708240, -0.670489, 0.220999,
		-0.593056, 0.734884, 0.328984,
		21.126472, 20.010107, 15.307908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.897947, 19.295017, 14.915732>,  <21.541613, 19.495689, 15.077620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.897947, 19.295017, 14.915732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.859295, 19.688957, 14.973328>,  <20.836103, 19.925322, 15.007885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.859295, 19.688957, 14.973328>,  <20.897947, 19.295017, 14.915732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859295, 19.688957, 14.973328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646353, 0.047919, -0.761532,
		-0.756895, -0.166654, 0.631931,
		-0.096630, 0.984850, 0.143987,
		20.830305, 19.984413, 15.016523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.135059, 19.559860, 14.942149>,  <20.897947, 19.295017, 14.915732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.135059, 19.559860, 14.942149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.394474, 19.834080, 14.809834>,  <20.550123, 19.998611, 14.730444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.394474, 19.834080, 14.809834>,  <20.135059, 19.559860, 14.942149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.394474, 19.834080, 14.809834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568843, 0.147745, -0.809067,
		-0.505782, 0.712878, 0.485788,
		0.648538, 0.685549, -0.330789,
		20.589035, 20.039743, 14.710597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.408543, 19.300081, 14.845627>,  <20.135059, 19.559860, 14.942149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.408543, 19.300081, 14.845627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.448700, 18.918404, 14.732891>,  <19.472795, 18.689398, 14.665250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.448700, 18.918404, 14.732891>,  <19.408543, 19.300081, 14.845627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.448700, 18.918404, 14.732891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277280, -0.245216, 0.928970,
		-0.955530, -0.171412, 0.239960,
		0.100394, -0.954194, -0.281840,
		19.478819, 18.632145, 14.648339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266985, 18.976213, 15.444104>,  <19.408543, 19.300081, 14.845627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.266985, 18.976213, 15.444104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.438908, 18.702477, 15.208496>,  <19.542061, 18.538235, 15.067131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.438908, 18.702477, 15.208496>,  <19.266985, 18.976213, 15.444104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.438908, 18.702477, 15.208496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340202, -0.481535, 0.807705,
		-0.836379, -0.547541, 0.025848,
		0.429805, -0.684341, -0.589021,
		19.567850, 18.497173, 15.031790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980082, 18.235567, 15.607120>,  <19.266985, 18.976213, 15.444104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.980082, 18.235567, 15.607120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.350029, 18.218689, 15.455946>,  <19.571999, 18.208563, 15.365242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.350029, 18.218689, 15.455946>,  <18.980082, 18.235567, 15.607120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.350029, 18.218689, 15.455946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312024, -0.483906, 0.817604,
		-0.217383, -0.874102, -0.434385,
		0.924870, -0.042195, -0.377934,
		19.627491, 18.206030, 15.342566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.138502, 17.553827, 15.724820>,  <18.980082, 18.235567, 15.607120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.138502, 17.553827, 15.724820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.492683, 17.731407, 15.669851>,  <19.705193, 17.837955, 15.636870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.492683, 17.731407, 15.669851>,  <19.138502, 17.553827, 15.724820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.492683, 17.731407, 15.669851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306349, -0.335227, 0.890940,
		0.349464, -0.830983, -0.432830,
		0.885452, 0.443948, -0.137421,
		19.758320, 17.864592, 15.628625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.671547, 17.080620, 15.810718>,  <19.138502, 17.553827, 15.724820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.671547, 17.080620, 15.810718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.825798, 17.442181, 15.884745>,  <19.918348, 17.659117, 15.929161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.825798, 17.442181, 15.884745>,  <19.671547, 17.080620, 15.810718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.825798, 17.442181, 15.884745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280047, -0.305788, 0.909982,
		0.879127, -0.299088, -0.371056,
		0.385629, 0.903903, 0.185068,
		19.941486, 17.713352, 15.940265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.230877, 16.874874, 16.231112>,  <19.671547, 17.080620, 15.810718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.230877, 16.874874, 16.231112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.215939, 17.272785, 16.269112>,  <20.206976, 17.511532, 16.291912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.215939, 17.272785, 16.269112>,  <20.230877, 16.874874, 16.231112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.215939, 17.272785, 16.269112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412524, -0.071243, 0.908156,
		0.910181, 0.073107, -0.407709,
		-0.037346, 0.994776, 0.095002,
		20.204735, 17.571218, 16.297613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.870417, 17.028814, 16.701420>,  <20.230877, 16.874874, 16.231112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.870417, 17.028814, 16.701420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.594879, 17.317841, 16.724712>,  <20.429556, 17.491257, 16.738688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.594879, 17.317841, 16.724712>,  <20.870417, 17.028814, 16.701420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.594879, 17.317841, 16.724712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227696, 0.139404, 0.963702,
		0.688219, 0.677101, -0.260553,
		-0.688846, 0.722565, 0.058233,
		20.388226, 17.534611, 16.742182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.229589, 17.676617, 16.847651>,  <20.870417, 17.028814, 16.701420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.229589, 17.676617, 16.847651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.851414, 17.684753, 16.977715>,  <20.624508, 17.689634, 17.055752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.851414, 17.684753, 16.977715>,  <21.229589, 17.676617, 16.847651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.851414, 17.684753, 16.977715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313000, 0.333650, 0.889218,
		-0.090401, 0.942478, -0.321813,
		-0.945441, 0.020341, 0.325158,
		20.567781, 17.690855, 17.075262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.206657, 18.256575, 17.368303>,  <21.229589, 17.676617, 16.847651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.206657, 18.256575, 17.368303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.873638, 18.054794, 17.459862>,  <20.673826, 17.933727, 17.514797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.873638, 18.054794, 17.459862>,  <21.206657, 18.256575, 17.368303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.873638, 18.054794, 17.459862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157680, 0.180308, 0.970889,
		-0.531037, 0.844405, -0.070574,
		-0.832549, -0.504450, 0.228896,
		20.623873, 17.903460, 17.528530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.930674, 18.667862, 17.880785>,  <21.206657, 18.256575, 17.368303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.930674, 18.667862, 17.880785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.765598, 18.306301, 17.925772>,  <20.666553, 18.089365, 17.952765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.765598, 18.306301, 17.925772>,  <20.930674, 18.667862, 17.880785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.765598, 18.306301, 17.925772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059890, 0.150131, 0.986850,
		-0.908902, 0.400525, -0.116092,
		-0.412688, -0.903903, 0.112467,
		20.641792, 18.035130, 17.959511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.363764, 18.739832, 18.333330>,  <20.930674, 18.667862, 17.880785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.363764, 18.739832, 18.333330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.402187, 18.343224, 18.368330>,  <20.425241, 18.105259, 18.389330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.402187, 18.343224, 18.368330>,  <20.363764, 18.739832, 18.333330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.402187, 18.343224, 18.368330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179439, 0.069216, 0.981331,
		-0.979068, -0.109968, -0.171268,
		0.096061, -0.991522, 0.087500,
		20.431005, 18.045767, 18.394581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.784544, 18.449951, 18.727009>,  <20.363764, 18.739832, 18.333330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.784544, 18.449951, 18.727009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.085812, 18.190372, 18.770096>,  <20.266573, 18.034626, 18.795948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.085812, 18.190372, 18.770096>,  <19.784544, 18.449951, 18.727009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.085812, 18.190372, 18.770096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121034, 0.024243, 0.992352,
		-0.646594, -0.760448, -0.060285,
		0.753171, -0.648946, 0.107716,
		20.311764, 17.995689, 18.802410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511116, 18.053284, 19.212118>,  <19.784544, 18.449951, 18.727009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.511116, 18.053284, 19.212118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.899918, 17.959381, 19.216017>,  <20.133200, 17.903040, 19.218357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.899918, 17.959381, 19.216017>,  <19.511116, 18.053284, 19.212118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.899918, 17.959381, 19.216017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008244, 0.075537, 0.997109,
		-0.234814, -0.969115, 0.075358,
		0.972005, -0.234756, 0.009748,
		20.191519, 17.888954, 19.218941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.582169, 17.592487, 19.786497>,  <19.511116, 18.053284, 19.212118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.582169, 17.592487, 19.786497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.951801, 17.732704, 19.725582>,  <20.173580, 17.816835, 19.689034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.951801, 17.732704, 19.725582>,  <19.582169, 17.592487, 19.786497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.951801, 17.732704, 19.725582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086614, 0.196011, 0.976769,
		0.372249, -0.915805, 0.150769,
		0.924083, 0.350543, -0.152286,
		20.229027, 17.837868, 19.679895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.322674, 16.864048, 19.787680>,  <19.582169, 17.592487, 19.786497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.322674, 16.864048, 19.787680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.965767, 17.002644, 19.903479>,  <18.751623, 17.085800, 19.972958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.965767, 17.002644, 19.903479>,  <19.322674, 16.864048, 19.787680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.965767, 17.002644, 19.903479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396018, -0.292605, -0.870375,
		-0.216861, -0.891253, 0.398295,
		-0.892267, 0.346482, 0.289498,
		18.698088, 17.106590, 19.990328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.835880, 16.286123, 19.673317>,  <19.322674, 16.864048, 19.787680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.835880, 16.286123, 19.673317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.603447, 16.611637, 19.677204>,  <18.463987, 16.806946, 19.679537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.603447, 16.611637, 19.677204>,  <18.835880, 16.286123, 19.673317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.603447, 16.611637, 19.677204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408611, -0.281399, -0.868247,
		-0.703831, -0.508496, 0.496038,
		-0.581084, 0.813785, 0.009720,
		18.429121, 16.855772, 19.680120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126337, 16.049953, 19.413486>,  <18.835880, 16.286123, 19.673317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.126337, 16.049953, 19.413486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.164982, 16.444500, 19.360205>,  <18.188168, 16.681229, 19.328236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.164982, 16.444500, 19.360205>,  <18.126337, 16.049953, 19.413486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.164982, 16.444500, 19.360205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479157, -0.071211, -0.874836,
		-0.872396, 0.148344, 0.465746,
		0.096611, 0.986369, -0.133204,
		18.193966, 16.740410, 19.320244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465162, 16.291441, 19.310867>,  <18.126337, 16.049953, 19.413486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.465162, 16.291441, 19.310867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.721783, 16.555260, 19.154198>,  <17.875755, 16.713551, 19.060196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.721783, 16.555260, 19.154198>,  <17.465162, 16.291441, 19.310867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721783, 16.555260, 19.154198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369308, -0.181958, -0.911320,
		-0.672326, 0.729308, 0.126840,
		0.641553, 0.659547, -0.391674,
		17.914249, 16.753124, 19.036695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.002848, 16.753550, 18.956877>,  <17.465162, 16.291441, 19.310867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.002848, 16.753550, 18.956877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.360222, 16.812611, 18.787186>,  <17.574646, 16.848047, 18.685371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.360222, 16.812611, 18.787186>,  <17.002848, 16.753550, 18.956877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.360222, 16.812611, 18.787186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436669, 0.064095, -0.897336,
		-0.105305, 0.986960, 0.121741,
		0.893438, 0.147655, -0.424225,
		17.628254, 16.856907, 18.659918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.952551, 17.326626, 18.594255>,  <17.002848, 16.753550, 18.956877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.952551, 17.326626, 18.594255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.249912, 17.122585, 18.421213>,  <17.428329, 17.000160, 18.317389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.249912, 17.122585, 18.421213>,  <16.952551, 17.326626, 18.594255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.249912, 17.122585, 18.421213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381201, 0.208325, -0.900714,
		0.549579, 0.834503, -0.039583,
		0.743403, -0.510103, -0.432605,
		17.472933, 16.969555, 18.291431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.147345, 17.811060, 18.034077>,  <16.952551, 17.326626, 18.594255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.147345, 17.811060, 18.034077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.273010, 17.437107, 17.967987>,  <17.348410, 17.212736, 17.928333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.273010, 17.437107, 17.967987>,  <17.147345, 17.811060, 18.034077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.273010, 17.437107, 17.967987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298338, 0.068000, -0.952035,
		0.901274, 0.348388, -0.257547,
		0.314165, -0.934880, -0.165224,
		17.367260, 17.156643, 17.918419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.388968, 17.902998, 17.372557>,  <17.147345, 17.811060, 18.034077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.388968, 17.902998, 17.372557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.359901, 17.506104, 17.412930>,  <17.342463, 17.267967, 17.437153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.359901, 17.506104, 17.412930>,  <17.388968, 17.902998, 17.372557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.359901, 17.506104, 17.412930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435932, -0.059424, -0.898016,
		0.897042, -0.109253, -0.428229,
		-0.072664, -0.992236, 0.100933,
		17.338102, 17.208433, 17.443209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.513025, 17.638056, 16.750299>,  <17.388968, 17.902998, 17.372557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.513025, 17.638056, 16.750299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.343952, 17.319080, 16.922544>,  <17.242508, 17.127695, 17.025892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.343952, 17.319080, 16.922544>,  <17.513025, 17.638056, 16.750299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.343952, 17.319080, 16.922544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543002, -0.157577, -0.824814,
		0.725596, -0.582458, -0.366407,
		-0.422682, -0.797441, 0.430613,
		17.217148, 17.079847, 17.051729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.650972, 17.161934, 16.310055>,  <17.513025, 17.638056, 16.750299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.650972, 17.161934, 16.310055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.331715, 17.050579, 16.523769>,  <17.140160, 16.983767, 16.651999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.331715, 17.050579, 16.523769>,  <17.650972, 17.161934, 16.310055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.331715, 17.050579, 16.523769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459572, -0.292103, -0.838731,
		0.389560, -0.914973, 0.105202,
		-0.798146, -0.278388, 0.534287,
		17.092270, 16.967062, 16.684055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399931, 16.576475, 16.012255>,  <17.650972, 17.161934, 16.310055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.399931, 16.576475, 16.012255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.091339, 16.706165, 16.231234>,  <16.906183, 16.783979, 16.362621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.091339, 16.706165, 16.231234>,  <17.399931, 16.576475, 16.012255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.091339, 16.706165, 16.231234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633063, -0.305087, -0.711445,
		-0.063650, -0.895433, 0.440624,
		-0.771479, 0.324226, 0.547446,
		16.859896, 16.803432, 16.395468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876581, 16.046686, 16.019405>,  <17.399931, 16.576475, 16.012255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876581, 16.046686, 16.019405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.677856, 16.382286, 16.108185>,  <16.558622, 16.583645, 16.161451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.677856, 16.382286, 16.108185>,  <16.876581, 16.046686, 16.019405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.677856, 16.382286, 16.108185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630153, -0.172894, -0.756978,
		-0.596730, -0.515935, 0.614592,
		-0.496811, 0.838998, 0.221947,
		16.528812, 16.633986, 16.174768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.145029, 15.900406, 15.887595>,  <16.876581, 16.046686, 16.019405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.145029, 15.900406, 15.887595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.153683, 16.300079, 15.901230>,  <16.158875, 16.539885, 15.909410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.153683, 16.300079, 15.901230>,  <16.145029, 15.900406, 15.887595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153683, 16.300079, 15.901230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541005, 0.040371, -0.840050,
		-0.840741, -0.000269, 0.541437,
		0.021632, 0.999185, 0.034087,
		16.160172, 16.599834, 15.911456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.428143, 16.189495, 15.652852>,  <16.145029, 15.900406, 15.887595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.428143, 16.189495, 15.652852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.666488, 16.510513, 15.641062>,  <15.809495, 16.703125, 15.633987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.666488, 16.510513, 15.641062>,  <15.428143, 16.189495, 15.652852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.666488, 16.510513, 15.641062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308324, 0.194723, -0.931139,
		-0.741542, 0.563918, 0.363473,
		0.595863, 0.802546, -0.029474,
		15.845246, 16.751276, 15.632219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.492598, 20.644726, 20.896713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.884735, 20.613411, 20.824278>,  <17.120018, 20.594622, 20.780817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.884735, 20.613411, 20.824278>,  <16.492598, 20.644726, 20.896713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.884735, 20.613411, 20.824278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158881, -0.230861, 0.959927,
		-0.116955, -0.969832, -0.213886,
		0.980346, -0.078286, -0.181088,
		17.178839, 20.589924, 20.769951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.631720, 19.962111, 21.159224>,  <16.492598, 20.644726, 20.896713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.631720, 19.962111, 21.159224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.982613, 20.153633, 21.173136>,  <17.193148, 20.268547, 21.181482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.982613, 20.153633, 21.173136>,  <16.631720, 19.962111, 21.159224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.982613, 20.153633, 21.173136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138003, -0.320901, 0.937005,
		0.459804, -0.817170, -0.347581,
		0.877232, 0.478806, 0.034780,
		17.245783, 20.297276, 21.183569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112543, 19.523212, 21.516258>,  <16.631720, 19.962111, 21.159224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.112543, 19.523212, 21.516258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.297634, 19.877338, 21.534588>,  <17.408688, 20.089815, 21.545586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.297634, 19.877338, 21.534588>,  <17.112543, 19.523212, 21.516258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.297634, 19.877338, 21.534588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322391, -0.216205, 0.921585,
		0.825802, -0.411668, -0.385462,
		0.462726, 0.885316, 0.045824,
		17.436453, 20.142933, 21.548334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.822647, 19.377028, 21.713917>,  <17.112543, 19.523212, 21.516258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.822647, 19.377028, 21.713917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.731667, 19.759838, 21.785879>,  <17.677078, 19.989525, 21.829056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.731667, 19.759838, 21.785879>,  <17.822647, 19.377028, 21.713917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.731667, 19.759838, 21.785879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261220, -0.118012, 0.958038,
		0.938100, 0.264900, -0.223153,
		-0.227450, 0.957027, 0.179905,
		17.663431, 20.046946, 21.839851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.399790, 19.645420, 22.198158>,  <17.822647, 19.377028, 21.713917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.399790, 19.645420, 22.198158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.118393, 19.929306, 22.213123>,  <17.949554, 20.099638, 22.222103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.118393, 19.929306, 22.213123>,  <18.399790, 19.645420, 22.198158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118393, 19.929306, 22.213123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350360, 0.300524, 0.887093,
		0.618341, 0.637172, -0.460073,
		-0.703493, 0.709717, 0.037414,
		17.907345, 20.142221, 22.224348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.777000, 20.172569, 22.410164>,  <18.399790, 19.645420, 22.198158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.777000, 20.172569, 22.410164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.395699, 20.242268, 22.508915>,  <18.166918, 20.284086, 22.568165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.395699, 20.242268, 22.508915>,  <18.777000, 20.172569, 22.410164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.395699, 20.242268, 22.508915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277177, 0.178844, 0.944027,
		0.120339, 0.968325, -0.218781,
		-0.953253, 0.174244, 0.246876,
		18.109722, 20.294540, 22.582977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.799036, 20.788826, 22.871532>,  <18.777000, 20.172569, 22.410164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.799036, 20.788826, 22.871532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.468967, 20.574375, 22.942705>,  <18.270927, 20.445704, 22.985409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.468967, 20.574375, 22.942705>,  <18.799036, 20.788826, 22.871532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.468967, 20.574375, 22.942705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202445, 0.013391, 0.979202,
		-0.527361, 0.844030, 0.097487,
		-0.825171, -0.536128, 0.177932,
		18.221416, 20.413536, 22.996084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.378965, 21.173702, 23.395649>,  <18.799036, 20.788826, 22.871532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.378965, 21.173702, 23.395649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.229694, 20.802685, 23.403635>,  <18.140133, 20.580074, 23.408426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.229694, 20.802685, 23.403635>,  <18.378965, 21.173702, 23.395649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.229694, 20.802685, 23.403635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006606, 0.024175, 0.999686,
		-0.927737, 0.372928, -0.015148,
		-0.373177, -0.927545, 0.019965,
		18.117741, 20.524422, 23.409624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.935673, 21.135336, 24.079580>,  <18.378965, 21.173702, 23.395649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.935673, 21.135336, 24.079580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.016418, 20.758018, 23.974167>,  <18.064867, 20.531628, 23.910919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.016418, 20.758018, 23.974167>,  <17.935673, 21.135336, 24.079580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.016418, 20.758018, 23.974167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105762, -0.246506, 0.963353,
		-0.973686, -0.222340, 0.050003,
		0.201866, -0.943292, -0.263535,
		18.076979, 20.475031, 23.895107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.591827, 20.710907, 24.558155>,  <17.935673, 21.135336, 24.079580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.591827, 20.710907, 24.558155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.895443, 20.489868, 24.420464>,  <18.077612, 20.357244, 24.337849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.895443, 20.489868, 24.420464>,  <17.591827, 20.710907, 24.558155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.895443, 20.489868, 24.420464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136108, -0.382356, 0.913936,
		-0.636657, -0.740566, -0.215011,
		0.759040, -0.552599, -0.344227,
		18.123156, 20.324089, 24.317196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.481487, 20.110399, 24.931635>,  <17.591827, 20.710907, 24.558155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.481487, 20.110399, 24.931635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.853756, 20.067673, 24.791670>,  <18.077118, 20.042036, 24.707691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.853756, 20.067673, 24.791670>,  <17.481487, 20.110399, 24.931635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.853756, 20.067673, 24.791670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301930, -0.315866, 0.899481,
		-0.206604, -0.942772, -0.261717,
		0.930673, -0.106816, -0.349910,
		18.132957, 20.035627, 24.686697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783094, 19.507093, 25.242786>,  <17.481487, 20.110399, 24.931635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.783094, 19.507093, 25.242786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.125671, 19.680874, 25.131247>,  <18.331219, 19.785143, 25.064323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.125671, 19.680874, 25.131247>,  <17.783094, 19.507093, 25.242786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125671, 19.680874, 25.131247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415607, -0.259840, 0.871639,
		0.306228, -0.862401, -0.403099,
		0.856443, 0.434451, -0.278850,
		18.382605, 19.811209, 25.047592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.355335, 19.104540, 25.471050>,  <17.783094, 19.507093, 25.242786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.355335, 19.104540, 25.471050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.472904, 19.486687, 25.459137>,  <18.543446, 19.715975, 25.451990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.472904, 19.486687, 25.459137>,  <18.355335, 19.104540, 25.471050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.472904, 19.486687, 25.459137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425707, -0.102947, 0.898986,
		0.855794, -0.276912, -0.436964,
		0.293924, 0.955365, -0.029782,
		18.561081, 19.773296, 25.450203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.150221, 19.132662, 25.575768>,  <18.355335, 19.104540, 25.471050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.150221, 19.132662, 25.575768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.950775, 19.444233, 25.727901>,  <18.831108, 19.631176, 25.819181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.950775, 19.444233, 25.727901>,  <19.150221, 19.132662, 25.575768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.950775, 19.444233, 25.727901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414405, -0.171175, 0.893850,
		0.761348, 0.603301, -0.237441,
		-0.498617, 0.778927, 0.380334,
		18.801189, 19.677912, 25.842001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.789433, 18.498606, 25.391506>,  <19.150221, 19.132662, 25.575768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.789433, 18.498606, 25.391506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.010948, 18.176495, 25.476212>,  <19.143858, 17.983229, 25.527035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.010948, 18.176495, 25.476212>,  <18.789433, 18.498606, 25.391506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.010948, 18.176495, 25.476212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259852, -0.408763, -0.874865,
		0.791071, 0.429464, -0.435622,
		0.553790, -0.805278, 0.211764,
		19.177086, 17.934912, 25.539742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.300428, 18.455528, 24.860277>,  <18.789433, 18.498606, 25.391506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.300428, 18.455528, 24.860277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.282116, 18.086227, 25.012861>,  <19.271130, 17.864647, 25.104412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.282116, 18.086227, 25.012861>,  <19.300428, 18.455528, 24.860277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.282116, 18.086227, 25.012861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045397, -0.383391, -0.922470,
		0.997920, -0.024913, 0.059464,
		-0.045779, -0.923250, 0.381462,
		19.268383, 17.809252, 25.127300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.803097, 18.031258, 24.520411>,  <19.300428, 18.455528, 24.860277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.803097, 18.031258, 24.520411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.507694, 17.797504, 24.654934>,  <19.330452, 17.657253, 24.735647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.507694, 17.797504, 24.654934>,  <19.803097, 18.031258, 24.520411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.507694, 17.797504, 24.654934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148516, -0.345552, -0.926573,
		0.657684, -0.734229, 0.168403,
		-0.738509, -0.584382, 0.336309,
		19.286142, 17.622190, 24.755827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.842205, 17.398111, 24.139757>,  <19.803097, 18.031258, 24.520411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.842205, 17.398111, 24.139757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.468643, 17.365711, 24.279047>,  <19.244505, 17.346272, 24.362621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.468643, 17.365711, 24.279047>,  <19.842205, 17.398111, 24.139757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.468643, 17.365711, 24.279047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320707, -0.240673, -0.916092,
		0.158013, -0.967220, 0.198788,
		-0.933905, -0.081002, 0.348223,
		19.188471, 17.341412, 24.383514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.671200, 16.753456, 23.946863>,  <19.842205, 17.398111, 24.139757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.671200, 16.753456, 23.946863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.327301, 16.950275, 24.001600>,  <19.120962, 17.068367, 24.034443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.327301, 16.950275, 24.001600>,  <19.671200, 16.753456, 23.946863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.327301, 16.950275, 24.001600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383943, -0.446004, -0.808497,
		-0.336784, -0.747644, 0.572368,
		-0.859746, 0.492046, 0.136846,
		19.069378, 17.097889, 24.042654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.195807, 16.348902, 23.656773>,  <19.671200, 16.753456, 23.946863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.195807, 16.348902, 23.656773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.019310, 16.707855, 23.655396>,  <18.913412, 16.923227, 23.654570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.019310, 16.707855, 23.655396>,  <19.195807, 16.348902, 23.656773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.019310, 16.707855, 23.655396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267452, -0.135167, -0.954044,
		-0.856607, -0.420043, 0.299648,
		-0.441242, 0.897382, -0.003444,
		18.886938, 16.977070, 23.654362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567785, 16.243025, 23.370035>,  <19.195807, 16.348902, 23.656773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.567785, 16.243025, 23.370035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.643860, 16.632790, 23.322109>,  <18.689505, 16.866648, 23.293354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.643860, 16.632790, 23.322109>,  <18.567785, 16.243025, 23.370035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.643860, 16.632790, 23.322109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406580, -0.032908, -0.913022,
		-0.893601, 0.222357, 0.389916,
		0.190185, 0.974410, -0.119813,
		18.700916, 16.925112, 23.286165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020988, 16.427082, 23.038439>,  <18.567785, 16.243025, 23.370035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.020988, 16.427082, 23.038439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.252483, 16.746563, 22.972551>,  <18.391380, 16.938251, 22.933018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.252483, 16.746563, 22.972551>,  <18.020988, 16.427082, 23.038439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252483, 16.746563, 22.972551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391211, 0.094680, -0.915417,
		-0.715552, 0.594229, 0.367257,
		0.578739, 0.798704, -0.164720,
		18.426105, 16.986174, 22.923136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641169, 16.863939, 22.617273>,  <18.020988, 16.427082, 23.038439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641169, 16.863939, 22.617273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.006927, 17.022083, 22.582470>,  <18.226383, 17.116970, 22.561588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.006927, 17.022083, 22.582470>,  <17.641169, 16.863939, 22.617273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.006927, 17.022083, 22.582470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119795, 0.058956, -0.991047,
		-0.386688, 0.916633, 0.101271,
		0.914397, 0.395358, -0.087010,
		18.281246, 17.140690, 22.556366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.640230, 17.407427, 22.104998>,  <17.641169, 16.863939, 22.617273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.640230, 17.407427, 22.104998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.021603, 17.287224, 22.115295>,  <18.250427, 17.215103, 22.121473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.021603, 17.287224, 22.115295>,  <17.640230, 17.407427, 22.104998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.021603, 17.287224, 22.115295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064892, 0.121031, -0.990525,
		0.294544, 0.946069, 0.134895,
		0.953432, -0.300507, 0.025743,
		18.307632, 17.197071, 22.123018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.019838, 17.937819, 21.800558>,  <17.640230, 17.407427, 22.104998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.019838, 17.937819, 21.800558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.275387, 17.630749, 21.780464>,  <18.428715, 17.446507, 21.768408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.275387, 17.630749, 21.780464>,  <18.019838, 17.937819, 21.800558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.275387, 17.630749, 21.780464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305029, 0.312716, -0.899536,
		0.706259, 0.559363, 0.433947,
		0.638870, -0.767673, -0.050236,
		18.467049, 17.400448, 21.765392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623047, 18.197153, 21.503492>,  <18.019838, 17.937819, 21.800558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.623047, 18.197153, 21.503492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.605839, 17.809223, 21.407499>,  <18.595514, 17.576466, 21.349903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.605839, 17.809223, 21.407499>,  <18.623047, 18.197153, 21.503492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.605839, 17.809223, 21.407499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209491, 0.226108, -0.951309,
		0.976864, -0.091199, 0.193443,
		-0.043019, -0.969824, -0.239982,
		18.592934, 17.518276, 21.335505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.172558, 18.068600, 20.986832>,  <18.623047, 18.197153, 21.503492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.172558, 18.068600, 20.986832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.924763, 17.757782, 20.942225>,  <18.776087, 17.571291, 20.915461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.924763, 17.757782, 20.942225>,  <19.172558, 18.068600, 20.986832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.924763, 17.757782, 20.942225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075818, 0.082173, -0.993730,
		0.781338, -0.624057, 0.008009,
		-0.619486, -0.777046, -0.111519,
		18.738916, 17.524668, 20.908770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.445484, 17.651636, 20.482380>,  <19.172558, 18.068600, 20.986832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.445484, 17.651636, 20.482380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.054523, 17.567234, 20.477219>,  <18.819948, 17.516594, 20.474121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.054523, 17.567234, 20.477219>,  <19.445484, 17.651636, 20.482380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.054523, 17.567234, 20.477219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008303, 0.022674, -0.999708,
		0.211235, -0.977222, -0.020410,
		-0.977400, -0.211004, -0.012903,
		18.761303, 17.503933, 20.473347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.042616, 17.214758, 20.227488>,  <19.445484, 17.651636, 20.482380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.042616, 17.214758, 20.227488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.287968, 17.516548, 20.134079>,  <20.435179, 17.697622, 20.078033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.287968, 17.516548, 20.134079>,  <20.042616, 17.214758, 20.227488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.287968, 17.516548, 20.134079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281150, 0.067718, 0.957272,
		0.738051, -0.652826, -0.170584,
		0.613380, 0.754475, -0.233522,
		20.471981, 17.742891, 20.064022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.608013, 17.050827, 20.565069>,  <20.042616, 17.214758, 20.227488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.608013, 17.050827, 20.565069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.645466, 17.440441, 20.482616>,  <20.667936, 17.674210, 20.433146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.645466, 17.440441, 20.482616>,  <20.608013, 17.050827, 20.565069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.645466, 17.440441, 20.482616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295581, 0.170511, 0.939978,
		0.950718, -0.148939, -0.271941,
		0.093631, 0.974034, -0.206132,
		20.673555, 17.732651, 20.420776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.151152, 17.187208, 20.869606>,  <20.608013, 17.050827, 20.565069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.151152, 17.187208, 20.869606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.036366, 17.565842, 20.810778>,  <20.967495, 17.793022, 20.775480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.036366, 17.565842, 20.810778>,  <21.151152, 17.187208, 20.869606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.036366, 17.565842, 20.810778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505615, 0.280070, 0.816036,
		0.813637, 0.159811, -0.558977,
		-0.286964, 0.946584, -0.147073,
		20.950275, 17.849817, 20.766655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.760483, 17.731886, 20.829525>,  <21.151152, 17.187208, 20.869606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.760483, 17.731886, 20.829525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.442204, 17.945957, 20.942982>,  <21.251236, 18.074400, 21.011057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.442204, 17.945957, 20.942982>,  <21.760483, 17.731886, 20.829525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.442204, 17.945957, 20.942982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487262, 0.287419, 0.824601,
		0.359782, 0.794341, -0.489469,
		-0.795697, 0.535176, 0.283644,
		21.203495, 18.106510, 21.028074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.993973, 18.217836, 21.205719>,  <21.760483, 17.731886, 20.829525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.993973, 18.217836, 21.205719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.614086, 18.223328, 21.330843>,  <21.386154, 18.226624, 21.405918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.614086, 18.223328, 21.330843>,  <21.993973, 18.217836, 21.205719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.614086, 18.223328, 21.330843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312319, 0.112551, 0.943286,
		-0.022256, 0.993551, -0.111180,
		-0.949717, 0.013729, 0.312810,
		21.329170, 18.227446, 21.424686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.112684, 18.500895, 21.846428>,  <21.993973, 18.217836, 21.205719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.112684, 18.500895, 21.846428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.731136, 18.391720, 21.896454>,  <21.502209, 18.326214, 21.926470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.731136, 18.391720, 21.896454>,  <22.112684, 18.500895, 21.846428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.731136, 18.391720, 21.896454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119278, 0.037765, 0.992142,
		-0.275516, 0.961290, -0.003467,
		-0.953868, -0.272938, 0.125065,
		21.444977, 18.309839, 21.933973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.722294, 19.012615, 22.206898>,  <22.112684, 18.500895, 21.846428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.722294, 19.012615, 22.206898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.515617, 18.674675, 22.262407>,  <21.391611, 18.471910, 22.295713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.515617, 18.674675, 22.262407>,  <21.722294, 19.012615, 22.206898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.515617, 18.674675, 22.262407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244887, 0.009481, 0.969505,
		-0.820404, 0.534917, 0.201994,
		-0.516690, -0.844851, 0.138772,
		21.360611, 18.421219, 22.304039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.557339, 19.725801, 22.430063>,  <21.722294, 19.012615, 22.206898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.557339, 19.725801, 22.430063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.923119, 19.883991, 22.395702>,  <22.142588, 19.978905, 22.375086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.923119, 19.883991, 22.395702>,  <21.557339, 19.725801, 22.430063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.923119, 19.883991, 22.395702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038750, -0.125722, -0.991308,
		-0.402838, 0.909832, -0.099642,
		0.914451, 0.395475, -0.085902,
		22.197454, 20.002634, 22.369932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.493643, 20.183352, 21.852890>,  <21.557339, 19.725801, 22.430063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.493643, 20.183352, 21.852890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.884361, 20.103107, 21.882883>,  <22.118793, 20.054960, 21.900879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.884361, 20.103107, 21.882883>,  <21.493643, 20.183352, 21.852890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.884361, 20.103107, 21.882883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046016, -0.145354, -0.988309,
		0.209164, 0.968828, -0.132750,
		0.976797, -0.200610, 0.074984,
		22.177401, 20.042925, 21.905378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.719482, 20.495813, 21.287123>,  <21.493643, 20.183352, 21.852890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.719482, 20.495813, 21.287123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.008572, 20.233932, 21.375700>,  <22.182024, 20.076803, 21.428846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.008572, 20.233932, 21.375700>,  <21.719482, 20.495813, 21.287123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.008572, 20.233932, 21.375700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102086, -0.215767, -0.971094,
		0.683559, 0.724437, -0.089103,
		0.722721, -0.654703, 0.221445,
		22.225388, 20.037521, 21.442133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.355652, 20.792984, 21.028694>,  <21.719482, 20.495813, 21.287123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.355652, 20.792984, 21.028694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.430344, 20.400818, 21.053720>,  <22.475159, 20.165518, 21.068737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.430344, 20.400818, 21.053720>,  <22.355652, 20.792984, 21.028694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.430344, 20.400818, 21.053720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020912, -0.059706, -0.997997,
		0.982189, 0.187662, 0.009354,
		0.186728, -0.980417, 0.062567,
		22.486362, 20.106693, 21.072491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.655106, 20.642118, 20.454121>,  <22.355652, 20.792984, 21.028694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.655106, 20.642118, 20.454121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.591599, 20.262295, 20.562290>,  <22.553493, 20.034401, 20.627192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.591599, 20.262295, 20.562290>,  <22.655106, 20.642118, 20.454121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.591599, 20.262295, 20.562290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197455, -0.298904, -0.933632,
		0.967370, -0.094836, 0.234952,
		-0.158770, -0.949559, 0.270425,
		22.543968, 19.977427, 20.643417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.284105, 20.214733, 20.224592>,  <22.655106, 20.642118, 20.454121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.284105, 20.214733, 20.224592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.949833, 19.997997, 20.260473>,  <22.749269, 19.867956, 20.282001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.949833, 19.997997, 20.260473>,  <23.284105, 20.214733, 20.224592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.949833, 19.997997, 20.260473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065407, -0.260356, -0.963295,
		0.545309, -0.799138, 0.253014,
		-0.835679, -0.541842, 0.089705,
		22.699129, 19.835445, 20.287384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.351021, 19.795168, 19.725697>,  <23.284105, 20.214733, 20.224592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.351021, 19.795168, 19.725697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.961674, 19.740070, 19.799000>,  <22.728065, 19.707012, 19.842981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.961674, 19.740070, 19.799000>,  <23.351021, 19.795168, 19.725697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.961674, 19.740070, 19.799000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179092, -0.042151, -0.982929,
		0.143117, -0.989571, 0.016359,
		-0.973367, -0.137744, 0.183257,
		22.669664, 19.698748, 19.853977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<20.324200, 22.488001, 24.739845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.194519, 22.149670, 24.570391>,  <20.116711, 21.946671, 24.468718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.194519, 22.149670, 24.570391>,  <20.324200, 22.488001, 24.739845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.194519, 22.149670, 24.570391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077505, 0.470068, -0.879221,
		0.942808, -0.252211, -0.217953,
		-0.324202, -0.845829, -0.423636,
		20.097258, 21.895922, 24.443300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.666840, 22.466820, 24.130651>,  <20.324200, 22.488001, 24.739845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.666840, 22.466820, 24.130651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.368896, 22.211105, 24.054232>,  <20.190130, 22.057676, 24.008381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.368896, 22.211105, 24.054232>,  <20.666840, 22.466820, 24.130651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.368896, 22.211105, 24.054232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076709, 0.366484, -0.927257,
		0.662798, -0.676020, -0.322018,
		-0.744858, -0.639286, -0.191048,
		20.145439, 22.019320, 23.996918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.771299, 22.037138, 23.526262>,  <20.666840, 22.466820, 24.130651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.771299, 22.037138, 23.526262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.374207, 22.033306, 23.574249>,  <20.135950, 22.031006, 23.603043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.374207, 22.033306, 23.574249>,  <20.771299, 22.037138, 23.526262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374207, 22.033306, 23.574249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119766, 0.176748, -0.976942,
		-0.011845, -0.984210, -0.176611,
		-0.992732, -0.009580, 0.119969,
		20.076387, 22.030432, 23.610239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.588827, 21.599495, 23.002718>,  <20.771299, 22.037138, 23.526262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.588827, 21.599495, 23.002718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.272827, 21.819828, 23.110409>,  <20.083227, 21.952028, 23.175024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.272827, 21.819828, 23.110409>,  <20.588827, 21.599495, 23.002718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.272827, 21.819828, 23.110409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143700, 0.260535, -0.954710,
		-0.596029, -0.792909, -0.126667,
		-0.790000, 0.550833, 0.269227,
		20.035828, 21.985077, 23.191177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.106607, 21.402767, 22.529709>,  <20.588827, 21.599495, 23.002718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.106607, 21.402767, 22.529709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.970894, 21.746056, 22.683769>,  <19.889465, 21.952028, 22.776205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.970894, 21.746056, 22.683769>,  <20.106607, 21.402767, 22.529709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.970894, 21.746056, 22.683769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433428, 0.220760, -0.873731,
		-0.834881, -0.463377, 0.297078,
		-0.339284, 0.858223, 0.385149,
		19.869108, 22.003523, 22.799314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.483112, 21.472206, 22.275677>,  <20.106607, 21.402767, 22.529709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.483112, 21.472206, 22.275677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.571949, 21.848576, 22.377924>,  <19.625252, 22.074396, 22.439272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.571949, 21.848576, 22.377924>,  <19.483112, 21.472206, 22.275677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.571949, 21.848576, 22.377924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201144, 0.300739, -0.932254,
		-0.954052, 0.155632, 0.256053,
		0.222094, 0.940922, 0.255616,
		19.638577, 22.130852, 22.454609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.944838, 21.835524, 21.980209>,  <19.483112, 21.472206, 22.275677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.944838, 21.835524, 21.980209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.235085, 22.102749, 22.046141>,  <19.409233, 22.263084, 22.085699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.235085, 22.102749, 22.046141>,  <18.944838, 21.835524, 21.980209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.235085, 22.102749, 22.046141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207815, 0.441126, -0.873052,
		-0.655965, 0.599249, 0.458923,
		0.725619, 0.668063, 0.164830,
		19.452770, 22.303167, 22.095591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.637346, 22.501400, 21.816618>,  <18.944838, 21.835524, 21.980209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.637346, 22.501400, 21.816618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.028172, 22.579655, 21.782974>,  <19.262667, 22.626608, 21.762789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.028172, 22.579655, 21.782974>,  <18.637346, 22.501400, 21.816618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.028172, 22.579655, 21.782974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157122, 0.395709, -0.904835,
		-0.143737, 0.897296, 0.417372,
		0.977063, 0.195636, -0.084107,
		19.321291, 22.638346, 21.757742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.653082, 23.317972, 21.732225>,  <18.637346, 22.501400, 21.816618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.653082, 23.317972, 21.732225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.985947, 23.136932, 21.604059>,  <19.185665, 23.028309, 21.527159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.985947, 23.136932, 21.604059>,  <18.653082, 23.317972, 21.732225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.985947, 23.136932, 21.604059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147108, 0.376930, -0.914485,
		0.534668, 0.808133, 0.247086,
		0.832160, -0.452597, -0.320415,
		19.235594, 23.001154, 21.507935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837122, 23.686144, 21.364826>,  <18.653082, 23.317972, 21.732225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.837122, 23.686144, 21.364826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.058186, 23.381145, 21.230263>,  <19.190825, 23.198147, 21.149525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.058186, 23.381145, 21.230263>,  <18.837122, 23.686144, 21.364826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.058186, 23.381145, 21.230263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021220, 0.390649, -0.920295,
		0.833138, 0.515748, 0.199715,
		0.552658, -0.762495, -0.336408,
		19.223984, 23.152397, 21.129341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.332380, 24.034113, 20.968422>,  <18.837122, 23.686144, 21.364826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.332380, 24.034113, 20.968422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.305973, 23.653175, 20.849304>,  <19.290129, 23.424612, 20.777834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.305973, 23.653175, 20.849304>,  <19.332380, 24.034113, 20.968422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.305973, 23.653175, 20.849304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082238, 0.302621, -0.949556,
		0.994424, -0.038200, -0.098298,
		-0.066020, -0.952345, -0.297792,
		19.286167, 23.367472, 20.759966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819599, 23.984140, 20.503538>,  <19.332380, 24.034113, 20.968422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.819599, 23.984140, 20.503538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.560806, 23.689991, 20.422901>,  <19.405531, 23.513500, 20.374519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.560806, 23.689991, 20.422901>,  <19.819599, 23.984140, 20.503538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560806, 23.689991, 20.422901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031309, 0.289777, -0.956582,
		0.761863, -0.612579, -0.210504,
		-0.646981, -0.735375, -0.201590,
		19.366713, 23.469379, 20.362425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.520344, 23.567322, 20.424032>,  <19.819599, 23.984140, 20.503538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.520344, 23.567322, 20.424032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.886044, 23.664761, 20.294535>,  <21.105463, 23.723225, 20.216835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.886044, 23.664761, 20.294535>,  <20.520344, 23.567322, 20.424032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.886044, 23.664761, 20.294535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385657, -0.278327, 0.879661,
		0.124175, -0.929083, -0.348404,
		0.914248, 0.243597, -0.323746,
		21.160318, 23.737839, 20.197411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.920347, 22.970507, 20.617311>,  <20.520344, 23.567322, 20.424032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.920347, 22.970507, 20.617311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.158497, 23.290386, 20.586287>,  <21.301386, 23.482313, 20.567673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.158497, 23.290386, 20.586287>,  <20.920347, 22.970507, 20.617311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.158497, 23.290386, 20.586287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395249, -0.207474, 0.894837,
		0.699506, -0.563418, -0.439604,
		0.595373, 0.799697, -0.077561,
		21.337109, 23.530294, 20.563019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.446955, 22.707514, 21.030931>,  <20.920347, 22.970507, 20.617311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.446955, 22.707514, 21.030931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.553947, 23.091343, 20.995897>,  <21.618143, 23.321640, 20.974876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.553947, 23.091343, 20.995897>,  <21.446955, 22.707514, 21.030931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.553947, 23.091343, 20.995897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493282, -0.058282, 0.867915,
		0.827724, -0.275354, -0.488930,
		0.267480, 0.959575, -0.087586,
		21.634192, 23.379215, 20.969622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.178656, 22.686220, 21.193996>,  <21.446955, 22.707514, 21.030931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.178656, 22.686220, 21.193996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.003201, 23.041458, 21.248964>,  <21.897926, 23.254601, 21.281944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.003201, 23.041458, 21.248964>,  <22.178656, 22.686220, 21.193996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.003201, 23.041458, 21.248964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511086, 0.120750, 0.851006,
		0.739180, 0.443517, -0.506858,
		-0.438639, 0.888095, 0.137419,
		21.871609, 23.307886, 21.290190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.655937, 23.063442, 21.546328>,  <22.178656, 22.686220, 21.193996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.655937, 23.063442, 21.546328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.331352, 23.288727, 21.608717>,  <22.136602, 23.423897, 21.646151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.331352, 23.288727, 21.608717>,  <22.655937, 23.063442, 21.546328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.331352, 23.288727, 21.608717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244755, 0.085163, 0.965838,
		0.530686, 0.821914, -0.206955,
		-0.811460, 0.563209, 0.155972,
		22.087914, 23.457689, 21.655508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.905878, 23.772142, 21.875608>,  <22.655937, 23.063442, 21.546328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.905878, 23.772142, 21.875608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.527561, 23.697014, 21.981586>,  <22.300571, 23.651936, 22.045174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.527561, 23.697014, 21.981586>,  <22.905878, 23.772142, 21.875608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.527561, 23.697014, 21.981586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224477, 0.211489, 0.951253,
		-0.234700, 0.959164, -0.157863,
		-0.945794, -0.187823, 0.264946,
		22.243822, 23.640667, 22.061069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.821941, 24.270824, 22.272579>,  <22.905878, 23.772142, 21.875608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.821941, 24.270824, 22.272579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.526730, 24.018707, 22.368948>,  <22.349602, 23.867437, 22.426769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.526730, 24.018707, 22.368948>,  <22.821941, 24.270824, 22.272579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.526730, 24.018707, 22.368948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138843, 0.207557, 0.968320,
		-0.660330, 0.748099, -0.065671,
		-0.738029, -0.630292, 0.240924,
		22.305321, 23.829620, 22.441225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.523516, 24.522573, 22.979939>,  <22.821941, 24.270824, 22.272579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.523516, 24.522573, 22.979939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.378216, 24.150311, 22.962368>,  <22.291037, 23.926952, 22.951826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.378216, 24.150311, 22.962368>,  <22.523516, 24.522573, 22.979939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.378216, 24.150311, 22.962368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040890, -0.031175, 0.998677,
		-0.930794, 0.364565, -0.026731,
		-0.363250, -0.930656, -0.043924,
		22.269241, 23.871113, 22.949190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.132120, 24.483881, 23.657673>,  <22.523516, 24.522573, 22.979939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.132120, 24.483881, 23.657673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.168594, 24.104443, 23.536448>,  <22.190479, 23.876780, 23.463713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.168594, 24.104443, 23.536448>,  <22.132120, 24.483881, 23.657673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.168594, 24.104443, 23.536448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064047, -0.309288, 0.948809,
		-0.993772, -0.067109, -0.088958,
		0.091188, -0.948598, -0.303064,
		22.195951, 23.819864, 23.445528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.770617, 24.208624, 24.117825>,  <22.132120, 24.483881, 23.657673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.770617, 24.208624, 24.117825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.938721, 23.887192, 23.949236>,  <22.039583, 23.694332, 23.848083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.938721, 23.887192, 23.949236>,  <21.770617, 24.208624, 24.117825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.938721, 23.887192, 23.949236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056574, -0.440371, 0.896032,
		-0.905638, -0.400411, -0.139608,
		0.420260, -0.803583, -0.421470,
		22.064798, 23.646116, 23.822796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.552717, 23.668709, 24.477118>,  <21.770617, 24.208624, 24.117825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.552717, 23.668709, 24.477118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.907131, 23.544125, 24.339750>,  <22.119780, 23.469374, 24.257330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.907131, 23.544125, 24.339750>,  <21.552717, 23.668709, 24.477118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.907131, 23.544125, 24.339750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189379, -0.432975, 0.881288,
		-0.423167, -0.845891, -0.324651,
		0.886039, -0.311450, -0.343415,
		22.172941, 23.450687, 24.236725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.609552, 23.024422, 24.755047>,  <21.552717, 23.668709, 24.477118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.609552, 23.024422, 24.755047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.989204, 23.098038, 24.652849>,  <22.216995, 23.142206, 24.591530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.989204, 23.098038, 24.652849>,  <21.609552, 23.024422, 24.755047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.989204, 23.098038, 24.652849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304022, -0.324398, 0.895733,
		0.081967, -0.927845, -0.363848,
		0.949132, 0.184038, -0.255495,
		22.273945, 23.153250, 24.576200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.096670, 22.347515, 24.919138>,  <21.609552, 23.024422, 24.755047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.096670, 22.347515, 24.919138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.313271, 22.683735, 24.925488>,  <22.443232, 22.885468, 24.929296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.313271, 22.683735, 24.925488>,  <22.096670, 22.347515, 24.919138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.313271, 22.683735, 24.925488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498573, -0.336282, 0.798962,
		0.676905, -0.424725, -0.601172,
		0.541503, 0.840549, 0.015874,
		22.475721, 22.935900, 24.930250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.791143, 22.179501, 25.045391>,  <22.096670, 22.347515, 24.919138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.791143, 22.179501, 25.045391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.829914, 22.568012, 25.132311>,  <22.853176, 22.801119, 25.184464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.829914, 22.568012, 25.132311>,  <22.791143, 22.179501, 25.045391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.829914, 22.568012, 25.132311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539005, -0.234764, 0.808925,
		0.836707, 0.038720, -0.546280,
		0.096925, 0.971281, 0.217299,
		22.858992, 22.859396, 25.197500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.003662, 22.362309, 24.383139>,  <22.791143, 22.179501, 25.045391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.003662, 22.362309, 24.383139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.916908, 22.009846, 24.551197>,  <22.864855, 21.798368, 24.652033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.916908, 22.009846, 24.551197>,  <23.003662, 22.362309, 24.383139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.916908, 22.009846, 24.551197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005421, -0.429298, -0.903147,
		0.976182, -0.198158, 0.088333,
		-0.216886, -0.881156, 0.420147,
		22.851843, 21.745499, 24.677240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.178350, 21.914829, 23.905624>,  <23.003662, 22.362309, 24.383139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.178350, 21.914829, 23.905624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.956337, 21.659798, 24.119328>,  <22.823130, 21.506779, 24.247549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.956337, 21.659798, 24.119328>,  <23.178350, 21.914829, 23.905624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.956337, 21.659798, 24.119328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103942, -0.584079, -0.805014,
		0.825310, -0.502340, 0.257911,
		-0.555031, -0.637579, 0.534260,
		22.789827, 21.468525, 24.279606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.466858, 21.194948, 23.777061>,  <23.178350, 21.914829, 23.905624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.466858, 21.194948, 23.777061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.107342, 21.150276, 23.946627>,  <22.891632, 21.123474, 24.048365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.107342, 21.150276, 23.946627>,  <23.466858, 21.194948, 23.777061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.107342, 21.150276, 23.946627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197771, -0.759705, -0.619463,
		0.391228, -0.640606, 0.660731,
		-0.898792, -0.111678, 0.423911,
		22.837704, 21.116774, 24.073799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.394800, 20.435921, 23.951735>,  <23.466858, 21.194948, 23.777061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.394800, 20.435921, 23.951735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.040092, 20.605644, 23.878410>,  <22.827269, 20.707478, 23.834415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.040092, 20.605644, 23.878410>,  <23.394800, 20.435921, 23.951735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.040092, 20.605644, 23.878410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158783, -0.652109, -0.741311,
		-0.434081, -0.628266, 0.645644,
		-0.886770, 0.424307, -0.183310,
		22.774061, 20.732937, 23.823418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.914862, 19.872772, 23.888474>,  <23.394800, 20.435921, 23.951735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.914862, 19.872772, 23.888474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.701183, 20.153793, 23.700407>,  <22.572977, 20.322405, 23.587566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.701183, 20.153793, 23.700407>,  <22.914862, 19.872772, 23.888474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.701183, 20.153793, 23.700407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204268, -0.646966, -0.734649,
		-0.820312, -0.296405, 0.489114,
		-0.534193, 0.702552, -0.470169,
		22.540926, 20.364559, 23.559357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.269526, 19.501051, 23.591894>,  <22.914862, 19.872772, 23.888474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.269526, 19.501051, 23.591894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.301346, 19.841854, 23.384912>,  <22.320438, 20.046335, 23.260723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.301346, 19.841854, 23.384912>,  <22.269526, 19.501051, 23.591894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301346, 19.841854, 23.384912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112968, -0.508049, -0.853888,
		-0.990409, 0.126382, 0.055834,
		0.079550, 0.852006, -0.517453,
		22.325211, 20.097456, 23.229677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.812613, 19.473467, 23.050663>,  <22.269526, 19.501051, 23.591894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.812613, 19.473467, 23.050663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.085781, 19.740948, 22.933046>,  <22.249681, 19.901436, 22.862476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.085781, 19.740948, 22.933046>,  <21.812613, 19.473467, 23.050663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.085781, 19.740948, 22.933046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208338, -0.207512, -0.955790,
		-0.700154, 0.713988, -0.002398,
		0.682920, 0.668701, -0.294041,
		22.290657, 19.941559, 22.844833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.164598, 19.113060, 22.920698>,  <21.812613, 19.473467, 23.050663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.164598, 19.113060, 22.920698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.226391, 18.726337, 22.839289>,  <21.263466, 18.494305, 22.790443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.226391, 18.726337, 22.839289>,  <21.164598, 19.113060, 22.920698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.226391, 18.726337, 22.839289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149931, -0.180671, 0.972049,
		-0.976553, -0.180679, 0.117043,
		0.154482, -0.966806, -0.203524,
		21.272736, 18.436296, 22.778231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.720404, 18.718266, 23.387871>,  <21.164598, 19.113060, 22.920698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.720404, 18.718266, 23.387871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.026043, 18.481834, 23.284502>,  <21.209427, 18.339975, 23.222481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.026043, 18.481834, 23.284502>,  <20.720404, 18.718266, 23.387871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.026043, 18.481834, 23.284502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182102, -0.186671, 0.965398,
		-0.618866, -0.784717, -0.034998,
		0.764097, -0.591078, -0.258423,
		21.255272, 18.304512, 23.206976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603741, 18.044189, 23.791813>,  <20.720404, 18.718266, 23.387871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603741, 18.044189, 23.791813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.981758, 18.073135, 23.664276>,  <21.208569, 18.090504, 23.587753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.981758, 18.073135, 23.664276>,  <20.603741, 18.044189, 23.791813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.981758, 18.073135, 23.664276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326946, -0.204044, 0.922753,
		0.001718, -0.976284, -0.216490,
		0.945041, 0.072366, -0.318842,
		21.265270, 18.094845, 23.568623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.019852, 17.594252, 24.173489>,  <20.603741, 18.044189, 23.791813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.019852, 17.594252, 24.173489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.325611, 17.794430, 24.010885>,  <21.509068, 17.914537, 23.913322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.325611, 17.794430, 24.010885>,  <21.019852, 17.594252, 24.173489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.325611, 17.794430, 24.010885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519319, -0.104237, 0.848199,
		0.382104, -0.859470, -0.339570,
		0.764398, 0.500446, -0.406510,
		21.554930, 17.944563, 23.888931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.440794, 17.231817, 24.512636>,  <21.019852, 17.594252, 24.173489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.440794, 17.231817, 24.512636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.621647, 17.566605, 24.389307>,  <21.730158, 17.767477, 24.315310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.621647, 17.566605, 24.389307>,  <21.440794, 17.231817, 24.512636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.621647, 17.566605, 24.389307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608134, -0.036391, 0.793000,
		0.652494, -0.546042, -0.525442,
		0.452133, 0.836967, -0.308322,
		21.757286, 17.817696, 24.296810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.166117, 17.188065, 24.755068>,  <21.440794, 17.231817, 24.512636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.166117, 17.188065, 24.755068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.096363, 17.577190, 24.694109>,  <22.054510, 17.810665, 24.657534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.096363, 17.577190, 24.694109>,  <22.166117, 17.188065, 24.755068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.096363, 17.577190, 24.694109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401029, 0.211518, 0.891311,
		0.899314, 0.094317, -0.427012,
		-0.174386, 0.972813, -0.152397,
		22.044046, 17.869034, 24.648390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.639578, 17.586565, 25.252913>,  <22.166117, 17.188065, 24.755068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.639578, 17.586565, 25.252913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.369122, 17.861080, 25.145699>,  <22.206848, 18.025789, 25.081371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.369122, 17.861080, 25.145699>,  <22.639578, 17.586565, 25.252913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.369122, 17.861080, 25.145699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060323, 0.414139, 0.908212,
		0.734298, 0.597912, -0.321416,
		-0.676142, 0.686287, -0.268034,
		22.166279, 18.066967, 25.065289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.929750, 18.077280, 25.530884>,  <22.639578, 17.586565, 25.252913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.929750, 18.077280, 25.530884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.557369, 18.216976, 25.488260>,  <22.333941, 18.300793, 25.462687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.557369, 18.216976, 25.488260>,  <22.929750, 18.077280, 25.530884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.557369, 18.216976, 25.488260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129429, 0.588521, 0.798055,
		0.341425, 0.729161, -0.593088,
		-0.930955, 0.349239, -0.106561,
		22.278082, 18.321747, 25.456291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.870392, 18.835253, 25.645916>,  <22.929750, 18.077280, 25.530884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.870392, 18.835253, 25.645916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.495422, 18.712578, 25.711861>,  <22.270441, 18.638973, 25.751427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.495422, 18.712578, 25.711861>,  <22.870392, 18.835253, 25.645916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.495422, 18.712578, 25.711861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104189, 0.698857, 0.707632,
		-0.332237, 0.646174, -0.687079,
		-0.937424, -0.306688, 0.164862,
		22.214195, 18.620571, 25.761320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.026445, 19.478048, 10.352769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.810833, 19.170650, 10.490674>,  <16.681465, 18.986212, 10.573417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.810833, 19.170650, 10.490674>,  <17.026445, 19.478048, 10.352769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810833, 19.170650, 10.490674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435730, 0.095869, 0.894957,
		-0.720822, 0.632634, 0.283179,
		-0.539032, -0.768494, 0.344762,
		16.649124, 18.940102, 10.594103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.002125, 19.608044, 11.025078>,  <17.026445, 19.478048, 10.352769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.002125, 19.608044, 11.025078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.902309, 19.220772, 11.032673>,  <16.842421, 18.988409, 11.037230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.902309, 19.220772, 11.032673>,  <17.002125, 19.608044, 11.025078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.902309, 19.220772, 11.032673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372368, -0.077836, 0.924815,
		-0.893909, 0.237846, 0.379942,
		-0.249537, -0.968179, 0.018988,
		16.827448, 18.930319, 11.038369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.637831, 19.500191, 11.714128>,  <17.002125, 19.608044, 11.025078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.637831, 19.500191, 11.714128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.809265, 19.164413, 11.580472>,  <16.912127, 18.962948, 11.500278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.809265, 19.164413, 11.580472>,  <16.637831, 19.500191, 11.714128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.809265, 19.164413, 11.580472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456080, -0.118245, 0.882048,
		-0.779939, -0.530429, 0.332174,
		0.428586, -0.839442, -0.334142,
		16.937841, 18.912580, 11.480229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847507, 19.266787, 12.273726>,  <16.637831, 19.500191, 11.714128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.847507, 19.266787, 12.273726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.035084, 18.997952, 12.044504>,  <17.147629, 18.836651, 11.906971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.035084, 18.997952, 12.044504>,  <16.847507, 19.266787, 12.273726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.035084, 18.997952, 12.044504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592257, -0.242049, 0.768533,
		-0.655230, -0.699791, 0.284543,
		0.468940, -0.672089, -0.573055,
		17.175766, 18.796326, 11.872588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.811123, 18.534094, 12.609730>,  <16.847507, 19.266787, 12.273726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.811123, 18.534094, 12.609730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.122257, 18.638672, 12.381127>,  <17.308937, 18.701418, 12.243966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.122257, 18.638672, 12.381127>,  <16.811123, 18.534094, 12.609730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.122257, 18.638672, 12.381127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618215, -0.154702, 0.770635,
		0.113064, -0.952741, -0.281960,
		0.777835, 0.261443, -0.571507,
		17.355608, 18.717104, 12.209675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330486, 18.052717, 12.909408>,  <16.811123, 18.534094, 12.609730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.330486, 18.052717, 12.909408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.570992, 18.306633, 12.715286>,  <17.715296, 18.458982, 12.598813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.570992, 18.306633, 12.715286>,  <17.330486, 18.052717, 12.909408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.570992, 18.306633, 12.715286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698059, -0.121744, 0.705614,
		0.388835, -0.763032, -0.516322,
		0.601265, 0.634792, -0.485303,
		17.751371, 18.497070, 12.569695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.042439, 17.754480, 12.897174>,  <17.330486, 18.052717, 12.909408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.042439, 17.754480, 12.897174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.101181, 18.140255, 12.809266>,  <18.136427, 18.371719, 12.756521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.101181, 18.140255, 12.809266>,  <18.042439, 17.754480, 12.897174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.101181, 18.140255, 12.809266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767635, 0.029003, 0.640230,
		0.623834, -0.262725, -0.736075,
		0.146856, 0.964435, -0.219770,
		18.145237, 18.429585, 12.743335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.751345, 17.831448, 12.774077>,  <18.042439, 17.754480, 12.897174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.751345, 17.831448, 12.774077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.637581, 18.204617, 12.862407>,  <18.569323, 18.428518, 12.915404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.637581, 18.204617, 12.862407>,  <18.751345, 17.831448, 12.774077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.637581, 18.204617, 12.862407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828022, 0.122945, 0.547051,
		0.483208, 0.338433, -0.807449,
		-0.284412, 0.932924, 0.220822,
		18.552258, 18.484493, 12.928654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.418476, 18.274635, 12.750308>,  <18.751345, 17.831448, 12.774077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.418476, 18.274635, 12.750308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.128868, 18.460674, 12.954063>,  <18.955103, 18.572298, 13.076317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.128868, 18.460674, 12.954063>,  <19.418476, 18.274635, 12.750308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.128868, 18.460674, 12.954063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660606, 0.255056, 0.706078,
		0.198472, 0.847721, -0.491913,
		-0.724022, 0.465097, 0.509388,
		18.911661, 18.600203, 13.106880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.739878, 18.852846, 12.886299>,  <19.418476, 18.274635, 12.750308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.739878, 18.852846, 12.886299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.440243, 18.779701, 13.140993>,  <19.260462, 18.735815, 13.293809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.440243, 18.779701, 13.140993>,  <19.739878, 18.852846, 12.886299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.440243, 18.779701, 13.140993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655082, -0.061302, 0.753067,
		-0.098674, 0.981225, 0.165711,
		-0.749087, -0.182862, 0.636734,
		19.215517, 18.724842, 13.332013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.843666, 19.182652, 13.523099>,  <19.739878, 18.852846, 12.886299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.843666, 19.182652, 13.523099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.564480, 18.932644, 13.662926>,  <19.396969, 18.782639, 13.746821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.564480, 18.932644, 13.662926>,  <19.843666, 19.182652, 13.523099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.564480, 18.932644, 13.662926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507969, -0.088018, 0.856867,
		-0.504790, 0.775632, 0.378923,
		-0.697965, -0.625019, 0.349566,
		19.355091, 18.745138, 13.767796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.869701, 19.309187, 14.192455>,  <19.843666, 19.182652, 13.523099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.869701, 19.309187, 14.192455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.626350, 18.992134, 14.208498>,  <19.480339, 18.801903, 14.218123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.626350, 18.992134, 14.208498>,  <19.869701, 19.309187, 14.192455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.626350, 18.992134, 14.208498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293725, -0.177924, 0.939185,
		-0.737292, 0.583162, 0.341061,
		-0.608380, -0.792632, 0.040107,
		19.443836, 18.754345, 14.220531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.724768, 19.998135, 14.441710>,  <19.869701, 19.309187, 14.192455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.724768, 19.998135, 14.441710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.093460, 20.137009, 14.372570>,  <20.314674, 20.220333, 14.331086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.093460, 20.137009, 14.372570>,  <19.724768, 19.998135, 14.441710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093460, 20.137009, 14.372570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279658, 0.286189, -0.916454,
		-0.268713, 0.893061, 0.360883,
		0.921729, 0.347186, -0.172849,
		20.369980, 20.241165, 14.320715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.595650, 20.348856, 13.783515>,  <19.724768, 19.998135, 14.441710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.595650, 20.348856, 13.783515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.992203, 20.340481, 13.835236>,  <20.230135, 20.335457, 13.866268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.992203, 20.340481, 13.835236>,  <19.595650, 20.348856, 13.783515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.992203, 20.340481, 13.835236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130871, 0.199430, -0.971134,
		-0.005454, 0.979688, 0.200452,
		0.991384, -0.020937, 0.129301,
		20.289618, 20.334200, 13.874026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.802906, 20.952011, 13.546876>,  <19.595650, 20.348856, 13.783515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.802906, 20.952011, 13.546876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.133915, 20.728230, 13.528048>,  <20.332521, 20.593962, 13.516750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.133915, 20.728230, 13.528048>,  <19.802906, 20.952011, 13.546876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.133915, 20.728230, 13.528048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110446, 0.244423, -0.963358,
		0.550459, 0.792004, 0.264055,
		0.827524, -0.559453, -0.047071,
		20.382172, 20.560394, 13.513927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.448275, 21.368866, 13.256255>,  <19.802906, 20.952011, 13.546876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.448275, 21.368866, 13.256255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.484097, 20.977657, 13.180935>,  <20.505590, 20.742933, 13.135743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.484097, 20.977657, 13.180935>,  <20.448275, 21.368866, 13.256255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.484097, 20.977657, 13.180935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324125, 0.207388, -0.923003,
		0.941766, 0.021627, 0.335573,
		0.089556, -0.978020, -0.188301,
		20.510963, 20.684252, 13.124445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.060076, 21.248671, 12.799099>,  <20.448275, 21.368866, 13.256255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.060076, 21.248671, 12.799099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.828835, 20.924137, 12.764380>,  <20.690090, 20.729418, 12.743547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.828835, 20.924137, 12.764380>,  <21.060076, 21.248671, 12.799099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.828835, 20.924137, 12.764380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195561, -0.034492, -0.980085,
		0.792182, -0.583565, 0.178605,
		-0.578104, -0.811333, -0.086799,
		20.655403, 20.680737, 12.738340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.305248, 20.899059, 12.308762>,  <21.060076, 21.248671, 12.799099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.305248, 20.899059, 12.308762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.939484, 20.737629, 12.296273>,  <20.720024, 20.640770, 12.288780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.939484, 20.737629, 12.296273>,  <21.305248, 20.899059, 12.308762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.939484, 20.737629, 12.296273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045813, -0.026548, -0.998597,
		0.402181, -0.914561, 0.042765,
		-0.914413, -0.403576, -0.031222,
		20.665159, 20.616556, 12.286907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.367174, 20.468407, 11.745684>,  <21.305248, 20.899059, 12.308762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.367174, 20.468407, 11.745684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.971851, 20.500637, 11.797459>,  <20.734657, 20.519976, 11.828524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.971851, 20.500637, 11.797459>,  <21.367174, 20.468407, 11.745684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.971851, 20.500637, 11.797459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131809, -0.024837, -0.990964,
		-0.076637, -0.996439, 0.035168,
		-0.988308, 0.080580, 0.129436,
		20.675360, 20.524811, 11.836289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.996096, 19.830364, 11.465566>,  <21.367174, 20.468407, 11.745684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.996096, 19.830364, 11.465566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.752331, 20.147476, 11.469929>,  <20.606071, 20.337744, 11.472547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.752331, 20.147476, 11.469929>,  <20.996096, 19.830364, 11.465566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.752331, 20.147476, 11.469929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229302, -0.163062, -0.959600,
		-0.758972, -0.587292, 0.281157,
		-0.609412, 0.792779, 0.010908,
		20.569508, 20.385309, 11.473201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.538519, 19.702284, 10.801174>,  <20.996096, 19.830364, 11.465566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.538519, 19.702284, 10.801174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.422901, 20.069328, 10.910312>,  <20.353531, 20.289555, 10.975794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.422901, 20.069328, 10.910312>,  <20.538519, 19.702284, 10.801174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.422901, 20.069328, 10.910312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458394, 0.117549, -0.880941,
		-0.840434, -0.379699, 0.386651,
		-0.289042, 0.917611, 0.272844,
		20.336189, 20.344612, 10.992165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.788397, 19.732138, 10.554880>,  <20.538519, 19.702284, 10.801174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.788397, 19.732138, 10.554880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.947121, 20.096214, 10.602366>,  <20.042355, 20.314661, 10.630858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.947121, 20.096214, 10.602366>,  <19.788397, 19.732138, 10.554880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.947121, 20.096214, 10.602366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440736, 0.302378, -0.845174,
		-0.805168, 0.283050, 0.521140,
		0.396807, 0.910193, 0.118715,
		20.066162, 20.369272, 10.637981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.239998, 20.185053, 10.502363>,  <19.788397, 19.732138, 10.554880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.239998, 20.185053, 10.502363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.572289, 20.382587, 10.399584>,  <19.771662, 20.501108, 10.337916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.572289, 20.382587, 10.399584>,  <19.239998, 20.185053, 10.502363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.572289, 20.382587, 10.399584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498391, 0.454150, -0.738481,
		-0.247995, 0.741535, 0.623398,
		0.830725, 0.493836, -0.256947,
		19.821507, 20.530739, 10.322499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.112566, 20.857622, 10.476315>,  <19.239998, 20.185053, 10.502363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.112566, 20.857622, 10.476315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.422832, 20.817833, 10.227013>,  <19.608994, 20.793961, 10.077432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.422832, 20.817833, 10.227013>,  <19.112566, 20.857622, 10.476315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.422832, 20.817833, 10.227013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539891, 0.406890, -0.736857,
		0.326891, 0.908045, 0.261908,
		0.775668, -0.099471, -0.623254,
		19.655533, 20.787992, 10.040036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.954874, 21.383614, 9.920916>,  <19.112566, 20.857622, 10.476315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.954874, 21.383614, 9.920916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.235188, 21.154293, 9.751104>,  <19.403376, 21.016701, 9.649218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.235188, 21.154293, 9.751104>,  <18.954874, 21.383614, 9.920916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.235188, 21.154293, 9.751104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340783, 0.253767, -0.905245,
		0.626710, 0.779055, -0.017536,
		0.700786, -0.573302, -0.424527,
		19.445423, 20.982302, 9.623746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.272676, 21.827604, 9.384083>,  <18.954874, 21.383614, 9.920916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.272676, 21.827604, 9.384083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.360706, 21.445442, 9.305327>,  <19.413525, 21.216145, 9.258074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.360706, 21.445442, 9.305327>,  <19.272676, 21.827604, 9.384083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.360706, 21.445442, 9.305327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165090, 0.162447, -0.972808,
		0.961411, 0.246597, -0.121977,
		0.220077, -0.955406, -0.196890,
		19.426729, 21.158821, 9.246261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.366482, 22.552639, 9.542459>,  <19.272676, 21.827604, 9.384083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.366482, 22.552639, 9.542459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.410038, 22.936989, 9.440589>,  <19.436172, 23.167599, 9.379467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.410038, 22.936989, 9.440589>,  <19.366482, 22.552639, 9.542459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.410038, 22.936989, 9.440589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388399, 0.194706, 0.900687,
		0.915035, -0.196990, -0.352002,
		0.108890, 0.960877, -0.254674,
		19.442705, 23.225252, 9.364187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.006691, 23.002468, 9.790337>,  <19.366482, 22.552639, 9.542459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.006691, 23.002468, 9.790337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.739532, 23.300106, 9.796479>,  <19.579237, 23.478689, 9.800164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.739532, 23.300106, 9.796479>,  <20.006691, 23.002468, 9.790337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.739532, 23.300106, 9.796479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321625, 0.269961, 0.907567,
		0.671171, 0.611100, -0.419626,
		-0.667897, 0.744095, 0.015355,
		19.539164, 23.523335, 9.801085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.334703, 23.768816, 9.990760>,  <20.006691, 23.002468, 9.790337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.334703, 23.768816, 9.990760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.953510, 23.702389, 10.092147>,  <19.724794, 23.662533, 10.152979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.953510, 23.702389, 10.092147>,  <20.334703, 23.768816, 9.990760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.953510, 23.702389, 10.092147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250776, 0.037336, 0.967325,
		-0.170107, 0.985407, 0.006066,
		-0.952982, -0.166070, 0.253468,
		19.667616, 23.652567, 10.168187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.173050, 24.288813, 10.497855>,  <20.334703, 23.768816, 9.990760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.173050, 24.288813, 10.497855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.887440, 24.013653, 10.549953>,  <19.716074, 23.848557, 10.581213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.887440, 24.013653, 10.549953>,  <20.173050, 24.288813, 10.497855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.887440, 24.013653, 10.549953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128546, 0.054062, 0.990229,
		-0.688217, 0.723791, 0.049825,
		-0.714026, -0.687898, 0.130247,
		19.673231, 23.807283, 10.589027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.577913, 24.567654, 10.926579>,  <20.173050, 24.288813, 10.497855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.577913, 24.567654, 10.926579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.546623, 24.171333, 10.970743>,  <19.527849, 23.933540, 10.997241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.546623, 24.171333, 10.970743>,  <19.577913, 24.567654, 10.926579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.546623, 24.171333, 10.970743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008208, 0.111384, 0.993744,
		-0.996902, 0.076829, -0.016846,
		-0.078225, -0.990803, 0.110408,
		19.523155, 23.874092, 11.003865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.099062, 24.531311, 11.430132>,  <19.577913, 24.567654, 10.926579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.099062, 24.531311, 11.430132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.274921, 24.172092, 11.436090>,  <19.380438, 23.956562, 11.439666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.274921, 24.172092, 11.436090>,  <19.099062, 24.531311, 11.430132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.274921, 24.172092, 11.436090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028499, 0.002629, 0.999590,
		-0.897718, -0.439893, -0.024438,
		0.439648, -0.898046, 0.014896,
		19.406816, 23.902679, 11.440559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.744865, 24.224659, 12.001842>,  <19.099062, 24.531311, 11.430132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.744865, 24.224659, 12.001842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.077484, 24.012585, 11.935594>,  <19.277056, 23.885340, 11.895845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.077484, 24.012585, 11.935594>,  <18.744865, 24.224659, 12.001842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.077484, 24.012585, 11.935594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152177, -0.069306, 0.985920,
		-0.534201, -0.845043, 0.023051,
		0.831548, -0.530187, -0.165619,
		19.326948, 23.853529, 11.885908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749235, 23.646673, 12.471801>,  <18.744865, 24.224659, 12.001842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.749235, 23.646673, 12.471801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.135166, 23.629860, 12.367999>,  <19.366724, 23.619772, 12.305718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.135166, 23.629860, 12.367999>,  <18.749235, 23.646673, 12.471801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.135166, 23.629860, 12.367999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258244, -0.033138, 0.965511,
		-0.049187, -0.998566, -0.021116,
		0.964826, -0.042038, -0.259504,
		19.424614, 23.617250, 12.290148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052197, 23.290480, 12.915751>,  <18.749235, 23.646673, 12.471801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.052197, 23.290480, 12.915751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.363068, 23.492790, 12.765985>,  <19.549591, 23.614176, 12.676126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.363068, 23.492790, 12.765985>,  <19.052197, 23.290480, 12.915751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.363068, 23.492790, 12.765985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320532, 0.193846, 0.927191,
		0.541530, -0.840603, -0.011465,
		0.777177, 0.505777, -0.374414,
		19.596220, 23.644524, 12.653662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.716372, 22.990248, 13.180128>,  <19.052197, 23.290480, 12.915751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.716372, 22.990248, 13.180128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.776394, 23.364075, 13.051090>,  <19.812408, 23.588371, 12.973668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.776394, 23.364075, 13.051090>,  <19.716372, 22.990248, 13.180128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.776394, 23.364075, 13.051090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136475, 0.303585, 0.942980,
		0.979213, -0.185527, -0.081990,
		0.150057, 0.934567, -0.322594,
		19.821411, 23.644445, 12.954312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223646, 23.213055, 13.555390>,  <19.716372, 22.990248, 13.180128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223646, 23.213055, 13.555390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.038448, 23.543953, 13.428082>,  <19.927330, 23.742493, 13.351696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.038448, 23.543953, 13.428082>,  <20.223646, 23.213055, 13.555390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.038448, 23.543953, 13.428082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030981, 0.373962, 0.926926,
		0.885819, 0.419302, -0.198771,
		-0.462995, 0.827247, -0.318272,
		19.899549, 23.792128, 13.332600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.714437, 23.722466, 13.843653>,  <20.223646, 23.213055, 13.555390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.714437, 23.722466, 13.843653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.357979, 23.881176, 13.755632>,  <20.144104, 23.976402, 13.702820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.357979, 23.881176, 13.755632>,  <20.714437, 23.722466, 13.843653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.357979, 23.881176, 13.755632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003992, 0.478126, 0.878282,
		0.453694, 0.783558, -0.424497,
		-0.891149, 0.396777, -0.220051,
		20.090633, 24.000210, 13.689617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.847637, 24.353952, 14.009355>,  <20.714437, 23.722466, 13.843653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.847637, 24.353952, 14.009355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.448029, 24.337276, 14.015291>,  <20.208263, 24.327271, 14.018853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.448029, 24.337276, 14.015291>,  <20.847637, 24.353952, 14.009355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.448029, 24.337276, 14.015291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003099, 0.400473, 0.916303,
		-0.044143, 0.915360, -0.400210,
		-0.999020, -0.041689, 0.014841,
		20.148323, 24.324770, 14.019744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.646751, 24.970833, 14.268540>,  <20.847637, 24.353952, 14.009355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.646751, 24.970833, 14.268540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.339046, 24.717911, 14.305254>,  <20.154423, 24.566158, 14.327282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.339046, 24.717911, 14.305254>,  <20.646751, 24.970833, 14.268540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.339046, 24.717911, 14.305254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116087, 0.279580, 0.953079,
		-0.628297, 0.722514, -0.288473,
		-0.769264, -0.632304, 0.091785,
		20.108267, 24.528219, 14.332789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.206476, 25.367250, 14.792343>,  <20.646751, 24.970833, 14.268540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.206476, 25.367250, 14.792343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.071308, 24.990791, 14.789406>,  <19.990208, 24.764915, 14.787643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.071308, 24.990791, 14.789406>,  <20.206476, 25.367250, 14.792343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.071308, 24.990791, 14.789406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205026, 0.065996, 0.976529,
		-0.918573, 0.331492, -0.215260,
		-0.337918, -0.941147, -0.007342,
		19.969933, 24.708447, 14.787203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.643116, 25.183838, 15.322409>,  <20.206476, 25.367250, 14.792343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.643116, 25.183838, 15.322409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.785385, 24.815319, 15.259537>,  <19.870747, 24.594208, 15.221814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.785385, 24.815319, 15.259537>,  <19.643116, 25.183838, 15.322409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.785385, 24.815319, 15.259537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021102, -0.176049, 0.984155,
		-0.934372, -0.346722, -0.082057,
		0.355674, -0.921299, -0.157179,
		19.892088, 24.538929, 15.212383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.253164, 24.741228, 15.750778>,  <19.643116, 25.183838, 15.322409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.253164, 24.741228, 15.750778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.602287, 24.560001, 15.678179>,  <19.811760, 24.451265, 15.634619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.602287, 24.560001, 15.678179>,  <19.253164, 24.741228, 15.750778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.602287, 24.560001, 15.678179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166559, -0.073052, 0.983322,
		-0.458769, -0.888479, 0.011703,
		0.872806, -0.453066, -0.181498,
		19.864128, 24.424082, 15.623730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.440973, 24.544933, 16.427382>,  <19.253164, 24.741228, 15.750778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.440973, 24.544933, 16.427382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.776897, 24.441418, 16.236490>,  <19.978453, 24.379309, 16.121956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.776897, 24.441418, 16.236490>,  <19.440973, 24.544933, 16.427382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.776897, 24.441418, 16.236490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472943, -0.082839, 0.877190,
		-0.266540, -0.962375, 0.052823,
		0.839810, -0.258789, -0.477229,
		20.028841, 24.363781, 16.093321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.661495, 24.000391, 16.787722>,  <19.440973, 24.544933, 16.427382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.661495, 24.000391, 16.787722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.994778, 24.119473, 16.601328>,  <20.194746, 24.190922, 16.489491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.994778, 24.119473, 16.601328>,  <19.661495, 24.000391, 16.787722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.994778, 24.119473, 16.601328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525086, -0.161764, 0.835534,
		0.173362, -0.940853, -0.291102,
		0.833205, 0.297704, -0.465985,
		20.244740, 24.208784, 16.461533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.098475, 23.374468, 16.768452>,  <19.661495, 24.000391, 16.787722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.098475, 23.374468, 16.768452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.297783, 23.718426, 16.724079>,  <20.417368, 23.924801, 16.697456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.297783, 23.718426, 16.724079>,  <20.098475, 23.374468, 16.768452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.297783, 23.718426, 16.724079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566873, -0.226293, 0.792115,
		0.656033, -0.457573, -0.600207,
		0.498273, 0.859895, -0.110931,
		20.447266, 23.976395, 16.690800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.772488, 23.173044, 16.842020>,  <20.098475, 23.374468, 16.768452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.772488, 23.173044, 16.842020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.757965, 23.566097, 16.914812>,  <20.749252, 23.801929, 16.958487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.757965, 23.566097, 16.914812>,  <20.772488, 23.173044, 16.842020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.757965, 23.566097, 16.914812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672645, -0.110644, 0.731647,
		0.739074, 0.148970, -0.656946,
		-0.036306, 0.982632, 0.181978,
		20.747072, 23.860888, 16.969406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.476742, 23.355682, 17.112597>,  <20.772488, 23.173044, 16.842020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.476742, 23.355682, 17.112597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.225243, 23.643394, 17.230787>,  <21.074343, 23.816023, 17.301702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.225243, 23.643394, 17.230787>,  <21.476742, 23.355682, 17.112597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.225243, 23.643394, 17.230787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455543, 0.032757, 0.889611,
		0.630201, 0.693946, -0.348260,
		-0.628750, 0.719281, 0.295478,
		21.036617, 23.859179, 17.319431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.859007, 23.778393, 17.421549>,  <21.476742, 23.355682, 17.112597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.859007, 23.778393, 17.421549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.499905, 23.860405, 17.577497>,  <21.284443, 23.909613, 17.671066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.499905, 23.860405, 17.577497>,  <21.859007, 23.778393, 17.421549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.499905, 23.860405, 17.577497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409663, 0.063293, 0.910038,
		0.161909, 0.976707, -0.140815,
		-0.897754, 0.205030, 0.389873,
		21.230579, 23.921913, 17.694460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.976887, 24.221224, 18.048761>,  <21.859007, 23.778393, 17.421549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.976887, 24.221224, 18.048761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.595478, 24.110699, 18.096836>,  <21.366632, 24.044384, 18.125681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.595478, 24.110699, 18.096836>,  <21.976887, 24.221224, 18.048761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.595478, 24.110699, 18.096836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159529, -0.124553, 0.979304,
		-0.255623, 0.952963, 0.162844,
		-0.953523, -0.276312, 0.120187,
		21.309422, 24.027805, 18.132893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.753283, 24.590744, 18.570087>,  <21.976887, 24.221224, 18.048761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.753283, 24.590744, 18.570087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.505730, 24.277512, 18.545528>,  <21.357199, 24.089571, 18.530792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.505730, 24.277512, 18.545528>,  <21.753283, 24.590744, 18.570087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.505730, 24.277512, 18.545528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167244, -0.207741, 0.963781,
		-0.767474, 0.586197, 0.259533,
		-0.618881, -0.783082, -0.061398,
		21.320066, 24.042587, 18.527109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.191385, 24.717258, 19.051237>,  <21.753283, 24.590744, 18.570087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.191385, 24.717258, 19.051237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.191364, 24.321316, 18.994411>,  <21.191351, 24.083750, 18.960316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.191364, 24.321316, 18.994411>,  <21.191385, 24.717258, 19.051237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.191364, 24.321316, 18.994411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038537, -0.141958, 0.989122,
		-0.999257, 0.005526, -0.038139,
		-0.000052, -0.989858, -0.142065,
		21.191349, 24.024359, 18.951792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.581553, 24.451221, 19.371281>,  <21.191385, 24.717258, 19.051237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.581553, 24.451221, 19.371281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.865616, 24.169926, 19.357847>,  <21.036055, 24.001148, 19.349787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.865616, 24.169926, 19.357847>,  <20.581553, 24.451221, 19.371281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865616, 24.169926, 19.357847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099664, -0.147634, 0.984008,
		-0.696952, -0.695455, -0.174932,
		0.710159, -0.703241, -0.033582,
		21.078663, 23.958954, 19.347773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.514542, 24.104904, 19.954899>,  <20.581553, 24.451221, 19.371281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.514542, 24.104904, 19.954899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.873585, 23.968525, 19.843145>,  <21.089010, 23.886698, 19.776093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.873585, 23.968525, 19.843145>,  <20.514542, 24.104904, 19.954899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.873585, 23.968525, 19.843145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250794, -0.126214, 0.959777,
		-0.362497, -0.931570, -0.027783,
		0.897607, -0.340949, -0.279385,
		21.142866, 23.866240, 19.759331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.146122, 23.567898, 19.738428>,  <20.514542, 24.104904, 19.954899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.146122, 23.567898, 19.738428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.756290, 23.494522, 19.789873>,  <19.522390, 23.450497, 19.820740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.756290, 23.494522, 19.789873>,  <20.146122, 23.567898, 19.738428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.756290, 23.494522, 19.789873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158430, 0.158405, -0.974581,
		0.158405, -0.970184, -0.183441,
		0.974581, 0.183441, -0.128614,
		19.463917, 23.439489, 19.828457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.991875, 22.987070, 19.295649>,  <20.146122, 23.567898, 19.738428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.991875, 22.987070, 19.295649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.632542, 23.144852, 19.373014>,  <19.416943, 23.239521, 19.419434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.632542, 23.144852, 19.373014>,  <19.991875, 22.987070, 19.295649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.632542, 23.144852, 19.373014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232628, -0.053632, -0.971086,
		-0.372676, -0.917349, 0.139940,
		-0.898330, 0.394454, 0.193413,
		19.363043, 23.263187, 19.431038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.410837, 22.529888, 18.990065>,  <19.991875, 22.987070, 19.295649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.410837, 22.529888, 18.990065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.268696, 22.902500, 19.020977>,  <19.183411, 23.126068, 19.039524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.268696, 22.902500, 19.020977>,  <19.410837, 22.529888, 18.990065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.268696, 22.902500, 19.020977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243515, -0.012439, -0.969817,
		-0.902454, -0.363448, 0.231262,
		-0.355355, 0.931531, 0.077279,
		19.162090, 23.181959, 19.044161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.695057, 22.485991, 18.651411>,  <19.410837, 22.529888, 18.990065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.695057, 22.485991, 18.651411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.694824, 22.882458, 18.704449>,  <18.694685, 23.120338, 18.736271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.694824, 22.882458, 18.704449>,  <18.695057, 22.485991, 18.651411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.694824, 22.882458, 18.704449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513019, 0.113519, -0.850838,
		-0.858377, -0.068518, 0.508423,
		-0.000582, 0.991170, 0.132594,
		18.694649, 23.179810, 18.744226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.054661, 22.644514, 18.643099>,  <18.695057, 22.485991, 18.651411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.054661, 22.644514, 18.643099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.247803, 22.983952, 18.556618>,  <18.363688, 23.187614, 18.504728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.247803, 22.983952, 18.556618>,  <18.054661, 22.644514, 18.643099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247803, 22.983952, 18.556618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504101, 0.067469, -0.861005,
		-0.716055, 0.524728, 0.460354,
		0.482853, 0.848592, -0.216205,
		18.392658, 23.238529, 18.491756>
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
